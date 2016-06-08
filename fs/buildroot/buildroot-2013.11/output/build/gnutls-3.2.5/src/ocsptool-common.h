/*
 * Copyright (C) 2011-2012 Free Software Foundation, Inc.
 *
 * This file is part of GnuTLS.
 *
 * GnuTLS is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * GnuTLS is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see
 * <http://www.gnu.org/licenses/>.
 */

#ifndef OCSPTOOL_COMMON_H
#define OCSPTOOL_COMMON_H

#include <gnutls/ocsp.h>

enum
  {
    ACTION_NONE,
    ACTION_REQ_INFO,
    ACTION_RESP_INFO,
    ACTION_VERIFY_RESP,
    ACTION_GEN_REQ
  };

extern void ocsptool_version (void);
void
_generate_request (gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,
                   gnutls_datum_t * rdata, int nonce);
int send_ocsp_request(const char* server,
                       gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer,
                       gnutls_datum_t * resp_data, int nonce);
void
print_ocsp_verify_res (unsigned int output);

int
check_ocsp_response (gnutls_x509_crt_t cert, gnutls_x509_crt_t issuer, gnutls_datum_t *data);

#endif
