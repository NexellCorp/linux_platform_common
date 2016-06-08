/*
# Copyright (c) 2011-2012, Andy Polyakov <appro@openssl.org>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 
#     * Redistributions of source code must retain copyright notices,
#      this list of conditions and the following disclaimer.
#
#     * Redistributions in binary form must reproduce the above
#      copyright notice, this list of conditions and the following
#      disclaimer in the documentation and/or other materials
#      provided with the distribution.
#
#     * Neither the name of the Andy Polyakov nor the names of its
#      copyright holder and contributors may be used to endorse or
#      promote products derived from this software without specific
#      prior written permission.
#
# ALTERNATIVELY, provided that this notice is retained in full, this
# product may be distributed under the terms of the GNU General Public
# License (GPL), in which case the provisions of the GPL apply INSTEAD OF
# those given above.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# *** This file is auto-generated ***
#
*/
.text	
.globl	_gnutls_cpuid

.p2align	4
_gnutls_cpuid:
	pushq	%rbp
	movq	%rsp,%rbp
	pushq	%rbx
	movl	%edi,-12(%rbp)
	movq	%rsi,-24(%rbp)
	movq	%rdx,-32(%rbp)
	movq	%rcx,-40(%rbp)
	movq	%r8,-48(%rbp)
	movl	-12(%rbp),%eax
	movl	%eax,-60(%rbp)
	movl	-60(%rbp),%eax
	cpuid
	movl	%edx,-56(%rbp)
	movl	%ecx,%esi
	movl	%eax,-52(%rbp)
	movq	-24(%rbp),%rax
	movl	-52(%rbp),%edx
	movl	%edx,(%rax)
	movq	-32(%rbp),%rax
	movl	%ebx,(%rax)
	movq	-40(%rbp),%rax
	movl	%esi,(%rax)
	movq	-48(%rbp),%rax
	movl	-56(%rbp),%ecx
	movl	%ecx,(%rax)
	popq	%rbx
	leave
	.byte	0xf3,0xc3

