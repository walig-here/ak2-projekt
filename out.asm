
ak2-projekt.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 d5 74 00 00 	mov    0x74d5(%rip),%rax        # 1400084f0 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 d6 74 00 00 	mov    0x74d6(%rip),%rax        # 140008500 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 d9 74 00 00 	mov    0x74d9(%rip),%rax        # 140008510 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 2c 74 00 00 	mov    0x742c(%rip),%rax        # 140008470 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 7f 74 00 00 	mov    0x747f(%rip),%rax        # 1400084e0 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 9f 00 00    	mov    %ecx,0x9fa5(%rip)        # 14000b00c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 e1 4e 00 00       	call   140005f58 <__set_app_type>
   140001077:	e8 64 4e 00 00       	call   140005ee0 <__p__fmode>
   14000107c:	48 8b 15 2d 75 00 00 	mov    0x752d(%rip),%rdx        # 1400085b0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 64 4e 00 00       	call   140005ef0 <__p__commode>
   14000108c:	48 8b 15 fd 74 00 00 	mov    0x74fd(%rip),%rdx        # 140008590 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 64 3e 00 00       	call   140004f00 <_setargv>
   14000109c:	48 8b 05 2d 73 00 00 	mov    0x732d(%rip),%rax        # 1400083d0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 9e 4e 00 00       	call   140005f58 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d d1 74 00 00 	mov    0x74d1(%rip),%rcx        # 1400085d0 <.refptr._matherr>
   1400010ff:	e8 6c 45 00 00       	call   140005670 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 a5 74 00 00 	mov    0x74a5(%rip),%rax        # 1400085e0 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 9e 00 00 	lea    0x9ed6(%rip),%r8        # 14000b018 <envp>
   140001142:	48 8d 15 d7 9e 00 00 	lea    0x9ed7(%rip),%rdx        # 14000b020 <argv>
   140001149:	48 8d 0d d8 9e 00 00 	lea    0x9ed8(%rip),%rcx        # 14000b028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 9e 00 00    	mov    %eax,0x9eac(%rip)        # 14000b004 <startinfo>
   140001158:	48 8b 05 41 74 00 00 	mov    0x7441(%rip),%rax        # 1400085a0 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 9e 00 00 	lea    0x9e9b(%rip),%rax        # 14000b004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 d5 4d 00 00       	call   140005f48 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d 9f 73 00 00 	mov    0x739f(%rip),%rbx        # 140008530 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d a4 b1 00 00 	mov    0xb1a4(%rip),%rbp        # 14000c33c <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 6c 73 00 00 	mov    0x736c(%rip),%rsi        # 140008540 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 9e 00 00 01 	movl   $0x1,0x9e13(%rip)        # 14000b008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 91 72 00 00 	mov    0x7291(%rip),%rax        # 1400084a0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 a8 40 00 00       	call   1400052d0 <_pei386_runtime_relocator>
   140001228:	48 8b 0d 91 73 00 00 	mov    0x7391(%rip),%rcx        # 1400085c0 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 ff b0 00 00    	call   *0xb0ff(%rip)        # 14000c334 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 e4 72 00 00 	mov    0x72e4(%rip),%rdx        # 140008520 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 c5 4c 00 00       	call   140005f10 <_set_invalid_parameter_handler>
   14000124b:	e8 90 3e 00 00       	call   1400050e0 <_fpreset>
   140001250:	8b 1d d2 9d 00 00    	mov    0x9dd2(%rip),%ebx        # 14000b028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 50 4d 00 00       	call   140005fb8 <malloc>
   140001268:	4c 8b 25 b1 9d 00 00 	mov    0x9db1(%rip),%r12        # 14000b020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 47 4d 00 00       	call   140005fd0 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 23 4d 00 00       	call   140005fb8 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 13 4d 00 00       	call   140005fc0 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d 9d 00 00 	mov    %rbp,0x9d5d(%rip)        # 14000b020 <argv>
   1400012c3:	e8 18 3c 00 00       	call   140004ee0 <__main>
   1400012c8:	48 8b 05 e1 71 00 00 	mov    0x71e1(%rip),%rax        # 1400084b0 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 9d 00 00 	mov    0x9d42(%rip),%r8        # 14000b018 <envp>
   1400012d6:	8b 0d 4c 9d 00 00    	mov    0x9d4c(%rip),%ecx        # 14000b028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 9d 00 00 	mov    0x9d37(%rip),%rdx        # 14000b020 <argv>
   1400012e9:	e8 d2 51 00 00       	call   1400064c0 <main>
   1400012ee:	8b 0d 18 9d 00 00    	mov    0x9d18(%rip),%ecx        # 14000b00c <managedapp>
   1400012f4:	89 05 16 9d 00 00    	mov    %eax,0x9d16(%rip)        # 14000b010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 9d 00 00    	mov    0x9d00(%rip),%edx        # 14000b008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 19 72 00 00 	mov    0x7219(%rip),%rsi        # 140008540 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 27 4c 00 00       	call   140005f68 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 0d 72 00 00 	mov    0x720d(%rip),%rdx        # 140008560 <.refptr.__xc_z>
   140001353:	48 8b 0d f6 71 00 00 	mov    0x71f6(%rip),%rcx        # 140008550 <.refptr.__xc_a>
   14000135a:	e8 19 4c 00 00       	call   140005f78 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 eb 4b 00 00       	call   140005f70 <_cexit>
   140001385:	8b 05 85 9c 00 00    	mov    0x9c85(%rip),%eax        # 14000b010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 d9 71 00 00 	mov    0x71d9(%rip),%rdx        # 140008580 <.refptr.__xi_z>
   1400013a7:	48 8b 0d c2 71 00 00 	mov    0x71c2(%rip),%rcx        # 140008570 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 bf 4b 00 00       	call   140005f78 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 c9 4b 00 00       	call   140005f98 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 05 71 00 00 	mov    0x7105(%rip),%rax        # 1400084e0 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 e5 70 00 00 	mov    0x70e5(%rip),%rax        # 1400084e0 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 67 4b 00 00       	call   140005f80 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <__tcf_0>:
   140001450:	48 8d 0d da 9b 00 00 	lea    0x9bda(%rip),%rcx        # 14000b031 <_ZStL8__ioinit>
   140001457:	e9 2c 39 00 00       	jmp    140004d88 <_ZNSt8ios_base4InitD1Ev>
   14000145c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001460 <_ZN10Arithmetic3stcEv>:
   140001460:	f9                   	stc
   140001461:	c6 05 c8 9b 00 00 01 	movb   $0x1,0x9bc8(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   140001468:	c3                   	ret
   140001469:	90                   	nop
   14000146a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001470 <_ZN10Arithmetic3clcEv>:
   140001470:	f8                   	clc
   140001471:	c6 05 b8 9b 00 00 00 	movb   $0x0,0x9bb8(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   140001478:	c3                   	ret
   140001479:	90                   	nop
   14000147a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001480 <_ZN10Arithmetic5carryEv>:
   140001480:	0f b6 05 a9 9b 00 00 	movzbl 0x9ba9(%rip),%eax        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   140001487:	c3                   	ret
   140001488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000148f:	00 

0000000140001490 <_ZN10Arithmetic3addE4ByteS0_>:
   140001490:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   140001494:	88 54 24 10          	mov    %dl,0x10(%rsp)
   140001498:	8a 44 24 08          	mov    0x8(%rsp),%al
   14000149c:	02 44 24 10          	add    0x10(%rsp),%al
   1400014a0:	0f 92 05 89 9b 00 00 	setb   0x9b89(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   1400014a7:	c3                   	ret
   1400014a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400014af:	00 

00000001400014b0 <_ZN10Arithmetic4addcE4ByteS0_>:
   1400014b0:	0f b6 05 79 9b 00 00 	movzbl 0x9b79(%rip),%eax        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   1400014b7:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   1400014bb:	88 54 24 10          	mov    %dl,0x10(%rsp)
   1400014bf:	84 c0                	test   %al,%al
   1400014c1:	74 1d                	je     1400014e0 <_ZN10Arithmetic4addcE4ByteS0_+0x30>
   1400014c3:	f9                   	stc
   1400014c4:	88 05 66 9b 00 00    	mov    %al,0x9b66(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   1400014ca:	8a 44 24 08          	mov    0x8(%rsp),%al
   1400014ce:	12 44 24 10          	adc    0x10(%rsp),%al
   1400014d2:	0f 92 05 57 9b 00 00 	setb   0x9b57(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   1400014d9:	c3                   	ret
   1400014da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400014e0:	f8                   	clc
   1400014e1:	eb e1                	jmp    1400014c4 <_ZN10Arithmetic4addcE4ByteS0_+0x14>
   1400014e3:	90                   	nop
   1400014e4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400014eb:	00 00 00 00 
   1400014ef:	90                   	nop

00000001400014f0 <_ZN10Arithmetic3subE4ByteS0_>:
   1400014f0:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   1400014f4:	88 54 24 10          	mov    %dl,0x10(%rsp)
   1400014f8:	8a 44 24 08          	mov    0x8(%rsp),%al
   1400014fc:	2a 44 24 10          	sub    0x10(%rsp),%al
   140001500:	0f 92 05 29 9b 00 00 	setb   0x9b29(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   140001507:	c3                   	ret
   140001508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000150f:	00 

0000000140001510 <_ZN10Arithmetic3sbbE4ByteS0_>:
   140001510:	0f b6 05 19 9b 00 00 	movzbl 0x9b19(%rip),%eax        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   140001517:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   14000151b:	88 54 24 10          	mov    %dl,0x10(%rsp)
   14000151f:	84 c0                	test   %al,%al
   140001521:	74 1d                	je     140001540 <_ZN10Arithmetic3sbbE4ByteS0_+0x30>
   140001523:	f9                   	stc
   140001524:	88 05 06 9b 00 00    	mov    %al,0x9b06(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   14000152a:	8a 44 24 08          	mov    0x8(%rsp),%al
   14000152e:	1a 44 24 10          	sbb    0x10(%rsp),%al
   140001532:	0f 92 05 f7 9a 00 00 	setb   0x9af7(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   140001539:	c3                   	ret
   14000153a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001540:	f8                   	clc
   140001541:	eb e1                	jmp    140001524 <_ZN10Arithmetic3sbbE4ByteS0_+0x14>
   140001543:	90                   	nop
   140001544:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000154b:	00 00 00 00 
   14000154f:	90                   	nop

0000000140001550 <_ZN10Arithmetic3mulE4ByteS0_>:
   140001550:	53                   	push   %rbx
   140001551:	48 83 ec 30          	sub    $0x30,%rsp
   140001555:	48 8d 5c 24 2d       	lea    0x2d(%rsp),%rbx
   14000155a:	88 4c 24 40          	mov    %cl,0x40(%rsp)
   14000155e:	88 54 24 48          	mov    %dl,0x48(%rsp)
   140001562:	48 89 d9             	mov    %rbx,%rcx
   140001565:	31 d2                	xor    %edx,%edx
   140001567:	66 c7 44 24 2e 00 00 	movw   $0x0,0x2e(%rsp)
   14000156e:	e8 0d 01 00 00       	call   140001680 <_ZN4ByteC1Ey>
   140001573:	0f b6 44 24 2d       	movzbl 0x2d(%rsp),%eax
   140001578:	31 d2                	xor    %edx,%edx
   14000157a:	48 89 d9             	mov    %rbx,%rcx
   14000157d:	88 44 24 2e          	mov    %al,0x2e(%rsp)
   140001581:	e8 fa 00 00 00       	call   140001680 <_ZN4ByteC1Ey>
   140001586:	0f b6 44 24 2d       	movzbl 0x2d(%rsp),%eax
   14000158b:	88 44 24 2f          	mov    %al,0x2f(%rsp)
   14000158f:	8a 44 24 40          	mov    0x40(%rsp),%al
   140001593:	f6 64 24 48          	mulb   0x48(%rsp)
   140001597:	88 64 24 2f          	mov    %ah,0x2f(%rsp)
   14000159b:	88 44 24 2e          	mov    %al,0x2e(%rsp)
   14000159f:	0f 92 05 8a 9a 00 00 	setb   0x9a8a(%rip)        # 14000b030 <_ZN10Arithmetic10carry_flagE>
   1400015a6:	0f b7 44 24 2e       	movzwl 0x2e(%rsp),%eax
   1400015ab:	48 83 c4 30          	add    $0x30,%rsp
   1400015af:	5b                   	pop    %rbx
   1400015b0:	c3                   	ret
   1400015b1:	90                   	nop
   1400015b2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400015b9:	00 00 00 00 
   1400015bd:	0f 1f 00             	nopl   (%rax)

00000001400015c0 <_ZN10Arithmetic3divE4Word4BytePS1_>:
   1400015c0:	55                   	push   %rbp
   1400015c1:	57                   	push   %rdi
   1400015c2:	56                   	push   %rsi
   1400015c3:	53                   	push   %rbx
   1400015c4:	48 83 ec 38          	sub    $0x38,%rsp
   1400015c8:	89 ce                	mov    %ecx,%esi
   1400015ca:	89 d3                	mov    %edx,%ebx
   1400015cc:	4c 89 c7             	mov    %r8,%rdi
   1400015cf:	84 d2                	test   %dl,%dl
   1400015d1:	74 54                	je     140001627 <_ZN10Arithmetic3divE4Word4BytePS1_+0x67>
   1400015d3:	48 8d 6c 24 2d       	lea    0x2d(%rsp),%rbp
   1400015d8:	31 d2                	xor    %edx,%edx
   1400015da:	66 c7 44 24 2e 00 00 	movw   $0x0,0x2e(%rsp)
   1400015e1:	48 89 e9             	mov    %rbp,%rcx
   1400015e4:	e8 97 00 00 00       	call   140001680 <_ZN4ByteC1Ey>
   1400015e9:	0f b6 44 24 2d       	movzbl 0x2d(%rsp),%eax
   1400015ee:	48 89 e9             	mov    %rbp,%rcx
   1400015f1:	31 d2                	xor    %edx,%edx
   1400015f3:	88 44 24 2e          	mov    %al,0x2e(%rsp)
   1400015f7:	e8 84 00 00 00       	call   140001680 <_ZN4ByteC1Ey>
   1400015fc:	0f b6 44 24 2d       	movzbl 0x2d(%rsp),%eax
   140001601:	89 d9                	mov    %ebx,%ecx
   140001603:	88 44 24 2f          	mov    %al,0x2f(%rsp)
   140001607:	89 f0                	mov    %esi,%eax
   140001609:	66 31 d2             	xor    %dx,%dx
   14000160c:	66 f7 f1             	div    %cx
   14000160f:	88 64 24 2f          	mov    %ah,0x2f(%rsp)
   140001613:	88 44 24 2e          	mov    %al,0x2e(%rsp)
   140001617:	88 17                	mov    %dl,(%rdi)
   140001619:	0f b7 44 24 2e       	movzwl 0x2e(%rsp),%eax
   14000161e:	48 83 c4 38          	add    $0x38,%rsp
   140001622:	5b                   	pop    %rbx
   140001623:	5e                   	pop    %rsi
   140001624:	5f                   	pop    %rdi
   140001625:	5d                   	pop    %rbp
   140001626:	c3                   	ret
   140001627:	b9 10 00 00 00       	mov    $0x10,%ecx
   14000162c:	e8 0f 37 00 00       	call   140004d40 <__cxa_allocate_exception>
   140001631:	48 8d 15 c8 69 00 00 	lea    0x69c8(%rip),%rdx        # 140008000 <.rdata>
   140001638:	48 89 c1             	mov    %rax,%rcx
   14000163b:	48 89 c3             	mov    %rax,%rbx
   14000163e:	e8 c5 37 00 00       	call   140004e08 <_ZNSt13runtime_errorC1EPKc>
   140001643:	4c 8d 05 b6 37 00 00 	lea    0x37b6(%rip),%r8        # 140004e00 <_ZNSt13runtime_errorD1Ev>
   14000164a:	48 8d 15 bf 6f 00 00 	lea    0x6fbf(%rip),%rdx        # 140008610 <_ZTISt13runtime_error>
   140001651:	48 89 d9             	mov    %rbx,%rcx
   140001654:	e8 bf 36 00 00       	call   140004d18 <__cxa_throw>
   140001659:	48 89 c6             	mov    %rax,%rsi
   14000165c:	48 89 d9             	mov    %rbx,%rcx
   14000165f:	e8 c4 36 00 00       	call   140004d28 <__cxa_free_exception>
   140001664:	48 89 f1             	mov    %rsi,%rcx
   140001667:	e8 24 48 00 00       	call   140005e90 <_Unwind_Resume>
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <__tcf_0>:
   140001670:	48 8d 0d c9 99 00 00 	lea    0x99c9(%rip),%rcx        # 14000b040 <_ZStL8__ioinit>
   140001677:	e9 0c 37 00 00       	jmp    140004d88 <_ZNSt8ios_base4InitD1Ev>
   14000167c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001680 <_ZN4ByteC1Ey>:
   140001680:	56                   	push   %rsi
   140001681:	53                   	push   %rbx
   140001682:	48 83 ec 28          	sub    $0x28,%rsp
   140001686:	48 81 fa ff 00 00 00 	cmp    $0xff,%rdx
   14000168d:	77 09                	ja     140001698 <_ZN4ByteC1Ey+0x18>
   14000168f:	88 11                	mov    %dl,(%rcx)
   140001691:	48 83 c4 28          	add    $0x28,%rsp
   140001695:	5b                   	pop    %rbx
   140001696:	5e                   	pop    %rsi
   140001697:	c3                   	ret
   140001698:	b9 10 00 00 00       	mov    $0x10,%ecx
   14000169d:	e8 9e 36 00 00       	call   140004d40 <__cxa_allocate_exception>
   1400016a2:	48 8d 15 67 69 00 00 	lea    0x6967(%rip),%rdx        # 140008010 <.rdata>
   1400016a9:	48 89 c1             	mov    %rax,%rcx
   1400016ac:	48 89 c3             	mov    %rax,%rbx
   1400016af:	e8 44 37 00 00       	call   140004df8 <_ZNSt16invalid_argumentC1EPKc>
   1400016b4:	4c 8d 05 35 37 00 00 	lea    0x3735(%rip),%r8        # 140004df0 <_ZNSt16invalid_argumentD1Ev>
   1400016bb:	48 8d 15 6e 6f 00 00 	lea    0x6f6e(%rip),%rdx        # 140008630 <_ZTISt16invalid_argument>
   1400016c2:	48 89 d9             	mov    %rbx,%rcx
   1400016c5:	e8 4e 36 00 00       	call   140004d18 <__cxa_throw>
   1400016ca:	48 89 c6             	mov    %rax,%rsi
   1400016cd:	48 89 d9             	mov    %rbx,%rcx
   1400016d0:	e8 53 36 00 00       	call   140004d28 <__cxa_free_exception>
   1400016d5:	48 89 f1             	mov    %rsi,%rcx
   1400016d8:	e8 b3 47 00 00       	call   140005e90 <_Unwind_Resume>
   1400016dd:	90                   	nop
   1400016de:	66 90                	xchg   %ax,%ax

00000001400016e0 <_ZN4WordC1Ey>:
   1400016e0:	56                   	push   %rsi
   1400016e1:	53                   	push   %rbx
   1400016e2:	48 83 ec 28          	sub    $0x28,%rsp
   1400016e6:	66 c7 01 00 00       	movw   $0x0,(%rcx)
   1400016eb:	48 81 fa ff ff 00 00 	cmp    $0xffff,%rdx
   1400016f2:	77 0a                	ja     1400016fe <_ZN4WordC1Ey+0x1e>
   1400016f4:	66 89 11             	mov    %dx,(%rcx)
   1400016f7:	48 83 c4 28          	add    $0x28,%rsp
   1400016fb:	5b                   	pop    %rbx
   1400016fc:	5e                   	pop    %rsi
   1400016fd:	c3                   	ret
   1400016fe:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001703:	e8 38 36 00 00       	call   140004d40 <__cxa_allocate_exception>
   140001708:	48 8d 15 01 69 00 00 	lea    0x6901(%rip),%rdx        # 140008010 <.rdata>
   14000170f:	48 89 c1             	mov    %rax,%rcx
   140001712:	48 89 c3             	mov    %rax,%rbx
   140001715:	e8 de 36 00 00       	call   140004df8 <_ZNSt16invalid_argumentC1EPKc>
   14000171a:	4c 8d 05 cf 36 00 00 	lea    0x36cf(%rip),%r8        # 140004df0 <_ZNSt16invalid_argumentD1Ev>
   140001721:	48 8d 15 08 6f 00 00 	lea    0x6f08(%rip),%rdx        # 140008630 <_ZTISt16invalid_argument>
   140001728:	48 89 d9             	mov    %rbx,%rcx
   14000172b:	e8 e8 35 00 00       	call   140004d18 <__cxa_throw>
   140001730:	48 89 c6             	mov    %rax,%rsi
   140001733:	48 89 d9             	mov    %rbx,%rcx
   140001736:	e8 ed 35 00 00       	call   140004d28 <__cxa_free_exception>
   14000173b:	48 89 f1             	mov    %rsi,%rcx
   14000173e:	e8 4d 47 00 00       	call   140005e90 <_Unwind_Resume>
   140001743:	90                   	nop
   140001744:	90                   	nop
   140001745:	90                   	nop
   140001746:	90                   	nop
   140001747:	90                   	nop
   140001748:	90                   	nop
   140001749:	90                   	nop
   14000174a:	90                   	nop
   14000174b:	90                   	nop
   14000174c:	90                   	nop
   14000174d:	90                   	nop
   14000174e:	90                   	nop
   14000174f:	90                   	nop

0000000140001750 <__tcf_0>:
   140001750:	48 8d 0d f9 98 00 00 	lea    0x98f9(%rip),%rcx        # 14000b050 <_ZStL8__ioinit>
   140001757:	e9 2c 36 00 00       	jmp    140004d88 <_ZNSt8ios_base4InitD1Ev>
   14000175c:	90                   	nop
   14000175d:	90                   	nop
   14000175e:	90                   	nop
   14000175f:	90                   	nop

0000000140001760 <__tcf_0>:
   140001760:	48 8d 0d f9 98 00 00 	lea    0x98f9(%rip),%rcx        # 14000b060 <_ZStL8__ioinit>
   140001767:	e9 1c 36 00 00       	jmp    140004d88 <_ZNSt8ios_base4InitD1Ev>
   14000176c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>:
   140001770:	41 54                	push   %r12
   140001772:	55                   	push   %rbp
   140001773:	57                   	push   %rdi
   140001774:	56                   	push   %rsi
   140001775:	53                   	push   %rbx
   140001776:	48 83 ec 40          	sub    $0x40,%rsp
   14000177a:	48 8b 32             	mov    (%rdx),%rsi
   14000177d:	48 8b 19             	mov    (%rcx),%rbx
   140001780:	48 89 cf             	mov    %rcx,%rdi
   140001783:	48 89 d5             	mov    %rdx,%rbp
   140001786:	48 39 f2             	cmp    %rsi,%rdx
   140001789:	74 24                	je     1400017af <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   14000178b:	48 39 cb             	cmp    %rcx,%rbx
   14000178e:	75 0d                	jne    14000179d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x2d>
   140001790:	eb 5e                	jmp    1400017f0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   140001792:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001798:	48 39 df             	cmp    %rbx,%rdi
   14000179b:	74 53                	je     1400017f0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   14000179d:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   1400017a1:	48 8b 36             	mov    (%rsi),%rsi
   1400017a4:	88 43 10             	mov    %al,0x10(%rbx)
   1400017a7:	48 8b 1b             	mov    (%rbx),%rbx
   1400017aa:	48 39 f5             	cmp    %rsi,%rbp
   1400017ad:	75 e9                	jne    140001798 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x28>
   1400017af:	48 39 df             	cmp    %rbx,%rdi
   1400017b2:	74 29                	je     1400017dd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   1400017b4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017b8:	48 89 de             	mov    %rbx,%rsi
   1400017bb:	48 8b 1b             	mov    (%rbx),%rbx
   1400017be:	48 83 6f 10 01       	subq   $0x1,0x10(%rdi)
   1400017c3:	48 89 f1             	mov    %rsi,%rcx
   1400017c6:	e8 cd 35 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400017cb:	ba 18 00 00 00       	mov    $0x18,%edx
   1400017d0:	48 89 f1             	mov    %rsi,%rcx
   1400017d3:	e8 78 35 00 00       	call   140004d50 <_ZdlPvy>
   1400017d8:	48 39 df             	cmp    %rbx,%rdi
   1400017db:	75 db                	jne    1400017b8 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x48>
   1400017dd:	48 83 c4 40          	add    $0x40,%rsp
   1400017e1:	5b                   	pop    %rbx
   1400017e2:	5e                   	pop    %rsi
   1400017e3:	5f                   	pop    %rdi
   1400017e4:	5d                   	pop    %rbp
   1400017e5:	41 5c                	pop    %r12
   1400017e7:	c3                   	ret
   1400017e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400017ef:	00 
   1400017f0:	48 39 f5             	cmp    %rsi,%rbp
   1400017f3:	74 ba                	je     1400017af <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   1400017f5:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400017fc:	00 00 
   1400017fe:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140001803:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140001808:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000180c:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001811:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001816:	e8 2d 35 00 00       	call   140004d48 <_Znwy>
   14000181b:	48 89 c1             	mov    %rax,%rcx
   14000181e:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001822:	4c 89 e2             	mov    %r12,%rdx
   140001825:	88 41 10             	mov    %al,0x10(%rcx)
   140001828:	e8 73 35 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000182d:	48 8b 36             	mov    (%rsi),%rsi
   140001830:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001836:	48 39 f5             	cmp    %rsi,%rbp
   140001839:	75 d6                	jne    140001811 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   14000183b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140001840:	4c 39 e2             	cmp    %r12,%rdx
   140001843:	74 98                	je     1400017dd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001845:	4d 89 e0             	mov    %r12,%r8
   140001848:	48 89 f9             	mov    %rdi,%rcx
   14000184b:	e8 58 35 00 00       	call   140004da8 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140001850:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140001855:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000185a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001861:	00 00 
   140001863:	48 01 47 10          	add    %rax,0x10(%rdi)
   140001867:	4c 39 e3             	cmp    %r12,%rbx
   14000186a:	0f 84 6d ff ff ff    	je     1400017dd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001870:	48 89 d9             	mov    %rbx,%rcx
   140001873:	48 8b 1b             	mov    (%rbx),%rbx
   140001876:	ba 18 00 00 00       	mov    $0x18,%edx
   14000187b:	e8 d0 34 00 00       	call   140004d50 <_ZdlPvy>
   140001880:	4c 39 e3             	cmp    %r12,%rbx
   140001883:	75 eb                	jne    140001870 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x100>
   140001885:	48 83 c4 40          	add    $0x40,%rsp
   140001889:	5b                   	pop    %rbx
   14000188a:	5e                   	pop    %rsi
   14000188b:	5f                   	pop    %rdi
   14000188c:	5d                   	pop    %rbp
   14000188d:	41 5c                	pop    %r12
   14000188f:	c3                   	ret
   140001890:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001895:	48 89 c3             	mov    %rax,%rbx
   140001898:	4c 39 e1             	cmp    %r12,%rcx
   14000189b:	74 12                	je     1400018af <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x13f>
   14000189d:	48 8b 31             	mov    (%rcx),%rsi
   1400018a0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400018a5:	e8 a6 34 00 00       	call   140004d50 <_ZdlPvy>
   1400018aa:	48 89 f1             	mov    %rsi,%rcx
   1400018ad:	eb e9                	jmp    140001898 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   1400018af:	48 89 d9             	mov    %rbx,%rcx
   1400018b2:	e8 d9 45 00 00       	call   140005e90 <_Unwind_Resume>
   1400018b7:	90                   	nop
   1400018b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400018bf:	00 

00000001400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>:
   1400018c0:	57                   	push   %rdi
   1400018c1:	56                   	push   %rsi
   1400018c2:	53                   	push   %rbx
   1400018c3:	48 83 ec 30          	sub    $0x30,%rsp
   1400018c7:	31 d2                	xor    %edx,%edx
   1400018c9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   1400018ce:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   1400018d5:	00 
   1400018d6:	48 89 cb             	mov    %rcx,%rbx
   1400018d9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400018dd:	0f 11 01             	movups %xmm0,(%rcx)
   1400018e0:	48 8d 4c 24 2f       	lea    0x2f(%rsp),%rcx
   1400018e5:	e8 96 fd ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400018ea:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400018ef:	e8 54 34 00 00       	call   140004d48 <_Znwy>
   1400018f4:	48 89 c1             	mov    %rax,%rcx
   1400018f7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400018fc:	48 89 da             	mov    %rbx,%rdx
   1400018ff:	88 41 10             	mov    %al,0x10(%rcx)
   140001902:	e8 99 34 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001907:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   14000190c:	48 83 c4 30          	add    $0x30,%rsp
   140001910:	5b                   	pop    %rbx
   140001911:	5e                   	pop    %rsi
   140001912:	5f                   	pop    %rdi
   140001913:	c3                   	ret
   140001914:	48 8b 0b             	mov    (%rbx),%rcx
   140001917:	48 89 c7             	mov    %rax,%rdi
   14000191a:	48 39 cb             	cmp    %rcx,%rbx
   14000191d:	74 12                	je     140001931 <_ZN13NaturalBinaryC2Ex.constprop.0+0x71>
   14000191f:	48 8b 31             	mov    (%rcx),%rsi
   140001922:	ba 18 00 00 00       	mov    $0x18,%edx
   140001927:	e8 24 34 00 00       	call   140004d50 <_ZdlPvy>
   14000192c:	48 89 f1             	mov    %rsi,%rcx
   14000192f:	eb e9                	jmp    14000191a <_ZN13NaturalBinaryC2Ex.constprop.0+0x5a>
   140001931:	48 89 f9             	mov    %rdi,%rcx
   140001934:	e8 57 45 00 00       	call   140005e90 <_Unwind_Resume>
   140001939:	90                   	nop
   14000193a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001940 <_ZN13NaturalBinaryC1Ev>:
   140001940:	e9 7b ff ff ff       	jmp    1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140001945:	90                   	nop
   140001946:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000194d:	00 00 00 

0000000140001950 <_ZN13NaturalBinaryC1Ex>:
   140001950:	57                   	push   %rdi
   140001951:	56                   	push   %rsi
   140001952:	53                   	push   %rbx
   140001953:	48 83 ec 30          	sub    $0x30,%rsp
   140001957:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   14000195c:	48 89 ce             	mov    %rcx,%rsi
   14000195f:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   140001964:	48 89 d3             	mov    %rdx,%rbx
   140001967:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000196b:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140001972:	00 
   140001973:	0f 11 01             	movups %xmm0,(%rcx)
   140001976:	48 85 d2             	test   %rdx,%rdx
   140001979:	74 65                	je     1400019e0 <_ZN13NaturalBinaryC1Ex+0x90>
   14000197b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001980:	48 89 d8             	mov    %rbx,%rax
   140001983:	48 89 f9             	mov    %rdi,%rcx
   140001986:	48 c1 f8 3f          	sar    $0x3f,%rax
   14000198a:	48 c1 e8 38          	shr    $0x38,%rax
   14000198e:	48 8d 14 03          	lea    (%rbx,%rax,1),%rdx
   140001992:	0f b6 d2             	movzbl %dl,%edx
   140001995:	48 29 c2             	sub    %rax,%rdx
   140001998:	e8 e3 fc ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000199d:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400019a2:	e8 a1 33 00 00       	call   140004d48 <_Znwy>
   1400019a7:	48 89 c1             	mov    %rax,%rcx
   1400019aa:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400019af:	48 89 f2             	mov    %rsi,%rdx
   1400019b2:	88 41 10             	mov    %al,0x10(%rcx)
   1400019b5:	e8 e6 33 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400019ba:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   1400019bf:	48 85 db             	test   %rbx,%rbx
   1400019c2:	48 8d 83 ff 00 00 00 	lea    0xff(%rbx),%rax
   1400019c9:	48 0f 48 d8          	cmovs  %rax,%rbx
   1400019cd:	48 c1 fb 08          	sar    $0x8,%rbx
   1400019d1:	75 ad                	jne    140001980 <_ZN13NaturalBinaryC1Ex+0x30>
   1400019d3:	48 83 c4 30          	add    $0x30,%rsp
   1400019d7:	5b                   	pop    %rbx
   1400019d8:	5e                   	pop    %rsi
   1400019d9:	5f                   	pop    %rdi
   1400019da:	c3                   	ret
   1400019db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400019e0:	31 d2                	xor    %edx,%edx
   1400019e2:	48 89 f9             	mov    %rdi,%rcx
   1400019e5:	e8 96 fc ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400019ea:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400019ef:	e8 54 33 00 00       	call   140004d48 <_Znwy>
   1400019f4:	48 89 c1             	mov    %rax,%rcx
   1400019f7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400019fc:	48 89 f2             	mov    %rsi,%rdx
   1400019ff:	88 41 10             	mov    %al,0x10(%rcx)
   140001a02:	e8 99 33 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001a07:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001a0c:	48 83 c4 30          	add    $0x30,%rsp
   140001a10:	5b                   	pop    %rbx
   140001a11:	5e                   	pop    %rsi
   140001a12:	5f                   	pop    %rdi
   140001a13:	c3                   	ret
   140001a14:	48 8b 0e             	mov    (%rsi),%rcx
   140001a17:	48 89 c3             	mov    %rax,%rbx
   140001a1a:	48 39 ce             	cmp    %rcx,%rsi
   140001a1d:	74 12                	je     140001a31 <_ZN13NaturalBinaryC1Ex+0xe1>
   140001a1f:	48 8b 39             	mov    (%rcx),%rdi
   140001a22:	ba 18 00 00 00       	mov    $0x18,%edx
   140001a27:	e8 24 33 00 00       	call   140004d50 <_ZdlPvy>
   140001a2c:	48 89 f9             	mov    %rdi,%rcx
   140001a2f:	eb e9                	jmp    140001a1a <_ZN13NaturalBinaryC1Ex+0xca>
   140001a31:	48 89 d9             	mov    %rbx,%rcx
   140001a34:	e8 57 44 00 00       	call   140005e90 <_Unwind_Resume>
   140001a39:	90                   	nop
   140001a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001a40 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE>:
   140001a40:	41 54                	push   %r12
   140001a42:	55                   	push   %rbp
   140001a43:	57                   	push   %rdi
   140001a44:	56                   	push   %rsi
   140001a45:	53                   	push   %rbx
   140001a46:	48 83 ec 20          	sub    $0x20,%rsp
   140001a4a:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   140001a4f:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140001a56:	00 
   140001a57:	48 89 ce             	mov    %rcx,%rsi
   140001a5a:	48 89 d7             	mov    %rdx,%rdi
   140001a5d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001a61:	0f 11 01             	movups %xmm0,(%rcx)
   140001a64:	48 8b 1a             	mov    (%rdx),%rbx
   140001a67:	48 39 da             	cmp    %rbx,%rdx
   140001a6a:	74 39                	je     140001aa5 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x65>
   140001a6c:	49 89 cc             	mov    %rcx,%r12
   140001a6f:	eb 0a                	jmp    140001a7b <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x3b>
   140001a71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001a78:	4c 8b 26             	mov    (%rsi),%r12
   140001a7b:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001a80:	0f b6 6b 10          	movzbl 0x10(%rbx),%ebp
   140001a84:	e8 bf 32 00 00       	call   140004d48 <_Znwy>
   140001a89:	40 88 68 10          	mov    %bpl,0x10(%rax)
   140001a8d:	48 89 c1             	mov    %rax,%rcx
   140001a90:	4c 89 e2             	mov    %r12,%rdx
   140001a93:	e8 08 33 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001a98:	48 8b 1b             	mov    (%rbx),%rbx
   140001a9b:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001aa0:	48 39 df             	cmp    %rbx,%rdi
   140001aa3:	75 d3                	jne    140001a78 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x38>
   140001aa5:	48 83 c4 20          	add    $0x20,%rsp
   140001aa9:	5b                   	pop    %rbx
   140001aaa:	5e                   	pop    %rsi
   140001aab:	5f                   	pop    %rdi
   140001aac:	5d                   	pop    %rbp
   140001aad:	41 5c                	pop    %r12
   140001aaf:	c3                   	ret
   140001ab0:	48 8b 0e             	mov    (%rsi),%rcx
   140001ab3:	48 89 c3             	mov    %rax,%rbx
   140001ab6:	48 39 ce             	cmp    %rcx,%rsi
   140001ab9:	74 12                	je     140001acd <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x8d>
   140001abb:	48 8b 39             	mov    (%rcx),%rdi
   140001abe:	ba 18 00 00 00       	mov    $0x18,%edx
   140001ac3:	e8 88 32 00 00       	call   140004d50 <_ZdlPvy>
   140001ac8:	48 89 f9             	mov    %rdi,%rcx
   140001acb:	eb e9                	jmp    140001ab6 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x76>
   140001acd:	48 89 d9             	mov    %rbx,%rcx
   140001ad0:	e8 bb 43 00 00       	call   140005e90 <_Unwind_Resume>
   140001ad5:	90                   	nop
   140001ad6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001add:	00 00 00 

0000000140001ae0 <_ZN13NaturalBinaryD1Ev>:
   140001ae0:	56                   	push   %rsi
   140001ae1:	53                   	push   %rbx
   140001ae2:	48 83 ec 28          	sub    $0x28,%rsp
   140001ae6:	48 8b 19             	mov    (%rcx),%rbx
   140001ae9:	48 89 ce             	mov    %rcx,%rsi
   140001aec:	48 39 cb             	cmp    %rcx,%rbx
   140001aef:	74 1c                	je     140001b0d <_ZN13NaturalBinaryD1Ev+0x2d>
   140001af1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001af8:	48 89 d9             	mov    %rbx,%rcx
   140001afb:	48 8b 1b             	mov    (%rbx),%rbx
   140001afe:	ba 18 00 00 00       	mov    $0x18,%edx
   140001b03:	e8 48 32 00 00       	call   140004d50 <_ZdlPvy>
   140001b08:	48 39 f3             	cmp    %rsi,%rbx
   140001b0b:	75 eb                	jne    140001af8 <_ZN13NaturalBinaryD1Ev+0x18>
   140001b0d:	48 83 c4 28          	add    $0x28,%rsp
   140001b11:	5b                   	pop    %rbx
   140001b12:	5e                   	pop    %rsi
   140001b13:	c3                   	ret
   140001b14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001b1b:	00 00 00 00 
   140001b1f:	90                   	nop

0000000140001b20 <_ZN13NaturalBinaryplES_>:
   140001b20:	41 57                	push   %r15
   140001b22:	41 56                	push   %r14
   140001b24:	41 55                	push   %r13
   140001b26:	41 54                	push   %r12
   140001b28:	55                   	push   %rbp
   140001b29:	57                   	push   %rdi
   140001b2a:	56                   	push   %rsi
   140001b2b:	53                   	push   %rbx
   140001b2c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   140001b33:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
   140001b3a:	00 
   140001b3b:	49 8b 18             	mov    (%r8),%rbx
   140001b3e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140001b43:	48 89 cf             	mov    %rcx,%rdi
   140001b46:	49 89 d4             	mov    %rdx,%r12
   140001b49:	4c 89 c6             	mov    %r8,%rsi
   140001b4c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001b53:	00 00 
   140001b55:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140001b5a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001b5e:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001b63:	49 39 d8             	cmp    %rbx,%r8
   140001b66:	0f 84 cc 01 00 00    	je     140001d38 <_ZN13NaturalBinaryplES_+0x218>
   140001b6c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001b70:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001b75:	e8 ce 31 00 00       	call   140004d48 <_Znwy>
   140001b7a:	48 89 c1             	mov    %rax,%rcx
   140001b7d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001b81:	48 89 ea             	mov    %rbp,%rdx
   140001b84:	88 41 10             	mov    %al,0x10(%rcx)
   140001b87:	e8 14 32 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001b8c:	48 8b 1b             	mov    (%rbx),%rbx
   140001b8f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001b95:	48 39 de             	cmp    %rbx,%rsi
   140001b98:	75 d6                	jne    140001b70 <_ZN13NaturalBinaryplES_+0x50>
   140001b9a:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
   140001b9f:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001ba6:	00 00 
   140001ba8:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
   140001bad:	66 49 0f 6e f7       	movq   %r15,%xmm6
   140001bb2:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140001bb6:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001bbb:	e8 b0 f8 ff ff       	call   140001470 <_ZN10Arithmetic3clcEv>
   140001bc0:	49 8b 1c 24          	mov    (%r12),%rbx
   140001bc4:	49 39 dc             	cmp    %rbx,%r12
   140001bc7:	74 47                	je     140001c10 <_ZN13NaturalBinaryplES_+0xf0>
   140001bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001bd0:	0f b6 4b 10          	movzbl 0x10(%rbx),%ecx
   140001bd4:	41 0f b6 55 10       	movzbl 0x10(%r13),%edx
   140001bd9:	e8 d2 f8 ff ff       	call   1400014b0 <_ZN10Arithmetic4addcE4ByteS0_>
   140001bde:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001be3:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
   140001be8:	89 c6                	mov    %eax,%esi
   140001bea:	e8 59 31 00 00       	call   140004d48 <_Znwy>
   140001bef:	40 88 70 10          	mov    %sil,0x10(%rax)
   140001bf3:	48 89 c1             	mov    %rax,%rcx
   140001bf6:	4c 89 f2             	mov    %r14,%rdx
   140001bf9:	e8 a2 31 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001bfe:	48 8b 1b             	mov    (%rbx),%rbx
   140001c01:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140001c07:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140001c0b:	49 39 dc             	cmp    %rbx,%r12
   140001c0e:	75 c0                	jne    140001bd0 <_ZN13NaturalBinaryplES_+0xb0>
   140001c10:	e8 6b f8 ff ff       	call   140001480 <_ZN10Arithmetic5carryEv>
   140001c15:	84 c0                	test   %al,%al
   140001c17:	0f 85 23 01 00 00    	jne    140001d40 <_ZN13NaturalBinaryplES_+0x220>
   140001c1d:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140001c22:	f3 0f 6f 4c 24 40    	movdqu 0x40(%rsp),%xmm1
   140001c28:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
   140001c2d:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   140001c32:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140001c37:	0f 11 4c 24 60       	movups %xmm1,0x60(%rsp)
   140001c3c:	49 39 c7             	cmp    %rax,%r15
   140001c3f:	0f 84 43 01 00 00    	je     140001d88 <_ZN13NaturalBinaryplES_+0x268>
   140001c45:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140001c4a:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140001c4f:	48 89 32             	mov    %rsi,(%rdx)
   140001c52:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140001c57:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001c5b:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   140001c5f:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001c66:	00 00 
   140001c68:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   140001c6f:	00 
   140001c70:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001c75:	0f 11 07             	movups %xmm0,(%rdi)
   140001c78:	48 39 f3             	cmp    %rsi,%rbx
   140001c7b:	74 78                	je     140001cf5 <_ZN13NaturalBinaryplES_+0x1d5>
   140001c7d:	49 89 fd             	mov    %rdi,%r13
   140001c80:	eb 09                	jmp    140001c8b <_ZN13NaturalBinaryplES_+0x16b>
   140001c82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001c88:	4c 8b 2f             	mov    (%rdi),%r13
   140001c8b:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001c90:	44 0f b6 63 10       	movzbl 0x10(%rbx),%r12d
   140001c95:	e8 ae 30 00 00       	call   140004d48 <_Znwy>
   140001c9a:	44 88 60 10          	mov    %r12b,0x10(%rax)
   140001c9e:	48 89 c1             	mov    %rax,%rcx
   140001ca1:	4c 89 ea             	mov    %r13,%rdx
   140001ca4:	e8 f7 30 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001ca9:	48 8b 1b             	mov    (%rbx),%rbx
   140001cac:	48 83 47 10 01       	addq   $0x1,0x10(%rdi)
   140001cb1:	48 39 f3             	cmp    %rsi,%rbx
   140001cb4:	75 d2                	jne    140001c88 <_ZN13NaturalBinaryplES_+0x168>
   140001cb6:	4c 8b 64 24 60       	mov    0x60(%rsp),%r12
   140001cbb:	49 39 dc             	cmp    %rbx,%r12
   140001cbe:	74 16                	je     140001cd6 <_ZN13NaturalBinaryplES_+0x1b6>
   140001cc0:	4c 89 e1             	mov    %r12,%rcx
   140001cc3:	4d 8b 24 24          	mov    (%r12),%r12
   140001cc7:	ba 18 00 00 00       	mov    $0x18,%edx
   140001ccc:	e8 7f 30 00 00       	call   140004d50 <_ZdlPvy>
   140001cd1:	49 39 f4             	cmp    %rsi,%r12
   140001cd4:	75 ea                	jne    140001cc0 <_ZN13NaturalBinaryplES_+0x1a0>
   140001cd6:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001cdb:	eb 13                	jmp    140001cf0 <_ZN13NaturalBinaryplES_+0x1d0>
   140001cdd:	0f 1f 00             	nopl   (%rax)
   140001ce0:	48 89 d9             	mov    %rbx,%rcx
   140001ce3:	ba 18 00 00 00       	mov    $0x18,%edx
   140001ce8:	48 8b 1b             	mov    (%rbx),%rbx
   140001ceb:	e8 60 30 00 00       	call   140004d50 <_ZdlPvy>
   140001cf0:	4c 39 fb             	cmp    %r15,%rbx
   140001cf3:	75 eb                	jne    140001ce0 <_ZN13NaturalBinaryplES_+0x1c0>
   140001cf5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140001cfa:	48 39 eb             	cmp    %rbp,%rbx
   140001cfd:	74 16                	je     140001d15 <_ZN13NaturalBinaryplES_+0x1f5>
   140001cff:	90                   	nop
   140001d00:	48 89 d9             	mov    %rbx,%rcx
   140001d03:	48 8b 1b             	mov    (%rbx),%rbx
   140001d06:	ba 18 00 00 00       	mov    $0x18,%edx
   140001d0b:	e8 40 30 00 00       	call   140004d50 <_ZdlPvy>
   140001d10:	48 39 eb             	cmp    %rbp,%rbx
   140001d13:	75 eb                	jne    140001d00 <_ZN13NaturalBinaryplES_+0x1e0>
   140001d15:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
   140001d1c:	00 
   140001d1d:	48 89 f8             	mov    %rdi,%rax
   140001d20:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001d27:	5b                   	pop    %rbx
   140001d28:	5e                   	pop    %rsi
   140001d29:	5f                   	pop    %rdi
   140001d2a:	5d                   	pop    %rbp
   140001d2b:	41 5c                	pop    %r12
   140001d2d:	41 5d                	pop    %r13
   140001d2f:	41 5e                	pop    %r14
   140001d31:	41 5f                	pop    %r15
   140001d33:	c3                   	ret
   140001d34:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d38:	49 89 ed             	mov    %rbp,%r13
   140001d3b:	e9 5f fe ff ff       	jmp    140001b9f <_ZN13NaturalBinaryplES_+0x7f>
   140001d40:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140001d45:	ba 01 00 00 00       	mov    $0x1,%edx
   140001d4a:	e8 31 f9 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140001d4f:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001d54:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001d59:	e8 ea 2f 00 00       	call   140004d48 <_Znwy>
   140001d5e:	48 89 c1             	mov    %rax,%rcx
   140001d61:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   140001d66:	48 89 da             	mov    %rbx,%rdx
   140001d69:	88 41 10             	mov    %al,0x10(%rcx)
   140001d6c:	e8 2f 30 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001d71:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140001d76:	48 83 c0 01          	add    $0x1,%rax
   140001d7a:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   140001d7f:	e9 9e fe ff ff       	jmp    140001c22 <_ZN13NaturalBinaryplES_+0x102>
   140001d84:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d88:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140001d8d:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   140001d94:	00 
   140001d95:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001d99:	0f 11 07             	movups %xmm0,(%rdi)
   140001d9c:	e9 54 ff ff ff       	jmp    140001cf5 <_ZN13NaturalBinaryplES_+0x1d5>
   140001da1:	48 8b 0f             	mov    (%rdi),%rcx
   140001da4:	48 89 c3             	mov    %rax,%rbx
   140001da7:	48 39 cf             	cmp    %rcx,%rdi
   140001daa:	74 62                	je     140001e0e <_ZN13NaturalBinaryplES_+0x2ee>
   140001dac:	4c 8b 21             	mov    (%rcx),%r12
   140001daf:	ba 18 00 00 00       	mov    $0x18,%edx
   140001db4:	e8 97 2f 00 00       	call   140004d50 <_ZdlPvy>
   140001db9:	4c 89 e1             	mov    %r12,%rcx
   140001dbc:	eb e9                	jmp    140001da7 <_ZN13NaturalBinaryplES_+0x287>
   140001dbe:	48 89 c3             	mov    %rax,%rbx
   140001dc1:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140001dc6:	4c 39 f9             	cmp    %r15,%rcx
   140001dc9:	74 31                	je     140001dfc <_ZN13NaturalBinaryplES_+0x2dc>
   140001dcb:	48 8b 31             	mov    (%rcx),%rsi
   140001dce:	ba 18 00 00 00       	mov    $0x18,%edx
   140001dd3:	e8 78 2f 00 00       	call   140004d50 <_ZdlPvy>
   140001dd8:	48 89 f1             	mov    %rsi,%rcx
   140001ddb:	eb e9                	jmp    140001dc6 <_ZN13NaturalBinaryplES_+0x2a6>
   140001ddd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001de2:	48 89 c3             	mov    %rax,%rbx
   140001de5:	48 39 e9             	cmp    %rbp,%rcx
   140001de8:	74 1c                	je     140001e06 <_ZN13NaturalBinaryplES_+0x2e6>
   140001dea:	48 8b 31             	mov    (%rcx),%rsi
   140001ded:	ba 18 00 00 00       	mov    $0x18,%edx
   140001df2:	e8 59 2f 00 00       	call   140004d50 <_ZdlPvy>
   140001df7:	48 89 f1             	mov    %rsi,%rcx
   140001dfa:	eb e9                	jmp    140001de5 <_ZN13NaturalBinaryplES_+0x2c5>
   140001dfc:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001e01:	48 39 e9             	cmp    %rbp,%rcx
   140001e04:	75 24                	jne    140001e2a <_ZN13NaturalBinaryplES_+0x30a>
   140001e06:	48 89 d9             	mov    %rbx,%rcx
   140001e09:	e8 82 40 00 00       	call   140005e90 <_Unwind_Resume>
   140001e0e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140001e13:	48 39 f1             	cmp    %rsi,%rcx
   140001e16:	74 a9                	je     140001dc1 <_ZN13NaturalBinaryplES_+0x2a1>
   140001e18:	48 8b 39             	mov    (%rcx),%rdi
   140001e1b:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e20:	e8 2b 2f 00 00       	call   140004d50 <_ZdlPvy>
   140001e25:	48 89 f9             	mov    %rdi,%rcx
   140001e28:	eb e9                	jmp    140001e13 <_ZN13NaturalBinaryplES_+0x2f3>
   140001e2a:	48 8b 31             	mov    (%rcx),%rsi
   140001e2d:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e32:	e8 19 2f 00 00       	call   140004d50 <_ZdlPvy>
   140001e37:	48 89 f1             	mov    %rsi,%rcx
   140001e3a:	eb c5                	jmp    140001e01 <_ZN13NaturalBinaryplES_+0x2e1>
   140001e3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001e40 <_ZN13NaturalBinarymiES_>:
   140001e40:	41 57                	push   %r15
   140001e42:	41 56                	push   %r14
   140001e44:	41 55                	push   %r13
   140001e46:	41 54                	push   %r12
   140001e48:	55                   	push   %rbp
   140001e49:	57                   	push   %rdi
   140001e4a:	56                   	push   %rsi
   140001e4b:	53                   	push   %rbx
   140001e4c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   140001e53:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
   140001e5a:	00 
   140001e5b:	49 8b 18             	mov    (%r8),%rbx
   140001e5e:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140001e63:	48 89 cd             	mov    %rcx,%rbp
   140001e66:	49 89 d5             	mov    %rdx,%r13
   140001e69:	4c 89 c6             	mov    %r8,%rsi
   140001e6c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001e73:	00 00 
   140001e75:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140001e7a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001e7e:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001e83:	49 39 d8             	cmp    %rbx,%r8
   140001e86:	74 35                	je     140001ebd <_ZN13NaturalBinarymiES_+0x7d>
   140001e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e8f:	00 
   140001e90:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001e95:	e8 ae 2e 00 00       	call   140004d48 <_Znwy>
   140001e9a:	48 89 c1             	mov    %rax,%rcx
   140001e9d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001ea1:	4c 89 e2             	mov    %r12,%rdx
   140001ea4:	88 41 10             	mov    %al,0x10(%rcx)
   140001ea7:	e8 f4 2e 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001eac:	48 8b 1b             	mov    (%rbx),%rbx
   140001eaf:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001eb5:	48 39 de             	cmp    %rbx,%rsi
   140001eb8:	75 d6                	jne    140001e90 <_ZN13NaturalBinarymiES_+0x50>
   140001eba:	48 8b 1b             	mov    (%rbx),%rbx
   140001ebd:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001ec4:	00 00 
   140001ec6:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
   140001ecb:	66 49 0f 6e f7       	movq   %r15,%xmm6
   140001ed0:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140001ed4:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001ed9:	e8 92 f5 ff ff       	call   140001470 <_ZN10Arithmetic3clcEv>
   140001ede:	49 8b 75 00          	mov    0x0(%r13),%rsi
   140001ee2:	49 39 f5             	cmp    %rsi,%r13
   140001ee5:	74 47                	je     140001f2e <_ZN13NaturalBinarymiES_+0xee>
   140001ee7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001eee:	00 00 
   140001ef0:	0f b6 4e 10          	movzbl 0x10(%rsi),%ecx
   140001ef4:	0f b6 53 10          	movzbl 0x10(%rbx),%edx
   140001ef8:	e8 13 f6 ff ff       	call   140001510 <_ZN10Arithmetic3sbbE4ByteS0_>
   140001efd:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001f02:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
   140001f07:	89 c7                	mov    %eax,%edi
   140001f09:	e8 3a 2e 00 00       	call   140004d48 <_Znwy>
   140001f0e:	40 88 78 10          	mov    %dil,0x10(%rax)
   140001f12:	48 89 c1             	mov    %rax,%rcx
   140001f15:	4c 89 f2             	mov    %r14,%rdx
   140001f18:	e8 83 2e 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001f1d:	48 8b 36             	mov    (%rsi),%rsi
   140001f20:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140001f26:	48 8b 1b             	mov    (%rbx),%rbx
   140001f29:	49 39 f5             	cmp    %rsi,%r13
   140001f2c:	75 c2                	jne    140001ef0 <_ZN13NaturalBinarymiES_+0xb0>
   140001f2e:	e8 4d f5 ff ff       	call   140001480 <_ZN10Arithmetic5carryEv>
   140001f33:	84 c0                	test   %al,%al
   140001f35:	0f 85 1d 01 00 00    	jne    140002058 <_ZN13NaturalBinarymiES_+0x218>
   140001f3b:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140001f40:	f3 0f 6f 4c 24 40    	movdqu 0x40(%rsp),%xmm1
   140001f46:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
   140001f4b:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   140001f50:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140001f55:	0f 11 4c 24 60       	movups %xmm1,0x60(%rsp)
   140001f5a:	49 39 c7             	cmp    %rax,%r15
   140001f5d:	0f 84 3d 01 00 00    	je     1400020a0 <_ZN13NaturalBinarymiES_+0x260>
   140001f63:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140001f68:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140001f6d:	48 89 32             	mov    %rsi,(%rdx)
   140001f70:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140001f75:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001f79:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   140001f7d:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001f84:	00 00 
   140001f86:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   140001f8d:	00 
   140001f8e:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001f93:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   140001f97:	48 39 f3             	cmp    %rsi,%rbx
   140001f9a:	74 79                	je     140002015 <_ZN13NaturalBinarymiES_+0x1d5>
   140001f9c:	49 89 ed             	mov    %rbp,%r13
   140001f9f:	eb 0b                	jmp    140001fac <_ZN13NaturalBinarymiES_+0x16c>
   140001fa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001fa8:	4c 8b 6d 00          	mov    0x0(%rbp),%r13
   140001fac:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001fb1:	0f b6 7b 10          	movzbl 0x10(%rbx),%edi
   140001fb5:	e8 8e 2d 00 00       	call   140004d48 <_Znwy>
   140001fba:	40 88 78 10          	mov    %dil,0x10(%rax)
   140001fbe:	48 89 c1             	mov    %rax,%rcx
   140001fc1:	4c 89 ea             	mov    %r13,%rdx
   140001fc4:	e8 d7 2d 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001fc9:	48 8b 1b             	mov    (%rbx),%rbx
   140001fcc:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   140001fd1:	48 39 f3             	cmp    %rsi,%rbx
   140001fd4:	75 d2                	jne    140001fa8 <_ZN13NaturalBinarymiES_+0x168>
   140001fd6:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   140001fdb:	48 39 df             	cmp    %rbx,%rdi
   140001fde:	74 15                	je     140001ff5 <_ZN13NaturalBinarymiES_+0x1b5>
   140001fe0:	48 89 f9             	mov    %rdi,%rcx
   140001fe3:	48 8b 3f             	mov    (%rdi),%rdi
   140001fe6:	ba 18 00 00 00       	mov    $0x18,%edx
   140001feb:	e8 60 2d 00 00       	call   140004d50 <_ZdlPvy>
   140001ff0:	48 39 f7             	cmp    %rsi,%rdi
   140001ff3:	75 eb                	jne    140001fe0 <_ZN13NaturalBinarymiES_+0x1a0>
   140001ff5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001ffa:	eb 14                	jmp    140002010 <_ZN13NaturalBinarymiES_+0x1d0>
   140001ffc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002000:	48 89 d9             	mov    %rbx,%rcx
   140002003:	ba 18 00 00 00       	mov    $0x18,%edx
   140002008:	48 8b 1b             	mov    (%rbx),%rbx
   14000200b:	e8 40 2d 00 00       	call   140004d50 <_ZdlPvy>
   140002010:	4c 39 fb             	cmp    %r15,%rbx
   140002013:	75 eb                	jne    140002000 <_ZN13NaturalBinarymiES_+0x1c0>
   140002015:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000201a:	4c 39 e3             	cmp    %r12,%rbx
   14000201d:	74 16                	je     140002035 <_ZN13NaturalBinarymiES_+0x1f5>
   14000201f:	90                   	nop
   140002020:	48 89 d9             	mov    %rbx,%rcx
   140002023:	48 8b 1b             	mov    (%rbx),%rbx
   140002026:	ba 18 00 00 00       	mov    $0x18,%edx
   14000202b:	e8 20 2d 00 00       	call   140004d50 <_ZdlPvy>
   140002030:	4c 39 e3             	cmp    %r12,%rbx
   140002033:	75 eb                	jne    140002020 <_ZN13NaturalBinarymiES_+0x1e0>
   140002035:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
   14000203c:	00 
   14000203d:	48 89 e8             	mov    %rbp,%rax
   140002040:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140002047:	5b                   	pop    %rbx
   140002048:	5e                   	pop    %rsi
   140002049:	5f                   	pop    %rdi
   14000204a:	5d                   	pop    %rbp
   14000204b:	41 5c                	pop    %r12
   14000204d:	41 5d                	pop    %r13
   14000204f:	41 5e                	pop    %r14
   140002051:	41 5f                	pop    %r15
   140002053:	c3                   	ret
   140002054:	0f 1f 40 00          	nopl   0x0(%rax)
   140002058:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   14000205d:	ba 01 00 00 00       	mov    $0x1,%edx
   140002062:	e8 19 f6 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140002067:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000206c:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140002071:	e8 d2 2c 00 00       	call   140004d48 <_Znwy>
   140002076:	48 89 c1             	mov    %rax,%rcx
   140002079:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   14000207e:	48 89 da             	mov    %rbx,%rdx
   140002081:	88 41 10             	mov    %al,0x10(%rcx)
   140002084:	e8 17 2d 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002089:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   14000208e:	48 83 c0 01          	add    $0x1,%rax
   140002092:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   140002097:	e9 a4 fe ff ff       	jmp    140001f40 <_ZN13NaturalBinarymiES_+0x100>
   14000209c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400020a0:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400020a5:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   1400020ac:	00 
   1400020ad:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400020b1:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   1400020b5:	e9 5b ff ff ff       	jmp    140002015 <_ZN13NaturalBinarymiES_+0x1d5>
   1400020ba:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   1400020be:	48 89 c3             	mov    %rax,%rbx
   1400020c1:	48 39 cd             	cmp    %rcx,%rbp
   1400020c4:	74 62                	je     140002128 <_ZN13NaturalBinarymiES_+0x2e8>
   1400020c6:	48 8b 39             	mov    (%rcx),%rdi
   1400020c9:	ba 18 00 00 00       	mov    $0x18,%edx
   1400020ce:	e8 7d 2c 00 00       	call   140004d50 <_ZdlPvy>
   1400020d3:	48 89 f9             	mov    %rdi,%rcx
   1400020d6:	eb e9                	jmp    1400020c1 <_ZN13NaturalBinarymiES_+0x281>
   1400020d8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400020dd:	48 89 c3             	mov    %rax,%rbx
   1400020e0:	4c 39 e1             	cmp    %r12,%rcx
   1400020e3:	74 3b                	je     140002120 <_ZN13NaturalBinarymiES_+0x2e0>
   1400020e5:	48 8b 31             	mov    (%rcx),%rsi
   1400020e8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400020ed:	e8 5e 2c 00 00       	call   140004d50 <_ZdlPvy>
   1400020f2:	48 89 f1             	mov    %rsi,%rcx
   1400020f5:	eb e9                	jmp    1400020e0 <_ZN13NaturalBinarymiES_+0x2a0>
   1400020f7:	48 89 c3             	mov    %rax,%rbx
   1400020fa:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400020ff:	4c 39 f9             	cmp    %r15,%rcx
   140002102:	74 12                	je     140002116 <_ZN13NaturalBinarymiES_+0x2d6>
   140002104:	48 8b 31             	mov    (%rcx),%rsi
   140002107:	ba 18 00 00 00       	mov    $0x18,%edx
   14000210c:	e8 3f 2c 00 00       	call   140004d50 <_ZdlPvy>
   140002111:	48 89 f1             	mov    %rsi,%rcx
   140002114:	eb e9                	jmp    1400020ff <_ZN13NaturalBinarymiES_+0x2bf>
   140002116:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000211b:	4c 39 e1             	cmp    %r12,%rcx
   14000211e:	75 24                	jne    140002144 <_ZN13NaturalBinarymiES_+0x304>
   140002120:	48 89 d9             	mov    %rbx,%rcx
   140002123:	e8 68 3d 00 00       	call   140005e90 <_Unwind_Resume>
   140002128:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000212d:	48 39 f1             	cmp    %rsi,%rcx
   140002130:	74 c8                	je     1400020fa <_ZN13NaturalBinarymiES_+0x2ba>
   140002132:	48 8b 39             	mov    (%rcx),%rdi
   140002135:	ba 18 00 00 00       	mov    $0x18,%edx
   14000213a:	e8 11 2c 00 00       	call   140004d50 <_ZdlPvy>
   14000213f:	48 89 f9             	mov    %rdi,%rcx
   140002142:	eb e9                	jmp    14000212d <_ZN13NaturalBinarymiES_+0x2ed>
   140002144:	48 8b 31             	mov    (%rcx),%rsi
   140002147:	ba 18 00 00 00       	mov    $0x18,%edx
   14000214c:	e8 ff 2b 00 00       	call   140004d50 <_ZdlPvy>
   140002151:	48 89 f1             	mov    %rsi,%rcx
   140002154:	eb c5                	jmp    14000211b <_ZN13NaturalBinarymiES_+0x2db>
   140002156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000215d:	00 00 00 

0000000140002160 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>:
   140002160:	41 57                	push   %r15
   140002162:	41 56                	push   %r14
   140002164:	41 55                	push   %r13
   140002166:	41 54                	push   %r12
   140002168:	55                   	push   %rbp
   140002169:	57                   	push   %rdi
   14000216a:	56                   	push   %rsi
   14000216b:	53                   	push   %rbx
   14000216c:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   140002173:	0f 11 74 24 70       	movups %xmm6,0x70(%rsp)
   140002178:	48 8b 5a 08          	mov    0x8(%rdx),%rbx
   14000217c:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002180:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
   140002185:	48 89 cf             	mov    %rcx,%rdi
   140002188:	48 89 d5             	mov    %rdx,%rbp
   14000218b:	45 89 c5             	mov    %r8d,%r13d
   14000218e:	66 49 0f 6e f4       	movq   %r12,%xmm6
   140002193:	4d 89 cf             	mov    %r9,%r15
   140002196:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   14000219a:	44 38 c0             	cmp    %r8b,%al
   14000219d:	0f 83 e5 01 00 00    	jae    140002388 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x228>
   1400021a3:	48 83 7a 10 01       	cmpq   $0x1,0x10(%rdx)
   1400021a8:	0f 84 da 01 00 00    	je     140002388 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x228>
   1400021ae:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   1400021b2:	c1 e0 08             	shl    $0x8,%eax
   1400021b5:	48 8d 4c 24 2e       	lea    0x2e(%rsp),%rcx
   1400021ba:	4c 8d 74 24 2d       	lea    0x2d(%rsp),%r14
   1400021bf:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
   1400021c4:	0f b6 52 10          	movzbl 0x10(%rdx),%edx
   1400021c8:	01 c2                	add    %eax,%edx
   1400021ca:	48 63 d2             	movslq %edx,%rdx
   1400021cd:	e8 0e f5 ff ff       	call   1400016e0 <_ZN4WordC1Ey>
   1400021d2:	c6 44 24 2d 00       	movb   $0x0,0x2d(%rsp)
   1400021d7:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   1400021de:	00 00 
   1400021e0:	0f 11 74 24 30       	movups %xmm6,0x30(%rsp)
   1400021e5:	0f 1f 00             	nopl   (%rax)
   1400021e8:	0f b7 4c 24 2e       	movzwl 0x2e(%rsp),%ecx
   1400021ed:	4d 89 f0             	mov    %r14,%r8
   1400021f0:	44 89 ea             	mov    %r13d,%edx
   1400021f3:	e8 c8 f3 ff ff       	call   1400015c0 <_ZN10Arithmetic3divE4Word4BytePS1_>
   1400021f8:	0f b7 d0             	movzwl %ax,%edx
   1400021fb:	48 89 f1             	mov    %rsi,%rcx
   1400021fe:	e8 7d f4 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140002203:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002208:	e8 3b 2b 00 00       	call   140004d48 <_Znwy>
   14000220d:	48 89 c1             	mov    %rax,%rcx
   140002210:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   140002215:	4c 89 e2             	mov    %r12,%rdx
   140002218:	88 41 10             	mov    %al,0x10(%rcx)
   14000221b:	e8 80 2b 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002220:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140002224:	0f b6 54 24 2d       	movzbl 0x2d(%rsp),%edx
   140002229:	48 89 f1             	mov    %rsi,%rcx
   14000222c:	48 83 44 24 40 01    	addq   $0x1,0x40(%rsp)
   140002232:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002236:	c1 e2 08             	shl    $0x8,%edx
   140002239:	0f b6 40 10          	movzbl 0x10(%rax),%eax
   14000223d:	01 c2                	add    %eax,%edx
   14000223f:	48 63 d2             	movslq %edx,%rdx
   140002242:	e8 99 f4 ff ff       	call   1400016e0 <_ZN4WordC1Ey>
   140002247:	0f b7 44 24 50       	movzwl 0x50(%rsp),%eax
   14000224c:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
   140002251:	48 3b 5d 00          	cmp    0x0(%rbp),%rbx
   140002255:	75 91                	jne    1400021e8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x88>
   140002257:	4d 85 ff             	test   %r15,%r15
   14000225a:	74 39                	je     140002295 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x135>
   14000225c:	0f b6 54 24 2d       	movzbl 0x2d(%rsp),%edx
   140002261:	48 89 f1             	mov    %rsi,%rcx
   140002264:	e8 e7 f6 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140002269:	48 89 f2             	mov    %rsi,%rdx
   14000226c:	4c 89 f9             	mov    %r15,%rcx
   14000226f:	e8 fc f4 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140002274:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   140002279:	48 39 f3             	cmp    %rsi,%rbx
   14000227c:	74 17                	je     140002295 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x135>
   14000227e:	66 90                	xchg   %ax,%ax
   140002280:	48 89 d9             	mov    %rbx,%rcx
   140002283:	48 8b 1b             	mov    (%rbx),%rbx
   140002286:	ba 18 00 00 00       	mov    $0x18,%edx
   14000228b:	e8 c0 2a 00 00       	call   140004d50 <_ZdlPvy>
   140002290:	48 39 f3             	cmp    %rsi,%rbx
   140002293:	75 eb                	jne    140002280 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x120>
   140002295:	f3 0f 6f 4c 24 30    	movdqu 0x30(%rsp),%xmm1
   14000229b:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   1400022a0:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400022a5:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   1400022aa:	66 48 0f 7e c8       	movq   %xmm1,%rax
   1400022af:	0f 11 4c 24 50       	movups %xmm1,0x50(%rsp)
   1400022b4:	49 39 c4             	cmp    %rax,%r12
   1400022b7:	0f 84 0b 01 00 00    	je     1400023c8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x268>
   1400022bd:	48 89 32             	mov    %rsi,(%rdx)
   1400022c0:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   1400022c5:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   1400022ca:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400022ce:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   1400022d2:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   1400022d9:	00 00 
   1400022db:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   1400022e2:	00 
   1400022e3:	0f 11 74 24 30       	movups %xmm6,0x30(%rsp)
   1400022e8:	0f 11 07             	movups %xmm0,(%rdi)
   1400022eb:	48 39 f3             	cmp    %rsi,%rbx
   1400022ee:	74 75                	je     140002365 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   1400022f0:	48 89 fd             	mov    %rdi,%rbp
   1400022f3:	eb 06                	jmp    1400022fb <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x19b>
   1400022f5:	0f 1f 00             	nopl   (%rax)
   1400022f8:	48 8b 2f             	mov    (%rdi),%rbp
   1400022fb:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002300:	44 0f b6 6b 10       	movzbl 0x10(%rbx),%r13d
   140002305:	e8 3e 2a 00 00       	call   140004d48 <_Znwy>
   14000230a:	44 88 68 10          	mov    %r13b,0x10(%rax)
   14000230e:	48 89 c1             	mov    %rax,%rcx
   140002311:	48 89 ea             	mov    %rbp,%rdx
   140002314:	e8 87 2a 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002319:	48 8b 1b             	mov    (%rbx),%rbx
   14000231c:	48 83 47 10 01       	addq   $0x1,0x10(%rdi)
   140002321:	48 39 f3             	cmp    %rsi,%rbx
   140002324:	75 d2                	jne    1400022f8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x198>
   140002326:	48 8b 6c 24 50       	mov    0x50(%rsp),%rbp
   14000232b:	48 39 dd             	cmp    %rbx,%rbp
   14000232e:	74 16                	je     140002346 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1e6>
   140002330:	48 89 e9             	mov    %rbp,%rcx
   140002333:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140002337:	ba 18 00 00 00       	mov    $0x18,%edx
   14000233c:	e8 0f 2a 00 00       	call   140004d50 <_ZdlPvy>
   140002341:	48 39 f5             	cmp    %rsi,%rbp
   140002344:	75 ea                	jne    140002330 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1d0>
   140002346:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
   14000234b:	4c 39 e3             	cmp    %r12,%rbx
   14000234e:	74 15                	je     140002365 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   140002350:	48 89 d9             	mov    %rbx,%rcx
   140002353:	48 8b 1b             	mov    (%rbx),%rbx
   140002356:	ba 18 00 00 00       	mov    $0x18,%edx
   14000235b:	e8 f0 29 00 00       	call   140004d50 <_ZdlPvy>
   140002360:	4c 39 e3             	cmp    %r12,%rbx
   140002363:	75 eb                	jne    140002350 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1f0>
   140002365:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
   14000236a:	48 89 f8             	mov    %rdi,%rax
   14000236d:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
   140002374:	5b                   	pop    %rbx
   140002375:	5e                   	pop    %rsi
   140002376:	5f                   	pop    %rdi
   140002377:	5d                   	pop    %rbp
   140002378:	41 5c                	pop    %r12
   14000237a:	41 5d                	pop    %r13
   14000237c:	41 5e                	pop    %r14
   14000237e:	41 5f                	pop    %r15
   140002380:	c3                   	ret
   140002381:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002388:	31 d2                	xor    %edx,%edx
   14000238a:	48 8d 4c 24 50       	lea    0x50(%rsp),%rcx
   14000238f:	e8 ec f2 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140002394:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002399:	e8 aa 29 00 00       	call   140004d48 <_Znwy>
   14000239e:	48 89 ea             	mov    %rbp,%rdx
   1400023a1:	48 89 c1             	mov    %rax,%rcx
   1400023a4:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   1400023a9:	88 41 10             	mov    %al,0x10(%rcx)
   1400023ac:	e8 ef 29 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400023b1:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
   1400023b5:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   1400023ba:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400023be:	e9 eb fd ff ff       	jmp    1400021ae <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x4e>
   1400023c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400023c8:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   1400023cd:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   1400023d4:	00 
   1400023d5:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400023d9:	0f 11 07             	movups %xmm0,(%rdi)
   1400023dc:	eb 87                	jmp    140002365 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   1400023de:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   1400023e3:	48 89 c3             	mov    %rax,%rbx
   1400023e6:	48 39 f1             	cmp    %rsi,%rcx
   1400023e9:	74 32                	je     14000241d <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   1400023eb:	48 8b 39             	mov    (%rcx),%rdi
   1400023ee:	ba 18 00 00 00       	mov    $0x18,%edx
   1400023f3:	e8 58 29 00 00       	call   140004d50 <_ZdlPvy>
   1400023f8:	48 89 f9             	mov    %rdi,%rcx
   1400023fb:	eb e9                	jmp    1400023e6 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x286>
   1400023fd:	48 8b 0f             	mov    (%rdi),%rcx
   140002400:	48 89 c3             	mov    %rax,%rbx
   140002403:	48 39 cf             	cmp    %rcx,%rdi
   140002406:	74 31                	je     140002439 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2d9>
   140002408:	48 8b 29             	mov    (%rcx),%rbp
   14000240b:	ba 18 00 00 00       	mov    $0x18,%edx
   140002410:	e8 3b 29 00 00       	call   140004d50 <_ZdlPvy>
   140002415:	48 89 e9             	mov    %rbp,%rcx
   140002418:	eb e9                	jmp    140002403 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2a3>
   14000241a:	48 89 c3             	mov    %rax,%rbx
   14000241d:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140002422:	4c 39 e1             	cmp    %r12,%rcx
   140002425:	74 2e                	je     140002455 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2f5>
   140002427:	48 8b 31             	mov    (%rcx),%rsi
   14000242a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000242f:	e8 1c 29 00 00       	call   140004d50 <_ZdlPvy>
   140002434:	48 89 f1             	mov    %rsi,%rcx
   140002437:	eb e9                	jmp    140002422 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2c2>
   140002439:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   14000243e:	48 39 f1             	cmp    %rsi,%rcx
   140002441:	74 da                	je     14000241d <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   140002443:	48 8b 39             	mov    (%rcx),%rdi
   140002446:	ba 18 00 00 00       	mov    $0x18,%edx
   14000244b:	e8 00 29 00 00       	call   140004d50 <_ZdlPvy>
   140002450:	48 89 f9             	mov    %rdi,%rcx
   140002453:	eb e9                	jmp    14000243e <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2de>
   140002455:	48 89 d9             	mov    %rbx,%rcx
   140002458:	e8 33 3a 00 00       	call   140005e90 <_Unwind_Resume>
   14000245d:	90                   	nop
   14000245e:	66 90                	xchg   %ax,%ax

0000000140002460 <_ZN13NaturalBinary8optimizeEv>:
   140002460:	56                   	push   %rsi
   140002461:	53                   	push   %rbx
   140002462:	48 83 ec 28          	sub    $0x28,%rsp
   140002466:	31 d2                	xor    %edx,%edx
   140002468:	48 8b 41 10          	mov    0x10(%rcx),%rax
   14000246c:	48 89 ce             	mov    %rcx,%rsi
   14000246f:	48 83 f8 01          	cmp    $0x1,%rax
   140002473:	77 37                	ja     1400024ac <_ZN13NaturalBinary8optimizeEv+0x4c>
   140002475:	eb 3e                	jmp    1400024b5 <_ZN13NaturalBinary8optimizeEv+0x55>
   140002477:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000247e:	00 00 
   140002480:	48 83 e8 01          	sub    $0x1,%rax
   140002484:	48 89 d9             	mov    %rbx,%rcx
   140002487:	48 89 46 10          	mov    %rax,0x10(%rsi)
   14000248b:	e8 08 29 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002490:	ba 18 00 00 00       	mov    $0x18,%edx
   140002495:	48 89 d9             	mov    %rbx,%rcx
   140002498:	e8 b3 28 00 00       	call   140004d50 <_ZdlPvy>
   14000249d:	48 8b 46 10          	mov    0x10(%rsi),%rax
   1400024a1:	ba 01 00 00 00       	mov    $0x1,%edx
   1400024a6:	48 83 f8 01          	cmp    $0x1,%rax
   1400024aa:	76 09                	jbe    1400024b5 <_ZN13NaturalBinary8optimizeEv+0x55>
   1400024ac:	48 8b 1e             	mov    (%rsi),%rbx
   1400024af:	80 7b 10 00          	cmpb   $0x0,0x10(%rbx)
   1400024b3:	74 cb                	je     140002480 <_ZN13NaturalBinary8optimizeEv+0x20>
   1400024b5:	89 d0                	mov    %edx,%eax
   1400024b7:	48 83 c4 28          	add    $0x28,%rsp
   1400024bb:	5b                   	pop    %rbx
   1400024bc:	5e                   	pop    %rsi
   1400024bd:	c3                   	ret
   1400024be:	66 90                	xchg   %ax,%ax

00000001400024c0 <_ZN13NaturalBinaryltES_>:
   1400024c0:	57                   	push   %rdi
   1400024c1:	56                   	push   %rsi
   1400024c2:	53                   	push   %rbx
   1400024c3:	48 83 ec 20          	sub    $0x20,%rsp
   1400024c7:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400024cb:	48 89 cb             	mov    %rcx,%rbx
   1400024ce:	48 89 d6             	mov    %rdx,%rsi
   1400024d1:	48 83 f8 01          	cmp    $0x1,%rax
   1400024d5:	77 30                	ja     140002507 <_ZN13NaturalBinaryltES_+0x47>
   1400024d7:	eb 37                	jmp    140002510 <_ZN13NaturalBinaryltES_+0x50>
   1400024d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024e0:	48 83 e8 01          	sub    $0x1,%rax
   1400024e4:	48 89 f9             	mov    %rdi,%rcx
   1400024e7:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400024eb:	e8 a8 28 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400024f0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400024f5:	48 89 f9             	mov    %rdi,%rcx
   1400024f8:	e8 53 28 00 00       	call   140004d50 <_ZdlPvy>
   1400024fd:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140002501:	48 83 f8 01          	cmp    $0x1,%rax
   140002505:	76 09                	jbe    140002510 <_ZN13NaturalBinaryltES_+0x50>
   140002507:	48 8b 3b             	mov    (%rbx),%rdi
   14000250a:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   14000250e:	74 d0                	je     1400024e0 <_ZN13NaturalBinaryltES_+0x20>
   140002510:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002514:	48 83 fa 01          	cmp    $0x1,%rdx
   140002518:	77 2d                	ja     140002547 <_ZN13NaturalBinaryltES_+0x87>
   14000251a:	eb 38                	jmp    140002554 <_ZN13NaturalBinaryltES_+0x94>
   14000251c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002520:	48 83 ea 01          	sub    $0x1,%rdx
   140002524:	48 89 f9             	mov    %rdi,%rcx
   140002527:	48 89 56 10          	mov    %rdx,0x10(%rsi)
   14000252b:	e8 68 28 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002530:	ba 18 00 00 00       	mov    $0x18,%edx
   140002535:	48 89 f9             	mov    %rdi,%rcx
   140002538:	e8 13 28 00 00       	call   140004d50 <_ZdlPvy>
   14000253d:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002541:	48 83 fa 01          	cmp    $0x1,%rdx
   140002545:	76 09                	jbe    140002550 <_ZN13NaturalBinaryltES_+0x90>
   140002547:	48 8b 3e             	mov    (%rsi),%rdi
   14000254a:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   14000254e:	74 d0                	je     140002520 <_ZN13NaturalBinaryltES_+0x60>
   140002550:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140002554:	48 39 d0             	cmp    %rdx,%rax
   140002557:	74 0f                	je     140002568 <_ZN13NaturalBinaryltES_+0xa8>
   140002559:	0f 92 c0             	setb   %al
   14000255c:	48 83 c4 20          	add    $0x20,%rsp
   140002560:	5b                   	pop    %rbx
   140002561:	5e                   	pop    %rsi
   140002562:	5f                   	pop    %rdi
   140002563:	c3                   	ret
   140002564:	0f 1f 40 00          	nopl   0x0(%rax)
   140002568:	48 8b 0b             	mov    (%rbx),%rcx
   14000256b:	eb 1b                	jmp    140002588 <_ZN13NaturalBinaryltES_+0xc8>
   14000256d:	0f 1f 00             	nopl   (%rax)
   140002570:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140002574:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   140002578:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   14000257c:	0f b6 56 10          	movzbl 0x10(%rsi),%edx
   140002580:	38 d0                	cmp    %dl,%al
   140002582:	72 1c                	jb     1400025a0 <_ZN13NaturalBinaryltES_+0xe0>
   140002584:	38 c2                	cmp    %al,%dl
   140002586:	72 05                	jb     14000258d <_ZN13NaturalBinaryltES_+0xcd>
   140002588:	48 39 cb             	cmp    %rcx,%rbx
   14000258b:	75 e3                	jne    140002570 <_ZN13NaturalBinaryltES_+0xb0>
   14000258d:	31 c0                	xor    %eax,%eax
   14000258f:	48 83 c4 20          	add    $0x20,%rsp
   140002593:	5b                   	pop    %rbx
   140002594:	5e                   	pop    %rsi
   140002595:	5f                   	pop    %rdi
   140002596:	c3                   	ret
   140002597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000259e:	00 00 
   1400025a0:	b8 01 00 00 00       	mov    $0x1,%eax
   1400025a5:	48 83 c4 20          	add    $0x20,%rsp
   1400025a9:	5b                   	pop    %rbx
   1400025aa:	5e                   	pop    %rsi
   1400025ab:	5f                   	pop    %rdi
   1400025ac:	c3                   	ret
   1400025ad:	90                   	nop
   1400025ae:	66 90                	xchg   %ax,%ax

00000001400025b0 <_ZN13NaturalBinarygtES_>:
   1400025b0:	57                   	push   %rdi
   1400025b1:	56                   	push   %rsi
   1400025b2:	53                   	push   %rbx
   1400025b3:	48 83 ec 20          	sub    $0x20,%rsp
   1400025b7:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400025bb:	48 89 cb             	mov    %rcx,%rbx
   1400025be:	48 89 d6             	mov    %rdx,%rsi
   1400025c1:	48 83 f8 01          	cmp    $0x1,%rax
   1400025c5:	77 30                	ja     1400025f7 <_ZN13NaturalBinarygtES_+0x47>
   1400025c7:	eb 37                	jmp    140002600 <_ZN13NaturalBinarygtES_+0x50>
   1400025c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400025d0:	48 83 e8 01          	sub    $0x1,%rax
   1400025d4:	48 89 f9             	mov    %rdi,%rcx
   1400025d7:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400025db:	e8 b8 27 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400025e0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400025e5:	48 89 f9             	mov    %rdi,%rcx
   1400025e8:	e8 63 27 00 00       	call   140004d50 <_ZdlPvy>
   1400025ed:	48 8b 43 10          	mov    0x10(%rbx),%rax
   1400025f1:	48 83 f8 01          	cmp    $0x1,%rax
   1400025f5:	76 09                	jbe    140002600 <_ZN13NaturalBinarygtES_+0x50>
   1400025f7:	48 8b 3b             	mov    (%rbx),%rdi
   1400025fa:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   1400025fe:	74 d0                	je     1400025d0 <_ZN13NaturalBinarygtES_+0x20>
   140002600:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002604:	48 83 fa 01          	cmp    $0x1,%rdx
   140002608:	77 2d                	ja     140002637 <_ZN13NaturalBinarygtES_+0x87>
   14000260a:	eb 38                	jmp    140002644 <_ZN13NaturalBinarygtES_+0x94>
   14000260c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002610:	48 83 ea 01          	sub    $0x1,%rdx
   140002614:	48 89 f9             	mov    %rdi,%rcx
   140002617:	48 89 56 10          	mov    %rdx,0x10(%rsi)
   14000261b:	e8 78 27 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002620:	ba 18 00 00 00       	mov    $0x18,%edx
   140002625:	48 89 f9             	mov    %rdi,%rcx
   140002628:	e8 23 27 00 00       	call   140004d50 <_ZdlPvy>
   14000262d:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002631:	48 83 fa 01          	cmp    $0x1,%rdx
   140002635:	76 09                	jbe    140002640 <_ZN13NaturalBinarygtES_+0x90>
   140002637:	48 8b 3e             	mov    (%rsi),%rdi
   14000263a:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   14000263e:	74 d0                	je     140002610 <_ZN13NaturalBinarygtES_+0x60>
   140002640:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140002644:	48 39 d0             	cmp    %rdx,%rax
   140002647:	74 17                	je     140002660 <_ZN13NaturalBinarygtES_+0xb0>
   140002649:	48 39 c2             	cmp    %rax,%rdx
   14000264c:	0f 92 c0             	setb   %al
   14000264f:	48 83 c4 20          	add    $0x20,%rsp
   140002653:	5b                   	pop    %rbx
   140002654:	5e                   	pop    %rsi
   140002655:	5f                   	pop    %rdi
   140002656:	c3                   	ret
   140002657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000265e:	00 00 
   140002660:	48 8b 0b             	mov    (%rbx),%rcx
   140002663:	eb 1b                	jmp    140002680 <_ZN13NaturalBinarygtES_+0xd0>
   140002665:	0f 1f 00             	nopl   (%rax)
   140002668:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   14000266c:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   140002670:	0f b6 53 10          	movzbl 0x10(%rbx),%edx
   140002674:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140002678:	38 d0                	cmp    %dl,%al
   14000267a:	72 14                	jb     140002690 <_ZN13NaturalBinarygtES_+0xe0>
   14000267c:	38 c2                	cmp    %al,%dl
   14000267e:	72 05                	jb     140002685 <_ZN13NaturalBinarygtES_+0xd5>
   140002680:	48 39 cb             	cmp    %rcx,%rbx
   140002683:	75 e3                	jne    140002668 <_ZN13NaturalBinarygtES_+0xb8>
   140002685:	31 c0                	xor    %eax,%eax
   140002687:	48 83 c4 20          	add    $0x20,%rsp
   14000268b:	5b                   	pop    %rbx
   14000268c:	5e                   	pop    %rsi
   14000268d:	5f                   	pop    %rdi
   14000268e:	c3                   	ret
   14000268f:	90                   	nop
   140002690:	b8 01 00 00 00       	mov    $0x1,%eax
   140002695:	48 83 c4 20          	add    $0x20,%rsp
   140002699:	5b                   	pop    %rbx
   14000269a:	5e                   	pop    %rsi
   14000269b:	5f                   	pop    %rdi
   14000269c:	c3                   	ret
   14000269d:	90                   	nop
   14000269e:	66 90                	xchg   %ax,%ax

00000001400026a0 <_ZN13NaturalBinaryeqES_>:
   1400026a0:	57                   	push   %rdi
   1400026a1:	56                   	push   %rsi
   1400026a2:	53                   	push   %rbx
   1400026a3:	48 83 ec 20          	sub    $0x20,%rsp
   1400026a7:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400026ab:	48 89 cb             	mov    %rcx,%rbx
   1400026ae:	48 89 d6             	mov    %rdx,%rsi
   1400026b1:	48 83 f8 01          	cmp    $0x1,%rax
   1400026b5:	77 30                	ja     1400026e7 <_ZN13NaturalBinaryeqES_+0x47>
   1400026b7:	eb 6d                	jmp    140002726 <_ZN13NaturalBinaryeqES_+0x86>
   1400026b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400026c0:	48 83 e8 01          	sub    $0x1,%rax
   1400026c4:	48 89 f9             	mov    %rdi,%rcx
   1400026c7:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400026cb:	e8 c8 26 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400026d0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400026d5:	48 89 f9             	mov    %rdi,%rcx
   1400026d8:	e8 73 26 00 00       	call   140004d50 <_ZdlPvy>
   1400026dd:	48 8b 43 10          	mov    0x10(%rbx),%rax
   1400026e1:	48 83 f8 01          	cmp    $0x1,%rax
   1400026e5:	76 3f                	jbe    140002726 <_ZN13NaturalBinaryeqES_+0x86>
   1400026e7:	48 8b 3b             	mov    (%rbx),%rdi
   1400026ea:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   1400026ee:	74 d0                	je     1400026c0 <_ZN13NaturalBinaryeqES_+0x20>
   1400026f0:	48 8b 46 10          	mov    0x10(%rsi),%rax
   1400026f4:	48 83 f8 01          	cmp    $0x1,%rax
   1400026f8:	76 36                	jbe    140002730 <_ZN13NaturalBinaryeqES_+0x90>
   1400026fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002700:	48 8b 3e             	mov    (%rsi),%rdi
   140002703:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   140002707:	75 27                	jne    140002730 <_ZN13NaturalBinaryeqES_+0x90>
   140002709:	48 83 e8 01          	sub    $0x1,%rax
   14000270d:	48 89 f9             	mov    %rdi,%rcx
   140002710:	48 89 46 10          	mov    %rax,0x10(%rsi)
   140002714:	e8 7f 26 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002719:	ba 18 00 00 00       	mov    $0x18,%edx
   14000271e:	48 89 f9             	mov    %rdi,%rcx
   140002721:	e8 2a 26 00 00       	call   140004d50 <_ZdlPvy>
   140002726:	48 8b 46 10          	mov    0x10(%rsi),%rax
   14000272a:	48 83 f8 01          	cmp    $0x1,%rax
   14000272e:	77 d0                	ja     140002700 <_ZN13NaturalBinaryeqES_+0x60>
   140002730:	31 d2                	xor    %edx,%edx
   140002732:	48 39 43 10          	cmp    %rax,0x10(%rbx)
   140002736:	75 23                	jne    14000275b <_ZN13NaturalBinaryeqES_+0xbb>
   140002738:	48 8b 03             	mov    (%rbx),%rax
   14000273b:	eb 14                	jmp    140002751 <_ZN13NaturalBinaryeqES_+0xb1>
   14000273d:	0f 1f 00             	nopl   (%rax)
   140002740:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   140002744:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140002748:	0f b6 56 10          	movzbl 0x10(%rsi),%edx
   14000274c:	38 53 10             	cmp    %dl,0x10(%rbx)
   14000274f:	75 17                	jne    140002768 <_ZN13NaturalBinaryeqES_+0xc8>
   140002751:	48 39 c3             	cmp    %rax,%rbx
   140002754:	75 ea                	jne    140002740 <_ZN13NaturalBinaryeqES_+0xa0>
   140002756:	ba 01 00 00 00       	mov    $0x1,%edx
   14000275b:	89 d0                	mov    %edx,%eax
   14000275d:	48 83 c4 20          	add    $0x20,%rsp
   140002761:	5b                   	pop    %rbx
   140002762:	5e                   	pop    %rsi
   140002763:	5f                   	pop    %rdi
   140002764:	c3                   	ret
   140002765:	0f 1f 00             	nopl   (%rax)
   140002768:	31 d2                	xor    %edx,%edx
   14000276a:	89 d0                	mov    %edx,%eax
   14000276c:	48 83 c4 20          	add    $0x20,%rsp
   140002770:	5b                   	pop    %rbx
   140002771:	5e                   	pop    %rsi
   140002772:	5f                   	pop    %rdi
   140002773:	c3                   	ret
   140002774:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000277b:	00 00 00 00 
   14000277f:	90                   	nop

0000000140002780 <_ZN13NaturalBinaryleES_>:
   140002780:	41 55                	push   %r13
   140002782:	41 54                	push   %r12
   140002784:	55                   	push   %rbp
   140002785:	57                   	push   %rdi
   140002786:	56                   	push   %rsi
   140002787:	53                   	push   %rbx
   140002788:	48 83 ec 68          	sub    $0x68,%rsp
   14000278c:	48 8b 1a             	mov    (%rdx),%rbx
   14000278f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140002794:	48 89 cd             	mov    %rcx,%rbp
   140002797:	48 89 d7             	mov    %rdx,%rdi
   14000279a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400027a1:	00 00 
   1400027a3:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400027a8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400027ac:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400027b1:	48 39 da             	cmp    %rbx,%rdx
   1400027b4:	74 34                	je     1400027ea <_ZN13NaturalBinaryleES_+0x6a>
   1400027b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400027bd:	00 00 00 
   1400027c0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400027c5:	e8 7e 25 00 00       	call   140004d48 <_Znwy>
   1400027ca:	48 89 c1             	mov    %rax,%rcx
   1400027cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400027d1:	48 89 f2             	mov    %rsi,%rdx
   1400027d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400027d7:	e8 c4 25 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400027dc:	48 8b 1b             	mov    (%rbx),%rbx
   1400027df:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400027e5:	48 39 df             	cmp    %rbx,%rdi
   1400027e8:	75 d6                	jne    1400027c0 <_ZN13NaturalBinaryleES_+0x40>
   1400027ea:	48 89 f2             	mov    %rsi,%rdx
   1400027ed:	48 89 e9             	mov    %rbp,%rcx
   1400027f0:	e8 ab fe ff ff       	call   1400026a0 <_ZN13NaturalBinaryeqES_>
   1400027f5:	41 89 c5             	mov    %eax,%r13d
   1400027f8:	84 c0                	test   %al,%al
   1400027fa:	74 3c                	je     140002838 <_ZN13NaturalBinaryleES_+0xb8>
   1400027fc:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140002801:	48 39 f3             	cmp    %rsi,%rbx
   140002804:	74 1f                	je     140002825 <_ZN13NaturalBinaryleES_+0xa5>
   140002806:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000280d:	00 00 00 
   140002810:	48 89 d9             	mov    %rbx,%rcx
   140002813:	48 8b 1b             	mov    (%rbx),%rbx
   140002816:	ba 18 00 00 00       	mov    $0x18,%edx
   14000281b:	e8 30 25 00 00       	call   140004d50 <_ZdlPvy>
   140002820:	48 39 f3             	cmp    %rsi,%rbx
   140002823:	75 eb                	jne    140002810 <_ZN13NaturalBinaryleES_+0x90>
   140002825:	44 89 e8             	mov    %r13d,%eax
   140002828:	48 83 c4 68          	add    $0x68,%rsp
   14000282c:	5b                   	pop    %rbx
   14000282d:	5e                   	pop    %rsi
   14000282e:	5f                   	pop    %rdi
   14000282f:	5d                   	pop    %rbp
   140002830:	41 5c                	pop    %r12
   140002832:	41 5d                	pop    %r13
   140002834:	c3                   	ret
   140002835:	0f 1f 00             	nopl   (%rax)
   140002838:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   14000283d:	48 8b 1f             	mov    (%rdi),%rbx
   140002840:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140002847:	00 00 
   140002849:	66 49 0f 6e c4       	movq   %r12,%xmm0
   14000284e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002852:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140002857:	48 39 df             	cmp    %rbx,%rdi
   14000285a:	74 2e                	je     14000288a <_ZN13NaturalBinaryleES_+0x10a>
   14000285c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002860:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002865:	e8 de 24 00 00       	call   140004d48 <_Znwy>
   14000286a:	48 89 c1             	mov    %rax,%rcx
   14000286d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002871:	4c 89 e2             	mov    %r12,%rdx
   140002874:	88 41 10             	mov    %al,0x10(%rcx)
   140002877:	e8 24 25 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000287c:	48 8b 1b             	mov    (%rbx),%rbx
   14000287f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140002885:	48 39 df             	cmp    %rbx,%rdi
   140002888:	75 d6                	jne    140002860 <_ZN13NaturalBinaryleES_+0xe0>
   14000288a:	4c 89 e2             	mov    %r12,%rdx
   14000288d:	48 89 e9             	mov    %rbp,%rcx
   140002890:	e8 2b fc ff ff       	call   1400024c0 <_ZN13NaturalBinaryltES_>
   140002895:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   14000289a:	41 89 c5             	mov    %eax,%r13d
   14000289d:	4c 39 e3             	cmp    %r12,%rbx
   1400028a0:	0f 84 56 ff ff ff    	je     1400027fc <_ZN13NaturalBinaryleES_+0x7c>
   1400028a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400028ad:	00 00 00 
   1400028b0:	48 89 d9             	mov    %rbx,%rcx
   1400028b3:	48 8b 1b             	mov    (%rbx),%rbx
   1400028b6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400028bb:	e8 90 24 00 00       	call   140004d50 <_ZdlPvy>
   1400028c0:	4c 39 e3             	cmp    %r12,%rbx
   1400028c3:	75 eb                	jne    1400028b0 <_ZN13NaturalBinaryleES_+0x130>
   1400028c5:	e9 32 ff ff ff       	jmp    1400027fc <_ZN13NaturalBinaryleES_+0x7c>
   1400028ca:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400028cf:	48 89 c3             	mov    %rax,%rbx
   1400028d2:	4c 39 e1             	cmp    %r12,%rcx
   1400028d5:	74 31                	je     140002908 <_ZN13NaturalBinaryleES_+0x188>
   1400028d7:	48 8b 39             	mov    (%rcx),%rdi
   1400028da:	ba 18 00 00 00       	mov    $0x18,%edx
   1400028df:	e8 6c 24 00 00       	call   140004d50 <_ZdlPvy>
   1400028e4:	48 89 f9             	mov    %rdi,%rcx
   1400028e7:	eb e9                	jmp    1400028d2 <_ZN13NaturalBinaryleES_+0x152>
   1400028e9:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400028ee:	48 89 c3             	mov    %rax,%rbx
   1400028f1:	48 39 f1             	cmp    %rsi,%rcx
   1400028f4:	74 2e                	je     140002924 <_ZN13NaturalBinaryleES_+0x1a4>
   1400028f6:	48 8b 39             	mov    (%rcx),%rdi
   1400028f9:	ba 18 00 00 00       	mov    $0x18,%edx
   1400028fe:	e8 4d 24 00 00       	call   140004d50 <_ZdlPvy>
   140002903:	48 89 f9             	mov    %rdi,%rcx
   140002906:	eb e9                	jmp    1400028f1 <_ZN13NaturalBinaryleES_+0x171>
   140002908:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000290d:	48 39 f1             	cmp    %rsi,%rcx
   140002910:	74 12                	je     140002924 <_ZN13NaturalBinaryleES_+0x1a4>
   140002912:	48 8b 39             	mov    (%rcx),%rdi
   140002915:	ba 18 00 00 00       	mov    $0x18,%edx
   14000291a:	e8 31 24 00 00       	call   140004d50 <_ZdlPvy>
   14000291f:	48 89 f9             	mov    %rdi,%rcx
   140002922:	eb e9                	jmp    14000290d <_ZN13NaturalBinaryleES_+0x18d>
   140002924:	48 89 d9             	mov    %rbx,%rcx
   140002927:	e8 64 35 00 00       	call   140005e90 <_Unwind_Resume>
   14000292c:	90                   	nop
   14000292d:	90                   	nop
   14000292e:	66 90                	xchg   %ax,%ax

0000000140002930 <_ZN13NaturalBinarygeES_>:
   140002930:	41 55                	push   %r13
   140002932:	41 54                	push   %r12
   140002934:	55                   	push   %rbp
   140002935:	57                   	push   %rdi
   140002936:	56                   	push   %rsi
   140002937:	53                   	push   %rbx
   140002938:	48 83 ec 68          	sub    $0x68,%rsp
   14000293c:	48 8b 1a             	mov    (%rdx),%rbx
   14000293f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140002944:	48 89 cd             	mov    %rcx,%rbp
   140002947:	48 89 d7             	mov    %rdx,%rdi
   14000294a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140002951:	00 00 
   140002953:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140002958:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000295c:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140002961:	48 39 da             	cmp    %rbx,%rdx
   140002964:	74 34                	je     14000299a <_ZN13NaturalBinarygeES_+0x6a>
   140002966:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000296d:	00 00 00 
   140002970:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002975:	e8 ce 23 00 00       	call   140004d48 <_Znwy>
   14000297a:	48 89 c1             	mov    %rax,%rcx
   14000297d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002981:	48 89 f2             	mov    %rsi,%rdx
   140002984:	88 41 10             	mov    %al,0x10(%rcx)
   140002987:	e8 14 24 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000298c:	48 8b 1b             	mov    (%rbx),%rbx
   14000298f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140002995:	48 39 df             	cmp    %rbx,%rdi
   140002998:	75 d6                	jne    140002970 <_ZN13NaturalBinarygeES_+0x40>
   14000299a:	48 89 f2             	mov    %rsi,%rdx
   14000299d:	48 89 e9             	mov    %rbp,%rcx
   1400029a0:	e8 fb fc ff ff       	call   1400026a0 <_ZN13NaturalBinaryeqES_>
   1400029a5:	41 89 c5             	mov    %eax,%r13d
   1400029a8:	84 c0                	test   %al,%al
   1400029aa:	74 3c                	je     1400029e8 <_ZN13NaturalBinarygeES_+0xb8>
   1400029ac:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400029b1:	48 39 f3             	cmp    %rsi,%rbx
   1400029b4:	74 1f                	je     1400029d5 <_ZN13NaturalBinarygeES_+0xa5>
   1400029b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400029bd:	00 00 00 
   1400029c0:	48 89 d9             	mov    %rbx,%rcx
   1400029c3:	48 8b 1b             	mov    (%rbx),%rbx
   1400029c6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400029cb:	e8 80 23 00 00       	call   140004d50 <_ZdlPvy>
   1400029d0:	48 39 f3             	cmp    %rsi,%rbx
   1400029d3:	75 eb                	jne    1400029c0 <_ZN13NaturalBinarygeES_+0x90>
   1400029d5:	44 89 e8             	mov    %r13d,%eax
   1400029d8:	48 83 c4 68          	add    $0x68,%rsp
   1400029dc:	5b                   	pop    %rbx
   1400029dd:	5e                   	pop    %rsi
   1400029de:	5f                   	pop    %rdi
   1400029df:	5d                   	pop    %rbp
   1400029e0:	41 5c                	pop    %r12
   1400029e2:	41 5d                	pop    %r13
   1400029e4:	c3                   	ret
   1400029e5:	0f 1f 00             	nopl   (%rax)
   1400029e8:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   1400029ed:	48 8b 1f             	mov    (%rdi),%rbx
   1400029f0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400029f7:	00 00 
   1400029f9:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400029fe:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002a02:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140002a07:	48 39 df             	cmp    %rbx,%rdi
   140002a0a:	74 2e                	je     140002a3a <_ZN13NaturalBinarygeES_+0x10a>
   140002a0c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002a10:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002a15:	e8 2e 23 00 00       	call   140004d48 <_Znwy>
   140002a1a:	48 89 c1             	mov    %rax,%rcx
   140002a1d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002a21:	4c 89 e2             	mov    %r12,%rdx
   140002a24:	88 41 10             	mov    %al,0x10(%rcx)
   140002a27:	e8 74 23 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002a2c:	48 8b 1b             	mov    (%rbx),%rbx
   140002a2f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140002a35:	48 39 df             	cmp    %rbx,%rdi
   140002a38:	75 d6                	jne    140002a10 <_ZN13NaturalBinarygeES_+0xe0>
   140002a3a:	4c 89 e2             	mov    %r12,%rdx
   140002a3d:	48 89 e9             	mov    %rbp,%rcx
   140002a40:	e8 6b fb ff ff       	call   1400025b0 <_ZN13NaturalBinarygtES_>
   140002a45:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140002a4a:	41 89 c5             	mov    %eax,%r13d
   140002a4d:	4c 39 e3             	cmp    %r12,%rbx
   140002a50:	0f 84 56 ff ff ff    	je     1400029ac <_ZN13NaturalBinarygeES_+0x7c>
   140002a56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002a5d:	00 00 00 
   140002a60:	48 89 d9             	mov    %rbx,%rcx
   140002a63:	48 8b 1b             	mov    (%rbx),%rbx
   140002a66:	ba 18 00 00 00       	mov    $0x18,%edx
   140002a6b:	e8 e0 22 00 00       	call   140004d50 <_ZdlPvy>
   140002a70:	4c 39 e3             	cmp    %r12,%rbx
   140002a73:	75 eb                	jne    140002a60 <_ZN13NaturalBinarygeES_+0x130>
   140002a75:	e9 32 ff ff ff       	jmp    1400029ac <_ZN13NaturalBinarygeES_+0x7c>
   140002a7a:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140002a7f:	48 89 c3             	mov    %rax,%rbx
   140002a82:	4c 39 e1             	cmp    %r12,%rcx
   140002a85:	74 31                	je     140002ab8 <_ZN13NaturalBinarygeES_+0x188>
   140002a87:	48 8b 39             	mov    (%rcx),%rdi
   140002a8a:	ba 18 00 00 00       	mov    $0x18,%edx
   140002a8f:	e8 bc 22 00 00       	call   140004d50 <_ZdlPvy>
   140002a94:	48 89 f9             	mov    %rdi,%rcx
   140002a97:	eb e9                	jmp    140002a82 <_ZN13NaturalBinarygeES_+0x152>
   140002a99:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002a9e:	48 89 c3             	mov    %rax,%rbx
   140002aa1:	48 39 f1             	cmp    %rsi,%rcx
   140002aa4:	74 2e                	je     140002ad4 <_ZN13NaturalBinarygeES_+0x1a4>
   140002aa6:	48 8b 39             	mov    (%rcx),%rdi
   140002aa9:	ba 18 00 00 00       	mov    $0x18,%edx
   140002aae:	e8 9d 22 00 00       	call   140004d50 <_ZdlPvy>
   140002ab3:	48 89 f9             	mov    %rdi,%rcx
   140002ab6:	eb e9                	jmp    140002aa1 <_ZN13NaturalBinarygeES_+0x171>
   140002ab8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002abd:	48 39 f1             	cmp    %rsi,%rcx
   140002ac0:	74 12                	je     140002ad4 <_ZN13NaturalBinarygeES_+0x1a4>
   140002ac2:	48 8b 39             	mov    (%rcx),%rdi
   140002ac5:	ba 18 00 00 00       	mov    $0x18,%edx
   140002aca:	e8 81 22 00 00       	call   140004d50 <_ZdlPvy>
   140002acf:	48 89 f9             	mov    %rdi,%rcx
   140002ad2:	eb e9                	jmp    140002abd <_ZN13NaturalBinarygeES_+0x18d>
   140002ad4:	48 89 d9             	mov    %rbx,%rcx
   140002ad7:	e8 b4 33 00 00       	call   140005e90 <_Unwind_Resume>
   140002adc:	90                   	nop
   140002add:	90                   	nop
   140002ade:	66 90                	xchg   %ax,%ax

0000000140002ae0 <_ZN13NaturalBinary8toStringB5cxx11Ev>:
   140002ae0:	41 57                	push   %r15
   140002ae2:	41 56                	push   %r14
   140002ae4:	41 55                	push   %r13
   140002ae6:	41 54                	push   %r12
   140002ae8:	55                   	push   %rbp
   140002ae9:	57                   	push   %rdi
   140002aea:	56                   	push   %rsi
   140002aeb:	53                   	push   %rbx
   140002aec:	48 81 ec 78 02 00 00 	sub    $0x278,%rsp
   140002af3:	0f 11 b4 24 50 02 00 	movups %xmm6,0x250(%rsp)
   140002afa:	00 
   140002afb:	0f 11 bc 24 60 02 00 	movups %xmm7,0x260(%rsp)
   140002b02:	00 
   140002b03:	48 8b 05 26 59 00 00 	mov    0x5926(%rip),%rax        # 140008430 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002b0a:	48 8b 1d 0f 59 00 00 	mov    0x590f(%rip),%rbx        # 140008420 <__fu8__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE>
   140002b11:	48 83 c0 40          	add    $0x40,%rax
   140002b15:	66 48 0f 6e f0       	movq   %rax,%xmm6
   140002b1a:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140002b1e:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140002b23:	48 8b 05 16 59 00 00 	mov    0x5916(%rip),%rax        # 140008440 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140002b2a:	66 0f 6f fe          	movdqa %xmm6,%xmm7
   140002b2e:	66 0f 6c f9          	punpcklqdq %xmm1,%xmm7
   140002b32:	48 83 c0 10          	add    $0x10,%rax
   140002b36:	c6 41 10 00          	movb   $0x0,0x10(%rcx)
   140002b3a:	48 89 cf             	mov    %rcx,%rdi
   140002b3d:	49 89 d5             	mov    %rdx,%r13
   140002b40:	66 48 0f 6e d0       	movq   %rax,%xmm2
   140002b45:	48 8d 41 10          	lea    0x10(%rcx),%rax
   140002b49:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   140002b50:	00 
   140002b51:	4c 8d bc 24 40 01 00 	lea    0x140(%rsp),%r15
   140002b58:	00 
   140002b59:	48 89 01             	mov    %rax,(%rcx)
   140002b5c:	4c 89 f9             	mov    %r15,%rcx
   140002b5f:	66 0f 6c f2          	punpcklqdq %xmm2,%xmm6
   140002b63:	4c 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%r14
   140002b6a:	00 
   140002b6b:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
   140002b72:	00 
   140002b73:	4c 89 b4 24 98 00 00 	mov    %r14,0x98(%rsp)
   140002b7a:	00 
   140002b7b:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
   140002b82:	00 
   140002b83:	e8 f8 21 00 00       	call   140004d80 <_ZNSt8ios_baseC2Ev>
   140002b88:	48 8b 35 81 58 00 00 	mov    0x5881(%rip),%rsi        # 140008410 <__fu5__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002b8f:	31 d2                	xor    %edx,%edx
   140002b91:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002b95:	48 8b 05 b4 58 00 00 	mov    0x58b4(%rip),%rax        # 140008450 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   140002b9c:	66 89 94 24 20 02 00 	mov    %dx,0x220(%rsp)
   140002ba3:	00 
   140002ba4:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002ba8:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
   140002bac:	0f 11 84 24 28 02 00 	movups %xmm0,0x228(%rsp)
   140002bb3:	00 
   140002bb4:	48 83 c0 10          	add    $0x10,%rax
   140002bb8:	0f 11 84 24 38 02 00 	movups %xmm0,0x238(%rsp)
   140002bbf:	00 
   140002bc0:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140002bc7:	00 
   140002bc8:	48 8b 42 e8          	mov    -0x18(%rdx),%rax
   140002bcc:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
   140002bd3:	00 
   140002bd4:	48 c7 84 24 18 02 00 	movq   $0x0,0x218(%rsp)
   140002bdb:	00 00 00 00 00 
   140002be0:	48 89 8c 04 c0 00 00 	mov    %rcx,0xc0(%rsp,%rax,1)
   140002be7:	00 
   140002be8:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   140002bef:	00 00 00 00 00 
   140002bf4:	4c 03 72 e8          	add    -0x18(%rdx),%r14
   140002bf8:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
   140002bfd:	31 d2                	xor    %edx,%edx
   140002bff:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
   140002c04:	4c 89 f1             	mov    %r14,%rcx
   140002c07:	e8 64 21 00 00       	call   140004d70 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002c0c:	48 8b 46 20          	mov    0x20(%rsi),%rax
   140002c10:	48 8d ac 24 d0 00 00 	lea    0xd0(%rsp),%rbp
   140002c17:	00 
   140002c18:	31 d2                	xor    %edx,%edx
   140002c1a:	48 8b 48 e8          	mov    -0x18(%rax),%rcx
   140002c1e:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   140002c25:	00 
   140002c26:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   140002c2b:	48 8b 46 28          	mov    0x28(%rsi),%rax
   140002c2f:	48 01 e9             	add    %rbp,%rcx
   140002c32:	48 89 01             	mov    %rax,(%rcx)
   140002c35:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   140002c3a:	e8 31 21 00 00       	call   140004d70 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002c3f:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140002c43:	48 8b 76 30          	mov    0x30(%rsi),%rsi
   140002c47:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002c4b:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140002c50:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140002c54:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
   140002c59:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140002c60:	00 
   140002c61:	48 8b 05 c8 57 00 00 	mov    0x57c8(%rip),%rax        # 140008430 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002c68:	0f 11 b4 24 d0 00 00 	movups %xmm6,0xd0(%rsp)
   140002c6f:	00 
   140002c70:	48 83 c0 18          	add    $0x18,%rax
   140002c74:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   140002c7b:	00 
   140002c7c:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140002c83:	00 
   140002c84:	48 8b 05 a5 57 00 00 	mov    0x57a5(%rip),%rax        # 140008430 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002c8b:	0f 11 84 24 f0 00 00 	movups %xmm0,0xf0(%rsp)
   140002c92:	00 
   140002c93:	48 83 c0 68          	add    $0x68,%rax
   140002c97:	0f 11 84 24 00 01 00 	movups %xmm0,0x100(%rsp)
   140002c9e:	00 
   140002c9f:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140002ca6:	00 
   140002ca7:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
   140002cae:	00 
   140002caf:	48 89 c1             	mov    %rax,%rcx
   140002cb2:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
   140002cb7:	e8 2c 21 00 00       	call   140004de8 <_ZNSt6localeC1Ev>
   140002cbc:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140002cc0:	4c 89 f9             	mov    %r15,%rcx
   140002cc3:	c7 84 24 18 01 00 00 	movl   $0x18,0x118(%rsp)
   140002cca:	18 00 00 00 
   140002cce:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140002cd5:	00 
   140002cd6:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
   140002cdd:	00 
   140002cde:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   140002ce5:	00 
   140002ce6:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
   140002ced:	00 
   140002cee:	48 8d 84 24 d8 00 00 	lea    0xd8(%rsp),%rax
   140002cf5:	00 
   140002cf6:	48 89 c2             	mov    %rax,%rdx
   140002cf9:	c6 84 24 30 01 00 00 	movb   $0x0,0x130(%rsp)
   140002d00:	00 
   140002d01:	48 c7 84 24 28 01 00 	movq   $0x0,0x128(%rsp)
   140002d08:	00 00 00 00 00 
   140002d0d:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002d12:	e8 59 20 00 00       	call   140004d70 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002d17:	48 8d 05 22 33 00 00 	lea    0x3322(%rip),%rax        # 140006040 <_ZNKSt5ctypeIcE8do_widenEc>
   140002d1e:	4c 89 ee             	mov    %r13,%rsi
   140002d21:	4c 8d a4 24 a0 00 00 	lea    0xa0(%rsp),%r12
   140002d28:	00 
   140002d29:	49 be ff ff ff ff ff 	movabs $0x3fffffffffffffff,%r14
   140002d30:	ff ff 3f 
   140002d33:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
   140002d38:	4d 3b 6d 00          	cmp    0x0(%r13),%r13
   140002d3c:	0f 84 ce 04 00 00    	je     140003210 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x730>
   140002d42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002d48:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   140002d4f:	00 
   140002d50:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   140002d54:	48 c7 84 14 e0 00 00 	movq   $0x2,0xe0(%rsp,%rdx,1)
   140002d5b:	00 02 00 00 00 
   140002d60:	48 8b 58 e8          	mov    -0x18(%rax),%rbx
   140002d64:	48 01 eb             	add    %rbp,%rbx
   140002d67:	80 bb e1 00 00 00 00 	cmpb   $0x0,0xe1(%rbx)
   140002d6e:	48 89 da             	mov    %rbx,%rdx
   140002d71:	0f 84 b9 03 00 00    	je     140003130 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x650>
   140002d77:	c6 83 e0 00 00 00 30 	movb   $0x30,0xe0(%rbx)
   140002d7e:	8b 42 18             	mov    0x18(%rdx),%eax
   140002d81:	48 89 e9             	mov    %rbp,%rcx
   140002d84:	83 e0 b5             	and    $0xffffffb5,%eax
   140002d87:	83 c8 08             	or     $0x8,%eax
   140002d8a:	89 42 18             	mov    %eax,0x18(%rdx)
   140002d8d:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140002d91:	0f b6 50 10          	movzbl 0x10(%rax),%edx
   140002d95:	e8 76 20 00 00       	call   140004e10 <_ZNSolsEi>
   140002d9a:	48 8b 94 24 00 01 00 	mov    0x100(%rsp),%rdx
   140002da1:	00 
   140002da2:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   140002da9:	00 
   140002daa:	4d 89 e7             	mov    %r12,%r15
   140002dad:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002db4:	00 00 00 00 00 
   140002db9:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140002dc0:	00 
   140002dc1:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140002dc8:	00 
   140002dc9:	48 85 d2             	test   %rdx,%rdx
   140002dcc:	0f 84 ae 03 00 00    	je     140003180 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6a0>
   140002dd2:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
   140002dd9:	00 
   140002dda:	48 85 c0             	test   %rax,%rax
   140002ddd:	0f 84 3d 03 00 00    	je     140003120 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   140002de3:	48 39 d0             	cmp    %rdx,%rax
   140002de6:	0f 82 34 03 00 00    	jb     140003120 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   140002dec:	4c 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%r9
   140002df3:	00 
   140002df4:	45 31 c0             	xor    %r8d,%r8d
   140002df7:	31 d2                	xor    %edx,%edx
   140002df9:	4c 89 e1             	mov    %r12,%rcx
   140002dfc:	4c 29 c8             	sub    %r9,%rax
   140002dff:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002e04:	e8 cf 1f 00 00       	call   140004dd8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140002e09:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140002e10:	00 
   140002e11:	4c 89 f0             	mov    %r14,%rax
   140002e14:	48 2b 47 08          	sub    0x8(%rdi),%rax
   140002e18:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   140002e1f:	00 
   140002e20:	4c 39 c0             	cmp    %r8,%rax
   140002e23:	0f 82 0e 04 00 00    	jb     140003237 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x757>
   140002e29:	48 89 f9             	mov    %rdi,%rcx
   140002e2c:	e8 97 1f 00 00       	call   140004dc8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140002e31:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140002e38:	00 
   140002e39:	48 39 d9             	cmp    %rbx,%rcx
   140002e3c:	74 11                	je     140002e4f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x36f>
   140002e3e:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140002e45:	00 
   140002e46:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140002e4a:	e8 01 1f 00 00       	call   140004d50 <_ZdlPvy>
   140002e4f:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   140002e56:	00 00 
   140002e58:	4c 8b 84 24 28 01 00 	mov    0x128(%rsp),%r8
   140002e5f:	00 
   140002e60:	49 89 d9             	mov    %rbx,%r9
   140002e63:	31 d2                	xor    %edx,%edx
   140002e65:	48 8d 8c 24 20 01 00 	lea    0x120(%rsp),%rcx
   140002e6c:	00 
   140002e6d:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140002e74:	00 
   140002e75:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002e7c:	00 00 00 00 00 
   140002e81:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140002e88:	00 
   140002e89:	e8 4a 1f 00 00       	call   140004dd8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140002e8e:	45 31 c9             	xor    %r9d,%r9d
   140002e91:	f6 84 24 18 01 00 00 	testb  $0x3,0x118(%rsp)
   140002e98:	03 
   140002e99:	74 08                	je     140002ea3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x3c3>
   140002e9b:	4c 8b 8c 24 28 01 00 	mov    0x128(%rsp),%r9
   140002ea2:	00 
   140002ea3:	48 8b 94 24 20 01 00 	mov    0x120(%rsp),%rdx
   140002eaa:	00 
   140002eab:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
   140002eb0:	45 31 c0             	xor    %r8d,%r8d
   140002eb3:	e8 00 1f 00 00       	call   140004db8 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   140002eb8:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140002ebf:	00 
   140002ec0:	48 39 d9             	cmp    %rbx,%rcx
   140002ec3:	0f 84 3f 02 00 00    	je     140003108 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x628>
   140002ec9:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140002ed0:	00 
   140002ed1:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140002ed5:	e8 76 1e 00 00       	call   140004d50 <_ZdlPvy>
   140002eda:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   140002ede:	49 39 75 00          	cmp    %rsi,0x0(%r13)
   140002ee2:	0f 85 60 fe ff ff    	jne    140002d48 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   140002ee8:	48 8b 47 08          	mov    0x8(%rdi),%rax
   140002eec:	4c 89 f9             	mov    %r15,%rcx
   140002eef:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140002ef6:	00 
   140002ef7:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002efe:	00 00 00 00 00 
   140002f03:	48 8d 50 02          	lea    0x2(%rax),%rdx
   140002f07:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140002f0e:	00 
   140002f0f:	e8 bc 1e 00 00       	call   140004dd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   140002f14:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140002f1b:	ff ff 3f 
   140002f1e:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   140002f25:	00 
   140002f26:	48 83 f8 01          	cmp    $0x1,%rax
   140002f2a:	0f 86 18 03 00 00    	jbe    140003248 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x768>
   140002f30:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140002f36:	48 8d 15 08 51 00 00 	lea    0x5108(%rip),%rdx        # 140008045 <.rdata+0x15>
   140002f3d:	4c 89 f9             	mov    %r15,%rcx
   140002f40:	e8 83 1e 00 00       	call   140004dc8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140002f45:	4c 8b 47 08          	mov    0x8(%rdi),%r8
   140002f49:	48 8b 17             	mov    (%rdi),%rdx
   140002f4c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140002f53:	ff ff 3f 
   140002f56:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   140002f5d:	00 
   140002f5e:	4c 39 c0             	cmp    %r8,%rax
   140002f61:	0f 82 ed 02 00 00    	jb     140003254 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x774>
   140002f67:	4c 89 f9             	mov    %r15,%rcx
   140002f6a:	e8 59 1e 00 00       	call   140004dc8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140002f6f:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   140002f76:	00 
   140002f77:	48 8b 0f             	mov    (%rdi),%rcx
   140002f7a:	48 39 d8             	cmp    %rbx,%rax
   140002f7d:	0f 84 3d 02 00 00    	je     1400031c0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6e0>
   140002f83:	48 39 8c 24 90 00 00 	cmp    %rcx,0x90(%rsp)
   140002f8a:	00 
   140002f8b:	0f 84 07 02 00 00    	je     140003198 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6b8>
   140002f91:	f3 0f 6f 9c 24 a8 00 	movdqu 0xa8(%rsp),%xmm3
   140002f98:	00 00 
   140002f9a:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   140002f9e:	48 89 07             	mov    %rax,(%rdi)
   140002fa1:	0f 11 5f 08          	movups %xmm3,0x8(%rdi)
   140002fa5:	48 85 c9             	test   %rcx,%rcx
   140002fa8:	0f 84 fa 01 00 00    	je     1400031a8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6c8>
   140002fae:	48 89 8c 24 a0 00 00 	mov    %rcx,0xa0(%rsp)
   140002fb5:	00 
   140002fb6:	48 89 94 24 b0 00 00 	mov    %rdx,0xb0(%rsp)
   140002fbd:	00 
   140002fbe:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002fc5:	00 00 00 00 00 
   140002fca:	c6 01 00             	movb   $0x0,(%rcx)
   140002fcd:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140002fd4:	00 
   140002fd5:	48 39 d9             	cmp    %rbx,%rcx
   140002fd8:	74 11                	je     140002feb <_ZN13NaturalBinary8toStringB5cxx11Ev+0x50b>
   140002fda:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140002fe1:	00 
   140002fe2:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140002fe6:	e8 65 1d 00 00       	call   140004d50 <_ZdlPvy>
   140002feb:	48 8b 05 3e 54 00 00 	mov    0x543e(%rip),%rax        # 140008430 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002ff2:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   140002ff9:	00 
   140002ffa:	0f 11 bc 24 d0 00 00 	movups %xmm7,0xd0(%rsp)
   140003001:	00 
   140003002:	48 83 c0 18          	add    $0x18,%rax
   140003006:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   14000300d:	00 
   14000300e:	48 8b 05 1b 54 00 00 	mov    0x541b(%rip),%rax        # 140008430 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003015:	48 83 c0 68          	add    $0x68,%rax
   140003019:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140003020:	00 
   140003021:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003028:	00 
   140003029:	48 39 c1             	cmp    %rax,%rcx
   14000302c:	74 11                	je     14000303f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x55f>
   14000302e:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140003035:	00 
   140003036:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000303a:	e8 11 1d 00 00       	call   140004d50 <_ZdlPvy>
   14000303f:	48 8b 05 fa 53 00 00 	mov    0x53fa(%rip),%rax        # 140008440 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140003046:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   14000304b:	48 83 c0 10          	add    $0x10,%rax
   14000304f:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140003056:	00 
   140003057:	e8 84 1d 00 00       	call   140004de0 <_ZNSt6localeD1Ev>
   14000305c:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140003061:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
   140003066:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   14000306d:	00 
   14000306e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003072:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140003079:	00 
   14000307a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   14000307f:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
   140003084:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   14000308b:	00 
   14000308c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003090:	48 89 b4 04 d0 00 00 	mov    %rsi,0xd0(%rsp,%rax,1)
   140003097:	00 
   140003098:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   14000309d:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
   1400030a2:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   1400030a9:	00 
   1400030aa:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400030ae:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   1400030b5:	00 
   1400030b6:	48 8b 05 93 53 00 00 	mov    0x5393(%rip),%rax        # 140008450 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   1400030bd:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   1400030c4:	00 00 00 00 00 
   1400030c9:	48 83 c0 10          	add    $0x10,%rax
   1400030cd:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400030d4:	00 
   1400030d5:	e8 9e 1c 00 00       	call   140004d78 <_ZNSt8ios_baseD2Ev>
   1400030da:	90                   	nop
   1400030db:	0f 10 b4 24 50 02 00 	movups 0x250(%rsp),%xmm6
   1400030e2:	00 
   1400030e3:	0f 10 bc 24 60 02 00 	movups 0x260(%rsp),%xmm7
   1400030ea:	00 
   1400030eb:	48 89 f8             	mov    %rdi,%rax
   1400030ee:	48 81 c4 78 02 00 00 	add    $0x278,%rsp
   1400030f5:	5b                   	pop    %rbx
   1400030f6:	5e                   	pop    %rsi
   1400030f7:	5f                   	pop    %rdi
   1400030f8:	5d                   	pop    %rbp
   1400030f9:	41 5c                	pop    %r12
   1400030fb:	41 5d                	pop    %r13
   1400030fd:	41 5e                	pop    %r14
   1400030ff:	41 5f                	pop    %r15
   140003101:	c3                   	ret
   140003102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003108:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   14000310c:	49 3b 75 00          	cmp    0x0(%r13),%rsi
   140003110:	0f 85 32 fc ff ff    	jne    140002d48 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   140003116:	e9 cd fd ff ff       	jmp    140002ee8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   14000311b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003120:	48 89 d0             	mov    %rdx,%rax
   140003123:	e9 c4 fc ff ff       	jmp    140002dec <_ZN13NaturalBinary8toStringB5cxx11Ev+0x30c>
   140003128:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000312f:	00 
   140003130:	4c 8b bb f0 00 00 00 	mov    0xf0(%rbx),%r15
   140003137:	4d 85 ff             	test   %r15,%r15
   14000313a:	0f 84 03 01 00 00    	je     140003243 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x763>
   140003140:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
   140003145:	75 2c                	jne    140003173 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x693>
   140003147:	4c 89 f9             	mov    %r15,%rcx
   14000314a:	e8 d9 1c 00 00       	call   140004e28 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   14000314f:	49 8b 07             	mov    (%r15),%rax
   140003152:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140003157:	48 8b 40 30          	mov    0x30(%rax),%rax
   14000315b:	48 39 c8             	cmp    %rcx,%rax
   14000315e:	0f 85 9c 00 00 00    	jne    140003200 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x720>
   140003164:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   14000316b:	00 
   14000316c:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   140003170:	48 01 ea             	add    %rbp,%rdx
   140003173:	c6 83 e1 00 00 00 01 	movb   $0x1,0xe1(%rbx)
   14000317a:	e9 f8 fb ff ff       	jmp    140002d77 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x297>
   14000317f:	90                   	nop
   140003180:	48 8d 94 24 20 01 00 	lea    0x120(%rsp),%rdx
   140003187:	00 
   140003188:	4c 89 e1             	mov    %r12,%rcx
   14000318b:	e8 30 1c 00 00       	call   140004dc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   140003190:	e9 74 fc ff ff       	jmp    140002e09 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x329>
   140003195:	0f 1f 00             	nopl   (%rax)
   140003198:	f3 0f 6f a4 24 a8 00 	movdqu 0xa8(%rsp),%xmm4
   14000319f:	00 00 
   1400031a1:	48 89 07             	mov    %rax,(%rdi)
   1400031a4:	0f 11 67 08          	movups %xmm4,0x8(%rdi)
   1400031a8:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   1400031af:	00 
   1400031b0:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   1400031b7:	00 
   1400031b8:	48 89 d9             	mov    %rbx,%rcx
   1400031bb:	e9 fe fd ff ff       	jmp    140002fbe <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   1400031c0:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   1400031c7:	00 
   1400031c8:	4d 85 c0             	test   %r8,%r8
   1400031cb:	74 19                	je     1400031e6 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   1400031cd:	49 83 f8 01          	cmp    $0x1,%r8
   1400031d1:	74 4d                	je     140003220 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x740>
   1400031d3:	48 89 da             	mov    %rbx,%rdx
   1400031d6:	e8 e5 2d 00 00       	call   140005fc0 <memcpy>
   1400031db:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   1400031e2:	00 
   1400031e3:	48 8b 0f             	mov    (%rdi),%rcx
   1400031e6:	4c 89 47 08          	mov    %r8,0x8(%rdi)
   1400031ea:	42 c6 04 01 00       	movb   $0x0,(%rcx,%r8,1)
   1400031ef:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400031f6:	00 
   1400031f7:	e9 c2 fd ff ff       	jmp    140002fbe <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   1400031fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140003200:	ba 20 00 00 00       	mov    $0x20,%edx
   140003205:	4c 89 f9             	mov    %r15,%rcx
   140003208:	ff d0                	call   *%rax
   14000320a:	e9 55 ff ff ff       	jmp    140003164 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x684>
   14000320f:	90                   	nop
   140003210:	4d 89 e7             	mov    %r12,%r15
   140003213:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   14000321a:	00 
   14000321b:	e9 c8 fc ff ff       	jmp    140002ee8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   140003220:	0f b6 84 24 b0 00 00 	movzbl 0xb0(%rsp),%eax
   140003227:	00 
   140003228:	88 01                	mov    %al,(%rcx)
   14000322a:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003231:	00 
   140003232:	48 8b 0f             	mov    (%rdi),%rcx
   140003235:	eb af                	jmp    1400031e6 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   140003237:	48 8d 0d f2 4d 00 00 	lea    0x4df2(%rip),%rcx        # 140008030 <.rdata>
   14000323e:	e8 15 1b 00 00       	call   140004d58 <_ZSt20__throw_length_errorPKc>
   140003243:	e8 18 1b 00 00       	call   140004d60 <_ZSt16__throw_bad_castv>
   140003248:	48 8d 0d e1 4d 00 00 	lea    0x4de1(%rip),%rcx        # 140008030 <.rdata>
   14000324f:	e8 04 1b 00 00       	call   140004d58 <_ZSt20__throw_length_errorPKc>
   140003254:	48 8d 0d d5 4d 00 00 	lea    0x4dd5(%rip),%rcx        # 140008030 <.rdata>
   14000325b:	e8 f8 1a 00 00       	call   140004d58 <_ZSt20__throw_length_errorPKc>
   140003260:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003267:	00 
   140003268:	48 89 c6             	mov    %rax,%rsi
   14000326b:	48 39 d9             	cmp    %rbx,%rcx
   14000326e:	74 11                	je     140003281 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003270:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003277:	00 
   140003278:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000327c:	e8 cf 1a 00 00       	call   140004d50 <_ZdlPvy>
   140003281:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
   140003288:	00 
   140003289:	e8 22 1b 00 00       	call   140004db0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   14000328e:	eb 23                	jmp    1400032b3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7d3>
   140003290:	48 89 c6             	mov    %rax,%rsi
   140003293:	48 8b 05 b6 51 00 00 	mov    0x51b6(%rip),%rax        # 140008450 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   14000329a:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   1400032a1:	00 
   1400032a2:	48 83 c0 10          	add    $0x10,%rax
   1400032a6:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400032ad:	00 
   1400032ae:	e8 c5 1a 00 00       	call   140004d78 <_ZNSt8ios_baseD2Ev>
   1400032b3:	48 8b 0f             	mov    (%rdi),%rcx
   1400032b6:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   1400032bd:	00 
   1400032be:	48 39 c1             	cmp    %rax,%rcx
   1400032c1:	74 0d                	je     1400032d0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7f0>
   1400032c3:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   1400032c7:	48 83 c2 01          	add    $0x1,%rdx
   1400032cb:	e8 80 1a 00 00       	call   140004d50 <_ZdlPvy>
   1400032d0:	48 89 f1             	mov    %rsi,%rcx
   1400032d3:	e8 b8 2b 00 00       	call   140005e90 <_Unwind_Resume>
   1400032d8:	eb 86                	jmp    140003260 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   1400032da:	eb 84                	jmp    140003260 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   1400032dc:	eb 82                	jmp    140003260 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   1400032de:	48 89 c6             	mov    %rax,%rsi
   1400032e1:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   1400032e6:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   1400032eb:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   1400032f2:	00 
   1400032f3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400032f7:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   1400032fe:	00 
   1400032ff:	31 c0                	xor    %eax,%eax
   140003301:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
   140003308:	00 
   140003309:	eb 88                	jmp    140003293 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7b3>
   14000330b:	48 89 c6             	mov    %rax,%rsi
   14000330e:	e9 6e ff ff ff       	jmp    140003281 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003313:	48 89 c6             	mov    %rax,%rsi
   140003316:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   14000331d:	00 
   14000331e:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003325:	00 
   140003326:	48 83 c3 10          	add    $0x10,%rbx
   14000332a:	48 89 9c 24 d8 00 00 	mov    %rbx,0xd8(%rsp)
   140003331:	00 
   140003332:	48 39 c1             	cmp    %rax,%rcx
   140003335:	74 11                	je     140003348 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x868>
   140003337:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   14000333e:	00 
   14000333f:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003343:	e8 08 1a 00 00       	call   140004d50 <_ZdlPvy>
   140003348:	48 8b 05 f1 50 00 00 	mov    0x50f1(%rip),%rax        # 140008440 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   14000334f:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   140003354:	48 83 c0 10          	add    $0x10,%rax
   140003358:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   14000335f:	00 
   140003360:	e8 7b 1a 00 00       	call   140004de0 <_ZNSt6localeD1Ev>
   140003365:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   14000336a:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
   14000336f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003373:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   14000337a:	00 
   14000337b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   140003380:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003385:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   14000338c:	00 
   14000338d:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003391:	48 89 9c 04 d0 00 00 	mov    %rbx,0xd0(%rsp,%rax,1)
   140003398:	00 
   140003399:	e9 43 ff ff ff       	jmp    1400032e1 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x801>
   14000339e:	66 90                	xchg   %ax,%ax

00000001400033a0 <_ZlsRSo13NaturalBinary>:
   1400033a0:	53                   	push   %rbx
   1400033a1:	48 83 ec 40          	sub    $0x40,%rsp
   1400033a5:	48 89 cb             	mov    %rcx,%rbx
   1400033a8:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   1400033ad:	e8 2e f7 ff ff       	call   140002ae0 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   1400033b2:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   1400033b7:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   1400033bc:	48 89 d9             	mov    %rbx,%rcx
   1400033bf:	e8 a4 19 00 00       	call   140004d68 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400033c4:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400033c9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400033ce:	48 39 c1             	cmp    %rax,%rcx
   1400033d1:	74 0e                	je     1400033e1 <_ZlsRSo13NaturalBinary+0x41>
   1400033d3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400033d8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400033dc:	e8 6f 19 00 00       	call   140004d50 <_ZdlPvy>
   1400033e1:	48 89 d8             	mov    %rbx,%rax
   1400033e4:	48 83 c4 40          	add    $0x40,%rsp
   1400033e8:	5b                   	pop    %rbx
   1400033e9:	c3                   	ret
   1400033ea:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400033ef:	48 89 c3             	mov    %rax,%rbx
   1400033f2:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400033f7:	48 39 c1             	cmp    %rax,%rcx
   1400033fa:	74 0e                	je     14000340a <_ZlsRSo13NaturalBinary+0x6a>
   1400033fc:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003401:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003405:	e8 46 19 00 00       	call   140004d50 <_ZdlPvy>
   14000340a:	48 89 d9             	mov    %rbx,%rcx
   14000340d:	e8 7e 2a 00 00       	call   140005e90 <_Unwind_Resume>
   140003412:	90                   	nop
   140003413:	90                   	nop
   140003414:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000341b:	00 00 00 00 
   14000341f:	90                   	nop

0000000140003420 <_ZN13NaturalBinarymlES_>:
   140003420:	41 57                	push   %r15
   140003422:	41 56                	push   %r14
   140003424:	41 55                	push   %r13
   140003426:	41 54                	push   %r12
   140003428:	55                   	push   %rbp
   140003429:	57                   	push   %rdi
   14000342a:	56                   	push   %rsi
   14000342b:	53                   	push   %rbx
   14000342c:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   140003433:	0f 11 b4 24 00 01 00 	movups %xmm6,0x100(%rsp)
   14000343a:	00 
   14000343b:	49 8b 18             	mov    (%r8),%rbx
   14000343e:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140003443:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
   14000344a:	00 
   14000344b:	48 89 d7             	mov    %rdx,%rdi
   14000344e:	4c 89 c5             	mov    %r8,%rbp
   140003451:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003458:	00 00 
   14000345a:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000345f:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003463:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140003468:	49 39 d8             	cmp    %rbx,%r8
   14000346b:	0f 84 df 02 00 00    	je     140003750 <_ZN13NaturalBinarymlES_+0x330>
   140003471:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003478:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000347d:	e8 c6 18 00 00       	call   140004d48 <_Znwy>
   140003482:	48 89 c1             	mov    %rax,%rcx
   140003485:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003489:	48 89 f2             	mov    %rsi,%rdx
   14000348c:	88 41 10             	mov    %al,0x10(%rcx)
   14000348f:	e8 0c 19 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003494:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
   140003499:	48 8b 1b             	mov    (%rbx),%rbx
   14000349c:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400034a0:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
   1400034a5:	48 39 dd             	cmp    %rbx,%rbp
   1400034a8:	75 ce                	jne    140003478 <_ZN13NaturalBinarymlES_+0x58>
   1400034aa:	48 0f af 57 10       	imul   0x10(%rdi),%rdx
   1400034af:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400034b3:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   1400034ba:	00 00 00 00 00 
   1400034bf:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   1400034c6:	00 
   1400034c7:	48 85 d2             	test   %rdx,%rdx
   1400034ca:	0f 85 60 02 00 00    	jne    140003730 <_ZN13NaturalBinarymlES_+0x310>
   1400034d0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400034d7:	00 00 
   1400034d9:	4c 8d a4 24 e0 00 00 	lea    0xe0(%rsp),%r12
   1400034e0:	00 
   1400034e1:	31 d2                	xor    %edx,%edx
   1400034e3:	4c 89 e1             	mov    %r12,%rcx
   1400034e6:	e8 95 e1 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400034eb:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
   1400034f2:	00 
   1400034f3:	31 d2                	xor    %edx,%edx
   1400034f5:	48 89 d9             	mov    %rbx,%rcx
   1400034f8:	e8 83 e1 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400034fd:	48 8b 54 24 60       	mov    0x60(%rsp),%rdx
   140003502:	31 c0                	xor    %eax,%eax
   140003504:	4c 8d bc 24 a2 00 00 	lea    0xa2(%rsp),%r15
   14000350b:	00 
   14000350c:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140003511:	48 39 f2             	cmp    %rsi,%rdx
   140003514:	0f 84 8e 02 00 00    	je     1400037a8 <_ZN13NaturalBinarymlES_+0x388>
   14000351a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   14000351f:	0f b6 52 10          	movzbl 0x10(%rdx),%edx
   140003523:	88 54 24 4f          	mov    %dl,0x4f(%rsp)
   140003527:	48 8b 17             	mov    (%rdi),%rdx
   14000352a:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   14000352f:	48 39 d7             	cmp    %rdx,%rdi
   140003532:	0f 84 40 02 00 00    	je     140003778 <_ZN13NaturalBinarymlES_+0x358>
   140003538:	48 98                	cltq
   14000353a:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   14000353f:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003544:	66 48 0f 6e f3       	movq   %rbx,%xmm6
   140003549:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   14000354e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   140003552:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003556:	4c 8d 2c c1          	lea    (%rcx,%rax,8),%r13
   14000355a:	48 89 d0             	mov    %rdx,%rax
   14000355d:	0f b6 48 10          	movzbl 0x10(%rax),%ecx
   140003561:	0f b6 54 24 4f       	movzbl 0x4f(%rsp),%edx
   140003566:	e8 e5 df ff ff       	call   140001550 <_ZN10Arithmetic3mulE4ByteS0_>
   14000356b:	88 a4 24 a0 00 00 00 	mov    %ah,0xa0(%rsp)
   140003572:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   140003579:	00 
   14000357a:	88 84 24 a1 00 00 00 	mov    %al,0xa1(%rsp)
   140003581:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   140003588:	00 00 00 00 00 
   14000358d:	0f 11 b4 24 c0 00 00 	movups %xmm6,0xc0(%rsp)
   140003594:	00 
   140003595:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000359a:	e8 a9 17 00 00       	call   140004d48 <_Znwy>
   14000359f:	48 89 c1             	mov    %rax,%rcx
   1400035a2:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
   1400035a6:	48 89 da             	mov    %rbx,%rdx
   1400035a9:	48 83 c5 01          	add    $0x1,%rbp
   1400035ad:	88 41 10             	mov    %al,0x10(%rcx)
   1400035b0:	e8 eb 17 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400035b5:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   1400035bc:	00 01 
   1400035be:	4c 39 fd             	cmp    %r15,%rbp
   1400035c1:	75 d2                	jne    140003595 <_ZN13NaturalBinarymlES_+0x175>
   1400035c3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400035c8:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   1400035cf:	00 
   1400035d0:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
   1400035d7:	00 00 00 00 00 
   1400035dc:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400035e0:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   1400035e7:	00 
   1400035e8:	48 39 dd             	cmp    %rbx,%rbp
   1400035eb:	0f 84 30 04 00 00    	je     140003a21 <_ZN13NaturalBinarymlES_+0x601>
   1400035f1:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
   1400035f6:	eb 15                	jmp    14000360d <_ZN13NaturalBinarymlES_+0x1ed>
   1400035f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400035ff:	00 
   140003600:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140003607:	00 
   140003608:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   14000360d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003612:	44 0f b6 75 10       	movzbl 0x10(%rbp),%r14d
   140003617:	e8 2c 17 00 00       	call   140004d48 <_Znwy>
   14000361c:	44 88 70 10          	mov    %r14b,0x10(%rax)
   140003620:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140003625:	48 89 c1             	mov    %rax,%rcx
   140003628:	e8 73 17 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000362d:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003631:	48 83 84 24 f0 00 00 	addq   $0x1,0xf0(%rsp)
   140003638:	00 01 
   14000363a:	48 39 dd             	cmp    %rbx,%rbp
   14000363d:	75 c1                	jne    140003600 <_ZN13NaturalBinarymlES_+0x1e0>
   14000363f:	4d 39 e5             	cmp    %r12,%r13
   140003642:	74 0b                	je     14000364f <_ZN13NaturalBinarymlES_+0x22f>
   140003644:	4c 89 e2             	mov    %r12,%rdx
   140003647:	4c 89 e9             	mov    %r13,%rcx
   14000364a:	e8 21 e1 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000364f:	48 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%rbp
   140003656:	00 
   140003657:	4c 39 e5             	cmp    %r12,%rbp
   14000365a:	74 1a                	je     140003676 <_ZN13NaturalBinarymlES_+0x256>
   14000365c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003660:	48 89 e9             	mov    %rbp,%rcx
   140003663:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003667:	ba 18 00 00 00       	mov    $0x18,%edx
   14000366c:	e8 df 16 00 00       	call   140004d50 <_ZdlPvy>
   140003671:	4c 39 e5             	cmp    %r12,%rbp
   140003674:	75 ea                	jne    140003660 <_ZN13NaturalBinarymlES_+0x240>
   140003676:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   14000367d:	00 
   14000367e:	eb 11                	jmp    140003691 <_ZN13NaturalBinarymlES_+0x271>
   140003680:	48 89 e9             	mov    %rbp,%rcx
   140003683:	ba 18 00 00 00       	mov    $0x18,%edx
   140003688:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   14000368c:	e8 bf 16 00 00       	call   140004d50 <_ZdlPvy>
   140003691:	48 39 dd             	cmp    %rbx,%rbp
   140003694:	75 ea                	jne    140003680 <_ZN13NaturalBinarymlES_+0x260>
   140003696:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000369b:	31 d2                	xor    %edx,%edx
   14000369d:	31 ed                	xor    %ebp,%ebp
   14000369f:	48 f7 77 10          	divq   0x10(%rdi)
   1400036a3:	48 01 c2             	add    %rax,%rdx
   1400036a6:	74 52                	je     1400036fa <_ZN13NaturalBinarymlES_+0x2da>
   1400036a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400036af:	00 
   1400036b0:	31 d2                	xor    %edx,%edx
   1400036b2:	4c 89 e1             	mov    %r12,%rcx
   1400036b5:	e8 c6 df ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400036ba:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400036bf:	4d 8b 75 00          	mov    0x0(%r13),%r14
   1400036c3:	e8 80 16 00 00       	call   140004d48 <_Znwy>
   1400036c8:	48 89 c1             	mov    %rax,%rcx
   1400036cb:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   1400036d2:	00 
   1400036d3:	4c 89 f2             	mov    %r14,%rdx
   1400036d6:	48 83 c5 01          	add    $0x1,%rbp
   1400036da:	88 41 10             	mov    %al,0x10(%rcx)
   1400036dd:	e8 be 16 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400036e2:	49 83 45 10 01       	addq   $0x1,0x10(%r13)
   1400036e7:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400036ec:	31 d2                	xor    %edx,%edx
   1400036ee:	48 f7 77 10          	divq   0x10(%rdi)
   1400036f2:	48 01 c2             	add    %rax,%rdx
   1400036f5:	48 39 d5             	cmp    %rdx,%rbp
   1400036f8:	72 b6                	jb     1400036b0 <_ZN13NaturalBinarymlES_+0x290>
   1400036fa:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   1400036ff:	49 83 c5 18          	add    $0x18,%r13
   140003703:	48 8b 10             	mov    (%rax),%rdx
   140003706:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000370b:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003710:	48 83 c0 01          	add    $0x1,%rax
   140003714:	48 39 d7             	cmp    %rdx,%rdi
   140003717:	74 54                	je     14000376d <_ZN13NaturalBinarymlES_+0x34d>
   140003719:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   14000371e:	48 89 d0             	mov    %rdx,%rax
   140003721:	e9 37 fe ff ff       	jmp    14000355d <_ZN13NaturalBinarymlES_+0x13d>
   140003726:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000372d:	00 00 00 
   140003730:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
   140003737:	00 
   140003738:	e8 13 29 00 00       	call   140006050 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>
   14000373d:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003744:	00 
   140003745:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   14000374a:	e9 8a fd ff ff       	jmp    1400034d9 <_ZN13NaturalBinarymlES_+0xb9>
   14000374f:	90                   	nop
   140003750:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140003757:	00 00 00 00 00 
   14000375c:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003760:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140003767:	00 
   140003768:	e9 63 fd ff ff       	jmp    1400034d0 <_ZN13NaturalBinarymlES_+0xb0>
   14000376d:	8b 44 24 30          	mov    0x30(%rsp),%eax
   140003771:	83 c0 01             	add    $0x1,%eax
   140003774:	0f 1f 40 00          	nopl   0x0(%rax)
   140003778:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   14000377d:	48 8b 12             	mov    (%rdx),%rdx
   140003780:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140003785:	48 39 f2             	cmp    %rsi,%rdx
   140003788:	74 1e                	je     1400037a8 <_ZN13NaturalBinarymlES_+0x388>
   14000378a:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
   14000378f:	48 39 d7             	cmp    %rdx,%rdi
   140003792:	0f 85 82 fd ff ff    	jne    14000351a <_ZN13NaturalBinarymlES_+0xfa>
   140003798:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   14000379d:	48 8b 00             	mov    (%rax),%rax
   1400037a0:	48 39 f0             	cmp    %rsi,%rax
   1400037a3:	75 f8                	jne    14000379d <_ZN13NaturalBinarymlES_+0x37d>
   1400037a5:	0f 1f 00             	nopl   (%rax)
   1400037a8:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   1400037af:	00 
   1400037b0:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   1400037b7:	00 
   1400037b8:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   1400037bd:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400037c1:	e8 fa e0 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400037c6:	4c 8b bc 24 88 00 00 	mov    0x88(%rsp),%r15
   1400037cd:	00 
   1400037ce:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   1400037d3:	4c 39 f8             	cmp    %r15,%rax
   1400037d6:	0f 84 e2 01 00 00    	je     1400039be <_ZN13NaturalBinarymlES_+0x59e>
   1400037dc:	49 89 c6             	mov    %rax,%r14
   1400037df:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   1400037e6:	00 
   1400037e7:	4d 8b 2e             	mov    (%r14),%r13
   1400037ea:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
   1400037f1:	00 00 00 00 00 
   1400037f6:	4d 39 f5             	cmp    %r14,%r13
   1400037f9:	0f 84 81 02 00 00    	je     140003a80 <_ZN13NaturalBinarymlES_+0x660>
   1400037ff:	90                   	nop
   140003800:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003805:	e8 3e 15 00 00       	call   140004d48 <_Znwy>
   14000380a:	48 89 c1             	mov    %rax,%rcx
   14000380d:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   140003812:	48 89 ea             	mov    %rbp,%rdx
   140003815:	88 41 10             	mov    %al,0x10(%rcx)
   140003818:	e8 83 15 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000381d:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003824:	00 
   140003825:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140003829:	48 8d 78 01          	lea    0x1(%rax),%rdi
   14000382d:	48 89 bc 24 b0 00 00 	mov    %rdi,0xb0(%rsp)
   140003834:	00 
   140003835:	4d 39 f5             	cmp    %r14,%r13
   140003838:	75 c6                	jne    140003800 <_ZN13NaturalBinarymlES_+0x3e0>
   14000383a:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003841:	00 
   140003842:	45 31 ed             	xor    %r13d,%r13d
   140003845:	2b 78 10             	sub    0x10(%rax),%edi
   140003848:	85 ff                	test   %edi,%edi
   14000384a:	0f 8e df 01 00 00    	jle    140003a2f <_ZN13NaturalBinarymlES_+0x60f>
   140003850:	31 d2                	xor    %edx,%edx
   140003852:	4c 89 e1             	mov    %r12,%rcx
   140003855:	e8 26 de ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000385a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000385f:	e8 e4 14 00 00       	call   140004d48 <_Znwy>
   140003864:	48 89 c1             	mov    %rax,%rcx
   140003867:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   14000386e:	00 
   14000386f:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   140003876:	00 
   140003877:	41 83 c5 01          	add    $0x1,%r13d
   14000387b:	88 41 10             	mov    %al,0x10(%rcx)
   14000387e:	e8 1d 15 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003883:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   14000388a:	00 
   14000388b:	48 83 40 10 01       	addq   $0x1,0x10(%rax)
   140003890:	44 39 ef             	cmp    %r13d,%edi
   140003893:	7f bb                	jg     140003850 <_ZN13NaturalBinarymlES_+0x430>
   140003895:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   14000389a:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   1400038a1:	00 
   1400038a2:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   1400038a9:	00 00 00 00 00 
   1400038ae:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400038b2:	0f 11 84 24 c0 00 00 	movups %xmm0,0xc0(%rsp)
   1400038b9:	00 
   1400038ba:	48 39 ef             	cmp    %rbp,%rdi
   1400038bd:	74 2d                	je     1400038ec <_ZN13NaturalBinarymlES_+0x4cc>
   1400038bf:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400038c4:	e8 7f 14 00 00       	call   140004d48 <_Znwy>
   1400038c9:	48 89 c1             	mov    %rax,%rcx
   1400038cc:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   1400038d0:	48 89 da             	mov    %rbx,%rdx
   1400038d3:	88 41 10             	mov    %al,0x10(%rcx)
   1400038d6:	e8 c5 14 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400038db:	48 8b 3f             	mov    (%rdi),%rdi
   1400038de:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   1400038e5:	00 01 
   1400038e7:	48 39 ef             	cmp    %rbp,%rdi
   1400038ea:	75 d3                	jne    1400038bf <_ZN13NaturalBinarymlES_+0x49f>
   1400038ec:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   1400038f3:	00 
   1400038f4:	49 89 d8             	mov    %rbx,%r8
   1400038f7:	4c 89 e1             	mov    %r12,%rcx
   1400038fa:	e8 21 e2 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   1400038ff:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   140003906:	00 
   140003907:	4c 89 e2             	mov    %r12,%rdx
   14000390a:	e8 61 de ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000390f:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
   140003916:	00 
   140003917:	4c 39 e7             	cmp    %r12,%rdi
   14000391a:	74 15                	je     140003931 <_ZN13NaturalBinarymlES_+0x511>
   14000391c:	48 89 f9             	mov    %rdi,%rcx
   14000391f:	48 8b 3f             	mov    (%rdi),%rdi
   140003922:	ba 18 00 00 00       	mov    $0x18,%edx
   140003927:	e8 24 14 00 00       	call   140004d50 <_ZdlPvy>
   14000392c:	4c 39 e7             	cmp    %r12,%rdi
   14000392f:	75 eb                	jne    14000391c <_ZN13NaturalBinarymlES_+0x4fc>
   140003931:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
   140003938:	00 
   140003939:	48 39 df             	cmp    %rbx,%rdi
   14000393c:	74 15                	je     140003953 <_ZN13NaturalBinarymlES_+0x533>
   14000393e:	48 89 f9             	mov    %rdi,%rcx
   140003941:	48 8b 3f             	mov    (%rdi),%rdi
   140003944:	ba 18 00 00 00       	mov    $0x18,%edx
   140003949:	e8 02 14 00 00       	call   140004d50 <_ZdlPvy>
   14000394e:	48 39 df             	cmp    %rbx,%rdi
   140003951:	75 eb                	jne    14000393e <_ZN13NaturalBinarymlES_+0x51e>
   140003953:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   14000395a:	00 
   14000395b:	48 39 ef             	cmp    %rbp,%rdi
   14000395e:	74 15                	je     140003975 <_ZN13NaturalBinarymlES_+0x555>
   140003960:	48 89 f9             	mov    %rdi,%rcx
   140003963:	48 8b 3f             	mov    (%rdi),%rdi
   140003966:	ba 18 00 00 00       	mov    $0x18,%edx
   14000396b:	e8 e0 13 00 00       	call   140004d50 <_ZdlPvy>
   140003970:	48 39 ef             	cmp    %rbp,%rdi
   140003973:	75 eb                	jne    140003960 <_ZN13NaturalBinarymlES_+0x540>
   140003975:	49 83 c6 18          	add    $0x18,%r14
   140003979:	4d 39 f7             	cmp    %r14,%r15
   14000397c:	0f 85 5d fe ff ff    	jne    1400037df <_ZN13NaturalBinarymlES_+0x3bf>
   140003982:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
   140003987:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000398e:	00 00 
   140003990:	48 8b 1f             	mov    (%rdi),%rbx
   140003993:	48 39 df             	cmp    %rbx,%rdi
   140003996:	74 1d                	je     1400039b5 <_ZN13NaturalBinarymlES_+0x595>
   140003998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000399f:	00 
   1400039a0:	48 89 d9             	mov    %rbx,%rcx
   1400039a3:	48 8b 1b             	mov    (%rbx),%rbx
   1400039a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400039ab:	e8 a0 13 00 00       	call   140004d50 <_ZdlPvy>
   1400039b0:	48 39 df             	cmp    %rbx,%rdi
   1400039b3:	75 eb                	jne    1400039a0 <_ZN13NaturalBinarymlES_+0x580>
   1400039b5:	48 83 c7 18          	add    $0x18,%rdi
   1400039b9:	49 39 ff             	cmp    %rdi,%r15
   1400039bc:	75 d2                	jne    140003990 <_ZN13NaturalBinarymlES_+0x570>
   1400039be:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   1400039c3:	48 85 c9             	test   %rcx,%rcx
   1400039c6:	74 10                	je     1400039d8 <_ZN13NaturalBinarymlES_+0x5b8>
   1400039c8:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   1400039cf:	00 
   1400039d0:	48 29 ca             	sub    %rcx,%rdx
   1400039d3:	e8 78 13 00 00       	call   140004d50 <_ZdlPvy>
   1400039d8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400039dd:	48 39 f3             	cmp    %rsi,%rbx
   1400039e0:	74 1b                	je     1400039fd <_ZN13NaturalBinarymlES_+0x5dd>
   1400039e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400039e8:	48 89 d9             	mov    %rbx,%rcx
   1400039eb:	48 8b 1b             	mov    (%rbx),%rbx
   1400039ee:	ba 18 00 00 00       	mov    $0x18,%edx
   1400039f3:	e8 58 13 00 00       	call   140004d50 <_ZdlPvy>
   1400039f8:	48 39 f3             	cmp    %rsi,%rbx
   1400039fb:	75 eb                	jne    1400039e8 <_ZN13NaturalBinarymlES_+0x5c8>
   1400039fd:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003a04:	00 
   140003a05:	0f 10 b4 24 00 01 00 	movups 0x100(%rsp),%xmm6
   140003a0c:	00 
   140003a0d:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
   140003a14:	5b                   	pop    %rbx
   140003a15:	5e                   	pop    %rsi
   140003a16:	5f                   	pop    %rdi
   140003a17:	5d                   	pop    %rbp
   140003a18:	41 5c                	pop    %r12
   140003a1a:	41 5d                	pop    %r13
   140003a1c:	41 5e                	pop    %r14
   140003a1e:	41 5f                	pop    %r15
   140003a20:	c3                   	ret
   140003a21:	4d 39 e5             	cmp    %r12,%r13
   140003a24:	0f 85 1a fc ff ff    	jne    140003644 <_ZN13NaturalBinarymlES_+0x224>
   140003a2a:	e9 67 fc ff ff       	jmp    140003696 <_ZN13NaturalBinarymlES_+0x276>
   140003a2f:	41 89 fd             	mov    %edi,%r13d
   140003a32:	41 f7 dd             	neg    %r13d
   140003a35:	0f 84 5a fe ff ff    	je     140003895 <_ZN13NaturalBinarymlES_+0x475>
   140003a3b:	31 ff                	xor    %edi,%edi
   140003a3d:	0f 1f 00             	nopl   (%rax)
   140003a40:	31 d2                	xor    %edx,%edx
   140003a42:	4c 89 e1             	mov    %r12,%rcx
   140003a45:	e8 36 dc ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003a4a:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003a4f:	e8 f4 12 00 00       	call   140004d48 <_Znwy>
   140003a54:	48 89 c1             	mov    %rax,%rcx
   140003a57:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003a5e:	00 
   140003a5f:	48 89 ea             	mov    %rbp,%rdx
   140003a62:	83 c7 01             	add    $0x1,%edi
   140003a65:	88 41 10             	mov    %al,0x10(%rcx)
   140003a68:	e8 33 13 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003a6d:	48 83 84 24 b0 00 00 	addq   $0x1,0xb0(%rsp)
   140003a74:	00 01 
   140003a76:	41 39 fd             	cmp    %edi,%r13d
   140003a79:	7f c5                	jg     140003a40 <_ZN13NaturalBinarymlES_+0x620>
   140003a7b:	e9 15 fe ff ff       	jmp    140003895 <_ZN13NaturalBinarymlES_+0x475>
   140003a80:	31 ff                	xor    %edi,%edi
   140003a82:	e9 b3 fd ff ff       	jmp    14000383a <_ZN13NaturalBinarymlES_+0x41a>
   140003a87:	48 89 c3             	mov    %rax,%rbx
   140003a8a:	48 8b ac 24 80 00 00 	mov    0x80(%rsp),%rbp
   140003a91:	00 
   140003a92:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
   140003a99:	00 
   140003a9a:	48 89 ef             	mov    %rbp,%rdi
   140003a9d:	49 39 fc             	cmp    %rdi,%r12
   140003aa0:	74 73                	je     140003b15 <_ZN13NaturalBinarymlES_+0x6f5>
   140003aa2:	48 8b 0f             	mov    (%rdi),%rcx
   140003aa5:	48 39 cf             	cmp    %rcx,%rdi
   140003aa8:	0f 84 b7 00 00 00    	je     140003b65 <_ZN13NaturalBinarymlES_+0x745>
   140003aae:	4c 8b 29             	mov    (%rcx),%r13
   140003ab1:	ba 18 00 00 00       	mov    $0x18,%edx
   140003ab6:	e8 95 12 00 00       	call   140004d50 <_ZdlPvy>
   140003abb:	4c 89 e9             	mov    %r13,%rcx
   140003abe:	eb e5                	jmp    140003aa5 <_ZN13NaturalBinarymlES_+0x685>
   140003ac0:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003ac7:	00 
   140003ac8:	48 89 c7             	mov    %rax,%rdi
   140003acb:	4c 39 e1             	cmp    %r12,%rcx
   140003ace:	74 26                	je     140003af6 <_ZN13NaturalBinarymlES_+0x6d6>
   140003ad0:	48 8b 29             	mov    (%rcx),%rbp
   140003ad3:	ba 18 00 00 00       	mov    $0x18,%edx
   140003ad8:	e8 73 12 00 00       	call   140004d50 <_ZdlPvy>
   140003add:	48 89 e9             	mov    %rbp,%rcx
   140003ae0:	eb e9                	jmp    140003acb <_ZN13NaturalBinarymlES_+0x6ab>
   140003ae2:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003ae9:	00 
   140003aea:	48 89 c7             	mov    %rax,%rdi
   140003aed:	4c 39 e1             	cmp    %r12,%rcx
   140003af0:	0f 85 b3 00 00 00    	jne    140003ba9 <_ZN13NaturalBinarymlES_+0x789>
   140003af6:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003afd:	00 
   140003afe:	48 39 d9             	cmp    %rbx,%rcx
   140003b01:	74 5a                	je     140003b5d <_ZN13NaturalBinarymlES_+0x73d>
   140003b03:	48 8b 29             	mov    (%rcx),%rbp
   140003b06:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b0b:	e8 40 12 00 00       	call   140004d50 <_ZdlPvy>
   140003b10:	48 89 e9             	mov    %rbp,%rcx
   140003b13:	eb e9                	jmp    140003afe <_ZN13NaturalBinarymlES_+0x6de>
   140003b15:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   140003b1c:	00 
   140003b1d:	48 29 ea             	sub    %rbp,%rdx
   140003b20:	48 85 ed             	test   %rbp,%rbp
   140003b23:	74 08                	je     140003b2d <_ZN13NaturalBinarymlES_+0x70d>
   140003b25:	48 89 e9             	mov    %rbp,%rcx
   140003b28:	e8 23 12 00 00       	call   140004d50 <_ZdlPvy>
   140003b2d:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140003b32:	48 39 f1             	cmp    %rsi,%rcx
   140003b35:	74 48                	je     140003b7f <_ZN13NaturalBinarymlES_+0x75f>
   140003b37:	48 8b 39             	mov    (%rcx),%rdi
   140003b3a:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b3f:	e8 0c 12 00 00       	call   140004d50 <_ZdlPvy>
   140003b44:	48 89 f9             	mov    %rdi,%rcx
   140003b47:	eb e9                	jmp    140003b32 <_ZN13NaturalBinarymlES_+0x712>
   140003b49:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003b50:	00 
   140003b51:	48 89 c7             	mov    %rax,%rdi
   140003b54:	48 39 d9             	cmp    %rbx,%rcx
   140003b57:	0f 85 19 01 00 00    	jne    140003c76 <_ZN13NaturalBinarymlES_+0x856>
   140003b5d:	48 89 fb             	mov    %rdi,%rbx
   140003b60:	e9 25 ff ff ff       	jmp    140003a8a <_ZN13NaturalBinarymlES_+0x66a>
   140003b65:	48 83 c7 18          	add    $0x18,%rdi
   140003b69:	e9 2f ff ff ff       	jmp    140003a9d <_ZN13NaturalBinarymlES_+0x67d>
   140003b6e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140003b73:	48 89 c3             	mov    %rax,%rbx
   140003b76:	48 39 f1             	cmp    %rsi,%rcx
   140003b79:	0f 85 0c 01 00 00    	jne    140003c8b <_ZN13NaturalBinarymlES_+0x86b>
   140003b7f:	48 89 d9             	mov    %rbx,%rcx
   140003b82:	e8 09 23 00 00       	call   140005e90 <_Unwind_Resume>
   140003b87:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003b8e:	00 
   140003b8f:	48 89 c7             	mov    %rax,%rdi
   140003b92:	4c 39 e1             	cmp    %r12,%rcx
   140003b95:	74 2a                	je     140003bc1 <_ZN13NaturalBinarymlES_+0x7a1>
   140003b97:	4c 8b 29             	mov    (%rcx),%r13
   140003b9a:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b9f:	e8 ac 11 00 00       	call   140004d50 <_ZdlPvy>
   140003ba4:	4c 89 e9             	mov    %r13,%rcx
   140003ba7:	eb e9                	jmp    140003b92 <_ZN13NaturalBinarymlES_+0x772>
   140003ba9:	48 8b 29             	mov    (%rcx),%rbp
   140003bac:	ba 18 00 00 00       	mov    $0x18,%edx
   140003bb1:	e8 9a 11 00 00       	call   140004d50 <_ZdlPvy>
   140003bb6:	48 89 e9             	mov    %rbp,%rcx
   140003bb9:	e9 2f ff ff ff       	jmp    140003aed <_ZN13NaturalBinarymlES_+0x6cd>
   140003bbe:	48 89 c7             	mov    %rax,%rdi
   140003bc1:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003bc8:	00 
   140003bc9:	48 39 d9             	cmp    %rbx,%rcx
   140003bcc:	74 34                	je     140003c02 <_ZN13NaturalBinarymlES_+0x7e2>
   140003bce:	4c 8b 21             	mov    (%rcx),%r12
   140003bd1:	ba 18 00 00 00       	mov    $0x18,%edx
   140003bd6:	e8 75 11 00 00       	call   140004d50 <_ZdlPvy>
   140003bdb:	4c 89 e1             	mov    %r12,%rcx
   140003bde:	eb e9                	jmp    140003bc9 <_ZN13NaturalBinarymlES_+0x7a9>
   140003be0:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003be7:	00 
   140003be8:	48 89 c7             	mov    %rax,%rdi
   140003beb:	48 39 d9             	cmp    %rbx,%rcx
   140003bee:	74 12                	je     140003c02 <_ZN13NaturalBinarymlES_+0x7e2>
   140003bf0:	4c 8b 21             	mov    (%rcx),%r12
   140003bf3:	ba 18 00 00 00       	mov    $0x18,%edx
   140003bf8:	e8 53 11 00 00       	call   140004d50 <_ZdlPvy>
   140003bfd:	4c 89 e1             	mov    %r12,%rcx
   140003c00:	eb e9                	jmp    140003beb <_ZN13NaturalBinarymlES_+0x7cb>
   140003c02:	48 89 fb             	mov    %rdi,%rbx
   140003c05:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003c0c:	00 
   140003c0d:	48 39 e9             	cmp    %rbp,%rcx
   140003c10:	74 39                	je     140003c4b <_ZN13NaturalBinarymlES_+0x82b>
   140003c12:	48 8b 39             	mov    (%rcx),%rdi
   140003c15:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c1a:	e8 31 11 00 00       	call   140004d50 <_ZdlPvy>
   140003c1f:	48 89 f9             	mov    %rdi,%rcx
   140003c22:	eb e9                	jmp    140003c0d <_ZN13NaturalBinarymlES_+0x7ed>
   140003c24:	48 89 c3             	mov    %rax,%rbx
   140003c27:	eb dc                	jmp    140003c05 <_ZN13NaturalBinarymlES_+0x7e5>
   140003c29:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003c30:	00 
   140003c31:	48 89 c3             	mov    %rax,%rbx
   140003c34:	48 39 e9             	cmp    %rbp,%rcx
   140003c37:	74 12                	je     140003c4b <_ZN13NaturalBinarymlES_+0x82b>
   140003c39:	48 8b 39             	mov    (%rcx),%rdi
   140003c3c:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c41:	e8 0a 11 00 00       	call   140004d50 <_ZdlPvy>
   140003c46:	48 89 f9             	mov    %rdi,%rcx
   140003c49:	eb e9                	jmp    140003c34 <_ZN13NaturalBinarymlES_+0x814>
   140003c4b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003c52:	00 
   140003c53:	48 8b 08             	mov    (%rax),%rcx
   140003c56:	48 39 8c 24 60 01 00 	cmp    %rcx,0x160(%rsp)
   140003c5d:	00 
   140003c5e:	0f 84 26 fe ff ff    	je     140003a8a <_ZN13NaturalBinarymlES_+0x66a>
   140003c64:	48 8b 39             	mov    (%rcx),%rdi
   140003c67:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c6c:	e8 df 10 00 00       	call   140004d50 <_ZdlPvy>
   140003c71:	48 89 f9             	mov    %rdi,%rcx
   140003c74:	eb e0                	jmp    140003c56 <_ZN13NaturalBinarymlES_+0x836>
   140003c76:	48 8b 29             	mov    (%rcx),%rbp
   140003c79:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c7e:	e8 cd 10 00 00       	call   140004d50 <_ZdlPvy>
   140003c83:	48 89 e9             	mov    %rbp,%rcx
   140003c86:	e9 c9 fe ff ff       	jmp    140003b54 <_ZN13NaturalBinarymlES_+0x734>
   140003c8b:	48 8b 39             	mov    (%rcx),%rdi
   140003c8e:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c93:	e8 b8 10 00 00       	call   140004d50 <_ZdlPvy>
   140003c98:	48 89 f9             	mov    %rdi,%rcx
   140003c9b:	e9 d6 fe ff ff       	jmp    140003b76 <_ZN13NaturalBinarymlES_+0x756>

0000000140003ca0 <_ZN13NaturalBinary12long_divsionES_PS_>:
   140003ca0:	41 57                	push   %r15
   140003ca2:	41 56                	push   %r14
   140003ca4:	41 55                	push   %r13
   140003ca6:	41 54                	push   %r12
   140003ca8:	55                   	push   %rbp
   140003ca9:	57                   	push   %rdi
   140003caa:	56                   	push   %rsi
   140003cab:	53                   	push   %rbx
   140003cac:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
   140003cb3:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140003cba:	00 
   140003cbb:	0f 11 bc 24 b0 00 00 	movups %xmm7,0xb0(%rsp)
   140003cc2:	00 
   140003cc3:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140003cc8:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140003ccd:	48 89 d3             	mov    %rdx,%rbx
   140003cd0:	4c 89 c5             	mov    %r8,%rbp
   140003cd3:	48 89 8c 24 10 01 00 	mov    %rcx,0x110(%rsp)
   140003cda:	00 
   140003cdb:	4c 89 cf             	mov    %r9,%rdi
   140003cde:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   140003ce3:	e8 d8 db ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003ce8:	4c 89 e1             	mov    %r12,%rcx
   140003ceb:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003cef:	e8 cc db ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003cf4:	48 39 df             	cmp    %rbx,%rdi
   140003cf7:	74 0b                	je     140003d04 <_ZN13NaturalBinary12long_divsionES_PS_+0x64>
   140003cf9:	48 89 da             	mov    %rbx,%rdx
   140003cfc:	48 89 f9             	mov    %rdi,%rcx
   140003cff:	e8 6c da ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003d04:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140003d09:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140003d0d:	4c 89 e9             	mov    %r13,%rcx
   140003d10:	0f b6 40 10          	movzbl 0x10(%rax),%eax
   140003d14:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003d18:	e8 63 d9 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003d1d:	48 8b 1f             	mov    (%rdi),%rbx
   140003d20:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140003d25:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003d2c:	00 00 
   140003d2e:	48 39 df             	cmp    %rbx,%rdi
   140003d31:	74 2f                	je     140003d62 <_ZN13NaturalBinary12long_divsionES_PS_+0xc2>
   140003d33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003d38:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003d3d:	e8 06 10 00 00       	call   140004d48 <_Znwy>
   140003d42:	48 89 c1             	mov    %rax,%rcx
   140003d45:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003d49:	48 89 f2             	mov    %rsi,%rdx
   140003d4c:	88 41 10             	mov    %al,0x10(%rcx)
   140003d4f:	e8 4c 10 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003d54:	48 8b 1b             	mov    (%rbx),%rbx
   140003d57:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140003d5d:	48 39 df             	cmp    %rbx,%rdi
   140003d60:	75 d6                	jne    140003d38 <_ZN13NaturalBinary12long_divsionES_PS_+0x98>
   140003d62:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
   140003d69:	00 
   140003d6a:	44 0f b6 44 24 40    	movzbl 0x40(%rsp),%r8d
   140003d70:	45 31 c9             	xor    %r9d,%r9d
   140003d73:	48 89 f2             	mov    %rsi,%rdx
   140003d76:	4c 89 f9             	mov    %r15,%rcx
   140003d79:	e8 e2 e3 ff ff       	call   140002160 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   140003d7e:	4c 89 fa             	mov    %r15,%rdx
   140003d81:	4c 89 e1             	mov    %r12,%rcx
   140003d84:	e8 e7 d9 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003d89:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003d90:	00 
   140003d91:	4c 39 fb             	cmp    %r15,%rbx
   140003d94:	74 1f                	je     140003db5 <_ZN13NaturalBinary12long_divsionES_PS_+0x115>
   140003d96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003d9d:	00 00 00 
   140003da0:	48 89 d9             	mov    %rbx,%rcx
   140003da3:	48 8b 1b             	mov    (%rbx),%rbx
   140003da6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003dab:	e8 a0 0f 00 00       	call   140004d50 <_ZdlPvy>
   140003db0:	4c 39 fb             	cmp    %r15,%rbx
   140003db3:	75 eb                	jne    140003da0 <_ZN13NaturalBinary12long_divsionES_PS_+0x100>
   140003db5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003dba:	48 39 f3             	cmp    %rsi,%rbx
   140003dbd:	74 16                	je     140003dd5 <_ZN13NaturalBinary12long_divsionES_PS_+0x135>
   140003dbf:	90                   	nop
   140003dc0:	48 89 d9             	mov    %rbx,%rcx
   140003dc3:	48 8b 1b             	mov    (%rbx),%rbx
   140003dc6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003dcb:	e8 80 0f 00 00       	call   140004d50 <_ZdlPvy>
   140003dd0:	48 39 f3             	cmp    %rsi,%rbx
   140003dd3:	75 eb                	jne    140003dc0 <_ZN13NaturalBinary12long_divsionES_PS_+0x120>
   140003dd5:	31 db                	xor    %ebx,%ebx
   140003dd7:	48 83 7d 10 01       	cmpq   $0x1,0x10(%rbp)
   140003ddc:	74 33                	je     140003e11 <_ZN13NaturalBinary12long_divsionES_PS_+0x171>
   140003dde:	66 90                	xchg   %ax,%ax
   140003de0:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
   140003de5:	48 83 6c 24 30 01    	subq   $0x1,0x30(%rsp)
   140003deb:	48 83 c3 01          	add    $0x1,%rbx
   140003def:	4c 89 f1             	mov    %r14,%rcx
   140003df2:	e8 a1 0f 00 00       	call   140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140003df7:	ba 18 00 00 00       	mov    $0x18,%edx
   140003dfc:	4c 89 f1             	mov    %r14,%rcx
   140003dff:	e8 4c 0f 00 00       	call   140004d50 <_ZdlPvy>
   140003e04:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003e08:	48 83 e8 01          	sub    $0x1,%rax
   140003e0c:	48 39 c3             	cmp    %rax,%rbx
   140003e0f:	72 cf                	jb     140003de0 <_ZN13NaturalBinary12long_divsionES_PS_+0x140>
   140003e11:	48 83 7c 24 30 00    	cmpq   $0x0,0x30(%rsp)
   140003e17:	75 30                	jne    140003e49 <_ZN13NaturalBinary12long_divsionES_PS_+0x1a9>
   140003e19:	31 d2                	xor    %edx,%edx
   140003e1b:	4c 89 f9             	mov    %r15,%rcx
   140003e1e:	e8 5d d8 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003e23:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003e28:	e8 1b 0f 00 00       	call   140004d48 <_Znwy>
   140003e2d:	48 89 c1             	mov    %rax,%rcx
   140003e30:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140003e37:	00 
   140003e38:	4c 89 e2             	mov    %r12,%rdx
   140003e3b:	88 41 10             	mov    %al,0x10(%rcx)
   140003e3e:	e8 5d 0f 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003e43:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140003e49:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140003e4e:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140003e53:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003e5a:	00 00 
   140003e5c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003e60:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140003e65:	4c 39 e3             	cmp    %r12,%rbx
   140003e68:	74 30                	je     140003e9a <_ZN13NaturalBinary12long_divsionES_PS_+0x1fa>
   140003e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003e70:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003e75:	e8 ce 0e 00 00       	call   140004d48 <_Znwy>
   140003e7a:	48 89 c1             	mov    %rax,%rcx
   140003e7d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003e81:	48 89 f2             	mov    %rsi,%rdx
   140003e84:	88 41 10             	mov    %al,0x10(%rcx)
   140003e87:	e8 14 0f 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003e8c:	48 8b 1b             	mov    (%rbx),%rbx
   140003e8f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140003e95:	4c 39 e3             	cmp    %r12,%rbx
   140003e98:	75 d6                	jne    140003e70 <_ZN13NaturalBinary12long_divsionES_PS_+0x1d0>
   140003e9a:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   140003ea1:	00 
   140003ea2:	49 89 f0             	mov    %rsi,%r8
   140003ea5:	4c 89 f9             	mov    %r15,%rcx
   140003ea8:	e8 73 dc ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   140003ead:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   140003eb4:	00 
   140003eb5:	4c 89 fa             	mov    %r15,%rdx
   140003eb8:	e8 b3 d8 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003ebd:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003ec4:	00 
   140003ec5:	66 49 0f 6e fd       	movq   %r13,%xmm7
   140003eca:	66 0f 6c ff          	punpcklqdq %xmm7,%xmm7
   140003ece:	4c 39 fb             	cmp    %r15,%rbx
   140003ed1:	74 1a                	je     140003eed <_ZN13NaturalBinary12long_divsionES_PS_+0x24d>
   140003ed3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003ed8:	48 89 d9             	mov    %rbx,%rcx
   140003edb:	48 8b 1b             	mov    (%rbx),%rbx
   140003ede:	ba 18 00 00 00       	mov    $0x18,%edx
   140003ee3:	e8 68 0e 00 00       	call   140004d50 <_ZdlPvy>
   140003ee8:	4c 39 fb             	cmp    %r15,%rbx
   140003eeb:	75 eb                	jne    140003ed8 <_ZN13NaturalBinary12long_divsionES_PS_+0x238>
   140003eed:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003ef2:	48 39 f3             	cmp    %rsi,%rbx
   140003ef5:	74 1e                	je     140003f15 <_ZN13NaturalBinary12long_divsionES_PS_+0x275>
   140003ef7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003efe:	00 00 
   140003f00:	48 89 d9             	mov    %rbx,%rcx
   140003f03:	48 8b 1b             	mov    (%rbx),%rbx
   140003f06:	ba 18 00 00 00       	mov    $0x18,%edx
   140003f0b:	e8 40 0e 00 00       	call   140004d50 <_ZdlPvy>
   140003f10:	48 39 f3             	cmp    %rsi,%rbx
   140003f13:	75 eb                	jne    140003f00 <_ZN13NaturalBinary12long_divsionES_PS_+0x260>
   140003f15:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140003f19:	0f 11 7c 24 40       	movups %xmm7,0x40(%rsp)
   140003f1e:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140003f25:	00 00 
   140003f27:	48 39 dd             	cmp    %rbx,%rbp
   140003f2a:	74 2e                	je     140003f5a <_ZN13NaturalBinary12long_divsionES_PS_+0x2ba>
   140003f2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003f30:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003f35:	e8 0e 0e 00 00       	call   140004d48 <_Znwy>
   140003f3a:	48 89 c1             	mov    %rax,%rcx
   140003f3d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003f41:	4c 89 ea             	mov    %r13,%rdx
   140003f44:	88 41 10             	mov    %al,0x10(%rcx)
   140003f47:	e8 54 0e 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003f4c:	48 8b 1b             	mov    (%rbx),%rbx
   140003f4f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140003f55:	48 39 dd             	cmp    %rbx,%rbp
   140003f58:	75 d6                	jne    140003f30 <_ZN13NaturalBinary12long_divsionES_PS_+0x290>
   140003f5a:	4d 89 e8             	mov    %r13,%r8
   140003f5d:	4c 89 e2             	mov    %r12,%rdx
   140003f60:	48 89 f1             	mov    %rsi,%rcx
   140003f63:	e8 b8 f4 ff ff       	call   140003420 <_ZN13NaturalBinarymlES_>
   140003f68:	49 89 f0             	mov    %rsi,%r8
   140003f6b:	48 89 fa             	mov    %rdi,%rdx
   140003f6e:	4c 89 f9             	mov    %r15,%rcx
   140003f71:	e8 ca de ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   140003f76:	4c 89 fa             	mov    %r15,%rdx
   140003f79:	48 89 f9             	mov    %rdi,%rcx
   140003f7c:	e8 ef d7 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003f81:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003f88:	00 
   140003f89:	4c 39 fb             	cmp    %r15,%rbx
   140003f8c:	74 17                	je     140003fa5 <_ZN13NaturalBinary12long_divsionES_PS_+0x305>
   140003f8e:	66 90                	xchg   %ax,%ax
   140003f90:	48 89 d9             	mov    %rbx,%rcx
   140003f93:	48 8b 1b             	mov    (%rbx),%rbx
   140003f96:	ba 18 00 00 00       	mov    $0x18,%edx
   140003f9b:	e8 b0 0d 00 00       	call   140004d50 <_ZdlPvy>
   140003fa0:	4c 39 fb             	cmp    %r15,%rbx
   140003fa3:	75 eb                	jne    140003f90 <_ZN13NaturalBinary12long_divsionES_PS_+0x2f0>
   140003fa5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003faa:	48 39 f3             	cmp    %rsi,%rbx
   140003fad:	74 16                	je     140003fc5 <_ZN13NaturalBinary12long_divsionES_PS_+0x325>
   140003faf:	90                   	nop
   140003fb0:	48 89 d9             	mov    %rbx,%rcx
   140003fb3:	48 8b 1b             	mov    (%rbx),%rbx
   140003fb6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003fbb:	e8 90 0d 00 00       	call   140004d50 <_ZdlPvy>
   140003fc0:	48 39 f3             	cmp    %rsi,%rbx
   140003fc3:	75 eb                	jne    140003fb0 <_ZN13NaturalBinary12long_divsionES_PS_+0x310>
   140003fc5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140003fca:	4c 39 eb             	cmp    %r13,%rbx
   140003fcd:	74 16                	je     140003fe5 <_ZN13NaturalBinary12long_divsionES_PS_+0x345>
   140003fcf:	90                   	nop
   140003fd0:	48 89 d9             	mov    %rbx,%rcx
   140003fd3:	48 8b 1b             	mov    (%rbx),%rbx
   140003fd6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003fdb:	e8 70 0d 00 00       	call   140004d50 <_ZdlPvy>
   140003fe0:	4c 39 eb             	cmp    %r13,%rbx
   140003fe3:	75 eb                	jne    140003fd0 <_ZN13NaturalBinary12long_divsionES_PS_+0x330>
   140003fe5:	4c 89 f9             	mov    %r15,%rcx
   140003fe8:	e8 d3 d8 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003fed:	4c 89 fa             	mov    %r15,%rdx
   140003ff0:	4c 89 e1             	mov    %r12,%rcx
   140003ff3:	e8 b8 e5 ff ff       	call   1400025b0 <_ZN13NaturalBinarygtES_>
   140003ff8:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003fff:	00 
   140004000:	41 89 c6             	mov    %eax,%r14d
   140004003:	4c 39 fb             	cmp    %r15,%rbx
   140004006:	74 1d                	je     140004025 <_ZN13NaturalBinary12long_divsionES_PS_+0x385>
   140004008:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000400f:	00 
   140004010:	48 89 d9             	mov    %rbx,%rcx
   140004013:	48 8b 1b             	mov    (%rbx),%rbx
   140004016:	ba 18 00 00 00       	mov    $0x18,%edx
   14000401b:	e8 30 0d 00 00       	call   140004d50 <_ZdlPvy>
   140004020:	4c 39 fb             	cmp    %r15,%rbx
   140004023:	75 eb                	jne    140004010 <_ZN13NaturalBinary12long_divsionES_PS_+0x370>
   140004025:	45 84 f6             	test   %r14b,%r14b
   140004028:	0f 85 db fc ff ff    	jne    140003d09 <_ZN13NaturalBinary12long_divsionES_PS_+0x69>
   14000402e:	66 49 0f 6e c7       	movq   %r15,%xmm0
   140004033:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004037:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   14000403e:	00 00 00 00 00 
   140004043:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004047:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   14000404e:	00 
   14000404f:	48 39 dd             	cmp    %rbx,%rbp
   140004052:	74 31                	je     140004085 <_ZN13NaturalBinary12long_divsionES_PS_+0x3e5>
   140004054:	0f 1f 40 00          	nopl   0x0(%rax)
   140004058:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000405d:	e8 e6 0c 00 00       	call   140004d48 <_Znwy>
   140004062:	48 89 c1             	mov    %rax,%rcx
   140004065:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004069:	4c 89 fa             	mov    %r15,%rdx
   14000406c:	88 41 10             	mov    %al,0x10(%rcx)
   14000406f:	e8 2c 0d 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004074:	48 8b 1b             	mov    (%rbx),%rbx
   140004077:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   14000407e:	00 01 
   140004080:	48 39 dd             	cmp    %rbx,%rbp
   140004083:	75 d3                	jne    140004058 <_ZN13NaturalBinary12long_divsionES_PS_+0x3b8>
   140004085:	4c 89 fa             	mov    %r15,%rdx
   140004088:	48 89 f9             	mov    %rdi,%rcx
   14000408b:	e8 a0 e8 ff ff       	call   140002930 <_ZN13NaturalBinarygeES_>
   140004090:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140004097:	00 
   140004098:	41 89 c6             	mov    %eax,%r14d
   14000409b:	4c 39 fb             	cmp    %r15,%rbx
   14000409e:	74 15                	je     1400040b5 <_ZN13NaturalBinary12long_divsionES_PS_+0x415>
   1400040a0:	48 89 d9             	mov    %rbx,%rcx
   1400040a3:	48 8b 1b             	mov    (%rbx),%rbx
   1400040a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400040ab:	e8 a0 0c 00 00       	call   140004d50 <_ZdlPvy>
   1400040b0:	4c 39 fb             	cmp    %r15,%rbx
   1400040b3:	75 eb                	jne    1400040a0 <_ZN13NaturalBinary12long_divsionES_PS_+0x400>
   1400040b5:	45 84 f6             	test   %r14b,%r14b
   1400040b8:	75 4f                	jne    140004109 <_ZN13NaturalBinary12long_divsionES_PS_+0x469>
   1400040ba:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400040bf:	4c 39 e3             	cmp    %r12,%rbx
   1400040c2:	74 19                	je     1400040dd <_ZN13NaturalBinary12long_divsionES_PS_+0x43d>
   1400040c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400040c8:	48 89 d9             	mov    %rbx,%rcx
   1400040cb:	48 8b 1b             	mov    (%rbx),%rbx
   1400040ce:	ba 18 00 00 00       	mov    $0x18,%edx
   1400040d3:	e8 78 0c 00 00       	call   140004d50 <_ZdlPvy>
   1400040d8:	4c 39 e3             	cmp    %r12,%rbx
   1400040db:	75 eb                	jne    1400040c8 <_ZN13NaturalBinary12long_divsionES_PS_+0x428>
   1400040dd:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   1400040e4:	00 
   1400040e5:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   1400040ec:	00 
   1400040ed:	0f 10 bc 24 b0 00 00 	movups 0xb0(%rsp),%xmm7
   1400040f4:	00 
   1400040f5:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
   1400040fc:	5b                   	pop    %rbx
   1400040fd:	5e                   	pop    %rsi
   1400040fe:	5f                   	pop    %rdi
   1400040ff:	5d                   	pop    %rbp
   140004100:	41 5c                	pop    %r12
   140004102:	41 5d                	pop    %r13
   140004104:	41 5e                	pop    %r14
   140004106:	41 5f                	pop    %r15
   140004108:	c3                   	ret
   140004109:	66 49 0f 6e c5       	movq   %r13,%xmm0
   14000410e:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004112:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004119:	00 00 
   14000411b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000411f:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140004124:	48 39 dd             	cmp    %rbx,%rbp
   140004127:	74 2a                	je     140004153 <_ZN13NaturalBinary12long_divsionES_PS_+0x4b3>
   140004129:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000412e:	e8 15 0c 00 00       	call   140004d48 <_Znwy>
   140004133:	48 89 c1             	mov    %rax,%rcx
   140004136:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   14000413a:	4c 89 ea             	mov    %r13,%rdx
   14000413d:	88 41 10             	mov    %al,0x10(%rcx)
   140004140:	e8 5b 0c 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004145:	48 8b 1b             	mov    (%rbx),%rbx
   140004148:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   14000414e:	48 39 dd             	cmp    %rbx,%rbp
   140004151:	75 d6                	jne    140004129 <_ZN13NaturalBinary12long_divsionES_PS_+0x489>
   140004153:	4d 89 e8             	mov    %r13,%r8
   140004156:	48 89 fa             	mov    %rdi,%rdx
   140004159:	4c 89 f9             	mov    %r15,%rcx
   14000415c:	e8 df dc ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   140004161:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   140004166:	4c 89 fa             	mov    %r15,%rdx
   140004169:	48 89 f9             	mov    %rdi,%rcx
   14000416c:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140004170:	e8 fb d5 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004175:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   14000417c:	00 
   14000417d:	4c 39 fb             	cmp    %r15,%rbx
   140004180:	74 15                	je     140004197 <_ZN13NaturalBinary12long_divsionES_PS_+0x4f7>
   140004182:	48 89 d9             	mov    %rbx,%rcx
   140004185:	48 8b 1b             	mov    (%rbx),%rbx
   140004188:	ba 18 00 00 00       	mov    $0x18,%edx
   14000418d:	e8 be 0b 00 00       	call   140004d50 <_ZdlPvy>
   140004192:	4c 39 fb             	cmp    %r15,%rbx
   140004195:	75 eb                	jne    140004182 <_ZN13NaturalBinary12long_divsionES_PS_+0x4e2>
   140004197:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   14000419c:	4c 39 eb             	cmp    %r13,%rbx
   14000419f:	74 15                	je     1400041b6 <_ZN13NaturalBinary12long_divsionES_PS_+0x516>
   1400041a1:	48 89 d9             	mov    %rbx,%rcx
   1400041a4:	48 8b 1b             	mov    (%rbx),%rbx
   1400041a7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041ac:	e8 9f 0b 00 00       	call   140004d50 <_ZdlPvy>
   1400041b1:	4c 39 eb             	cmp    %r13,%rbx
   1400041b4:	75 eb                	jne    1400041a1 <_ZN13NaturalBinary12long_divsionES_PS_+0x501>
   1400041b6:	ba 01 00 00 00       	mov    $0x1,%edx
   1400041bb:	4c 89 f9             	mov    %r15,%rcx
   1400041be:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   1400041c3:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   1400041ca:	00 00 
   1400041cc:	e8 af d4 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400041d1:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400041d6:	e8 6d 0b 00 00       	call   140004d48 <_Znwy>
   1400041db:	48 89 c1             	mov    %rax,%rcx
   1400041de:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   1400041e5:	00 
   1400041e6:	48 89 f2             	mov    %rsi,%rdx
   1400041e9:	88 41 10             	mov    %al,0x10(%rcx)
   1400041ec:	e8 af 0b 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400041f1:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   1400041f8:	00 
   1400041f9:	49 89 f0             	mov    %rsi,%r8
   1400041fc:	4c 89 f9             	mov    %r15,%rcx
   1400041ff:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140004205:	e8 16 d9 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   14000420a:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   140004211:	00 
   140004212:	4c 89 fa             	mov    %r15,%rdx
   140004215:	e8 56 d5 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000421a:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140004221:	00 
   140004222:	4c 39 fb             	cmp    %r15,%rbx
   140004225:	74 15                	je     14000423c <_ZN13NaturalBinary12long_divsionES_PS_+0x59c>
   140004227:	48 89 d9             	mov    %rbx,%rcx
   14000422a:	48 8b 1b             	mov    (%rbx),%rbx
   14000422d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004232:	e8 19 0b 00 00       	call   140004d50 <_ZdlPvy>
   140004237:	4c 39 fb             	cmp    %r15,%rbx
   14000423a:	75 eb                	jne    140004227 <_ZN13NaturalBinary12long_divsionES_PS_+0x587>
   14000423c:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140004241:	48 39 f3             	cmp    %rsi,%rbx
   140004244:	0f 84 70 fe ff ff    	je     1400040ba <_ZN13NaturalBinary12long_divsionES_PS_+0x41a>
   14000424a:	48 89 d9             	mov    %rbx,%rcx
   14000424d:	48 8b 1b             	mov    (%rbx),%rbx
   140004250:	ba 18 00 00 00       	mov    $0x18,%edx
   140004255:	e8 f6 0a 00 00       	call   140004d50 <_ZdlPvy>
   14000425a:	48 39 f3             	cmp    %rsi,%rbx
   14000425d:	75 eb                	jne    14000424a <_ZN13NaturalBinary12long_divsionES_PS_+0x5aa>
   14000425f:	e9 56 fe ff ff       	jmp    1400040ba <_ZN13NaturalBinary12long_divsionES_PS_+0x41a>
   140004264:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   14000426b:	00 
   14000426c:	48 89 c3             	mov    %rax,%rbx
   14000426f:	4c 39 f9             	cmp    %r15,%rcx
   140004272:	74 15                	je     140004289 <_ZN13NaturalBinary12long_divsionES_PS_+0x5e9>
   140004274:	48 8b 39             	mov    (%rcx),%rdi
   140004277:	ba 18 00 00 00       	mov    $0x18,%edx
   14000427c:	e8 cf 0a 00 00       	call   140004d50 <_ZdlPvy>
   140004281:	48 89 f9             	mov    %rdi,%rcx
   140004284:	eb e9                	jmp    14000426f <_ZN13NaturalBinary12long_divsionES_PS_+0x5cf>
   140004286:	48 89 c3             	mov    %rax,%rbx
   140004289:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000428e:	48 39 f1             	cmp    %rsi,%rcx
   140004291:	74 75                	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004293:	48 8b 39             	mov    (%rcx),%rdi
   140004296:	ba 18 00 00 00       	mov    $0x18,%edx
   14000429b:	e8 b0 0a 00 00       	call   140004d50 <_ZdlPvy>
   1400042a0:	48 89 f9             	mov    %rdi,%rcx
   1400042a3:	eb e9                	jmp    14000428e <_ZN13NaturalBinary12long_divsionES_PS_+0x5ee>
   1400042a5:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400042aa:	48 89 c3             	mov    %rax,%rbx
   1400042ad:	48 39 f1             	cmp    %rsi,%rcx
   1400042b0:	74 56                	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400042b2:	48 8b 39             	mov    (%rcx),%rdi
   1400042b5:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042ba:	e8 91 0a 00 00       	call   140004d50 <_ZdlPvy>
   1400042bf:	48 89 f9             	mov    %rdi,%rcx
   1400042c2:	eb e9                	jmp    1400042ad <_ZN13NaturalBinary12long_divsionES_PS_+0x60d>
   1400042c4:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400042cb:	00 
   1400042cc:	48 89 c3             	mov    %rax,%rbx
   1400042cf:	4c 39 f9             	cmp    %r15,%rcx
   1400042d2:	74 15                	je     1400042e9 <_ZN13NaturalBinary12long_divsionES_PS_+0x649>
   1400042d4:	48 8b 31             	mov    (%rcx),%rsi
   1400042d7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042dc:	e8 6f 0a 00 00       	call   140004d50 <_ZdlPvy>
   1400042e1:	48 89 f1             	mov    %rsi,%rcx
   1400042e4:	eb e9                	jmp    1400042cf <_ZN13NaturalBinary12long_divsionES_PS_+0x62f>
   1400042e6:	48 89 c3             	mov    %rax,%rbx
   1400042e9:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400042ee:	4c 39 e9             	cmp    %r13,%rcx
   1400042f1:	74 15                	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400042f3:	48 8b 31             	mov    (%rcx),%rsi
   1400042f6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042fb:	e8 50 0a 00 00       	call   140004d50 <_ZdlPvy>
   140004300:	48 89 f1             	mov    %rsi,%rcx
   140004303:	eb e9                	jmp    1400042ee <_ZN13NaturalBinary12long_divsionES_PS_+0x64e>
   140004305:	48 89 c3             	mov    %rax,%rbx
   140004308:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000430d:	4c 39 e1             	cmp    %r12,%rcx
   140004310:	0f 84 c5 00 00 00    	je     1400043db <_ZN13NaturalBinary12long_divsionES_PS_+0x73b>
   140004316:	48 8b 31             	mov    (%rcx),%rsi
   140004319:	ba 18 00 00 00       	mov    $0x18,%edx
   14000431e:	e8 2d 0a 00 00       	call   140004d50 <_ZdlPvy>
   140004323:	48 89 f1             	mov    %rsi,%rcx
   140004326:	eb e5                	jmp    14000430d <_ZN13NaturalBinary12long_divsionES_PS_+0x66d>
   140004328:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000432d:	48 89 c3             	mov    %rax,%rbx
   140004330:	4c 39 e9             	cmp    %r13,%rcx
   140004333:	74 d3                	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004335:	48 8b 31             	mov    (%rcx),%rsi
   140004338:	ba 18 00 00 00       	mov    $0x18,%edx
   14000433d:	e8 0e 0a 00 00       	call   140004d50 <_ZdlPvy>
   140004342:	48 89 f1             	mov    %rsi,%rcx
   140004345:	eb e9                	jmp    140004330 <_ZN13NaturalBinary12long_divsionES_PS_+0x690>
   140004347:	48 89 c3             	mov    %rax,%rbx
   14000434a:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000434f:	48 39 f1             	cmp    %rsi,%rcx
   140004352:	74 b4                	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004354:	48 8b 39             	mov    (%rcx),%rdi
   140004357:	ba 18 00 00 00       	mov    $0x18,%edx
   14000435c:	e8 ef 09 00 00       	call   140004d50 <_ZdlPvy>
   140004361:	48 89 f9             	mov    %rdi,%rcx
   140004364:	eb e9                	jmp    14000434f <_ZN13NaturalBinary12long_divsionES_PS_+0x6af>
   140004366:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   14000436d:	00 
   14000436e:	48 89 c3             	mov    %rax,%rbx
   140004371:	4c 39 f9             	cmp    %r15,%rcx
   140004374:	0f 84 d1 00 00 00    	je     14000444b <_ZN13NaturalBinary12long_divsionES_PS_+0x7ab>
   14000437a:	48 8b 39             	mov    (%rcx),%rdi
   14000437d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004382:	e8 c9 09 00 00       	call   140004d50 <_ZdlPvy>
   140004387:	48 89 f9             	mov    %rdi,%rcx
   14000438a:	eb e5                	jmp    140004371 <_ZN13NaturalBinary12long_divsionES_PS_+0x6d1>
   14000438c:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004393:	00 
   140004394:	48 89 c3             	mov    %rax,%rbx
   140004397:	4c 39 f9             	cmp    %r15,%rcx
   14000439a:	0f 84 68 ff ff ff    	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400043a0:	48 8b 31             	mov    (%rcx),%rsi
   1400043a3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043a8:	e8 a3 09 00 00       	call   140004d50 <_ZdlPvy>
   1400043ad:	48 89 f1             	mov    %rsi,%rcx
   1400043b0:	eb e5                	jmp    140004397 <_ZN13NaturalBinary12long_divsionES_PS_+0x6f7>
   1400043b2:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400043b9:	00 
   1400043ba:	48 89 c3             	mov    %rax,%rbx
   1400043bd:	4c 39 f9             	cmp    %r15,%rcx
   1400043c0:	0f 84 42 ff ff ff    	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400043c6:	48 8b 31             	mov    (%rcx),%rsi
   1400043c9:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043ce:	e8 7d 09 00 00       	call   140004d50 <_ZdlPvy>
   1400043d3:	48 89 f1             	mov    %rsi,%rcx
   1400043d6:	eb e5                	jmp    1400043bd <_ZN13NaturalBinary12long_divsionES_PS_+0x71d>
   1400043d8:	48 89 c3             	mov    %rax,%rbx
   1400043db:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   1400043e2:	00 
   1400043e3:	48 8b 08             	mov    (%rax),%rcx
   1400043e6:	48 3b 8c 24 10 01 00 	cmp    0x110(%rsp),%rcx
   1400043ed:	00 
   1400043ee:	74 77                	je     140004467 <_ZN13NaturalBinary12long_divsionES_PS_+0x7c7>
   1400043f0:	48 8b 31             	mov    (%rcx),%rsi
   1400043f3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043f8:	e8 53 09 00 00       	call   140004d50 <_ZdlPvy>
   1400043fd:	48 89 f1             	mov    %rsi,%rcx
   140004400:	eb e4                	jmp    1400043e6 <_ZN13NaturalBinary12long_divsionES_PS_+0x746>
   140004402:	48 89 c3             	mov    %rax,%rbx
   140004405:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000440a:	4c 39 e9             	cmp    %r13,%rcx
   14000440d:	0f 84 f5 fe ff ff    	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004413:	48 8b 31             	mov    (%rcx),%rsi
   140004416:	ba 18 00 00 00       	mov    $0x18,%edx
   14000441b:	e8 30 09 00 00       	call   140004d50 <_ZdlPvy>
   140004420:	48 89 f1             	mov    %rsi,%rcx
   140004423:	eb e5                	jmp    14000440a <_ZN13NaturalBinary12long_divsionES_PS_+0x76a>
   140004425:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000442a:	48 89 c3             	mov    %rax,%rbx
   14000442d:	4c 39 e9             	cmp    %r13,%rcx
   140004430:	0f 84 d2 fe ff ff    	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004436:	48 8b 31             	mov    (%rcx),%rsi
   140004439:	ba 18 00 00 00       	mov    $0x18,%edx
   14000443e:	e8 0d 09 00 00       	call   140004d50 <_ZdlPvy>
   140004443:	48 89 f1             	mov    %rsi,%rcx
   140004446:	eb e5                	jmp    14000442d <_ZN13NaturalBinary12long_divsionES_PS_+0x78d>
   140004448:	48 89 c3             	mov    %rax,%rbx
   14000444b:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004450:	48 39 f1             	cmp    %rsi,%rcx
   140004453:	74 b0                	je     140004405 <_ZN13NaturalBinary12long_divsionES_PS_+0x765>
   140004455:	48 8b 39             	mov    (%rcx),%rdi
   140004458:	ba 18 00 00 00       	mov    $0x18,%edx
   14000445d:	e8 ee 08 00 00       	call   140004d50 <_ZdlPvy>
   140004462:	48 89 f9             	mov    %rdi,%rcx
   140004465:	eb e9                	jmp    140004450 <_ZN13NaturalBinary12long_divsionES_PS_+0x7b0>
   140004467:	48 89 d9             	mov    %rbx,%rcx
   14000446a:	e8 21 1a 00 00       	call   140005e90 <_Unwind_Resume>
   14000446f:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004476:	00 
   140004477:	48 89 c3             	mov    %rax,%rbx
   14000447a:	4c 39 f9             	cmp    %r15,%rcx
   14000447d:	0f 84 c7 fe ff ff    	je     14000434a <_ZN13NaturalBinary12long_divsionES_PS_+0x6aa>
   140004483:	48 8b 39             	mov    (%rcx),%rdi
   140004486:	ba 18 00 00 00       	mov    $0x18,%edx
   14000448b:	e8 c0 08 00 00       	call   140004d50 <_ZdlPvy>
   140004490:	48 89 f9             	mov    %rdi,%rcx
   140004493:	eb e5                	jmp    14000447a <_ZN13NaturalBinary12long_divsionES_PS_+0x7da>
   140004495:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000449a:	48 89 c3             	mov    %rax,%rbx
   14000449d:	48 39 f1             	cmp    %rsi,%rcx
   1400044a0:	0f 84 62 fe ff ff    	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400044a6:	48 8b 39             	mov    (%rcx),%rdi
   1400044a9:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044ae:	e8 9d 08 00 00       	call   140004d50 <_ZdlPvy>
   1400044b3:	48 89 f9             	mov    %rdi,%rcx
   1400044b6:	eb e5                	jmp    14000449d <_ZN13NaturalBinary12long_divsionES_PS_+0x7fd>
   1400044b8:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400044bd:	48 89 c3             	mov    %rax,%rbx
   1400044c0:	48 39 f1             	cmp    %rsi,%rcx
   1400044c3:	0f 84 3f fe ff ff    	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400044c9:	48 8b 39             	mov    (%rcx),%rdi
   1400044cc:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044d1:	e8 7a 08 00 00       	call   140004d50 <_ZdlPvy>
   1400044d6:	48 89 f9             	mov    %rdi,%rcx
   1400044d9:	eb e5                	jmp    1400044c0 <_ZN13NaturalBinary12long_divsionES_PS_+0x820>
   1400044db:	48 89 c3             	mov    %rax,%rbx
   1400044de:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400044e3:	48 39 f1             	cmp    %rsi,%rcx
   1400044e6:	0f 84 1c fe ff ff    	je     140004308 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400044ec:	48 8b 39             	mov    (%rcx),%rdi
   1400044ef:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044f4:	e8 57 08 00 00       	call   140004d50 <_ZdlPvy>
   1400044f9:	48 89 f9             	mov    %rdi,%rcx
   1400044fc:	eb e5                	jmp    1400044e3 <_ZN13NaturalBinary12long_divsionES_PS_+0x843>
   1400044fe:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004505:	00 
   140004506:	48 89 c3             	mov    %rax,%rbx
   140004509:	4c 39 f9             	cmp    %r15,%rcx
   14000450c:	74 d0                	je     1400044de <_ZN13NaturalBinary12long_divsionES_PS_+0x83e>
   14000450e:	48 8b 39             	mov    (%rcx),%rdi
   140004511:	ba 18 00 00 00       	mov    $0x18,%edx
   140004516:	e8 35 08 00 00       	call   140004d50 <_ZdlPvy>
   14000451b:	48 89 f9             	mov    %rdi,%rcx
   14000451e:	eb e9                	jmp    140004509 <_ZN13NaturalBinary12long_divsionES_PS_+0x869>

0000000140004520 <_ZN13NaturalBinaryrmES_>:
   140004520:	41 55                	push   %r13
   140004522:	41 54                	push   %r12
   140004524:	55                   	push   %rbp
   140004525:	57                   	push   %rdi
   140004526:	56                   	push   %rsi
   140004527:	53                   	push   %rbx
   140004528:	48 83 ec 68          	sub    $0x68,%rsp
   14000452c:	4c 89 c7             	mov    %r8,%rdi
   14000452f:	48 89 cd             	mov    %rcx,%rbp
   140004532:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140004537:	49 89 d4             	mov    %rdx,%r12
   14000453a:	e8 81 d3 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   14000453f:	48 83 7f 10 01       	cmpq   $0x1,0x10(%rdi)
   140004544:	0f 84 be 00 00 00    	je     140004608 <_ZN13NaturalBinaryrmES_+0xe8>
   14000454a:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000454f:	48 8b 1f             	mov    (%rdi),%rbx
   140004552:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004559:	00 00 
   14000455b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000455f:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004564:	48 39 df             	cmp    %rbx,%rdi
   140004567:	74 31                	je     14000459a <_ZN13NaturalBinaryrmES_+0x7a>
   140004569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004570:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004575:	e8 ce 07 00 00       	call   140004d48 <_Znwy>
   14000457a:	48 89 c1             	mov    %rax,%rcx
   14000457d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004581:	48 89 f2             	mov    %rsi,%rdx
   140004584:	88 41 10             	mov    %al,0x10(%rcx)
   140004587:	e8 14 08 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000458c:	48 8b 1b             	mov    (%rbx),%rbx
   14000458f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004595:	48 39 df             	cmp    %rbx,%rdi
   140004598:	75 d6                	jne    140004570 <_ZN13NaturalBinaryrmES_+0x50>
   14000459a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   14000459f:	49 89 e9             	mov    %rbp,%r9
   1400045a2:	49 89 f0             	mov    %rsi,%r8
   1400045a5:	4c 89 e2             	mov    %r12,%rdx
   1400045a8:	48 89 f9             	mov    %rdi,%rcx
   1400045ab:	e8 f0 f6 ff ff       	call   140003ca0 <_ZN13NaturalBinary12long_divsionES_PS_>
   1400045b0:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400045b5:	48 39 fb             	cmp    %rdi,%rbx
   1400045b8:	74 1b                	je     1400045d5 <_ZN13NaturalBinaryrmES_+0xb5>
   1400045ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400045c0:	48 89 d9             	mov    %rbx,%rcx
   1400045c3:	48 8b 1b             	mov    (%rbx),%rbx
   1400045c6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045cb:	e8 80 07 00 00       	call   140004d50 <_ZdlPvy>
   1400045d0:	48 39 fb             	cmp    %rdi,%rbx
   1400045d3:	75 eb                	jne    1400045c0 <_ZN13NaturalBinaryrmES_+0xa0>
   1400045d5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400045da:	48 39 f3             	cmp    %rsi,%rbx
   1400045dd:	74 16                	je     1400045f5 <_ZN13NaturalBinaryrmES_+0xd5>
   1400045df:	90                   	nop
   1400045e0:	48 89 d9             	mov    %rbx,%rcx
   1400045e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400045e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045eb:	e8 60 07 00 00       	call   140004d50 <_ZdlPvy>
   1400045f0:	48 39 f3             	cmp    %rsi,%rbx
   1400045f3:	75 eb                	jne    1400045e0 <_ZN13NaturalBinaryrmES_+0xc0>
   1400045f5:	48 89 e8             	mov    %rbp,%rax
   1400045f8:	48 83 c4 68          	add    $0x68,%rsp
   1400045fc:	5b                   	pop    %rbx
   1400045fd:	5e                   	pop    %rsi
   1400045fe:	5f                   	pop    %rdi
   1400045ff:	5d                   	pop    %rbp
   140004600:	41 5c                	pop    %r12
   140004602:	41 5d                	pop    %r13
   140004604:	c3                   	ret
   140004605:	0f 1f 00             	nopl   (%rax)
   140004608:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000460d:	49 8b 1c 24          	mov    (%r12),%rbx
   140004611:	4c 8b 2f             	mov    (%rdi),%r13
   140004614:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000461b:	00 00 
   14000461d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004621:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004626:	49 39 dc             	cmp    %rbx,%r12
   140004629:	74 2f                	je     14000465a <_ZN13NaturalBinaryrmES_+0x13a>
   14000462b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004630:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004635:	e8 0e 07 00 00       	call   140004d48 <_Znwy>
   14000463a:	48 89 c1             	mov    %rax,%rcx
   14000463d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004641:	48 89 f2             	mov    %rsi,%rdx
   140004644:	88 41 10             	mov    %al,0x10(%rcx)
   140004647:	e8 54 07 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000464c:	48 8b 1b             	mov    (%rbx),%rbx
   14000464f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004655:	49 39 dc             	cmp    %rbx,%r12
   140004658:	75 d6                	jne    140004630 <_ZN13NaturalBinaryrmES_+0x110>
   14000465a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   14000465f:	45 0f b6 45 10       	movzbl 0x10(%r13),%r8d
   140004664:	49 89 e9             	mov    %rbp,%r9
   140004667:	48 89 f2             	mov    %rsi,%rdx
   14000466a:	48 89 f9             	mov    %rdi,%rcx
   14000466d:	e8 ee da ff ff       	call   140002160 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   140004672:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004677:	48 39 fb             	cmp    %rdi,%rbx
   14000467a:	74 19                	je     140004695 <_ZN13NaturalBinaryrmES_+0x175>
   14000467c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004680:	48 89 d9             	mov    %rbx,%rcx
   140004683:	48 8b 1b             	mov    (%rbx),%rbx
   140004686:	ba 18 00 00 00       	mov    $0x18,%edx
   14000468b:	e8 c0 06 00 00       	call   140004d50 <_ZdlPvy>
   140004690:	48 39 fb             	cmp    %rdi,%rbx
   140004693:	75 eb                	jne    140004680 <_ZN13NaturalBinaryrmES_+0x160>
   140004695:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000469a:	48 39 f3             	cmp    %rsi,%rbx
   14000469d:	0f 84 52 ff ff ff    	je     1400045f5 <_ZN13NaturalBinaryrmES_+0xd5>
   1400046a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400046a8:	48 89 d9             	mov    %rbx,%rcx
   1400046ab:	48 8b 1b             	mov    (%rbx),%rbx
   1400046ae:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046b3:	e8 98 06 00 00       	call   140004d50 <_ZdlPvy>
   1400046b8:	48 39 f3             	cmp    %rsi,%rbx
   1400046bb:	75 eb                	jne    1400046a8 <_ZN13NaturalBinaryrmES_+0x188>
   1400046bd:	48 89 e8             	mov    %rbp,%rax
   1400046c0:	48 83 c4 68          	add    $0x68,%rsp
   1400046c4:	5b                   	pop    %rbx
   1400046c5:	5e                   	pop    %rsi
   1400046c6:	5f                   	pop    %rdi
   1400046c7:	5d                   	pop    %rbp
   1400046c8:	41 5c                	pop    %r12
   1400046ca:	41 5d                	pop    %r13
   1400046cc:	c3                   	ret
   1400046cd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400046d2:	48 89 c3             	mov    %rax,%rbx
   1400046d5:	48 39 f1             	cmp    %rsi,%rcx
   1400046d8:	74 3e                	je     140004718 <_ZN13NaturalBinaryrmES_+0x1f8>
   1400046da:	48 8b 39             	mov    (%rcx),%rdi
   1400046dd:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046e2:	e8 69 06 00 00       	call   140004d50 <_ZdlPvy>
   1400046e7:	48 89 f9             	mov    %rdi,%rcx
   1400046ea:	eb e9                	jmp    1400046d5 <_ZN13NaturalBinaryrmES_+0x1b5>
   1400046ec:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400046f1:	48 89 c3             	mov    %rax,%rbx
   1400046f4:	48 39 f1             	cmp    %rsi,%rcx
   1400046f7:	74 1f                	je     140004718 <_ZN13NaturalBinaryrmES_+0x1f8>
   1400046f9:	48 8b 39             	mov    (%rcx),%rdi
   1400046fc:	ba 18 00 00 00       	mov    $0x18,%edx
   140004701:	e8 4a 06 00 00       	call   140004d50 <_ZdlPvy>
   140004706:	48 89 f9             	mov    %rdi,%rcx
   140004709:	eb e9                	jmp    1400046f4 <_ZN13NaturalBinaryrmES_+0x1d4>
   14000470b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004710:	48 89 c3             	mov    %rax,%rbx
   140004713:	48 39 f1             	cmp    %rsi,%rcx
   140004716:	75 42                	jne    14000475a <_ZN13NaturalBinaryrmES_+0x23a>
   140004718:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   14000471c:	48 39 e9             	cmp    %rbp,%rcx
   14000471f:	74 31                	je     140004752 <_ZN13NaturalBinaryrmES_+0x232>
   140004721:	48 8b 31             	mov    (%rcx),%rsi
   140004724:	ba 18 00 00 00       	mov    $0x18,%edx
   140004729:	e8 22 06 00 00       	call   140004d50 <_ZdlPvy>
   14000472e:	48 89 f1             	mov    %rsi,%rcx
   140004731:	eb e9                	jmp    14000471c <_ZN13NaturalBinaryrmES_+0x1fc>
   140004733:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004738:	48 89 c3             	mov    %rax,%rbx
   14000473b:	48 39 f1             	cmp    %rsi,%rcx
   14000473e:	74 d8                	je     140004718 <_ZN13NaturalBinaryrmES_+0x1f8>
   140004740:	48 8b 39             	mov    (%rcx),%rdi
   140004743:	ba 18 00 00 00       	mov    $0x18,%edx
   140004748:	e8 03 06 00 00       	call   140004d50 <_ZdlPvy>
   14000474d:	48 89 f9             	mov    %rdi,%rcx
   140004750:	eb e9                	jmp    14000473b <_ZN13NaturalBinaryrmES_+0x21b>
   140004752:	48 89 d9             	mov    %rbx,%rcx
   140004755:	e8 36 17 00 00       	call   140005e90 <_Unwind_Resume>
   14000475a:	48 8b 39             	mov    (%rcx),%rdi
   14000475d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004762:	e8 e9 05 00 00       	call   140004d50 <_ZdlPvy>
   140004767:	48 89 f9             	mov    %rdi,%rcx
   14000476a:	eb a7                	jmp    140004713 <_ZN13NaturalBinaryrmES_+0x1f3>
   14000476c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004770 <_ZN13NaturalBinarydvES_>:
   140004770:	41 55                	push   %r13
   140004772:	41 54                	push   %r12
   140004774:	55                   	push   %rbp
   140004775:	57                   	push   %rdi
   140004776:	56                   	push   %rsi
   140004777:	53                   	push   %rbx
   140004778:	48 83 ec 68          	sub    $0x68,%rsp
   14000477c:	49 83 78 10 01       	cmpq   $0x1,0x10(%r8)
   140004781:	48 89 cd             	mov    %rcx,%rbp
   140004784:	49 89 d5             	mov    %rdx,%r13
   140004787:	4d 89 c4             	mov    %r8,%r12
   14000478a:	0f 84 c8 00 00 00    	je     140004858 <_ZN13NaturalBinarydvES_+0xe8>
   140004790:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140004795:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   14000479a:	48 89 f9             	mov    %rdi,%rcx
   14000479d:	e8 1e d1 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400047a2:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400047a7:	49 8b 1c 24          	mov    (%r12),%rbx
   1400047ab:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400047b2:	00 00 
   1400047b4:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400047b8:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   1400047bd:	49 39 dc             	cmp    %rbx,%r12
   1400047c0:	74 30                	je     1400047f2 <_ZN13NaturalBinarydvES_+0x82>
   1400047c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400047c8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400047cd:	e8 76 05 00 00       	call   140004d48 <_Znwy>
   1400047d2:	48 89 c1             	mov    %rax,%rcx
   1400047d5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400047d9:	48 89 f2             	mov    %rsi,%rdx
   1400047dc:	88 41 10             	mov    %al,0x10(%rcx)
   1400047df:	e8 bc 05 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400047e4:	48 8b 1b             	mov    (%rbx),%rbx
   1400047e7:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400047ed:	49 39 dc             	cmp    %rbx,%r12
   1400047f0:	75 d6                	jne    1400047c8 <_ZN13NaturalBinarydvES_+0x58>
   1400047f2:	49 89 f9             	mov    %rdi,%r9
   1400047f5:	49 89 f0             	mov    %rsi,%r8
   1400047f8:	4c 89 ea             	mov    %r13,%rdx
   1400047fb:	48 89 e9             	mov    %rbp,%rcx
   1400047fe:	e8 9d f4 ff ff       	call   140003ca0 <_ZN13NaturalBinary12long_divsionES_PS_>
   140004803:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004808:	48 39 f3             	cmp    %rsi,%rbx
   14000480b:	74 18                	je     140004825 <_ZN13NaturalBinarydvES_+0xb5>
   14000480d:	0f 1f 00             	nopl   (%rax)
   140004810:	48 89 d9             	mov    %rbx,%rcx
   140004813:	48 8b 1b             	mov    (%rbx),%rbx
   140004816:	ba 18 00 00 00       	mov    $0x18,%edx
   14000481b:	e8 30 05 00 00       	call   140004d50 <_ZdlPvy>
   140004820:	48 39 f3             	cmp    %rsi,%rbx
   140004823:	75 eb                	jne    140004810 <_ZN13NaturalBinarydvES_+0xa0>
   140004825:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000482a:	48 39 fb             	cmp    %rdi,%rbx
   14000482d:	74 16                	je     140004845 <_ZN13NaturalBinarydvES_+0xd5>
   14000482f:	90                   	nop
   140004830:	48 89 d9             	mov    %rbx,%rcx
   140004833:	48 8b 1b             	mov    (%rbx),%rbx
   140004836:	ba 18 00 00 00       	mov    $0x18,%edx
   14000483b:	e8 10 05 00 00       	call   140004d50 <_ZdlPvy>
   140004840:	48 39 fb             	cmp    %rdi,%rbx
   140004843:	75 eb                	jne    140004830 <_ZN13NaturalBinarydvES_+0xc0>
   140004845:	48 89 e8             	mov    %rbp,%rax
   140004848:	48 83 c4 68          	add    $0x68,%rsp
   14000484c:	5b                   	pop    %rbx
   14000484d:	5e                   	pop    %rsi
   14000484e:	5f                   	pop    %rdi
   14000484f:	5d                   	pop    %rbp
   140004850:	41 5c                	pop    %r12
   140004852:	41 5d                	pop    %r13
   140004854:	c3                   	ret
   140004855:	0f 1f 00             	nopl   (%rax)
   140004858:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   14000485d:	48 8b 1a             	mov    (%rdx),%rbx
   140004860:	49 8b 38             	mov    (%r8),%rdi
   140004863:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   14000486a:	00 00 
   14000486c:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004871:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004875:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   14000487a:	48 39 da             	cmp    %rbx,%rdx
   14000487d:	74 2b                	je     1400048aa <_ZN13NaturalBinarydvES_+0x13a>
   14000487f:	90                   	nop
   140004880:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004885:	e8 be 04 00 00       	call   140004d48 <_Znwy>
   14000488a:	48 89 c1             	mov    %rax,%rcx
   14000488d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004891:	48 89 f2             	mov    %rsi,%rdx
   140004894:	88 41 10             	mov    %al,0x10(%rcx)
   140004897:	e8 04 05 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000489c:	48 8b 1b             	mov    (%rbx),%rbx
   14000489f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400048a5:	49 39 dd             	cmp    %rbx,%r13
   1400048a8:	75 d6                	jne    140004880 <_ZN13NaturalBinarydvES_+0x110>
   1400048aa:	44 0f b6 47 10       	movzbl 0x10(%rdi),%r8d
   1400048af:	45 31 c9             	xor    %r9d,%r9d
   1400048b2:	48 89 f2             	mov    %rsi,%rdx
   1400048b5:	48 89 e9             	mov    %rbp,%rcx
   1400048b8:	e8 a3 d8 ff ff       	call   140002160 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   1400048bd:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400048c2:	48 39 f3             	cmp    %rsi,%rbx
   1400048c5:	0f 84 7a ff ff ff    	je     140004845 <_ZN13NaturalBinarydvES_+0xd5>
   1400048cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400048d0:	48 89 d9             	mov    %rbx,%rcx
   1400048d3:	48 8b 1b             	mov    (%rbx),%rbx
   1400048d6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400048db:	e8 70 04 00 00       	call   140004d50 <_ZdlPvy>
   1400048e0:	48 39 f3             	cmp    %rsi,%rbx
   1400048e3:	75 eb                	jne    1400048d0 <_ZN13NaturalBinarydvES_+0x160>
   1400048e5:	48 89 e8             	mov    %rbp,%rax
   1400048e8:	48 83 c4 68          	add    $0x68,%rsp
   1400048ec:	5b                   	pop    %rbx
   1400048ed:	5e                   	pop    %rsi
   1400048ee:	5f                   	pop    %rdi
   1400048ef:	5d                   	pop    %rbp
   1400048f0:	41 5c                	pop    %r12
   1400048f2:	41 5d                	pop    %r13
   1400048f4:	c3                   	ret
   1400048f5:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400048fa:	48 89 c3             	mov    %rax,%rbx
   1400048fd:	48 39 f1             	cmp    %rsi,%rcx
   140004900:	74 48                	je     14000494a <_ZN13NaturalBinarydvES_+0x1da>
   140004902:	48 8b 39             	mov    (%rcx),%rdi
   140004905:	ba 18 00 00 00       	mov    $0x18,%edx
   14000490a:	e8 41 04 00 00       	call   140004d50 <_ZdlPvy>
   14000490f:	48 89 f9             	mov    %rdi,%rcx
   140004912:	eb e9                	jmp    1400048fd <_ZN13NaturalBinarydvES_+0x18d>
   140004914:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004919:	48 89 c3             	mov    %rax,%rbx
   14000491c:	48 39 f1             	cmp    %rsi,%rcx
   14000491f:	74 29                	je     14000494a <_ZN13NaturalBinarydvES_+0x1da>
   140004921:	48 8b 39             	mov    (%rcx),%rdi
   140004924:	ba 18 00 00 00       	mov    $0x18,%edx
   140004929:	e8 22 04 00 00       	call   140004d50 <_ZdlPvy>
   14000492e:	48 89 f9             	mov    %rdi,%rcx
   140004931:	eb e9                	jmp    14000491c <_ZN13NaturalBinarydvES_+0x1ac>
   140004933:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004938:	48 89 c3             	mov    %rax,%rbx
   14000493b:	48 39 f1             	cmp    %rsi,%rcx
   14000493e:	75 31                	jne    140004971 <_ZN13NaturalBinarydvES_+0x201>
   140004940:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004945:	48 39 f9             	cmp    %rdi,%rcx
   140004948:	75 39                	jne    140004983 <_ZN13NaturalBinarydvES_+0x213>
   14000494a:	48 89 d9             	mov    %rbx,%rcx
   14000494d:	e8 3e 15 00 00       	call   140005e90 <_Unwind_Resume>
   140004952:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004957:	48 89 c3             	mov    %rax,%rbx
   14000495a:	48 39 f1             	cmp    %rsi,%rcx
   14000495d:	74 e1                	je     140004940 <_ZN13NaturalBinarydvES_+0x1d0>
   14000495f:	48 8b 29             	mov    (%rcx),%rbp
   140004962:	ba 18 00 00 00       	mov    $0x18,%edx
   140004967:	e8 e4 03 00 00       	call   140004d50 <_ZdlPvy>
   14000496c:	48 89 e9             	mov    %rbp,%rcx
   14000496f:	eb e9                	jmp    14000495a <_ZN13NaturalBinarydvES_+0x1ea>
   140004971:	48 8b 29             	mov    (%rcx),%rbp
   140004974:	ba 18 00 00 00       	mov    $0x18,%edx
   140004979:	e8 d2 03 00 00       	call   140004d50 <_ZdlPvy>
   14000497e:	48 89 e9             	mov    %rbp,%rcx
   140004981:	eb b8                	jmp    14000493b <_ZN13NaturalBinarydvES_+0x1cb>
   140004983:	48 8b 31             	mov    (%rcx),%rsi
   140004986:	ba 18 00 00 00       	mov    $0x18,%edx
   14000498b:	e8 c0 03 00 00       	call   140004d50 <_ZdlPvy>
   140004990:	48 89 f1             	mov    %rsi,%rcx
   140004993:	eb b0                	jmp    140004945 <_ZN13NaturalBinarydvES_+0x1d5>
   140004995:	90                   	nop
   140004996:	90                   	nop
   140004997:	90                   	nop
   140004998:	90                   	nop
   140004999:	90                   	nop
   14000499a:	90                   	nop
   14000499b:	90                   	nop
   14000499c:	90                   	nop
   14000499d:	90                   	nop
   14000499e:	90                   	nop
   14000499f:	90                   	nop

00000001400049a0 <__tcf_0>:
   1400049a0:	48 8d 0d c9 66 00 00 	lea    0x66c9(%rip),%rcx        # 14000b070 <_ZStL8__ioinit>
   1400049a7:	e9 dc 03 00 00       	jmp    140004d88 <_ZNSt8ios_base4InitD1Ev>
   1400049ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400049b0 <_ZN15SignedMagnitudeC1Ex>:
   1400049b0:	57                   	push   %rdi
   1400049b1:	56                   	push   %rsi
   1400049b2:	53                   	push   %rbx
   1400049b3:	48 83 ec 20          	sub    $0x20,%rsp
   1400049b7:	31 c0                	xor    %eax,%eax
   1400049b9:	48 89 cf             	mov    %rcx,%rdi
   1400049bc:	48 89 d3             	mov    %rdx,%rbx
   1400049bf:	48 85 d2             	test   %rdx,%rdx
   1400049c2:	79 08                	jns    1400049cc <_ZN15SignedMagnitudeC1Ex+0x1c>
   1400049c4:	48 f7 db             	neg    %rbx
   1400049c7:	b8 01 00 00 00       	mov    $0x1,%eax
   1400049cc:	88 47 0c             	mov    %al,0xc(%rdi)
   1400049cf:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400049d4:	e8 6f 03 00 00       	call   140004d48 <_Znwy>
   1400049d9:	48 89 da             	mov    %rbx,%rdx
   1400049dc:	48 89 c1             	mov    %rax,%rcx
   1400049df:	48 89 c6             	mov    %rax,%rsi
   1400049e2:	e8 69 cf ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   1400049e7:	48 89 37             	mov    %rsi,(%rdi)
   1400049ea:	48 83 c4 20          	add    $0x20,%rsp
   1400049ee:	5b                   	pop    %rbx
   1400049ef:	5e                   	pop    %rsi
   1400049f0:	5f                   	pop    %rdi
   1400049f1:	c3                   	ret
   1400049f2:	48 89 c3             	mov    %rax,%rbx
   1400049f5:	48 89 f1             	mov    %rsi,%rcx
   1400049f8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049fd:	e8 4e 03 00 00       	call   140004d50 <_ZdlPvy>
   140004a02:	48 89 d9             	mov    %rbx,%rcx
   140004a05:	e8 86 14 00 00       	call   140005e90 <_Unwind_Resume>
   140004a0a:	90                   	nop
   140004a0b:	90                   	nop
   140004a0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004a10 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb>:
   140004a10:	41 54                	push   %r12
   140004a12:	55                   	push   %rbp
   140004a13:	57                   	push   %rdi
   140004a14:	56                   	push   %rsi
   140004a15:	53                   	push   %rbx
   140004a16:	48 83 ec 50          	sub    $0x50,%rsp
   140004a1a:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140004a1f:	44 88 49 0c          	mov    %r9b,0xc(%rcx)
   140004a23:	48 89 d7             	mov    %rdx,%rdi
   140004a26:	48 89 cd             	mov    %rcx,%rbp
   140004a29:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140004a2e:	44 89 41 08          	mov    %r8d,0x8(%rcx)
   140004a32:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004a37:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   140004a3c:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140004a40:	e8 03 03 00 00       	call   140004d48 <_Znwy>
   140004a45:	48 8b 1f             	mov    (%rdi),%rbx
   140004a48:	0f 11 74 24 20       	movups %xmm6,0x20(%rsp)
   140004a4d:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004a54:	00 00 
   140004a56:	49 89 c4             	mov    %rax,%r12
   140004a59:	48 39 df             	cmp    %rbx,%rdi
   140004a5c:	74 2c                	je     140004a8a <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x7a>
   140004a5e:	66 90                	xchg   %ax,%ax
   140004a60:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004a65:	e8 de 02 00 00       	call   140004d48 <_Znwy>
   140004a6a:	48 89 c1             	mov    %rax,%rcx
   140004a6d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004a71:	48 89 f2             	mov    %rsi,%rdx
   140004a74:	88 41 10             	mov    %al,0x10(%rcx)
   140004a77:	e8 24 03 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004a7c:	48 8b 1b             	mov    (%rbx),%rbx
   140004a7f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004a85:	48 39 df             	cmp    %rbx,%rdi
   140004a88:	75 d6                	jne    140004a60 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x50>
   140004a8a:	48 89 f2             	mov    %rsi,%rdx
   140004a8d:	4c 89 e1             	mov    %r12,%rcx
   140004a90:	e8 ab cf ff ff       	call   140001a40 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE>
   140004a95:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140004a9a:	4c 89 65 00          	mov    %r12,0x0(%rbp)
   140004a9e:	48 39 f3             	cmp    %rsi,%rbx
   140004aa1:	74 1a                	je     140004abd <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xad>
   140004aa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004aa8:	48 89 d9             	mov    %rbx,%rcx
   140004aab:	48 8b 1b             	mov    (%rbx),%rbx
   140004aae:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ab3:	e8 98 02 00 00       	call   140004d50 <_ZdlPvy>
   140004ab8:	48 39 f3             	cmp    %rsi,%rbx
   140004abb:	75 eb                	jne    140004aa8 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x98>
   140004abd:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140004ac2:	48 83 c4 50          	add    $0x50,%rsp
   140004ac6:	5b                   	pop    %rbx
   140004ac7:	5e                   	pop    %rsi
   140004ac8:	5f                   	pop    %rdi
   140004ac9:	5d                   	pop    %rbp
   140004aca:	41 5c                	pop    %r12
   140004acc:	c3                   	ret
   140004acd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004ad2:	48 89 c3             	mov    %rax,%rbx
   140004ad5:	48 39 f1             	cmp    %rsi,%rcx
   140004ad8:	74 31                	je     140004b0b <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xfb>
   140004ada:	48 8b 39             	mov    (%rcx),%rdi
   140004add:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ae2:	e8 69 02 00 00       	call   140004d50 <_ZdlPvy>
   140004ae7:	48 89 f9             	mov    %rdi,%rcx
   140004aea:	eb e9                	jmp    140004ad5 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xc5>
   140004aec:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004af1:	48 89 c3             	mov    %rax,%rbx
   140004af4:	48 39 f1             	cmp    %rsi,%rcx
   140004af7:	74 12                	je     140004b0b <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xfb>
   140004af9:	48 8b 39             	mov    (%rcx),%rdi
   140004afc:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b01:	e8 4a 02 00 00       	call   140004d50 <_ZdlPvy>
   140004b06:	48 89 f9             	mov    %rdi,%rcx
   140004b09:	eb e9                	jmp    140004af4 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xe4>
   140004b0b:	4c 89 e1             	mov    %r12,%rcx
   140004b0e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b13:	e8 38 02 00 00       	call   140004d50 <_ZdlPvy>
   140004b18:	48 89 d9             	mov    %rbx,%rcx
   140004b1b:	e8 70 13 00 00       	call   140005e90 <_Unwind_Resume>
   140004b20:	90                   	nop
   140004b21:	90                   	nop
   140004b22:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004b29:	00 00 00 00 
   140004b2d:	0f 1f 00             	nopl   (%rax)

0000000140004b30 <_ZN15SignedMagnitudeD1Ev>:
   140004b30:	53                   	push   %rbx
   140004b31:	48 83 ec 20          	sub    $0x20,%rsp
   140004b35:	48 8b 19             	mov    (%rcx),%rbx
   140004b38:	48 85 db             	test   %rbx,%rbx
   140004b3b:	74 23                	je     140004b60 <_ZN15SignedMagnitudeD1Ev+0x30>
   140004b3d:	48 89 d9             	mov    %rbx,%rcx
   140004b40:	e8 9b cf ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004b45:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b4a:	48 89 d9             	mov    %rbx,%rcx
   140004b4d:	48 83 c4 20          	add    $0x20,%rsp
   140004b51:	5b                   	pop    %rbx
   140004b52:	e9 f9 01 00 00       	jmp    140004d50 <_ZdlPvy>
   140004b57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004b5e:	00 00 
   140004b60:	48 83 c4 20          	add    $0x20,%rsp
   140004b64:	5b                   	pop    %rbx
   140004b65:	c3                   	ret
   140004b66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004b6d:	00 00 00 

0000000140004b70 <_ZN15SignedMagnitude7getByteB5cxx11Ev>:
   140004b70:	57                   	push   %rdi
   140004b71:	56                   	push   %rsi
   140004b72:	53                   	push   %rbx
   140004b73:	48 83 ec 20          	sub    $0x20,%rsp
   140004b77:	48 8b 3a             	mov    (%rdx),%rdi
   140004b7a:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   140004b7f:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140004b86:	00 
   140004b87:	48 89 cb             	mov    %rcx,%rbx
   140004b8a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004b8e:	0f 11 01             	movups %xmm0,(%rcx)
   140004b91:	48 8b 37             	mov    (%rdi),%rsi
   140004b94:	48 39 f7             	cmp    %rsi,%rdi
   140004b97:	74 30                	je     140004bc9 <_ZN15SignedMagnitude7getByteB5cxx11Ev+0x59>
   140004b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004ba0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004ba5:	e8 9e 01 00 00       	call   140004d48 <_Znwy>
   140004baa:	48 89 c1             	mov    %rax,%rcx
   140004bad:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140004bb1:	48 89 da             	mov    %rbx,%rdx
   140004bb4:	88 41 10             	mov    %al,0x10(%rcx)
   140004bb7:	e8 e4 01 00 00       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004bbc:	48 8b 36             	mov    (%rsi),%rsi
   140004bbf:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   140004bc4:	48 39 f7             	cmp    %rsi,%rdi
   140004bc7:	75 d7                	jne    140004ba0 <_ZN15SignedMagnitude7getByteB5cxx11Ev+0x30>
   140004bc9:	48 89 d8             	mov    %rbx,%rax
   140004bcc:	48 83 c4 20          	add    $0x20,%rsp
   140004bd0:	5b                   	pop    %rbx
   140004bd1:	5e                   	pop    %rsi
   140004bd2:	5f                   	pop    %rdi
   140004bd3:	c3                   	ret
   140004bd4:	48 8b 0b             	mov    (%rbx),%rcx
   140004bd7:	48 89 c6             	mov    %rax,%rsi
   140004bda:	48 39 cb             	cmp    %rcx,%rbx
   140004bdd:	74 12                	je     140004bf1 <_ZN15SignedMagnitude7getByteB5cxx11Ev+0x81>
   140004bdf:	48 8b 39             	mov    (%rcx),%rdi
   140004be2:	ba 18 00 00 00       	mov    $0x18,%edx
   140004be7:	e8 64 01 00 00       	call   140004d50 <_ZdlPvy>
   140004bec:	48 89 f9             	mov    %rdi,%rcx
   140004bef:	eb e9                	jmp    140004bda <_ZN15SignedMagnitude7getByteB5cxx11Ev+0x6a>
   140004bf1:	48 89 f1             	mov    %rsi,%rcx
   140004bf4:	e8 97 12 00 00       	call   140005e90 <_Unwind_Resume>
   140004bf9:	90                   	nop
   140004bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140004c00 <_ZN15SignedMagnitude11getNegativeEv>:
   140004c00:	0f b6 41 0c          	movzbl 0xc(%rcx),%eax
   140004c04:	c3                   	ret
   140004c05:	90                   	nop
   140004c06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004c0d:	00 00 00 

0000000140004c10 <_ZN15SignedMagnitude8toStringB5cxx11Ev>:
   140004c10:	57                   	push   %rdi
   140004c11:	56                   	push   %rsi
   140004c12:	53                   	push   %rbx
   140004c13:	48 83 ec 50          	sub    $0x50,%rsp
   140004c17:	48 89 d3             	mov    %rdx,%rbx
   140004c1a:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140004c1f:	48 8b 12             	mov    (%rdx),%rdx
   140004c22:	48 89 ce             	mov    %rcx,%rsi
   140004c25:	48 89 f9             	mov    %rdi,%rcx
   140004c28:	e8 b3 de ff ff       	call   140002ae0 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   140004c2d:	80 7b 0c 01          	cmpb   $0x1,0xc(%rbx)
   140004c31:	4c 8d 0d 3a 34 00 00 	lea    0x343a(%rip),%r9        # 140008072 <.rdata+0x2>
   140004c38:	48 89 f9             	mov    %rdi,%rcx
   140004c3b:	48 19 c0             	sbb    %rax,%rax
   140004c3e:	48 83 c0 01          	add    $0x1,%rax
   140004c42:	80 7b 0c 00          	cmpb   $0x0,0xc(%rbx)
   140004c46:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140004c4b:	48 8d 05 1e 34 00 00 	lea    0x341e(%rip),%rax        # 140008070 <.rdata>
   140004c52:	4c 0f 45 c8          	cmovne %rax,%r9
   140004c56:	45 31 c0             	xor    %r8d,%r8d
   140004c59:	31 d2                	xor    %edx,%edx
   140004c5b:	e8 78 01 00 00       	call   140004dd8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140004c60:	48 8d 4e 10          	lea    0x10(%rsi),%rcx
   140004c64:	48 8d 78 10          	lea    0x10(%rax),%rdi
   140004c68:	48 89 c3             	mov    %rax,%rbx
   140004c6b:	48 89 0e             	mov    %rcx,(%rsi)
   140004c6e:	48 8b 10             	mov    (%rax),%rdx
   140004c71:	48 8b 40 08          	mov    0x8(%rax),%rax
   140004c75:	48 39 fa             	cmp    %rdi,%rdx
   140004c78:	74 46                	je     140004cc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xb0>
   140004c7a:	48 89 16             	mov    %rdx,(%rsi)
   140004c7d:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   140004c81:	48 89 56 10          	mov    %rdx,0x10(%rsi)
   140004c85:	48 89 3b             	mov    %rdi,(%rbx)
   140004c88:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140004c8d:	48 89 46 08          	mov    %rax,0x8(%rsi)
   140004c91:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
   140004c96:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
   140004c9d:	00 
   140004c9e:	c6 43 10 00          	movb   $0x0,0x10(%rbx)
   140004ca2:	48 39 c1             	cmp    %rax,%rcx
   140004ca5:	74 0e                	je     140004cb5 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xa5>
   140004ca7:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140004cac:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004cb0:	e8 9b 00 00 00       	call   140004d50 <_ZdlPvy>
   140004cb5:	48 89 f0             	mov    %rsi,%rax
   140004cb8:	48 83 c4 50          	add    $0x50,%rsp
   140004cbc:	5b                   	pop    %rbx
   140004cbd:	5e                   	pop    %rsi
   140004cbe:	5f                   	pop    %rdi
   140004cbf:	c3                   	ret
   140004cc0:	4c 8d 40 01          	lea    0x1(%rax),%r8
   140004cc4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   140004ccb:	4d 85 c0             	test   %r8,%r8
   140004cce:	74 b5                	je     140004c85 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x75>
   140004cd0:	48 89 fa             	mov    %rdi,%rdx
   140004cd3:	e8 e8 12 00 00       	call   140005fc0 <memcpy>
   140004cd8:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140004cdc:	eb a7                	jmp    140004c85 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x75>
   140004cde:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140004ce3:	48 89 c3             	mov    %rax,%rbx
   140004ce6:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
   140004ceb:	48 39 c1             	cmp    %rax,%rcx
   140004cee:	74 0e                	je     140004cfe <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xee>
   140004cf0:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140004cf5:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004cf9:	e8 52 00 00 00       	call   140004d50 <_ZdlPvy>
   140004cfe:	48 89 d9             	mov    %rbx,%rcx
   140004d01:	e8 8a 11 00 00       	call   140005e90 <_Unwind_Resume>
   140004d06:	90                   	nop
   140004d07:	90                   	nop
   140004d08:	90                   	nop
   140004d09:	90                   	nop
   140004d0a:	90                   	nop
   140004d0b:	90                   	nop
   140004d0c:	90                   	nop
   140004d0d:	90                   	nop
   140004d0e:	90                   	nop
   140004d0f:	90                   	nop

0000000140004d10 <__gxx_personality_seh0>:
   140004d10:	ff 25 6e 78 00 00    	jmp    *0x786e(%rip)        # 14000c584 <__imp___gxx_personality_seh0>
   140004d16:	90                   	nop
   140004d17:	90                   	nop

0000000140004d18 <__cxa_throw>:
   140004d18:	ff 25 5e 78 00 00    	jmp    *0x785e(%rip)        # 14000c57c <__imp___cxa_throw>
   140004d1e:	90                   	nop
   140004d1f:	90                   	nop

0000000140004d20 <__cxa_rethrow>:
   140004d20:	ff 25 4e 78 00 00    	jmp    *0x784e(%rip)        # 14000c574 <__imp___cxa_rethrow>
   140004d26:	90                   	nop
   140004d27:	90                   	nop

0000000140004d28 <__cxa_free_exception>:
   140004d28:	ff 25 3e 78 00 00    	jmp    *0x783e(%rip)        # 14000c56c <__imp___cxa_free_exception>
   140004d2e:	90                   	nop
   140004d2f:	90                   	nop

0000000140004d30 <__cxa_end_catch>:
   140004d30:	ff 25 2e 78 00 00    	jmp    *0x782e(%rip)        # 14000c564 <__imp___cxa_end_catch>
   140004d36:	90                   	nop
   140004d37:	90                   	nop

0000000140004d38 <__cxa_begin_catch>:
   140004d38:	ff 25 1e 78 00 00    	jmp    *0x781e(%rip)        # 14000c55c <__imp___cxa_begin_catch>
   140004d3e:	90                   	nop
   140004d3f:	90                   	nop

0000000140004d40 <__cxa_allocate_exception>:
   140004d40:	ff 25 0e 78 00 00    	jmp    *0x780e(%rip)        # 14000c554 <__imp___cxa_allocate_exception>
   140004d46:	90                   	nop
   140004d47:	90                   	nop

0000000140004d48 <_Znwy>:
   140004d48:	ff 25 fe 77 00 00    	jmp    *0x77fe(%rip)        # 14000c54c <__imp__Znwy>
   140004d4e:	90                   	nop
   140004d4f:	90                   	nop

0000000140004d50 <_ZdlPvy>:
   140004d50:	ff 25 ee 77 00 00    	jmp    *0x77ee(%rip)        # 14000c544 <__imp__ZdlPvy>
   140004d56:	90                   	nop
   140004d57:	90                   	nop

0000000140004d58 <_ZSt20__throw_length_errorPKc>:
   140004d58:	ff 25 9e 77 00 00    	jmp    *0x779e(%rip)        # 14000c4fc <__imp__ZSt20__throw_length_errorPKc>
   140004d5e:	90                   	nop
   140004d5f:	90                   	nop

0000000140004d60 <_ZSt16__throw_bad_castv>:
   140004d60:	ff 25 8e 77 00 00    	jmp    *0x778e(%rip)        # 14000c4f4 <__imp__ZSt16__throw_bad_castv>
   140004d66:	90                   	nop
   140004d67:	90                   	nop

0000000140004d68 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>:
   140004d68:	ff 25 7e 77 00 00    	jmp    *0x777e(%rip)        # 14000c4ec <__imp__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140004d6e:	90                   	nop
   140004d6f:	90                   	nop

0000000140004d70 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>:
   140004d70:	ff 25 6e 77 00 00    	jmp    *0x776e(%rip)        # 14000c4e4 <__imp__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140004d76:	90                   	nop
   140004d77:	90                   	nop

0000000140004d78 <_ZNSt8ios_baseD2Ev>:
   140004d78:	ff 25 5e 77 00 00    	jmp    *0x775e(%rip)        # 14000c4dc <__imp__ZNSt8ios_baseD2Ev>
   140004d7e:	90                   	nop
   140004d7f:	90                   	nop

0000000140004d80 <_ZNSt8ios_baseC2Ev>:
   140004d80:	ff 25 4e 77 00 00    	jmp    *0x774e(%rip)        # 14000c4d4 <__imp__ZNSt8ios_baseC2Ev>
   140004d86:	90                   	nop
   140004d87:	90                   	nop

0000000140004d88 <_ZNSt8ios_base4InitD1Ev>:
   140004d88:	ff 25 3e 77 00 00    	jmp    *0x773e(%rip)        # 14000c4cc <__imp__ZNSt8ios_base4InitD1Ev>
   140004d8e:	90                   	nop
   140004d8f:	90                   	nop

0000000140004d90 <_ZNSt8ios_base4InitC1Ev>:
   140004d90:	ff 25 2e 77 00 00    	jmp    *0x772e(%rip)        # 14000c4c4 <__imp__ZNSt8ios_base4InitC1Ev>
   140004d96:	90                   	nop
   140004d97:	90                   	nop

0000000140004d98 <_ZNSt8__detail15_List_node_base9_M_unhookEv>:
   140004d98:	ff 25 1e 77 00 00    	jmp    *0x771e(%rip)        # 14000c4bc <__imp__ZNSt8__detail15_List_node_base9_M_unhookEv>
   140004d9e:	90                   	nop
   140004d9f:	90                   	nop

0000000140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>:
   140004da0:	ff 25 0e 77 00 00    	jmp    *0x770e(%rip)        # 14000c4b4 <__imp__ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004da6:	90                   	nop
   140004da7:	90                   	nop

0000000140004da8 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>:
   140004da8:	ff 25 fe 76 00 00    	jmp    *0x76fe(%rip)        # 14000c4ac <__imp__ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140004dae:	90                   	nop
   140004daf:	90                   	nop

0000000140004db0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140004db0:	ff 25 ee 76 00 00    	jmp    *0x76ee(%rip)        # 14000c4a4 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140004db6:	90                   	nop
   140004db7:	90                   	nop

0000000140004db8 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>:
   140004db8:	ff 25 de 76 00 00    	jmp    *0x76de(%rip)        # 14000c49c <__imp__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   140004dbe:	90                   	nop
   140004dbf:	90                   	nop

0000000140004dc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>:
   140004dc0:	ff 25 ce 76 00 00    	jmp    *0x76ce(%rip)        # 14000c494 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   140004dc6:	90                   	nop
   140004dc7:	90                   	nop

0000000140004dc8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>:
   140004dc8:	ff 25 be 76 00 00    	jmp    *0x76be(%rip)        # 14000c48c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140004dce:	90                   	nop
   140004dcf:	90                   	nop

0000000140004dd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>:
   140004dd0:	ff 25 ae 76 00 00    	jmp    *0x76ae(%rip)        # 14000c484 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   140004dd6:	90                   	nop
   140004dd7:	90                   	nop

0000000140004dd8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>:
   140004dd8:	ff 25 9e 76 00 00    	jmp    *0x769e(%rip)        # 14000c47c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140004dde:	90                   	nop
   140004ddf:	90                   	nop

0000000140004de0 <_ZNSt6localeD1Ev>:
   140004de0:	ff 25 8e 76 00 00    	jmp    *0x768e(%rip)        # 14000c474 <__imp__ZNSt6localeD1Ev>
   140004de6:	90                   	nop
   140004de7:	90                   	nop

0000000140004de8 <_ZNSt6localeC1Ev>:
   140004de8:	ff 25 7e 76 00 00    	jmp    *0x767e(%rip)        # 14000c46c <__imp__ZNSt6localeC1Ev>
   140004dee:	90                   	nop
   140004def:	90                   	nop

0000000140004df0 <_ZNSt16invalid_argumentD1Ev>:
   140004df0:	ff 25 6e 76 00 00    	jmp    *0x766e(%rip)        # 14000c464 <__imp__ZNSt16invalid_argumentD1Ev>
   140004df6:	90                   	nop
   140004df7:	90                   	nop

0000000140004df8 <_ZNSt16invalid_argumentC1EPKc>:
   140004df8:	ff 25 5e 76 00 00    	jmp    *0x765e(%rip)        # 14000c45c <__imp__ZNSt16invalid_argumentC1EPKc>
   140004dfe:	90                   	nop
   140004dff:	90                   	nop

0000000140004e00 <_ZNSt13runtime_errorD1Ev>:
   140004e00:	ff 25 4e 76 00 00    	jmp    *0x764e(%rip)        # 14000c454 <__imp__ZNSt13runtime_errorD1Ev>
   140004e06:	90                   	nop
   140004e07:	90                   	nop

0000000140004e08 <_ZNSt13runtime_errorC1EPKc>:
   140004e08:	ff 25 3e 76 00 00    	jmp    *0x763e(%rip)        # 14000c44c <__imp__ZNSt13runtime_errorC1EPKc>
   140004e0e:	90                   	nop
   140004e0f:	90                   	nop

0000000140004e10 <_ZNSolsEi>:
   140004e10:	ff 25 2e 76 00 00    	jmp    *0x762e(%rip)        # 14000c444 <__imp__ZNSolsEi>
   140004e16:	90                   	nop
   140004e17:	90                   	nop

0000000140004e18 <_ZNSo5flushEv>:
   140004e18:	ff 25 1e 76 00 00    	jmp    *0x761e(%rip)        # 14000c43c <__imp__ZNSo5flushEv>
   140004e1e:	90                   	nop
   140004e1f:	90                   	nop

0000000140004e20 <_ZNSo3putEc>:
   140004e20:	ff 25 0e 76 00 00    	jmp    *0x760e(%rip)        # 14000c434 <__imp__ZNSo3putEc>
   140004e26:	90                   	nop
   140004e27:	90                   	nop

0000000140004e28 <_ZNKSt5ctypeIcE13_M_widen_initEv>:
   140004e28:	ff 25 fe 75 00 00    	jmp    *0x75fe(%rip)        # 14000c42c <__imp__ZNKSt5ctypeIcE13_M_widen_initEv>
   140004e2e:	90                   	nop
   140004e2f:	90                   	nop

0000000140004e30 <__do_global_dtors>:
   140004e30:	48 83 ec 28          	sub    $0x28,%rsp
   140004e34:	48 8b 05 c5 21 00 00 	mov    0x21c5(%rip),%rax        # 140007000 <__data_start__>
   140004e3b:	48 8b 00             	mov    (%rax),%rax
   140004e3e:	48 85 c0             	test   %rax,%rax
   140004e41:	74 22                	je     140004e65 <__do_global_dtors+0x35>
   140004e43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004e48:	ff d0                	call   *%rax
   140004e4a:	48 8b 05 af 21 00 00 	mov    0x21af(%rip),%rax        # 140007000 <__data_start__>
   140004e51:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140004e55:	48 8b 40 08          	mov    0x8(%rax),%rax
   140004e59:	48 89 15 a0 21 00 00 	mov    %rdx,0x21a0(%rip)        # 140007000 <__data_start__>
   140004e60:	48 85 c0             	test   %rax,%rax
   140004e63:	75 e3                	jne    140004e48 <__do_global_dtors+0x18>
   140004e65:	48 83 c4 28          	add    $0x28,%rsp
   140004e69:	c3                   	ret
   140004e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140004e70 <__do_global_ctors>:
   140004e70:	56                   	push   %rsi
   140004e71:	53                   	push   %rbx
   140004e72:	48 83 ec 28          	sub    $0x28,%rsp
   140004e76:	48 8b 15 e3 35 00 00 	mov    0x35e3(%rip),%rdx        # 140008460 <.refptr.__CTOR_LIST__>
   140004e7d:	48 8b 02             	mov    (%rdx),%rax
   140004e80:	89 c1                	mov    %eax,%ecx
   140004e82:	83 f8 ff             	cmp    $0xffffffff,%eax
   140004e85:	74 39                	je     140004ec0 <__do_global_ctors+0x50>
   140004e87:	85 c9                	test   %ecx,%ecx
   140004e89:	74 20                	je     140004eab <__do_global_ctors+0x3b>
   140004e8b:	89 c8                	mov    %ecx,%eax
   140004e8d:	83 e9 01             	sub    $0x1,%ecx
   140004e90:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140004e94:	48 29 c8             	sub    %rcx,%rax
   140004e97:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   140004e9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004ea0:	ff 13                	call   *(%rbx)
   140004ea2:	48 83 eb 08          	sub    $0x8,%rbx
   140004ea6:	48 39 f3             	cmp    %rsi,%rbx
   140004ea9:	75 f5                	jne    140004ea0 <__do_global_ctors+0x30>
   140004eab:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140004e30 <__do_global_dtors>
   140004eb2:	48 83 c4 28          	add    $0x28,%rsp
   140004eb6:	5b                   	pop    %rbx
   140004eb7:	5e                   	pop    %rsi
   140004eb8:	e9 53 c5 ff ff       	jmp    140001410 <atexit>
   140004ebd:	0f 1f 00             	nopl   (%rax)
   140004ec0:	31 c0                	xor    %eax,%eax
   140004ec2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004ec8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140004ecc:	89 c1                	mov    %eax,%ecx
   140004ece:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140004ed3:	4c 89 c0             	mov    %r8,%rax
   140004ed6:	75 f0                	jne    140004ec8 <__do_global_ctors+0x58>
   140004ed8:	eb ad                	jmp    140004e87 <__do_global_ctors+0x17>
   140004eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140004ee0 <__main>:
   140004ee0:	8b 05 9a 61 00 00    	mov    0x619a(%rip),%eax        # 14000b080 <initialized>
   140004ee6:	85 c0                	test   %eax,%eax
   140004ee8:	74 06                	je     140004ef0 <__main+0x10>
   140004eea:	c3                   	ret
   140004eeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004ef0:	c7 05 86 61 00 00 01 	movl   $0x1,0x6186(%rip)        # 14000b080 <initialized>
   140004ef7:	00 00 00 
   140004efa:	e9 71 ff ff ff       	jmp    140004e70 <__do_global_ctors>
   140004eff:	90                   	nop

0000000140004f00 <_setargv>:
   140004f00:	31 c0                	xor    %eax,%eax
   140004f02:	c3                   	ret
   140004f03:	90                   	nop
   140004f04:	90                   	nop
   140004f05:	90                   	nop
   140004f06:	90                   	nop
   140004f07:	90                   	nop
   140004f08:	90                   	nop
   140004f09:	90                   	nop
   140004f0a:	90                   	nop
   140004f0b:	90                   	nop
   140004f0c:	90                   	nop
   140004f0d:	90                   	nop
   140004f0e:	90                   	nop
   140004f0f:	90                   	nop

0000000140004f10 <__dyn_tls_dtor>:
   140004f10:	48 83 ec 28          	sub    $0x28,%rsp
   140004f14:	83 fa 03             	cmp    $0x3,%edx
   140004f17:	74 17                	je     140004f30 <__dyn_tls_dtor+0x20>
   140004f19:	85 d2                	test   %edx,%edx
   140004f1b:	74 13                	je     140004f30 <__dyn_tls_dtor+0x20>
   140004f1d:	b8 01 00 00 00       	mov    $0x1,%eax
   140004f22:	48 83 c4 28          	add    $0x28,%rsp
   140004f26:	c3                   	ret
   140004f27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004f2e:	00 00 
   140004f30:	e8 5b 0a 00 00       	call   140005990 <__mingw_TLScallback>
   140004f35:	b8 01 00 00 00       	mov    $0x1,%eax
   140004f3a:	48 83 c4 28          	add    $0x28,%rsp
   140004f3e:	c3                   	ret
   140004f3f:	90                   	nop

0000000140004f40 <__dyn_tls_init>:
   140004f40:	56                   	push   %rsi
   140004f41:	53                   	push   %rbx
   140004f42:	48 83 ec 28          	sub    $0x28,%rsp
   140004f46:	48 8b 05 73 34 00 00 	mov    0x3473(%rip),%rax        # 1400083c0 <.refptr._CRT_MT>
   140004f4d:	83 38 02             	cmpl   $0x2,(%rax)
   140004f50:	74 06                	je     140004f58 <__dyn_tls_init+0x18>
   140004f52:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140004f58:	83 fa 02             	cmp    $0x2,%edx
   140004f5b:	74 13                	je     140004f70 <__dyn_tls_init+0x30>
   140004f5d:	83 fa 01             	cmp    $0x1,%edx
   140004f60:	74 4e                	je     140004fb0 <__dyn_tls_init+0x70>
   140004f62:	b8 01 00 00 00       	mov    $0x1,%eax
   140004f67:	48 83 c4 28          	add    $0x28,%rsp
   140004f6b:	5b                   	pop    %rbx
   140004f6c:	5e                   	pop    %rsi
   140004f6d:	c3                   	ret
   140004f6e:	66 90                	xchg   %ax,%ax
   140004f70:	48 8d 1d e1 80 00 00 	lea    0x80e1(%rip),%rbx        # 14000d058 <__xd_z>
   140004f77:	48 8d 35 da 80 00 00 	lea    0x80da(%rip),%rsi        # 14000d058 <__xd_z>
   140004f7e:	48 39 de             	cmp    %rbx,%rsi
   140004f81:	74 df                	je     140004f62 <__dyn_tls_init+0x22>
   140004f83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004f88:	48 8b 03             	mov    (%rbx),%rax
   140004f8b:	48 85 c0             	test   %rax,%rax
   140004f8e:	74 02                	je     140004f92 <__dyn_tls_init+0x52>
   140004f90:	ff d0                	call   *%rax
   140004f92:	48 83 c3 08          	add    $0x8,%rbx
   140004f96:	48 39 de             	cmp    %rbx,%rsi
   140004f99:	75 ed                	jne    140004f88 <__dyn_tls_init+0x48>
   140004f9b:	b8 01 00 00 00       	mov    $0x1,%eax
   140004fa0:	48 83 c4 28          	add    $0x28,%rsp
   140004fa4:	5b                   	pop    %rbx
   140004fa5:	5e                   	pop    %rsi
   140004fa6:	c3                   	ret
   140004fa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004fae:	00 00 
   140004fb0:	e8 db 09 00 00       	call   140005990 <__mingw_TLScallback>
   140004fb5:	b8 01 00 00 00       	mov    $0x1,%eax
   140004fba:	48 83 c4 28          	add    $0x28,%rsp
   140004fbe:	5b                   	pop    %rbx
   140004fbf:	5e                   	pop    %rsi
   140004fc0:	c3                   	ret
   140004fc1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004fc8:	00 00 00 00 
   140004fcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004fd0 <__tlregdtor>:
   140004fd0:	31 c0                	xor    %eax,%eax
   140004fd2:	c3                   	ret
   140004fd3:	90                   	nop
   140004fd4:	90                   	nop
   140004fd5:	90                   	nop
   140004fd6:	90                   	nop
   140004fd7:	90                   	nop
   140004fd8:	90                   	nop
   140004fd9:	90                   	nop
   140004fda:	90                   	nop
   140004fdb:	90                   	nop
   140004fdc:	90                   	nop
   140004fdd:	90                   	nop
   140004fde:	90                   	nop
   140004fdf:	90                   	nop

0000000140004fe0 <_matherr>:
   140004fe0:	56                   	push   %rsi
   140004fe1:	53                   	push   %rbx
   140004fe2:	48 83 ec 78          	sub    $0x78,%rsp
   140004fe6:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140004feb:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140004ff0:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140004ff6:	83 39 06             	cmpl   $0x6,(%rcx)
   140004ff9:	0f 87 cd 00 00 00    	ja     1400050cc <_matherr+0xec>
   140004fff:	8b 01                	mov    (%rcx),%eax
   140005001:	48 8d 15 fc 31 00 00 	lea    0x31fc(%rip),%rdx        # 140008204 <.rdata+0x124>
   140005008:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000500c:	48 01 d0             	add    %rdx,%rax
   14000500f:	ff e0                	jmp    *%rax
   140005011:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005018:	48 8d 1d e0 30 00 00 	lea    0x30e0(%rip),%rbx        # 1400080ff <.rdata+0x1f>
   14000501f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140005025:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000502a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000502f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140005033:	b9 02 00 00 00       	mov    $0x2,%ecx
   140005038:	e8 e3 0e 00 00       	call   140005f20 <__acrt_iob_func>
   14000503d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140005044:	49 89 d8             	mov    %rbx,%r8
   140005047:	48 8d 15 8a 31 00 00 	lea    0x318a(%rip),%rdx        # 1400081d8 <.rdata+0xf8>
   14000504e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140005054:	48 89 c1             	mov    %rax,%rcx
   140005057:	49 89 f1             	mov    %rsi,%r9
   14000505a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140005060:	e8 3b 0f 00 00       	call   140005fa0 <fprintf>
   140005065:	90                   	nop
   140005066:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000506b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140005070:	31 c0                	xor    %eax,%eax
   140005072:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140005078:	48 83 c4 78          	add    $0x78,%rsp
   14000507c:	5b                   	pop    %rbx
   14000507d:	5e                   	pop    %rsi
   14000507e:	c3                   	ret
   14000507f:	90                   	nop
   140005080:	48 8d 1d 59 30 00 00 	lea    0x3059(%rip),%rbx        # 1400080e0 <.rdata>
   140005087:	eb 96                	jmp    14000501f <_matherr+0x3f>
   140005089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005090:	48 8d 1d a9 30 00 00 	lea    0x30a9(%rip),%rbx        # 140008140 <.rdata+0x60>
   140005097:	eb 86                	jmp    14000501f <_matherr+0x3f>
   140005099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400050a0:	48 8d 1d 79 30 00 00 	lea    0x3079(%rip),%rbx        # 140008120 <.rdata+0x40>
   1400050a7:	e9 73 ff ff ff       	jmp    14000501f <_matherr+0x3f>
   1400050ac:	0f 1f 40 00          	nopl   0x0(%rax)
   1400050b0:	48 8d 1d d9 30 00 00 	lea    0x30d9(%rip),%rbx        # 140008190 <.rdata+0xb0>
   1400050b7:	e9 63 ff ff ff       	jmp    14000501f <_matherr+0x3f>
   1400050bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400050c0:	48 8d 1d a1 30 00 00 	lea    0x30a1(%rip),%rbx        # 140008168 <.rdata+0x88>
   1400050c7:	e9 53 ff ff ff       	jmp    14000501f <_matherr+0x3f>
   1400050cc:	48 8d 1d f3 30 00 00 	lea    0x30f3(%rip),%rbx        # 1400081c6 <.rdata+0xe6>
   1400050d3:	e9 47 ff ff ff       	jmp    14000501f <_matherr+0x3f>
   1400050d8:	90                   	nop
   1400050d9:	90                   	nop
   1400050da:	90                   	nop
   1400050db:	90                   	nop
   1400050dc:	90                   	nop
   1400050dd:	90                   	nop
   1400050de:	90                   	nop
   1400050df:	90                   	nop

00000001400050e0 <_fpreset>:
   1400050e0:	db e3                	fninit
   1400050e2:	c3                   	ret
   1400050e3:	90                   	nop
   1400050e4:	90                   	nop
   1400050e5:	90                   	nop
   1400050e6:	90                   	nop
   1400050e7:	90                   	nop
   1400050e8:	90                   	nop
   1400050e9:	90                   	nop
   1400050ea:	90                   	nop
   1400050eb:	90                   	nop
   1400050ec:	90                   	nop
   1400050ed:	90                   	nop
   1400050ee:	90                   	nop
   1400050ef:	90                   	nop

00000001400050f0 <__report_error>:
   1400050f0:	56                   	push   %rsi
   1400050f1:	53                   	push   %rbx
   1400050f2:	48 83 ec 38          	sub    $0x38,%rsp
   1400050f6:	48 89 cb             	mov    %rcx,%rbx
   1400050f9:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   1400050fe:	b9 02 00 00 00       	mov    $0x2,%ecx
   140005103:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140005108:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000510d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140005112:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140005117:	e8 04 0e 00 00       	call   140005f20 <__acrt_iob_func>
   14000511c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140005122:	ba 01 00 00 00       	mov    $0x1,%edx
   140005127:	48 8d 0d f2 30 00 00 	lea    0x30f2(%rip),%rcx        # 140008220 <.rdata>
   14000512e:	49 89 c1             	mov    %rax,%r9
   140005131:	e8 7a 0e 00 00       	call   140005fb0 <fwrite>
   140005136:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   14000513b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140005140:	e8 db 0d 00 00       	call   140005f20 <__acrt_iob_func>
   140005145:	48 89 da             	mov    %rbx,%rdx
   140005148:	48 89 c1             	mov    %rax,%rcx
   14000514b:	49 89 f0             	mov    %rsi,%r8
   14000514e:	e8 8d 0e 00 00       	call   140005fe0 <vfprintf>
   140005153:	e8 30 0e 00 00       	call   140005f88 <abort>
   140005158:	90                   	nop
   140005159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140005160 <mark_section_writable>:
   140005160:	57                   	push   %rdi
   140005161:	56                   	push   %rsi
   140005162:	53                   	push   %rbx
   140005163:	48 83 ec 50          	sub    $0x50,%rsp
   140005167:	48 63 35 76 5f 00 00 	movslq 0x5f76(%rip),%rsi        # 14000b0e4 <maxSections>
   14000516e:	48 89 cb             	mov    %rcx,%rbx
   140005171:	85 f6                	test   %esi,%esi
   140005173:	0f 8e 17 01 00 00    	jle    140005290 <mark_section_writable+0x130>
   140005179:	48 8b 05 68 5f 00 00 	mov    0x5f68(%rip),%rax        # 14000b0e8 <the_secs>
   140005180:	45 31 c9             	xor    %r9d,%r9d
   140005183:	48 83 c0 18          	add    $0x18,%rax
   140005187:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000518e:	00 00 
   140005190:	4c 8b 00             	mov    (%rax),%r8
   140005193:	4c 39 c3             	cmp    %r8,%rbx
   140005196:	72 13                	jb     1400051ab <mark_section_writable+0x4b>
   140005198:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000519c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000519f:	49 01 d0             	add    %rdx,%r8
   1400051a2:	4c 39 c3             	cmp    %r8,%rbx
   1400051a5:	0f 82 8a 00 00 00    	jb     140005235 <mark_section_writable+0xd5>
   1400051ab:	41 83 c1 01          	add    $0x1,%r9d
   1400051af:	48 83 c0 28          	add    $0x28,%rax
   1400051b3:	41 39 f1             	cmp    %esi,%r9d
   1400051b6:	75 d8                	jne    140005190 <mark_section_writable+0x30>
   1400051b8:	48 89 d9             	mov    %rbx,%rcx
   1400051bb:	e8 f0 09 00 00       	call   140005bb0 <__mingw_GetSectionForAddress>
   1400051c0:	48 89 c7             	mov    %rax,%rdi
   1400051c3:	48 85 c0             	test   %rax,%rax
   1400051c6:	0f 84 e6 00 00 00    	je     1400052b2 <mark_section_writable+0x152>
   1400051cc:	48 8b 05 15 5f 00 00 	mov    0x5f15(%rip),%rax        # 14000b0e8 <the_secs>
   1400051d3:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   1400051d7:	48 c1 e3 03          	shl    $0x3,%rbx
   1400051db:	48 01 d8             	add    %rbx,%rax
   1400051de:	48 89 78 20          	mov    %rdi,0x20(%rax)
   1400051e2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400051e8:	e8 03 0b 00 00       	call   140005cf0 <_GetPEImageBase>
   1400051ed:	8b 57 0c             	mov    0xc(%rdi),%edx
   1400051f0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   1400051f6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   1400051fa:	48 8b 05 e7 5e 00 00 	mov    0x5ee7(%rip),%rax        # 14000b0e8 <the_secs>
   140005201:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140005206:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000520b:	ff 15 43 71 00 00    	call   *0x7143(%rip)        # 14000c354 <__imp_VirtualQuery>
   140005211:	48 85 c0             	test   %rax,%rax
   140005214:	0f 84 7d 00 00 00    	je     140005297 <mark_section_writable+0x137>
   14000521a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000521e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140005221:	83 e2 bf             	and    $0xffffffbf,%edx
   140005224:	74 08                	je     14000522e <mark_section_writable+0xce>
   140005226:	8d 50 fc             	lea    -0x4(%rax),%edx
   140005229:	83 e2 fb             	and    $0xfffffffb,%edx
   14000522c:	75 12                	jne    140005240 <mark_section_writable+0xe0>
   14000522e:	83 05 af 5e 00 00 01 	addl   $0x1,0x5eaf(%rip)        # 14000b0e4 <maxSections>
   140005235:	48 83 c4 50          	add    $0x50,%rsp
   140005239:	5b                   	pop    %rbx
   14000523a:	5e                   	pop    %rsi
   14000523b:	5f                   	pop    %rdi
   14000523c:	c3                   	ret
   14000523d:	0f 1f 00             	nopl   (%rax)
   140005240:	83 f8 02             	cmp    $0x2,%eax
   140005243:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005248:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000524d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140005253:	b8 04 00 00 00       	mov    $0x4,%eax
   140005258:	44 0f 44 c0          	cmove  %eax,%r8d
   14000525c:	48 03 1d 85 5e 00 00 	add    0x5e85(%rip),%rbx        # 14000b0e8 <the_secs>
   140005263:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140005267:	49 89 d9             	mov    %rbx,%r9
   14000526a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000526e:	ff 15 d8 70 00 00    	call   *0x70d8(%rip)        # 14000c34c <__imp_VirtualProtect>
   140005274:	85 c0                	test   %eax,%eax
   140005276:	75 b6                	jne    14000522e <mark_section_writable+0xce>
   140005278:	ff 15 9e 70 00 00    	call   *0x709e(%rip)        # 14000c31c <__imp_GetLastError>
   14000527e:	48 8d 0d 13 30 00 00 	lea    0x3013(%rip),%rcx        # 140008298 <.rdata+0x78>
   140005285:	89 c2                	mov    %eax,%edx
   140005287:	e8 64 fe ff ff       	call   1400050f0 <__report_error>
   14000528c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005290:	31 f6                	xor    %esi,%esi
   140005292:	e9 21 ff ff ff       	jmp    1400051b8 <mark_section_writable+0x58>
   140005297:	48 8b 05 4a 5e 00 00 	mov    0x5e4a(%rip),%rax        # 14000b0e8 <the_secs>
   14000529e:	8b 57 08             	mov    0x8(%rdi),%edx
   1400052a1:	48 8d 0d b8 2f 00 00 	lea    0x2fb8(%rip),%rcx        # 140008260 <.rdata+0x40>
   1400052a8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400052ad:	e8 3e fe ff ff       	call   1400050f0 <__report_error>
   1400052b2:	48 89 da             	mov    %rbx,%rdx
   1400052b5:	48 8d 0d 84 2f 00 00 	lea    0x2f84(%rip),%rcx        # 140008240 <.rdata+0x20>
   1400052bc:	e8 2f fe ff ff       	call   1400050f0 <__report_error>
   1400052c1:	90                   	nop
   1400052c2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400052c9:	00 00 00 00 
   1400052cd:	0f 1f 00             	nopl   (%rax)

00000001400052d0 <_pei386_runtime_relocator>:
   1400052d0:	55                   	push   %rbp
   1400052d1:	41 57                	push   %r15
   1400052d3:	41 56                	push   %r14
   1400052d5:	41 55                	push   %r13
   1400052d7:	41 54                	push   %r12
   1400052d9:	57                   	push   %rdi
   1400052da:	56                   	push   %rsi
   1400052db:	53                   	push   %rbx
   1400052dc:	48 83 ec 48          	sub    $0x48,%rsp
   1400052e0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400052e5:	44 8b 25 f4 5d 00 00 	mov    0x5df4(%rip),%r12d        # 14000b0e0 <was_init.0>
   1400052ec:	45 85 e4             	test   %r12d,%r12d
   1400052ef:	74 17                	je     140005308 <_pei386_runtime_relocator+0x38>
   1400052f1:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400052f5:	5b                   	pop    %rbx
   1400052f6:	5e                   	pop    %rsi
   1400052f7:	5f                   	pop    %rdi
   1400052f8:	41 5c                	pop    %r12
   1400052fa:	41 5d                	pop    %r13
   1400052fc:	41 5e                	pop    %r14
   1400052fe:	41 5f                	pop    %r15
   140005300:	5d                   	pop    %rbp
   140005301:	c3                   	ret
   140005302:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005308:	c7 05 ce 5d 00 00 01 	movl   $0x1,0x5dce(%rip)        # 14000b0e0 <was_init.0>
   14000530f:	00 00 00 
   140005312:	e8 19 09 00 00       	call   140005c30 <__mingw_GetSectionCount>
   140005317:	48 98                	cltq
   140005319:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   14000531d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140005324:	00 
   140005325:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140005329:	e8 72 0b 00 00       	call   140005ea0 <___chkstk_ms>
   14000532e:	4c 8b 2d 4b 31 00 00 	mov    0x314b(%rip),%r13        # 140008480 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140005335:	48 8b 1d 54 31 00 00 	mov    0x3154(%rip),%rbx        # 140008490 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   14000533c:	c7 05 9e 5d 00 00 00 	movl   $0x0,0x5d9e(%rip)        # 14000b0e4 <maxSections>
   140005343:	00 00 00 
   140005346:	48 29 c4             	sub    %rax,%rsp
   140005349:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   14000534e:	48 89 05 93 5d 00 00 	mov    %rax,0x5d93(%rip)        # 14000b0e8 <the_secs>
   140005355:	4c 89 e8             	mov    %r13,%rax
   140005358:	48 29 d8             	sub    %rbx,%rax
   14000535b:	48 83 f8 07          	cmp    $0x7,%rax
   14000535f:	7e 90                	jle    1400052f1 <_pei386_runtime_relocator+0x21>
   140005361:	8b 13                	mov    (%rbx),%edx
   140005363:	48 83 f8 0b          	cmp    $0xb,%rax
   140005367:	0f 8f 7b 01 00 00    	jg     1400054e8 <_pei386_runtime_relocator+0x218>
   14000536d:	8b 03                	mov    (%rbx),%eax
   14000536f:	85 c0                	test   %eax,%eax
   140005371:	0f 85 69 02 00 00    	jne    1400055e0 <_pei386_runtime_relocator+0x310>
   140005377:	8b 43 04             	mov    0x4(%rbx),%eax
   14000537a:	85 c0                	test   %eax,%eax
   14000537c:	0f 85 5e 02 00 00    	jne    1400055e0 <_pei386_runtime_relocator+0x310>
   140005382:	8b 53 08             	mov    0x8(%rbx),%edx
   140005385:	83 fa 01             	cmp    $0x1,%edx
   140005388:	0f 85 90 02 00 00    	jne    14000561e <_pei386_runtime_relocator+0x34e>
   14000538e:	48 83 c3 0c          	add    $0xc,%rbx
   140005392:	4c 39 eb             	cmp    %r13,%rbx
   140005395:	0f 83 56 ff ff ff    	jae    1400052f1 <_pei386_runtime_relocator+0x21>
   14000539b:	4c 8b 35 ce 30 00 00 	mov    0x30ce(%rip),%r14        # 140008470 <.refptr.__ImageBase>
   1400053a2:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   1400053a9:	ff ff ff 
   1400053ac:	eb 54                	jmp    140005402 <_pei386_runtime_relocator+0x132>
   1400053ae:	66 90                	xchg   %ax,%ax
   1400053b0:	0f b6 37             	movzbl (%rdi),%esi
   1400053b3:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400053b9:	40 84 f6             	test   %sil,%sil
   1400053bc:	0f 89 06 02 00 00    	jns    1400055c8 <_pei386_runtime_relocator+0x2f8>
   1400053c2:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   1400053c9:	48 29 c6             	sub    %rax,%rsi
   1400053cc:	4c 01 ce             	add    %r9,%rsi
   1400053cf:	85 c9                	test   %ecx,%ecx
   1400053d1:	75 17                	jne    1400053ea <_pei386_runtime_relocator+0x11a>
   1400053d3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   1400053da:	0f 8f 4f 01 00 00    	jg     14000552f <_pei386_runtime_relocator+0x25f>
   1400053e0:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   1400053e4:	0f 8c 45 01 00 00    	jl     14000552f <_pei386_runtime_relocator+0x25f>
   1400053ea:	48 89 f9             	mov    %rdi,%rcx
   1400053ed:	e8 6e fd ff ff       	call   140005160 <mark_section_writable>
   1400053f2:	40 88 37             	mov    %sil,(%rdi)
   1400053f5:	48 83 c3 0c          	add    $0xc,%rbx
   1400053f9:	4c 39 eb             	cmp    %r13,%rbx
   1400053fc:	0f 83 8e 00 00 00    	jae    140005490 <_pei386_runtime_relocator+0x1c0>
   140005402:	8b 03                	mov    (%rbx),%eax
   140005404:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140005407:	8b 7b 04             	mov    0x4(%rbx),%edi
   14000540a:	4c 01 f0             	add    %r14,%rax
   14000540d:	0f b6 d1             	movzbl %cl,%edx
   140005410:	4c 8b 08             	mov    (%rax),%r9
   140005413:	4c 01 f7             	add    %r14,%rdi
   140005416:	83 fa 20             	cmp    $0x20,%edx
   140005419:	0f 84 29 01 00 00    	je     140005548 <_pei386_runtime_relocator+0x278>
   14000541f:	0f 87 eb 00 00 00    	ja     140005510 <_pei386_runtime_relocator+0x240>
   140005425:	83 fa 08             	cmp    $0x8,%edx
   140005428:	74 86                	je     1400053b0 <_pei386_runtime_relocator+0xe0>
   14000542a:	83 fa 10             	cmp    $0x10,%edx
   14000542d:	0f 85 df 01 00 00    	jne    140005612 <_pei386_runtime_relocator+0x342>
   140005433:	0f b7 37             	movzwl (%rdi),%esi
   140005436:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   14000543c:	66 85 f6             	test   %si,%si
   14000543f:	0f 89 6b 01 00 00    	jns    1400055b0 <_pei386_runtime_relocator+0x2e0>
   140005445:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   14000544c:	48 29 c6             	sub    %rax,%rsi
   14000544f:	4c 01 ce             	add    %r9,%rsi
   140005452:	85 c9                	test   %ecx,%ecx
   140005454:	75 1a                	jne    140005470 <_pei386_runtime_relocator+0x1a0>
   140005456:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   14000545d:	0f 8c cc 00 00 00    	jl     14000552f <_pei386_runtime_relocator+0x25f>
   140005463:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   14000546a:	0f 8f bf 00 00 00    	jg     14000552f <_pei386_runtime_relocator+0x25f>
   140005470:	48 89 f9             	mov    %rdi,%rcx
   140005473:	48 83 c3 0c          	add    $0xc,%rbx
   140005477:	e8 e4 fc ff ff       	call   140005160 <mark_section_writable>
   14000547c:	66 89 37             	mov    %si,(%rdi)
   14000547f:	4c 39 eb             	cmp    %r13,%rbx
   140005482:	0f 82 7a ff ff ff    	jb     140005402 <_pei386_runtime_relocator+0x132>
   140005488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000548f:	00 
   140005490:	8b 15 4e 5c 00 00    	mov    0x5c4e(%rip),%edx        # 14000b0e4 <maxSections>
   140005496:	85 d2                	test   %edx,%edx
   140005498:	0f 8e 53 fe ff ff    	jle    1400052f1 <_pei386_runtime_relocator+0x21>
   14000549e:	48 8b 35 a7 6e 00 00 	mov    0x6ea7(%rip),%rsi        # 14000c34c <__imp_VirtualProtect>
   1400054a5:	31 db                	xor    %ebx,%ebx
   1400054a7:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   1400054ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400054b0:	48 8b 05 31 5c 00 00 	mov    0x5c31(%rip),%rax        # 14000b0e8 <the_secs>
   1400054b7:	48 01 d8             	add    %rbx,%rax
   1400054ba:	44 8b 00             	mov    (%rax),%r8d
   1400054bd:	45 85 c0             	test   %r8d,%r8d
   1400054c0:	74 0d                	je     1400054cf <_pei386_runtime_relocator+0x1ff>
   1400054c2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   1400054c6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   1400054ca:	49 89 f9             	mov    %rdi,%r9
   1400054cd:	ff d6                	call   *%rsi
   1400054cf:	41 83 c4 01          	add    $0x1,%r12d
   1400054d3:	48 83 c3 28          	add    $0x28,%rbx
   1400054d7:	44 3b 25 06 5c 00 00 	cmp    0x5c06(%rip),%r12d        # 14000b0e4 <maxSections>
   1400054de:	7c d0                	jl     1400054b0 <_pei386_runtime_relocator+0x1e0>
   1400054e0:	e9 0c fe ff ff       	jmp    1400052f1 <_pei386_runtime_relocator+0x21>
   1400054e5:	0f 1f 00             	nopl   (%rax)
   1400054e8:	85 d2                	test   %edx,%edx
   1400054ea:	0f 85 f0 00 00 00    	jne    1400055e0 <_pei386_runtime_relocator+0x310>
   1400054f0:	8b 43 04             	mov    0x4(%rbx),%eax
   1400054f3:	89 c2                	mov    %eax,%edx
   1400054f5:	0b 53 08             	or     0x8(%rbx),%edx
   1400054f8:	0f 85 7c fe ff ff    	jne    14000537a <_pei386_runtime_relocator+0xaa>
   1400054fe:	48 83 c3 0c          	add    $0xc,%rbx
   140005502:	e9 66 fe ff ff       	jmp    14000536d <_pei386_runtime_relocator+0x9d>
   140005507:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000550e:	00 00 
   140005510:	83 fa 40             	cmp    $0x40,%edx
   140005513:	0f 85 f9 00 00 00    	jne    140005612 <_pei386_runtime_relocator+0x342>
   140005519:	48 8b 37             	mov    (%rdi),%rsi
   14000551c:	48 29 c6             	sub    %rax,%rsi
   14000551f:	4c 01 ce             	add    %r9,%rsi
   140005522:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140005528:	75 66                	jne    140005590 <_pei386_runtime_relocator+0x2c0>
   14000552a:	48 85 f6             	test   %rsi,%rsi
   14000552d:	78 61                	js     140005590 <_pei386_runtime_relocator+0x2c0>
   14000552f:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140005534:	49 89 f8             	mov    %rdi,%r8
   140005537:	48 8d 0d ea 2d 00 00 	lea    0x2dea(%rip),%rcx        # 140008328 <.rdata+0x108>
   14000553e:	e8 ad fb ff ff       	call   1400050f0 <__report_error>
   140005543:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005548:	8b 37                	mov    (%rdi),%esi
   14000554a:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140005550:	85 f6                	test   %esi,%esi
   140005552:	79 4c                	jns    1400055a0 <_pei386_runtime_relocator+0x2d0>
   140005554:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   14000555b:	ff ff ff 
   14000555e:	4c 09 de             	or     %r11,%rsi
   140005561:	48 29 c6             	sub    %rax,%rsi
   140005564:	4c 01 ce             	add    %r9,%rsi
   140005567:	85 c9                	test   %ecx,%ecx
   140005569:	75 0f                	jne    14000557a <_pei386_runtime_relocator+0x2aa>
   14000556b:	4c 39 fe             	cmp    %r15,%rsi
   14000556e:	7e bf                	jle    14000552f <_pei386_runtime_relocator+0x25f>
   140005570:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140005575:	48 39 c6             	cmp    %rax,%rsi
   140005578:	7f b5                	jg     14000552f <_pei386_runtime_relocator+0x25f>
   14000557a:	48 89 f9             	mov    %rdi,%rcx
   14000557d:	e8 de fb ff ff       	call   140005160 <mark_section_writable>
   140005582:	89 37                	mov    %esi,(%rdi)
   140005584:	e9 6c fe ff ff       	jmp    1400053f5 <_pei386_runtime_relocator+0x125>
   140005589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005590:	48 89 f9             	mov    %rdi,%rcx
   140005593:	e8 c8 fb ff ff       	call   140005160 <mark_section_writable>
   140005598:	48 89 37             	mov    %rsi,(%rdi)
   14000559b:	e9 55 fe ff ff       	jmp    1400053f5 <_pei386_runtime_relocator+0x125>
   1400055a0:	48 29 c6             	sub    %rax,%rsi
   1400055a3:	4c 01 ce             	add    %r9,%rsi
   1400055a6:	85 c9                	test   %ecx,%ecx
   1400055a8:	74 c1                	je     14000556b <_pei386_runtime_relocator+0x29b>
   1400055aa:	eb ce                	jmp    14000557a <_pei386_runtime_relocator+0x2aa>
   1400055ac:	0f 1f 40 00          	nopl   0x0(%rax)
   1400055b0:	48 29 c6             	sub    %rax,%rsi
   1400055b3:	4c 01 ce             	add    %r9,%rsi
   1400055b6:	85 c9                	test   %ecx,%ecx
   1400055b8:	0f 84 98 fe ff ff    	je     140005456 <_pei386_runtime_relocator+0x186>
   1400055be:	e9 ad fe ff ff       	jmp    140005470 <_pei386_runtime_relocator+0x1a0>
   1400055c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400055c8:	48 29 c6             	sub    %rax,%rsi
   1400055cb:	4c 01 ce             	add    %r9,%rsi
   1400055ce:	85 c9                	test   %ecx,%ecx
   1400055d0:	0f 84 fd fd ff ff    	je     1400053d3 <_pei386_runtime_relocator+0x103>
   1400055d6:	e9 0f fe ff ff       	jmp    1400053ea <_pei386_runtime_relocator+0x11a>
   1400055db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400055e0:	4c 39 eb             	cmp    %r13,%rbx
   1400055e3:	0f 83 08 fd ff ff    	jae    1400052f1 <_pei386_runtime_relocator+0x21>
   1400055e9:	4c 8b 35 80 2e 00 00 	mov    0x2e80(%rip),%r14        # 140008470 <.refptr.__ImageBase>
   1400055f0:	8b 73 04             	mov    0x4(%rbx),%esi
   1400055f3:	8b 3b                	mov    (%rbx),%edi
   1400055f5:	48 83 c3 08          	add    $0x8,%rbx
   1400055f9:	4c 01 f6             	add    %r14,%rsi
   1400055fc:	03 3e                	add    (%rsi),%edi
   1400055fe:	48 89 f1             	mov    %rsi,%rcx
   140005601:	e8 5a fb ff ff       	call   140005160 <mark_section_writable>
   140005606:	89 3e                	mov    %edi,(%rsi)
   140005608:	4c 39 eb             	cmp    %r13,%rbx
   14000560b:	72 e3                	jb     1400055f0 <_pei386_runtime_relocator+0x320>
   14000560d:	e9 7e fe ff ff       	jmp    140005490 <_pei386_runtime_relocator+0x1c0>
   140005612:	48 8d 0d df 2c 00 00 	lea    0x2cdf(%rip),%rcx        # 1400082f8 <.rdata+0xd8>
   140005619:	e8 d2 fa ff ff       	call   1400050f0 <__report_error>
   14000561e:	48 8d 0d 9b 2c 00 00 	lea    0x2c9b(%rip),%rcx        # 1400082c0 <.rdata+0xa0>
   140005625:	e8 c6 fa ff ff       	call   1400050f0 <__report_error>
   14000562a:	90                   	nop
   14000562b:	90                   	nop
   14000562c:	90                   	nop
   14000562d:	90                   	nop
   14000562e:	90                   	nop
   14000562f:	90                   	nop

0000000140005630 <__mingw_raise_matherr>:
   140005630:	48 83 ec 58          	sub    $0x58,%rsp
   140005634:	48 8b 05 b5 5a 00 00 	mov    0x5ab5(%rip),%rax        # 14000b0f0 <stUserMathErr>
   14000563b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   14000563f:	48 85 c0             	test   %rax,%rax
   140005642:	74 25                	je     140005669 <__mingw_raise_matherr+0x39>
   140005644:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   14000564b:	00 00 
   14000564d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140005651:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140005656:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   14000565b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140005660:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140005666:	ff d0                	call   *%rax
   140005668:	90                   	nop
   140005669:	48 83 c4 58          	add    $0x58,%rsp
   14000566d:	c3                   	ret
   14000566e:	66 90                	xchg   %ax,%ax

0000000140005670 <__mingw_setusermatherr>:
   140005670:	48 89 0d 79 5a 00 00 	mov    %rcx,0x5a79(%rip)        # 14000b0f0 <stUserMathErr>
   140005677:	e9 e4 08 00 00       	jmp    140005f60 <__setusermatherr>
   14000567c:	90                   	nop
   14000567d:	90                   	nop
   14000567e:	90                   	nop
   14000567f:	90                   	nop

0000000140005680 <_gnu_exception_handler>:
   140005680:	53                   	push   %rbx
   140005681:	48 83 ec 20          	sub    $0x20,%rsp
   140005685:	48 8b 11             	mov    (%rcx),%rdx
   140005688:	8b 02                	mov    (%rdx),%eax
   14000568a:	48 89 cb             	mov    %rcx,%rbx
   14000568d:	89 c1                	mov    %eax,%ecx
   14000568f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140005695:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   14000569b:	0f 84 9f 00 00 00    	je     140005740 <_gnu_exception_handler+0xc0>
   1400056a1:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400056a6:	77 77                	ja     14000571f <_gnu_exception_handler+0x9f>
   1400056a8:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400056ad:	76 21                	jbe    1400056d0 <_gnu_exception_handler+0x50>
   1400056af:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400056b4:	83 f8 09             	cmp    $0x9,%eax
   1400056b7:	77 54                	ja     14000570d <_gnu_exception_handler+0x8d>
   1400056b9:	48 8d 15 c0 2c 00 00 	lea    0x2cc0(%rip),%rdx        # 140008380 <.rdata>
   1400056c0:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400056c4:	48 01 d0             	add    %rdx,%rax
   1400056c7:	ff e0                	jmp    *%rax
   1400056c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400056d0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   1400056d5:	0f 84 d5 00 00 00    	je     1400057b0 <_gnu_exception_handler+0x130>
   1400056db:	76 3b                	jbe    140005718 <_gnu_exception_handler+0x98>
   1400056dd:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   1400056e2:	74 29                	je     14000570d <_gnu_exception_handler+0x8d>
   1400056e4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   1400056e9:	75 34                	jne    14000571f <_gnu_exception_handler+0x9f>
   1400056eb:	31 d2                	xor    %edx,%edx
   1400056ed:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400056f2:	e8 d1 08 00 00       	call   140005fc8 <signal>
   1400056f7:	48 83 f8 01          	cmp    $0x1,%rax
   1400056fb:	0f 84 d6 00 00 00    	je     1400057d7 <_gnu_exception_handler+0x157>
   140005701:	48 85 c0             	test   %rax,%rax
   140005704:	74 19                	je     14000571f <_gnu_exception_handler+0x9f>
   140005706:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000570b:	ff d0                	call   *%rax
   14000570d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140005712:	48 83 c4 20          	add    $0x20,%rsp
   140005716:	5b                   	pop    %rbx
   140005717:	c3                   	ret
   140005718:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   14000571d:	74 ee                	je     14000570d <_gnu_exception_handler+0x8d>
   14000571f:	48 8b 05 ea 59 00 00 	mov    0x59ea(%rip),%rax        # 14000b110 <__mingw_oldexcpt_handler>
   140005726:	48 85 c0             	test   %rax,%rax
   140005729:	74 25                	je     140005750 <_gnu_exception_handler+0xd0>
   14000572b:	48 89 d9             	mov    %rbx,%rcx
   14000572e:	48 83 c4 20          	add    $0x20,%rsp
   140005732:	5b                   	pop    %rbx
   140005733:	48 ff e0             	rex.W jmp *%rax
   140005736:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000573d:	00 00 00 
   140005740:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140005744:	0f 85 57 ff ff ff    	jne    1400056a1 <_gnu_exception_handler+0x21>
   14000574a:	eb c1                	jmp    14000570d <_gnu_exception_handler+0x8d>
   14000574c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005750:	31 c0                	xor    %eax,%eax
   140005752:	48 83 c4 20          	add    $0x20,%rsp
   140005756:	5b                   	pop    %rbx
   140005757:	c3                   	ret
   140005758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000575f:	00 
   140005760:	31 d2                	xor    %edx,%edx
   140005762:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005767:	e8 5c 08 00 00       	call   140005fc8 <signal>
   14000576c:	48 83 f8 01          	cmp    $0x1,%rax
   140005770:	0f 84 89 00 00 00    	je     1400057ff <_gnu_exception_handler+0x17f>
   140005776:	48 85 c0             	test   %rax,%rax
   140005779:	74 a4                	je     14000571f <_gnu_exception_handler+0x9f>
   14000577b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005780:	ff d0                	call   *%rax
   140005782:	eb 89                	jmp    14000570d <_gnu_exception_handler+0x8d>
   140005784:	0f 1f 40 00          	nopl   0x0(%rax)
   140005788:	31 d2                	xor    %edx,%edx
   14000578a:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000578f:	e8 34 08 00 00       	call   140005fc8 <signal>
   140005794:	48 83 f8 01          	cmp    $0x1,%rax
   140005798:	75 dc                	jne    140005776 <_gnu_exception_handler+0xf6>
   14000579a:	ba 01 00 00 00       	mov    $0x1,%edx
   14000579f:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400057a4:	e8 1f 08 00 00       	call   140005fc8 <signal>
   1400057a9:	e9 5f ff ff ff       	jmp    14000570d <_gnu_exception_handler+0x8d>
   1400057ae:	66 90                	xchg   %ax,%ax
   1400057b0:	31 d2                	xor    %edx,%edx
   1400057b2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400057b7:	e8 0c 08 00 00       	call   140005fc8 <signal>
   1400057bc:	48 83 f8 01          	cmp    $0x1,%rax
   1400057c0:	74 29                	je     1400057eb <_gnu_exception_handler+0x16b>
   1400057c2:	48 85 c0             	test   %rax,%rax
   1400057c5:	0f 84 54 ff ff ff    	je     14000571f <_gnu_exception_handler+0x9f>
   1400057cb:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400057d0:	ff d0                	call   *%rax
   1400057d2:	e9 36 ff ff ff       	jmp    14000570d <_gnu_exception_handler+0x8d>
   1400057d7:	ba 01 00 00 00       	mov    $0x1,%edx
   1400057dc:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400057e1:	e8 e2 07 00 00       	call   140005fc8 <signal>
   1400057e6:	e9 22 ff ff ff       	jmp    14000570d <_gnu_exception_handler+0x8d>
   1400057eb:	ba 01 00 00 00       	mov    $0x1,%edx
   1400057f0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400057f5:	e8 ce 07 00 00       	call   140005fc8 <signal>
   1400057fa:	e9 0e ff ff ff       	jmp    14000570d <_gnu_exception_handler+0x8d>
   1400057ff:	ba 01 00 00 00       	mov    $0x1,%edx
   140005804:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005809:	e8 ba 07 00 00       	call   140005fc8 <signal>
   14000580e:	e8 cd f8 ff ff       	call   1400050e0 <_fpreset>
   140005813:	e9 f5 fe ff ff       	jmp    14000570d <_gnu_exception_handler+0x8d>
   140005818:	90                   	nop
   140005819:	90                   	nop
   14000581a:	90                   	nop
   14000581b:	90                   	nop
   14000581c:	90                   	nop
   14000581d:	90                   	nop
   14000581e:	90                   	nop
   14000581f:	90                   	nop

0000000140005820 <__mingwthr_run_key_dtors.part.0>:
   140005820:	41 54                	push   %r12
   140005822:	55                   	push   %rbp
   140005823:	57                   	push   %rdi
   140005824:	56                   	push   %rsi
   140005825:	53                   	push   %rbx
   140005826:	48 83 ec 20          	sub    $0x20,%rsp
   14000582a:	4c 8d 25 0f 59 00 00 	lea    0x590f(%rip),%r12        # 14000b140 <__mingwthr_cs>
   140005831:	4c 89 e1             	mov    %r12,%rcx
   140005834:	ff 15 da 6a 00 00    	call   *0x6ada(%rip)        # 14000c314 <__imp_EnterCriticalSection>
   14000583a:	48 8b 1d df 58 00 00 	mov    0x58df(%rip),%rbx        # 14000b120 <key_dtor_list>
   140005841:	48 85 db             	test   %rbx,%rbx
   140005844:	74 36                	je     14000587c <__mingwthr_run_key_dtors.part.0+0x5c>
   140005846:	48 8b 2d f7 6a 00 00 	mov    0x6af7(%rip),%rbp        # 14000c344 <__imp_TlsGetValue>
   14000584d:	48 8b 3d c8 6a 00 00 	mov    0x6ac8(%rip),%rdi        # 14000c31c <__imp_GetLastError>
   140005854:	0f 1f 40 00          	nopl   0x0(%rax)
   140005858:	8b 0b                	mov    (%rbx),%ecx
   14000585a:	ff d5                	call   *%rbp
   14000585c:	48 89 c6             	mov    %rax,%rsi
   14000585f:	ff d7                	call   *%rdi
   140005861:	85 c0                	test   %eax,%eax
   140005863:	75 0e                	jne    140005873 <__mingwthr_run_key_dtors.part.0+0x53>
   140005865:	48 85 f6             	test   %rsi,%rsi
   140005868:	74 09                	je     140005873 <__mingwthr_run_key_dtors.part.0+0x53>
   14000586a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   14000586e:	48 89 f1             	mov    %rsi,%rcx
   140005871:	ff d0                	call   *%rax
   140005873:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140005877:	48 85 db             	test   %rbx,%rbx
   14000587a:	75 dc                	jne    140005858 <__mingwthr_run_key_dtors.part.0+0x38>
   14000587c:	4c 89 e1             	mov    %r12,%rcx
   14000587f:	48 83 c4 20          	add    $0x20,%rsp
   140005883:	5b                   	pop    %rbx
   140005884:	5e                   	pop    %rsi
   140005885:	5f                   	pop    %rdi
   140005886:	5d                   	pop    %rbp
   140005887:	41 5c                	pop    %r12
   140005889:	48 ff 25 9c 6a 00 00 	rex.W jmp *0x6a9c(%rip)        # 14000c32c <__imp_LeaveCriticalSection>

0000000140005890 <___w64_mingwthr_add_key_dtor>:
   140005890:	57                   	push   %rdi
   140005891:	56                   	push   %rsi
   140005892:	53                   	push   %rbx
   140005893:	48 83 ec 20          	sub    $0x20,%rsp
   140005897:	8b 05 8b 58 00 00    	mov    0x588b(%rip),%eax        # 14000b128 <__mingwthr_cs_init>
   14000589d:	89 cf                	mov    %ecx,%edi
   14000589f:	48 89 d6             	mov    %rdx,%rsi
   1400058a2:	85 c0                	test   %eax,%eax
   1400058a4:	75 0a                	jne    1400058b0 <___w64_mingwthr_add_key_dtor+0x20>
   1400058a6:	31 c0                	xor    %eax,%eax
   1400058a8:	48 83 c4 20          	add    $0x20,%rsp
   1400058ac:	5b                   	pop    %rbx
   1400058ad:	5e                   	pop    %rsi
   1400058ae:	5f                   	pop    %rdi
   1400058af:	c3                   	ret
   1400058b0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400058b5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400058ba:	e8 d1 06 00 00       	call   140005f90 <calloc>
   1400058bf:	48 89 c3             	mov    %rax,%rbx
   1400058c2:	48 85 c0             	test   %rax,%rax
   1400058c5:	74 33                	je     1400058fa <___w64_mingwthr_add_key_dtor+0x6a>
   1400058c7:	48 89 70 08          	mov    %rsi,0x8(%rax)
   1400058cb:	48 8d 35 6e 58 00 00 	lea    0x586e(%rip),%rsi        # 14000b140 <__mingwthr_cs>
   1400058d2:	89 38                	mov    %edi,(%rax)
   1400058d4:	48 89 f1             	mov    %rsi,%rcx
   1400058d7:	ff 15 37 6a 00 00    	call   *0x6a37(%rip)        # 14000c314 <__imp_EnterCriticalSection>
   1400058dd:	48 8b 05 3c 58 00 00 	mov    0x583c(%rip),%rax        # 14000b120 <key_dtor_list>
   1400058e4:	48 89 f1             	mov    %rsi,%rcx
   1400058e7:	48 89 1d 32 58 00 00 	mov    %rbx,0x5832(%rip)        # 14000b120 <key_dtor_list>
   1400058ee:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400058f2:	ff 15 34 6a 00 00    	call   *0x6a34(%rip)        # 14000c32c <__imp_LeaveCriticalSection>
   1400058f8:	eb ac                	jmp    1400058a6 <___w64_mingwthr_add_key_dtor+0x16>
   1400058fa:	83 c8 ff             	or     $0xffffffff,%eax
   1400058fd:	eb a9                	jmp    1400058a8 <___w64_mingwthr_add_key_dtor+0x18>
   1400058ff:	90                   	nop

0000000140005900 <___w64_mingwthr_remove_key_dtor>:
   140005900:	56                   	push   %rsi
   140005901:	53                   	push   %rbx
   140005902:	48 83 ec 28          	sub    $0x28,%rsp
   140005906:	8b 05 1c 58 00 00    	mov    0x581c(%rip),%eax        # 14000b128 <__mingwthr_cs_init>
   14000590c:	89 cb                	mov    %ecx,%ebx
   14000590e:	85 c0                	test   %eax,%eax
   140005910:	75 0e                	jne    140005920 <___w64_mingwthr_remove_key_dtor+0x20>
   140005912:	31 c0                	xor    %eax,%eax
   140005914:	48 83 c4 28          	add    $0x28,%rsp
   140005918:	5b                   	pop    %rbx
   140005919:	5e                   	pop    %rsi
   14000591a:	c3                   	ret
   14000591b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005920:	48 8d 35 19 58 00 00 	lea    0x5819(%rip),%rsi        # 14000b140 <__mingwthr_cs>
   140005927:	48 89 f1             	mov    %rsi,%rcx
   14000592a:	ff 15 e4 69 00 00    	call   *0x69e4(%rip)        # 14000c314 <__imp_EnterCriticalSection>
   140005930:	48 8b 0d e9 57 00 00 	mov    0x57e9(%rip),%rcx        # 14000b120 <key_dtor_list>
   140005937:	48 85 c9             	test   %rcx,%rcx
   14000593a:	74 27                	je     140005963 <___w64_mingwthr_remove_key_dtor+0x63>
   14000593c:	31 d2                	xor    %edx,%edx
   14000593e:	eb 0b                	jmp    14000594b <___w64_mingwthr_remove_key_dtor+0x4b>
   140005940:	48 89 ca             	mov    %rcx,%rdx
   140005943:	48 85 c0             	test   %rax,%rax
   140005946:	74 1b                	je     140005963 <___w64_mingwthr_remove_key_dtor+0x63>
   140005948:	48 89 c1             	mov    %rax,%rcx
   14000594b:	8b 01                	mov    (%rcx),%eax
   14000594d:	39 d8                	cmp    %ebx,%eax
   14000594f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140005953:	75 eb                	jne    140005940 <___w64_mingwthr_remove_key_dtor+0x40>
   140005955:	48 85 d2             	test   %rdx,%rdx
   140005958:	74 1e                	je     140005978 <___w64_mingwthr_remove_key_dtor+0x78>
   14000595a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000595e:	e8 45 06 00 00       	call   140005fa8 <free>
   140005963:	48 89 f1             	mov    %rsi,%rcx
   140005966:	ff 15 c0 69 00 00    	call   *0x69c0(%rip)        # 14000c32c <__imp_LeaveCriticalSection>
   14000596c:	31 c0                	xor    %eax,%eax
   14000596e:	48 83 c4 28          	add    $0x28,%rsp
   140005972:	5b                   	pop    %rbx
   140005973:	5e                   	pop    %rsi
   140005974:	c3                   	ret
   140005975:	0f 1f 00             	nopl   (%rax)
   140005978:	48 89 05 a1 57 00 00 	mov    %rax,0x57a1(%rip)        # 14000b120 <key_dtor_list>
   14000597f:	eb dd                	jmp    14000595e <___w64_mingwthr_remove_key_dtor+0x5e>
   140005981:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005988:	00 00 00 00 
   14000598c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005990 <__mingw_TLScallback>:
   140005990:	53                   	push   %rbx
   140005991:	48 83 ec 20          	sub    $0x20,%rsp
   140005995:	83 fa 02             	cmp    $0x2,%edx
   140005998:	0f 84 b2 00 00 00    	je     140005a50 <__mingw_TLScallback+0xc0>
   14000599e:	77 30                	ja     1400059d0 <__mingw_TLScallback+0x40>
   1400059a0:	85 d2                	test   %edx,%edx
   1400059a2:	74 4c                	je     1400059f0 <__mingw_TLScallback+0x60>
   1400059a4:	8b 05 7e 57 00 00    	mov    0x577e(%rip),%eax        # 14000b128 <__mingwthr_cs_init>
   1400059aa:	85 c0                	test   %eax,%eax
   1400059ac:	0f 84 be 00 00 00    	je     140005a70 <__mingw_TLScallback+0xe0>
   1400059b2:	c7 05 6c 57 00 00 01 	movl   $0x1,0x576c(%rip)        # 14000b128 <__mingwthr_cs_init>
   1400059b9:	00 00 00 
   1400059bc:	b8 01 00 00 00       	mov    $0x1,%eax
   1400059c1:	48 83 c4 20          	add    $0x20,%rsp
   1400059c5:	5b                   	pop    %rbx
   1400059c6:	c3                   	ret
   1400059c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400059ce:	00 00 
   1400059d0:	83 fa 03             	cmp    $0x3,%edx
   1400059d3:	75 e7                	jne    1400059bc <__mingw_TLScallback+0x2c>
   1400059d5:	8b 05 4d 57 00 00    	mov    0x574d(%rip),%eax        # 14000b128 <__mingwthr_cs_init>
   1400059db:	85 c0                	test   %eax,%eax
   1400059dd:	74 dd                	je     1400059bc <__mingw_TLScallback+0x2c>
   1400059df:	e8 3c fe ff ff       	call   140005820 <__mingwthr_run_key_dtors.part.0>
   1400059e4:	eb d6                	jmp    1400059bc <__mingw_TLScallback+0x2c>
   1400059e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400059ed:	00 00 00 
   1400059f0:	8b 05 32 57 00 00    	mov    0x5732(%rip),%eax        # 14000b128 <__mingwthr_cs_init>
   1400059f6:	85 c0                	test   %eax,%eax
   1400059f8:	75 66                	jne    140005a60 <__mingw_TLScallback+0xd0>
   1400059fa:	8b 05 28 57 00 00    	mov    0x5728(%rip),%eax        # 14000b128 <__mingwthr_cs_init>
   140005a00:	83 f8 01             	cmp    $0x1,%eax
   140005a03:	75 b7                	jne    1400059bc <__mingw_TLScallback+0x2c>
   140005a05:	48 8b 1d 14 57 00 00 	mov    0x5714(%rip),%rbx        # 14000b120 <key_dtor_list>
   140005a0c:	48 85 db             	test   %rbx,%rbx
   140005a0f:	74 18                	je     140005a29 <__mingw_TLScallback+0x99>
   140005a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005a18:	48 89 d9             	mov    %rbx,%rcx
   140005a1b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140005a1f:	e8 84 05 00 00       	call   140005fa8 <free>
   140005a24:	48 85 db             	test   %rbx,%rbx
   140005a27:	75 ef                	jne    140005a18 <__mingw_TLScallback+0x88>
   140005a29:	48 8d 0d 10 57 00 00 	lea    0x5710(%rip),%rcx        # 14000b140 <__mingwthr_cs>
   140005a30:	48 c7 05 e5 56 00 00 	movq   $0x0,0x56e5(%rip)        # 14000b120 <key_dtor_list>
   140005a37:	00 00 00 00 
   140005a3b:	c7 05 e3 56 00 00 00 	movl   $0x0,0x56e3(%rip)        # 14000b128 <__mingwthr_cs_init>
   140005a42:	00 00 00 
   140005a45:	ff 15 c1 68 00 00    	call   *0x68c1(%rip)        # 14000c30c <__imp_DeleteCriticalSection>
   140005a4b:	e9 6c ff ff ff       	jmp    1400059bc <__mingw_TLScallback+0x2c>
   140005a50:	e8 8b f6 ff ff       	call   1400050e0 <_fpreset>
   140005a55:	b8 01 00 00 00       	mov    $0x1,%eax
   140005a5a:	48 83 c4 20          	add    $0x20,%rsp
   140005a5e:	5b                   	pop    %rbx
   140005a5f:	c3                   	ret
   140005a60:	e8 bb fd ff ff       	call   140005820 <__mingwthr_run_key_dtors.part.0>
   140005a65:	eb 93                	jmp    1400059fa <__mingw_TLScallback+0x6a>
   140005a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140005a6e:	00 00 
   140005a70:	48 8d 0d c9 56 00 00 	lea    0x56c9(%rip),%rcx        # 14000b140 <__mingwthr_cs>
   140005a77:	ff 15 a7 68 00 00    	call   *0x68a7(%rip)        # 14000c324 <__imp_InitializeCriticalSection>
   140005a7d:	e9 30 ff ff ff       	jmp    1400059b2 <__mingw_TLScallback+0x22>
   140005a82:	90                   	nop
   140005a83:	90                   	nop
   140005a84:	90                   	nop
   140005a85:	90                   	nop
   140005a86:	90                   	nop
   140005a87:	90                   	nop
   140005a88:	90                   	nop
   140005a89:	90                   	nop
   140005a8a:	90                   	nop
   140005a8b:	90                   	nop
   140005a8c:	90                   	nop
   140005a8d:	90                   	nop
   140005a8e:	90                   	nop
   140005a8f:	90                   	nop

0000000140005a90 <_ValidateImageBase>:
   140005a90:	31 c0                	xor    %eax,%eax
   140005a92:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140005a97:	75 0f                	jne    140005aa8 <_ValidateImageBase+0x18>
   140005a99:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140005a9d:	48 01 d1             	add    %rdx,%rcx
   140005aa0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140005aa6:	74 08                	je     140005ab0 <_ValidateImageBase+0x20>
   140005aa8:	c3                   	ret
   140005aa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005ab0:	31 c0                	xor    %eax,%eax
   140005ab2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140005ab8:	0f 94 c0             	sete   %al
   140005abb:	c3                   	ret
   140005abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005ac0 <_FindPESection>:
   140005ac0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140005ac4:	48 01 c1             	add    %rax,%rcx
   140005ac7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140005acb:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140005ad0:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140005ad5:	66 45 85 c0          	test   %r8w,%r8w
   140005ad9:	74 32                	je     140005b0d <_FindPESection+0x4d>
   140005adb:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   140005adf:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140005ae3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140005ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005aef:	00 
   140005af0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140005af4:	4c 89 c1             	mov    %r8,%rcx
   140005af7:	4c 39 c2             	cmp    %r8,%rdx
   140005afa:	72 08                	jb     140005b04 <_FindPESection+0x44>
   140005afc:	03 48 08             	add    0x8(%rax),%ecx
   140005aff:	48 39 ca             	cmp    %rcx,%rdx
   140005b02:	72 0b                	jb     140005b0f <_FindPESection+0x4f>
   140005b04:	48 83 c0 28          	add    $0x28,%rax
   140005b08:	4c 39 c8             	cmp    %r9,%rax
   140005b0b:	75 e3                	jne    140005af0 <_FindPESection+0x30>
   140005b0d:	31 c0                	xor    %eax,%eax
   140005b0f:	c3                   	ret

0000000140005b10 <_FindPESectionByName>:
   140005b10:	57                   	push   %rdi
   140005b11:	56                   	push   %rsi
   140005b12:	53                   	push   %rbx
   140005b13:	48 83 ec 20          	sub    $0x20,%rsp
   140005b17:	48 89 ce             	mov    %rcx,%rsi
   140005b1a:	e8 b1 04 00 00       	call   140005fd0 <strlen>
   140005b1f:	48 83 f8 08          	cmp    $0x8,%rax
   140005b23:	77 7b                	ja     140005ba0 <_FindPESectionByName+0x90>
   140005b25:	48 8b 15 44 29 00 00 	mov    0x2944(%rip),%rdx        # 140008470 <.refptr.__ImageBase>
   140005b2c:	31 db                	xor    %ebx,%ebx
   140005b2e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140005b33:	75 59                	jne    140005b8e <_FindPESectionByName+0x7e>
   140005b35:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140005b39:	48 01 d0             	add    %rdx,%rax
   140005b3c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140005b42:	75 4a                	jne    140005b8e <_FindPESectionByName+0x7e>
   140005b44:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140005b4a:	75 42                	jne    140005b8e <_FindPESectionByName+0x7e>
   140005b4c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140005b50:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140005b55:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140005b59:	66 85 d2             	test   %dx,%dx
   140005b5c:	74 42                	je     140005ba0 <_FindPESectionByName+0x90>
   140005b5e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140005b61:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140005b65:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   140005b6a:	eb 0d                	jmp    140005b79 <_FindPESectionByName+0x69>
   140005b6c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005b70:	48 83 c3 28          	add    $0x28,%rbx
   140005b74:	48 39 fb             	cmp    %rdi,%rbx
   140005b77:	74 27                	je     140005ba0 <_FindPESectionByName+0x90>
   140005b79:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140005b7f:	48 89 f2             	mov    %rsi,%rdx
   140005b82:	48 89 d9             	mov    %rbx,%rcx
   140005b85:	e8 4e 04 00 00       	call   140005fd8 <strncmp>
   140005b8a:	85 c0                	test   %eax,%eax
   140005b8c:	75 e2                	jne    140005b70 <_FindPESectionByName+0x60>
   140005b8e:	48 89 d8             	mov    %rbx,%rax
   140005b91:	48 83 c4 20          	add    $0x20,%rsp
   140005b95:	5b                   	pop    %rbx
   140005b96:	5e                   	pop    %rsi
   140005b97:	5f                   	pop    %rdi
   140005b98:	c3                   	ret
   140005b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005ba0:	31 db                	xor    %ebx,%ebx
   140005ba2:	48 89 d8             	mov    %rbx,%rax
   140005ba5:	48 83 c4 20          	add    $0x20,%rsp
   140005ba9:	5b                   	pop    %rbx
   140005baa:	5e                   	pop    %rsi
   140005bab:	5f                   	pop    %rdi
   140005bac:	c3                   	ret
   140005bad:	0f 1f 00             	nopl   (%rax)

0000000140005bb0 <__mingw_GetSectionForAddress>:
   140005bb0:	48 8b 15 b9 28 00 00 	mov    0x28b9(%rip),%rdx        # 140008470 <.refptr.__ImageBase>
   140005bb7:	31 c0                	xor    %eax,%eax
   140005bb9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140005bbe:	75 10                	jne    140005bd0 <__mingw_GetSectionForAddress+0x20>
   140005bc0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140005bc4:	49 01 d0             	add    %rdx,%r8
   140005bc7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140005bce:	74 08                	je     140005bd8 <__mingw_GetSectionForAddress+0x28>
   140005bd0:	c3                   	ret
   140005bd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005bd8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140005bdf:	75 ef                	jne    140005bd0 <__mingw_GetSectionForAddress+0x20>
   140005be1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140005be6:	48 29 d1             	sub    %rdx,%rcx
   140005be9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140005bee:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140005bf3:	66 45 85 c0          	test   %r8w,%r8w
   140005bf7:	74 34                	je     140005c2d <__mingw_GetSectionForAddress+0x7d>
   140005bf9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140005bfd:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140005c01:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140005c06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005c0d:	00 00 00 
   140005c10:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140005c14:	4c 89 c2             	mov    %r8,%rdx
   140005c17:	4c 39 c1             	cmp    %r8,%rcx
   140005c1a:	72 08                	jb     140005c24 <__mingw_GetSectionForAddress+0x74>
   140005c1c:	03 50 08             	add    0x8(%rax),%edx
   140005c1f:	48 39 d1             	cmp    %rdx,%rcx
   140005c22:	72 ac                	jb     140005bd0 <__mingw_GetSectionForAddress+0x20>
   140005c24:	48 83 c0 28          	add    $0x28,%rax
   140005c28:	4c 39 c8             	cmp    %r9,%rax
   140005c2b:	75 e3                	jne    140005c10 <__mingw_GetSectionForAddress+0x60>
   140005c2d:	31 c0                	xor    %eax,%eax
   140005c2f:	c3                   	ret

0000000140005c30 <__mingw_GetSectionCount>:
   140005c30:	48 8b 05 39 28 00 00 	mov    0x2839(%rip),%rax        # 140008470 <.refptr.__ImageBase>
   140005c37:	31 c9                	xor    %ecx,%ecx
   140005c39:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140005c3e:	75 0f                	jne    140005c4f <__mingw_GetSectionCount+0x1f>
   140005c40:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140005c44:	48 01 d0             	add    %rdx,%rax
   140005c47:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140005c4d:	74 09                	je     140005c58 <__mingw_GetSectionCount+0x28>
   140005c4f:	89 c8                	mov    %ecx,%eax
   140005c51:	c3                   	ret
   140005c52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005c58:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140005c5e:	75 ef                	jne    140005c4f <__mingw_GetSectionCount+0x1f>
   140005c60:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140005c64:	89 c8                	mov    %ecx,%eax
   140005c66:	c3                   	ret
   140005c67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140005c6e:	00 00 

0000000140005c70 <_FindPESectionExec>:
   140005c70:	4c 8b 05 f9 27 00 00 	mov    0x27f9(%rip),%r8        # 140008470 <.refptr.__ImageBase>
   140005c77:	31 c0                	xor    %eax,%eax
   140005c79:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   140005c7f:	75 0f                	jne    140005c90 <_FindPESectionExec+0x20>
   140005c81:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140005c85:	4c 01 c2             	add    %r8,%rdx
   140005c88:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140005c8e:	74 08                	je     140005c98 <_FindPESectionExec+0x28>
   140005c90:	c3                   	ret
   140005c91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005c98:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140005c9e:	75 f0                	jne    140005c90 <_FindPESectionExec+0x20>
   140005ca0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140005ca4:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140005ca9:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140005cae:	66 45 85 c0          	test   %r8w,%r8w
   140005cb2:	74 2c                	je     140005ce0 <_FindPESectionExec+0x70>
   140005cb4:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140005cb8:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140005cbc:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140005cc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005cc8:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140005ccc:	74 09                	je     140005cd7 <_FindPESectionExec+0x67>
   140005cce:	48 85 c9             	test   %rcx,%rcx
   140005cd1:	74 bd                	je     140005c90 <_FindPESectionExec+0x20>
   140005cd3:	48 83 e9 01          	sub    $0x1,%rcx
   140005cd7:	48 83 c0 28          	add    $0x28,%rax
   140005cdb:	48 39 d0             	cmp    %rdx,%rax
   140005cde:	75 e8                	jne    140005cc8 <_FindPESectionExec+0x58>
   140005ce0:	31 c0                	xor    %eax,%eax
   140005ce2:	c3                   	ret
   140005ce3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005cea:	00 00 00 00 
   140005cee:	66 90                	xchg   %ax,%ax

0000000140005cf0 <_GetPEImageBase>:
   140005cf0:	48 8b 05 79 27 00 00 	mov    0x2779(%rip),%rax        # 140008470 <.refptr.__ImageBase>
   140005cf7:	31 d2                	xor    %edx,%edx
   140005cf9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140005cfe:	75 0f                	jne    140005d0f <_GetPEImageBase+0x1f>
   140005d00:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140005d04:	48 01 c1             	add    %rax,%rcx
   140005d07:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140005d0d:	74 09                	je     140005d18 <_GetPEImageBase+0x28>
   140005d0f:	48 89 d0             	mov    %rdx,%rax
   140005d12:	c3                   	ret
   140005d13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005d18:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140005d1e:	48 0f 44 d0          	cmove  %rax,%rdx
   140005d22:	48 89 d0             	mov    %rdx,%rax
   140005d25:	c3                   	ret
   140005d26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005d2d:	00 00 00 

0000000140005d30 <_IsNonwritableInCurrentImage>:
   140005d30:	48 8b 15 39 27 00 00 	mov    0x2739(%rip),%rdx        # 140008470 <.refptr.__ImageBase>
   140005d37:	31 c0                	xor    %eax,%eax
   140005d39:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140005d3e:	75 10                	jne    140005d50 <_IsNonwritableInCurrentImage+0x20>
   140005d40:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140005d44:	49 01 d0             	add    %rdx,%r8
   140005d47:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140005d4e:	74 08                	je     140005d58 <_IsNonwritableInCurrentImage+0x28>
   140005d50:	c3                   	ret
   140005d51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005d58:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140005d5f:	75 ef                	jne    140005d50 <_IsNonwritableInCurrentImage+0x20>
   140005d61:	48 29 d1             	sub    %rdx,%rcx
   140005d64:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140005d69:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140005d6e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140005d73:	66 45 85 c9          	test   %r9w,%r9w
   140005d77:	74 d7                	je     140005d50 <_IsNonwritableInCurrentImage+0x20>
   140005d79:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   140005d7d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140005d81:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140005d86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005d8d:	00 00 00 
   140005d90:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140005d94:	4c 89 c0             	mov    %r8,%rax
   140005d97:	4c 39 c1             	cmp    %r8,%rcx
   140005d9a:	72 08                	jb     140005da4 <_IsNonwritableInCurrentImage+0x74>
   140005d9c:	03 42 08             	add    0x8(%rdx),%eax
   140005d9f:	48 39 c1             	cmp    %rax,%rcx
   140005da2:	72 0c                	jb     140005db0 <_IsNonwritableInCurrentImage+0x80>
   140005da4:	48 83 c2 28          	add    $0x28,%rdx
   140005da8:	49 39 d1             	cmp    %rdx,%r9
   140005dab:	75 e3                	jne    140005d90 <_IsNonwritableInCurrentImage+0x60>
   140005dad:	31 c0                	xor    %eax,%eax
   140005daf:	c3                   	ret
   140005db0:	8b 42 24             	mov    0x24(%rdx),%eax
   140005db3:	f7 d0                	not    %eax
   140005db5:	c1 e8 1f             	shr    $0x1f,%eax
   140005db8:	c3                   	ret
   140005db9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140005dc0 <__mingw_enum_import_library_names>:
   140005dc0:	4c 8b 1d a9 26 00 00 	mov    0x26a9(%rip),%r11        # 140008470 <.refptr.__ImageBase>
   140005dc7:	45 31 c9             	xor    %r9d,%r9d
   140005dca:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140005dd0:	75 10                	jne    140005de2 <__mingw_enum_import_library_names+0x22>
   140005dd2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140005dd6:	4d 01 d8             	add    %r11,%r8
   140005dd9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140005de0:	74 0e                	je     140005df0 <__mingw_enum_import_library_names+0x30>
   140005de2:	4c 89 c8             	mov    %r9,%rax
   140005de5:	c3                   	ret
   140005de6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005ded:	00 00 00 
   140005df0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140005df7:	75 e9                	jne    140005de2 <__mingw_enum_import_library_names+0x22>
   140005df9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140005e00:	85 c0                	test   %eax,%eax
   140005e02:	74 de                	je     140005de2 <__mingw_enum_import_library_names+0x22>
   140005e04:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140005e09:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   140005e0e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140005e13:	66 45 85 d2          	test   %r10w,%r10w
   140005e17:	74 c9                	je     140005de2 <__mingw_enum_import_library_names+0x22>
   140005e19:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   140005e1d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140005e21:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140005e26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005e2d:	00 00 00 
   140005e30:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140005e34:	4d 89 c8             	mov    %r9,%r8
   140005e37:	4c 39 c8             	cmp    %r9,%rax
   140005e3a:	72 09                	jb     140005e45 <__mingw_enum_import_library_names+0x85>
   140005e3c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140005e40:	4c 39 c0             	cmp    %r8,%rax
   140005e43:	72 13                	jb     140005e58 <__mingw_enum_import_library_names+0x98>
   140005e45:	48 83 c2 28          	add    $0x28,%rdx
   140005e49:	4c 39 d2             	cmp    %r10,%rdx
   140005e4c:	75 e2                	jne    140005e30 <__mingw_enum_import_library_names+0x70>
   140005e4e:	45 31 c9             	xor    %r9d,%r9d
   140005e51:	4c 89 c8             	mov    %r9,%rax
   140005e54:	c3                   	ret
   140005e55:	0f 1f 00             	nopl   (%rax)
   140005e58:	4c 01 d8             	add    %r11,%rax
   140005e5b:	eb 0a                	jmp    140005e67 <__mingw_enum_import_library_names+0xa7>
   140005e5d:	0f 1f 00             	nopl   (%rax)
   140005e60:	83 e9 01             	sub    $0x1,%ecx
   140005e63:	48 83 c0 14          	add    $0x14,%rax
   140005e67:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140005e6b:	45 85 c0             	test   %r8d,%r8d
   140005e6e:	75 07                	jne    140005e77 <__mingw_enum_import_library_names+0xb7>
   140005e70:	8b 50 0c             	mov    0xc(%rax),%edx
   140005e73:	85 d2                	test   %edx,%edx
   140005e75:	74 d7                	je     140005e4e <__mingw_enum_import_library_names+0x8e>
   140005e77:	85 c9                	test   %ecx,%ecx
   140005e79:	7f e5                	jg     140005e60 <__mingw_enum_import_library_names+0xa0>
   140005e7b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140005e7f:	4d 01 d9             	add    %r11,%r9
   140005e82:	4c 89 c8             	mov    %r9,%rax
   140005e85:	c3                   	ret
   140005e86:	90                   	nop
   140005e87:	90                   	nop
   140005e88:	90                   	nop
   140005e89:	90                   	nop
   140005e8a:	90                   	nop
   140005e8b:	90                   	nop
   140005e8c:	90                   	nop
   140005e8d:	90                   	nop
   140005e8e:	90                   	nop
   140005e8f:	90                   	nop

0000000140005e90 <_Unwind_Resume>:
   140005e90:	ff 25 66 64 00 00    	jmp    *0x6466(%rip)        # 14000c2fc <__IAT_start__>
   140005e96:	90                   	nop
   140005e97:	90                   	nop
   140005e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005e9f:	00 

0000000140005ea0 <___chkstk_ms>:
   140005ea0:	51                   	push   %rcx
   140005ea1:	50                   	push   %rax
   140005ea2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140005ea8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140005ead:	72 19                	jb     140005ec8 <___chkstk_ms+0x28>
   140005eaf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140005eb6:	48 83 09 00          	orq    $0x0,(%rcx)
   140005eba:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140005ec0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140005ec6:	77 e7                	ja     140005eaf <___chkstk_ms+0xf>
   140005ec8:	48 29 c1             	sub    %rax,%rcx
   140005ecb:	48 83 09 00          	orq    $0x0,(%rcx)
   140005ecf:	58                   	pop    %rax
   140005ed0:	59                   	pop    %rcx
   140005ed1:	c3                   	ret
   140005ed2:	90                   	nop
   140005ed3:	90                   	nop
   140005ed4:	90                   	nop
   140005ed5:	90                   	nop
   140005ed6:	90                   	nop
   140005ed7:	90                   	nop
   140005ed8:	90                   	nop
   140005ed9:	90                   	nop
   140005eda:	90                   	nop
   140005edb:	90                   	nop
   140005edc:	90                   	nop
   140005edd:	90                   	nop
   140005ede:	90                   	nop
   140005edf:	90                   	nop

0000000140005ee0 <__p__fmode>:
   140005ee0:	48 8b 05 e9 25 00 00 	mov    0x25e9(%rip),%rax        # 1400084d0 <.refptr.__imp__fmode>
   140005ee7:	48 8b 00             	mov    (%rax),%rax
   140005eea:	c3                   	ret
   140005eeb:	90                   	nop
   140005eec:	90                   	nop
   140005eed:	90                   	nop
   140005eee:	90                   	nop
   140005eef:	90                   	nop

0000000140005ef0 <__p__commode>:
   140005ef0:	48 8b 05 c9 25 00 00 	mov    0x25c9(%rip),%rax        # 1400084c0 <.refptr.__imp__commode>
   140005ef7:	48 8b 00             	mov    (%rax),%rax
   140005efa:	c3                   	ret
   140005efb:	90                   	nop
   140005efc:	90                   	nop
   140005efd:	90                   	nop
   140005efe:	90                   	nop
   140005eff:	90                   	nop

0000000140005f00 <_get_invalid_parameter_handler>:
   140005f00:	48 8b 05 a9 52 00 00 	mov    0x52a9(%rip),%rax        # 14000b1b0 <handler>
   140005f07:	c3                   	ret
   140005f08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005f0f:	00 

0000000140005f10 <_set_invalid_parameter_handler>:
   140005f10:	48 89 c8             	mov    %rcx,%rax
   140005f13:	48 87 05 96 52 00 00 	xchg   %rax,0x5296(%rip)        # 14000b1b0 <handler>
   140005f1a:	c3                   	ret
   140005f1b:	90                   	nop
   140005f1c:	90                   	nop
   140005f1d:	90                   	nop
   140005f1e:	90                   	nop
   140005f1f:	90                   	nop

0000000140005f20 <__acrt_iob_func>:
   140005f20:	53                   	push   %rbx
   140005f21:	48 83 ec 20          	sub    $0x20,%rsp
   140005f25:	89 cb                	mov    %ecx,%ebx
   140005f27:	e8 24 00 00 00       	call   140005f50 <__iob_func>
   140005f2c:	89 d9                	mov    %ebx,%ecx
   140005f2e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140005f32:	48 c1 e2 04          	shl    $0x4,%rdx
   140005f36:	48 01 d0             	add    %rdx,%rax
   140005f39:	48 83 c4 20          	add    $0x20,%rsp
   140005f3d:	5b                   	pop    %rbx
   140005f3e:	c3                   	ret
   140005f3f:	90                   	nop

0000000140005f40 <__C_specific_handler>:
   140005f40:	ff 25 1e 64 00 00    	jmp    *0x641e(%rip)        # 14000c364 <__imp___C_specific_handler>
   140005f46:	90                   	nop
   140005f47:	90                   	nop

0000000140005f48 <__getmainargs>:
   140005f48:	ff 25 1e 64 00 00    	jmp    *0x641e(%rip)        # 14000c36c <__imp___getmainargs>
   140005f4e:	90                   	nop
   140005f4f:	90                   	nop

0000000140005f50 <__iob_func>:
   140005f50:	ff 25 26 64 00 00    	jmp    *0x6426(%rip)        # 14000c37c <__imp___iob_func>
   140005f56:	90                   	nop
   140005f57:	90                   	nop

0000000140005f58 <__set_app_type>:
   140005f58:	ff 25 26 64 00 00    	jmp    *0x6426(%rip)        # 14000c384 <__imp___set_app_type>
   140005f5e:	90                   	nop
   140005f5f:	90                   	nop

0000000140005f60 <__setusermatherr>:
   140005f60:	ff 25 26 64 00 00    	jmp    *0x6426(%rip)        # 14000c38c <__imp___setusermatherr>
   140005f66:	90                   	nop
   140005f67:	90                   	nop

0000000140005f68 <_amsg_exit>:
   140005f68:	ff 25 26 64 00 00    	jmp    *0x6426(%rip)        # 14000c394 <__imp__amsg_exit>
   140005f6e:	90                   	nop
   140005f6f:	90                   	nop

0000000140005f70 <_cexit>:
   140005f70:	ff 25 26 64 00 00    	jmp    *0x6426(%rip)        # 14000c39c <__imp__cexit>
   140005f76:	90                   	nop
   140005f77:	90                   	nop

0000000140005f78 <_initterm>:
   140005f78:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3b4 <__imp__initterm>
   140005f7e:	90                   	nop
   140005f7f:	90                   	nop

0000000140005f80 <_onexit>:
   140005f80:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3bc <__imp__onexit>
   140005f86:	90                   	nop
   140005f87:	90                   	nop

0000000140005f88 <abort>:
   140005f88:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3c4 <__imp_abort>
   140005f8e:	90                   	nop
   140005f8f:	90                   	nop

0000000140005f90 <calloc>:
   140005f90:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3cc <__imp_calloc>
   140005f96:	90                   	nop
   140005f97:	90                   	nop

0000000140005f98 <exit>:
   140005f98:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3d4 <__imp_exit>
   140005f9e:	90                   	nop
   140005f9f:	90                   	nop

0000000140005fa0 <fprintf>:
   140005fa0:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3dc <__imp_fprintf>
   140005fa6:	90                   	nop
   140005fa7:	90                   	nop

0000000140005fa8 <free>:
   140005fa8:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3e4 <__imp_free>
   140005fae:	90                   	nop
   140005faf:	90                   	nop

0000000140005fb0 <fwrite>:
   140005fb0:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3ec <__imp_fwrite>
   140005fb6:	90                   	nop
   140005fb7:	90                   	nop

0000000140005fb8 <malloc>:
   140005fb8:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3f4 <__imp_malloc>
   140005fbe:	90                   	nop
   140005fbf:	90                   	nop

0000000140005fc0 <memcpy>:
   140005fc0:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c3fc <__imp_memcpy>
   140005fc6:	90                   	nop
   140005fc7:	90                   	nop

0000000140005fc8 <signal>:
   140005fc8:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c404 <__imp_signal>
   140005fce:	90                   	nop
   140005fcf:	90                   	nop

0000000140005fd0 <strlen>:
   140005fd0:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c40c <__imp_strlen>
   140005fd6:	90                   	nop
   140005fd7:	90                   	nop

0000000140005fd8 <strncmp>:
   140005fd8:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c414 <__imp_strncmp>
   140005fde:	90                   	nop
   140005fdf:	90                   	nop

0000000140005fe0 <vfprintf>:
   140005fe0:	ff 25 36 64 00 00    	jmp    *0x6436(%rip)        # 14000c41c <__imp_vfprintf>
   140005fe6:	90                   	nop
   140005fe7:	90                   	nop
   140005fe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005fef:	00 

0000000140005ff0 <VirtualQuery>:
   140005ff0:	ff 25 5e 63 00 00    	jmp    *0x635e(%rip)        # 14000c354 <__imp_VirtualQuery>
   140005ff6:	90                   	nop
   140005ff7:	90                   	nop

0000000140005ff8 <VirtualProtect>:
   140005ff8:	ff 25 4e 63 00 00    	jmp    *0x634e(%rip)        # 14000c34c <__imp_VirtualProtect>
   140005ffe:	90                   	nop
   140005fff:	90                   	nop

0000000140006000 <TlsGetValue>:
   140006000:	ff 25 3e 63 00 00    	jmp    *0x633e(%rip)        # 14000c344 <__imp_TlsGetValue>
   140006006:	90                   	nop
   140006007:	90                   	nop

0000000140006008 <Sleep>:
   140006008:	ff 25 2e 63 00 00    	jmp    *0x632e(%rip)        # 14000c33c <__imp_Sleep>
   14000600e:	90                   	nop
   14000600f:	90                   	nop

0000000140006010 <SetUnhandledExceptionFilter>:
   140006010:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000c334 <__imp_SetUnhandledExceptionFilter>
   140006016:	90                   	nop
   140006017:	90                   	nop

0000000140006018 <LeaveCriticalSection>:
   140006018:	ff 25 0e 63 00 00    	jmp    *0x630e(%rip)        # 14000c32c <__imp_LeaveCriticalSection>
   14000601e:	90                   	nop
   14000601f:	90                   	nop

0000000140006020 <InitializeCriticalSection>:
   140006020:	ff 25 fe 62 00 00    	jmp    *0x62fe(%rip)        # 14000c324 <__imp_InitializeCriticalSection>
   140006026:	90                   	nop
   140006027:	90                   	nop

0000000140006028 <GetLastError>:
   140006028:	ff 25 ee 62 00 00    	jmp    *0x62ee(%rip)        # 14000c31c <__imp_GetLastError>
   14000602e:	90                   	nop
   14000602f:	90                   	nop

0000000140006030 <EnterCriticalSection>:
   140006030:	ff 25 de 62 00 00    	jmp    *0x62de(%rip)        # 14000c314 <__imp_EnterCriticalSection>
   140006036:	90                   	nop
   140006037:	90                   	nop

0000000140006038 <DeleteCriticalSection>:
   140006038:	ff 25 ce 62 00 00    	jmp    *0x62ce(%rip)        # 14000c30c <__imp_DeleteCriticalSection>
   14000603e:	90                   	nop
   14000603f:	90                   	nop

0000000140006040 <_ZNKSt5ctypeIcE8do_widenEc>:
   140006040:	89 d0                	mov    %edx,%eax
   140006042:	c3                   	ret
   140006043:	90                   	nop
   140006044:	90                   	nop
   140006045:	90                   	nop
   140006046:	90                   	nop
   140006047:	90                   	nop
   140006048:	90                   	nop
   140006049:	90                   	nop
   14000604a:	90                   	nop
   14000604b:	90                   	nop
   14000604c:	90                   	nop
   14000604d:	90                   	nop
   14000604e:	90                   	nop
   14000604f:	90                   	nop

0000000140006050 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>:
   140006050:	41 57                	push   %r15
   140006052:	41 56                	push   %r14
   140006054:	41 55                	push   %r13
   140006056:	41 54                	push   %r12
   140006058:	55                   	push   %rbp
   140006059:	57                   	push   %rdi
   14000605a:	56                   	push   %rsi
   14000605b:	53                   	push   %rbx
   14000605c:	48 83 ec 38          	sub    $0x38,%rsp
   140006060:	49 89 cc             	mov    %rcx,%r12
   140006063:	48 89 d3             	mov    %rdx,%rbx
   140006066:	48 85 d2             	test   %rdx,%rdx
   140006069:	74 64                	je     1400060cf <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   14000606b:	48 b8 55 55 55 55 55 	movabs $0x555555555555555,%rax
   140006072:	55 55 05 
   140006075:	48 8b 79 08          	mov    0x8(%rcx),%rdi
   140006079:	48 89 fe             	mov    %rdi,%rsi
   14000607c:	48 2b 31             	sub    (%rcx),%rsi
   14000607f:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
   140006086:	aa aa aa 
   140006089:	49 89 f5             	mov    %rsi,%r13
   14000608c:	49 c1 fd 03          	sar    $0x3,%r13
   140006090:	4c 0f af e9          	imul   %rcx,%r13
   140006094:	4c 29 e8             	sub    %r13,%rax
   140006097:	48 89 c2             	mov    %rax,%rdx
   14000609a:	49 8b 44 24 10       	mov    0x10(%r12),%rax
   14000609f:	48 29 f8             	sub    %rdi,%rax
   1400060a2:	48 c1 f8 03          	sar    $0x3,%rax
   1400060a6:	48 0f af c1          	imul   %rcx,%rax
   1400060aa:	48 39 d8             	cmp    %rbx,%rax
   1400060ad:	72 31                	jb     1400060e0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x90>
   1400060af:	48 89 fe             	mov    %rdi,%rsi
   1400060b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400060b8:	48 89 f1             	mov    %rsi,%rcx
   1400060bb:	e8 00 b8 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400060c0:	48 83 c6 18          	add    $0x18,%rsi
   1400060c4:	48 83 eb 01          	sub    $0x1,%rbx
   1400060c8:	75 ee                	jne    1400060b8 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x68>
   1400060ca:	49 89 74 24 08       	mov    %rsi,0x8(%r12)
   1400060cf:	48 83 c4 38          	add    $0x38,%rsp
   1400060d3:	5b                   	pop    %rbx
   1400060d4:	5e                   	pop    %rsi
   1400060d5:	5f                   	pop    %rdi
   1400060d6:	5d                   	pop    %rbp
   1400060d7:	41 5c                	pop    %r12
   1400060d9:	41 5d                	pop    %r13
   1400060db:	41 5e                	pop    %r14
   1400060dd:	41 5f                	pop    %r15
   1400060df:	c3                   	ret
   1400060e0:	48 39 da             	cmp    %rbx,%rdx
   1400060e3:	0f 82 8d 01 00 00    	jb     140006276 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x226>
   1400060e9:	49 39 dd             	cmp    %rbx,%r13
   1400060ec:	0f 82 3e 01 00 00    	jb     140006230 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1e0>
   1400060f2:	48 ba f8 ff ff ff ff 	movabs $0x7ffffffffffffff8,%rdx
   1400060f9:	ff ff 7f 
   1400060fc:	4b 8d 44 2d 00       	lea    0x0(%r13,%r13,1),%rax
   140006101:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140006106:	4c 39 e8             	cmp    %r13,%rax
   140006109:	0f 83 48 01 00 00    	jae    140006257 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x207>
   14000610f:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006114:	48 89 df             	mov    %rbx,%rdi
   140006117:	e8 2c ec ff ff       	call   140004d48 <_Znwy>
   14000611c:	49 89 c6             	mov    %rax,%r14
   14000611f:	48 8d 04 30          	lea    (%rax,%rsi,1),%rax
   140006123:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140006128:	48 89 c6             	mov    %rax,%rsi
   14000612b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006130:	48 89 f1             	mov    %rsi,%rcx
   140006133:	e8 88 b7 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140006138:	48 83 c6 18          	add    $0x18,%rsi
   14000613c:	48 83 ef 01          	sub    $0x1,%rdi
   140006140:	75 ee                	jne    140006130 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xe0>
   140006142:	4d 8b 7c 24 08       	mov    0x8(%r12),%r15
   140006147:	49 8b 34 24          	mov    (%r12),%rsi
   14000614b:	4c 89 f5             	mov    %r14,%rbp
   14000614e:	49 39 f7             	cmp    %rsi,%r15
   140006151:	0f 84 9b 00 00 00    	je     1400061f2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   140006157:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   14000615c:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   140006163:	00 
   140006164:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006168:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   14000616c:	48 8b 3e             	mov    (%rsi),%rdi
   14000616f:	48 39 fe             	cmp    %rdi,%rsi
   140006172:	74 2d                	je     1400061a1 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x151>
   140006174:	0f 1f 40 00          	nopl   0x0(%rax)
   140006178:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000617d:	e8 c6 eb ff ff       	call   140004d48 <_Znwy>
   140006182:	48 89 c1             	mov    %rax,%rcx
   140006185:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140006189:	48 89 ea             	mov    %rbp,%rdx
   14000618c:	88 41 10             	mov    %al,0x10(%rcx)
   14000618f:	e8 0c ec ff ff       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006194:	48 8b 3f             	mov    (%rdi),%rdi
   140006197:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   14000619c:	48 39 fe             	cmp    %rdi,%rsi
   14000619f:	75 d7                	jne    140006178 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x128>
   1400061a1:	48 83 c6 18          	add    $0x18,%rsi
   1400061a5:	48 83 c5 18          	add    $0x18,%rbp
   1400061a9:	49 39 f7             	cmp    %rsi,%r15
   1400061ac:	75 a9                	jne    140006157 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x107>
   1400061ae:	49 8b 6c 24 08       	mov    0x8(%r12),%rbp
   1400061b3:	49 8b 34 24          	mov    (%r12),%rsi
   1400061b7:	48 39 f5             	cmp    %rsi,%rbp
   1400061ba:	74 36                	je     1400061f2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   1400061bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400061c0:	48 8b 3e             	mov    (%rsi),%rdi
   1400061c3:	48 39 fe             	cmp    %rdi,%rsi
   1400061c6:	74 1d                	je     1400061e5 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x195>
   1400061c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400061cf:	00 
   1400061d0:	48 89 f9             	mov    %rdi,%rcx
   1400061d3:	48 8b 3f             	mov    (%rdi),%rdi
   1400061d6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400061db:	e8 70 eb ff ff       	call   140004d50 <_ZdlPvy>
   1400061e0:	48 39 fe             	cmp    %rdi,%rsi
   1400061e3:	75 eb                	jne    1400061d0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x180>
   1400061e5:	48 83 c6 18          	add    $0x18,%rsi
   1400061e9:	48 39 f5             	cmp    %rsi,%rbp
   1400061ec:	75 d2                	jne    1400061c0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x170>
   1400061ee:	49 8b 34 24          	mov    (%r12),%rsi
   1400061f2:	48 85 f6             	test   %rsi,%rsi
   1400061f5:	74 10                	je     140006207 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1b7>
   1400061f7:	49 8b 54 24 10       	mov    0x10(%r12),%rdx
   1400061fc:	48 89 f1             	mov    %rsi,%rcx
   1400061ff:	48 29 f2             	sub    %rsi,%rdx
   140006202:	e8 49 eb ff ff       	call   140004d50 <_ZdlPvy>
   140006207:	4c 01 eb             	add    %r13,%rbx
   14000620a:	4d 89 34 24          	mov    %r14,(%r12)
   14000620e:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   140006212:	49 8d 04 c6          	lea    (%r14,%rax,8),%rax
   140006216:	49 89 44 24 08       	mov    %rax,0x8(%r12)
   14000621b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140006220:	49 01 c6             	add    %rax,%r14
   140006223:	4d 89 74 24 10       	mov    %r14,0x10(%r12)
   140006228:	e9 a2 fe ff ff       	jmp    1400060cf <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   14000622d:	0f 1f 00             	nopl   (%rax)
   140006230:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   140006237:	55 55 05 
   14000623a:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
   14000623e:	48 39 d0             	cmp    %rdx,%rax
   140006241:	48 0f 47 c2          	cmova  %rdx,%rax
   140006245:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   140006249:	48 c1 e0 03          	shl    $0x3,%rax
   14000624d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140006252:	e9 b8 fe ff ff       	jmp    14000610f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   140006257:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   14000625e:	55 55 05 
   140006261:	48 39 d0             	cmp    %rdx,%rax
   140006264:	48 0f 47 c2          	cmova  %rdx,%rax
   140006268:	48 6b c0 18          	imul   $0x18,%rax,%rax
   14000626c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140006271:	e9 99 fe ff ff       	jmp    14000610f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   140006276:	48 8d 0d cb 1d 00 00 	lea    0x1dcb(%rip),%rcx        # 140008048 <.rdata+0x18>
   14000627d:	e8 d6 ea ff ff       	call   140004d58 <_ZSt20__throw_length_errorPKc>
   140006282:	48 89 c1             	mov    %rax,%rcx
   140006285:	e8 ae ea ff ff       	call   140004d38 <__cxa_begin_catch>
   14000628a:	48 39 fe             	cmp    %rdi,%rsi
   14000628d:	0f 84 af 00 00 00    	je     140006342 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2f2>
   140006293:	48 8b 0f             	mov    (%rdi),%rcx
   140006296:	48 39 cf             	cmp    %rcx,%rdi
   140006299:	0f 84 e2 00 00 00    	je     140006381 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x331>
   14000629f:	48 8b 19             	mov    (%rcx),%rbx
   1400062a2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400062a7:	e8 a4 ea ff ff       	call   140004d50 <_ZdlPvy>
   1400062ac:	48 89 d9             	mov    %rbx,%rcx
   1400062af:	eb e5                	jmp    140006296 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x246>
   1400062b1:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   1400062b5:	48 89 c6             	mov    %rax,%rsi
   1400062b8:	48 39 cd             	cmp    %rcx,%rbp
   1400062bb:	0f 84 96 00 00 00    	je     140006357 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x307>
   1400062c1:	48 8b 39             	mov    (%rcx),%rdi
   1400062c4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400062c9:	e8 82 ea ff ff       	call   140004d50 <_ZdlPvy>
   1400062ce:	48 89 f9             	mov    %rdi,%rcx
   1400062d1:	eb e5                	jmp    1400062b8 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x268>
   1400062d3:	48 89 c1             	mov    %rax,%rcx
   1400062d6:	e8 5d ea ff ff       	call   140004d38 <__cxa_begin_catch>
   1400062db:	48 39 74 24 28       	cmp    %rsi,0x28(%rsp)
   1400062e0:	74 21                	je     140006303 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2b3>
   1400062e2:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400062e7:	48 8b 08             	mov    (%rax),%rcx
   1400062ea:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   1400062ef:	74 49                	je     14000633a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2ea>
   1400062f1:	48 8b 19             	mov    (%rcx),%rbx
   1400062f4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400062f9:	e8 52 ea ff ff       	call   140004d50 <_ZdlPvy>
   1400062fe:	48 89 d9             	mov    %rbx,%rcx
   140006301:	eb e7                	jmp    1400062ea <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x29a>
   140006303:	e8 18 ea ff ff       	call   140004d20 <__cxa_rethrow>
   140006308:	48 89 c3             	mov    %rax,%rbx
   14000630b:	e8 20 ea ff ff       	call   140004d30 <__cxa_end_catch>
   140006310:	48 89 d9             	mov    %rbx,%rcx
   140006313:	e8 20 ea ff ff       	call   140004d38 <__cxa_begin_catch>
   140006318:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   14000631d:	4c 89 f1             	mov    %r14,%rcx
   140006320:	e8 2b ea ff ff       	call   140004d50 <_ZdlPvy>
   140006325:	e8 f6 e9 ff ff       	call   140004d20 <__cxa_rethrow>
   14000632a:	48 89 c3             	mov    %rax,%rbx
   14000632d:	e8 fe e9 ff ff       	call   140004d30 <__cxa_end_catch>
   140006332:	48 89 d9             	mov    %rbx,%rcx
   140006335:	e8 56 fb ff ff       	call   140005e90 <_Unwind_Resume>
   14000633a:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   140006340:	eb 99                	jmp    1400062db <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x28b>
   140006342:	e8 d9 e9 ff ff       	call   140004d20 <__cxa_rethrow>
   140006347:	48 89 c3             	mov    %rax,%rbx
   14000634a:	e8 e1 e9 ff ff       	call   140004d30 <__cxa_end_catch>
   14000634f:	48 89 d9             	mov    %rbx,%rcx
   140006352:	e8 39 fb ff ff       	call   140005e90 <_Unwind_Resume>
   140006357:	48 89 f1             	mov    %rsi,%rcx
   14000635a:	4c 89 f6             	mov    %r14,%rsi
   14000635d:	e8 d6 e9 ff ff       	call   140004d38 <__cxa_begin_catch>
   140006362:	48 39 f5             	cmp    %rsi,%rbp
   140006365:	74 23                	je     14000638a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x33a>
   140006367:	48 8b 0e             	mov    (%rsi),%rcx
   14000636a:	48 39 ce             	cmp    %rcx,%rsi
   14000636d:	74 6b                	je     1400063da <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x38a>
   14000636f:	48 8b 39             	mov    (%rcx),%rdi
   140006372:	ba 18 00 00 00       	mov    $0x18,%edx
   140006377:	e8 d4 e9 ff ff       	call   140004d50 <_ZdlPvy>
   14000637c:	48 89 f9             	mov    %rdi,%rcx
   14000637f:	eb e9                	jmp    14000636a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x31a>
   140006381:	48 83 c7 18          	add    $0x18,%rdi
   140006385:	e9 00 ff ff ff       	jmp    14000628a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x23a>
   14000638a:	e8 91 e9 ff ff       	call   140004d20 <__cxa_rethrow>
   14000638f:	48 89 c6             	mov    %rax,%rsi
   140006392:	48 6b db 18          	imul   $0x18,%rbx,%rbx
   140006396:	e8 95 e9 ff ff       	call   140004d30 <__cxa_end_catch>
   14000639b:	48 89 f1             	mov    %rsi,%rcx
   14000639e:	e8 95 e9 ff ff       	call   140004d38 <__cxa_begin_catch>
   1400063a3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400063a8:	48 01 c3             	add    %rax,%rbx
   1400063ab:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400063b0:	48 39 c3             	cmp    %rax,%rbx
   1400063b3:	0f 84 5f ff ff ff    	je     140006318 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2c8>
   1400063b9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400063be:	48 8b 08             	mov    (%rax),%rcx
   1400063c1:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   1400063c6:	74 18                	je     1400063e0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x390>
   1400063c8:	48 8b 31             	mov    (%rcx),%rsi
   1400063cb:	ba 18 00 00 00       	mov    $0x18,%edx
   1400063d0:	e8 7b e9 ff ff       	call   140004d50 <_ZdlPvy>
   1400063d5:	48 89 f1             	mov    %rsi,%rcx
   1400063d8:	eb e7                	jmp    1400063c1 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x371>
   1400063da:	48 83 c6 18          	add    $0x18,%rsi
   1400063de:	eb 82                	jmp    140006362 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x312>
   1400063e0:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   1400063e6:	eb c3                	jmp    1400063ab <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x35b>
   1400063e8:	90                   	nop
   1400063e9:	90                   	nop
   1400063ea:	90                   	nop
   1400063eb:	90                   	nop
   1400063ec:	90                   	nop
   1400063ed:	90                   	nop
   1400063ee:	90                   	nop
   1400063ef:	90                   	nop

00000001400063f0 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>:
   1400063f0:	57                   	push   %rdi
   1400063f1:	56                   	push   %rsi
   1400063f2:	53                   	push   %rbx
   1400063f3:	48 83 ec 20          	sub    $0x20,%rsp
   1400063f7:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   1400063fc:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140006403:	00 
   140006404:	48 89 ce             	mov    %rcx,%rsi
   140006407:	48 89 d7             	mov    %rdx,%rdi
   14000640a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000640e:	0f 11 01             	movups %xmm0,(%rcx)
   140006411:	48 8b 1a             	mov    (%rdx),%rbx
   140006414:	48 39 d3             	cmp    %rdx,%rbx
   140006417:	74 30                	je     140006449 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x59>
   140006419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006420:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006425:	e8 1e e9 ff ff       	call   140004d48 <_Znwy>
   14000642a:	48 89 c1             	mov    %rax,%rcx
   14000642d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006431:	48 89 f2             	mov    %rsi,%rdx
   140006434:	88 41 10             	mov    %al,0x10(%rcx)
   140006437:	e8 64 e9 ff ff       	call   140004da0 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000643c:	48 8b 1b             	mov    (%rbx),%rbx
   14000643f:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140006444:	48 39 fb             	cmp    %rdi,%rbx
   140006447:	75 d7                	jne    140006420 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x30>
   140006449:	48 83 c4 20          	add    $0x20,%rsp
   14000644d:	5b                   	pop    %rbx
   14000644e:	5e                   	pop    %rsi
   14000644f:	5f                   	pop    %rdi
   140006450:	c3                   	ret
   140006451:	48 8b 0e             	mov    (%rsi),%rcx
   140006454:	48 89 c3             	mov    %rax,%rbx
   140006457:	48 39 ce             	cmp    %rcx,%rsi
   14000645a:	74 12                	je     14000646e <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x7e>
   14000645c:	48 8b 39             	mov    (%rcx),%rdi
   14000645f:	ba 18 00 00 00       	mov    $0x18,%edx
   140006464:	e8 e7 e8 ff ff       	call   140004d50 <_ZdlPvy>
   140006469:	48 89 f9             	mov    %rdi,%rcx
   14000646c:	eb e9                	jmp    140006457 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x67>
   14000646e:	48 89 d9             	mov    %rbx,%rcx
   140006471:	e8 1a fa ff ff       	call   140005e90 <_Unwind_Resume>
   140006476:	90                   	nop
   140006477:	90                   	nop
   140006478:	90                   	nop
   140006479:	90                   	nop
   14000647a:	90                   	nop
   14000647b:	90                   	nop
   14000647c:	90                   	nop
   14000647d:	90                   	nop
   14000647e:	90                   	nop
   14000647f:	90                   	nop

0000000140006480 <_GLOBAL__sub_I__ZN10Arithmetic10carry_flagE>:
   140006480:	48 83 ec 28          	sub    $0x28,%rsp
   140006484:	48 8d 0d a6 4b 00 00 	lea    0x4ba6(%rip),%rcx        # 14000b031 <_ZStL8__ioinit>
   14000648b:	e8 00 e9 ff ff       	call   140004d90 <_ZNSt8ios_base4InitC1Ev>
   140006490:	48 8d 0d b9 af ff ff 	lea    -0x5047(%rip),%rcx        # 140001450 <__tcf_0>
   140006497:	48 83 c4 28          	add    $0x28,%rsp
   14000649b:	e9 70 af ff ff       	jmp    140001410 <atexit>

00000001400064a0 <_GLOBAL__sub_I__ZN4ByteC2Ey>:
   1400064a0:	48 83 ec 28          	sub    $0x28,%rsp
   1400064a4:	48 8d 0d 95 4b 00 00 	lea    0x4b95(%rip),%rcx        # 14000b040 <_ZStL8__ioinit>
   1400064ab:	e8 e0 e8 ff ff       	call   140004d90 <_ZNSt8ios_base4InitC1Ev>
   1400064b0:	48 8d 0d b9 b1 ff ff 	lea    -0x4e47(%rip),%rcx        # 140001670 <__tcf_0>
   1400064b7:	48 83 c4 28          	add    $0x28,%rsp
   1400064bb:	e9 50 af ff ff       	jmp    140001410 <atexit>

00000001400064c0 <main>:
   1400064c0:	41 57                	push   %r15
   1400064c2:	41 56                	push   %r14
   1400064c4:	41 55                	push   %r13
   1400064c6:	41 54                	push   %r12
   1400064c8:	55                   	push   %rbp
   1400064c9:	57                   	push   %rdi
   1400064ca:	56                   	push   %rsi
   1400064cb:	53                   	push   %rbx
   1400064cc:	48 81 ec 88 01 00 00 	sub    $0x188,%rsp
   1400064d3:	e8 08 ea ff ff       	call   140004ee0 <__main>
   1400064d8:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   1400064dd:	ba 06 00 00 00       	mov    $0x6,%edx
   1400064e2:	48 8d 5c 24 60       	lea    0x60(%rsp),%rbx
   1400064e7:	48 89 f1             	mov    %rsi,%rcx
   1400064ea:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
   1400064ef:	e8 5c b4 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   1400064f4:	ba 03 00 00 00       	mov    $0x3,%edx
   1400064f9:	48 89 d9             	mov    %rbx,%rcx
   1400064fc:	e8 4f b4 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140006501:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
   140006508:	00 
   140006509:	48 89 da             	mov    %rbx,%rdx
   14000650c:	48 89 f9             	mov    %rdi,%rcx
   14000650f:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140006514:	e8 d7 fe ff ff       	call   1400063f0 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006519:	4c 8d b4 24 00 01 00 	lea    0x100(%rsp),%r14
   140006520:	00 
   140006521:	ba 08 00 00 00       	mov    $0x8,%edx
   140006526:	4c 89 f1             	mov    %r14,%rcx
   140006529:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
   14000652e:	e8 1d b4 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140006533:	48 8d 84 24 40 01 00 	lea    0x140(%rsp),%rax
   14000653a:	00 
   14000653b:	49 89 f8             	mov    %rdi,%r8
   14000653e:	4c 89 f2             	mov    %r14,%rdx
   140006541:	48 89 c1             	mov    %rax,%rcx
   140006544:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140006549:	48 89 c7             	mov    %rax,%rdi
   14000654c:	e8 cf df ff ff       	call   140004520 <_ZN13NaturalBinaryrmES_>
   140006551:	48 8d ac 24 c0 00 00 	lea    0xc0(%rsp),%rbp
   140006558:	00 
   140006559:	48 89 da             	mov    %rbx,%rdx
   14000655c:	48 89 e9             	mov    %rbp,%rcx
   14000655f:	e8 8c fe ff ff       	call   1400063f0 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006564:	4c 8d a4 24 80 00 00 	lea    0x80(%rsp),%r12
   14000656b:	00 
   14000656c:	48 89 da             	mov    %rbx,%rdx
   14000656f:	4c 89 e1             	mov    %r12,%rcx
   140006572:	e8 79 fe ff ff       	call   1400063f0 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006577:	4c 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%r13
   14000657e:	00 
   14000657f:	4d 89 e0             	mov    %r12,%r8
   140006582:	48 89 f2             	mov    %rsi,%rdx
   140006585:	4c 89 e9             	mov    %r13,%rcx
   140006588:	e8 93 b5 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   14000658d:	4c 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%r14
   140006594:	00 
   140006595:	49 89 e8             	mov    %rbp,%r8
   140006598:	4c 89 ea             	mov    %r13,%rdx
   14000659b:	4c 89 f1             	mov    %r14,%rcx
   14000659e:	e8 cd e1 ff ff       	call   140004770 <_ZN13NaturalBinarydvES_>
   1400065a3:	4c 8d bc 24 60 01 00 	lea    0x160(%rsp),%r15
   1400065aa:	00 
   1400065ab:	49 89 f8             	mov    %rdi,%r8
   1400065ae:	4c 89 f2             	mov    %r14,%rdx
   1400065b1:	4c 89 f9             	mov    %r15,%rcx
   1400065b4:	e8 67 b5 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   1400065b9:	48 8b 0d 40 1e 00 00 	mov    0x1e40(%rip),%rcx        # 140008400 <__fu4__ZSt4cout>
   1400065c0:	4c 89 fa             	mov    %r15,%rdx
   1400065c3:	e8 d8 cd ff ff       	call   1400033a0 <_ZlsRSo13NaturalBinary>
   1400065c8:	48 89 c6             	mov    %rax,%rsi
   1400065cb:	48 8b 00             	mov    (%rax),%rax
   1400065ce:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400065d2:	48 8b bc 06 f0 00 00 	mov    0xf0(%rsi,%rax,1),%rdi
   1400065d9:	00 
   1400065da:	48 85 ff             	test   %rdi,%rdi
   1400065dd:	0f 84 aa 00 00 00    	je     14000668d <main+0x1cd>
   1400065e3:	80 7f 38 00          	cmpb   $0x0,0x38(%rdi)
   1400065e7:	0f 84 82 00 00 00    	je     14000666f <main+0x1af>
   1400065ed:	0f be 57 43          	movsbl 0x43(%rdi),%edx
   1400065f1:	48 89 f1             	mov    %rsi,%rcx
   1400065f4:	e8 27 e8 ff ff       	call   140004e20 <_ZNSo3putEc>
   1400065f9:	48 89 c1             	mov    %rax,%rcx
   1400065fc:	e8 17 e8 ff ff       	call   140004e18 <_ZNSo5flushEv>
   140006601:	4c 89 f9             	mov    %r15,%rcx
   140006604:	e8 d7 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006609:	4c 89 f1             	mov    %r14,%rcx
   14000660c:	e8 cf b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006611:	4c 89 e9             	mov    %r13,%rcx
   140006614:	e8 c7 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006619:	4c 89 e1             	mov    %r12,%rcx
   14000661c:	e8 bf b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006621:	48 89 e9             	mov    %rbp,%rcx
   140006624:	e8 b7 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006629:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   14000662e:	e8 ad b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006633:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140006638:	e8 a3 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000663d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006642:	e8 99 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006647:	48 89 d9             	mov    %rbx,%rcx
   14000664a:	e8 91 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000664f:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
   140006654:	e8 87 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006659:	31 c0                	xor    %eax,%eax
   14000665b:	48 81 c4 88 01 00 00 	add    $0x188,%rsp
   140006662:	5b                   	pop    %rbx
   140006663:	5e                   	pop    %rsi
   140006664:	5f                   	pop    %rdi
   140006665:	5d                   	pop    %rbp
   140006666:	41 5c                	pop    %r12
   140006668:	41 5d                	pop    %r13
   14000666a:	41 5e                	pop    %r14
   14000666c:	41 5f                	pop    %r15
   14000666e:	c3                   	ret
   14000666f:	48 89 f9             	mov    %rdi,%rcx
   140006672:	e8 b1 e7 ff ff       	call   140004e28 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   140006677:	48 8b 07             	mov    (%rdi),%rax
   14000667a:	ba 0a 00 00 00       	mov    $0xa,%edx
   14000667f:	48 89 f9             	mov    %rdi,%rcx
   140006682:	ff 50 30             	call   *0x30(%rax)
   140006685:	0f be d0             	movsbl %al,%edx
   140006688:	e9 64 ff ff ff       	jmp    1400065f1 <main+0x131>
   14000668d:	e8 ce e6 ff ff       	call   140004d60 <_ZSt16__throw_bad_castv>
   140006692:	4c 89 f9             	mov    %r15,%rcx
   140006695:	48 89 c6             	mov    %rax,%rsi
   140006698:	e8 43 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000669d:	4c 89 f1             	mov    %r14,%rcx
   1400066a0:	e8 3b b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066a5:	4c 89 e9             	mov    %r13,%rcx
   1400066a8:	e8 33 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066ad:	4c 89 e1             	mov    %r12,%rcx
   1400066b0:	e8 2b b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066b5:	48 89 e9             	mov    %rbp,%rcx
   1400066b8:	e8 23 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066bd:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   1400066c2:	e8 19 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066c7:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   1400066cc:	e8 0f b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066d1:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400066d6:	e8 05 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066db:	48 89 d9             	mov    %rbx,%rcx
   1400066de:	e8 fd b3 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066e3:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
   1400066e8:	e8 f3 b3 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066ed:	48 89 f1             	mov    %rsi,%rcx
   1400066f0:	e8 9b f7 ff ff       	call   140005e90 <_Unwind_Resume>
   1400066f5:	48 89 c6             	mov    %rax,%rsi
   1400066f8:	eb a3                	jmp    14000669d <main+0x1dd>
   1400066fa:	48 89 c6             	mov    %rax,%rsi
   1400066fd:	eb a6                	jmp    1400066a5 <main+0x1e5>
   1400066ff:	48 89 c6             	mov    %rax,%rsi
   140006702:	eb a9                	jmp    1400066ad <main+0x1ed>
   140006704:	48 89 c6             	mov    %rax,%rsi
   140006707:	eb ac                	jmp    1400066b5 <main+0x1f5>
   140006709:	48 89 c6             	mov    %rax,%rsi
   14000670c:	eb af                	jmp    1400066bd <main+0x1fd>
   14000670e:	48 89 c6             	mov    %rax,%rsi
   140006711:	eb b4                	jmp    1400066c7 <main+0x207>
   140006713:	48 89 c6             	mov    %rax,%rsi
   140006716:	eb b9                	jmp    1400066d1 <main+0x211>
   140006718:	48 89 c6             	mov    %rax,%rsi
   14000671b:	eb be                	jmp    1400066db <main+0x21b>
   14000671d:	48 89 c6             	mov    %rax,%rsi
   140006720:	eb c1                	jmp    1400066e3 <main+0x223>
   140006722:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006729:	00 00 00 00 
   14000672d:	0f 1f 00             	nopl   (%rax)

0000000140006730 <_GLOBAL__sub_I_main>:
   140006730:	48 83 ec 28          	sub    $0x28,%rsp
   140006734:	48 8d 0d 15 49 00 00 	lea    0x4915(%rip),%rcx        # 14000b050 <_ZStL8__ioinit>
   14000673b:	e8 50 e6 ff ff       	call   140004d90 <_ZNSt8ios_base4InitC1Ev>
   140006740:	48 8d 0d 09 b0 ff ff 	lea    -0x4ff7(%rip),%rcx        # 140001750 <__tcf_0>
   140006747:	48 83 c4 28          	add    $0x28,%rsp
   14000674b:	e9 c0 ac ff ff       	jmp    140001410 <atexit>

0000000140006750 <_GLOBAL__sub_I__ZN13NaturalBinaryC2Ev>:
   140006750:	48 83 ec 28          	sub    $0x28,%rsp
   140006754:	48 8d 0d 05 49 00 00 	lea    0x4905(%rip),%rcx        # 14000b060 <_ZStL8__ioinit>
   14000675b:	e8 30 e6 ff ff       	call   140004d90 <_ZNSt8ios_base4InitC1Ev>
   140006760:	48 8d 0d f9 af ff ff 	lea    -0x5007(%rip),%rcx        # 140001760 <__tcf_0>
   140006767:	48 83 c4 28          	add    $0x28,%rsp
   14000676b:	e9 a0 ac ff ff       	jmp    140001410 <atexit>

0000000140006770 <_GLOBAL__sub_I__ZN15SignedMagnitudeC2Ex>:
   140006770:	48 83 ec 28          	sub    $0x28,%rsp
   140006774:	48 8d 0d f5 48 00 00 	lea    0x48f5(%rip),%rcx        # 14000b070 <_ZStL8__ioinit>
   14000677b:	e8 10 e6 ff ff       	call   140004d90 <_ZNSt8ios_base4InitC1Ev>
   140006780:	48 8d 0d 19 e2 ff ff 	lea    -0x1de7(%rip),%rcx        # 1400049a0 <__tcf_0>
   140006787:	48 83 c4 28          	add    $0x28,%rsp
   14000678b:	e9 80 ac ff ff       	jmp    140001410 <atexit>

0000000140006790 <register_frame_ctor>:
   140006790:	e9 9b ac ff ff       	jmp    140001430 <__gcc_register_frame>
   140006795:	90                   	nop
   140006796:	90                   	nop
   140006797:	90                   	nop
   140006798:	90                   	nop
   140006799:	90                   	nop
   14000679a:	90                   	nop
   14000679b:	90                   	nop
   14000679c:	90                   	nop
   14000679d:	90                   	nop
   14000679e:	90                   	nop
   14000679f:	90                   	nop

00000001400067a0 <__CTOR_LIST__>:
   1400067a0:	ff                   	(bad)
   1400067a1:	ff                   	(bad)
   1400067a2:	ff                   	(bad)
   1400067a3:	ff                   	(bad)
   1400067a4:	ff                   	(bad)
   1400067a5:	ff                   	(bad)
   1400067a6:	ff                   	(bad)
   1400067a7:	ff                   	.byte 0xff

00000001400067a8 <.ctors>:
   1400067a8:	80 64 00 40 01       	andb   $0x1,0x40(%rax,%rax,1)
   1400067ad:	00 00                	add    %al,(%rax)
	...

00000001400067b0 <.ctors>:
   1400067b0:	a0                   	.byte 0xa0
   1400067b1:	64 00 40 01          	add    %al,%fs:0x1(%rax)
   1400067b5:	00 00                	add    %al,(%rax)
	...

00000001400067b8 <.ctors>:
   1400067b8:	30 67 00             	xor    %ah,0x0(%rdi)
   1400067bb:	40 01 00             	rex add %eax,(%rax)
	...

00000001400067c0 <.ctors>:
   1400067c0:	50                   	push   %rax
   1400067c1:	67 00 40 01          	add    %al,0x1(%eax)
   1400067c5:	00 00                	add    %al,(%rax)
	...

00000001400067c8 <.ctors>:
   1400067c8:	70 67                	jo     140006831 <__DTOR_LIST__+0x51>
   1400067ca:	00 40 01             	add    %al,0x1(%rax)
   1400067cd:	00 00                	add    %al,(%rax)
	...

00000001400067d0 <.ctors.65535>:
   1400067d0:	90                   	nop
   1400067d1:	67 00 40 01          	add    %al,0x1(%eax)
	...

00000001400067e0 <__DTOR_LIST__>:
   1400067e0:	ff                   	(bad)
   1400067e1:	ff                   	(bad)
   1400067e2:	ff                   	(bad)
   1400067e3:	ff                   	(bad)
   1400067e4:	ff                   	(bad)
   1400067e5:	ff                   	(bad)
   1400067e6:	ff                   	(bad)
   1400067e7:	ff 00                	incl   (%rax)
   1400067e9:	00 00                	add    %al,(%rax)
   1400067eb:	00 00                	add    %al,(%rax)
   1400067ed:	00 00                	add    %al,(%rax)
	...
