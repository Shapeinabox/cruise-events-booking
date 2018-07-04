﻿using Microsoft.Owin.Security;
using Microsoft.Owin.Security.OAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using GestionePrenotazioni.Models;
using GestionePrenotazioni.Models.DAO;
using GestionePrenotazioniApi;

namespace GestionePrenotazioni.Providers {
    public class OAuthProvider : OAuthAuthorizationServerProvider {
        #region[GrantResourceOwnerCredentials]
        public override Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context) {
            return Task.Factory.StartNew(() => {
                var email = context.UserName;
                var password = context.Password;
                daoUtente daoUtente = new daoUtente();
                Utente U = new Utente();
                U.Email = email;
                U.Password = password;
                Utente oUser = daoUtente.Login(U);
                if (oUser != null) {
                    var claims = new List<Claim>()
                    {
                        new Claim(ClaimTypes.Sid, Convert.ToString(oUser.ID)),
                        new Claim(ClaimTypes.Name, oUser.Nome),
                        new Claim(ClaimTypes.Email, oUser.Email)
                    };
                    ClaimsIdentity oAuthIdentity = new ClaimsIdentity(claims,
                                Startup.OAuthOptions.AuthenticationType);

                    var properties = CreateProperties(oUser);
                    var ticket = new AuthenticationTicket(oAuthIdentity, properties);
                    context.Validated(ticket);
                } else {
                    context.SetError("invalid_grant", "The user name or password is incorrect");
                }
            });
        }
        #endregion

        #region[ValidateClientAuthentication]
        public override Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context) {
            if (context.ClientId == null)
                context.Validated();

            return Task.FromResult<object>(null);
        }
        #endregion

        #region[TokenEndpoint]
        public override Task TokenEndpoint(OAuthTokenEndpointContext context) {
            foreach (KeyValuePair<string, string> property in context.Properties.Dictionary) {
                context.AdditionalResponseParameters.Add(property.Key, property.Value);
            }

            return Task.FromResult<object>(null);
        }
        #endregion

        #region[CreateProperties]
        public static AuthenticationProperties CreateProperties(Utente user) {
            IDictionary<string, string> data = new Dictionary<string, string>
            {
                { "ID", user.ID.ToString() },
                { "nome", user.Nome },
                { "cognome", user.Cognome },
                { "telefono", user.Telefono },
                { "email", user.Email },
                { "password", user.Password }

            };
            return new AuthenticationProperties(data);
        }
        #endregion
    }
}