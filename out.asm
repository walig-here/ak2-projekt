
ak2-projekt.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 35 85 00 00 	mov    0x8535(%rip),%rax        # 140009550 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 36 85 00 00 	mov    0x8536(%rip),%rax        # 140009560 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 39 85 00 00 	mov    0x8539(%rip),%rax        # 140009570 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 8c 84 00 00 	mov    0x848c(%rip),%rax        # 1400094d0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 df 84 00 00 	mov    0x84df(%rip),%rax        # 140009540 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 af 00 00    	mov    %ecx,0xafa5(%rip)        # 14000c00c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 b1 63 00 00       	call   140007428 <__set_app_type>
   140001077:	e8 34 63 00 00       	call   1400073b0 <__p__fmode>
   14000107c:	48 8b 15 8d 85 00 00 	mov    0x858d(%rip),%rdx        # 140009610 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 34 63 00 00       	call   1400073c0 <__p__commode>
   14000108c:	48 8b 15 5d 85 00 00 	mov    0x855d(%rip),%rdx        # 1400095f0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 34 53 00 00       	call   1400063d0 <_setargv>
   14000109c:	48 8b 05 8d 83 00 00 	mov    0x838d(%rip),%rax        # 140009430 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 6e 63 00 00       	call   140007428 <__set_app_type>
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
   1400010f8:	48 8b 0d 31 85 00 00 	mov    0x8531(%rip),%rcx        # 140009630 <.refptr._matherr>
   1400010ff:	e8 3c 5a 00 00       	call   140006b40 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 05 85 00 00 	mov    0x8505(%rip),%rax        # 140009640 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 ae 00 00 	lea    0xaed6(%rip),%r8        # 14000c018 <envp>
   140001142:	48 8d 15 d7 ae 00 00 	lea    0xaed7(%rip),%rdx        # 14000c020 <argv>
   140001149:	48 8d 0d d8 ae 00 00 	lea    0xaed8(%rip),%rcx        # 14000c028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac ae 00 00    	mov    %eax,0xaeac(%rip)        # 14000c004 <startinfo>
   140001158:	48 8b 05 a1 84 00 00 	mov    0x84a1(%rip),%rax        # 140009600 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b ae 00 00 	lea    0xae9b(%rip),%rax        # 14000c004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 a5 62 00 00       	call   140007418 <__getmainargs>
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
   14000118a:	48 8b 1d ff 83 00 00 	mov    0x83ff(%rip),%rbx        # 140009590 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d ac c1 00 00 	mov    0xc1ac(%rip),%rbp        # 14000d344 <__imp_Sleep>
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
   1400011cd:	48 8b 35 cc 83 00 00 	mov    0x83cc(%rip),%rsi        # 1400095a0 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 ae 00 00 01 	movl   $0x1,0xae13(%rip)        # 14000c008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 f1 82 00 00 	mov    0x82f1(%rip),%rax        # 140009500 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 78 55 00 00       	call   1400067a0 <_pei386_runtime_relocator>
   140001228:	48 8b 0d f1 83 00 00 	mov    0x83f1(%rip),%rcx        # 140009620 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 07 c1 00 00    	call   *0xc107(%rip)        # 14000d33c <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 44 83 00 00 	mov    0x8344(%rip),%rdx        # 140009580 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 95 61 00 00       	call   1400073e0 <_set_invalid_parameter_handler>
   14000124b:	e8 60 53 00 00       	call   1400065b0 <_fpreset>
   140001250:	8b 1d d2 ad 00 00    	mov    0xadd2(%rip),%ebx        # 14000c028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 20 62 00 00       	call   140007488 <malloc>
   140001268:	4c 8b 25 b1 ad 00 00 	mov    0xadb1(%rip),%r12        # 14000c020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 17 62 00 00       	call   1400074a0 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 f3 61 00 00       	call   140007488 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 e3 61 00 00       	call   140007490 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d ad 00 00 	mov    %rbp,0xad5d(%rip)        # 14000c020 <argv>
   1400012c3:	e8 e8 50 00 00       	call   1400063b0 <__main>
   1400012c8:	48 8b 05 41 82 00 00 	mov    0x8241(%rip),%rax        # 140009510 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 ad 00 00 	mov    0xad42(%rip),%r8        # 14000c018 <envp>
   1400012d6:	8b 0d 4c ad 00 00    	mov    0xad4c(%rip),%ecx        # 14000c028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 ad 00 00 	mov    0xad37(%rip),%rdx        # 14000c020 <argv>
   1400012e9:	e8 22 68 00 00       	call   140007b10 <main>
   1400012ee:	8b 0d 18 ad 00 00    	mov    0xad18(%rip),%ecx        # 14000c00c <managedapp>
   1400012f4:	89 05 16 ad 00 00    	mov    %eax,0xad16(%rip)        # 14000c010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 ad 00 00    	mov    0xad00(%rip),%edx        # 14000c008 <has_cctor>
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
   140001320:	48 8b 35 79 82 00 00 	mov    0x8279(%rip),%rsi        # 1400095a0 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 f7 60 00 00       	call   140007438 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 6d 82 00 00 	mov    0x826d(%rip),%rdx        # 1400095c0 <.refptr.__xc_z>
   140001353:	48 8b 0d 56 82 00 00 	mov    0x8256(%rip),%rcx        # 1400095b0 <.refptr.__xc_a>
   14000135a:	e8 e9 60 00 00       	call   140007448 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 bb 60 00 00       	call   140007440 <_cexit>
   140001385:	8b 05 85 ac 00 00    	mov    0xac85(%rip),%eax        # 14000c010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 39 82 00 00 	mov    0x8239(%rip),%rdx        # 1400095e0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 22 82 00 00 	mov    0x8222(%rip),%rcx        # 1400095d0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 8f 60 00 00       	call   140007448 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 99 60 00 00       	call   140007468 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 65 81 00 00 	mov    0x8165(%rip),%rax        # 140009540 <.refptr.__mingw_app_type>
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
   1400013f4:	48 8b 05 45 81 00 00 	mov    0x8145(%rip),%rax        # 140009540 <.refptr.__mingw_app_type>
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
   140001414:	e8 37 60 00 00       	call   140007450 <_onexit>
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
   140001450:	48 8d 0d da ab 00 00 	lea    0xabda(%rip),%rcx        # 14000c031 <_ZStL8__ioinit>
   140001457:	e9 f4 4d 00 00       	jmp    140006250 <_ZNSt8ios_base4InitD1Ev>
   14000145c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001460 <_ZN10Arithmetic3stcEv>:
   140001460:	f9                   	stc
   140001461:	c6 05 c8 ab 00 00 01 	movb   $0x1,0xabc8(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   140001468:	c3                   	ret
   140001469:	90                   	nop
   14000146a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001470 <_ZN10Arithmetic3clcEv>:
   140001470:	f8                   	clc
   140001471:	c6 05 b8 ab 00 00 00 	movb   $0x0,0xabb8(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   140001478:	c3                   	ret
   140001479:	90                   	nop
   14000147a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001480 <_ZN10Arithmetic5carryEv>:
   140001480:	0f b6 05 a9 ab 00 00 	movzbl 0xaba9(%rip),%eax        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   140001487:	c3                   	ret
   140001488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000148f:	00 

0000000140001490 <_ZN10Arithmetic3addE4ByteS0_>:
   140001490:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   140001494:	88 54 24 10          	mov    %dl,0x10(%rsp)
   140001498:	8a 44 24 08          	mov    0x8(%rsp),%al
   14000149c:	02 44 24 10          	add    0x10(%rsp),%al
   1400014a0:	0f 92 05 89 ab 00 00 	setb   0xab89(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   1400014a7:	c3                   	ret
   1400014a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400014af:	00 

00000001400014b0 <_ZN10Arithmetic4addcE4ByteS0_>:
   1400014b0:	0f b6 05 79 ab 00 00 	movzbl 0xab79(%rip),%eax        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   1400014b7:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   1400014bb:	88 54 24 10          	mov    %dl,0x10(%rsp)
   1400014bf:	84 c0                	test   %al,%al
   1400014c1:	74 1d                	je     1400014e0 <_ZN10Arithmetic4addcE4ByteS0_+0x30>
   1400014c3:	f9                   	stc
   1400014c4:	88 05 66 ab 00 00    	mov    %al,0xab66(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   1400014ca:	8a 44 24 08          	mov    0x8(%rsp),%al
   1400014ce:	12 44 24 10          	adc    0x10(%rsp),%al
   1400014d2:	0f 92 05 57 ab 00 00 	setb   0xab57(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
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
   140001500:	0f 92 05 29 ab 00 00 	setb   0xab29(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   140001507:	c3                   	ret
   140001508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000150f:	00 

0000000140001510 <_ZN10Arithmetic3sbbE4ByteS0_>:
   140001510:	0f b6 05 19 ab 00 00 	movzbl 0xab19(%rip),%eax        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   140001517:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   14000151b:	88 54 24 10          	mov    %dl,0x10(%rsp)
   14000151f:	84 c0                	test   %al,%al
   140001521:	74 1d                	je     140001540 <_ZN10Arithmetic3sbbE4ByteS0_+0x30>
   140001523:	f9                   	stc
   140001524:	88 05 06 ab 00 00    	mov    %al,0xab06(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
   14000152a:	8a 44 24 08          	mov    0x8(%rsp),%al
   14000152e:	1a 44 24 10          	sbb    0x10(%rsp),%al
   140001532:	0f 92 05 f7 aa 00 00 	setb   0xaaf7(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
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
   14000159f:	0f 92 05 8a aa 00 00 	setb   0xaa8a(%rip)        # 14000c030 <_ZN10Arithmetic10carry_flagE>
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
   14000162c:	e8 cf 4b 00 00       	call   140006200 <__cxa_allocate_exception>
   140001631:	48 8d 15 c8 79 00 00 	lea    0x79c8(%rip),%rdx        # 140009000 <.rdata>
   140001638:	48 89 c1             	mov    %rax,%rcx
   14000163b:	48 89 c3             	mov    %rax,%rbx
   14000163e:	e8 8d 4c 00 00       	call   1400062d0 <_ZNSt13runtime_errorC1EPKc>
   140001643:	4c 8d 05 7e 4c 00 00 	lea    0x4c7e(%rip),%r8        # 1400062c8 <_ZNSt13runtime_errorD1Ev>
   14000164a:	48 8d 15 1f 80 00 00 	lea    0x801f(%rip),%rdx        # 140009670 <_ZTISt13runtime_error>
   140001651:	48 89 d9             	mov    %rbx,%rcx
   140001654:	e8 7f 4b 00 00       	call   1400061d8 <__cxa_throw>
   140001659:	48 89 c6             	mov    %rax,%rsi
   14000165c:	48 89 d9             	mov    %rbx,%rcx
   14000165f:	e8 84 4b 00 00       	call   1400061e8 <__cxa_free_exception>
   140001664:	48 89 f1             	mov    %rsi,%rcx
   140001667:	e8 f4 5c 00 00       	call   140007360 <_Unwind_Resume>
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <__tcf_0>:
   140001670:	48 8d 0d c9 a9 00 00 	lea    0xa9c9(%rip),%rcx        # 14000c040 <_ZStL8__ioinit>
   140001677:	e9 d4 4b 00 00       	jmp    140006250 <_ZNSt8ios_base4InitD1Ev>
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
   14000169d:	e8 5e 4b 00 00       	call   140006200 <__cxa_allocate_exception>
   1400016a2:	48 8d 15 67 79 00 00 	lea    0x7967(%rip),%rdx        # 140009010 <.rdata>
   1400016a9:	48 89 c1             	mov    %rax,%rcx
   1400016ac:	48 89 c3             	mov    %rax,%rbx
   1400016af:	e8 0c 4c 00 00       	call   1400062c0 <_ZNSt16invalid_argumentC1EPKc>
   1400016b4:	4c 8d 05 fd 4b 00 00 	lea    0x4bfd(%rip),%r8        # 1400062b8 <_ZNSt16invalid_argumentD1Ev>
   1400016bb:	48 8d 15 ce 7f 00 00 	lea    0x7fce(%rip),%rdx        # 140009690 <_ZTISt16invalid_argument>
   1400016c2:	48 89 d9             	mov    %rbx,%rcx
   1400016c5:	e8 0e 4b 00 00       	call   1400061d8 <__cxa_throw>
   1400016ca:	48 89 c6             	mov    %rax,%rsi
   1400016cd:	48 89 d9             	mov    %rbx,%rcx
   1400016d0:	e8 13 4b 00 00       	call   1400061e8 <__cxa_free_exception>
   1400016d5:	48 89 f1             	mov    %rsi,%rcx
   1400016d8:	e8 83 5c 00 00       	call   140007360 <_Unwind_Resume>
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
   140001703:	e8 f8 4a 00 00       	call   140006200 <__cxa_allocate_exception>
   140001708:	48 8d 15 01 79 00 00 	lea    0x7901(%rip),%rdx        # 140009010 <.rdata>
   14000170f:	48 89 c1             	mov    %rax,%rcx
   140001712:	48 89 c3             	mov    %rax,%rbx
   140001715:	e8 a6 4b 00 00       	call   1400062c0 <_ZNSt16invalid_argumentC1EPKc>
   14000171a:	4c 8d 05 97 4b 00 00 	lea    0x4b97(%rip),%r8        # 1400062b8 <_ZNSt16invalid_argumentD1Ev>
   140001721:	48 8d 15 68 7f 00 00 	lea    0x7f68(%rip),%rdx        # 140009690 <_ZTISt16invalid_argument>
   140001728:	48 89 d9             	mov    %rbx,%rcx
   14000172b:	e8 a8 4a 00 00       	call   1400061d8 <__cxa_throw>
   140001730:	48 89 c6             	mov    %rax,%rsi
   140001733:	48 89 d9             	mov    %rbx,%rcx
   140001736:	e8 ad 4a 00 00       	call   1400061e8 <__cxa_free_exception>
   14000173b:	48 89 f1             	mov    %rsi,%rcx
   14000173e:	e8 1d 5c 00 00       	call   140007360 <_Unwind_Resume>
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
   140001750:	48 8d 0d f9 a8 00 00 	lea    0xa8f9(%rip),%rcx        # 14000c050 <_ZStL8__ioinit>
   140001757:	e9 f4 4a 00 00       	jmp    140006250 <_ZNSt8ios_base4InitD1Ev>
   14000175c:	90                   	nop
   14000175d:	90                   	nop
   14000175e:	90                   	nop
   14000175f:	90                   	nop

0000000140001760 <__tcf_0>:
   140001760:	48 8d 0d f9 a8 00 00 	lea    0xa8f9(%rip),%rcx        # 14000c060 <_ZStL8__ioinit>
   140001767:	e9 e4 4a 00 00       	jmp    140006250 <_ZNSt8ios_base4InitD1Ev>
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
   1400017c6:	e8 95 4a 00 00       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400017cb:	ba 18 00 00 00       	mov    $0x18,%edx
   1400017d0:	48 89 f1             	mov    %rsi,%rcx
   1400017d3:	e8 38 4a 00 00       	call   140006210 <_ZdlPvy>
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
   140001816:	e8 ed 49 00 00       	call   140006208 <_Znwy>
   14000181b:	48 89 c1             	mov    %rax,%rcx
   14000181e:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001822:	4c 89 e2             	mov    %r12,%rdx
   140001825:	88 41 10             	mov    %al,0x10(%rcx)
   140001828:	e8 3b 4a 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000182d:	48 8b 36             	mov    (%rsi),%rsi
   140001830:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001836:	48 39 f5             	cmp    %rsi,%rbp
   140001839:	75 d6                	jne    140001811 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   14000183b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140001840:	4c 39 e2             	cmp    %r12,%rdx
   140001843:	74 98                	je     1400017dd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001845:	4d 89 e0             	mov    %r12,%r8
   140001848:	48 89 f9             	mov    %rdi,%rcx
   14000184b:	e8 20 4a 00 00       	call   140006270 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
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
   14000187b:	e8 90 49 00 00       	call   140006210 <_ZdlPvy>
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
   1400018a5:	e8 66 49 00 00       	call   140006210 <_ZdlPvy>
   1400018aa:	48 89 f1             	mov    %rsi,%rcx
   1400018ad:	eb e9                	jmp    140001898 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   1400018af:	48 89 d9             	mov    %rbx,%rcx
   1400018b2:	e8 a9 5a 00 00       	call   140007360 <_Unwind_Resume>
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
   1400018ef:	e8 14 49 00 00       	call   140006208 <_Znwy>
   1400018f4:	48 89 c1             	mov    %rax,%rcx
   1400018f7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400018fc:	48 89 da             	mov    %rbx,%rdx
   1400018ff:	88 41 10             	mov    %al,0x10(%rcx)
   140001902:	e8 61 49 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001927:	e8 e4 48 00 00       	call   140006210 <_ZdlPvy>
   14000192c:	48 89 f1             	mov    %rsi,%rcx
   14000192f:	eb e9                	jmp    14000191a <_ZN13NaturalBinaryC2Ex.constprop.0+0x5a>
   140001931:	48 89 f9             	mov    %rdi,%rcx
   140001934:	e8 27 5a 00 00       	call   140007360 <_Unwind_Resume>
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
   1400019a2:	e8 61 48 00 00       	call   140006208 <_Znwy>
   1400019a7:	48 89 c1             	mov    %rax,%rcx
   1400019aa:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400019af:	48 89 f2             	mov    %rsi,%rdx
   1400019b2:	88 41 10             	mov    %al,0x10(%rcx)
   1400019b5:	e8 ae 48 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400019ef:	e8 14 48 00 00       	call   140006208 <_Znwy>
   1400019f4:	48 89 c1             	mov    %rax,%rcx
   1400019f7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400019fc:	48 89 f2             	mov    %rsi,%rdx
   1400019ff:	88 41 10             	mov    %al,0x10(%rcx)
   140001a02:	e8 61 48 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001a27:	e8 e4 47 00 00       	call   140006210 <_ZdlPvy>
   140001a2c:	48 89 f9             	mov    %rdi,%rcx
   140001a2f:	eb e9                	jmp    140001a1a <_ZN13NaturalBinaryC1Ex+0xca>
   140001a31:	48 89 d9             	mov    %rbx,%rcx
   140001a34:	e8 27 59 00 00       	call   140007360 <_Unwind_Resume>
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
   140001a84:	e8 7f 47 00 00       	call   140006208 <_Znwy>
   140001a89:	40 88 68 10          	mov    %bpl,0x10(%rax)
   140001a8d:	48 89 c1             	mov    %rax,%rcx
   140001a90:	4c 89 e2             	mov    %r12,%rdx
   140001a93:	e8 d0 47 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001ac3:	e8 48 47 00 00       	call   140006210 <_ZdlPvy>
   140001ac8:	48 89 f9             	mov    %rdi,%rcx
   140001acb:	eb e9                	jmp    140001ab6 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x76>
   140001acd:	48 89 d9             	mov    %rbx,%rcx
   140001ad0:	e8 8b 58 00 00       	call   140007360 <_Unwind_Resume>
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
   140001b03:	e8 08 47 00 00       	call   140006210 <_ZdlPvy>
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
   140001b75:	e8 8e 46 00 00       	call   140006208 <_Znwy>
   140001b7a:	48 89 c1             	mov    %rax,%rcx
   140001b7d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001b81:	48 89 ea             	mov    %rbp,%rdx
   140001b84:	88 41 10             	mov    %al,0x10(%rcx)
   140001b87:	e8 dc 46 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001bea:	e8 19 46 00 00       	call   140006208 <_Znwy>
   140001bef:	40 88 70 10          	mov    %sil,0x10(%rax)
   140001bf3:	48 89 c1             	mov    %rax,%rcx
   140001bf6:	4c 89 f2             	mov    %r14,%rdx
   140001bf9:	e8 6a 46 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001c95:	e8 6e 45 00 00       	call   140006208 <_Znwy>
   140001c9a:	44 88 60 10          	mov    %r12b,0x10(%rax)
   140001c9e:	48 89 c1             	mov    %rax,%rcx
   140001ca1:	4c 89 ea             	mov    %r13,%rdx
   140001ca4:	e8 bf 45 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001ccc:	e8 3f 45 00 00       	call   140006210 <_ZdlPvy>
   140001cd1:	49 39 f4             	cmp    %rsi,%r12
   140001cd4:	75 ea                	jne    140001cc0 <_ZN13NaturalBinaryplES_+0x1a0>
   140001cd6:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001cdb:	eb 13                	jmp    140001cf0 <_ZN13NaturalBinaryplES_+0x1d0>
   140001cdd:	0f 1f 00             	nopl   (%rax)
   140001ce0:	48 89 d9             	mov    %rbx,%rcx
   140001ce3:	ba 18 00 00 00       	mov    $0x18,%edx
   140001ce8:	48 8b 1b             	mov    (%rbx),%rbx
   140001ceb:	e8 20 45 00 00       	call   140006210 <_ZdlPvy>
   140001cf0:	4c 39 fb             	cmp    %r15,%rbx
   140001cf3:	75 eb                	jne    140001ce0 <_ZN13NaturalBinaryplES_+0x1c0>
   140001cf5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140001cfa:	48 39 eb             	cmp    %rbp,%rbx
   140001cfd:	74 16                	je     140001d15 <_ZN13NaturalBinaryplES_+0x1f5>
   140001cff:	90                   	nop
   140001d00:	48 89 d9             	mov    %rbx,%rcx
   140001d03:	48 8b 1b             	mov    (%rbx),%rbx
   140001d06:	ba 18 00 00 00       	mov    $0x18,%edx
   140001d0b:	e8 00 45 00 00       	call   140006210 <_ZdlPvy>
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
   140001d59:	e8 aa 44 00 00       	call   140006208 <_Znwy>
   140001d5e:	48 89 c1             	mov    %rax,%rcx
   140001d61:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   140001d66:	48 89 da             	mov    %rbx,%rdx
   140001d69:	88 41 10             	mov    %al,0x10(%rcx)
   140001d6c:	e8 f7 44 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001db4:	e8 57 44 00 00       	call   140006210 <_ZdlPvy>
   140001db9:	4c 89 e1             	mov    %r12,%rcx
   140001dbc:	eb e9                	jmp    140001da7 <_ZN13NaturalBinaryplES_+0x287>
   140001dbe:	48 89 c3             	mov    %rax,%rbx
   140001dc1:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140001dc6:	4c 39 f9             	cmp    %r15,%rcx
   140001dc9:	74 31                	je     140001dfc <_ZN13NaturalBinaryplES_+0x2dc>
   140001dcb:	48 8b 31             	mov    (%rcx),%rsi
   140001dce:	ba 18 00 00 00       	mov    $0x18,%edx
   140001dd3:	e8 38 44 00 00       	call   140006210 <_ZdlPvy>
   140001dd8:	48 89 f1             	mov    %rsi,%rcx
   140001ddb:	eb e9                	jmp    140001dc6 <_ZN13NaturalBinaryplES_+0x2a6>
   140001ddd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001de2:	48 89 c3             	mov    %rax,%rbx
   140001de5:	48 39 e9             	cmp    %rbp,%rcx
   140001de8:	74 1c                	je     140001e06 <_ZN13NaturalBinaryplES_+0x2e6>
   140001dea:	48 8b 31             	mov    (%rcx),%rsi
   140001ded:	ba 18 00 00 00       	mov    $0x18,%edx
   140001df2:	e8 19 44 00 00       	call   140006210 <_ZdlPvy>
   140001df7:	48 89 f1             	mov    %rsi,%rcx
   140001dfa:	eb e9                	jmp    140001de5 <_ZN13NaturalBinaryplES_+0x2c5>
   140001dfc:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001e01:	48 39 e9             	cmp    %rbp,%rcx
   140001e04:	75 24                	jne    140001e2a <_ZN13NaturalBinaryplES_+0x30a>
   140001e06:	48 89 d9             	mov    %rbx,%rcx
   140001e09:	e8 52 55 00 00       	call   140007360 <_Unwind_Resume>
   140001e0e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140001e13:	48 39 f1             	cmp    %rsi,%rcx
   140001e16:	74 a9                	je     140001dc1 <_ZN13NaturalBinaryplES_+0x2a1>
   140001e18:	48 8b 39             	mov    (%rcx),%rdi
   140001e1b:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e20:	e8 eb 43 00 00       	call   140006210 <_ZdlPvy>
   140001e25:	48 89 f9             	mov    %rdi,%rcx
   140001e28:	eb e9                	jmp    140001e13 <_ZN13NaturalBinaryplES_+0x2f3>
   140001e2a:	48 8b 31             	mov    (%rcx),%rsi
   140001e2d:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e32:	e8 d9 43 00 00       	call   140006210 <_ZdlPvy>
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
   140001e95:	e8 6e 43 00 00       	call   140006208 <_Znwy>
   140001e9a:	48 89 c1             	mov    %rax,%rcx
   140001e9d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001ea1:	4c 89 e2             	mov    %r12,%rdx
   140001ea4:	88 41 10             	mov    %al,0x10(%rcx)
   140001ea7:	e8 bc 43 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001f09:	e8 fa 42 00 00       	call   140006208 <_Znwy>
   140001f0e:	40 88 78 10          	mov    %dil,0x10(%rax)
   140001f12:	48 89 c1             	mov    %rax,%rcx
   140001f15:	4c 89 f2             	mov    %r14,%rdx
   140001f18:	e8 4b 43 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001fb5:	e8 4e 42 00 00       	call   140006208 <_Znwy>
   140001fba:	40 88 78 10          	mov    %dil,0x10(%rax)
   140001fbe:	48 89 c1             	mov    %rax,%rcx
   140001fc1:	4c 89 ea             	mov    %r13,%rdx
   140001fc4:	e8 9f 42 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001feb:	e8 20 42 00 00       	call   140006210 <_ZdlPvy>
   140001ff0:	48 39 f7             	cmp    %rsi,%rdi
   140001ff3:	75 eb                	jne    140001fe0 <_ZN13NaturalBinarymiES_+0x1a0>
   140001ff5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001ffa:	eb 14                	jmp    140002010 <_ZN13NaturalBinarymiES_+0x1d0>
   140001ffc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002000:	48 89 d9             	mov    %rbx,%rcx
   140002003:	ba 18 00 00 00       	mov    $0x18,%edx
   140002008:	48 8b 1b             	mov    (%rbx),%rbx
   14000200b:	e8 00 42 00 00       	call   140006210 <_ZdlPvy>
   140002010:	4c 39 fb             	cmp    %r15,%rbx
   140002013:	75 eb                	jne    140002000 <_ZN13NaturalBinarymiES_+0x1c0>
   140002015:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000201a:	4c 39 e3             	cmp    %r12,%rbx
   14000201d:	74 16                	je     140002035 <_ZN13NaturalBinarymiES_+0x1f5>
   14000201f:	90                   	nop
   140002020:	48 89 d9             	mov    %rbx,%rcx
   140002023:	48 8b 1b             	mov    (%rbx),%rbx
   140002026:	ba 18 00 00 00       	mov    $0x18,%edx
   14000202b:	e8 e0 41 00 00       	call   140006210 <_ZdlPvy>
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
   140002071:	e8 92 41 00 00       	call   140006208 <_Znwy>
   140002076:	48 89 c1             	mov    %rax,%rcx
   140002079:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   14000207e:	48 89 da             	mov    %rbx,%rdx
   140002081:	88 41 10             	mov    %al,0x10(%rcx)
   140002084:	e8 df 41 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400020ce:	e8 3d 41 00 00       	call   140006210 <_ZdlPvy>
   1400020d3:	48 89 f9             	mov    %rdi,%rcx
   1400020d6:	eb e9                	jmp    1400020c1 <_ZN13NaturalBinarymiES_+0x281>
   1400020d8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400020dd:	48 89 c3             	mov    %rax,%rbx
   1400020e0:	4c 39 e1             	cmp    %r12,%rcx
   1400020e3:	74 3b                	je     140002120 <_ZN13NaturalBinarymiES_+0x2e0>
   1400020e5:	48 8b 31             	mov    (%rcx),%rsi
   1400020e8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400020ed:	e8 1e 41 00 00       	call   140006210 <_ZdlPvy>
   1400020f2:	48 89 f1             	mov    %rsi,%rcx
   1400020f5:	eb e9                	jmp    1400020e0 <_ZN13NaturalBinarymiES_+0x2a0>
   1400020f7:	48 89 c3             	mov    %rax,%rbx
   1400020fa:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400020ff:	4c 39 f9             	cmp    %r15,%rcx
   140002102:	74 12                	je     140002116 <_ZN13NaturalBinarymiES_+0x2d6>
   140002104:	48 8b 31             	mov    (%rcx),%rsi
   140002107:	ba 18 00 00 00       	mov    $0x18,%edx
   14000210c:	e8 ff 40 00 00       	call   140006210 <_ZdlPvy>
   140002111:	48 89 f1             	mov    %rsi,%rcx
   140002114:	eb e9                	jmp    1400020ff <_ZN13NaturalBinarymiES_+0x2bf>
   140002116:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000211b:	4c 39 e1             	cmp    %r12,%rcx
   14000211e:	75 24                	jne    140002144 <_ZN13NaturalBinarymiES_+0x304>
   140002120:	48 89 d9             	mov    %rbx,%rcx
   140002123:	e8 38 52 00 00       	call   140007360 <_Unwind_Resume>
   140002128:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000212d:	48 39 f1             	cmp    %rsi,%rcx
   140002130:	74 c8                	je     1400020fa <_ZN13NaturalBinarymiES_+0x2ba>
   140002132:	48 8b 39             	mov    (%rcx),%rdi
   140002135:	ba 18 00 00 00       	mov    $0x18,%edx
   14000213a:	e8 d1 40 00 00       	call   140006210 <_ZdlPvy>
   14000213f:	48 89 f9             	mov    %rdi,%rcx
   140002142:	eb e9                	jmp    14000212d <_ZN13NaturalBinarymiES_+0x2ed>
   140002144:	48 8b 31             	mov    (%rcx),%rsi
   140002147:	ba 18 00 00 00       	mov    $0x18,%edx
   14000214c:	e8 bf 40 00 00       	call   140006210 <_ZdlPvy>
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
   140002208:	e8 fb 3f 00 00       	call   140006208 <_Znwy>
   14000220d:	48 89 c1             	mov    %rax,%rcx
   140002210:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   140002215:	4c 89 e2             	mov    %r12,%rdx
   140002218:	88 41 10             	mov    %al,0x10(%rcx)
   14000221b:	e8 48 40 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   14000228b:	e8 80 3f 00 00       	call   140006210 <_ZdlPvy>
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
   140002305:	e8 fe 3e 00 00       	call   140006208 <_Znwy>
   14000230a:	44 88 68 10          	mov    %r13b,0x10(%rax)
   14000230e:	48 89 c1             	mov    %rax,%rcx
   140002311:	48 89 ea             	mov    %rbp,%rdx
   140002314:	e8 4f 3f 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   14000233c:	e8 cf 3e 00 00       	call   140006210 <_ZdlPvy>
   140002341:	48 39 f5             	cmp    %rsi,%rbp
   140002344:	75 ea                	jne    140002330 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1d0>
   140002346:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
   14000234b:	4c 39 e3             	cmp    %r12,%rbx
   14000234e:	74 15                	je     140002365 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   140002350:	48 89 d9             	mov    %rbx,%rcx
   140002353:	48 8b 1b             	mov    (%rbx),%rbx
   140002356:	ba 18 00 00 00       	mov    $0x18,%edx
   14000235b:	e8 b0 3e 00 00       	call   140006210 <_ZdlPvy>
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
   140002399:	e8 6a 3e 00 00       	call   140006208 <_Znwy>
   14000239e:	48 89 ea             	mov    %rbp,%rdx
   1400023a1:	48 89 c1             	mov    %rax,%rcx
   1400023a4:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   1400023a9:	88 41 10             	mov    %al,0x10(%rcx)
   1400023ac:	e8 b7 3e 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400023f3:	e8 18 3e 00 00       	call   140006210 <_ZdlPvy>
   1400023f8:	48 89 f9             	mov    %rdi,%rcx
   1400023fb:	eb e9                	jmp    1400023e6 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x286>
   1400023fd:	48 8b 0f             	mov    (%rdi),%rcx
   140002400:	48 89 c3             	mov    %rax,%rbx
   140002403:	48 39 cf             	cmp    %rcx,%rdi
   140002406:	74 31                	je     140002439 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2d9>
   140002408:	48 8b 29             	mov    (%rcx),%rbp
   14000240b:	ba 18 00 00 00       	mov    $0x18,%edx
   140002410:	e8 fb 3d 00 00       	call   140006210 <_ZdlPvy>
   140002415:	48 89 e9             	mov    %rbp,%rcx
   140002418:	eb e9                	jmp    140002403 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2a3>
   14000241a:	48 89 c3             	mov    %rax,%rbx
   14000241d:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140002422:	4c 39 e1             	cmp    %r12,%rcx
   140002425:	74 2e                	je     140002455 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2f5>
   140002427:	48 8b 31             	mov    (%rcx),%rsi
   14000242a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000242f:	e8 dc 3d 00 00       	call   140006210 <_ZdlPvy>
   140002434:	48 89 f1             	mov    %rsi,%rcx
   140002437:	eb e9                	jmp    140002422 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2c2>
   140002439:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   14000243e:	48 39 f1             	cmp    %rsi,%rcx
   140002441:	74 da                	je     14000241d <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   140002443:	48 8b 39             	mov    (%rcx),%rdi
   140002446:	ba 18 00 00 00       	mov    $0x18,%edx
   14000244b:	e8 c0 3d 00 00       	call   140006210 <_ZdlPvy>
   140002450:	48 89 f9             	mov    %rdi,%rcx
   140002453:	eb e9                	jmp    14000243e <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2de>
   140002455:	48 89 d9             	mov    %rbx,%rcx
   140002458:	e8 03 4f 00 00       	call   140007360 <_Unwind_Resume>
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
   140002475:	eb 3f                	jmp    1400024b6 <_ZN13NaturalBinary8optimizeEv+0x56>
   140002477:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000247e:	00 00 
   140002480:	48 83 e8 01          	sub    $0x1,%rax
   140002484:	48 89 d9             	mov    %rbx,%rcx
   140002487:	48 89 46 10          	mov    %rax,0x10(%rsi)
   14000248b:	e8 d0 3d 00 00       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002490:	ba 18 00 00 00       	mov    $0x18,%edx
   140002495:	48 89 d9             	mov    %rbx,%rcx
   140002498:	e8 73 3d 00 00       	call   140006210 <_ZdlPvy>
   14000249d:	48 8b 46 10          	mov    0x10(%rsi),%rax
   1400024a1:	ba 01 00 00 00       	mov    $0x1,%edx
   1400024a6:	48 83 f8 01          	cmp    $0x1,%rax
   1400024aa:	76 0a                	jbe    1400024b6 <_ZN13NaturalBinary8optimizeEv+0x56>
   1400024ac:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
   1400024b0:	80 7b 10 00          	cmpb   $0x0,0x10(%rbx)
   1400024b4:	74 ca                	je     140002480 <_ZN13NaturalBinary8optimizeEv+0x20>
   1400024b6:	89 d0                	mov    %edx,%eax
   1400024b8:	48 83 c4 28          	add    $0x28,%rsp
   1400024bc:	5b                   	pop    %rbx
   1400024bd:	5e                   	pop    %rsi
   1400024be:	c3                   	ret
   1400024bf:	90                   	nop

00000001400024c0 <_ZN13NaturalBinary4sizeEv>:
   1400024c0:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400024c4:	eb 14                	jmp    1400024da <_ZN13NaturalBinary4sizeEv+0x1a>
   1400024c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024cd:	00 00 00 
   1400024d0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
   1400024d4:	80 79 10 00          	cmpb   $0x0,0x10(%rcx)
   1400024d8:	75 05                	jne    1400024df <_ZN13NaturalBinary4sizeEv+0x1f>
   1400024da:	83 e8 01             	sub    $0x1,%eax
   1400024dd:	75 f1                	jne    1400024d0 <_ZN13NaturalBinary4sizeEv+0x10>
   1400024df:	c3                   	ret

00000001400024e0 <_ZN13NaturalBinary3msbEv>:
   1400024e0:	4c 8b 42 10          	mov    0x10(%rdx),%r8
   1400024e4:	48 89 c8             	mov    %rcx,%rax
   1400024e7:	eb 11                	jmp    1400024fa <_ZN13NaturalBinary3msbEv+0x1a>
   1400024e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024f0:	48 8b 52 08          	mov    0x8(%rdx),%rdx
   1400024f4:	80 7a 10 00          	cmpb   $0x0,0x10(%rdx)
   1400024f8:	75 09                	jne    140002503 <_ZN13NaturalBinary3msbEv+0x23>
   1400024fa:	48 89 10             	mov    %rdx,(%rax)
   1400024fd:	41 83 e8 01          	sub    $0x1,%r8d
   140002501:	75 ed                	jne    1400024f0 <_ZN13NaturalBinary3msbEv+0x10>
   140002503:	c3                   	ret
   140002504:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000250b:	00 00 00 00 
   14000250f:	90                   	nop

0000000140002510 <_ZN13NaturalBinaryltES_>:
   140002510:	56                   	push   %rsi
   140002511:	53                   	push   %rbx
   140002512:	44 8b 41 10          	mov    0x10(%rcx),%r8d
   140002516:	48 89 cb             	mov    %rcx,%rbx
   140002519:	48 89 d6             	mov    %rdx,%rsi
   14000251c:	49 89 ca             	mov    %rcx,%r10
   14000251f:	41 83 e8 01          	sub    $0x1,%r8d
   140002523:	0f 84 47 01 00 00    	je     140002670 <_ZN13NaturalBinaryltES_+0x160>
   140002529:	48 89 c8             	mov    %rcx,%rax
   14000252c:	44 89 c2             	mov    %r8d,%edx
   14000252f:	eb 0c                	jmp    14000253d <_ZN13NaturalBinaryltES_+0x2d>
   140002531:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002538:	83 ea 01             	sub    $0x1,%edx
   14000253b:	74 0a                	je     140002547 <_ZN13NaturalBinaryltES_+0x37>
   14000253d:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002541:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002545:	74 f1                	je     140002538 <_ZN13NaturalBinaryltES_+0x28>
   140002547:	44 8b 4e 10          	mov    0x10(%rsi),%r9d
   14000254b:	49 89 f3             	mov    %rsi,%r11
   14000254e:	41 83 e9 01          	sub    $0x1,%r9d
   140002552:	74 33                	je     140002587 <_ZN13NaturalBinaryltES_+0x77>
   140002554:	44 89 c9             	mov    %r9d,%ecx
   140002557:	48 89 f0             	mov    %rsi,%rax
   14000255a:	eb 09                	jmp    140002565 <_ZN13NaturalBinaryltES_+0x55>
   14000255c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002560:	83 e9 01             	sub    $0x1,%ecx
   140002563:	74 1b                	je     140002580 <_ZN13NaturalBinaryltES_+0x70>
   140002565:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002569:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   14000256d:	74 f1                	je     140002560 <_ZN13NaturalBinaryltES_+0x50>
   14000256f:	b8 01 00 00 00       	mov    $0x1,%eax
   140002574:	39 ca                	cmp    %ecx,%edx
   140002576:	73 08                	jae    140002580 <_ZN13NaturalBinaryltES_+0x70>
   140002578:	5b                   	pop    %rbx
   140002579:	5e                   	pop    %rsi
   14000257a:	c3                   	ret
   14000257b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002580:	31 d2                	xor    %edx,%edx
   140002582:	45 85 c0             	test   %r8d,%r8d
   140002585:	74 25                	je     1400025ac <_ZN13NaturalBinaryltES_+0x9c>
   140002587:	48 89 d8             	mov    %rbx,%rax
   14000258a:	44 89 c2             	mov    %r8d,%edx
   14000258d:	eb 0a                	jmp    140002599 <_ZN13NaturalBinaryltES_+0x89>
   14000258f:	90                   	nop
   140002590:	83 ea 01             	sub    $0x1,%edx
   140002593:	0f 84 af 00 00 00    	je     140002648 <_ZN13NaturalBinaryltES_+0x138>
   140002599:	48 8b 40 08          	mov    0x8(%rax),%rax
   14000259d:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   1400025a1:	74 ed                	je     140002590 <_ZN13NaturalBinaryltES_+0x80>
   1400025a3:	45 85 c9             	test   %r9d,%r9d
   1400025a6:	0f 84 df 00 00 00    	je     14000268b <_ZN13NaturalBinaryltES_+0x17b>
   1400025ac:	48 89 f0             	mov    %rsi,%rax
   1400025af:	44 89 c9             	mov    %r9d,%ecx
   1400025b2:	eb 09                	jmp    1400025bd <_ZN13NaturalBinaryltES_+0xad>
   1400025b4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400025b8:	83 e9 01             	sub    $0x1,%ecx
   1400025bb:	74 0a                	je     1400025c7 <_ZN13NaturalBinaryltES_+0xb7>
   1400025bd:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400025c1:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   1400025c5:	74 f1                	je     1400025b8 <_ZN13NaturalBinaryltES_+0xa8>
   1400025c7:	31 c0                	xor    %eax,%eax
   1400025c9:	39 d1                	cmp    %edx,%ecx
   1400025cb:	72 ab                	jb     140002578 <_ZN13NaturalBinaryltES_+0x68>
   1400025cd:	45 85 c0             	test   %r8d,%r8d
   1400025d0:	75 14                	jne    1400025e6 <_ZN13NaturalBinaryltES_+0xd6>
   1400025d2:	e9 c3 00 00 00       	jmp    14000269a <_ZN13NaturalBinaryltES_+0x18a>
   1400025d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400025de:	00 00 
   1400025e0:	41 83 e8 01          	sub    $0x1,%r8d
   1400025e4:	74 72                	je     140002658 <_ZN13NaturalBinaryltES_+0x148>
   1400025e6:	4c 89 d0             	mov    %r10,%rax
   1400025e9:	4d 8b 52 08          	mov    0x8(%r10),%r10
   1400025ed:	41 80 7a 10 00       	cmpb   $0x0,0x10(%r10)
   1400025f2:	74 ec                	je     1400025e0 <_ZN13NaturalBinaryltES_+0xd0>
   1400025f4:	48 89 f2             	mov    %rsi,%rdx
   1400025f7:	45 85 c9             	test   %r9d,%r9d
   1400025fa:	75 0a                	jne    140002606 <_ZN13NaturalBinaryltES_+0xf6>
   1400025fc:	eb 16                	jmp    140002614 <_ZN13NaturalBinaryltES_+0x104>
   1400025fe:	66 90                	xchg   %ax,%ax
   140002600:	41 83 e9 01          	sub    $0x1,%r9d
   140002604:	74 5a                	je     140002660 <_ZN13NaturalBinaryltES_+0x150>
   140002606:	4c 89 da             	mov    %r11,%rdx
   140002609:	4d 8b 5b 08          	mov    0x8(%r11),%r11
   14000260d:	41 80 7b 10 00       	cmpb   $0x0,0x10(%r11)
   140002612:	74 ec                	je     140002600 <_ZN13NaturalBinaryltES_+0xf0>
   140002614:	4c 8b 0b             	mov    (%rbx),%r9
   140002617:	eb 22                	jmp    14000263b <_ZN13NaturalBinaryltES_+0x12b>
   140002619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002620:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002624:	48 8b 52 08          	mov    0x8(%rdx),%rdx
   140002628:	0f b6 48 10          	movzbl 0x10(%rax),%ecx
   14000262c:	44 0f b6 42 10       	movzbl 0x10(%rdx),%r8d
   140002631:	44 38 c1             	cmp    %r8b,%cl
   140002634:	72 32                	jb     140002668 <_ZN13NaturalBinaryltES_+0x158>
   140002636:	41 38 c8             	cmp    %cl,%r8b
   140002639:	72 05                	jb     140002640 <_ZN13NaturalBinaryltES_+0x130>
   14000263b:	4c 39 c8             	cmp    %r9,%rax
   14000263e:	75 e0                	jne    140002620 <_ZN13NaturalBinaryltES_+0x110>
   140002640:	31 c0                	xor    %eax,%eax
   140002642:	5b                   	pop    %rbx
   140002643:	5e                   	pop    %rsi
   140002644:	c3                   	ret
   140002645:	0f 1f 00             	nopl   (%rax)
   140002648:	45 85 c9             	test   %r9d,%r9d
   14000264b:	0f 85 5b ff ff ff    	jne    1400025ac <_ZN13NaturalBinaryltES_+0x9c>
   140002651:	eb 93                	jmp    1400025e6 <_ZN13NaturalBinaryltES_+0xd6>
   140002653:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002658:	4c 89 d0             	mov    %r10,%rax
   14000265b:	eb 97                	jmp    1400025f4 <_ZN13NaturalBinaryltES_+0xe4>
   14000265d:	0f 1f 00             	nopl   (%rax)
   140002660:	4c 89 da             	mov    %r11,%rdx
   140002663:	eb af                	jmp    140002614 <_ZN13NaturalBinaryltES_+0x104>
   140002665:	0f 1f 00             	nopl   (%rax)
   140002668:	b8 01 00 00 00       	mov    $0x1,%eax
   14000266d:	5b                   	pop    %rbx
   14000266e:	5e                   	pop    %rsi
   14000266f:	c3                   	ret
   140002670:	44 8b 4e 10          	mov    0x10(%rsi),%r9d
   140002674:	49 89 d3             	mov    %rdx,%r11
   140002677:	31 d2                	xor    %edx,%edx
   140002679:	41 83 e9 01          	sub    $0x1,%r9d
   14000267d:	0f 85 d1 fe ff ff    	jne    140002554 <_ZN13NaturalBinaryltES_+0x44>
   140002683:	48 89 c8             	mov    %rcx,%rax
   140002686:	48 89 f2             	mov    %rsi,%rdx
   140002689:	eb 89                	jmp    140002614 <_ZN13NaturalBinaryltES_+0x104>
   14000268b:	31 c0                	xor    %eax,%eax
   14000268d:	85 d2                	test   %edx,%edx
   14000268f:	0f 85 e3 fe ff ff    	jne    140002578 <_ZN13NaturalBinaryltES_+0x68>
   140002695:	e9 4c ff ff ff       	jmp    1400025e6 <_ZN13NaturalBinaryltES_+0xd6>
   14000269a:	48 89 d8             	mov    %rbx,%rax
   14000269d:	e9 64 ff ff ff       	jmp    140002606 <_ZN13NaturalBinaryltES_+0xf6>
   1400026a2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400026a9:	00 00 00 00 
   1400026ad:	0f 1f 00             	nopl   (%rax)

00000001400026b0 <_ZN13NaturalBinarygtES_>:
   1400026b0:	56                   	push   %rsi
   1400026b1:	53                   	push   %rbx
   1400026b2:	48 8b 42 10          	mov    0x10(%rdx),%rax
   1400026b6:	44 8b 49 10          	mov    0x10(%rcx),%r9d
   1400026ba:	8d 58 ff             	lea    -0x1(%rax),%ebx
   1400026bd:	49 89 cb             	mov    %rcx,%r11
   1400026c0:	49 89 d0             	mov    %rdx,%r8
   1400026c3:	48 89 ce             	mov    %rcx,%rsi
   1400026c6:	49 89 d2             	mov    %rdx,%r10
   1400026c9:	41 83 e9 01          	sub    $0x1,%r9d
   1400026cd:	0f 84 4d 01 00 00    	je     140002820 <_ZN13NaturalBinarygtES_+0x170>
   1400026d3:	48 89 c8             	mov    %rcx,%rax
   1400026d6:	44 89 ca             	mov    %r9d,%edx
   1400026d9:	eb 0e                	jmp    1400026e9 <_ZN13NaturalBinarygtES_+0x39>
   1400026db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400026e0:	83 ea 01             	sub    $0x1,%edx
   1400026e3:	0f 84 97 00 00 00    	je     140002780 <_ZN13NaturalBinarygtES_+0xd0>
   1400026e9:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400026ed:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   1400026f1:	74 ed                	je     1400026e0 <_ZN13NaturalBinarygtES_+0x30>
   1400026f3:	85 db                	test   %ebx,%ebx
   1400026f5:	0f 84 1d 01 00 00    	je     140002818 <_ZN13NaturalBinarygtES_+0x168>
   1400026fb:	89 d9                	mov    %ebx,%ecx
   1400026fd:	4c 89 c0             	mov    %r8,%rax
   140002700:	eb 0b                	jmp    14000270d <_ZN13NaturalBinarygtES_+0x5d>
   140002702:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002708:	83 e9 01             	sub    $0x1,%ecx
   14000270b:	74 0a                	je     140002717 <_ZN13NaturalBinarygtES_+0x67>
   14000270d:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002711:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002715:	74 f1                	je     140002708 <_ZN13NaturalBinarygtES_+0x58>
   140002717:	b8 01 00 00 00       	mov    $0x1,%eax
   14000271c:	39 d1                	cmp    %edx,%ecx
   14000271e:	72 55                	jb     140002775 <_ZN13NaturalBinarygtES_+0xc5>
   140002720:	45 85 c9             	test   %r9d,%r9d
   140002723:	0f 84 17 01 00 00    	je     140002840 <_ZN13NaturalBinarygtES_+0x190>
   140002729:	4c 89 d8             	mov    %r11,%rax
   14000272c:	44 89 ca             	mov    %r9d,%edx
   14000272f:	eb 0c                	jmp    14000273d <_ZN13NaturalBinarygtES_+0x8d>
   140002731:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002738:	83 ea 01             	sub    $0x1,%edx
   14000273b:	74 0a                	je     140002747 <_ZN13NaturalBinarygtES_+0x97>
   14000273d:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002741:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002745:	74 f1                	je     140002738 <_ZN13NaturalBinarygtES_+0x88>
   140002747:	85 db                	test   %ebx,%ebx
   140002749:	0f 84 e4 00 00 00    	je     140002833 <_ZN13NaturalBinarygtES_+0x183>
   14000274f:	4c 89 c0             	mov    %r8,%rax
   140002752:	89 d9                	mov    %ebx,%ecx
   140002754:	eb 0f                	jmp    140002765 <_ZN13NaturalBinarygtES_+0xb5>
   140002756:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000275d:	00 00 00 
   140002760:	83 e9 01             	sub    $0x1,%ecx
   140002763:	74 2b                	je     140002790 <_ZN13NaturalBinarygtES_+0xe0>
   140002765:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002769:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   14000276d:	74 f1                	je     140002760 <_ZN13NaturalBinarygtES_+0xb0>
   14000276f:	31 c0                	xor    %eax,%eax
   140002771:	39 ca                	cmp    %ecx,%edx
   140002773:	73 1b                	jae    140002790 <_ZN13NaturalBinarygtES_+0xe0>
   140002775:	5b                   	pop    %rbx
   140002776:	5e                   	pop    %rsi
   140002777:	c3                   	ret
   140002778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000277f:	00 
   140002780:	85 db                	test   %ebx,%ebx
   140002782:	0f 85 73 ff ff ff    	jne    1400026fb <_ZN13NaturalBinarygtES_+0x4b>
   140002788:	eb 9f                	jmp    140002729 <_ZN13NaturalBinarygtES_+0x79>
   14000278a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002790:	45 85 c9             	test   %r9d,%r9d
   140002793:	75 11                	jne    1400027a6 <_ZN13NaturalBinarygtES_+0xf6>
   140002795:	e9 b6 00 00 00       	jmp    140002850 <_ZN13NaturalBinarygtES_+0x1a0>
   14000279a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400027a0:	41 83 e9 01          	sub    $0x1,%r9d
   1400027a4:	74 6a                	je     140002810 <_ZN13NaturalBinarygtES_+0x160>
   1400027a6:	48 89 f0             	mov    %rsi,%rax
   1400027a9:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   1400027ad:	80 7e 10 00          	cmpb   $0x0,0x10(%rsi)
   1400027b1:	74 ed                	je     1400027a0 <_ZN13NaturalBinarygtES_+0xf0>
   1400027b3:	4c 89 c2             	mov    %r8,%rdx
   1400027b6:	85 db                	test   %ebx,%ebx
   1400027b8:	75 0b                	jne    1400027c5 <_ZN13NaturalBinarygtES_+0x115>
   1400027ba:	eb 17                	jmp    1400027d3 <_ZN13NaturalBinarygtES_+0x123>
   1400027bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400027c0:	83 eb 01             	sub    $0x1,%ebx
   1400027c3:	74 43                	je     140002808 <_ZN13NaturalBinarygtES_+0x158>
   1400027c5:	4c 89 d2             	mov    %r10,%rdx
   1400027c8:	4d 8b 52 08          	mov    0x8(%r10),%r10
   1400027cc:	41 80 7a 10 00       	cmpb   $0x0,0x10(%r10)
   1400027d1:	74 ed                	je     1400027c0 <_ZN13NaturalBinarygtES_+0x110>
   1400027d3:	4d 8b 0b             	mov    (%r11),%r9
   1400027d6:	eb 23                	jmp    1400027fb <_ZN13NaturalBinarygtES_+0x14b>
   1400027d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400027df:	00 
   1400027e0:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400027e4:	48 8b 52 08          	mov    0x8(%rdx),%rdx
   1400027e8:	44 0f b6 40 10       	movzbl 0x10(%rax),%r8d
   1400027ed:	0f b6 4a 10          	movzbl 0x10(%rdx),%ecx
   1400027f1:	44 38 c1             	cmp    %r8b,%cl
   1400027f4:	72 22                	jb     140002818 <_ZN13NaturalBinarygtES_+0x168>
   1400027f6:	41 38 c8             	cmp    %cl,%r8b
   1400027f9:	72 05                	jb     140002800 <_ZN13NaturalBinarygtES_+0x150>
   1400027fb:	4c 39 c8             	cmp    %r9,%rax
   1400027fe:	75 e0                	jne    1400027e0 <_ZN13NaturalBinarygtES_+0x130>
   140002800:	31 c0                	xor    %eax,%eax
   140002802:	5b                   	pop    %rbx
   140002803:	5e                   	pop    %rsi
   140002804:	c3                   	ret
   140002805:	0f 1f 00             	nopl   (%rax)
   140002808:	4c 89 d2             	mov    %r10,%rdx
   14000280b:	eb c6                	jmp    1400027d3 <_ZN13NaturalBinarygtES_+0x123>
   14000280d:	0f 1f 00             	nopl   (%rax)
   140002810:	48 89 f0             	mov    %rsi,%rax
   140002813:	eb 9e                	jmp    1400027b3 <_ZN13NaturalBinarygtES_+0x103>
   140002815:	0f 1f 00             	nopl   (%rax)
   140002818:	b8 01 00 00 00       	mov    $0x1,%eax
   14000281d:	5b                   	pop    %rbx
   14000281e:	5e                   	pop    %rsi
   14000281f:	c3                   	ret
   140002820:	31 d2                	xor    %edx,%edx
   140002822:	83 f8 01             	cmp    $0x1,%eax
   140002825:	0f 85 d0 fe ff ff    	jne    1400026fb <_ZN13NaturalBinarygtES_+0x4b>
   14000282b:	4c 89 c2             	mov    %r8,%rdx
   14000282e:	4c 89 d8             	mov    %r11,%rax
   140002831:	eb a0                	jmp    1400027d3 <_ZN13NaturalBinarygtES_+0x123>
   140002833:	45 85 c9             	test   %r9d,%r9d
   140002836:	0f 85 6a ff ff ff    	jne    1400027a6 <_ZN13NaturalBinarygtES_+0xf6>
   14000283c:	eb ed                	jmp    14000282b <_ZN13NaturalBinarygtES_+0x17b>
   14000283e:	66 90                	xchg   %ax,%ax
   140002840:	31 d2                	xor    %edx,%edx
   140002842:	85 db                	test   %ebx,%ebx
   140002844:	0f 85 05 ff ff ff    	jne    14000274f <_ZN13NaturalBinarygtES_+0x9f>
   14000284a:	eb df                	jmp    14000282b <_ZN13NaturalBinarygtES_+0x17b>
   14000284c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002850:	4c 89 d8             	mov    %r11,%rax
   140002853:	e9 6d ff ff ff       	jmp    1400027c5 <_ZN13NaturalBinarygtES_+0x115>
   140002858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000285f:	00 

0000000140002860 <_ZN13NaturalBinaryeqES_>:
   140002860:	56                   	push   %rsi
   140002861:	53                   	push   %rbx
   140002862:	48 8b 42 10          	mov    0x10(%rdx),%rax
   140002866:	44 8b 59 10          	mov    0x10(%rcx),%r11d
   14000286a:	8d 58 ff             	lea    -0x1(%rax),%ebx
   14000286d:	48 89 ce             	mov    %rcx,%rsi
   140002870:	49 89 ca             	mov    %rcx,%r10
   140002873:	49 89 d1             	mov    %rdx,%r9
   140002876:	41 83 eb 01          	sub    $0x1,%r11d
   14000287a:	0f 84 e5 00 00 00    	je     140002965 <_ZN13NaturalBinaryeqES_+0x105>
   140002880:	48 89 c8             	mov    %rcx,%rax
   140002883:	44 89 d9             	mov    %r11d,%ecx
   140002886:	eb 11                	jmp    140002899 <_ZN13NaturalBinaryeqES_+0x39>
   140002888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000288f:	00 
   140002890:	83 e9 01             	sub    $0x1,%ecx
   140002893:	0f 84 a7 00 00 00    	je     140002940 <_ZN13NaturalBinaryeqES_+0xe0>
   140002899:	48 8b 40 08          	mov    0x8(%rax),%rax
   14000289d:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   1400028a1:	74 ed                	je     140002890 <_ZN13NaturalBinaryeqES_+0x30>
   1400028a3:	85 db                	test   %ebx,%ebx
   1400028a5:	0f 84 a5 00 00 00    	je     140002950 <_ZN13NaturalBinaryeqES_+0xf0>
   1400028ab:	48 89 d0             	mov    %rdx,%rax
   1400028ae:	41 89 d8             	mov    %ebx,%r8d
   1400028b1:	eb 0b                	jmp    1400028be <_ZN13NaturalBinaryeqES_+0x5e>
   1400028b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400028b8:	41 83 e8 01          	sub    $0x1,%r8d
   1400028bc:	74 0a                	je     1400028c8 <_ZN13NaturalBinaryeqES_+0x68>
   1400028be:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400028c2:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   1400028c6:	74 f0                	je     1400028b8 <_ZN13NaturalBinaryeqES_+0x58>
   1400028c8:	31 c0                	xor    %eax,%eax
   1400028ca:	41 39 c8             	cmp    %ecx,%r8d
   1400028cd:	75 6d                	jne    14000293c <_ZN13NaturalBinaryeqES_+0xdc>
   1400028cf:	45 85 db             	test   %r11d,%r11d
   1400028d2:	75 12                	jne    1400028e6 <_ZN13NaturalBinaryeqES_+0x86>
   1400028d4:	e9 9f 00 00 00       	jmp    140002978 <_ZN13NaturalBinaryeqES_+0x118>
   1400028d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400028e0:	41 83 eb 01          	sub    $0x1,%r11d
   1400028e4:	74 72                	je     140002958 <_ZN13NaturalBinaryeqES_+0xf8>
   1400028e6:	4c 89 d1             	mov    %r10,%rcx
   1400028e9:	4d 8b 52 08          	mov    0x8(%r10),%r10
   1400028ed:	41 80 7a 10 00       	cmpb   $0x0,0x10(%r10)
   1400028f2:	74 ec                	je     1400028e0 <_ZN13NaturalBinaryeqES_+0x80>
   1400028f4:	48 89 d0             	mov    %rdx,%rax
   1400028f7:	85 db                	test   %ebx,%ebx
   1400028f9:	75 0a                	jne    140002905 <_ZN13NaturalBinaryeqES_+0xa5>
   1400028fb:	eb 16                	jmp    140002913 <_ZN13NaturalBinaryeqES_+0xb3>
   1400028fd:	0f 1f 00             	nopl   (%rax)
   140002900:	83 eb 01             	sub    $0x1,%ebx
   140002903:	74 5b                	je     140002960 <_ZN13NaturalBinaryeqES_+0x100>
   140002905:	4c 89 c8             	mov    %r9,%rax
   140002908:	4d 8b 49 08          	mov    0x8(%r9),%r9
   14000290c:	41 80 79 10 00       	cmpb   $0x0,0x10(%r9)
   140002911:	74 ed                	je     140002900 <_ZN13NaturalBinaryeqES_+0xa0>
   140002913:	48 8b 16             	mov    (%rsi),%rdx
   140002916:	eb 1a                	jmp    140002932 <_ZN13NaturalBinaryeqES_+0xd2>
   140002918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000291f:	00 
   140002920:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002924:	48 8b 49 08          	mov    0x8(%rcx),%rcx
   140002928:	0f b6 70 10          	movzbl 0x10(%rax),%esi
   14000292c:	40 38 71 10          	cmp    %sil,0x10(%rcx)
   140002930:	75 1e                	jne    140002950 <_ZN13NaturalBinaryeqES_+0xf0>
   140002932:	48 39 d1             	cmp    %rdx,%rcx
   140002935:	75 e9                	jne    140002920 <_ZN13NaturalBinaryeqES_+0xc0>
   140002937:	b8 01 00 00 00       	mov    $0x1,%eax
   14000293c:	5b                   	pop    %rbx
   14000293d:	5e                   	pop    %rsi
   14000293e:	c3                   	ret
   14000293f:	90                   	nop
   140002940:	85 db                	test   %ebx,%ebx
   140002942:	0f 85 63 ff ff ff    	jne    1400028ab <_ZN13NaturalBinaryeqES_+0x4b>
   140002948:	eb 9c                	jmp    1400028e6 <_ZN13NaturalBinaryeqES_+0x86>
   14000294a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002950:	31 c0                	xor    %eax,%eax
   140002952:	5b                   	pop    %rbx
   140002953:	5e                   	pop    %rsi
   140002954:	c3                   	ret
   140002955:	0f 1f 00             	nopl   (%rax)
   140002958:	4c 89 d1             	mov    %r10,%rcx
   14000295b:	eb 97                	jmp    1400028f4 <_ZN13NaturalBinaryeqES_+0x94>
   14000295d:	0f 1f 00             	nopl   (%rax)
   140002960:	4c 89 c8             	mov    %r9,%rax
   140002963:	eb ae                	jmp    140002913 <_ZN13NaturalBinaryeqES_+0xb3>
   140002965:	31 c9                	xor    %ecx,%ecx
   140002967:	83 f8 01             	cmp    $0x1,%eax
   14000296a:	0f 85 3b ff ff ff    	jne    1400028ab <_ZN13NaturalBinaryeqES_+0x4b>
   140002970:	48 89 f1             	mov    %rsi,%rcx
   140002973:	48 89 d0             	mov    %rdx,%rax
   140002976:	eb 9b                	jmp    140002913 <_ZN13NaturalBinaryeqES_+0xb3>
   140002978:	48 89 f1             	mov    %rsi,%rcx
   14000297b:	e9 74 ff ff ff       	jmp    1400028f4 <_ZN13NaturalBinaryeqES_+0x94>

0000000140002980 <_ZN13NaturalBinaryleES_>:
   140002980:	41 55                	push   %r13
   140002982:	41 54                	push   %r12
   140002984:	55                   	push   %rbp
   140002985:	57                   	push   %rdi
   140002986:	56                   	push   %rsi
   140002987:	53                   	push   %rbx
   140002988:	48 83 ec 68          	sub    $0x68,%rsp
   14000298c:	48 8b 1a             	mov    (%rdx),%rbx
   14000298f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140002994:	48 89 cd             	mov    %rcx,%rbp
   140002997:	48 89 d7             	mov    %rdx,%rdi
   14000299a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400029a1:	00 00 
   1400029a3:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400029a8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400029ac:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400029b1:	48 39 da             	cmp    %rbx,%rdx
   1400029b4:	74 34                	je     1400029ea <_ZN13NaturalBinaryleES_+0x6a>
   1400029b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400029bd:	00 00 00 
   1400029c0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400029c5:	e8 3e 38 00 00       	call   140006208 <_Znwy>
   1400029ca:	48 89 c1             	mov    %rax,%rcx
   1400029cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400029d1:	48 89 f2             	mov    %rsi,%rdx
   1400029d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400029d7:	e8 8c 38 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400029dc:	48 8b 1b             	mov    (%rbx),%rbx
   1400029df:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400029e5:	48 39 df             	cmp    %rbx,%rdi
   1400029e8:	75 d6                	jne    1400029c0 <_ZN13NaturalBinaryleES_+0x40>
   1400029ea:	48 89 f2             	mov    %rsi,%rdx
   1400029ed:	48 89 e9             	mov    %rbp,%rcx
   1400029f0:	e8 6b fe ff ff       	call   140002860 <_ZN13NaturalBinaryeqES_>
   1400029f5:	41 89 c5             	mov    %eax,%r13d
   1400029f8:	84 c0                	test   %al,%al
   1400029fa:	74 3c                	je     140002a38 <_ZN13NaturalBinaryleES_+0xb8>
   1400029fc:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140002a01:	48 39 f3             	cmp    %rsi,%rbx
   140002a04:	74 1f                	je     140002a25 <_ZN13NaturalBinaryleES_+0xa5>
   140002a06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002a0d:	00 00 00 
   140002a10:	48 89 d9             	mov    %rbx,%rcx
   140002a13:	48 8b 1b             	mov    (%rbx),%rbx
   140002a16:	ba 18 00 00 00       	mov    $0x18,%edx
   140002a1b:	e8 f0 37 00 00       	call   140006210 <_ZdlPvy>
   140002a20:	48 39 f3             	cmp    %rsi,%rbx
   140002a23:	75 eb                	jne    140002a10 <_ZN13NaturalBinaryleES_+0x90>
   140002a25:	44 89 e8             	mov    %r13d,%eax
   140002a28:	48 83 c4 68          	add    $0x68,%rsp
   140002a2c:	5b                   	pop    %rbx
   140002a2d:	5e                   	pop    %rsi
   140002a2e:	5f                   	pop    %rdi
   140002a2f:	5d                   	pop    %rbp
   140002a30:	41 5c                	pop    %r12
   140002a32:	41 5d                	pop    %r13
   140002a34:	c3                   	ret
   140002a35:	0f 1f 00             	nopl   (%rax)
   140002a38:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140002a3d:	48 8b 1f             	mov    (%rdi),%rbx
   140002a40:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140002a47:	00 00 
   140002a49:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140002a4e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002a52:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140002a57:	48 39 df             	cmp    %rbx,%rdi
   140002a5a:	74 6e                	je     140002aca <_ZN13NaturalBinaryleES_+0x14a>
   140002a5c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002a60:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002a65:	e8 9e 37 00 00       	call   140006208 <_Znwy>
   140002a6a:	48 89 c1             	mov    %rax,%rcx
   140002a6d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002a71:	4c 89 e2             	mov    %r12,%rdx
   140002a74:	88 41 10             	mov    %al,0x10(%rcx)
   140002a77:	e8 ec 37 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002a7c:	48 8b 1b             	mov    (%rbx),%rbx
   140002a7f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140002a85:	48 39 df             	cmp    %rbx,%rdi
   140002a88:	75 d6                	jne    140002a60 <_ZN13NaturalBinaryleES_+0xe0>
   140002a8a:	4c 89 e2             	mov    %r12,%rdx
   140002a8d:	48 89 e9             	mov    %rbp,%rcx
   140002a90:	e8 7b fa ff ff       	call   140002510 <_ZN13NaturalBinaryltES_>
   140002a95:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140002a9a:	41 89 c5             	mov    %eax,%r13d
   140002a9d:	4c 39 e3             	cmp    %r12,%rbx
   140002aa0:	0f 84 56 ff ff ff    	je     1400029fc <_ZN13NaturalBinaryleES_+0x7c>
   140002aa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002aad:	00 00 00 
   140002ab0:	48 89 d9             	mov    %rbx,%rcx
   140002ab3:	48 8b 1b             	mov    (%rbx),%rbx
   140002ab6:	ba 18 00 00 00       	mov    $0x18,%edx
   140002abb:	e8 50 37 00 00       	call   140006210 <_ZdlPvy>
   140002ac0:	4c 39 e3             	cmp    %r12,%rbx
   140002ac3:	75 eb                	jne    140002ab0 <_ZN13NaturalBinaryleES_+0x130>
   140002ac5:	e9 32 ff ff ff       	jmp    1400029fc <_ZN13NaturalBinaryleES_+0x7c>
   140002aca:	4c 89 e2             	mov    %r12,%rdx
   140002acd:	48 89 e9             	mov    %rbp,%rcx
   140002ad0:	e8 3b fa ff ff       	call   140002510 <_ZN13NaturalBinaryltES_>
   140002ad5:	41 89 c5             	mov    %eax,%r13d
   140002ad8:	e9 1f ff ff ff       	jmp    1400029fc <_ZN13NaturalBinaryleES_+0x7c>
   140002add:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002ae2:	48 89 c3             	mov    %rax,%rbx
   140002ae5:	48 39 f1             	cmp    %rsi,%rcx
   140002ae8:	74 3b                	je     140002b25 <_ZN13NaturalBinaryleES_+0x1a5>
   140002aea:	48 8b 39             	mov    (%rcx),%rdi
   140002aed:	ba 18 00 00 00       	mov    $0x18,%edx
   140002af2:	e8 19 37 00 00       	call   140006210 <_ZdlPvy>
   140002af7:	48 89 f9             	mov    %rdi,%rcx
   140002afa:	eb e9                	jmp    140002ae5 <_ZN13NaturalBinaryleES_+0x165>
   140002afc:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140002b01:	48 89 c3             	mov    %rax,%rbx
   140002b04:	4c 39 e1             	cmp    %r12,%rcx
   140002b07:	74 12                	je     140002b1b <_ZN13NaturalBinaryleES_+0x19b>
   140002b09:	48 8b 39             	mov    (%rcx),%rdi
   140002b0c:	ba 18 00 00 00       	mov    $0x18,%edx
   140002b11:	e8 fa 36 00 00       	call   140006210 <_ZdlPvy>
   140002b16:	48 89 f9             	mov    %rdi,%rcx
   140002b19:	eb e9                	jmp    140002b04 <_ZN13NaturalBinaryleES_+0x184>
   140002b1b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002b20:	48 39 f1             	cmp    %rsi,%rcx
   140002b23:	75 08                	jne    140002b2d <_ZN13NaturalBinaryleES_+0x1ad>
   140002b25:	48 89 d9             	mov    %rbx,%rcx
   140002b28:	e8 33 48 00 00       	call   140007360 <_Unwind_Resume>
   140002b2d:	48 8b 39             	mov    (%rcx),%rdi
   140002b30:	ba 18 00 00 00       	mov    $0x18,%edx
   140002b35:	e8 d6 36 00 00       	call   140006210 <_ZdlPvy>
   140002b3a:	48 89 f9             	mov    %rdi,%rcx
   140002b3d:	eb e1                	jmp    140002b20 <_ZN13NaturalBinaryleES_+0x1a0>
   140002b3f:	90                   	nop

0000000140002b40 <_ZN13NaturalBinarygeES_>:
   140002b40:	41 55                	push   %r13
   140002b42:	41 54                	push   %r12
   140002b44:	55                   	push   %rbp
   140002b45:	57                   	push   %rdi
   140002b46:	56                   	push   %rsi
   140002b47:	53                   	push   %rbx
   140002b48:	48 83 ec 68          	sub    $0x68,%rsp
   140002b4c:	48 8b 1a             	mov    (%rdx),%rbx
   140002b4f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140002b54:	48 89 cd             	mov    %rcx,%rbp
   140002b57:	48 89 d7             	mov    %rdx,%rdi
   140002b5a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140002b61:	00 00 
   140002b63:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140002b68:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002b6c:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140002b71:	48 39 da             	cmp    %rbx,%rdx
   140002b74:	74 34                	je     140002baa <_ZN13NaturalBinarygeES_+0x6a>
   140002b76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002b7d:	00 00 00 
   140002b80:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002b85:	e8 7e 36 00 00       	call   140006208 <_Znwy>
   140002b8a:	48 89 c1             	mov    %rax,%rcx
   140002b8d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002b91:	48 89 f2             	mov    %rsi,%rdx
   140002b94:	88 41 10             	mov    %al,0x10(%rcx)
   140002b97:	e8 cc 36 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002b9c:	48 8b 1b             	mov    (%rbx),%rbx
   140002b9f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140002ba5:	48 39 df             	cmp    %rbx,%rdi
   140002ba8:	75 d6                	jne    140002b80 <_ZN13NaturalBinarygeES_+0x40>
   140002baa:	48 89 f2             	mov    %rsi,%rdx
   140002bad:	48 89 e9             	mov    %rbp,%rcx
   140002bb0:	e8 ab fc ff ff       	call   140002860 <_ZN13NaturalBinaryeqES_>
   140002bb5:	41 89 c5             	mov    %eax,%r13d
   140002bb8:	84 c0                	test   %al,%al
   140002bba:	74 3c                	je     140002bf8 <_ZN13NaturalBinarygeES_+0xb8>
   140002bbc:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140002bc1:	48 39 f3             	cmp    %rsi,%rbx
   140002bc4:	74 1f                	je     140002be5 <_ZN13NaturalBinarygeES_+0xa5>
   140002bc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002bcd:	00 00 00 
   140002bd0:	48 89 d9             	mov    %rbx,%rcx
   140002bd3:	48 8b 1b             	mov    (%rbx),%rbx
   140002bd6:	ba 18 00 00 00       	mov    $0x18,%edx
   140002bdb:	e8 30 36 00 00       	call   140006210 <_ZdlPvy>
   140002be0:	48 39 f3             	cmp    %rsi,%rbx
   140002be3:	75 eb                	jne    140002bd0 <_ZN13NaturalBinarygeES_+0x90>
   140002be5:	44 89 e8             	mov    %r13d,%eax
   140002be8:	48 83 c4 68          	add    $0x68,%rsp
   140002bec:	5b                   	pop    %rbx
   140002bed:	5e                   	pop    %rsi
   140002bee:	5f                   	pop    %rdi
   140002bef:	5d                   	pop    %rbp
   140002bf0:	41 5c                	pop    %r12
   140002bf2:	41 5d                	pop    %r13
   140002bf4:	c3                   	ret
   140002bf5:	0f 1f 00             	nopl   (%rax)
   140002bf8:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140002bfd:	48 8b 1f             	mov    (%rdi),%rbx
   140002c00:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140002c07:	00 00 
   140002c09:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140002c0e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002c12:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140002c17:	48 39 df             	cmp    %rbx,%rdi
   140002c1a:	74 6e                	je     140002c8a <_ZN13NaturalBinarygeES_+0x14a>
   140002c1c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002c20:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002c25:	e8 de 35 00 00       	call   140006208 <_Znwy>
   140002c2a:	48 89 c1             	mov    %rax,%rcx
   140002c2d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002c31:	4c 89 e2             	mov    %r12,%rdx
   140002c34:	88 41 10             	mov    %al,0x10(%rcx)
   140002c37:	e8 2c 36 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002c3c:	48 8b 1b             	mov    (%rbx),%rbx
   140002c3f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140002c45:	48 39 df             	cmp    %rbx,%rdi
   140002c48:	75 d6                	jne    140002c20 <_ZN13NaturalBinarygeES_+0xe0>
   140002c4a:	4c 89 e2             	mov    %r12,%rdx
   140002c4d:	48 89 e9             	mov    %rbp,%rcx
   140002c50:	e8 5b fa ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140002c55:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140002c5a:	41 89 c5             	mov    %eax,%r13d
   140002c5d:	4c 39 e3             	cmp    %r12,%rbx
   140002c60:	0f 84 56 ff ff ff    	je     140002bbc <_ZN13NaturalBinarygeES_+0x7c>
   140002c66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002c6d:	00 00 00 
   140002c70:	48 89 d9             	mov    %rbx,%rcx
   140002c73:	48 8b 1b             	mov    (%rbx),%rbx
   140002c76:	ba 18 00 00 00       	mov    $0x18,%edx
   140002c7b:	e8 90 35 00 00       	call   140006210 <_ZdlPvy>
   140002c80:	4c 39 e3             	cmp    %r12,%rbx
   140002c83:	75 eb                	jne    140002c70 <_ZN13NaturalBinarygeES_+0x130>
   140002c85:	e9 32 ff ff ff       	jmp    140002bbc <_ZN13NaturalBinarygeES_+0x7c>
   140002c8a:	4c 89 e2             	mov    %r12,%rdx
   140002c8d:	48 89 e9             	mov    %rbp,%rcx
   140002c90:	e8 1b fa ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140002c95:	41 89 c5             	mov    %eax,%r13d
   140002c98:	e9 1f ff ff ff       	jmp    140002bbc <_ZN13NaturalBinarygeES_+0x7c>
   140002c9d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002ca2:	48 89 c3             	mov    %rax,%rbx
   140002ca5:	48 39 f1             	cmp    %rsi,%rcx
   140002ca8:	74 3b                	je     140002ce5 <_ZN13NaturalBinarygeES_+0x1a5>
   140002caa:	48 8b 39             	mov    (%rcx),%rdi
   140002cad:	ba 18 00 00 00       	mov    $0x18,%edx
   140002cb2:	e8 59 35 00 00       	call   140006210 <_ZdlPvy>
   140002cb7:	48 89 f9             	mov    %rdi,%rcx
   140002cba:	eb e9                	jmp    140002ca5 <_ZN13NaturalBinarygeES_+0x165>
   140002cbc:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140002cc1:	48 89 c3             	mov    %rax,%rbx
   140002cc4:	4c 39 e1             	cmp    %r12,%rcx
   140002cc7:	74 12                	je     140002cdb <_ZN13NaturalBinarygeES_+0x19b>
   140002cc9:	48 8b 39             	mov    (%rcx),%rdi
   140002ccc:	ba 18 00 00 00       	mov    $0x18,%edx
   140002cd1:	e8 3a 35 00 00       	call   140006210 <_ZdlPvy>
   140002cd6:	48 89 f9             	mov    %rdi,%rcx
   140002cd9:	eb e9                	jmp    140002cc4 <_ZN13NaturalBinarygeES_+0x184>
   140002cdb:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002ce0:	48 39 f1             	cmp    %rsi,%rcx
   140002ce3:	75 08                	jne    140002ced <_ZN13NaturalBinarygeES_+0x1ad>
   140002ce5:	48 89 d9             	mov    %rbx,%rcx
   140002ce8:	e8 73 46 00 00       	call   140007360 <_Unwind_Resume>
   140002ced:	48 8b 39             	mov    (%rcx),%rdi
   140002cf0:	ba 18 00 00 00       	mov    $0x18,%edx
   140002cf5:	e8 16 35 00 00       	call   140006210 <_ZdlPvy>
   140002cfa:	48 89 f9             	mov    %rdi,%rcx
   140002cfd:	eb e1                	jmp    140002ce0 <_ZN13NaturalBinarygeES_+0x1a0>
   140002cff:	90                   	nop

0000000140002d00 <_ZN13NaturalBinary8toStringB5cxx11Ev>:
   140002d00:	41 57                	push   %r15
   140002d02:	41 56                	push   %r14
   140002d04:	41 55                	push   %r13
   140002d06:	41 54                	push   %r12
   140002d08:	55                   	push   %rbp
   140002d09:	57                   	push   %rdi
   140002d0a:	56                   	push   %rsi
   140002d0b:	53                   	push   %rbx
   140002d0c:	48 81 ec 78 02 00 00 	sub    $0x278,%rsp
   140002d13:	0f 11 b4 24 50 02 00 	movups %xmm6,0x250(%rsp)
   140002d1a:	00 
   140002d1b:	0f 11 bc 24 60 02 00 	movups %xmm7,0x260(%rsp)
   140002d22:	00 
   140002d23:	48 8b 05 66 67 00 00 	mov    0x6766(%rip),%rax        # 140009490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002d2a:	48 8b 1d 4f 67 00 00 	mov    0x674f(%rip),%rbx        # 140009480 <__fu8__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE>
   140002d31:	48 83 c0 40          	add    $0x40,%rax
   140002d35:	66 48 0f 6e f0       	movq   %rax,%xmm6
   140002d3a:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140002d3e:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140002d43:	48 8b 05 56 67 00 00 	mov    0x6756(%rip),%rax        # 1400094a0 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140002d4a:	66 0f 6f fe          	movdqa %xmm6,%xmm7
   140002d4e:	66 0f 6c f9          	punpcklqdq %xmm1,%xmm7
   140002d52:	48 83 c0 10          	add    $0x10,%rax
   140002d56:	c6 41 10 00          	movb   $0x0,0x10(%rcx)
   140002d5a:	48 89 cf             	mov    %rcx,%rdi
   140002d5d:	49 89 d5             	mov    %rdx,%r13
   140002d60:	66 48 0f 6e d0       	movq   %rax,%xmm2
   140002d65:	48 8d 41 10          	lea    0x10(%rcx),%rax
   140002d69:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   140002d70:	00 
   140002d71:	4c 8d bc 24 40 01 00 	lea    0x140(%rsp),%r15
   140002d78:	00 
   140002d79:	48 89 01             	mov    %rax,(%rcx)
   140002d7c:	4c 89 f9             	mov    %r15,%rcx
   140002d7f:	66 0f 6c f2          	punpcklqdq %xmm2,%xmm6
   140002d83:	4c 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%r14
   140002d8a:	00 
   140002d8b:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
   140002d92:	00 
   140002d93:	4c 89 b4 24 98 00 00 	mov    %r14,0x98(%rsp)
   140002d9a:	00 
   140002d9b:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
   140002da2:	00 
   140002da3:	e8 a0 34 00 00       	call   140006248 <_ZNSt8ios_baseC2Ev>
   140002da8:	48 8b 35 c1 66 00 00 	mov    0x66c1(%rip),%rsi        # 140009470 <__fu5__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002daf:	31 d2                	xor    %edx,%edx
   140002db1:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002db5:	48 8b 05 f4 66 00 00 	mov    0x66f4(%rip),%rax        # 1400094b0 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   140002dbc:	66 89 94 24 20 02 00 	mov    %dx,0x220(%rsp)
   140002dc3:	00 
   140002dc4:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002dc8:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
   140002dcc:	0f 11 84 24 28 02 00 	movups %xmm0,0x228(%rsp)
   140002dd3:	00 
   140002dd4:	48 83 c0 10          	add    $0x10,%rax
   140002dd8:	0f 11 84 24 38 02 00 	movups %xmm0,0x238(%rsp)
   140002ddf:	00 
   140002de0:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140002de7:	00 
   140002de8:	48 8b 42 e8          	mov    -0x18(%rdx),%rax
   140002dec:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
   140002df3:	00 
   140002df4:	48 c7 84 24 18 02 00 	movq   $0x0,0x218(%rsp)
   140002dfb:	00 00 00 00 00 
   140002e00:	48 89 8c 04 c0 00 00 	mov    %rcx,0xc0(%rsp,%rax,1)
   140002e07:	00 
   140002e08:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   140002e0f:	00 00 00 00 00 
   140002e14:	4c 03 72 e8          	add    -0x18(%rdx),%r14
   140002e18:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
   140002e1d:	31 d2                	xor    %edx,%edx
   140002e1f:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
   140002e24:	4c 89 f1             	mov    %r14,%rcx
   140002e27:	e8 0c 34 00 00       	call   140006238 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002e2c:	48 8b 46 20          	mov    0x20(%rsi),%rax
   140002e30:	48 8d ac 24 d0 00 00 	lea    0xd0(%rsp),%rbp
   140002e37:	00 
   140002e38:	31 d2                	xor    %edx,%edx
   140002e3a:	48 8b 48 e8          	mov    -0x18(%rax),%rcx
   140002e3e:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   140002e45:	00 
   140002e46:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   140002e4b:	48 8b 46 28          	mov    0x28(%rsi),%rax
   140002e4f:	48 01 e9             	add    %rbp,%rcx
   140002e52:	48 89 01             	mov    %rax,(%rcx)
   140002e55:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   140002e5a:	e8 d9 33 00 00       	call   140006238 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002e5f:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140002e63:	48 8b 76 30          	mov    0x30(%rsi),%rsi
   140002e67:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002e6b:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140002e70:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140002e74:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
   140002e79:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140002e80:	00 
   140002e81:	48 8b 05 08 66 00 00 	mov    0x6608(%rip),%rax        # 140009490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002e88:	0f 11 b4 24 d0 00 00 	movups %xmm6,0xd0(%rsp)
   140002e8f:	00 
   140002e90:	48 83 c0 18          	add    $0x18,%rax
   140002e94:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   140002e9b:	00 
   140002e9c:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140002ea3:	00 
   140002ea4:	48 8b 05 e5 65 00 00 	mov    0x65e5(%rip),%rax        # 140009490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002eab:	0f 11 84 24 f0 00 00 	movups %xmm0,0xf0(%rsp)
   140002eb2:	00 
   140002eb3:	48 83 c0 68          	add    $0x68,%rax
   140002eb7:	0f 11 84 24 00 01 00 	movups %xmm0,0x100(%rsp)
   140002ebe:	00 
   140002ebf:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140002ec6:	00 
   140002ec7:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
   140002ece:	00 
   140002ecf:	48 89 c1             	mov    %rax,%rcx
   140002ed2:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
   140002ed7:	e8 d4 33 00 00       	call   1400062b0 <_ZNSt6localeC1Ev>
   140002edc:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140002ee0:	4c 89 f9             	mov    %r15,%rcx
   140002ee3:	c7 84 24 18 01 00 00 	movl   $0x18,0x118(%rsp)
   140002eea:	18 00 00 00 
   140002eee:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140002ef5:	00 
   140002ef6:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
   140002efd:	00 
   140002efe:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   140002f05:	00 
   140002f06:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
   140002f0d:	00 
   140002f0e:	48 8d 84 24 d8 00 00 	lea    0xd8(%rsp),%rax
   140002f15:	00 
   140002f16:	48 89 c2             	mov    %rax,%rdx
   140002f19:	c6 84 24 30 01 00 00 	movb   $0x0,0x130(%rsp)
   140002f20:	00 
   140002f21:	48 c7 84 24 28 01 00 	movq   $0x0,0x128(%rsp)
   140002f28:	00 00 00 00 00 
   140002f2d:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002f32:	e8 01 33 00 00       	call   140006238 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002f37:	48 8d 05 d2 45 00 00 	lea    0x45d2(%rip),%rax        # 140007510 <_ZNKSt5ctypeIcE8do_widenEc>
   140002f3e:	4c 89 ee             	mov    %r13,%rsi
   140002f41:	4c 8d a4 24 a0 00 00 	lea    0xa0(%rsp),%r12
   140002f48:	00 
   140002f49:	49 be ff ff ff ff ff 	movabs $0x3fffffffffffffff,%r14
   140002f50:	ff ff 3f 
   140002f53:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
   140002f58:	4d 3b 6d 00          	cmp    0x0(%r13),%r13
   140002f5c:	0f 84 ce 04 00 00    	je     140003430 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x730>
   140002f62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002f68:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   140002f6f:	00 
   140002f70:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   140002f74:	48 c7 84 14 e0 00 00 	movq   $0x2,0xe0(%rsp,%rdx,1)
   140002f7b:	00 02 00 00 00 
   140002f80:	48 8b 58 e8          	mov    -0x18(%rax),%rbx
   140002f84:	48 01 eb             	add    %rbp,%rbx
   140002f87:	80 bb e1 00 00 00 00 	cmpb   $0x0,0xe1(%rbx)
   140002f8e:	48 89 da             	mov    %rbx,%rdx
   140002f91:	0f 84 b9 03 00 00    	je     140003350 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x650>
   140002f97:	c6 83 e0 00 00 00 30 	movb   $0x30,0xe0(%rbx)
   140002f9e:	8b 42 18             	mov    0x18(%rdx),%eax
   140002fa1:	48 89 e9             	mov    %rbp,%rcx
   140002fa4:	83 e0 b5             	and    $0xffffffb5,%eax
   140002fa7:	83 c8 08             	or     $0x8,%eax
   140002faa:	89 42 18             	mov    %eax,0x18(%rdx)
   140002fad:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140002fb1:	0f b6 50 10          	movzbl 0x10(%rax),%edx
   140002fb5:	e8 1e 33 00 00       	call   1400062d8 <_ZNSolsEi>
   140002fba:	48 8b 94 24 00 01 00 	mov    0x100(%rsp),%rdx
   140002fc1:	00 
   140002fc2:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   140002fc9:	00 
   140002fca:	4d 89 e7             	mov    %r12,%r15
   140002fcd:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002fd4:	00 00 00 00 00 
   140002fd9:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140002fe0:	00 
   140002fe1:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140002fe8:	00 
   140002fe9:	48 85 d2             	test   %rdx,%rdx
   140002fec:	0f 84 ae 03 00 00    	je     1400033a0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6a0>
   140002ff2:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
   140002ff9:	00 
   140002ffa:	48 85 c0             	test   %rax,%rax
   140002ffd:	0f 84 3d 03 00 00    	je     140003340 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   140003003:	48 39 d0             	cmp    %rdx,%rax
   140003006:	0f 82 34 03 00 00    	jb     140003340 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   14000300c:	4c 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%r9
   140003013:	00 
   140003014:	45 31 c0             	xor    %r8d,%r8d
   140003017:	31 d2                	xor    %edx,%edx
   140003019:	4c 89 e1             	mov    %r12,%rcx
   14000301c:	4c 29 c8             	sub    %r9,%rax
   14000301f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003024:	e8 77 32 00 00       	call   1400062a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140003029:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003030:	00 
   140003031:	4c 89 f0             	mov    %r14,%rax
   140003034:	48 2b 47 08          	sub    0x8(%rdi),%rax
   140003038:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   14000303f:	00 
   140003040:	4c 39 c0             	cmp    %r8,%rax
   140003043:	0f 82 0e 04 00 00    	jb     140003457 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x757>
   140003049:	48 89 f9             	mov    %rdi,%rcx
   14000304c:	e8 3f 32 00 00       	call   140006290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140003051:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003058:	00 
   140003059:	48 39 d9             	cmp    %rbx,%rcx
   14000305c:	74 11                	je     14000306f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x36f>
   14000305e:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003065:	00 
   140003066:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000306a:	e8 a1 31 00 00       	call   140006210 <_ZdlPvy>
   14000306f:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   140003076:	00 00 
   140003078:	4c 8b 84 24 28 01 00 	mov    0x128(%rsp),%r8
   14000307f:	00 
   140003080:	49 89 d9             	mov    %rbx,%r9
   140003083:	31 d2                	xor    %edx,%edx
   140003085:	48 8d 8c 24 20 01 00 	lea    0x120(%rsp),%rcx
   14000308c:	00 
   14000308d:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140003094:	00 
   140003095:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   14000309c:	00 00 00 00 00 
   1400030a1:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   1400030a8:	00 
   1400030a9:	e8 f2 31 00 00       	call   1400062a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   1400030ae:	45 31 c9             	xor    %r9d,%r9d
   1400030b1:	f6 84 24 18 01 00 00 	testb  $0x3,0x118(%rsp)
   1400030b8:	03 
   1400030b9:	74 08                	je     1400030c3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x3c3>
   1400030bb:	4c 8b 8c 24 28 01 00 	mov    0x128(%rsp),%r9
   1400030c2:	00 
   1400030c3:	48 8b 94 24 20 01 00 	mov    0x120(%rsp),%rdx
   1400030ca:	00 
   1400030cb:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
   1400030d0:	45 31 c0             	xor    %r8d,%r8d
   1400030d3:	e8 a8 31 00 00       	call   140006280 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   1400030d8:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400030df:	00 
   1400030e0:	48 39 d9             	cmp    %rbx,%rcx
   1400030e3:	0f 84 3f 02 00 00    	je     140003328 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x628>
   1400030e9:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   1400030f0:	00 
   1400030f1:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400030f5:	e8 16 31 00 00       	call   140006210 <_ZdlPvy>
   1400030fa:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   1400030fe:	49 39 75 00          	cmp    %rsi,0x0(%r13)
   140003102:	0f 85 60 fe ff ff    	jne    140002f68 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   140003108:	48 8b 47 08          	mov    0x8(%rdi),%rax
   14000310c:	4c 89 f9             	mov    %r15,%rcx
   14000310f:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140003116:	00 
   140003117:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   14000311e:	00 00 00 00 00 
   140003123:	48 8d 50 02          	lea    0x2(%rax),%rdx
   140003127:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   14000312e:	00 
   14000312f:	e8 64 31 00 00       	call   140006298 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   140003134:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   14000313b:	ff ff 3f 
   14000313e:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   140003145:	00 
   140003146:	48 83 f8 01          	cmp    $0x1,%rax
   14000314a:	0f 86 18 03 00 00    	jbe    140003468 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x768>
   140003150:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140003156:	48 8d 15 e8 5e 00 00 	lea    0x5ee8(%rip),%rdx        # 140009045 <.rdata+0x15>
   14000315d:	4c 89 f9             	mov    %r15,%rcx
   140003160:	e8 2b 31 00 00       	call   140006290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140003165:	4c 8b 47 08          	mov    0x8(%rdi),%r8
   140003169:	48 8b 17             	mov    (%rdi),%rdx
   14000316c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140003173:	ff ff 3f 
   140003176:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   14000317d:	00 
   14000317e:	4c 39 c0             	cmp    %r8,%rax
   140003181:	0f 82 ed 02 00 00    	jb     140003474 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x774>
   140003187:	4c 89 f9             	mov    %r15,%rcx
   14000318a:	e8 01 31 00 00       	call   140006290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   14000318f:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   140003196:	00 
   140003197:	48 8b 0f             	mov    (%rdi),%rcx
   14000319a:	48 39 d8             	cmp    %rbx,%rax
   14000319d:	0f 84 3d 02 00 00    	je     1400033e0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6e0>
   1400031a3:	48 39 8c 24 90 00 00 	cmp    %rcx,0x90(%rsp)
   1400031aa:	00 
   1400031ab:	0f 84 07 02 00 00    	je     1400033b8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6b8>
   1400031b1:	f3 0f 6f 9c 24 a8 00 	movdqu 0xa8(%rsp),%xmm3
   1400031b8:	00 00 
   1400031ba:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   1400031be:	48 89 07             	mov    %rax,(%rdi)
   1400031c1:	0f 11 5f 08          	movups %xmm3,0x8(%rdi)
   1400031c5:	48 85 c9             	test   %rcx,%rcx
   1400031c8:	0f 84 fa 01 00 00    	je     1400033c8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6c8>
   1400031ce:	48 89 8c 24 a0 00 00 	mov    %rcx,0xa0(%rsp)
   1400031d5:	00 
   1400031d6:	48 89 94 24 b0 00 00 	mov    %rdx,0xb0(%rsp)
   1400031dd:	00 
   1400031de:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   1400031e5:	00 00 00 00 00 
   1400031ea:	c6 01 00             	movb   $0x0,(%rcx)
   1400031ed:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400031f4:	00 
   1400031f5:	48 39 d9             	cmp    %rbx,%rcx
   1400031f8:	74 11                	je     14000320b <_ZN13NaturalBinary8toStringB5cxx11Ev+0x50b>
   1400031fa:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003201:	00 
   140003202:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003206:	e8 05 30 00 00       	call   140006210 <_ZdlPvy>
   14000320b:	48 8b 05 7e 62 00 00 	mov    0x627e(%rip),%rax        # 140009490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003212:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   140003219:	00 
   14000321a:	0f 11 bc 24 d0 00 00 	movups %xmm7,0xd0(%rsp)
   140003221:	00 
   140003222:	48 83 c0 18          	add    $0x18,%rax
   140003226:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   14000322d:	00 
   14000322e:	48 8b 05 5b 62 00 00 	mov    0x625b(%rip),%rax        # 140009490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003235:	48 83 c0 68          	add    $0x68,%rax
   140003239:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140003240:	00 
   140003241:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003248:	00 
   140003249:	48 39 c1             	cmp    %rax,%rcx
   14000324c:	74 11                	je     14000325f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x55f>
   14000324e:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140003255:	00 
   140003256:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000325a:	e8 b1 2f 00 00       	call   140006210 <_ZdlPvy>
   14000325f:	48 8b 05 3a 62 00 00 	mov    0x623a(%rip),%rax        # 1400094a0 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140003266:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   14000326b:	48 83 c0 10          	add    $0x10,%rax
   14000326f:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140003276:	00 
   140003277:	e8 2c 30 00 00       	call   1400062a8 <_ZNSt6localeD1Ev>
   14000327c:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140003281:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
   140003286:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   14000328d:	00 
   14000328e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003292:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140003299:	00 
   14000329a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   14000329f:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
   1400032a4:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   1400032ab:	00 
   1400032ac:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400032b0:	48 89 b4 04 d0 00 00 	mov    %rsi,0xd0(%rsp,%rax,1)
   1400032b7:	00 
   1400032b8:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   1400032bd:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
   1400032c2:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   1400032c9:	00 
   1400032ca:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400032ce:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   1400032d5:	00 
   1400032d6:	48 8b 05 d3 61 00 00 	mov    0x61d3(%rip),%rax        # 1400094b0 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   1400032dd:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   1400032e4:	00 00 00 00 00 
   1400032e9:	48 83 c0 10          	add    $0x10,%rax
   1400032ed:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400032f4:	00 
   1400032f5:	e8 46 2f 00 00       	call   140006240 <_ZNSt8ios_baseD2Ev>
   1400032fa:	90                   	nop
   1400032fb:	0f 10 b4 24 50 02 00 	movups 0x250(%rsp),%xmm6
   140003302:	00 
   140003303:	0f 10 bc 24 60 02 00 	movups 0x260(%rsp),%xmm7
   14000330a:	00 
   14000330b:	48 89 f8             	mov    %rdi,%rax
   14000330e:	48 81 c4 78 02 00 00 	add    $0x278,%rsp
   140003315:	5b                   	pop    %rbx
   140003316:	5e                   	pop    %rsi
   140003317:	5f                   	pop    %rdi
   140003318:	5d                   	pop    %rbp
   140003319:	41 5c                	pop    %r12
   14000331b:	41 5d                	pop    %r13
   14000331d:	41 5e                	pop    %r14
   14000331f:	41 5f                	pop    %r15
   140003321:	c3                   	ret
   140003322:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003328:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   14000332c:	49 3b 75 00          	cmp    0x0(%r13),%rsi
   140003330:	0f 85 32 fc ff ff    	jne    140002f68 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   140003336:	e9 cd fd ff ff       	jmp    140003108 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   14000333b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003340:	48 89 d0             	mov    %rdx,%rax
   140003343:	e9 c4 fc ff ff       	jmp    14000300c <_ZN13NaturalBinary8toStringB5cxx11Ev+0x30c>
   140003348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000334f:	00 
   140003350:	4c 8b bb f0 00 00 00 	mov    0xf0(%rbx),%r15
   140003357:	4d 85 ff             	test   %r15,%r15
   14000335a:	0f 84 03 01 00 00    	je     140003463 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x763>
   140003360:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
   140003365:	75 2c                	jne    140003393 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x693>
   140003367:	4c 89 f9             	mov    %r15,%rcx
   14000336a:	e8 81 2f 00 00       	call   1400062f0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   14000336f:	49 8b 07             	mov    (%r15),%rax
   140003372:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140003377:	48 8b 40 30          	mov    0x30(%rax),%rax
   14000337b:	48 39 c8             	cmp    %rcx,%rax
   14000337e:	0f 85 9c 00 00 00    	jne    140003420 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x720>
   140003384:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   14000338b:	00 
   14000338c:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   140003390:	48 01 ea             	add    %rbp,%rdx
   140003393:	c6 83 e1 00 00 00 01 	movb   $0x1,0xe1(%rbx)
   14000339a:	e9 f8 fb ff ff       	jmp    140002f97 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x297>
   14000339f:	90                   	nop
   1400033a0:	48 8d 94 24 20 01 00 	lea    0x120(%rsp),%rdx
   1400033a7:	00 
   1400033a8:	4c 89 e1             	mov    %r12,%rcx
   1400033ab:	e8 d8 2e 00 00       	call   140006288 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   1400033b0:	e9 74 fc ff ff       	jmp    140003029 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x329>
   1400033b5:	0f 1f 00             	nopl   (%rax)
   1400033b8:	f3 0f 6f a4 24 a8 00 	movdqu 0xa8(%rsp),%xmm4
   1400033bf:	00 00 
   1400033c1:	48 89 07             	mov    %rax,(%rdi)
   1400033c4:	0f 11 67 08          	movups %xmm4,0x8(%rdi)
   1400033c8:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   1400033cf:	00 
   1400033d0:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   1400033d7:	00 
   1400033d8:	48 89 d9             	mov    %rbx,%rcx
   1400033db:	e9 fe fd ff ff       	jmp    1400031de <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   1400033e0:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   1400033e7:	00 
   1400033e8:	4d 85 c0             	test   %r8,%r8
   1400033eb:	74 19                	je     140003406 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   1400033ed:	49 83 f8 01          	cmp    $0x1,%r8
   1400033f1:	74 4d                	je     140003440 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x740>
   1400033f3:	48 89 da             	mov    %rbx,%rdx
   1400033f6:	e8 95 40 00 00       	call   140007490 <memcpy>
   1400033fb:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003402:	00 
   140003403:	48 8b 0f             	mov    (%rdi),%rcx
   140003406:	4c 89 47 08          	mov    %r8,0x8(%rdi)
   14000340a:	42 c6 04 01 00       	movb   $0x0,(%rcx,%r8,1)
   14000340f:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003416:	00 
   140003417:	e9 c2 fd ff ff       	jmp    1400031de <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   14000341c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003420:	ba 20 00 00 00       	mov    $0x20,%edx
   140003425:	4c 89 f9             	mov    %r15,%rcx
   140003428:	ff d0                	call   *%rax
   14000342a:	e9 55 ff ff ff       	jmp    140003384 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x684>
   14000342f:	90                   	nop
   140003430:	4d 89 e7             	mov    %r12,%r15
   140003433:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   14000343a:	00 
   14000343b:	e9 c8 fc ff ff       	jmp    140003108 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   140003440:	0f b6 84 24 b0 00 00 	movzbl 0xb0(%rsp),%eax
   140003447:	00 
   140003448:	88 01                	mov    %al,(%rcx)
   14000344a:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003451:	00 
   140003452:	48 8b 0f             	mov    (%rdi),%rcx
   140003455:	eb af                	jmp    140003406 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   140003457:	48 8d 0d d2 5b 00 00 	lea    0x5bd2(%rip),%rcx        # 140009030 <.rdata>
   14000345e:	e8 bd 2d 00 00       	call   140006220 <_ZSt20__throw_length_errorPKc>
   140003463:	e8 c0 2d 00 00       	call   140006228 <_ZSt16__throw_bad_castv>
   140003468:	48 8d 0d c1 5b 00 00 	lea    0x5bc1(%rip),%rcx        # 140009030 <.rdata>
   14000346f:	e8 ac 2d 00 00       	call   140006220 <_ZSt20__throw_length_errorPKc>
   140003474:	48 8d 0d b5 5b 00 00 	lea    0x5bb5(%rip),%rcx        # 140009030 <.rdata>
   14000347b:	e8 a0 2d 00 00       	call   140006220 <_ZSt20__throw_length_errorPKc>
   140003480:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003487:	00 
   140003488:	48 89 c6             	mov    %rax,%rsi
   14000348b:	48 39 d9             	cmp    %rbx,%rcx
   14000348e:	74 11                	je     1400034a1 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003490:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003497:	00 
   140003498:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000349c:	e8 6f 2d 00 00       	call   140006210 <_ZdlPvy>
   1400034a1:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
   1400034a8:	00 
   1400034a9:	e8 ca 2d 00 00       	call   140006278 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400034ae:	eb 23                	jmp    1400034d3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7d3>
   1400034b0:	48 89 c6             	mov    %rax,%rsi
   1400034b3:	48 8b 05 f6 5f 00 00 	mov    0x5ff6(%rip),%rax        # 1400094b0 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   1400034ba:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   1400034c1:	00 
   1400034c2:	48 83 c0 10          	add    $0x10,%rax
   1400034c6:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400034cd:	00 
   1400034ce:	e8 6d 2d 00 00       	call   140006240 <_ZNSt8ios_baseD2Ev>
   1400034d3:	48 8b 0f             	mov    (%rdi),%rcx
   1400034d6:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   1400034dd:	00 
   1400034de:	48 39 c1             	cmp    %rax,%rcx
   1400034e1:	74 0d                	je     1400034f0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7f0>
   1400034e3:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   1400034e7:	48 83 c2 01          	add    $0x1,%rdx
   1400034eb:	e8 20 2d 00 00       	call   140006210 <_ZdlPvy>
   1400034f0:	48 89 f1             	mov    %rsi,%rcx
   1400034f3:	e8 68 3e 00 00       	call   140007360 <_Unwind_Resume>
   1400034f8:	eb 86                	jmp    140003480 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   1400034fa:	eb 84                	jmp    140003480 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   1400034fc:	eb 82                	jmp    140003480 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   1400034fe:	48 89 c6             	mov    %rax,%rsi
   140003501:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   140003506:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   14000350b:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140003512:	00 
   140003513:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003517:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   14000351e:	00 
   14000351f:	31 c0                	xor    %eax,%eax
   140003521:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
   140003528:	00 
   140003529:	eb 88                	jmp    1400034b3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7b3>
   14000352b:	48 89 c6             	mov    %rax,%rsi
   14000352e:	e9 6e ff ff ff       	jmp    1400034a1 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003533:	48 89 c6             	mov    %rax,%rsi
   140003536:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   14000353d:	00 
   14000353e:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003545:	00 
   140003546:	48 83 c3 10          	add    $0x10,%rbx
   14000354a:	48 89 9c 24 d8 00 00 	mov    %rbx,0xd8(%rsp)
   140003551:	00 
   140003552:	48 39 c1             	cmp    %rax,%rcx
   140003555:	74 11                	je     140003568 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x868>
   140003557:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   14000355e:	00 
   14000355f:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003563:	e8 a8 2c 00 00       	call   140006210 <_ZdlPvy>
   140003568:	48 8b 05 31 5f 00 00 	mov    0x5f31(%rip),%rax        # 1400094a0 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   14000356f:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   140003574:	48 83 c0 10          	add    $0x10,%rax
   140003578:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   14000357f:	00 
   140003580:	e8 23 2d 00 00       	call   1400062a8 <_ZNSt6localeD1Ev>
   140003585:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   14000358a:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
   14000358f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003593:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   14000359a:	00 
   14000359b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   1400035a0:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400035a5:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   1400035ac:	00 
   1400035ad:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400035b1:	48 89 9c 04 d0 00 00 	mov    %rbx,0xd0(%rsp,%rax,1)
   1400035b8:	00 
   1400035b9:	e9 43 ff ff ff       	jmp    140003501 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x801>
   1400035be:	66 90                	xchg   %ax,%ax

00000001400035c0 <_ZlsRSo13NaturalBinary>:
   1400035c0:	53                   	push   %rbx
   1400035c1:	48 83 ec 40          	sub    $0x40,%rsp
   1400035c5:	48 89 cb             	mov    %rcx,%rbx
   1400035c8:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   1400035cd:	e8 2e f7 ff ff       	call   140002d00 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   1400035d2:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   1400035d7:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   1400035dc:	48 89 d9             	mov    %rbx,%rcx
   1400035df:	e8 4c 2c 00 00       	call   140006230 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400035e4:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400035e9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400035ee:	48 39 c1             	cmp    %rax,%rcx
   1400035f1:	74 0e                	je     140003601 <_ZlsRSo13NaturalBinary+0x41>
   1400035f3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400035f8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400035fc:	e8 0f 2c 00 00       	call   140006210 <_ZdlPvy>
   140003601:	48 89 d8             	mov    %rbx,%rax
   140003604:	48 83 c4 40          	add    $0x40,%rsp
   140003608:	5b                   	pop    %rbx
   140003609:	c3                   	ret
   14000360a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000360f:	48 89 c3             	mov    %rax,%rbx
   140003612:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140003617:	48 39 c1             	cmp    %rax,%rcx
   14000361a:	74 0e                	je     14000362a <_ZlsRSo13NaturalBinary+0x6a>
   14000361c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003621:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003625:	e8 e6 2b 00 00       	call   140006210 <_ZdlPvy>
   14000362a:	48 89 d9             	mov    %rbx,%rcx
   14000362d:	e8 2e 3d 00 00       	call   140007360 <_Unwind_Resume>
   140003632:	90                   	nop
   140003633:	90                   	nop
   140003634:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000363b:	00 00 00 00 
   14000363f:	90                   	nop

0000000140003640 <_ZN13NaturalBinarymlES_>:
   140003640:	41 57                	push   %r15
   140003642:	41 56                	push   %r14
   140003644:	41 55                	push   %r13
   140003646:	41 54                	push   %r12
   140003648:	55                   	push   %rbp
   140003649:	57                   	push   %rdi
   14000364a:	56                   	push   %rsi
   14000364b:	53                   	push   %rbx
   14000364c:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   140003653:	0f 11 b4 24 00 01 00 	movups %xmm6,0x100(%rsp)
   14000365a:	00 
   14000365b:	49 8b 18             	mov    (%r8),%rbx
   14000365e:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140003663:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
   14000366a:	00 
   14000366b:	48 89 d7             	mov    %rdx,%rdi
   14000366e:	4c 89 c5             	mov    %r8,%rbp
   140003671:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003678:	00 00 
   14000367a:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000367f:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003683:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140003688:	49 39 d8             	cmp    %rbx,%r8
   14000368b:	0f 84 df 02 00 00    	je     140003970 <_ZN13NaturalBinarymlES_+0x330>
   140003691:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003698:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000369d:	e8 66 2b 00 00       	call   140006208 <_Znwy>
   1400036a2:	48 89 c1             	mov    %rax,%rcx
   1400036a5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400036a9:	48 89 f2             	mov    %rsi,%rdx
   1400036ac:	88 41 10             	mov    %al,0x10(%rcx)
   1400036af:	e8 b4 2b 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400036b4:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
   1400036b9:	48 8b 1b             	mov    (%rbx),%rbx
   1400036bc:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400036c0:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
   1400036c5:	48 39 dd             	cmp    %rbx,%rbp
   1400036c8:	75 ce                	jne    140003698 <_ZN13NaturalBinarymlES_+0x58>
   1400036ca:	48 0f af 57 10       	imul   0x10(%rdi),%rdx
   1400036cf:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400036d3:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   1400036da:	00 00 00 00 00 
   1400036df:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   1400036e6:	00 
   1400036e7:	48 85 d2             	test   %rdx,%rdx
   1400036ea:	0f 85 60 02 00 00    	jne    140003950 <_ZN13NaturalBinarymlES_+0x310>
   1400036f0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400036f7:	00 00 
   1400036f9:	4c 8d a4 24 e0 00 00 	lea    0xe0(%rsp),%r12
   140003700:	00 
   140003701:	31 d2                	xor    %edx,%edx
   140003703:	4c 89 e1             	mov    %r12,%rcx
   140003706:	e8 75 df ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000370b:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
   140003712:	00 
   140003713:	31 d2                	xor    %edx,%edx
   140003715:	48 89 d9             	mov    %rbx,%rcx
   140003718:	e8 63 df ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000371d:	48 8b 54 24 60       	mov    0x60(%rsp),%rdx
   140003722:	31 c0                	xor    %eax,%eax
   140003724:	4c 8d bc 24 a2 00 00 	lea    0xa2(%rsp),%r15
   14000372b:	00 
   14000372c:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140003731:	48 39 f2             	cmp    %rsi,%rdx
   140003734:	0f 84 8e 02 00 00    	je     1400039c8 <_ZN13NaturalBinarymlES_+0x388>
   14000373a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   14000373f:	0f b6 52 10          	movzbl 0x10(%rdx),%edx
   140003743:	88 54 24 4f          	mov    %dl,0x4f(%rsp)
   140003747:	48 8b 17             	mov    (%rdi),%rdx
   14000374a:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   14000374f:	48 39 d7             	cmp    %rdx,%rdi
   140003752:	0f 84 40 02 00 00    	je     140003998 <_ZN13NaturalBinarymlES_+0x358>
   140003758:	48 98                	cltq
   14000375a:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   14000375f:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003764:	66 48 0f 6e f3       	movq   %rbx,%xmm6
   140003769:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   14000376e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   140003772:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003776:	4c 8d 2c c1          	lea    (%rcx,%rax,8),%r13
   14000377a:	48 89 d0             	mov    %rdx,%rax
   14000377d:	0f b6 48 10          	movzbl 0x10(%rax),%ecx
   140003781:	0f b6 54 24 4f       	movzbl 0x4f(%rsp),%edx
   140003786:	e8 c5 dd ff ff       	call   140001550 <_ZN10Arithmetic3mulE4ByteS0_>
   14000378b:	88 a4 24 a0 00 00 00 	mov    %ah,0xa0(%rsp)
   140003792:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   140003799:	00 
   14000379a:	88 84 24 a1 00 00 00 	mov    %al,0xa1(%rsp)
   1400037a1:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   1400037a8:	00 00 00 00 00 
   1400037ad:	0f 11 b4 24 c0 00 00 	movups %xmm6,0xc0(%rsp)
   1400037b4:	00 
   1400037b5:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400037ba:	e8 49 2a 00 00       	call   140006208 <_Znwy>
   1400037bf:	48 89 c1             	mov    %rax,%rcx
   1400037c2:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
   1400037c6:	48 89 da             	mov    %rbx,%rdx
   1400037c9:	48 83 c5 01          	add    $0x1,%rbp
   1400037cd:	88 41 10             	mov    %al,0x10(%rcx)
   1400037d0:	e8 93 2a 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400037d5:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   1400037dc:	00 01 
   1400037de:	4c 39 fd             	cmp    %r15,%rbp
   1400037e1:	75 d2                	jne    1400037b5 <_ZN13NaturalBinarymlES_+0x175>
   1400037e3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400037e8:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   1400037ef:	00 
   1400037f0:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
   1400037f7:	00 00 00 00 00 
   1400037fc:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003800:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   140003807:	00 
   140003808:	48 39 dd             	cmp    %rbx,%rbp
   14000380b:	0f 84 30 04 00 00    	je     140003c41 <_ZN13NaturalBinarymlES_+0x601>
   140003811:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
   140003816:	eb 15                	jmp    14000382d <_ZN13NaturalBinarymlES_+0x1ed>
   140003818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000381f:	00 
   140003820:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140003827:	00 
   140003828:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   14000382d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003832:	44 0f b6 75 10       	movzbl 0x10(%rbp),%r14d
   140003837:	e8 cc 29 00 00       	call   140006208 <_Znwy>
   14000383c:	44 88 70 10          	mov    %r14b,0x10(%rax)
   140003840:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140003845:	48 89 c1             	mov    %rax,%rcx
   140003848:	e8 1b 2a 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000384d:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003851:	48 83 84 24 f0 00 00 	addq   $0x1,0xf0(%rsp)
   140003858:	00 01 
   14000385a:	48 39 dd             	cmp    %rbx,%rbp
   14000385d:	75 c1                	jne    140003820 <_ZN13NaturalBinarymlES_+0x1e0>
   14000385f:	4d 39 e5             	cmp    %r12,%r13
   140003862:	74 0b                	je     14000386f <_ZN13NaturalBinarymlES_+0x22f>
   140003864:	4c 89 e2             	mov    %r12,%rdx
   140003867:	4c 89 e9             	mov    %r13,%rcx
   14000386a:	e8 01 df ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000386f:	48 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%rbp
   140003876:	00 
   140003877:	4c 39 e5             	cmp    %r12,%rbp
   14000387a:	74 1a                	je     140003896 <_ZN13NaturalBinarymlES_+0x256>
   14000387c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003880:	48 89 e9             	mov    %rbp,%rcx
   140003883:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003887:	ba 18 00 00 00       	mov    $0x18,%edx
   14000388c:	e8 7f 29 00 00       	call   140006210 <_ZdlPvy>
   140003891:	4c 39 e5             	cmp    %r12,%rbp
   140003894:	75 ea                	jne    140003880 <_ZN13NaturalBinarymlES_+0x240>
   140003896:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   14000389d:	00 
   14000389e:	eb 11                	jmp    1400038b1 <_ZN13NaturalBinarymlES_+0x271>
   1400038a0:	48 89 e9             	mov    %rbp,%rcx
   1400038a3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400038a8:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   1400038ac:	e8 5f 29 00 00       	call   140006210 <_ZdlPvy>
   1400038b1:	48 39 dd             	cmp    %rbx,%rbp
   1400038b4:	75 ea                	jne    1400038a0 <_ZN13NaturalBinarymlES_+0x260>
   1400038b6:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400038bb:	31 d2                	xor    %edx,%edx
   1400038bd:	31 ed                	xor    %ebp,%ebp
   1400038bf:	48 f7 77 10          	divq   0x10(%rdi)
   1400038c3:	48 01 c2             	add    %rax,%rdx
   1400038c6:	74 52                	je     14000391a <_ZN13NaturalBinarymlES_+0x2da>
   1400038c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400038cf:	00 
   1400038d0:	31 d2                	xor    %edx,%edx
   1400038d2:	4c 89 e1             	mov    %r12,%rcx
   1400038d5:	e8 a6 dd ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400038da:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400038df:	4d 8b 75 00          	mov    0x0(%r13),%r14
   1400038e3:	e8 20 29 00 00       	call   140006208 <_Znwy>
   1400038e8:	48 89 c1             	mov    %rax,%rcx
   1400038eb:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   1400038f2:	00 
   1400038f3:	4c 89 f2             	mov    %r14,%rdx
   1400038f6:	48 83 c5 01          	add    $0x1,%rbp
   1400038fa:	88 41 10             	mov    %al,0x10(%rcx)
   1400038fd:	e8 66 29 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003902:	49 83 45 10 01       	addq   $0x1,0x10(%r13)
   140003907:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000390c:	31 d2                	xor    %edx,%edx
   14000390e:	48 f7 77 10          	divq   0x10(%rdi)
   140003912:	48 01 c2             	add    %rax,%rdx
   140003915:	48 39 d5             	cmp    %rdx,%rbp
   140003918:	72 b6                	jb     1400038d0 <_ZN13NaturalBinarymlES_+0x290>
   14000391a:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   14000391f:	49 83 c5 18          	add    $0x18,%r13
   140003923:	48 8b 10             	mov    (%rax),%rdx
   140003926:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000392b:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003930:	48 83 c0 01          	add    $0x1,%rax
   140003934:	48 39 d7             	cmp    %rdx,%rdi
   140003937:	74 54                	je     14000398d <_ZN13NaturalBinarymlES_+0x34d>
   140003939:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   14000393e:	48 89 d0             	mov    %rdx,%rax
   140003941:	e9 37 fe ff ff       	jmp    14000377d <_ZN13NaturalBinarymlES_+0x13d>
   140003946:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000394d:	00 00 00 
   140003950:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
   140003957:	00 
   140003958:	e8 c3 3b 00 00       	call   140007520 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>
   14000395d:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003964:	00 
   140003965:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   14000396a:	e9 8a fd ff ff       	jmp    1400036f9 <_ZN13NaturalBinarymlES_+0xb9>
   14000396f:	90                   	nop
   140003970:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140003977:	00 00 00 00 00 
   14000397c:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003980:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140003987:	00 
   140003988:	e9 63 fd ff ff       	jmp    1400036f0 <_ZN13NaturalBinarymlES_+0xb0>
   14000398d:	8b 44 24 30          	mov    0x30(%rsp),%eax
   140003991:	83 c0 01             	add    $0x1,%eax
   140003994:	0f 1f 40 00          	nopl   0x0(%rax)
   140003998:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   14000399d:	48 8b 12             	mov    (%rdx),%rdx
   1400039a0:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   1400039a5:	48 39 f2             	cmp    %rsi,%rdx
   1400039a8:	74 1e                	je     1400039c8 <_ZN13NaturalBinarymlES_+0x388>
   1400039aa:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
   1400039af:	48 39 d7             	cmp    %rdx,%rdi
   1400039b2:	0f 85 82 fd ff ff    	jne    14000373a <_ZN13NaturalBinarymlES_+0xfa>
   1400039b8:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   1400039bd:	48 8b 00             	mov    (%rax),%rax
   1400039c0:	48 39 f0             	cmp    %rsi,%rax
   1400039c3:	75 f8                	jne    1400039bd <_ZN13NaturalBinarymlES_+0x37d>
   1400039c5:	0f 1f 00             	nopl   (%rax)
   1400039c8:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   1400039cf:	00 
   1400039d0:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   1400039d7:	00 
   1400039d8:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   1400039dd:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400039e1:	e8 da de ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400039e6:	4c 8b bc 24 88 00 00 	mov    0x88(%rsp),%r15
   1400039ed:	00 
   1400039ee:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   1400039f3:	4c 39 f8             	cmp    %r15,%rax
   1400039f6:	0f 84 e2 01 00 00    	je     140003bde <_ZN13NaturalBinarymlES_+0x59e>
   1400039fc:	49 89 c6             	mov    %rax,%r14
   1400039ff:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140003a06:	00 
   140003a07:	4d 8b 2e             	mov    (%r14),%r13
   140003a0a:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
   140003a11:	00 00 00 00 00 
   140003a16:	4d 39 f5             	cmp    %r14,%r13
   140003a19:	0f 84 81 02 00 00    	je     140003ca0 <_ZN13NaturalBinarymlES_+0x660>
   140003a1f:	90                   	nop
   140003a20:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003a25:	e8 de 27 00 00       	call   140006208 <_Znwy>
   140003a2a:	48 89 c1             	mov    %rax,%rcx
   140003a2d:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   140003a32:	48 89 ea             	mov    %rbp,%rdx
   140003a35:	88 41 10             	mov    %al,0x10(%rcx)
   140003a38:	e8 2b 28 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003a3d:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003a44:	00 
   140003a45:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140003a49:	48 8d 78 01          	lea    0x1(%rax),%rdi
   140003a4d:	48 89 bc 24 b0 00 00 	mov    %rdi,0xb0(%rsp)
   140003a54:	00 
   140003a55:	4d 39 f5             	cmp    %r14,%r13
   140003a58:	75 c6                	jne    140003a20 <_ZN13NaturalBinarymlES_+0x3e0>
   140003a5a:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003a61:	00 
   140003a62:	45 31 ed             	xor    %r13d,%r13d
   140003a65:	2b 78 10             	sub    0x10(%rax),%edi
   140003a68:	85 ff                	test   %edi,%edi
   140003a6a:	0f 8e df 01 00 00    	jle    140003c4f <_ZN13NaturalBinarymlES_+0x60f>
   140003a70:	31 d2                	xor    %edx,%edx
   140003a72:	4c 89 e1             	mov    %r12,%rcx
   140003a75:	e8 06 dc ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003a7a:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003a7f:	e8 84 27 00 00       	call   140006208 <_Znwy>
   140003a84:	48 89 c1             	mov    %rax,%rcx
   140003a87:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003a8e:	00 
   140003a8f:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   140003a96:	00 
   140003a97:	41 83 c5 01          	add    $0x1,%r13d
   140003a9b:	88 41 10             	mov    %al,0x10(%rcx)
   140003a9e:	e8 c5 27 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003aa3:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003aaa:	00 
   140003aab:	48 83 40 10 01       	addq   $0x1,0x10(%rax)
   140003ab0:	44 39 ef             	cmp    %r13d,%edi
   140003ab3:	7f bb                	jg     140003a70 <_ZN13NaturalBinarymlES_+0x430>
   140003ab5:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003aba:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   140003ac1:	00 
   140003ac2:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   140003ac9:	00 00 00 00 00 
   140003ace:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003ad2:	0f 11 84 24 c0 00 00 	movups %xmm0,0xc0(%rsp)
   140003ad9:	00 
   140003ada:	48 39 ef             	cmp    %rbp,%rdi
   140003add:	74 2d                	je     140003b0c <_ZN13NaturalBinarymlES_+0x4cc>
   140003adf:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003ae4:	e8 1f 27 00 00       	call   140006208 <_Znwy>
   140003ae9:	48 89 c1             	mov    %rax,%rcx
   140003aec:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140003af0:	48 89 da             	mov    %rbx,%rdx
   140003af3:	88 41 10             	mov    %al,0x10(%rcx)
   140003af6:	e8 6d 27 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003afb:	48 8b 3f             	mov    (%rdi),%rdi
   140003afe:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   140003b05:	00 01 
   140003b07:	48 39 ef             	cmp    %rbp,%rdi
   140003b0a:	75 d3                	jne    140003adf <_ZN13NaturalBinarymlES_+0x49f>
   140003b0c:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   140003b13:	00 
   140003b14:	49 89 d8             	mov    %rbx,%r8
   140003b17:	4c 89 e1             	mov    %r12,%rcx
   140003b1a:	e8 01 e0 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   140003b1f:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   140003b26:	00 
   140003b27:	4c 89 e2             	mov    %r12,%rdx
   140003b2a:	e8 41 dc ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003b2f:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
   140003b36:	00 
   140003b37:	4c 39 e7             	cmp    %r12,%rdi
   140003b3a:	74 15                	je     140003b51 <_ZN13NaturalBinarymlES_+0x511>
   140003b3c:	48 89 f9             	mov    %rdi,%rcx
   140003b3f:	48 8b 3f             	mov    (%rdi),%rdi
   140003b42:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b47:	e8 c4 26 00 00       	call   140006210 <_ZdlPvy>
   140003b4c:	4c 39 e7             	cmp    %r12,%rdi
   140003b4f:	75 eb                	jne    140003b3c <_ZN13NaturalBinarymlES_+0x4fc>
   140003b51:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
   140003b58:	00 
   140003b59:	48 39 df             	cmp    %rbx,%rdi
   140003b5c:	74 15                	je     140003b73 <_ZN13NaturalBinarymlES_+0x533>
   140003b5e:	48 89 f9             	mov    %rdi,%rcx
   140003b61:	48 8b 3f             	mov    (%rdi),%rdi
   140003b64:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b69:	e8 a2 26 00 00       	call   140006210 <_ZdlPvy>
   140003b6e:	48 39 df             	cmp    %rbx,%rdi
   140003b71:	75 eb                	jne    140003b5e <_ZN13NaturalBinarymlES_+0x51e>
   140003b73:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   140003b7a:	00 
   140003b7b:	48 39 ef             	cmp    %rbp,%rdi
   140003b7e:	74 15                	je     140003b95 <_ZN13NaturalBinarymlES_+0x555>
   140003b80:	48 89 f9             	mov    %rdi,%rcx
   140003b83:	48 8b 3f             	mov    (%rdi),%rdi
   140003b86:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b8b:	e8 80 26 00 00       	call   140006210 <_ZdlPvy>
   140003b90:	48 39 ef             	cmp    %rbp,%rdi
   140003b93:	75 eb                	jne    140003b80 <_ZN13NaturalBinarymlES_+0x540>
   140003b95:	49 83 c6 18          	add    $0x18,%r14
   140003b99:	4d 39 f7             	cmp    %r14,%r15
   140003b9c:	0f 85 5d fe ff ff    	jne    1400039ff <_ZN13NaturalBinarymlES_+0x3bf>
   140003ba2:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
   140003ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003bae:	00 00 
   140003bb0:	48 8b 1f             	mov    (%rdi),%rbx
   140003bb3:	48 39 df             	cmp    %rbx,%rdi
   140003bb6:	74 1d                	je     140003bd5 <_ZN13NaturalBinarymlES_+0x595>
   140003bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140003bbf:	00 
   140003bc0:	48 89 d9             	mov    %rbx,%rcx
   140003bc3:	48 8b 1b             	mov    (%rbx),%rbx
   140003bc6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003bcb:	e8 40 26 00 00       	call   140006210 <_ZdlPvy>
   140003bd0:	48 39 df             	cmp    %rbx,%rdi
   140003bd3:	75 eb                	jne    140003bc0 <_ZN13NaturalBinarymlES_+0x580>
   140003bd5:	48 83 c7 18          	add    $0x18,%rdi
   140003bd9:	49 39 ff             	cmp    %rdi,%r15
   140003bdc:	75 d2                	jne    140003bb0 <_ZN13NaturalBinarymlES_+0x570>
   140003bde:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   140003be3:	48 85 c9             	test   %rcx,%rcx
   140003be6:	74 10                	je     140003bf8 <_ZN13NaturalBinarymlES_+0x5b8>
   140003be8:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   140003bef:	00 
   140003bf0:	48 29 ca             	sub    %rcx,%rdx
   140003bf3:	e8 18 26 00 00       	call   140006210 <_ZdlPvy>
   140003bf8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003bfd:	48 39 f3             	cmp    %rsi,%rbx
   140003c00:	74 1b                	je     140003c1d <_ZN13NaturalBinarymlES_+0x5dd>
   140003c02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003c08:	48 89 d9             	mov    %rbx,%rcx
   140003c0b:	48 8b 1b             	mov    (%rbx),%rbx
   140003c0e:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c13:	e8 f8 25 00 00       	call   140006210 <_ZdlPvy>
   140003c18:	48 39 f3             	cmp    %rsi,%rbx
   140003c1b:	75 eb                	jne    140003c08 <_ZN13NaturalBinarymlES_+0x5c8>
   140003c1d:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003c24:	00 
   140003c25:	0f 10 b4 24 00 01 00 	movups 0x100(%rsp),%xmm6
   140003c2c:	00 
   140003c2d:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
   140003c34:	5b                   	pop    %rbx
   140003c35:	5e                   	pop    %rsi
   140003c36:	5f                   	pop    %rdi
   140003c37:	5d                   	pop    %rbp
   140003c38:	41 5c                	pop    %r12
   140003c3a:	41 5d                	pop    %r13
   140003c3c:	41 5e                	pop    %r14
   140003c3e:	41 5f                	pop    %r15
   140003c40:	c3                   	ret
   140003c41:	4d 39 e5             	cmp    %r12,%r13
   140003c44:	0f 85 1a fc ff ff    	jne    140003864 <_ZN13NaturalBinarymlES_+0x224>
   140003c4a:	e9 67 fc ff ff       	jmp    1400038b6 <_ZN13NaturalBinarymlES_+0x276>
   140003c4f:	41 89 fd             	mov    %edi,%r13d
   140003c52:	41 f7 dd             	neg    %r13d
   140003c55:	0f 84 5a fe ff ff    	je     140003ab5 <_ZN13NaturalBinarymlES_+0x475>
   140003c5b:	31 ff                	xor    %edi,%edi
   140003c5d:	0f 1f 00             	nopl   (%rax)
   140003c60:	31 d2                	xor    %edx,%edx
   140003c62:	4c 89 e1             	mov    %r12,%rcx
   140003c65:	e8 16 da ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003c6a:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003c6f:	e8 94 25 00 00       	call   140006208 <_Znwy>
   140003c74:	48 89 c1             	mov    %rax,%rcx
   140003c77:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003c7e:	00 
   140003c7f:	48 89 ea             	mov    %rbp,%rdx
   140003c82:	83 c7 01             	add    $0x1,%edi
   140003c85:	88 41 10             	mov    %al,0x10(%rcx)
   140003c88:	e8 db 25 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003c8d:	48 83 84 24 b0 00 00 	addq   $0x1,0xb0(%rsp)
   140003c94:	00 01 
   140003c96:	41 39 fd             	cmp    %edi,%r13d
   140003c99:	7f c5                	jg     140003c60 <_ZN13NaturalBinarymlES_+0x620>
   140003c9b:	e9 15 fe ff ff       	jmp    140003ab5 <_ZN13NaturalBinarymlES_+0x475>
   140003ca0:	31 ff                	xor    %edi,%edi
   140003ca2:	e9 b3 fd ff ff       	jmp    140003a5a <_ZN13NaturalBinarymlES_+0x41a>
   140003ca7:	48 89 c3             	mov    %rax,%rbx
   140003caa:	48 8b ac 24 80 00 00 	mov    0x80(%rsp),%rbp
   140003cb1:	00 
   140003cb2:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
   140003cb9:	00 
   140003cba:	48 89 ef             	mov    %rbp,%rdi
   140003cbd:	49 39 fc             	cmp    %rdi,%r12
   140003cc0:	74 73                	je     140003d35 <_ZN13NaturalBinarymlES_+0x6f5>
   140003cc2:	48 8b 0f             	mov    (%rdi),%rcx
   140003cc5:	48 39 cf             	cmp    %rcx,%rdi
   140003cc8:	0f 84 b7 00 00 00    	je     140003d85 <_ZN13NaturalBinarymlES_+0x745>
   140003cce:	4c 8b 29             	mov    (%rcx),%r13
   140003cd1:	ba 18 00 00 00       	mov    $0x18,%edx
   140003cd6:	e8 35 25 00 00       	call   140006210 <_ZdlPvy>
   140003cdb:	4c 89 e9             	mov    %r13,%rcx
   140003cde:	eb e5                	jmp    140003cc5 <_ZN13NaturalBinarymlES_+0x685>
   140003ce0:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003ce7:	00 
   140003ce8:	48 89 c7             	mov    %rax,%rdi
   140003ceb:	4c 39 e1             	cmp    %r12,%rcx
   140003cee:	74 26                	je     140003d16 <_ZN13NaturalBinarymlES_+0x6d6>
   140003cf0:	48 8b 29             	mov    (%rcx),%rbp
   140003cf3:	ba 18 00 00 00       	mov    $0x18,%edx
   140003cf8:	e8 13 25 00 00       	call   140006210 <_ZdlPvy>
   140003cfd:	48 89 e9             	mov    %rbp,%rcx
   140003d00:	eb e9                	jmp    140003ceb <_ZN13NaturalBinarymlES_+0x6ab>
   140003d02:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003d09:	00 
   140003d0a:	48 89 c7             	mov    %rax,%rdi
   140003d0d:	4c 39 e1             	cmp    %r12,%rcx
   140003d10:	0f 85 b3 00 00 00    	jne    140003dc9 <_ZN13NaturalBinarymlES_+0x789>
   140003d16:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003d1d:	00 
   140003d1e:	48 39 d9             	cmp    %rbx,%rcx
   140003d21:	74 5a                	je     140003d7d <_ZN13NaturalBinarymlES_+0x73d>
   140003d23:	48 8b 29             	mov    (%rcx),%rbp
   140003d26:	ba 18 00 00 00       	mov    $0x18,%edx
   140003d2b:	e8 e0 24 00 00       	call   140006210 <_ZdlPvy>
   140003d30:	48 89 e9             	mov    %rbp,%rcx
   140003d33:	eb e9                	jmp    140003d1e <_ZN13NaturalBinarymlES_+0x6de>
   140003d35:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   140003d3c:	00 
   140003d3d:	48 29 ea             	sub    %rbp,%rdx
   140003d40:	48 85 ed             	test   %rbp,%rbp
   140003d43:	74 08                	je     140003d4d <_ZN13NaturalBinarymlES_+0x70d>
   140003d45:	48 89 e9             	mov    %rbp,%rcx
   140003d48:	e8 c3 24 00 00       	call   140006210 <_ZdlPvy>
   140003d4d:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140003d52:	48 39 f1             	cmp    %rsi,%rcx
   140003d55:	74 48                	je     140003d9f <_ZN13NaturalBinarymlES_+0x75f>
   140003d57:	48 8b 39             	mov    (%rcx),%rdi
   140003d5a:	ba 18 00 00 00       	mov    $0x18,%edx
   140003d5f:	e8 ac 24 00 00       	call   140006210 <_ZdlPvy>
   140003d64:	48 89 f9             	mov    %rdi,%rcx
   140003d67:	eb e9                	jmp    140003d52 <_ZN13NaturalBinarymlES_+0x712>
   140003d69:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003d70:	00 
   140003d71:	48 89 c7             	mov    %rax,%rdi
   140003d74:	48 39 d9             	cmp    %rbx,%rcx
   140003d77:	0f 85 19 01 00 00    	jne    140003e96 <_ZN13NaturalBinarymlES_+0x856>
   140003d7d:	48 89 fb             	mov    %rdi,%rbx
   140003d80:	e9 25 ff ff ff       	jmp    140003caa <_ZN13NaturalBinarymlES_+0x66a>
   140003d85:	48 83 c7 18          	add    $0x18,%rdi
   140003d89:	e9 2f ff ff ff       	jmp    140003cbd <_ZN13NaturalBinarymlES_+0x67d>
   140003d8e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140003d93:	48 89 c3             	mov    %rax,%rbx
   140003d96:	48 39 f1             	cmp    %rsi,%rcx
   140003d99:	0f 85 0c 01 00 00    	jne    140003eab <_ZN13NaturalBinarymlES_+0x86b>
   140003d9f:	48 89 d9             	mov    %rbx,%rcx
   140003da2:	e8 b9 35 00 00       	call   140007360 <_Unwind_Resume>
   140003da7:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003dae:	00 
   140003daf:	48 89 c7             	mov    %rax,%rdi
   140003db2:	4c 39 e1             	cmp    %r12,%rcx
   140003db5:	74 2a                	je     140003de1 <_ZN13NaturalBinarymlES_+0x7a1>
   140003db7:	4c 8b 29             	mov    (%rcx),%r13
   140003dba:	ba 18 00 00 00       	mov    $0x18,%edx
   140003dbf:	e8 4c 24 00 00       	call   140006210 <_ZdlPvy>
   140003dc4:	4c 89 e9             	mov    %r13,%rcx
   140003dc7:	eb e9                	jmp    140003db2 <_ZN13NaturalBinarymlES_+0x772>
   140003dc9:	48 8b 29             	mov    (%rcx),%rbp
   140003dcc:	ba 18 00 00 00       	mov    $0x18,%edx
   140003dd1:	e8 3a 24 00 00       	call   140006210 <_ZdlPvy>
   140003dd6:	48 89 e9             	mov    %rbp,%rcx
   140003dd9:	e9 2f ff ff ff       	jmp    140003d0d <_ZN13NaturalBinarymlES_+0x6cd>
   140003dde:	48 89 c7             	mov    %rax,%rdi
   140003de1:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003de8:	00 
   140003de9:	48 39 d9             	cmp    %rbx,%rcx
   140003dec:	74 34                	je     140003e22 <_ZN13NaturalBinarymlES_+0x7e2>
   140003dee:	4c 8b 21             	mov    (%rcx),%r12
   140003df1:	ba 18 00 00 00       	mov    $0x18,%edx
   140003df6:	e8 15 24 00 00       	call   140006210 <_ZdlPvy>
   140003dfb:	4c 89 e1             	mov    %r12,%rcx
   140003dfe:	eb e9                	jmp    140003de9 <_ZN13NaturalBinarymlES_+0x7a9>
   140003e00:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003e07:	00 
   140003e08:	48 89 c7             	mov    %rax,%rdi
   140003e0b:	48 39 d9             	cmp    %rbx,%rcx
   140003e0e:	74 12                	je     140003e22 <_ZN13NaturalBinarymlES_+0x7e2>
   140003e10:	4c 8b 21             	mov    (%rcx),%r12
   140003e13:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e18:	e8 f3 23 00 00       	call   140006210 <_ZdlPvy>
   140003e1d:	4c 89 e1             	mov    %r12,%rcx
   140003e20:	eb e9                	jmp    140003e0b <_ZN13NaturalBinarymlES_+0x7cb>
   140003e22:	48 89 fb             	mov    %rdi,%rbx
   140003e25:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003e2c:	00 
   140003e2d:	48 39 e9             	cmp    %rbp,%rcx
   140003e30:	74 39                	je     140003e6b <_ZN13NaturalBinarymlES_+0x82b>
   140003e32:	48 8b 39             	mov    (%rcx),%rdi
   140003e35:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e3a:	e8 d1 23 00 00       	call   140006210 <_ZdlPvy>
   140003e3f:	48 89 f9             	mov    %rdi,%rcx
   140003e42:	eb e9                	jmp    140003e2d <_ZN13NaturalBinarymlES_+0x7ed>
   140003e44:	48 89 c3             	mov    %rax,%rbx
   140003e47:	eb dc                	jmp    140003e25 <_ZN13NaturalBinarymlES_+0x7e5>
   140003e49:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003e50:	00 
   140003e51:	48 89 c3             	mov    %rax,%rbx
   140003e54:	48 39 e9             	cmp    %rbp,%rcx
   140003e57:	74 12                	je     140003e6b <_ZN13NaturalBinarymlES_+0x82b>
   140003e59:	48 8b 39             	mov    (%rcx),%rdi
   140003e5c:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e61:	e8 aa 23 00 00       	call   140006210 <_ZdlPvy>
   140003e66:	48 89 f9             	mov    %rdi,%rcx
   140003e69:	eb e9                	jmp    140003e54 <_ZN13NaturalBinarymlES_+0x814>
   140003e6b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003e72:	00 
   140003e73:	48 8b 08             	mov    (%rax),%rcx
   140003e76:	48 39 8c 24 60 01 00 	cmp    %rcx,0x160(%rsp)
   140003e7d:	00 
   140003e7e:	0f 84 26 fe ff ff    	je     140003caa <_ZN13NaturalBinarymlES_+0x66a>
   140003e84:	48 8b 39             	mov    (%rcx),%rdi
   140003e87:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e8c:	e8 7f 23 00 00       	call   140006210 <_ZdlPvy>
   140003e91:	48 89 f9             	mov    %rdi,%rcx
   140003e94:	eb e0                	jmp    140003e76 <_ZN13NaturalBinarymlES_+0x836>
   140003e96:	48 8b 29             	mov    (%rcx),%rbp
   140003e99:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e9e:	e8 6d 23 00 00       	call   140006210 <_ZdlPvy>
   140003ea3:	48 89 e9             	mov    %rbp,%rcx
   140003ea6:	e9 c9 fe ff ff       	jmp    140003d74 <_ZN13NaturalBinarymlES_+0x734>
   140003eab:	48 8b 39             	mov    (%rcx),%rdi
   140003eae:	ba 18 00 00 00       	mov    $0x18,%edx
   140003eb3:	e8 58 23 00 00       	call   140006210 <_ZdlPvy>
   140003eb8:	48 89 f9             	mov    %rdi,%rcx
   140003ebb:	e9 d6 fe ff ff       	jmp    140003d96 <_ZN13NaturalBinarymlES_+0x756>

0000000140003ec0 <_ZN13NaturalBinary12long_divsionES_PS_>:
   140003ec0:	41 57                	push   %r15
   140003ec2:	41 56                	push   %r14
   140003ec4:	41 55                	push   %r13
   140003ec6:	41 54                	push   %r12
   140003ec8:	55                   	push   %rbp
   140003ec9:	57                   	push   %rdi
   140003eca:	56                   	push   %rsi
   140003ecb:	53                   	push   %rbx
   140003ecc:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
   140003ed3:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140003eda:	00 
   140003edb:	0f 11 bc 24 b0 00 00 	movups %xmm7,0xb0(%rsp)
   140003ee2:	00 
   140003ee3:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140003ee8:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140003eed:	48 89 d3             	mov    %rdx,%rbx
   140003ef0:	4c 89 c5             	mov    %r8,%rbp
   140003ef3:	48 89 8c 24 10 01 00 	mov    %rcx,0x110(%rsp)
   140003efa:	00 
   140003efb:	4c 89 cf             	mov    %r9,%rdi
   140003efe:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   140003f03:	e8 b8 d9 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003f08:	4c 89 e1             	mov    %r12,%rcx
   140003f0b:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003f0f:	e8 ac d9 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003f14:	48 39 df             	cmp    %rbx,%rdi
   140003f17:	74 0b                	je     140003f24 <_ZN13NaturalBinary12long_divsionES_PS_+0x64>
   140003f19:	48 89 da             	mov    %rbx,%rdx
   140003f1c:	48 89 f9             	mov    %rdi,%rcx
   140003f1f:	e8 4c d8 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003f24:	4c 8d 74 24 40       	lea    0x40(%rsp),%r14
   140003f29:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140003f2d:	4c 89 f1             	mov    %r14,%rcx
   140003f30:	0f b6 40 10          	movzbl 0x10(%rax),%eax
   140003f34:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003f38:	e8 43 d7 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003f3d:	48 8b 1f             	mov    (%rdi),%rbx
   140003f40:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140003f45:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003f4c:	00 00 
   140003f4e:	48 39 df             	cmp    %rbx,%rdi
   140003f51:	74 2f                	je     140003f82 <_ZN13NaturalBinary12long_divsionES_PS_+0xc2>
   140003f53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003f58:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003f5d:	e8 a6 22 00 00       	call   140006208 <_Znwy>
   140003f62:	48 89 c1             	mov    %rax,%rcx
   140003f65:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003f69:	48 89 f2             	mov    %rsi,%rdx
   140003f6c:	88 41 10             	mov    %al,0x10(%rcx)
   140003f6f:	e8 f4 22 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003f74:	48 8b 1b             	mov    (%rbx),%rbx
   140003f77:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140003f7d:	48 39 df             	cmp    %rbx,%rdi
   140003f80:	75 d6                	jne    140003f58 <_ZN13NaturalBinary12long_divsionES_PS_+0x98>
   140003f82:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
   140003f89:	00 
   140003f8a:	44 0f b6 44 24 40    	movzbl 0x40(%rsp),%r8d
   140003f90:	45 31 c9             	xor    %r9d,%r9d
   140003f93:	48 89 f2             	mov    %rsi,%rdx
   140003f96:	4c 89 f9             	mov    %r15,%rcx
   140003f99:	e8 c2 e1 ff ff       	call   140002160 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   140003f9e:	4c 89 fa             	mov    %r15,%rdx
   140003fa1:	4c 89 e1             	mov    %r12,%rcx
   140003fa4:	e8 c7 d7 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003fa9:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003fb0:	00 
   140003fb1:	4c 39 fb             	cmp    %r15,%rbx
   140003fb4:	74 1f                	je     140003fd5 <_ZN13NaturalBinary12long_divsionES_PS_+0x115>
   140003fb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003fbd:	00 00 00 
   140003fc0:	48 89 d9             	mov    %rbx,%rcx
   140003fc3:	48 8b 1b             	mov    (%rbx),%rbx
   140003fc6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003fcb:	e8 40 22 00 00       	call   140006210 <_ZdlPvy>
   140003fd0:	4c 39 fb             	cmp    %r15,%rbx
   140003fd3:	75 eb                	jne    140003fc0 <_ZN13NaturalBinary12long_divsionES_PS_+0x100>
   140003fd5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003fda:	48 39 f3             	cmp    %rsi,%rbx
   140003fdd:	74 16                	je     140003ff5 <_ZN13NaturalBinary12long_divsionES_PS_+0x135>
   140003fdf:	90                   	nop
   140003fe0:	48 89 d9             	mov    %rbx,%rcx
   140003fe3:	48 8b 1b             	mov    (%rbx),%rbx
   140003fe6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003feb:	e8 20 22 00 00       	call   140006210 <_ZdlPvy>
   140003ff0:	48 39 f3             	cmp    %rsi,%rbx
   140003ff3:	75 eb                	jne    140003fe0 <_ZN13NaturalBinary12long_divsionES_PS_+0x120>
   140003ff5:	31 db                	xor    %ebx,%ebx
   140003ff7:	48 83 7d 10 01       	cmpq   $0x1,0x10(%rbp)
   140003ffc:	74 33                	je     140004031 <_ZN13NaturalBinary12long_divsionES_PS_+0x171>
   140003ffe:	66 90                	xchg   %ax,%ax
   140004000:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
   140004005:	48 83 6c 24 30 01    	subq   $0x1,0x30(%rsp)
   14000400b:	48 83 c3 01          	add    $0x1,%rbx
   14000400f:	4c 89 e9             	mov    %r13,%rcx
   140004012:	e8 49 22 00 00       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140004017:	ba 18 00 00 00       	mov    $0x18,%edx
   14000401c:	4c 89 e9             	mov    %r13,%rcx
   14000401f:	e8 ec 21 00 00       	call   140006210 <_ZdlPvy>
   140004024:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140004028:	48 83 e8 01          	sub    $0x1,%rax
   14000402c:	48 39 c3             	cmp    %rax,%rbx
   14000402f:	72 cf                	jb     140004000 <_ZN13NaturalBinary12long_divsionES_PS_+0x140>
   140004031:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   140004036:	48 85 d2             	test   %rdx,%rdx
   140004039:	0f 84 09 03 00 00    	je     140004348 <_ZN13NaturalBinary12long_divsionES_PS_+0x488>
   14000403f:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140004046:	00 
   140004047:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   14000404e:	00 
   14000404f:	66 48 0f 6e fe       	movq   %rsi,%xmm7
   140004054:	66 0f 6c ff          	punpcklqdq %xmm7,%xmm7
   140004058:	48 8b 40 10          	mov    0x10(%rax),%rax
   14000405c:	48 39 c2             	cmp    %rax,%rdx
   14000405f:	48 0f 42 d0          	cmovb  %rax,%rdx
   140004063:	e8 e8 38 00 00       	call   140007950 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>
   140004068:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   14000406f:	00 
   140004070:	4c 89 e1             	mov    %r12,%rcx
   140004073:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140004077:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000407c:	48 39 c2             	cmp    %rax,%rdx
   14000407f:	48 0f 42 d0          	cmovb  %rax,%rdx
   140004083:	e8 c8 38 00 00       	call   140007950 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>
   140004088:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000408d:	0f 11 7c 24 60       	movups %xmm7,0x60(%rsp)
   140004092:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140004099:	00 00 
   14000409b:	4c 39 e3             	cmp    %r12,%rbx
   14000409e:	74 2a                	je     1400040ca <_ZN13NaturalBinary12long_divsionES_PS_+0x20a>
   1400040a0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400040a5:	e8 5e 21 00 00       	call   140006208 <_Znwy>
   1400040aa:	48 89 c1             	mov    %rax,%rcx
   1400040ad:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400040b1:	48 89 f2             	mov    %rsi,%rdx
   1400040b4:	88 41 10             	mov    %al,0x10(%rcx)
   1400040b7:	e8 ac 21 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400040bc:	48 8b 1b             	mov    (%rbx),%rbx
   1400040bf:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   1400040c5:	4c 39 e3             	cmp    %r12,%rbx
   1400040c8:	75 d6                	jne    1400040a0 <_ZN13NaturalBinary12long_divsionES_PS_+0x1e0>
   1400040ca:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   1400040d1:	00 
   1400040d2:	49 89 f0             	mov    %rsi,%r8
   1400040d5:	4c 89 f9             	mov    %r15,%rcx
   1400040d8:	e8 43 da ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   1400040dd:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   1400040e4:	00 
   1400040e5:	4c 89 fa             	mov    %r15,%rdx
   1400040e8:	e8 83 d6 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400040ed:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400040f4:	00 
   1400040f5:	66 49 0f 6e fe       	movq   %r14,%xmm7
   1400040fa:	66 0f 6c ff          	punpcklqdq %xmm7,%xmm7
   1400040fe:	4c 39 fb             	cmp    %r15,%rbx
   140004101:	74 1a                	je     14000411d <_ZN13NaturalBinary12long_divsionES_PS_+0x25d>
   140004103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004108:	48 89 d9             	mov    %rbx,%rcx
   14000410b:	48 8b 1b             	mov    (%rbx),%rbx
   14000410e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004113:	e8 f8 20 00 00       	call   140006210 <_ZdlPvy>
   140004118:	4c 39 fb             	cmp    %r15,%rbx
   14000411b:	75 eb                	jne    140004108 <_ZN13NaturalBinary12long_divsionES_PS_+0x248>
   14000411d:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140004122:	48 39 f3             	cmp    %rsi,%rbx
   140004125:	74 1e                	je     140004145 <_ZN13NaturalBinary12long_divsionES_PS_+0x285>
   140004127:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000412e:	00 00 
   140004130:	48 89 d9             	mov    %rbx,%rcx
   140004133:	48 8b 1b             	mov    (%rbx),%rbx
   140004136:	ba 18 00 00 00       	mov    $0x18,%edx
   14000413b:	e8 d0 20 00 00       	call   140006210 <_ZdlPvy>
   140004140:	48 39 f3             	cmp    %rsi,%rbx
   140004143:	75 eb                	jne    140004130 <_ZN13NaturalBinary12long_divsionES_PS_+0x270>
   140004145:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004149:	0f 11 7c 24 40       	movups %xmm7,0x40(%rsp)
   14000414e:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004155:	00 00 
   140004157:	48 39 dd             	cmp    %rbx,%rbp
   14000415a:	74 2e                	je     14000418a <_ZN13NaturalBinary12long_divsionES_PS_+0x2ca>
   14000415c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004160:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004165:	e8 9e 20 00 00       	call   140006208 <_Znwy>
   14000416a:	48 89 c1             	mov    %rax,%rcx
   14000416d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004171:	4c 89 f2             	mov    %r14,%rdx
   140004174:	88 41 10             	mov    %al,0x10(%rcx)
   140004177:	e8 ec 20 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000417c:	48 8b 1b             	mov    (%rbx),%rbx
   14000417f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140004185:	48 39 dd             	cmp    %rbx,%rbp
   140004188:	75 d6                	jne    140004160 <_ZN13NaturalBinary12long_divsionES_PS_+0x2a0>
   14000418a:	4d 89 f0             	mov    %r14,%r8
   14000418d:	4c 89 e2             	mov    %r12,%rdx
   140004190:	48 89 f1             	mov    %rsi,%rcx
   140004193:	e8 a8 f4 ff ff       	call   140003640 <_ZN13NaturalBinarymlES_>
   140004198:	49 89 f0             	mov    %rsi,%r8
   14000419b:	48 89 fa             	mov    %rdi,%rdx
   14000419e:	4c 89 f9             	mov    %r15,%rcx
   1400041a1:	e8 9a dc ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   1400041a6:	4c 89 fa             	mov    %r15,%rdx
   1400041a9:	48 89 f9             	mov    %rdi,%rcx
   1400041ac:	e8 bf d5 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400041b1:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400041b8:	00 
   1400041b9:	4c 39 fb             	cmp    %r15,%rbx
   1400041bc:	74 17                	je     1400041d5 <_ZN13NaturalBinary12long_divsionES_PS_+0x315>
   1400041be:	66 90                	xchg   %ax,%ax
   1400041c0:	48 89 d9             	mov    %rbx,%rcx
   1400041c3:	48 8b 1b             	mov    (%rbx),%rbx
   1400041c6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041cb:	e8 40 20 00 00       	call   140006210 <_ZdlPvy>
   1400041d0:	4c 39 fb             	cmp    %r15,%rbx
   1400041d3:	75 eb                	jne    1400041c0 <_ZN13NaturalBinary12long_divsionES_PS_+0x300>
   1400041d5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400041da:	48 39 f3             	cmp    %rsi,%rbx
   1400041dd:	74 16                	je     1400041f5 <_ZN13NaturalBinary12long_divsionES_PS_+0x335>
   1400041df:	90                   	nop
   1400041e0:	48 89 d9             	mov    %rbx,%rcx
   1400041e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400041e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041eb:	e8 20 20 00 00       	call   140006210 <_ZdlPvy>
   1400041f0:	48 39 f3             	cmp    %rsi,%rbx
   1400041f3:	75 eb                	jne    1400041e0 <_ZN13NaturalBinary12long_divsionES_PS_+0x320>
   1400041f5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400041fa:	4c 39 f3             	cmp    %r14,%rbx
   1400041fd:	74 16                	je     140004215 <_ZN13NaturalBinary12long_divsionES_PS_+0x355>
   1400041ff:	90                   	nop
   140004200:	48 89 d9             	mov    %rbx,%rcx
   140004203:	48 8b 1b             	mov    (%rbx),%rbx
   140004206:	ba 18 00 00 00       	mov    $0x18,%edx
   14000420b:	e8 00 20 00 00       	call   140006210 <_ZdlPvy>
   140004210:	4c 39 f3             	cmp    %r14,%rbx
   140004213:	75 eb                	jne    140004200 <_ZN13NaturalBinary12long_divsionES_PS_+0x340>
   140004215:	4c 89 f9             	mov    %r15,%rcx
   140004218:	e8 a3 d6 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   14000421d:	4c 89 fa             	mov    %r15,%rdx
   140004220:	4c 89 e1             	mov    %r12,%rcx
   140004223:	e8 88 e4 ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140004228:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   14000422f:	00 
   140004230:	41 89 c5             	mov    %eax,%r13d
   140004233:	4c 39 fb             	cmp    %r15,%rbx
   140004236:	74 1d                	je     140004255 <_ZN13NaturalBinary12long_divsionES_PS_+0x395>
   140004238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000423f:	00 
   140004240:	48 89 d9             	mov    %rbx,%rcx
   140004243:	48 8b 1b             	mov    (%rbx),%rbx
   140004246:	ba 18 00 00 00       	mov    $0x18,%edx
   14000424b:	e8 c0 1f 00 00       	call   140006210 <_ZdlPvy>
   140004250:	4c 39 fb             	cmp    %r15,%rbx
   140004253:	75 eb                	jne    140004240 <_ZN13NaturalBinary12long_divsionES_PS_+0x380>
   140004255:	45 84 ed             	test   %r13b,%r13b
   140004258:	0f 85 cb fc ff ff    	jne    140003f29 <_ZN13NaturalBinary12long_divsionES_PS_+0x69>
   14000425e:	66 49 0f 6e c7       	movq   %r15,%xmm0
   140004263:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004267:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   14000426e:	00 00 00 00 00 
   140004273:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004277:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   14000427e:	00 
   14000427f:	48 39 dd             	cmp    %rbx,%rbp
   140004282:	74 31                	je     1400042b5 <_ZN13NaturalBinary12long_divsionES_PS_+0x3f5>
   140004284:	0f 1f 40 00          	nopl   0x0(%rax)
   140004288:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000428d:	e8 76 1f 00 00       	call   140006208 <_Znwy>
   140004292:	48 89 c1             	mov    %rax,%rcx
   140004295:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004299:	4c 89 fa             	mov    %r15,%rdx
   14000429c:	88 41 10             	mov    %al,0x10(%rcx)
   14000429f:	e8 c4 1f 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400042a4:	48 8b 1b             	mov    (%rbx),%rbx
   1400042a7:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   1400042ae:	00 01 
   1400042b0:	48 39 dd             	cmp    %rbx,%rbp
   1400042b3:	75 d3                	jne    140004288 <_ZN13NaturalBinary12long_divsionES_PS_+0x3c8>
   1400042b5:	4c 89 fa             	mov    %r15,%rdx
   1400042b8:	48 89 f9             	mov    %rdi,%rcx
   1400042bb:	e8 80 e8 ff ff       	call   140002b40 <_ZN13NaturalBinarygeES_>
   1400042c0:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400042c7:	00 
   1400042c8:	41 89 c5             	mov    %eax,%r13d
   1400042cb:	4c 39 fb             	cmp    %r15,%rbx
   1400042ce:	74 15                	je     1400042e5 <_ZN13NaturalBinary12long_divsionES_PS_+0x425>
   1400042d0:	48 89 d9             	mov    %rbx,%rcx
   1400042d3:	48 8b 1b             	mov    (%rbx),%rbx
   1400042d6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042db:	e8 30 1f 00 00       	call   140006210 <_ZdlPvy>
   1400042e0:	4c 39 fb             	cmp    %r15,%rbx
   1400042e3:	75 eb                	jne    1400042d0 <_ZN13NaturalBinary12long_divsionES_PS_+0x410>
   1400042e5:	45 84 ed             	test   %r13b,%r13b
   1400042e8:	0f 85 97 00 00 00    	jne    140004385 <_ZN13NaturalBinary12long_divsionES_PS_+0x4c5>
   1400042ee:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400042f3:	4c 39 e3             	cmp    %r12,%rbx
   1400042f6:	74 1d                	je     140004315 <_ZN13NaturalBinary12long_divsionES_PS_+0x455>
   1400042f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400042ff:	00 
   140004300:	48 89 d9             	mov    %rbx,%rcx
   140004303:	48 8b 1b             	mov    (%rbx),%rbx
   140004306:	ba 18 00 00 00       	mov    $0x18,%edx
   14000430b:	e8 00 1f 00 00       	call   140006210 <_ZdlPvy>
   140004310:	4c 39 e3             	cmp    %r12,%rbx
   140004313:	75 eb                	jne    140004300 <_ZN13NaturalBinary12long_divsionES_PS_+0x440>
   140004315:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   14000431c:	00 
   14000431d:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   140004324:	00 
   140004325:	0f 10 bc 24 b0 00 00 	movups 0xb0(%rsp),%xmm7
   14000432c:	00 
   14000432d:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
   140004334:	5b                   	pop    %rbx
   140004335:	5e                   	pop    %rsi
   140004336:	5f                   	pop    %rdi
   140004337:	5d                   	pop    %rbp
   140004338:	41 5c                	pop    %r12
   14000433a:	41 5d                	pop    %r13
   14000433c:	41 5e                	pop    %r14
   14000433e:	41 5f                	pop    %r15
   140004340:	c3                   	ret
   140004341:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004348:	31 d2                	xor    %edx,%edx
   14000434a:	4c 89 f9             	mov    %r15,%rcx
   14000434d:	e8 2e d3 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140004352:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004357:	e8 ac 1e 00 00       	call   140006208 <_Znwy>
   14000435c:	48 89 c1             	mov    %rax,%rcx
   14000435f:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140004366:	00 
   140004367:	4c 89 e2             	mov    %r12,%rdx
   14000436a:	88 41 10             	mov    %al,0x10(%rcx)
   14000436d:	e8 f6 1e 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004372:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140004377:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000437b:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140004380:	e9 ba fc ff ff       	jmp    14000403f <_ZN13NaturalBinary12long_divsionES_PS_+0x17f>
   140004385:	66 49 0f 6e c6       	movq   %r14,%xmm0
   14000438a:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   14000438e:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004395:	00 00 
   140004397:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000439b:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   1400043a0:	48 39 dd             	cmp    %rbx,%rbp
   1400043a3:	74 2a                	je     1400043cf <_ZN13NaturalBinary12long_divsionES_PS_+0x50f>
   1400043a5:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400043aa:	e8 59 1e 00 00       	call   140006208 <_Znwy>
   1400043af:	48 89 c1             	mov    %rax,%rcx
   1400043b2:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400043b6:	4c 89 f2             	mov    %r14,%rdx
   1400043b9:	88 41 10             	mov    %al,0x10(%rcx)
   1400043bc:	e8 a7 1e 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400043c1:	48 8b 1b             	mov    (%rbx),%rbx
   1400043c4:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400043ca:	48 39 dd             	cmp    %rbx,%rbp
   1400043cd:	75 d6                	jne    1400043a5 <_ZN13NaturalBinary12long_divsionES_PS_+0x4e5>
   1400043cf:	4d 89 f0             	mov    %r14,%r8
   1400043d2:	48 89 fa             	mov    %rdi,%rdx
   1400043d5:	4c 89 f9             	mov    %r15,%rcx
   1400043d8:	e8 63 da ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   1400043dd:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   1400043e2:	4c 89 fa             	mov    %r15,%rdx
   1400043e5:	48 89 f9             	mov    %rdi,%rcx
   1400043e8:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400043ec:	e8 7f d3 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400043f1:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400043f8:	00 
   1400043f9:	4c 39 fb             	cmp    %r15,%rbx
   1400043fc:	74 15                	je     140004413 <_ZN13NaturalBinary12long_divsionES_PS_+0x553>
   1400043fe:	48 89 d9             	mov    %rbx,%rcx
   140004401:	48 8b 1b             	mov    (%rbx),%rbx
   140004404:	ba 18 00 00 00       	mov    $0x18,%edx
   140004409:	e8 02 1e 00 00       	call   140006210 <_ZdlPvy>
   14000440e:	4c 39 fb             	cmp    %r15,%rbx
   140004411:	75 eb                	jne    1400043fe <_ZN13NaturalBinary12long_divsionES_PS_+0x53e>
   140004413:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004418:	4c 39 f3             	cmp    %r14,%rbx
   14000441b:	74 15                	je     140004432 <_ZN13NaturalBinary12long_divsionES_PS_+0x572>
   14000441d:	48 89 d9             	mov    %rbx,%rcx
   140004420:	48 8b 1b             	mov    (%rbx),%rbx
   140004423:	ba 18 00 00 00       	mov    $0x18,%edx
   140004428:	e8 e3 1d 00 00       	call   140006210 <_ZdlPvy>
   14000442d:	4c 39 f3             	cmp    %r14,%rbx
   140004430:	75 eb                	jne    14000441d <_ZN13NaturalBinary12long_divsionES_PS_+0x55d>
   140004432:	ba 01 00 00 00       	mov    $0x1,%edx
   140004437:	4c 89 f9             	mov    %r15,%rcx
   14000443a:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   14000443f:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140004446:	00 00 
   140004448:	e8 33 d2 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000444d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004452:	e8 b1 1d 00 00       	call   140006208 <_Znwy>
   140004457:	48 89 c1             	mov    %rax,%rcx
   14000445a:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140004461:	00 
   140004462:	48 89 f2             	mov    %rsi,%rdx
   140004465:	88 41 10             	mov    %al,0x10(%rcx)
   140004468:	e8 fb 1d 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000446d:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   140004474:	00 
   140004475:	49 89 f0             	mov    %rsi,%r8
   140004478:	4c 89 f9             	mov    %r15,%rcx
   14000447b:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140004481:	e8 9a d6 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   140004486:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   14000448d:	00 
   14000448e:	4c 89 fa             	mov    %r15,%rdx
   140004491:	e8 da d2 ff ff       	call   140001770 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004496:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   14000449d:	00 
   14000449e:	4c 39 fb             	cmp    %r15,%rbx
   1400044a1:	74 15                	je     1400044b8 <_ZN13NaturalBinary12long_divsionES_PS_+0x5f8>
   1400044a3:	48 89 d9             	mov    %rbx,%rcx
   1400044a6:	48 8b 1b             	mov    (%rbx),%rbx
   1400044a9:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044ae:	e8 5d 1d 00 00       	call   140006210 <_ZdlPvy>
   1400044b3:	4c 39 fb             	cmp    %r15,%rbx
   1400044b6:	75 eb                	jne    1400044a3 <_ZN13NaturalBinary12long_divsionES_PS_+0x5e3>
   1400044b8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400044bd:	48 39 f3             	cmp    %rsi,%rbx
   1400044c0:	0f 84 28 fe ff ff    	je     1400042ee <_ZN13NaturalBinary12long_divsionES_PS_+0x42e>
   1400044c6:	48 89 d9             	mov    %rbx,%rcx
   1400044c9:	48 8b 1b             	mov    (%rbx),%rbx
   1400044cc:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044d1:	e8 3a 1d 00 00       	call   140006210 <_ZdlPvy>
   1400044d6:	48 39 f3             	cmp    %rsi,%rbx
   1400044d9:	75 eb                	jne    1400044c6 <_ZN13NaturalBinary12long_divsionES_PS_+0x606>
   1400044db:	e9 0e fe ff ff       	jmp    1400042ee <_ZN13NaturalBinary12long_divsionES_PS_+0x42e>
   1400044e0:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400044e7:	00 
   1400044e8:	48 89 c3             	mov    %rax,%rbx
   1400044eb:	4c 39 f9             	cmp    %r15,%rcx
   1400044ee:	74 15                	je     140004505 <_ZN13NaturalBinary12long_divsionES_PS_+0x645>
   1400044f0:	48 8b 39             	mov    (%rcx),%rdi
   1400044f3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044f8:	e8 13 1d 00 00       	call   140006210 <_ZdlPvy>
   1400044fd:	48 89 f9             	mov    %rdi,%rcx
   140004500:	eb e9                	jmp    1400044eb <_ZN13NaturalBinary12long_divsionES_PS_+0x62b>
   140004502:	48 89 c3             	mov    %rax,%rbx
   140004505:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000450a:	48 39 f1             	cmp    %rsi,%rcx
   14000450d:	74 75                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000450f:	48 8b 39             	mov    (%rcx),%rdi
   140004512:	ba 18 00 00 00       	mov    $0x18,%edx
   140004517:	e8 f4 1c 00 00       	call   140006210 <_ZdlPvy>
   14000451c:	48 89 f9             	mov    %rdi,%rcx
   14000451f:	eb e9                	jmp    14000450a <_ZN13NaturalBinary12long_divsionES_PS_+0x64a>
   140004521:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004526:	48 89 c3             	mov    %rax,%rbx
   140004529:	48 39 f1             	cmp    %rsi,%rcx
   14000452c:	74 56                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000452e:	48 8b 39             	mov    (%rcx),%rdi
   140004531:	ba 18 00 00 00       	mov    $0x18,%edx
   140004536:	e8 d5 1c 00 00       	call   140006210 <_ZdlPvy>
   14000453b:	48 89 f9             	mov    %rdi,%rcx
   14000453e:	eb e9                	jmp    140004529 <_ZN13NaturalBinary12long_divsionES_PS_+0x669>
   140004540:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004547:	00 
   140004548:	48 89 c3             	mov    %rax,%rbx
   14000454b:	4c 39 f9             	cmp    %r15,%rcx
   14000454e:	74 15                	je     140004565 <_ZN13NaturalBinary12long_divsionES_PS_+0x6a5>
   140004550:	48 8b 31             	mov    (%rcx),%rsi
   140004553:	ba 18 00 00 00       	mov    $0x18,%edx
   140004558:	e8 b3 1c 00 00       	call   140006210 <_ZdlPvy>
   14000455d:	48 89 f1             	mov    %rsi,%rcx
   140004560:	eb e9                	jmp    14000454b <_ZN13NaturalBinary12long_divsionES_PS_+0x68b>
   140004562:	48 89 c3             	mov    %rax,%rbx
   140004565:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000456a:	4c 39 f1             	cmp    %r14,%rcx
   14000456d:	74 15                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000456f:	48 8b 31             	mov    (%rcx),%rsi
   140004572:	ba 18 00 00 00       	mov    $0x18,%edx
   140004577:	e8 94 1c 00 00       	call   140006210 <_ZdlPvy>
   14000457c:	48 89 f1             	mov    %rsi,%rcx
   14000457f:	eb e9                	jmp    14000456a <_ZN13NaturalBinary12long_divsionES_PS_+0x6aa>
   140004581:	48 89 c3             	mov    %rax,%rbx
   140004584:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004589:	4c 39 e1             	cmp    %r12,%rcx
   14000458c:	0f 84 80 00 00 00    	je     140004612 <_ZN13NaturalBinary12long_divsionES_PS_+0x752>
   140004592:	48 8b 31             	mov    (%rcx),%rsi
   140004595:	ba 18 00 00 00       	mov    $0x18,%edx
   14000459a:	e8 71 1c 00 00       	call   140006210 <_ZdlPvy>
   14000459f:	48 89 f1             	mov    %rsi,%rcx
   1400045a2:	eb e5                	jmp    140004589 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c9>
   1400045a4:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400045a9:	48 89 c3             	mov    %rax,%rbx
   1400045ac:	4c 39 f1             	cmp    %r14,%rcx
   1400045af:	74 d3                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   1400045b1:	48 8b 31             	mov    (%rcx),%rsi
   1400045b4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045b9:	e8 52 1c 00 00       	call   140006210 <_ZdlPvy>
   1400045be:	48 89 f1             	mov    %rsi,%rcx
   1400045c1:	eb e9                	jmp    1400045ac <_ZN13NaturalBinary12long_divsionES_PS_+0x6ec>
   1400045c3:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400045ca:	00 
   1400045cb:	48 89 c3             	mov    %rax,%rbx
   1400045ce:	4c 39 f9             	cmp    %r15,%rcx
   1400045d1:	0f 84 1a 01 00 00    	je     1400046f1 <_ZN13NaturalBinary12long_divsionES_PS_+0x831>
   1400045d7:	48 8b 39             	mov    (%rcx),%rdi
   1400045da:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045df:	e8 2c 1c 00 00       	call   140006210 <_ZdlPvy>
   1400045e4:	48 89 f9             	mov    %rdi,%rcx
   1400045e7:	eb e5                	jmp    1400045ce <_ZN13NaturalBinary12long_divsionES_PS_+0x70e>
   1400045e9:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400045f0:	00 
   1400045f1:	48 89 c3             	mov    %rax,%rbx
   1400045f4:	4c 39 f9             	cmp    %r15,%rcx
   1400045f7:	0f 84 d5 00 00 00    	je     1400046d2 <_ZN13NaturalBinary12long_divsionES_PS_+0x812>
   1400045fd:	48 8b 39             	mov    (%rcx),%rdi
   140004600:	ba 18 00 00 00       	mov    $0x18,%edx
   140004605:	e8 06 1c 00 00       	call   140006210 <_ZdlPvy>
   14000460a:	48 89 f9             	mov    %rdi,%rcx
   14000460d:	eb e5                	jmp    1400045f4 <_ZN13NaturalBinary12long_divsionES_PS_+0x734>
   14000460f:	48 89 c3             	mov    %rax,%rbx
   140004612:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140004619:	00 
   14000461a:	48 8b 08             	mov    (%rax),%rcx
   14000461d:	48 3b 8c 24 10 01 00 	cmp    0x110(%rsp),%rcx
   140004624:	00 
   140004625:	0f 84 e6 00 00 00    	je     140004711 <_ZN13NaturalBinary12long_divsionES_PS_+0x851>
   14000462b:	48 8b 31             	mov    (%rcx),%rsi
   14000462e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004633:	e8 d8 1b 00 00       	call   140006210 <_ZdlPvy>
   140004638:	48 89 f1             	mov    %rsi,%rcx
   14000463b:	eb e0                	jmp    14000461d <_ZN13NaturalBinary12long_divsionES_PS_+0x75d>
   14000463d:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004644:	00 
   140004645:	48 89 c3             	mov    %rax,%rbx
   140004648:	4c 39 f9             	cmp    %r15,%rcx
   14000464b:	0f 84 33 ff ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004651:	48 8b 31             	mov    (%rcx),%rsi
   140004654:	ba 18 00 00 00       	mov    $0x18,%edx
   140004659:	e8 b2 1b 00 00       	call   140006210 <_ZdlPvy>
   14000465e:	48 89 f1             	mov    %rsi,%rcx
   140004661:	eb e5                	jmp    140004648 <_ZN13NaturalBinary12long_divsionES_PS_+0x788>
   140004663:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   14000466a:	00 
   14000466b:	48 89 c3             	mov    %rax,%rbx
   14000466e:	4c 39 f9             	cmp    %r15,%rcx
   140004671:	0f 84 0d ff ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004677:	48 8b 31             	mov    (%rcx),%rsi
   14000467a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000467f:	e8 8c 1b 00 00       	call   140006210 <_ZdlPvy>
   140004684:	48 89 f1             	mov    %rsi,%rcx
   140004687:	eb e5                	jmp    14000466e <_ZN13NaturalBinary12long_divsionES_PS_+0x7ae>
   140004689:	48 89 c3             	mov    %rax,%rbx
   14000468c:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004691:	4c 39 f1             	cmp    %r14,%rcx
   140004694:	0f 84 ea fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000469a:	48 8b 31             	mov    (%rcx),%rsi
   14000469d:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046a2:	e8 69 1b 00 00       	call   140006210 <_ZdlPvy>
   1400046a7:	48 89 f1             	mov    %rsi,%rcx
   1400046aa:	eb e5                	jmp    140004691 <_ZN13NaturalBinary12long_divsionES_PS_+0x7d1>
   1400046ac:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400046b1:	48 89 c3             	mov    %rax,%rbx
   1400046b4:	4c 39 f1             	cmp    %r14,%rcx
   1400046b7:	0f 84 c7 fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   1400046bd:	48 8b 31             	mov    (%rcx),%rsi
   1400046c0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046c5:	e8 46 1b 00 00       	call   140006210 <_ZdlPvy>
   1400046ca:	48 89 f1             	mov    %rsi,%rcx
   1400046cd:	eb e5                	jmp    1400046b4 <_ZN13NaturalBinary12long_divsionES_PS_+0x7f4>
   1400046cf:	48 89 c3             	mov    %rax,%rbx
   1400046d2:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400046d7:	48 39 f1             	cmp    %rsi,%rcx
   1400046da:	74 b0                	je     14000468c <_ZN13NaturalBinary12long_divsionES_PS_+0x7cc>
   1400046dc:	48 8b 39             	mov    (%rcx),%rdi
   1400046df:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046e4:	e8 27 1b 00 00       	call   140006210 <_ZdlPvy>
   1400046e9:	48 89 f9             	mov    %rdi,%rcx
   1400046ec:	eb e9                	jmp    1400046d7 <_ZN13NaturalBinary12long_divsionES_PS_+0x817>
   1400046ee:	48 89 c3             	mov    %rax,%rbx
   1400046f1:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400046f6:	48 39 f1             	cmp    %rsi,%rcx
   1400046f9:	0f 84 85 fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   1400046ff:	48 8b 39             	mov    (%rcx),%rdi
   140004702:	ba 18 00 00 00       	mov    $0x18,%edx
   140004707:	e8 04 1b 00 00       	call   140006210 <_ZdlPvy>
   14000470c:	48 89 f9             	mov    %rdi,%rcx
   14000470f:	eb e5                	jmp    1400046f6 <_ZN13NaturalBinary12long_divsionES_PS_+0x836>
   140004711:	48 89 d9             	mov    %rbx,%rcx
   140004714:	e8 47 2c 00 00       	call   140007360 <_Unwind_Resume>
   140004719:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000471e:	48 89 c3             	mov    %rax,%rbx
   140004721:	48 39 f1             	cmp    %rsi,%rcx
   140004724:	0f 84 5a fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000472a:	48 8b 39             	mov    (%rcx),%rdi
   14000472d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004732:	e8 d9 1a 00 00       	call   140006210 <_ZdlPvy>
   140004737:	48 89 f9             	mov    %rdi,%rcx
   14000473a:	eb e5                	jmp    140004721 <_ZN13NaturalBinary12long_divsionES_PS_+0x861>
   14000473c:	48 89 c3             	mov    %rax,%rbx
   14000473f:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004744:	48 39 f1             	cmp    %rsi,%rcx
   140004747:	0f 84 37 fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000474d:	48 8b 39             	mov    (%rcx),%rdi
   140004750:	ba 18 00 00 00       	mov    $0x18,%edx
   140004755:	e8 b6 1a 00 00       	call   140006210 <_ZdlPvy>
   14000475a:	48 89 f9             	mov    %rdi,%rcx
   14000475d:	eb e5                	jmp    140004744 <_ZN13NaturalBinary12long_divsionES_PS_+0x884>
   14000475f:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004766:	00 
   140004767:	48 89 c3             	mov    %rax,%rbx
   14000476a:	4c 39 f9             	cmp    %r15,%rcx
   14000476d:	74 d0                	je     14000473f <_ZN13NaturalBinary12long_divsionES_PS_+0x87f>
   14000476f:	48 8b 39             	mov    (%rcx),%rdi
   140004772:	ba 18 00 00 00       	mov    $0x18,%edx
   140004777:	e8 94 1a 00 00       	call   140006210 <_ZdlPvy>
   14000477c:	48 89 f9             	mov    %rdi,%rcx
   14000477f:	eb e9                	jmp    14000476a <_ZN13NaturalBinary12long_divsionES_PS_+0x8aa>
   140004781:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004786:	48 89 c3             	mov    %rax,%rbx
   140004789:	48 39 f1             	cmp    %rsi,%rcx
   14000478c:	0f 84 f2 fd ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004792:	48 8b 39             	mov    (%rcx),%rdi
   140004795:	ba 18 00 00 00       	mov    $0x18,%edx
   14000479a:	e8 71 1a 00 00       	call   140006210 <_ZdlPvy>
   14000479f:	48 89 f9             	mov    %rdi,%rcx
   1400047a2:	eb e5                	jmp    140004789 <_ZN13NaturalBinary12long_divsionES_PS_+0x8c9>
   1400047a4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400047ab:	00 00 00 00 
   1400047af:	90                   	nop

00000001400047b0 <_ZN13NaturalBinaryrmES_>:
   1400047b0:	41 55                	push   %r13
   1400047b2:	41 54                	push   %r12
   1400047b4:	55                   	push   %rbp
   1400047b5:	57                   	push   %rdi
   1400047b6:	56                   	push   %rsi
   1400047b7:	53                   	push   %rbx
   1400047b8:	48 83 ec 68          	sub    $0x68,%rsp
   1400047bc:	4c 89 c7             	mov    %r8,%rdi
   1400047bf:	48 89 cd             	mov    %rcx,%rbp
   1400047c2:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   1400047c7:	49 89 d4             	mov    %rdx,%r12
   1400047ca:	e8 f1 d0 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400047cf:	48 83 7f 10 01       	cmpq   $0x1,0x10(%rdi)
   1400047d4:	0f 84 be 00 00 00    	je     140004898 <_ZN13NaturalBinaryrmES_+0xe8>
   1400047da:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400047df:	48 8b 1f             	mov    (%rdi),%rbx
   1400047e2:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400047e9:	00 00 
   1400047eb:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400047ef:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400047f4:	48 39 df             	cmp    %rbx,%rdi
   1400047f7:	74 31                	je     14000482a <_ZN13NaturalBinaryrmES_+0x7a>
   1400047f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004800:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004805:	e8 fe 19 00 00       	call   140006208 <_Znwy>
   14000480a:	48 89 c1             	mov    %rax,%rcx
   14000480d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004811:	48 89 f2             	mov    %rsi,%rdx
   140004814:	88 41 10             	mov    %al,0x10(%rcx)
   140004817:	e8 4c 1a 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000481c:	48 8b 1b             	mov    (%rbx),%rbx
   14000481f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004825:	48 39 df             	cmp    %rbx,%rdi
   140004828:	75 d6                	jne    140004800 <_ZN13NaturalBinaryrmES_+0x50>
   14000482a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   14000482f:	49 89 e9             	mov    %rbp,%r9
   140004832:	49 89 f0             	mov    %rsi,%r8
   140004835:	4c 89 e2             	mov    %r12,%rdx
   140004838:	48 89 f9             	mov    %rdi,%rcx
   14000483b:	e8 80 f6 ff ff       	call   140003ec0 <_ZN13NaturalBinary12long_divsionES_PS_>
   140004840:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004845:	48 39 fb             	cmp    %rdi,%rbx
   140004848:	74 1b                	je     140004865 <_ZN13NaturalBinaryrmES_+0xb5>
   14000484a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004850:	48 89 d9             	mov    %rbx,%rcx
   140004853:	48 8b 1b             	mov    (%rbx),%rbx
   140004856:	ba 18 00 00 00       	mov    $0x18,%edx
   14000485b:	e8 b0 19 00 00       	call   140006210 <_ZdlPvy>
   140004860:	48 39 fb             	cmp    %rdi,%rbx
   140004863:	75 eb                	jne    140004850 <_ZN13NaturalBinaryrmES_+0xa0>
   140004865:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000486a:	48 39 f3             	cmp    %rsi,%rbx
   14000486d:	74 16                	je     140004885 <_ZN13NaturalBinaryrmES_+0xd5>
   14000486f:	90                   	nop
   140004870:	48 89 d9             	mov    %rbx,%rcx
   140004873:	48 8b 1b             	mov    (%rbx),%rbx
   140004876:	ba 18 00 00 00       	mov    $0x18,%edx
   14000487b:	e8 90 19 00 00       	call   140006210 <_ZdlPvy>
   140004880:	48 39 f3             	cmp    %rsi,%rbx
   140004883:	75 eb                	jne    140004870 <_ZN13NaturalBinaryrmES_+0xc0>
   140004885:	48 89 e8             	mov    %rbp,%rax
   140004888:	48 83 c4 68          	add    $0x68,%rsp
   14000488c:	5b                   	pop    %rbx
   14000488d:	5e                   	pop    %rsi
   14000488e:	5f                   	pop    %rdi
   14000488f:	5d                   	pop    %rbp
   140004890:	41 5c                	pop    %r12
   140004892:	41 5d                	pop    %r13
   140004894:	c3                   	ret
   140004895:	0f 1f 00             	nopl   (%rax)
   140004898:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000489d:	49 8b 1c 24          	mov    (%r12),%rbx
   1400048a1:	4c 8b 2f             	mov    (%rdi),%r13
   1400048a4:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400048ab:	00 00 
   1400048ad:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400048b1:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400048b6:	49 39 dc             	cmp    %rbx,%r12
   1400048b9:	74 2f                	je     1400048ea <_ZN13NaturalBinaryrmES_+0x13a>
   1400048bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400048c0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400048c5:	e8 3e 19 00 00       	call   140006208 <_Znwy>
   1400048ca:	48 89 c1             	mov    %rax,%rcx
   1400048cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400048d1:	48 89 f2             	mov    %rsi,%rdx
   1400048d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400048d7:	e8 8c 19 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400048dc:	48 8b 1b             	mov    (%rbx),%rbx
   1400048df:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400048e5:	49 39 dc             	cmp    %rbx,%r12
   1400048e8:	75 d6                	jne    1400048c0 <_ZN13NaturalBinaryrmES_+0x110>
   1400048ea:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   1400048ef:	45 0f b6 45 10       	movzbl 0x10(%r13),%r8d
   1400048f4:	49 89 e9             	mov    %rbp,%r9
   1400048f7:	48 89 f2             	mov    %rsi,%rdx
   1400048fa:	48 89 f9             	mov    %rdi,%rcx
   1400048fd:	e8 5e d8 ff ff       	call   140002160 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   140004902:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004907:	48 39 fb             	cmp    %rdi,%rbx
   14000490a:	74 19                	je     140004925 <_ZN13NaturalBinaryrmES_+0x175>
   14000490c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004910:	48 89 d9             	mov    %rbx,%rcx
   140004913:	48 8b 1b             	mov    (%rbx),%rbx
   140004916:	ba 18 00 00 00       	mov    $0x18,%edx
   14000491b:	e8 f0 18 00 00       	call   140006210 <_ZdlPvy>
   140004920:	48 39 fb             	cmp    %rdi,%rbx
   140004923:	75 eb                	jne    140004910 <_ZN13NaturalBinaryrmES_+0x160>
   140004925:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000492a:	48 39 f3             	cmp    %rsi,%rbx
   14000492d:	0f 84 52 ff ff ff    	je     140004885 <_ZN13NaturalBinaryrmES_+0xd5>
   140004933:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004938:	48 89 d9             	mov    %rbx,%rcx
   14000493b:	48 8b 1b             	mov    (%rbx),%rbx
   14000493e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004943:	e8 c8 18 00 00       	call   140006210 <_ZdlPvy>
   140004948:	48 39 f3             	cmp    %rsi,%rbx
   14000494b:	75 eb                	jne    140004938 <_ZN13NaturalBinaryrmES_+0x188>
   14000494d:	48 89 e8             	mov    %rbp,%rax
   140004950:	48 83 c4 68          	add    $0x68,%rsp
   140004954:	5b                   	pop    %rbx
   140004955:	5e                   	pop    %rsi
   140004956:	5f                   	pop    %rdi
   140004957:	5d                   	pop    %rbp
   140004958:	41 5c                	pop    %r12
   14000495a:	41 5d                	pop    %r13
   14000495c:	c3                   	ret
   14000495d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004962:	48 89 c3             	mov    %rax,%rbx
   140004965:	48 39 f1             	cmp    %rsi,%rcx
   140004968:	74 3e                	je     1400049a8 <_ZN13NaturalBinaryrmES_+0x1f8>
   14000496a:	48 8b 39             	mov    (%rcx),%rdi
   14000496d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004972:	e8 99 18 00 00       	call   140006210 <_ZdlPvy>
   140004977:	48 89 f9             	mov    %rdi,%rcx
   14000497a:	eb e9                	jmp    140004965 <_ZN13NaturalBinaryrmES_+0x1b5>
   14000497c:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004981:	48 89 c3             	mov    %rax,%rbx
   140004984:	48 39 f1             	cmp    %rsi,%rcx
   140004987:	74 1f                	je     1400049a8 <_ZN13NaturalBinaryrmES_+0x1f8>
   140004989:	48 8b 39             	mov    (%rcx),%rdi
   14000498c:	ba 18 00 00 00       	mov    $0x18,%edx
   140004991:	e8 7a 18 00 00       	call   140006210 <_ZdlPvy>
   140004996:	48 89 f9             	mov    %rdi,%rcx
   140004999:	eb e9                	jmp    140004984 <_ZN13NaturalBinaryrmES_+0x1d4>
   14000499b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400049a0:	48 89 c3             	mov    %rax,%rbx
   1400049a3:	48 39 f1             	cmp    %rsi,%rcx
   1400049a6:	75 42                	jne    1400049ea <_ZN13NaturalBinaryrmES_+0x23a>
   1400049a8:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   1400049ac:	48 39 e9             	cmp    %rbp,%rcx
   1400049af:	74 31                	je     1400049e2 <_ZN13NaturalBinaryrmES_+0x232>
   1400049b1:	48 8b 31             	mov    (%rcx),%rsi
   1400049b4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049b9:	e8 52 18 00 00       	call   140006210 <_ZdlPvy>
   1400049be:	48 89 f1             	mov    %rsi,%rcx
   1400049c1:	eb e9                	jmp    1400049ac <_ZN13NaturalBinaryrmES_+0x1fc>
   1400049c3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400049c8:	48 89 c3             	mov    %rax,%rbx
   1400049cb:	48 39 f1             	cmp    %rsi,%rcx
   1400049ce:	74 d8                	je     1400049a8 <_ZN13NaturalBinaryrmES_+0x1f8>
   1400049d0:	48 8b 39             	mov    (%rcx),%rdi
   1400049d3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049d8:	e8 33 18 00 00       	call   140006210 <_ZdlPvy>
   1400049dd:	48 89 f9             	mov    %rdi,%rcx
   1400049e0:	eb e9                	jmp    1400049cb <_ZN13NaturalBinaryrmES_+0x21b>
   1400049e2:	48 89 d9             	mov    %rbx,%rcx
   1400049e5:	e8 76 29 00 00       	call   140007360 <_Unwind_Resume>
   1400049ea:	48 8b 39             	mov    (%rcx),%rdi
   1400049ed:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049f2:	e8 19 18 00 00       	call   140006210 <_ZdlPvy>
   1400049f7:	48 89 f9             	mov    %rdi,%rcx
   1400049fa:	eb a7                	jmp    1400049a3 <_ZN13NaturalBinaryrmES_+0x1f3>
   1400049fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004a00 <_ZN13NaturalBinarydvES_>:
   140004a00:	41 55                	push   %r13
   140004a02:	41 54                	push   %r12
   140004a04:	55                   	push   %rbp
   140004a05:	57                   	push   %rdi
   140004a06:	56                   	push   %rsi
   140004a07:	53                   	push   %rbx
   140004a08:	48 83 ec 68          	sub    $0x68,%rsp
   140004a0c:	49 83 78 10 01       	cmpq   $0x1,0x10(%r8)
   140004a11:	48 89 cd             	mov    %rcx,%rbp
   140004a14:	49 89 d5             	mov    %rdx,%r13
   140004a17:	4d 89 c4             	mov    %r8,%r12
   140004a1a:	0f 84 c8 00 00 00    	je     140004ae8 <_ZN13NaturalBinarydvES_+0xe8>
   140004a20:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140004a25:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140004a2a:	48 89 f9             	mov    %rdi,%rcx
   140004a2d:	e8 8e ce ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140004a32:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004a37:	49 8b 1c 24          	mov    (%r12),%rbx
   140004a3b:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004a42:	00 00 
   140004a44:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004a48:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140004a4d:	49 39 dc             	cmp    %rbx,%r12
   140004a50:	74 30                	je     140004a82 <_ZN13NaturalBinarydvES_+0x82>
   140004a52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004a58:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004a5d:	e8 a6 17 00 00       	call   140006208 <_Znwy>
   140004a62:	48 89 c1             	mov    %rax,%rcx
   140004a65:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004a69:	48 89 f2             	mov    %rsi,%rdx
   140004a6c:	88 41 10             	mov    %al,0x10(%rcx)
   140004a6f:	e8 f4 17 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004a74:	48 8b 1b             	mov    (%rbx),%rbx
   140004a77:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140004a7d:	49 39 dc             	cmp    %rbx,%r12
   140004a80:	75 d6                	jne    140004a58 <_ZN13NaturalBinarydvES_+0x58>
   140004a82:	49 89 f9             	mov    %rdi,%r9
   140004a85:	49 89 f0             	mov    %rsi,%r8
   140004a88:	4c 89 ea             	mov    %r13,%rdx
   140004a8b:	48 89 e9             	mov    %rbp,%rcx
   140004a8e:	e8 2d f4 ff ff       	call   140003ec0 <_ZN13NaturalBinary12long_divsionES_PS_>
   140004a93:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004a98:	48 39 f3             	cmp    %rsi,%rbx
   140004a9b:	74 18                	je     140004ab5 <_ZN13NaturalBinarydvES_+0xb5>
   140004a9d:	0f 1f 00             	nopl   (%rax)
   140004aa0:	48 89 d9             	mov    %rbx,%rcx
   140004aa3:	48 8b 1b             	mov    (%rbx),%rbx
   140004aa6:	ba 18 00 00 00       	mov    $0x18,%edx
   140004aab:	e8 60 17 00 00       	call   140006210 <_ZdlPvy>
   140004ab0:	48 39 f3             	cmp    %rsi,%rbx
   140004ab3:	75 eb                	jne    140004aa0 <_ZN13NaturalBinarydvES_+0xa0>
   140004ab5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140004aba:	48 39 fb             	cmp    %rdi,%rbx
   140004abd:	74 16                	je     140004ad5 <_ZN13NaturalBinarydvES_+0xd5>
   140004abf:	90                   	nop
   140004ac0:	48 89 d9             	mov    %rbx,%rcx
   140004ac3:	48 8b 1b             	mov    (%rbx),%rbx
   140004ac6:	ba 18 00 00 00       	mov    $0x18,%edx
   140004acb:	e8 40 17 00 00       	call   140006210 <_ZdlPvy>
   140004ad0:	48 39 fb             	cmp    %rdi,%rbx
   140004ad3:	75 eb                	jne    140004ac0 <_ZN13NaturalBinarydvES_+0xc0>
   140004ad5:	48 89 e8             	mov    %rbp,%rax
   140004ad8:	48 83 c4 68          	add    $0x68,%rsp
   140004adc:	5b                   	pop    %rbx
   140004add:	5e                   	pop    %rsi
   140004ade:	5f                   	pop    %rdi
   140004adf:	5d                   	pop    %rbp
   140004ae0:	41 5c                	pop    %r12
   140004ae2:	41 5d                	pop    %r13
   140004ae4:	c3                   	ret
   140004ae5:	0f 1f 00             	nopl   (%rax)
   140004ae8:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140004aed:	48 8b 1a             	mov    (%rdx),%rbx
   140004af0:	49 8b 38             	mov    (%r8),%rdi
   140004af3:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004afa:	00 00 
   140004afc:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004b01:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004b05:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140004b0a:	48 39 da             	cmp    %rbx,%rdx
   140004b0d:	74 2b                	je     140004b3a <_ZN13NaturalBinarydvES_+0x13a>
   140004b0f:	90                   	nop
   140004b10:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004b15:	e8 ee 16 00 00       	call   140006208 <_Znwy>
   140004b1a:	48 89 c1             	mov    %rax,%rcx
   140004b1d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004b21:	48 89 f2             	mov    %rsi,%rdx
   140004b24:	88 41 10             	mov    %al,0x10(%rcx)
   140004b27:	e8 3c 17 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004b2c:	48 8b 1b             	mov    (%rbx),%rbx
   140004b2f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140004b35:	49 39 dd             	cmp    %rbx,%r13
   140004b38:	75 d6                	jne    140004b10 <_ZN13NaturalBinarydvES_+0x110>
   140004b3a:	44 0f b6 47 10       	movzbl 0x10(%rdi),%r8d
   140004b3f:	45 31 c9             	xor    %r9d,%r9d
   140004b42:	48 89 f2             	mov    %rsi,%rdx
   140004b45:	48 89 e9             	mov    %rbp,%rcx
   140004b48:	e8 13 d6 ff ff       	call   140002160 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   140004b4d:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004b52:	48 39 f3             	cmp    %rsi,%rbx
   140004b55:	0f 84 7a ff ff ff    	je     140004ad5 <_ZN13NaturalBinarydvES_+0xd5>
   140004b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004b60:	48 89 d9             	mov    %rbx,%rcx
   140004b63:	48 8b 1b             	mov    (%rbx),%rbx
   140004b66:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b6b:	e8 a0 16 00 00       	call   140006210 <_ZdlPvy>
   140004b70:	48 39 f3             	cmp    %rsi,%rbx
   140004b73:	75 eb                	jne    140004b60 <_ZN13NaturalBinarydvES_+0x160>
   140004b75:	48 89 e8             	mov    %rbp,%rax
   140004b78:	48 83 c4 68          	add    $0x68,%rsp
   140004b7c:	5b                   	pop    %rbx
   140004b7d:	5e                   	pop    %rsi
   140004b7e:	5f                   	pop    %rdi
   140004b7f:	5d                   	pop    %rbp
   140004b80:	41 5c                	pop    %r12
   140004b82:	41 5d                	pop    %r13
   140004b84:	c3                   	ret
   140004b85:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004b8a:	48 89 c3             	mov    %rax,%rbx
   140004b8d:	48 39 f1             	cmp    %rsi,%rcx
   140004b90:	74 48                	je     140004bda <_ZN13NaturalBinarydvES_+0x1da>
   140004b92:	48 8b 39             	mov    (%rcx),%rdi
   140004b95:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b9a:	e8 71 16 00 00       	call   140006210 <_ZdlPvy>
   140004b9f:	48 89 f9             	mov    %rdi,%rcx
   140004ba2:	eb e9                	jmp    140004b8d <_ZN13NaturalBinarydvES_+0x18d>
   140004ba4:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004ba9:	48 89 c3             	mov    %rax,%rbx
   140004bac:	48 39 f1             	cmp    %rsi,%rcx
   140004baf:	74 29                	je     140004bda <_ZN13NaturalBinarydvES_+0x1da>
   140004bb1:	48 8b 39             	mov    (%rcx),%rdi
   140004bb4:	ba 18 00 00 00       	mov    $0x18,%edx
   140004bb9:	e8 52 16 00 00       	call   140006210 <_ZdlPvy>
   140004bbe:	48 89 f9             	mov    %rdi,%rcx
   140004bc1:	eb e9                	jmp    140004bac <_ZN13NaturalBinarydvES_+0x1ac>
   140004bc3:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004bc8:	48 89 c3             	mov    %rax,%rbx
   140004bcb:	48 39 f1             	cmp    %rsi,%rcx
   140004bce:	75 31                	jne    140004c01 <_ZN13NaturalBinarydvES_+0x201>
   140004bd0:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004bd5:	48 39 f9             	cmp    %rdi,%rcx
   140004bd8:	75 39                	jne    140004c13 <_ZN13NaturalBinarydvES_+0x213>
   140004bda:	48 89 d9             	mov    %rbx,%rcx
   140004bdd:	e8 7e 27 00 00       	call   140007360 <_Unwind_Resume>
   140004be2:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004be7:	48 89 c3             	mov    %rax,%rbx
   140004bea:	48 39 f1             	cmp    %rsi,%rcx
   140004bed:	74 e1                	je     140004bd0 <_ZN13NaturalBinarydvES_+0x1d0>
   140004bef:	48 8b 29             	mov    (%rcx),%rbp
   140004bf2:	ba 18 00 00 00       	mov    $0x18,%edx
   140004bf7:	e8 14 16 00 00       	call   140006210 <_ZdlPvy>
   140004bfc:	48 89 e9             	mov    %rbp,%rcx
   140004bff:	eb e9                	jmp    140004bea <_ZN13NaturalBinarydvES_+0x1ea>
   140004c01:	48 8b 29             	mov    (%rcx),%rbp
   140004c04:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c09:	e8 02 16 00 00       	call   140006210 <_ZdlPvy>
   140004c0e:	48 89 e9             	mov    %rbp,%rcx
   140004c11:	eb b8                	jmp    140004bcb <_ZN13NaturalBinarydvES_+0x1cb>
   140004c13:	48 8b 31             	mov    (%rcx),%rsi
   140004c16:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c1b:	e8 f0 15 00 00       	call   140006210 <_ZdlPvy>
   140004c20:	48 89 f1             	mov    %rsi,%rcx
   140004c23:	eb b0                	jmp    140004bd5 <_ZN13NaturalBinarydvES_+0x1d5>
   140004c25:	90                   	nop
   140004c26:	90                   	nop
   140004c27:	90                   	nop
   140004c28:	90                   	nop
   140004c29:	90                   	nop
   140004c2a:	90                   	nop
   140004c2b:	90                   	nop
   140004c2c:	90                   	nop
   140004c2d:	90                   	nop
   140004c2e:	90                   	nop
   140004c2f:	90                   	nop

0000000140004c30 <__tcf_0>:
   140004c30:	48 8d 0d 39 74 00 00 	lea    0x7439(%rip),%rcx        # 14000c070 <_ZStL8__ioinit>
   140004c37:	e9 14 16 00 00       	jmp    140006250 <_ZNSt8ios_base4InitD1Ev>
   140004c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>:
   140004c40:	41 54                	push   %r12
   140004c42:	55                   	push   %rbp
   140004c43:	57                   	push   %rdi
   140004c44:	56                   	push   %rsi
   140004c45:	53                   	push   %rbx
   140004c46:	48 83 ec 40          	sub    $0x40,%rsp
   140004c4a:	48 8b 32             	mov    (%rdx),%rsi
   140004c4d:	48 8b 19             	mov    (%rcx),%rbx
   140004c50:	48 89 cf             	mov    %rcx,%rdi
   140004c53:	48 89 d5             	mov    %rdx,%rbp
   140004c56:	48 39 f2             	cmp    %rsi,%rdx
   140004c59:	74 24                	je     140004c7f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   140004c5b:	48 39 cb             	cmp    %rcx,%rbx
   140004c5e:	75 0d                	jne    140004c6d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x2d>
   140004c60:	eb 5e                	jmp    140004cc0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   140004c62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004c68:	48 39 df             	cmp    %rbx,%rdi
   140004c6b:	74 53                	je     140004cc0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   140004c6d:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140004c71:	48 8b 36             	mov    (%rsi),%rsi
   140004c74:	88 43 10             	mov    %al,0x10(%rbx)
   140004c77:	48 8b 1b             	mov    (%rbx),%rbx
   140004c7a:	48 39 f5             	cmp    %rsi,%rbp
   140004c7d:	75 e9                	jne    140004c68 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x28>
   140004c7f:	48 39 df             	cmp    %rbx,%rdi
   140004c82:	74 29                	je     140004cad <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140004c84:	0f 1f 40 00          	nopl   0x0(%rax)
   140004c88:	48 89 de             	mov    %rbx,%rsi
   140004c8b:	48 8b 1b             	mov    (%rbx),%rbx
   140004c8e:	48 83 6f 10 01       	subq   $0x1,0x10(%rdi)
   140004c93:	48 89 f1             	mov    %rsi,%rcx
   140004c96:	e8 c5 15 00 00       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140004c9b:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ca0:	48 89 f1             	mov    %rsi,%rcx
   140004ca3:	e8 68 15 00 00       	call   140006210 <_ZdlPvy>
   140004ca8:	48 39 df             	cmp    %rbx,%rdi
   140004cab:	75 db                	jne    140004c88 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x48>
   140004cad:	48 83 c4 40          	add    $0x40,%rsp
   140004cb1:	5b                   	pop    %rbx
   140004cb2:	5e                   	pop    %rsi
   140004cb3:	5f                   	pop    %rdi
   140004cb4:	5d                   	pop    %rbp
   140004cb5:	41 5c                	pop    %r12
   140004cb7:	c3                   	ret
   140004cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004cbf:	00 
   140004cc0:	48 39 f5             	cmp    %rsi,%rbp
   140004cc3:	74 ba                	je     140004c7f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   140004cc5:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004ccc:	00 00 
   140004cce:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140004cd3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140004cd8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004cdc:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004ce1:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004ce6:	e8 1d 15 00 00       	call   140006208 <_Znwy>
   140004ceb:	48 89 c1             	mov    %rax,%rcx
   140004cee:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140004cf2:	4c 89 e2             	mov    %r12,%rdx
   140004cf5:	88 41 10             	mov    %al,0x10(%rcx)
   140004cf8:	e8 6b 15 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004cfd:	48 8b 36             	mov    (%rsi),%rsi
   140004d00:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004d06:	48 39 f5             	cmp    %rsi,%rbp
   140004d09:	75 d6                	jne    140004ce1 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   140004d0b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140004d10:	4c 39 e2             	cmp    %r12,%rdx
   140004d13:	74 98                	je     140004cad <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140004d15:	4d 89 e0             	mov    %r12,%r8
   140004d18:	48 89 f9             	mov    %rdi,%rcx
   140004d1b:	e8 50 15 00 00       	call   140006270 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140004d20:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140004d25:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140004d2a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004d31:	00 00 
   140004d33:	48 01 47 10          	add    %rax,0x10(%rdi)
   140004d37:	4c 39 e3             	cmp    %r12,%rbx
   140004d3a:	0f 84 6d ff ff ff    	je     140004cad <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140004d40:	48 89 d9             	mov    %rbx,%rcx
   140004d43:	48 8b 1b             	mov    (%rbx),%rbx
   140004d46:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d4b:	e8 c0 14 00 00       	call   140006210 <_ZdlPvy>
   140004d50:	4c 39 e3             	cmp    %r12,%rbx
   140004d53:	75 eb                	jne    140004d40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x100>
   140004d55:	48 83 c4 40          	add    $0x40,%rsp
   140004d59:	5b                   	pop    %rbx
   140004d5a:	5e                   	pop    %rsi
   140004d5b:	5f                   	pop    %rdi
   140004d5c:	5d                   	pop    %rbp
   140004d5d:	41 5c                	pop    %r12
   140004d5f:	c3                   	ret
   140004d60:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004d65:	48 89 c3             	mov    %rax,%rbx
   140004d68:	4c 39 e1             	cmp    %r12,%rcx
   140004d6b:	74 12                	je     140004d7f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x13f>
   140004d6d:	48 8b 31             	mov    (%rcx),%rsi
   140004d70:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d75:	e8 96 14 00 00       	call   140006210 <_ZdlPvy>
   140004d7a:	48 89 f1             	mov    %rsi,%rcx
   140004d7d:	eb e9                	jmp    140004d68 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   140004d7f:	48 89 d9             	mov    %rbx,%rcx
   140004d82:	e8 d9 25 00 00       	call   140007360 <_Unwind_Resume>
   140004d87:	90                   	nop
   140004d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004d8f:	00 

0000000140004d90 <_ZN15SignedMagnitudeC1Ex>:
   140004d90:	57                   	push   %rdi
   140004d91:	56                   	push   %rsi
   140004d92:	53                   	push   %rbx
   140004d93:	48 83 ec 40          	sub    $0x40,%rsp
   140004d97:	48 89 d6             	mov    %rdx,%rsi
   140004d9a:	48 89 cb             	mov    %rcx,%rbx
   140004d9d:	e8 9e cb ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140004da2:	31 c0                	xor    %eax,%eax
   140004da4:	48 85 f6             	test   %rsi,%rsi
   140004da7:	79 08                	jns    140004db1 <_ZN15SignedMagnitudeC1Ex+0x21>
   140004da9:	48 f7 de             	neg    %rsi
   140004dac:	b8 01 00 00 00       	mov    $0x1,%eax
   140004db1:	88 43 1c             	mov    %al,0x1c(%rbx)
   140004db4:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140004db9:	48 89 f2             	mov    %rsi,%rdx
   140004dbc:	48 89 f9             	mov    %rdi,%rcx
   140004dbf:	e8 8c cb ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140004dc4:	48 39 fb             	cmp    %rdi,%rbx
   140004dc7:	74 0b                	je     140004dd4 <_ZN15SignedMagnitudeC1Ex+0x44>
   140004dc9:	48 89 fa             	mov    %rdi,%rdx
   140004dcc:	48 89 d9             	mov    %rbx,%rcx
   140004dcf:	e8 6c fe ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004dd4:	48 89 f9             	mov    %rdi,%rcx
   140004dd7:	e8 04 cd ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004ddc:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%rbx)
   140004de3:	48 83 c4 40          	add    $0x40,%rsp
   140004de7:	5b                   	pop    %rbx
   140004de8:	5e                   	pop    %rsi
   140004de9:	5f                   	pop    %rdi
   140004dea:	c3                   	ret
   140004deb:	48 89 c6             	mov    %rax,%rsi
   140004dee:	eb 0b                	jmp    140004dfb <_ZN15SignedMagnitudeC1Ex+0x6b>
   140004df0:	48 89 f9             	mov    %rdi,%rcx
   140004df3:	48 89 c6             	mov    %rax,%rsi
   140004df6:	e8 e5 cc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004dfb:	48 89 d9             	mov    %rbx,%rcx
   140004dfe:	e8 dd cc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004e03:	48 89 f1             	mov    %rsi,%rcx
   140004e06:	e8 55 25 00 00       	call   140007360 <_Unwind_Resume>
   140004e0b:	90                   	nop
   140004e0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004e10 <_ZN15SignedMagnitudeC1Ev>:
   140004e10:	57                   	push   %rdi
   140004e11:	56                   	push   %rsi
   140004e12:	53                   	push   %rbx
   140004e13:	48 83 ec 40          	sub    $0x40,%rsp
   140004e17:	48 89 cb             	mov    %rcx,%rbx
   140004e1a:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140004e1f:	e8 1c cb ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140004e24:	c6 43 1c 00          	movb   $0x0,0x1c(%rbx)
   140004e28:	31 d2                	xor    %edx,%edx
   140004e2a:	48 89 f1             	mov    %rsi,%rcx
   140004e2d:	e8 1e cb ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140004e32:	48 39 f3             	cmp    %rsi,%rbx
   140004e35:	74 0b                	je     140004e42 <_ZN15SignedMagnitudeC1Ev+0x32>
   140004e37:	48 89 f2             	mov    %rsi,%rdx
   140004e3a:	48 89 d9             	mov    %rbx,%rcx
   140004e3d:	e8 fe fd ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004e42:	48 89 f1             	mov    %rsi,%rcx
   140004e45:	e8 96 cc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004e4a:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%rbx)
   140004e51:	48 83 c4 40          	add    $0x40,%rsp
   140004e55:	5b                   	pop    %rbx
   140004e56:	5e                   	pop    %rsi
   140004e57:	5f                   	pop    %rdi
   140004e58:	c3                   	ret
   140004e59:	48 89 c7             	mov    %rax,%rdi
   140004e5c:	eb 0b                	jmp    140004e69 <_ZN15SignedMagnitudeC1Ev+0x59>
   140004e5e:	48 89 f1             	mov    %rsi,%rcx
   140004e61:	48 89 c7             	mov    %rax,%rdi
   140004e64:	e8 77 cc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004e69:	48 89 d9             	mov    %rbx,%rcx
   140004e6c:	e8 6f cc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004e71:	48 89 f9             	mov    %rdi,%rcx
   140004e74:	e8 e7 24 00 00       	call   140007360 <_Unwind_Resume>
   140004e79:	90                   	nop
   140004e7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140004e80 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb>:
   140004e80:	41 54                	push   %r12
   140004e82:	55                   	push   %rbp
   140004e83:	57                   	push   %rdi
   140004e84:	56                   	push   %rsi
   140004e85:	53                   	push   %rbx
   140004e86:	48 83 ec 70          	sub    $0x70,%rsp
   140004e8a:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140004e8f:	48 89 cd             	mov    %rcx,%rbp
   140004e92:	44 89 c3             	mov    %r8d,%ebx
   140004e95:	48 89 d7             	mov    %rdx,%rdi
   140004e98:	45 89 cc             	mov    %r9d,%r12d
   140004e9b:	e8 a0 ca ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140004ea0:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140004ea5:	89 5d 18             	mov    %ebx,0x18(%rbp)
   140004ea8:	48 8b 1f             	mov    (%rdi),%rbx
   140004eab:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   140004eb0:	44 88 65 1c          	mov    %r12b,0x1c(%rbp)
   140004eb4:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004ebb:	00 00 
   140004ebd:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140004ec1:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140004ec6:	48 39 df             	cmp    %rbx,%rdi
   140004ec9:	74 2f                	je     140004efa <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x7a>
   140004ecb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004ed0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004ed5:	e8 2e 13 00 00       	call   140006208 <_Znwy>
   140004eda:	48 89 c1             	mov    %rax,%rcx
   140004edd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004ee1:	48 89 f2             	mov    %rsi,%rdx
   140004ee4:	88 41 10             	mov    %al,0x10(%rcx)
   140004ee7:	e8 7c 13 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004eec:	48 8b 1b             	mov    (%rbx),%rbx
   140004eef:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140004ef5:	48 39 df             	cmp    %rbx,%rdi
   140004ef8:	75 d6                	jne    140004ed0 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x50>
   140004efa:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140004eff:	48 89 f2             	mov    %rsi,%rdx
   140004f02:	48 89 d9             	mov    %rbx,%rcx
   140004f05:	e8 36 cb ff ff       	call   140001a40 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE>
   140004f0a:	48 39 dd             	cmp    %rbx,%rbp
   140004f0d:	74 0b                	je     140004f1a <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x9a>
   140004f0f:	48 89 da             	mov    %rbx,%rdx
   140004f12:	48 89 e9             	mov    %rbp,%rcx
   140004f15:	e8 26 fd ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004f1a:	48 89 d9             	mov    %rbx,%rcx
   140004f1d:	e8 be cb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004f22:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004f27:	48 39 f3             	cmp    %rsi,%rbx
   140004f2a:	74 19                	je     140004f45 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xc5>
   140004f2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004f30:	48 89 d9             	mov    %rbx,%rcx
   140004f33:	48 8b 1b             	mov    (%rbx),%rbx
   140004f36:	ba 18 00 00 00       	mov    $0x18,%edx
   140004f3b:	e8 d0 12 00 00       	call   140006210 <_ZdlPvy>
   140004f40:	48 39 f3             	cmp    %rsi,%rbx
   140004f43:	75 eb                	jne    140004f30 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xb0>
   140004f45:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140004f4a:	48 83 c4 70          	add    $0x70,%rsp
   140004f4e:	5b                   	pop    %rbx
   140004f4f:	5e                   	pop    %rsi
   140004f50:	5f                   	pop    %rdi
   140004f51:	5d                   	pop    %rbp
   140004f52:	41 5c                	pop    %r12
   140004f54:	c3                   	ret
   140004f55:	48 89 c7             	mov    %rax,%rdi
   140004f58:	48 89 d9             	mov    %rbx,%rcx
   140004f5b:	e8 80 cb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004f60:	48 89 fb             	mov    %rdi,%rbx
   140004f63:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004f68:	48 39 f1             	cmp    %rsi,%rcx
   140004f6b:	74 36                	je     140004fa3 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x123>
   140004f6d:	48 8b 39             	mov    (%rcx),%rdi
   140004f70:	ba 18 00 00 00       	mov    $0x18,%edx
   140004f75:	e8 96 12 00 00       	call   140006210 <_ZdlPvy>
   140004f7a:	48 89 f9             	mov    %rdi,%rcx
   140004f7d:	eb e9                	jmp    140004f68 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xe8>
   140004f7f:	48 89 c3             	mov    %rax,%rbx
   140004f82:	eb df                	jmp    140004f63 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xe3>
   140004f84:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004f89:	48 89 c3             	mov    %rax,%rbx
   140004f8c:	48 39 f1             	cmp    %rsi,%rcx
   140004f8f:	74 12                	je     140004fa3 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x123>
   140004f91:	48 8b 39             	mov    (%rcx),%rdi
   140004f94:	ba 18 00 00 00       	mov    $0x18,%edx
   140004f99:	e8 72 12 00 00       	call   140006210 <_ZdlPvy>
   140004f9e:	48 89 f9             	mov    %rdi,%rcx
   140004fa1:	eb e9                	jmp    140004f8c <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x10c>
   140004fa3:	48 89 e9             	mov    %rbp,%rcx
   140004fa6:	e8 35 cb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004fab:	48 89 d9             	mov    %rbx,%rcx
   140004fae:	e8 ad 23 00 00       	call   140007360 <_Unwind_Resume>
   140004fb3:	90                   	nop
   140004fb4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004fbb:	00 00 00 00 
   140004fbf:	90                   	nop

0000000140004fc0 <_ZN15SignedMagnitudeD1Ev>:
   140004fc0:	e9 1b cb ff ff       	jmp    140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004fc5:	90                   	nop
   140004fc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004fcd:	00 00 00 

0000000140004fd0 <_ZN15SignedMagnitude7getByteB5cxx11Ev>:
   140004fd0:	48 89 c8             	mov    %rcx,%rax
   140004fd3:	c3                   	ret
   140004fd4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004fdb:	00 00 00 00 
   140004fdf:	90                   	nop

0000000140004fe0 <_ZN15SignedMagnitude11getNegativeEv>:
   140004fe0:	0f b6 41 1c          	movzbl 0x1c(%rcx),%eax
   140004fe4:	c3                   	ret
   140004fe5:	90                   	nop
   140004fe6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004fed:	00 00 00 

0000000140004ff0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>:
   140004ff0:	41 54                	push   %r12
   140004ff2:	55                   	push   %rbp
   140004ff3:	57                   	push   %rdi
   140004ff4:	56                   	push   %rsi
   140004ff5:	53                   	push   %rbx
   140004ff6:	48 83 ec 50          	sub    $0x50,%rsp
   140004ffa:	48 89 d6             	mov    %rdx,%rsi
   140004ffd:	48 89 cb             	mov    %rcx,%rbx
   140005000:	e8 fb dc ff ff       	call   140002d00 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   140005005:	8b 46 18             	mov    0x18(%rsi),%eax
   140005008:	85 c0                	test   %eax,%eax
   14000500a:	0f 85 30 01 00 00    	jne    140005140 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x150>
   140005010:	80 7e 1c 01          	cmpb   $0x1,0x1c(%rsi)
   140005014:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   140005018:	4c 8d 25 53 40 00 00 	lea    0x4053(%rip),%r12        # 140009072 <.rdata+0x2>
   14000501f:	48 8d 05 4a 40 00 00 	lea    0x404a(%rip),%rax        # 140009070 <.rdata>
   140005026:	48 19 ff             	sbb    %rdi,%rdi
   140005029:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000502e:	c6 44 24 40 00       	movb   $0x0,0x40(%rsp)
   140005033:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
   14000503a:	00 00 
   14000503c:	48 83 c7 01          	add    $0x1,%rdi
   140005040:	48 89 e9             	mov    %rbp,%rcx
   140005043:	80 7e 1c 00          	cmpb   $0x0,0x1c(%rsi)
   140005047:	4c 0f 45 e0          	cmovne %rax,%r12
   14000504b:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140005050:	48 01 fa             	add    %rdi,%rdx
   140005053:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
   140005058:	e8 3b 12 00 00       	call   140006298 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   14000505d:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140005064:	ff ff 3f 
   140005067:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
   14000506c:	48 39 f8             	cmp    %rdi,%rax
   14000506f:	0f 82 58 01 00 00    	jb     1400051cd <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1dd>
   140005075:	49 89 f8             	mov    %rdi,%r8
   140005078:	4c 89 e2             	mov    %r12,%rdx
   14000507b:	48 89 e9             	mov    %rbp,%rcx
   14000507e:	e8 0d 12 00 00       	call   140006290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140005083:	4c 8b 43 08          	mov    0x8(%rbx),%r8
   140005087:	48 8b 13             	mov    (%rbx),%rdx
   14000508a:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140005091:	ff ff 3f 
   140005094:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
   140005099:	4c 39 c0             	cmp    %r8,%rax
   14000509c:	0f 82 1f 01 00 00    	jb     1400051c1 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1d1>
   1400050a2:	48 89 e9             	mov    %rbp,%rcx
   1400050a5:	e8 e6 11 00 00       	call   140006290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   1400050aa:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400050af:	48 8b 0b             	mov    (%rbx),%rcx
   1400050b2:	48 39 f0             	cmp    %rsi,%rax
   1400050b5:	0f 84 bd 00 00 00    	je     140005178 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x188>
   1400050bb:	48 8d 53 10          	lea    0x10(%rbx),%rdx
   1400050bf:	48 39 d1             	cmp    %rdx,%rcx
   1400050c2:	74 5c                	je     140005120 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x130>
   1400050c4:	f3 0f 6f 44 24 38    	movdqu 0x38(%rsp),%xmm0
   1400050ca:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   1400050ce:	48 89 03             	mov    %rax,(%rbx)
   1400050d1:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
   1400050d5:	48 85 c9             	test   %rcx,%rcx
   1400050d8:	74 53                	je     14000512d <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x13d>
   1400050da:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
   1400050df:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   1400050e4:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
   1400050eb:	00 00 
   1400050ed:	c6 01 00             	movb   $0x0,(%rcx)
   1400050f0:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   1400050f5:	48 39 f1             	cmp    %rsi,%rcx
   1400050f8:	74 0e                	je     140005108 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x118>
   1400050fa:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   1400050ff:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140005103:	e8 08 11 00 00       	call   140006210 <_ZdlPvy>
   140005108:	48 89 d8             	mov    %rbx,%rax
   14000510b:	48 83 c4 50          	add    $0x50,%rsp
   14000510f:	5b                   	pop    %rbx
   140005110:	5e                   	pop    %rsi
   140005111:	5f                   	pop    %rdi
   140005112:	5d                   	pop    %rbp
   140005113:	41 5c                	pop    %r12
   140005115:	c3                   	ret
   140005116:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000511d:	00 00 00 
   140005120:	f3 0f 6f 4c 24 38    	movdqu 0x38(%rsp),%xmm1
   140005126:	48 89 03             	mov    %rax,(%rbx)
   140005129:	0f 11 4b 08          	movups %xmm1,0x8(%rbx)
   14000512d:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
   140005132:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140005137:	48 89 f1             	mov    %rsi,%rcx
   14000513a:	eb a8                	jmp    1400050e4 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xf4>
   14000513c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005140:	4c 8b 4b 08          	mov    0x8(%rbx),%r9
   140005144:	01 c0                	add    %eax,%eax
   140005146:	89 c0                	mov    %eax,%eax
   140005148:	4c 89 ca             	mov    %r9,%rdx
   14000514b:	48 29 c2             	sub    %rax,%rdx
   14000514e:	0f 82 85 00 00 00    	jb     1400051d9 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1e9>
   140005154:	48 c7 44 24 20 01 00 	movq   $0x1,0x20(%rsp)
   14000515b:	00 00 
   14000515d:	4c 8d 0d 63 3f 00 00 	lea    0x3f63(%rip),%r9        # 1400090c7 <.rdata+0x57>
   140005164:	45 31 c0             	xor    %r8d,%r8d
   140005167:	48 89 d9             	mov    %rbx,%rcx
   14000516a:	e8 31 11 00 00       	call   1400062a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   14000516f:	e9 9c fe ff ff       	jmp    140005010 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x20>
   140005174:	0f 1f 40 00          	nopl   0x0(%rax)
   140005178:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   14000517d:	4d 85 c0             	test   %r8,%r8
   140005180:	74 16                	je     140005198 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1a8>
   140005182:	49 83 f8 01          	cmp    $0x1,%r8
   140005186:	74 28                	je     1400051b0 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1c0>
   140005188:	48 89 f2             	mov    %rsi,%rdx
   14000518b:	e8 00 23 00 00       	call   140007490 <memcpy>
   140005190:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   140005195:	48 8b 0b             	mov    (%rbx),%rcx
   140005198:	4c 89 43 08          	mov    %r8,0x8(%rbx)
   14000519c:	42 c6 04 01 00       	movb   $0x0,(%rcx,%r8,1)
   1400051a1:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   1400051a6:	e9 39 ff ff ff       	jmp    1400050e4 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xf4>
   1400051ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400051b0:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
   1400051b5:	88 01                	mov    %al,(%rcx)
   1400051b7:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   1400051bc:	48 8b 0b             	mov    (%rbx),%rcx
   1400051bf:	eb d7                	jmp    140005198 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1a8>
   1400051c1:	48 8d 0d 01 3f 00 00 	lea    0x3f01(%rip),%rcx        # 1400090c9 <.rdata+0x59>
   1400051c8:	e8 53 10 00 00       	call   140006220 <_ZSt20__throw_length_errorPKc>
   1400051cd:	48 8d 0d f5 3e 00 00 	lea    0x3ef5(%rip),%rcx        # 1400090c9 <.rdata+0x59>
   1400051d4:	e8 47 10 00 00       	call   140006220 <_ZSt20__throw_length_errorPKc>
   1400051d9:	49 89 d0             	mov    %rdx,%r8
   1400051dc:	48 8d 0d ad 3e 00 00 	lea    0x3ead(%rip),%rcx        # 140009090 <.rdata+0x20>
   1400051e3:	48 8d 15 89 3e 00 00 	lea    0x3e89(%rip),%rdx        # 140009073 <.rdata+0x3>
   1400051ea:	e8 29 10 00 00       	call   140006218 <_ZSt24__throw_out_of_range_fmtPKcz>
   1400051ef:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   1400051f4:	48 89 c7             	mov    %rax,%rdi
   1400051f7:	48 39 f1             	cmp    %rsi,%rcx
   1400051fa:	74 0e                	je     14000520a <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x21a>
   1400051fc:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140005201:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140005205:	e8 06 10 00 00       	call   140006210 <_ZdlPvy>
   14000520a:	48 8b 0b             	mov    (%rbx),%rcx
   14000520d:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140005211:	48 39 c1             	cmp    %rax,%rcx
   140005214:	74 0d                	je     140005223 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x233>
   140005216:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   14000521a:	48 83 c2 01          	add    $0x1,%rdx
   14000521e:	e8 ed 0f 00 00       	call   140006210 <_ZdlPvy>
   140005223:	48 89 f9             	mov    %rdi,%rcx
   140005226:	e8 35 21 00 00       	call   140007360 <_Unwind_Resume>
   14000522b:	48 89 c7             	mov    %rax,%rdi
   14000522e:	eb da                	jmp    14000520a <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x21a>

0000000140005230 <_ZN15SignedMagnitude10mulDivSignES_>:
   140005230:	0f b6 42 1c          	movzbl 0x1c(%rdx),%eax
   140005234:	22 41 1c             	and    0x1c(%rcx),%al
   140005237:	83 f0 01             	xor    $0x1,%eax
   14000523a:	c3                   	ret
   14000523b:	90                   	nop
   14000523c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005240 <_ZN15SignedMagnitude7subSignES_>:
   140005240:	41 54                	push   %r12
   140005242:	55                   	push   %rbp
   140005243:	57                   	push   %rdi
   140005244:	56                   	push   %rsi
   140005245:	53                   	push   %rbx
   140005246:	48 83 ec 40          	sub    $0x40,%rsp
   14000524a:	48 8b 1a             	mov    (%rdx),%rbx
   14000524d:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005252:	48 89 cd             	mov    %rcx,%rbp
   140005255:	48 89 d6             	mov    %rdx,%rsi
   140005258:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000525f:	00 00 
   140005261:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140005266:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000526a:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   14000526f:	48 39 da             	cmp    %rbx,%rdx
   140005272:	74 2e                	je     1400052a2 <_ZN15SignedMagnitude7subSignES_+0x62>
   140005274:	0f 1f 40 00          	nopl   0x0(%rax)
   140005278:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000527d:	e8 86 0f 00 00       	call   140006208 <_Znwy>
   140005282:	48 89 c1             	mov    %rax,%rcx
   140005285:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005289:	48 89 fa             	mov    %rdi,%rdx
   14000528c:	88 41 10             	mov    %al,0x10(%rcx)
   14000528f:	e8 d4 0f 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005294:	48 8b 1b             	mov    (%rbx),%rbx
   140005297:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   14000529d:	48 39 de             	cmp    %rbx,%rsi
   1400052a0:	75 d6                	jne    140005278 <_ZN15SignedMagnitude7subSignES_+0x38>
   1400052a2:	48 89 fa             	mov    %rdi,%rdx
   1400052a5:	48 89 e9             	mov    %rbp,%rcx
   1400052a8:	e8 03 d4 ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   1400052ad:	41 89 c4             	mov    %eax,%r12d
   1400052b0:	48 89 f9             	mov    %rdi,%rcx
   1400052b3:	e8 28 c8 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400052b8:	45 84 e4             	test   %r12b,%r12b
   1400052bb:	74 13                	je     1400052d0 <_ZN15SignedMagnitude7subSignES_+0x90>
   1400052bd:	44 0f b6 65 1c       	movzbl 0x1c(%rbp),%r12d
   1400052c2:	44 89 e0             	mov    %r12d,%eax
   1400052c5:	48 83 c4 40          	add    $0x40,%rsp
   1400052c9:	5b                   	pop    %rbx
   1400052ca:	5e                   	pop    %rsi
   1400052cb:	5f                   	pop    %rdi
   1400052cc:	5d                   	pop    %rbp
   1400052cd:	41 5c                	pop    %r12
   1400052cf:	c3                   	ret
   1400052d0:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   1400052d5:	48 8b 1e             	mov    (%rsi),%rbx
   1400052d8:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400052df:	00 00 
   1400052e1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400052e5:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400052ea:	48 39 de             	cmp    %rbx,%rsi
   1400052ed:	74 2b                	je     14000531a <_ZN15SignedMagnitude7subSignES_+0xda>
   1400052ef:	90                   	nop
   1400052f0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400052f5:	e8 0e 0f 00 00       	call   140006208 <_Znwy>
   1400052fa:	48 89 c1             	mov    %rax,%rcx
   1400052fd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005301:	48 89 fa             	mov    %rdi,%rdx
   140005304:	88 41 10             	mov    %al,0x10(%rcx)
   140005307:	e8 5c 0f 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000530c:	48 8b 1b             	mov    (%rbx),%rbx
   14000530f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005315:	48 39 de             	cmp    %rbx,%rsi
   140005318:	75 d6                	jne    1400052f0 <_ZN15SignedMagnitude7subSignES_+0xb0>
   14000531a:	48 89 fa             	mov    %rdi,%rdx
   14000531d:	48 89 e9             	mov    %rbp,%rcx
   140005320:	e8 3b d5 ff ff       	call   140002860 <_ZN13NaturalBinaryeqES_>
   140005325:	89 c3                	mov    %eax,%ebx
   140005327:	48 89 f9             	mov    %rdi,%rcx
   14000532a:	e8 b1 c7 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000532f:	84 db                	test   %bl,%bl
   140005331:	75 8f                	jne    1400052c2 <_ZN15SignedMagnitude7subSignES_+0x82>
   140005333:	44 0f b6 66 1c       	movzbl 0x1c(%rsi),%r12d
   140005338:	41 83 f4 01          	xor    $0x1,%r12d
   14000533c:	eb 84                	jmp    1400052c2 <_ZN15SignedMagnitude7subSignES_+0x82>
   14000533e:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005343:	48 89 c3             	mov    %rax,%rbx
   140005346:	48 39 f9             	cmp    %rdi,%rcx
   140005349:	74 1d                	je     140005368 <_ZN15SignedMagnitude7subSignES_+0x128>
   14000534b:	48 8b 31             	mov    (%rcx),%rsi
   14000534e:	ba 18 00 00 00       	mov    $0x18,%edx
   140005353:	e8 b8 0e 00 00       	call   140006210 <_ZdlPvy>
   140005358:	48 89 f1             	mov    %rsi,%rcx
   14000535b:	eb e9                	jmp    140005346 <_ZN15SignedMagnitude7subSignES_+0x106>
   14000535d:	48 89 f9             	mov    %rdi,%rcx
   140005360:	48 89 c3             	mov    %rax,%rbx
   140005363:	e8 78 c7 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005368:	48 89 d9             	mov    %rbx,%rcx
   14000536b:	e8 f0 1f 00 00       	call   140007360 <_Unwind_Resume>
   140005370:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005375:	48 89 c3             	mov    %rax,%rbx
   140005378:	48 39 f9             	cmp    %rdi,%rcx
   14000537b:	74 eb                	je     140005368 <_ZN15SignedMagnitude7subSignES_+0x128>
   14000537d:	48 8b 31             	mov    (%rcx),%rsi
   140005380:	ba 18 00 00 00       	mov    $0x18,%edx
   140005385:	e8 86 0e 00 00       	call   140006210 <_ZdlPvy>
   14000538a:	48 89 f1             	mov    %rsi,%rcx
   14000538d:	eb e9                	jmp    140005378 <_ZN15SignedMagnitude7subSignES_+0x138>
   14000538f:	eb cc                	jmp    14000535d <_ZN15SignedMagnitude7subSignES_+0x11d>
   140005391:	90                   	nop
   140005392:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005399:	00 00 00 00 
   14000539d:	0f 1f 00             	nopl   (%rax)

00000001400053a0 <_ZN15SignedMagnitude15alignModuleWithES_>:
   1400053a0:	41 54                	push   %r12
   1400053a2:	55                   	push   %rbp
   1400053a3:	57                   	push   %rdi
   1400053a4:	56                   	push   %rsi
   1400053a5:	53                   	push   %rbx
   1400053a6:	48 83 ec 30          	sub    $0x30,%rsp
   1400053aa:	48 89 cb             	mov    %rcx,%rbx
   1400053ad:	48 89 d5             	mov    %rdx,%rbp
   1400053b0:	4d 89 c4             	mov    %r8,%r12
   1400053b3:	e8 88 c5 ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   1400053b8:	48 39 dd             	cmp    %rbx,%rbp
   1400053bb:	74 0b                	je     1400053c8 <_ZN15SignedMagnitude15alignModuleWithES_+0x28>
   1400053bd:	48 89 ea             	mov    %rbp,%rdx
   1400053c0:	48 89 d9             	mov    %rbx,%rcx
   1400053c3:	e8 78 f8 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400053c8:	8b 55 18             	mov    0x18(%rbp),%edx
   1400053cb:	41 8b 74 24 10       	mov    0x10(%r12),%esi
   1400053d0:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   1400053d5:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   1400053da:	01 d6                	add    %edx,%esi
   1400053dc:	29 c6                	sub    %eax,%esi
   1400053de:	2b 73 10             	sub    0x10(%rbx),%esi
   1400053e1:	85 f6                	test   %esi,%esi
   1400053e3:	7e 3c                	jle    140005421 <_ZN15SignedMagnitude15alignModuleWithES_+0x81>
   1400053e5:	0f 1f 00             	nopl   (%rax)
   1400053e8:	31 d2                	xor    %edx,%edx
   1400053ea:	48 89 f9             	mov    %rdi,%rcx
   1400053ed:	e8 8e c2 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400053f2:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400053f7:	e8 0c 0e 00 00       	call   140006208 <_Znwy>
   1400053fc:	48 89 c1             	mov    %rax,%rcx
   1400053ff:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140005404:	48 89 da             	mov    %rbx,%rdx
   140005407:	88 41 10             	mov    %al,0x10(%rcx)
   14000540a:	e8 59 0e 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000540f:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   140005414:	83 ee 01             	sub    $0x1,%esi
   140005417:	75 cf                	jne    1400053e8 <_ZN15SignedMagnitude15alignModuleWithES_+0x48>
   140005419:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   14000541e:	8b 55 18             	mov    0x18(%rbp),%edx
   140005421:	29 d0                	sub    %edx,%eax
   140005423:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   140005428:	89 c6                	mov    %eax,%esi
   14000542a:	85 c0                	test   %eax,%eax
   14000542c:	7e 36                	jle    140005464 <_ZN15SignedMagnitude15alignModuleWithES_+0xc4>
   14000542e:	66 90                	xchg   %ax,%ax
   140005430:	31 d2                	xor    %edx,%edx
   140005432:	48 89 f9             	mov    %rdi,%rcx
   140005435:	e8 46 c2 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000543a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000543f:	48 8b 2b             	mov    (%rbx),%rbp
   140005442:	e8 c1 0d 00 00       	call   140006208 <_Znwy>
   140005447:	48 89 c1             	mov    %rax,%rcx
   14000544a:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   14000544f:	48 89 ea             	mov    %rbp,%rdx
   140005452:	88 41 10             	mov    %al,0x10(%rcx)
   140005455:	e8 0e 0e 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000545a:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   14000545f:	83 ee 01             	sub    $0x1,%esi
   140005462:	75 cc                	jne    140005430 <_ZN15SignedMagnitude15alignModuleWithES_+0x90>
   140005464:	48 89 d8             	mov    %rbx,%rax
   140005467:	48 83 c4 30          	add    $0x30,%rsp
   14000546b:	5b                   	pop    %rbx
   14000546c:	5e                   	pop    %rsi
   14000546d:	5f                   	pop    %rdi
   14000546e:	5d                   	pop    %rbp
   14000546f:	41 5c                	pop    %r12
   140005471:	c3                   	ret
   140005472:	48 89 c6             	mov    %rax,%rsi
   140005475:	48 89 d9             	mov    %rbx,%rcx
   140005478:	e8 63 c6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000547d:	48 89 f1             	mov    %rsi,%rcx
   140005480:	e8 db 1e 00 00       	call   140007360 <_Unwind_Resume>
   140005485:	90                   	nop
   140005486:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000548d:	00 00 00 

0000000140005490 <_ZN15SignedMagnitudeplES_>:
   140005490:	41 57                	push   %r15
   140005492:	41 56                	push   %r14
   140005494:	41 55                	push   %r13
   140005496:	41 54                	push   %r12
   140005498:	55                   	push   %rbp
   140005499:	57                   	push   %rdi
   14000549a:	56                   	push   %rsi
   14000549b:	53                   	push   %rbx
   14000549c:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
   1400054a3:	0f 11 b4 24 b0 00 00 	movups %xmm6,0xb0(%rsp)
   1400054aa:	00 
   1400054ab:	49 8b 28             	mov    (%r8),%rbp
   1400054ae:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
   1400054b3:	49 89 cc             	mov    %rcx,%r12
   1400054b6:	48 89 d7             	mov    %rdx,%rdi
   1400054b9:	4c 89 c3             	mov    %r8,%rbx
   1400054bc:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400054c1:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   1400054c8:	00 00 00 00 00 
   1400054cd:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400054d1:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   1400054d6:	49 39 e8             	cmp    %rbp,%r8
   1400054d9:	74 33                	je     14000550e <_ZN15SignedMagnitudeplES_+0x7e>
   1400054db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400054e0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400054e5:	e8 1e 0d 00 00       	call   140006208 <_Znwy>
   1400054ea:	48 89 c1             	mov    %rax,%rcx
   1400054ed:	0f b6 45 10          	movzbl 0x10(%rbp),%eax
   1400054f1:	48 89 f2             	mov    %rsi,%rdx
   1400054f4:	88 41 10             	mov    %al,0x10(%rcx)
   1400054f7:	e8 6c 0d 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400054fc:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140005500:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140005507:	00 01 
   140005509:	48 39 eb             	cmp    %rbp,%rbx
   14000550c:	75 d2                	jne    1400054e0 <_ZN15SignedMagnitudeplES_+0x50>
   14000550e:	8b 43 18             	mov    0x18(%rbx),%eax
   140005511:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
   140005516:	49 89 f0             	mov    %rsi,%r8
   140005519:	48 89 fa             	mov    %rdi,%rdx
   14000551c:	4c 89 f1             	mov    %r14,%rcx
   14000551f:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
   140005526:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   14000552a:	88 84 24 8c 00 00 00 	mov    %al,0x8c(%rsp)
   140005531:	e8 6a fe ff ff       	call   1400053a0 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005536:	48 8d ac 24 90 00 00 	lea    0x90(%rsp),%rbp
   14000553d:	00 
   14000553e:	48 89 f1             	mov    %rsi,%rcx
   140005541:	e8 9a c5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005546:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   14000554b:	4c 8b 2f             	mov    (%rdi),%r13
   14000554e:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   140005555:	00 00 00 00 00 
   14000555a:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   14000555e:	0f 11 b4 24 90 00 00 	movups %xmm6,0x90(%rsp)
   140005565:	00 
   140005566:	4c 39 ef             	cmp    %r13,%rdi
   140005569:	74 34                	je     14000559f <_ZN15SignedMagnitudeplES_+0x10f>
   14000556b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005570:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005575:	e8 8e 0c 00 00       	call   140006208 <_Znwy>
   14000557a:	48 89 c1             	mov    %rax,%rcx
   14000557d:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   140005582:	48 89 ea             	mov    %rbp,%rdx
   140005585:	88 41 10             	mov    %al,0x10(%rcx)
   140005588:	e8 db 0c 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000558d:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140005591:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   140005598:	00 01 
   14000559a:	4c 39 ef             	cmp    %r13,%rdi
   14000559d:	75 d1                	jne    140005570 <_ZN15SignedMagnitudeplES_+0xe0>
   14000559f:	8b 47 18             	mov    0x18(%rdi),%eax
   1400055a2:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
   1400055a7:	49 89 e8             	mov    %rbp,%r8
   1400055aa:	48 89 da             	mov    %rbx,%rdx
   1400055ad:	4c 89 e9             	mov    %r13,%rcx
   1400055b0:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
   1400055b7:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   1400055bb:	88 84 24 ac 00 00 00 	mov    %al,0xac(%rsp)
   1400055c2:	e8 d9 fd ff ff       	call   1400053a0 <_ZN15SignedMagnitude15alignModuleWithES_>
   1400055c7:	48 89 e9             	mov    %rbp,%rcx
   1400055ca:	e8 11 c5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400055cf:	4c 89 e1             	mov    %r12,%rcx
   1400055d2:	e8 69 c3 ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   1400055d7:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   1400055dd:	31 d2                	xor    %edx,%edx
   1400055df:	48 89 e9             	mov    %rbp,%rcx
   1400055e2:	e8 69 c3 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   1400055e7:	48 89 ea             	mov    %rbp,%rdx
   1400055ea:	4c 89 e1             	mov    %r12,%rcx
   1400055ed:	e8 4e f6 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400055f2:	48 89 e9             	mov    %rbp,%rcx
   1400055f5:	e8 e6 c4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400055fa:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   1400055fe:	41 c7 44 24 18 00 00 	movl   $0x0,0x18(%r12)
   140005605:	00 00 
   140005607:	38 47 1c             	cmp    %al,0x1c(%rdi)
   14000560a:	0f 84 f8 00 00 00    	je     140005708 <_ZN15SignedMagnitudeplES_+0x278>
   140005610:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140005615:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   14000561a:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   140005621:	00 00 00 00 00 
   140005626:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000562a:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   140005631:	00 
   140005632:	4d 39 ef             	cmp    %r13,%r15
   140005635:	74 37                	je     14000566e <_ZN15SignedMagnitudeplES_+0x1de>
   140005637:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000563e:	00 00 
   140005640:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005645:	e8 be 0b 00 00       	call   140006208 <_Znwy>
   14000564a:	48 89 c1             	mov    %rax,%rcx
   14000564d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   140005652:	48 89 ea             	mov    %rbp,%rdx
   140005655:	88 41 10             	mov    %al,0x10(%rcx)
   140005658:	e8 0b 0c 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000565d:	4d 8b 3f             	mov    (%r15),%r15
   140005660:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   140005667:	00 01 
   140005669:	4d 39 ef             	cmp    %r13,%r15
   14000566c:	75 d2                	jne    140005640 <_ZN15SignedMagnitudeplES_+0x1b0>
   14000566e:	48 89 ea             	mov    %rbp,%rdx
   140005671:	4c 89 f1             	mov    %r14,%rcx
   140005674:	e8 c7 d4 ff ff       	call   140002b40 <_ZN13NaturalBinarygeES_>
   140005679:	48 89 e9             	mov    %rbp,%rcx
   14000567c:	41 89 c7             	mov    %eax,%r15d
   14000567f:	e8 5c c4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005684:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140005689:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140005690:	00 00 00 00 00 
   140005695:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005699:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   14000569e:	45 84 ff             	test   %r15b,%r15b
   1400056a1:	0f 84 89 01 00 00    	je     140005830 <_ZN15SignedMagnitudeplES_+0x3a0>
   1400056a7:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   1400056ac:	4d 39 ef             	cmp    %r13,%r15
   1400056af:	74 35                	je     1400056e6 <_ZN15SignedMagnitudeplES_+0x256>
   1400056b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400056b8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400056bd:	e8 46 0b 00 00       	call   140006208 <_Znwy>
   1400056c2:	48 89 c1             	mov    %rax,%rcx
   1400056c5:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400056ca:	48 89 f2             	mov    %rsi,%rdx
   1400056cd:	88 41 10             	mov    %al,0x10(%rcx)
   1400056d0:	e8 93 0b 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400056d5:	4d 8b 3f             	mov    (%r15),%r15
   1400056d8:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   1400056df:	00 01 
   1400056e1:	4d 39 ef             	cmp    %r13,%r15
   1400056e4:	75 d2                	jne    1400056b8 <_ZN15SignedMagnitudeplES_+0x228>
   1400056e6:	49 89 f0             	mov    %rsi,%r8
   1400056e9:	4c 89 f2             	mov    %r14,%rdx
   1400056ec:	48 89 e9             	mov    %rbp,%rcx
   1400056ef:	e8 4c c7 ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   1400056f4:	48 89 ea             	mov    %rbp,%rdx
   1400056f7:	4c 89 e1             	mov    %r12,%rcx
   1400056fa:	e8 41 f5 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400056ff:	eb 76                	jmp    140005777 <_ZN15SignedMagnitudeplES_+0x2e7>
   140005701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005708:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000570d:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140005712:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140005719:	00 00 00 00 00 
   14000571e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005722:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140005727:	4d 39 ef             	cmp    %r13,%r15
   14000572a:	74 32                	je     14000575e <_ZN15SignedMagnitudeplES_+0x2ce>
   14000572c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005730:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005735:	e8 ce 0a 00 00       	call   140006208 <_Znwy>
   14000573a:	48 89 c1             	mov    %rax,%rcx
   14000573d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   140005742:	48 89 f2             	mov    %rsi,%rdx
   140005745:	88 41 10             	mov    %al,0x10(%rcx)
   140005748:	e8 1b 0b 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000574d:	4d 8b 3f             	mov    (%r15),%r15
   140005750:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140005757:	00 01 
   140005759:	4d 39 ef             	cmp    %r13,%r15
   14000575c:	75 d2                	jne    140005730 <_ZN15SignedMagnitudeplES_+0x2a0>
   14000575e:	49 89 f0             	mov    %rsi,%r8
   140005761:	4c 89 f2             	mov    %r14,%rdx
   140005764:	48 89 e9             	mov    %rbp,%rcx
   140005767:	e8 b4 c3 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   14000576c:	48 89 ea             	mov    %rbp,%rdx
   14000576f:	4c 89 e1             	mov    %r12,%rcx
   140005772:	e8 c9 f4 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005777:	48 89 e9             	mov    %rbp,%rcx
   14000577a:	e8 61 c3 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000577f:	48 89 f1             	mov    %rsi,%rcx
   140005782:	e8 59 c3 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005787:	0f b6 53 1c          	movzbl 0x1c(%rbx),%edx
   14000578b:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   14000578f:	88 54 24 2f          	mov    %dl,0x2f(%rsp)
   140005793:	84 d2                	test   %dl,%dl
   140005795:	74 19                	je     1400057b0 <_ZN15SignedMagnitudeplES_+0x320>
   140005797:	84 c0                	test   %al,%al
   140005799:	0f 84 77 01 00 00    	je     140005916 <_ZN15SignedMagnitudeplES_+0x486>
   14000579f:	41 c6 44 24 1c 01    	movb   $0x1,0x1c(%r12)
   1400057a5:	eb 17                	jmp    1400057be <_ZN15SignedMagnitudeplES_+0x32e>
   1400057a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400057ae:	00 00 
   1400057b0:	84 c0                	test   %al,%al
   1400057b2:	0f 85 d4 00 00 00    	jne    14000588c <_ZN15SignedMagnitudeplES_+0x3fc>
   1400057b8:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   1400057be:	4c 89 e1             	mov    %r12,%rcx
   1400057c1:	e8 9a cc ff ff       	call   140002460 <_ZN13NaturalBinary8optimizeEv>
   1400057c6:	31 d2                	xor    %edx,%edx
   1400057c8:	48 89 e9             	mov    %rbp,%rcx
   1400057cb:	e8 80 c1 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   1400057d0:	48 89 ea             	mov    %rbp,%rdx
   1400057d3:	4c 89 e1             	mov    %r12,%rcx
   1400057d6:	e8 d5 ce ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   1400057db:	89 c6                	mov    %eax,%esi
   1400057dd:	48 89 e9             	mov    %rbp,%rcx
   1400057e0:	e8 fb c2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400057e5:	40 84 f6             	test   %sil,%sil
   1400057e8:	74 10                	je     1400057fa <_ZN15SignedMagnitudeplES_+0x36a>
   1400057ea:	8b 47 18             	mov    0x18(%rdi),%eax
   1400057ed:	8b 53 18             	mov    0x18(%rbx),%edx
   1400057f0:	39 d0                	cmp    %edx,%eax
   1400057f2:	0f 42 c2             	cmovb  %edx,%eax
   1400057f5:	41 89 44 24 18       	mov    %eax,0x18(%r12)
   1400057fa:	4c 89 e9             	mov    %r13,%rcx
   1400057fd:	e8 de c2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005802:	4c 89 f1             	mov    %r14,%rcx
   140005805:	e8 d6 c2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000580a:	90                   	nop
   14000580b:	0f 10 b4 24 b0 00 00 	movups 0xb0(%rsp),%xmm6
   140005812:	00 
   140005813:	4c 89 e0             	mov    %r12,%rax
   140005816:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
   14000581d:	5b                   	pop    %rbx
   14000581e:	5e                   	pop    %rsi
   14000581f:	5f                   	pop    %rdi
   140005820:	5d                   	pop    %rbp
   140005821:	41 5c                	pop    %r12
   140005823:	41 5d                	pop    %r13
   140005825:	41 5e                	pop    %r14
   140005827:	41 5f                	pop    %r15
   140005829:	c3                   	ret
   14000582a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005830:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
   140005835:	4d 39 f7             	cmp    %r14,%r15
   140005838:	74 34                	je     14000586e <_ZN15SignedMagnitudeplES_+0x3de>
   14000583a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005840:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005845:	e8 be 09 00 00       	call   140006208 <_Znwy>
   14000584a:	48 89 c1             	mov    %rax,%rcx
   14000584d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   140005852:	48 89 f2             	mov    %rsi,%rdx
   140005855:	88 41 10             	mov    %al,0x10(%rcx)
   140005858:	e8 0b 0a 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000585d:	4d 8b 3f             	mov    (%r15),%r15
   140005860:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140005867:	00 01 
   140005869:	4d 39 f7             	cmp    %r14,%r15
   14000586c:	75 d2                	jne    140005840 <_ZN15SignedMagnitudeplES_+0x3b0>
   14000586e:	49 89 f0             	mov    %rsi,%r8
   140005871:	4c 89 ea             	mov    %r13,%rdx
   140005874:	48 89 e9             	mov    %rbp,%rcx
   140005877:	e8 c4 c5 ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   14000587c:	48 89 ea             	mov    %rbp,%rdx
   14000587f:	4c 89 e1             	mov    %r12,%rcx
   140005882:	e8 b9 f3 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005887:	e9 eb fe ff ff       	jmp    140005777 <_ZN15SignedMagnitudeplES_+0x2e7>
   14000588c:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140005891:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140005896:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   14000589d:	00 00 00 00 00 
   1400058a2:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400058a6:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   1400058ad:	00 
   1400058ae:	4d 39 ef             	cmp    %r13,%r15
   1400058b1:	74 33                	je     1400058e6 <_ZN15SignedMagnitudeplES_+0x456>
   1400058b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400058b8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400058bd:	e8 46 09 00 00       	call   140006208 <_Znwy>
   1400058c2:	48 89 c1             	mov    %rax,%rcx
   1400058c5:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400058ca:	48 89 ea             	mov    %rbp,%rdx
   1400058cd:	88 41 10             	mov    %al,0x10(%rcx)
   1400058d0:	e8 93 09 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400058d5:	4d 8b 3f             	mov    (%r15),%r15
   1400058d8:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   1400058df:	00 01 
   1400058e1:	4d 39 ef             	cmp    %r13,%r15
   1400058e4:	75 d2                	jne    1400058b8 <_ZN15SignedMagnitudeplES_+0x428>
   1400058e6:	48 89 ea             	mov    %rbp,%rdx
   1400058e9:	4c 89 f1             	mov    %r14,%rcx
   1400058ec:	e8 bf cd ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   1400058f1:	41 88 44 24 1c       	mov    %al,0x1c(%r12)
   1400058f6:	48 89 e9             	mov    %rbp,%rcx
   1400058f9:	e8 e2 c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400058fe:	80 7c 24 2f 00       	cmpb   $0x0,0x2f(%rsp)
   140005903:	0f 84 b5 fe ff ff    	je     1400057be <_ZN15SignedMagnitudeplES_+0x32e>
   140005909:	48 89 f1             	mov    %rsi,%rcx
   14000590c:	e8 cf c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005911:	e9 a8 fe ff ff       	jmp    1400057be <_ZN15SignedMagnitudeplES_+0x32e>
   140005916:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000591b:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140005920:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140005927:	00 00 00 00 00 
   14000592c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005930:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140005935:	4d 39 ef             	cmp    %r13,%r15
   140005938:	74 34                	je     14000596e <_ZN15SignedMagnitudeplES_+0x4de>
   14000593a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005940:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005945:	e8 be 08 00 00       	call   140006208 <_Znwy>
   14000594a:	48 89 c1             	mov    %rax,%rcx
   14000594d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   140005952:	48 89 f2             	mov    %rsi,%rdx
   140005955:	88 41 10             	mov    %al,0x10(%rcx)
   140005958:	e8 0b 09 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000595d:	4d 8b 3f             	mov    (%r15),%r15
   140005960:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140005967:	00 01 
   140005969:	4d 39 ef             	cmp    %r13,%r15
   14000596c:	75 d2                	jne    140005940 <_ZN15SignedMagnitudeplES_+0x4b0>
   14000596e:	48 89 f2             	mov    %rsi,%rdx
   140005971:	4c 89 f1             	mov    %r14,%rcx
   140005974:	e8 97 cb ff ff       	call   140002510 <_ZN13NaturalBinaryltES_>
   140005979:	84 c0                	test   %al,%al
   14000597b:	74 08                	je     140005985 <_ZN15SignedMagnitudeplES_+0x4f5>
   14000597d:	41 c6 44 24 1c 01    	movb   $0x1,0x1c(%r12)
   140005983:	eb 84                	jmp    140005909 <_ZN15SignedMagnitudeplES_+0x479>
   140005985:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140005989:	88 44 24 2f          	mov    %al,0x2f(%rsp)
   14000598d:	84 c0                	test   %al,%al
   14000598f:	0f 85 f7 fe ff ff    	jne    14000588c <_ZN15SignedMagnitudeplES_+0x3fc>
   140005995:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   14000599b:	e9 69 ff ff ff       	jmp    140005909 <_ZN15SignedMagnitudeplES_+0x479>
   1400059a0:	48 89 c3             	mov    %rax,%rbx
   1400059a3:	48 89 f1             	mov    %rsi,%rcx
   1400059a6:	e8 35 c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059ab:	4c 89 e1             	mov    %r12,%rcx
   1400059ae:	e8 2d c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059b3:	4c 89 e9             	mov    %r13,%rcx
   1400059b6:	e8 25 c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059bb:	4c 89 f1             	mov    %r14,%rcx
   1400059be:	e8 1d c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059c3:	48 89 d9             	mov    %rbx,%rcx
   1400059c6:	e8 95 19 00 00       	call   140007360 <_Unwind_Resume>
   1400059cb:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   1400059d2:	00 
   1400059d3:	48 89 c3             	mov    %rax,%rbx
   1400059d6:	48 39 e9             	cmp    %rbp,%rcx
   1400059d9:	74 1d                	je     1400059f8 <_ZN15SignedMagnitudeplES_+0x568>
   1400059db:	48 8b 39             	mov    (%rcx),%rdi
   1400059de:	ba 18 00 00 00       	mov    $0x18,%edx
   1400059e3:	e8 28 08 00 00       	call   140006210 <_ZdlPvy>
   1400059e8:	48 89 f9             	mov    %rdi,%rcx
   1400059eb:	eb e9                	jmp    1400059d6 <_ZN15SignedMagnitudeplES_+0x546>
   1400059ed:	48 89 e9             	mov    %rbp,%rcx
   1400059f0:	48 89 c3             	mov    %rax,%rbx
   1400059f3:	e8 e8 c0 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059f8:	80 7c 24 2f 00       	cmpb   $0x0,0x2f(%rsp)
   1400059fd:	75 a4                	jne    1400059a3 <_ZN15SignedMagnitudeplES_+0x513>
   1400059ff:	eb aa                	jmp    1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005a01:	48 89 c3             	mov    %rax,%rbx
   140005a04:	eb a5                	jmp    1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005a06:	48 89 e9             	mov    %rbp,%rcx
   140005a09:	48 89 c3             	mov    %rax,%rbx
   140005a0c:	e8 cf c0 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005a11:	eb 98                	jmp    1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005a13:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   140005a1a:	00 
   140005a1b:	48 89 c3             	mov    %rax,%rbx
   140005a1e:	48 39 e9             	cmp    %rbp,%rcx
   140005a21:	74 88                	je     1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005a23:	48 8b 31             	mov    (%rcx),%rsi
   140005a26:	ba 18 00 00 00       	mov    $0x18,%edx
   140005a2b:	e8 e0 07 00 00       	call   140006210 <_ZdlPvy>
   140005a30:	48 89 f1             	mov    %rsi,%rcx
   140005a33:	eb e9                	jmp    140005a1e <_ZN15SignedMagnitudeplES_+0x58e>
   140005a35:	48 89 f1             	mov    %rsi,%rcx
   140005a38:	48 89 c3             	mov    %rax,%rbx
   140005a3b:	e8 a0 c0 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005a40:	48 89 d9             	mov    %rbx,%rcx
   140005a43:	e8 18 19 00 00       	call   140007360 <_Unwind_Resume>
   140005a48:	eb bc                	jmp    140005a06 <_ZN15SignedMagnitudeplES_+0x576>
   140005a4a:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140005a4f:	48 89 c3             	mov    %rax,%rbx
   140005a52:	48 39 f1             	cmp    %rsi,%rcx
   140005a55:	0f 84 50 ff ff ff    	je     1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005a5b:	48 8b 39             	mov    (%rcx),%rdi
   140005a5e:	ba 18 00 00 00       	mov    $0x18,%edx
   140005a63:	e8 a8 07 00 00       	call   140006210 <_ZdlPvy>
   140005a68:	48 89 f9             	mov    %rdi,%rcx
   140005a6b:	eb e5                	jmp    140005a52 <_ZN15SignedMagnitudeplES_+0x5c2>
   140005a6d:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140005a72:	48 89 c3             	mov    %rax,%rbx
   140005a75:	48 39 f1             	cmp    %rsi,%rcx
   140005a78:	74 c6                	je     140005a40 <_ZN15SignedMagnitudeplES_+0x5b0>
   140005a7a:	48 8b 39             	mov    (%rcx),%rdi
   140005a7d:	ba 18 00 00 00       	mov    $0x18,%edx
   140005a82:	e8 89 07 00 00       	call   140006210 <_ZdlPvy>
   140005a87:	48 89 f9             	mov    %rdi,%rcx
   140005a8a:	eb e9                	jmp    140005a75 <_ZN15SignedMagnitudeplES_+0x5e5>
   140005a8c:	48 89 e9             	mov    %rbp,%rcx
   140005a8f:	48 89 c3             	mov    %rax,%rbx
   140005a92:	e8 49 c0 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005a97:	e9 07 ff ff ff       	jmp    1400059a3 <_ZN15SignedMagnitudeplES_+0x513>
   140005a9c:	e9 60 ff ff ff       	jmp    140005a01 <_ZN15SignedMagnitudeplES_+0x571>
   140005aa1:	eb e9                	jmp    140005a8c <_ZN15SignedMagnitudeplES_+0x5fc>
   140005aa3:	e9 f8 fe ff ff       	jmp    1400059a0 <_ZN15SignedMagnitudeplES_+0x510>
   140005aa8:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140005aad:	48 89 c3             	mov    %rax,%rbx
   140005ab0:	48 39 f1             	cmp    %rsi,%rcx
   140005ab3:	0f 84 f2 fe ff ff    	je     1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005ab9:	48 8b 39             	mov    (%rcx),%rdi
   140005abc:	ba 18 00 00 00       	mov    $0x18,%edx
   140005ac1:	e8 4a 07 00 00       	call   140006210 <_ZdlPvy>
   140005ac6:	48 89 f9             	mov    %rdi,%rcx
   140005ac9:	eb e5                	jmp    140005ab0 <_ZN15SignedMagnitudeplES_+0x620>
   140005acb:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140005ad0:	48 89 c3             	mov    %rax,%rbx
   140005ad3:	48 39 f1             	cmp    %rsi,%rcx
   140005ad6:	0f 84 cf fe ff ff    	je     1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005adc:	48 8b 39             	mov    (%rcx),%rdi
   140005adf:	ba 18 00 00 00       	mov    $0x18,%edx
   140005ae4:	e8 27 07 00 00       	call   140006210 <_ZdlPvy>
   140005ae9:	48 89 f9             	mov    %rdi,%rcx
   140005aec:	eb e5                	jmp    140005ad3 <_ZN15SignedMagnitudeplES_+0x643>
   140005aee:	e9 ad fe ff ff       	jmp    1400059a0 <_ZN15SignedMagnitudeplES_+0x510>
   140005af3:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140005af8:	48 89 c3             	mov    %rax,%rbx
   140005afb:	48 39 f1             	cmp    %rsi,%rcx
   140005afe:	0f 84 a7 fe ff ff    	je     1400059ab <_ZN15SignedMagnitudeplES_+0x51b>
   140005b04:	48 8b 39             	mov    (%rcx),%rdi
   140005b07:	ba 18 00 00 00       	mov    $0x18,%edx
   140005b0c:	e8 ff 06 00 00       	call   140006210 <_ZdlPvy>
   140005b11:	48 89 f9             	mov    %rdi,%rcx
   140005b14:	eb e5                	jmp    140005afb <_ZN15SignedMagnitudeplES_+0x66b>
   140005b16:	48 89 e9             	mov    %rbp,%rcx
   140005b19:	48 89 c3             	mov    %rax,%rbx
   140005b1c:	e8 bf bf ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005b21:	e9 95 fe ff ff       	jmp    1400059bb <_ZN15SignedMagnitudeplES_+0x52b>
   140005b26:	48 89 c3             	mov    %rax,%rbx
   140005b29:	e9 85 fe ff ff       	jmp    1400059b3 <_ZN15SignedMagnitudeplES_+0x523>
   140005b2e:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   140005b35:	00 
   140005b36:	48 89 c3             	mov    %rax,%rbx
   140005b39:	48 39 e9             	cmp    %rbp,%rcx
   140005b3c:	0f 84 79 fe ff ff    	je     1400059bb <_ZN15SignedMagnitudeplES_+0x52b>
   140005b42:	48 8b 31             	mov    (%rcx),%rsi
   140005b45:	ba 18 00 00 00       	mov    $0x18,%edx
   140005b4a:	e8 c1 06 00 00       	call   140006210 <_ZdlPvy>
   140005b4f:	48 89 f1             	mov    %rsi,%rcx
   140005b52:	eb e5                	jmp    140005b39 <_ZN15SignedMagnitudeplES_+0x6a9>
   140005b54:	e9 33 ff ff ff       	jmp    140005a8c <_ZN15SignedMagnitudeplES_+0x5fc>
   140005b59:	e9 a8 fe ff ff       	jmp    140005a06 <_ZN15SignedMagnitudeplES_+0x576>
   140005b5e:	e9 3d fe ff ff       	jmp    1400059a0 <_ZN15SignedMagnitudeplES_+0x510>
   140005b63:	90                   	nop
   140005b64:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005b6b:	00 00 00 00 
   140005b6f:	90                   	nop

0000000140005b70 <_ZN15SignedMagnitudemiES_>:
   140005b70:	41 54                	push   %r12
   140005b72:	55                   	push   %rbp
   140005b73:	57                   	push   %rdi
   140005b74:	56                   	push   %rsi
   140005b75:	53                   	push   %rbx
   140005b76:	48 83 ec 40          	sub    $0x40,%rsp
   140005b7a:	41 0f b6 40 1c       	movzbl 0x1c(%r8),%eax
   140005b7f:	49 8b 18             	mov    (%r8),%rbx
   140005b82:	83 f0 01             	xor    $0x1,%eax
   140005b85:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005b8a:	41 88 40 1c          	mov    %al,0x1c(%r8)
   140005b8e:	48 89 cd             	mov    %rcx,%rbp
   140005b91:	49 89 d4             	mov    %rdx,%r12
   140005b94:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140005b99:	4c 89 c6             	mov    %r8,%rsi
   140005b9c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140005ba3:	00 00 
   140005ba5:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005ba9:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140005bae:	49 39 d8             	cmp    %rbx,%r8
   140005bb1:	74 33                	je     140005be6 <_ZN15SignedMagnitudemiES_+0x76>
   140005bb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005bb8:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005bbd:	e8 46 06 00 00       	call   140006208 <_Znwy>
   140005bc2:	48 89 c1             	mov    %rax,%rcx
   140005bc5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005bc9:	48 89 fa             	mov    %rdi,%rdx
   140005bcc:	88 41 10             	mov    %al,0x10(%rcx)
   140005bcf:	e8 94 06 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005bd4:	48 8b 1b             	mov    (%rbx),%rbx
   140005bd7:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005bdd:	48 39 de             	cmp    %rbx,%rsi
   140005be0:	75 d6                	jne    140005bb8 <_ZN15SignedMagnitudemiES_+0x48>
   140005be2:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005be6:	8b 56 18             	mov    0x18(%rsi),%edx
   140005be9:	49 89 f8             	mov    %rdi,%r8
   140005bec:	48 89 e9             	mov    %rbp,%rcx
   140005bef:	88 44 24 3c          	mov    %al,0x3c(%rsp)
   140005bf3:	89 54 24 38          	mov    %edx,0x38(%rsp)
   140005bf7:	4c 89 e2             	mov    %r12,%rdx
   140005bfa:	e8 91 f8 ff ff       	call   140005490 <_ZN15SignedMagnitudeplES_>
   140005bff:	48 89 f9             	mov    %rdi,%rcx
   140005c02:	e8 d9 be ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005c07:	48 89 e8             	mov    %rbp,%rax
   140005c0a:	48 83 c4 40          	add    $0x40,%rsp
   140005c0e:	5b                   	pop    %rbx
   140005c0f:	5e                   	pop    %rsi
   140005c10:	5f                   	pop    %rdi
   140005c11:	5d                   	pop    %rbp
   140005c12:	41 5c                	pop    %r12
   140005c14:	c3                   	ret
   140005c15:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005c1a:	48 89 c3             	mov    %rax,%rbx
   140005c1d:	48 39 f9             	cmp    %rdi,%rcx
   140005c20:	74 1d                	je     140005c3f <_ZN15SignedMagnitudemiES_+0xcf>
   140005c22:	48 8b 31             	mov    (%rcx),%rsi
   140005c25:	ba 18 00 00 00       	mov    $0x18,%edx
   140005c2a:	e8 e1 05 00 00       	call   140006210 <_ZdlPvy>
   140005c2f:	48 89 f1             	mov    %rsi,%rcx
   140005c32:	eb e9                	jmp    140005c1d <_ZN15SignedMagnitudemiES_+0xad>
   140005c34:	48 89 f9             	mov    %rdi,%rcx
   140005c37:	48 89 c3             	mov    %rax,%rbx
   140005c3a:	e8 a1 be ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005c3f:	48 89 d9             	mov    %rbx,%rcx
   140005c42:	e8 19 17 00 00       	call   140007360 <_Unwind_Resume>
   140005c47:	90                   	nop
   140005c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005c4f:	00 

0000000140005c50 <_ZN15SignedMagnitudemlES_>:
   140005c50:	41 55                	push   %r13
   140005c52:	41 54                	push   %r12
   140005c54:	55                   	push   %rbp
   140005c55:	57                   	push   %rdi
   140005c56:	56                   	push   %rsi
   140005c57:	53                   	push   %rbx
   140005c58:	48 83 ec 78          	sub    $0x78,%rsp
   140005c5c:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140005c61:	48 89 cf             	mov    %rcx,%rdi
   140005c64:	49 89 d5             	mov    %rdx,%r13
   140005c67:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140005c6c:	4c 89 c6             	mov    %r8,%rsi
   140005c6f:	e8 cc bc ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140005c74:	c6 47 1c 00          	movb   $0x0,0x1c(%rdi)
   140005c78:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140005c7d:	31 d2                	xor    %edx,%edx
   140005c7f:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   140005c84:	4c 89 e1             	mov    %r12,%rcx
   140005c87:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140005c8b:	e8 c0 bc ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140005c90:	4c 89 e2             	mov    %r12,%rdx
   140005c93:	48 89 f9             	mov    %rdi,%rcx
   140005c96:	e8 a5 ef ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005c9b:	4c 89 e1             	mov    %r12,%rcx
   140005c9e:	e8 3d be ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005ca3:	48 8b 1e             	mov    (%rsi),%rbx
   140005ca6:	0f 11 74 24 20       	movups %xmm6,0x20(%rsp)
   140005cab:	c7 47 18 00 00 00 00 	movl   $0x0,0x18(%rdi)
   140005cb2:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140005cb9:	00 00 
   140005cbb:	48 39 de             	cmp    %rbx,%rsi
   140005cbe:	74 2a                	je     140005cea <_ZN15SignedMagnitudemlES_+0x9a>
   140005cc0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005cc5:	e8 3e 05 00 00       	call   140006208 <_Znwy>
   140005cca:	48 89 c1             	mov    %rax,%rcx
   140005ccd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005cd1:	48 89 ea             	mov    %rbp,%rdx
   140005cd4:	88 41 10             	mov    %al,0x10(%rcx)
   140005cd7:	e8 8c 05 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005cdc:	48 8b 1b             	mov    (%rbx),%rbx
   140005cdf:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005ce5:	48 39 de             	cmp    %rbx,%rsi
   140005ce8:	75 d6                	jne    140005cc0 <_ZN15SignedMagnitudemlES_+0x70>
   140005cea:	49 89 e8             	mov    %rbp,%r8
   140005ced:	4c 89 ea             	mov    %r13,%rdx
   140005cf0:	4c 89 e1             	mov    %r12,%rcx
   140005cf3:	e8 48 d9 ff ff       	call   140003640 <_ZN13NaturalBinarymlES_>
   140005cf8:	4c 89 e2             	mov    %r12,%rdx
   140005cfb:	48 89 f9             	mov    %rdi,%rcx
   140005cfe:	e8 3d ef ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005d03:	4c 89 e1             	mov    %r12,%rcx
   140005d06:	e8 d5 bd ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005d0b:	48 89 e9             	mov    %rbp,%rcx
   140005d0e:	e8 cd bd ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005d13:	41 0f b6 45 1c       	movzbl 0x1c(%r13),%eax
   140005d18:	32 46 1c             	xor    0x1c(%rsi),%al
   140005d1b:	88 47 1c             	mov    %al,0x1c(%rdi)
   140005d1e:	8b 46 18             	mov    0x18(%rsi),%eax
   140005d21:	41 03 45 18          	add    0x18(%r13),%eax
   140005d25:	89 47 18             	mov    %eax,0x18(%rdi)
   140005d28:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140005d2d:	48 89 f8             	mov    %rdi,%rax
   140005d30:	48 83 c4 78          	add    $0x78,%rsp
   140005d34:	5b                   	pop    %rbx
   140005d35:	5e                   	pop    %rsi
   140005d36:	5f                   	pop    %rdi
   140005d37:	5d                   	pop    %rbp
   140005d38:	41 5c                	pop    %r12
   140005d3a:	41 5d                	pop    %r13
   140005d3c:	c3                   	ret
   140005d3d:	48 89 c3             	mov    %rax,%rbx
   140005d40:	eb 13                	jmp    140005d55 <_ZN15SignedMagnitudemlES_+0x105>
   140005d42:	4c 89 e1             	mov    %r12,%rcx
   140005d45:	48 89 c3             	mov    %rax,%rbx
   140005d48:	e8 93 bd ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005d4d:	48 89 e9             	mov    %rbp,%rcx
   140005d50:	e8 8b bd ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005d55:	48 89 f9             	mov    %rdi,%rcx
   140005d58:	e8 83 bd ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005d5d:	48 89 d9             	mov    %rbx,%rcx
   140005d60:	e8 fb 15 00 00       	call   140007360 <_Unwind_Resume>
   140005d65:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005d6a:	48 89 c3             	mov    %rax,%rbx
   140005d6d:	48 39 e9             	cmp    %rbp,%rcx
   140005d70:	74 e3                	je     140005d55 <_ZN15SignedMagnitudemlES_+0x105>
   140005d72:	48 8b 31             	mov    (%rcx),%rsi
   140005d75:	ba 18 00 00 00       	mov    $0x18,%edx
   140005d7a:	e8 91 04 00 00       	call   140006210 <_ZdlPvy>
   140005d7f:	48 89 f1             	mov    %rsi,%rcx
   140005d82:	eb e9                	jmp    140005d6d <_ZN15SignedMagnitudemlES_+0x11d>
   140005d84:	48 89 c3             	mov    %rax,%rbx
   140005d87:	eb c4                	jmp    140005d4d <_ZN15SignedMagnitudemlES_+0xfd>
   140005d89:	4c 89 e1             	mov    %r12,%rcx
   140005d8c:	48 89 c3             	mov    %rax,%rbx
   140005d8f:	e8 4c bd ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005d94:	eb bf                	jmp    140005d55 <_ZN15SignedMagnitudemlES_+0x105>
   140005d96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005d9d:	00 00 00 

0000000140005da0 <_ZN15SignedMagnitudedvES_>:
   140005da0:	41 57                	push   %r15
   140005da2:	41 56                	push   %r14
   140005da4:	41 55                	push   %r13
   140005da6:	41 54                	push   %r12
   140005da8:	55                   	push   %rbp
   140005da9:	57                   	push   %rdi
   140005daa:	56                   	push   %rsi
   140005dab:	53                   	push   %rbx
   140005dac:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   140005db3:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140005dba:	00 
   140005dbb:	48 8b 1a             	mov    (%rdx),%rbx
   140005dbe:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140005dc3:	49 89 cc             	mov    %rcx,%r12
   140005dc6:	48 89 d6             	mov    %rdx,%rsi
   140005dc9:	4c 89 c7             	mov    %r8,%rdi
   140005dcc:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140005dd3:	00 00 
   140005dd5:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140005dda:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005dde:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140005de3:	48 39 da             	cmp    %rbx,%rdx
   140005de6:	74 32                	je     140005e1a <_ZN15SignedMagnitudedvES_+0x7a>
   140005de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005def:	00 
   140005df0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005df5:	e8 0e 04 00 00       	call   140006208 <_Znwy>
   140005dfa:	48 89 c1             	mov    %rax,%rcx
   140005dfd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005e01:	48 89 ea             	mov    %rbp,%rdx
   140005e04:	88 41 10             	mov    %al,0x10(%rcx)
   140005e07:	e8 5c 04 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005e0c:	48 8b 1b             	mov    (%rbx),%rbx
   140005e0f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005e15:	48 39 de             	cmp    %rbx,%rsi
   140005e18:	75 d6                	jne    140005df0 <_ZN15SignedMagnitudedvES_+0x50>
   140005e1a:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140005e1f:	48 8b 1f             	mov    (%rdi),%rbx
   140005e22:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140005e29:	00 00 
   140005e2b:	66 49 0f 6e c5       	movq   %r13,%xmm0
   140005e30:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005e34:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140005e39:	48 39 df             	cmp    %rbx,%rdi
   140005e3c:	74 2c                	je     140005e6a <_ZN15SignedMagnitudedvES_+0xca>
   140005e3e:	66 90                	xchg   %ax,%ax
   140005e40:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005e45:	e8 be 03 00 00       	call   140006208 <_Znwy>
   140005e4a:	48 89 c1             	mov    %rax,%rcx
   140005e4d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005e51:	4c 89 ea             	mov    %r13,%rdx
   140005e54:	88 41 10             	mov    %al,0x10(%rcx)
   140005e57:	e8 0c 04 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005e5c:	48 8b 1b             	mov    (%rbx),%rbx
   140005e5f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140005e65:	48 39 df             	cmp    %rbx,%rdi
   140005e68:	75 d6                	jne    140005e40 <_ZN15SignedMagnitudedvES_+0xa0>
   140005e6a:	8b 5e 18             	mov    0x18(%rsi),%ebx
   140005e6d:	89 d8                	mov    %ebx,%eax
   140005e6f:	2b 47 18             	sub    0x18(%rdi),%eax
   140005e72:	39 c3                	cmp    %eax,%ebx
   140005e74:	74 4c                	je     140005ec2 <_ZN15SignedMagnitudedvES_+0x122>
   140005e76:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
   140005e7d:	00 
   140005e7e:	66 90                	xchg   %ax,%ax
   140005e80:	31 d2                	xor    %edx,%edx
   140005e82:	4c 89 f1             	mov    %r14,%rcx
   140005e85:	e8 f6 b7 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140005e8a:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005e8f:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
   140005e94:	e8 6f 03 00 00       	call   140006208 <_Znwy>
   140005e99:	48 89 c1             	mov    %rax,%rcx
   140005e9c:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140005ea3:	00 
   140005ea4:	4c 89 fa             	mov    %r15,%rdx
   140005ea7:	83 c3 01             	add    $0x1,%ebx
   140005eaa:	88 41 10             	mov    %al,0x10(%rcx)
   140005ead:	e8 b6 03 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005eb2:	89 d8                	mov    %ebx,%eax
   140005eb4:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005eba:	2b 47 18             	sub    0x18(%rdi),%eax
   140005ebd:	3b 46 18             	cmp    0x18(%rsi),%eax
   140005ec0:	75 be                	jne    140005e80 <_ZN15SignedMagnitudedvES_+0xe0>
   140005ec2:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
   140005ec7:	4c 89 e1             	mov    %r12,%rcx
   140005eca:	66 49 0f 6e f7       	movq   %r15,%xmm6
   140005ecf:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140005ed3:	e8 68 ba ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140005ed8:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   140005ede:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
   140005ee5:	00 
   140005ee6:	31 d2                	xor    %edx,%edx
   140005ee8:	4c 89 f1             	mov    %r14,%rcx
   140005eeb:	e8 60 ba ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140005ef0:	4c 89 f2             	mov    %r14,%rdx
   140005ef3:	4c 89 e1             	mov    %r12,%rcx
   140005ef6:	e8 45 ed ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005efb:	4c 89 f1             	mov    %r14,%rcx
   140005efe:	e8 dd bb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005f03:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140005f08:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140005f0d:	41 c7 44 24 18 00 00 	movl   $0x0,0x18(%r12)
   140005f14:	00 00 
   140005f16:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140005f1d:	00 00 
   140005f1f:	4c 39 eb             	cmp    %r13,%rbx
   140005f22:	74 2e                	je     140005f52 <_ZN15SignedMagnitudedvES_+0x1b2>
   140005f24:	0f 1f 40 00          	nopl   0x0(%rax)
   140005f28:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005f2d:	e8 d6 02 00 00       	call   140006208 <_Znwy>
   140005f32:	48 89 c1             	mov    %rax,%rcx
   140005f35:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005f39:	4c 89 fa             	mov    %r15,%rdx
   140005f3c:	88 41 10             	mov    %al,0x10(%rcx)
   140005f3f:	e8 24 03 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005f44:	48 8b 1b             	mov    (%rbx),%rbx
   140005f47:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140005f4d:	4c 39 eb             	cmp    %r13,%rbx
   140005f50:	75 d6                	jne    140005f28 <_ZN15SignedMagnitudedvES_+0x188>
   140005f52:	4d 89 f8             	mov    %r15,%r8
   140005f55:	48 89 ea             	mov    %rbp,%rdx
   140005f58:	4c 89 f1             	mov    %r14,%rcx
   140005f5b:	e8 a0 ea ff ff       	call   140004a00 <_ZN13NaturalBinarydvES_>
   140005f60:	4c 89 f2             	mov    %r14,%rdx
   140005f63:	4c 89 e1             	mov    %r12,%rcx
   140005f66:	e8 d5 ec ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005f6b:	4c 89 f1             	mov    %r14,%rcx
   140005f6e:	e8 6d bb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005f73:	4c 89 f9             	mov    %r15,%rcx
   140005f76:	e8 65 bb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005f7b:	31 d2                	xor    %edx,%edx
   140005f7d:	4c 89 f1             	mov    %r14,%rcx
   140005f80:	e8 cb b9 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140005f85:	4c 89 f2             	mov    %r14,%rdx
   140005f88:	4c 89 e1             	mov    %r12,%rcx
   140005f8b:	e8 20 c7 ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140005f90:	89 c3                	mov    %eax,%ebx
   140005f92:	4c 89 f1             	mov    %r14,%rcx
   140005f95:	e8 46 bb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005f9a:	84 db                	test   %bl,%bl
   140005f9c:	74 0c                	je     140005faa <_ZN15SignedMagnitudedvES_+0x20a>
   140005f9e:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005fa2:	32 47 1c             	xor    0x1c(%rdi),%al
   140005fa5:	41 88 44 24 1c       	mov    %al,0x1c(%r12)
   140005faa:	8b 46 18             	mov    0x18(%rsi),%eax
   140005fad:	4c 89 e9             	mov    %r13,%rcx
   140005fb0:	41 89 44 24 18       	mov    %eax,0x18(%r12)
   140005fb5:	e8 26 bb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005fba:	48 89 e9             	mov    %rbp,%rcx
   140005fbd:	e8 1e bb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005fc2:	90                   	nop
   140005fc3:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   140005fca:	00 
   140005fcb:	4c 89 e0             	mov    %r12,%rax
   140005fce:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140005fd5:	5b                   	pop    %rbx
   140005fd6:	5e                   	pop    %rsi
   140005fd7:	5f                   	pop    %rdi
   140005fd8:	5d                   	pop    %rbp
   140005fd9:	41 5c                	pop    %r12
   140005fdb:	41 5d                	pop    %r13
   140005fdd:	41 5e                	pop    %r14
   140005fdf:	41 5f                	pop    %r15
   140005fe1:	c3                   	ret
   140005fe2:	4c 89 f1             	mov    %r14,%rcx
   140005fe5:	48 89 c3             	mov    %rax,%rbx
   140005fe8:	e8 f3 ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005fed:	4c 89 e1             	mov    %r12,%rcx
   140005ff0:	e8 eb ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005ff5:	4c 89 e9             	mov    %r13,%rcx
   140005ff8:	e8 e3 ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005ffd:	48 89 e9             	mov    %rbp,%rcx
   140006000:	e8 db ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006005:	48 89 d9             	mov    %rbx,%rcx
   140006008:	e8 53 13 00 00       	call   140007360 <_Unwind_Resume>
   14000600d:	48 89 c3             	mov    %rax,%rbx
   140006010:	eb db                	jmp    140005fed <_ZN15SignedMagnitudedvES_+0x24d>
   140006012:	4c 89 f1             	mov    %r14,%rcx
   140006015:	48 89 c3             	mov    %rax,%rbx
   140006018:	e8 c3 ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000601d:	4c 89 f9             	mov    %r15,%rcx
   140006020:	e8 bb ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006025:	eb c6                	jmp    140005fed <_ZN15SignedMagnitudedvES_+0x24d>
   140006027:	48 89 c3             	mov    %rax,%rbx
   14000602a:	eb f1                	jmp    14000601d <_ZN15SignedMagnitudedvES_+0x27d>
   14000602c:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140006031:	48 89 c3             	mov    %rax,%rbx
   140006034:	4c 39 f9             	cmp    %r15,%rcx
   140006037:	74 b4                	je     140005fed <_ZN15SignedMagnitudedvES_+0x24d>
   140006039:	48 8b 31             	mov    (%rcx),%rsi
   14000603c:	ba 18 00 00 00       	mov    $0x18,%edx
   140006041:	e8 ca 01 00 00       	call   140006210 <_ZdlPvy>
   140006046:	48 89 f1             	mov    %rsi,%rcx
   140006049:	eb e9                	jmp    140006034 <_ZN15SignedMagnitudedvES_+0x294>
   14000604b:	eb 95                	jmp    140005fe2 <_ZN15SignedMagnitudedvES_+0x242>
   14000604d:	eb be                	jmp    14000600d <_ZN15SignedMagnitudedvES_+0x26d>
   14000604f:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006054:	48 89 c3             	mov    %rax,%rbx
   140006057:	48 39 e9             	cmp    %rbp,%rcx
   14000605a:	74 a9                	je     140006005 <_ZN15SignedMagnitudedvES_+0x265>
   14000605c:	48 8b 31             	mov    (%rcx),%rsi
   14000605f:	ba 18 00 00 00       	mov    $0x18,%edx
   140006064:	e8 a7 01 00 00       	call   140006210 <_ZdlPvy>
   140006069:	48 89 f1             	mov    %rsi,%rcx
   14000606c:	eb e9                	jmp    140006057 <_ZN15SignedMagnitudedvES_+0x2b7>
   14000606e:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140006073:	48 89 c3             	mov    %rax,%rbx
   140006076:	4c 39 e9             	cmp    %r13,%rcx
   140006079:	74 82                	je     140005ffd <_ZN15SignedMagnitudedvES_+0x25d>
   14000607b:	48 8b 31             	mov    (%rcx),%rsi
   14000607e:	ba 18 00 00 00       	mov    $0x18,%edx
   140006083:	e8 88 01 00 00       	call   140006210 <_ZdlPvy>
   140006088:	48 89 f1             	mov    %rsi,%rcx
   14000608b:	eb e9                	jmp    140006076 <_ZN15SignedMagnitudedvES_+0x2d6>
   14000608d:	48 89 c3             	mov    %rax,%rbx
   140006090:	e9 60 ff ff ff       	jmp    140005ff5 <_ZN15SignedMagnitudedvES_+0x255>
   140006095:	90                   	nop
   140006096:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000609d:	00 00 00 

00000001400060a0 <_ZN15SignedMagnitude14set_precissionEj>:
   1400060a0:	55                   	push   %rbp
   1400060a1:	57                   	push   %rdi
   1400060a2:	56                   	push   %rsi
   1400060a3:	53                   	push   %rbx
   1400060a4:	48 83 ec 38          	sub    $0x38,%rsp
   1400060a8:	8b 41 18             	mov    0x18(%rcx),%eax
   1400060ab:	89 d6                	mov    %edx,%esi
   1400060ad:	29 c2                	sub    %eax,%edx
   1400060af:	48 89 cb             	mov    %rcx,%rbx
   1400060b2:	85 d2                	test   %edx,%edx
   1400060b4:	74 4e                	je     140006104 <_ZN15SignedMagnitude14set_precissionEj+0x64>
   1400060b6:	7e 7e                	jle    140006136 <_ZN15SignedMagnitude14set_precissionEj+0x96>
   1400060b8:	39 f0                	cmp    %esi,%eax
   1400060ba:	73 48                	jae    140006104 <_ZN15SignedMagnitude14set_precissionEj+0x64>
   1400060bc:	48 8d 6c 24 2f       	lea    0x2f(%rsp),%rbp
   1400060c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400060c8:	31 d2                	xor    %edx,%edx
   1400060ca:	48 89 e9             	mov    %rbp,%rcx
   1400060cd:	e8 ae b5 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400060d2:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400060d7:	48 8b 3b             	mov    (%rbx),%rdi
   1400060da:	e8 29 01 00 00       	call   140006208 <_Znwy>
   1400060df:	48 89 c1             	mov    %rax,%rcx
   1400060e2:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400060e7:	48 89 fa             	mov    %rdi,%rdx
   1400060ea:	88 41 10             	mov    %al,0x10(%rcx)
   1400060ed:	e8 76 01 00 00       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400060f2:	8b 43 18             	mov    0x18(%rbx),%eax
   1400060f5:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   1400060fa:	83 c0 01             	add    $0x1,%eax
   1400060fd:	89 43 18             	mov    %eax,0x18(%rbx)
   140006100:	39 f0                	cmp    %esi,%eax
   140006102:	72 c4                	jb     1400060c8 <_ZN15SignedMagnitude14set_precissionEj+0x28>
   140006104:	48 83 c4 38          	add    $0x38,%rsp
   140006108:	5b                   	pop    %rbx
   140006109:	5e                   	pop    %rsi
   14000610a:	5f                   	pop    %rdi
   14000610b:	5d                   	pop    %rbp
   14000610c:	c3                   	ret
   14000610d:	0f 1f 00             	nopl   (%rax)
   140006110:	48 83 6b 10 01       	subq   $0x1,0x10(%rbx)
   140006115:	48 8b 3b             	mov    (%rbx),%rdi
   140006118:	48 89 f9             	mov    %rdi,%rcx
   14000611b:	e8 40 01 00 00       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140006120:	ba 18 00 00 00       	mov    $0x18,%edx
   140006125:	48 89 f9             	mov    %rdi,%rcx
   140006128:	e8 e3 00 00 00       	call   140006210 <_ZdlPvy>
   14000612d:	8b 43 18             	mov    0x18(%rbx),%eax
   140006130:	83 e8 01             	sub    $0x1,%eax
   140006133:	89 43 18             	mov    %eax,0x18(%rbx)
   140006136:	39 c6                	cmp    %eax,%esi
   140006138:	72 d6                	jb     140006110 <_ZN15SignedMagnitude14set_precissionEj+0x70>
   14000613a:	48 83 c4 38          	add    $0x38,%rsp
   14000613e:	5b                   	pop    %rbx
   14000613f:	5e                   	pop    %rsi
   140006140:	5f                   	pop    %rdi
   140006141:	5d                   	pop    %rbp
   140006142:	c3                   	ret
   140006143:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000614a:	00 00 00 00 
   14000614e:	66 90                	xchg   %ax,%ax

0000000140006150 <_ZlsRSo15SignedMagnitude>:
   140006150:	53                   	push   %rbx
   140006151:	48 83 ec 40          	sub    $0x40,%rsp
   140006155:	48 89 cb             	mov    %rcx,%rbx
   140006158:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   14000615d:	e8 8e ee ff ff       	call   140004ff0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006162:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   140006167:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   14000616c:	48 89 d9             	mov    %rbx,%rcx
   14000616f:	e8 bc 00 00 00       	call   140006230 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006174:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006179:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   14000617e:	48 39 c1             	cmp    %rax,%rcx
   140006181:	74 0e                	je     140006191 <_ZlsRSo15SignedMagnitude+0x41>
   140006183:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140006188:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000618c:	e8 7f 00 00 00       	call   140006210 <_ZdlPvy>
   140006191:	48 89 d8             	mov    %rbx,%rax
   140006194:	48 83 c4 40          	add    $0x40,%rsp
   140006198:	5b                   	pop    %rbx
   140006199:	c3                   	ret
   14000619a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000619f:	48 89 c3             	mov    %rax,%rbx
   1400061a2:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400061a7:	48 39 c1             	cmp    %rax,%rcx
   1400061aa:	74 0e                	je     1400061ba <_ZlsRSo15SignedMagnitude+0x6a>
   1400061ac:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400061b1:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400061b5:	e8 56 00 00 00       	call   140006210 <_ZdlPvy>
   1400061ba:	48 89 d9             	mov    %rbx,%rcx
   1400061bd:	e8 9e 11 00 00       	call   140007360 <_Unwind_Resume>
   1400061c2:	90                   	nop
   1400061c3:	90                   	nop
   1400061c4:	90                   	nop
   1400061c5:	90                   	nop
   1400061c6:	90                   	nop
   1400061c7:	90                   	nop
   1400061c8:	90                   	nop
   1400061c9:	90                   	nop
   1400061ca:	90                   	nop
   1400061cb:	90                   	nop
   1400061cc:	90                   	nop
   1400061cd:	90                   	nop
   1400061ce:	90                   	nop
   1400061cf:	90                   	nop

00000001400061d0 <__gxx_personality_seh0>:
   1400061d0:	ff 25 be 73 00 00    	jmp    *0x73be(%rip)        # 14000d594 <__imp___gxx_personality_seh0>
   1400061d6:	90                   	nop
   1400061d7:	90                   	nop

00000001400061d8 <__cxa_throw>:
   1400061d8:	ff 25 ae 73 00 00    	jmp    *0x73ae(%rip)        # 14000d58c <__imp___cxa_throw>
   1400061de:	90                   	nop
   1400061df:	90                   	nop

00000001400061e0 <__cxa_rethrow>:
   1400061e0:	ff 25 9e 73 00 00    	jmp    *0x739e(%rip)        # 14000d584 <__imp___cxa_rethrow>
   1400061e6:	90                   	nop
   1400061e7:	90                   	nop

00000001400061e8 <__cxa_free_exception>:
   1400061e8:	ff 25 8e 73 00 00    	jmp    *0x738e(%rip)        # 14000d57c <__imp___cxa_free_exception>
   1400061ee:	90                   	nop
   1400061ef:	90                   	nop

00000001400061f0 <__cxa_end_catch>:
   1400061f0:	ff 25 7e 73 00 00    	jmp    *0x737e(%rip)        # 14000d574 <__imp___cxa_end_catch>
   1400061f6:	90                   	nop
   1400061f7:	90                   	nop

00000001400061f8 <__cxa_begin_catch>:
   1400061f8:	ff 25 6e 73 00 00    	jmp    *0x736e(%rip)        # 14000d56c <__imp___cxa_begin_catch>
   1400061fe:	90                   	nop
   1400061ff:	90                   	nop

0000000140006200 <__cxa_allocate_exception>:
   140006200:	ff 25 5e 73 00 00    	jmp    *0x735e(%rip)        # 14000d564 <__imp___cxa_allocate_exception>
   140006206:	90                   	nop
   140006207:	90                   	nop

0000000140006208 <_Znwy>:
   140006208:	ff 25 4e 73 00 00    	jmp    *0x734e(%rip)        # 14000d55c <__imp__Znwy>
   14000620e:	90                   	nop
   14000620f:	90                   	nop

0000000140006210 <_ZdlPvy>:
   140006210:	ff 25 3e 73 00 00    	jmp    *0x733e(%rip)        # 14000d554 <__imp__ZdlPvy>
   140006216:	90                   	nop
   140006217:	90                   	nop

0000000140006218 <_ZSt24__throw_out_of_range_fmtPKcz>:
   140006218:	ff 25 ee 72 00 00    	jmp    *0x72ee(%rip)        # 14000d50c <__imp__ZSt24__throw_out_of_range_fmtPKcz>
   14000621e:	90                   	nop
   14000621f:	90                   	nop

0000000140006220 <_ZSt20__throw_length_errorPKc>:
   140006220:	ff 25 de 72 00 00    	jmp    *0x72de(%rip)        # 14000d504 <__imp__ZSt20__throw_length_errorPKc>
   140006226:	90                   	nop
   140006227:	90                   	nop

0000000140006228 <_ZSt16__throw_bad_castv>:
   140006228:	ff 25 ce 72 00 00    	jmp    *0x72ce(%rip)        # 14000d4fc <__imp__ZSt16__throw_bad_castv>
   14000622e:	90                   	nop
   14000622f:	90                   	nop

0000000140006230 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>:
   140006230:	ff 25 be 72 00 00    	jmp    *0x72be(%rip)        # 14000d4f4 <__imp__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006236:	90                   	nop
   140006237:	90                   	nop

0000000140006238 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>:
   140006238:	ff 25 ae 72 00 00    	jmp    *0x72ae(%rip)        # 14000d4ec <__imp__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   14000623e:	90                   	nop
   14000623f:	90                   	nop

0000000140006240 <_ZNSt8ios_baseD2Ev>:
   140006240:	ff 25 9e 72 00 00    	jmp    *0x729e(%rip)        # 14000d4e4 <__imp__ZNSt8ios_baseD2Ev>
   140006246:	90                   	nop
   140006247:	90                   	nop

0000000140006248 <_ZNSt8ios_baseC2Ev>:
   140006248:	ff 25 8e 72 00 00    	jmp    *0x728e(%rip)        # 14000d4dc <__imp__ZNSt8ios_baseC2Ev>
   14000624e:	90                   	nop
   14000624f:	90                   	nop

0000000140006250 <_ZNSt8ios_base4InitD1Ev>:
   140006250:	ff 25 7e 72 00 00    	jmp    *0x727e(%rip)        # 14000d4d4 <__imp__ZNSt8ios_base4InitD1Ev>
   140006256:	90                   	nop
   140006257:	90                   	nop

0000000140006258 <_ZNSt8ios_base4InitC1Ev>:
   140006258:	ff 25 6e 72 00 00    	jmp    *0x726e(%rip)        # 14000d4cc <__imp__ZNSt8ios_base4InitC1Ev>
   14000625e:	90                   	nop
   14000625f:	90                   	nop

0000000140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>:
   140006260:	ff 25 5e 72 00 00    	jmp    *0x725e(%rip)        # 14000d4c4 <__imp__ZNSt8__detail15_List_node_base9_M_unhookEv>
   140006266:	90                   	nop
   140006267:	90                   	nop

0000000140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>:
   140006268:	ff 25 4e 72 00 00    	jmp    *0x724e(%rip)        # 14000d4bc <__imp__ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000626e:	90                   	nop
   14000626f:	90                   	nop

0000000140006270 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>:
   140006270:	ff 25 3e 72 00 00    	jmp    *0x723e(%rip)        # 14000d4b4 <__imp__ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140006276:	90                   	nop
   140006277:	90                   	nop

0000000140006278 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140006278:	ff 25 2e 72 00 00    	jmp    *0x722e(%rip)        # 14000d4ac <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   14000627e:	90                   	nop
   14000627f:	90                   	nop

0000000140006280 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>:
   140006280:	ff 25 1e 72 00 00    	jmp    *0x721e(%rip)        # 14000d4a4 <__imp__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   140006286:	90                   	nop
   140006287:	90                   	nop

0000000140006288 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>:
   140006288:	ff 25 0e 72 00 00    	jmp    *0x720e(%rip)        # 14000d49c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   14000628e:	90                   	nop
   14000628f:	90                   	nop

0000000140006290 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>:
   140006290:	ff 25 fe 71 00 00    	jmp    *0x71fe(%rip)        # 14000d494 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140006296:	90                   	nop
   140006297:	90                   	nop

0000000140006298 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>:
   140006298:	ff 25 ee 71 00 00    	jmp    *0x71ee(%rip)        # 14000d48c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   14000629e:	90                   	nop
   14000629f:	90                   	nop

00000001400062a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>:
   1400062a0:	ff 25 de 71 00 00    	jmp    *0x71de(%rip)        # 14000d484 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   1400062a6:	90                   	nop
   1400062a7:	90                   	nop

00000001400062a8 <_ZNSt6localeD1Ev>:
   1400062a8:	ff 25 ce 71 00 00    	jmp    *0x71ce(%rip)        # 14000d47c <__imp__ZNSt6localeD1Ev>
   1400062ae:	90                   	nop
   1400062af:	90                   	nop

00000001400062b0 <_ZNSt6localeC1Ev>:
   1400062b0:	ff 25 be 71 00 00    	jmp    *0x71be(%rip)        # 14000d474 <__imp__ZNSt6localeC1Ev>
   1400062b6:	90                   	nop
   1400062b7:	90                   	nop

00000001400062b8 <_ZNSt16invalid_argumentD1Ev>:
   1400062b8:	ff 25 ae 71 00 00    	jmp    *0x71ae(%rip)        # 14000d46c <__imp__ZNSt16invalid_argumentD1Ev>
   1400062be:	90                   	nop
   1400062bf:	90                   	nop

00000001400062c0 <_ZNSt16invalid_argumentC1EPKc>:
   1400062c0:	ff 25 9e 71 00 00    	jmp    *0x719e(%rip)        # 14000d464 <__imp__ZNSt16invalid_argumentC1EPKc>
   1400062c6:	90                   	nop
   1400062c7:	90                   	nop

00000001400062c8 <_ZNSt13runtime_errorD1Ev>:
   1400062c8:	ff 25 8e 71 00 00    	jmp    *0x718e(%rip)        # 14000d45c <__imp__ZNSt13runtime_errorD1Ev>
   1400062ce:	90                   	nop
   1400062cf:	90                   	nop

00000001400062d0 <_ZNSt13runtime_errorC1EPKc>:
   1400062d0:	ff 25 7e 71 00 00    	jmp    *0x717e(%rip)        # 14000d454 <__imp__ZNSt13runtime_errorC1EPKc>
   1400062d6:	90                   	nop
   1400062d7:	90                   	nop

00000001400062d8 <_ZNSolsEi>:
   1400062d8:	ff 25 6e 71 00 00    	jmp    *0x716e(%rip)        # 14000d44c <__imp__ZNSolsEi>
   1400062de:	90                   	nop
   1400062df:	90                   	nop

00000001400062e0 <_ZNSo5flushEv>:
   1400062e0:	ff 25 5e 71 00 00    	jmp    *0x715e(%rip)        # 14000d444 <__imp__ZNSo5flushEv>
   1400062e6:	90                   	nop
   1400062e7:	90                   	nop

00000001400062e8 <_ZNSo3putEc>:
   1400062e8:	ff 25 4e 71 00 00    	jmp    *0x714e(%rip)        # 14000d43c <__imp__ZNSo3putEc>
   1400062ee:	90                   	nop
   1400062ef:	90                   	nop

00000001400062f0 <_ZNKSt5ctypeIcE13_M_widen_initEv>:
   1400062f0:	ff 25 3e 71 00 00    	jmp    *0x713e(%rip)        # 14000d434 <__imp__ZNKSt5ctypeIcE13_M_widen_initEv>
   1400062f6:	90                   	nop
   1400062f7:	90                   	nop
   1400062f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400062ff:	00 

0000000140006300 <__do_global_dtors>:
   140006300:	48 83 ec 28          	sub    $0x28,%rsp
   140006304:	48 8b 05 f5 1c 00 00 	mov    0x1cf5(%rip),%rax        # 140008000 <__data_start__>
   14000630b:	48 8b 00             	mov    (%rax),%rax
   14000630e:	48 85 c0             	test   %rax,%rax
   140006311:	74 22                	je     140006335 <__do_global_dtors+0x35>
   140006313:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006318:	ff d0                	call   *%rax
   14000631a:	48 8b 05 df 1c 00 00 	mov    0x1cdf(%rip),%rax        # 140008000 <__data_start__>
   140006321:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140006325:	48 8b 40 08          	mov    0x8(%rax),%rax
   140006329:	48 89 15 d0 1c 00 00 	mov    %rdx,0x1cd0(%rip)        # 140008000 <__data_start__>
   140006330:	48 85 c0             	test   %rax,%rax
   140006333:	75 e3                	jne    140006318 <__do_global_dtors+0x18>
   140006335:	48 83 c4 28          	add    $0x28,%rsp
   140006339:	c3                   	ret
   14000633a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140006340 <__do_global_ctors>:
   140006340:	56                   	push   %rsi
   140006341:	53                   	push   %rbx
   140006342:	48 83 ec 28          	sub    $0x28,%rsp
   140006346:	48 8b 15 73 31 00 00 	mov    0x3173(%rip),%rdx        # 1400094c0 <.refptr.__CTOR_LIST__>
   14000634d:	48 8b 02             	mov    (%rdx),%rax
   140006350:	89 c1                	mov    %eax,%ecx
   140006352:	83 f8 ff             	cmp    $0xffffffff,%eax
   140006355:	74 39                	je     140006390 <__do_global_ctors+0x50>
   140006357:	85 c9                	test   %ecx,%ecx
   140006359:	74 20                	je     14000637b <__do_global_ctors+0x3b>
   14000635b:	89 c8                	mov    %ecx,%eax
   14000635d:	83 e9 01             	sub    $0x1,%ecx
   140006360:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140006364:	48 29 c8             	sub    %rcx,%rax
   140006367:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000636c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006370:	ff 13                	call   *(%rbx)
   140006372:	48 83 eb 08          	sub    $0x8,%rbx
   140006376:	48 39 f3             	cmp    %rsi,%rbx
   140006379:	75 f5                	jne    140006370 <__do_global_ctors+0x30>
   14000637b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140006300 <__do_global_dtors>
   140006382:	48 83 c4 28          	add    $0x28,%rsp
   140006386:	5b                   	pop    %rbx
   140006387:	5e                   	pop    %rsi
   140006388:	e9 83 b0 ff ff       	jmp    140001410 <atexit>
   14000638d:	0f 1f 00             	nopl   (%rax)
   140006390:	31 c0                	xor    %eax,%eax
   140006392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006398:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000639c:	89 c1                	mov    %eax,%ecx
   14000639e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   1400063a3:	4c 89 c0             	mov    %r8,%rax
   1400063a6:	75 f0                	jne    140006398 <__do_global_ctors+0x58>
   1400063a8:	eb ad                	jmp    140006357 <__do_global_ctors+0x17>
   1400063aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400063b0 <__main>:
   1400063b0:	8b 05 ca 5c 00 00    	mov    0x5cca(%rip),%eax        # 14000c080 <initialized>
   1400063b6:	85 c0                	test   %eax,%eax
   1400063b8:	74 06                	je     1400063c0 <__main+0x10>
   1400063ba:	c3                   	ret
   1400063bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400063c0:	c7 05 b6 5c 00 00 01 	movl   $0x1,0x5cb6(%rip)        # 14000c080 <initialized>
   1400063c7:	00 00 00 
   1400063ca:	e9 71 ff ff ff       	jmp    140006340 <__do_global_ctors>
   1400063cf:	90                   	nop

00000001400063d0 <_setargv>:
   1400063d0:	31 c0                	xor    %eax,%eax
   1400063d2:	c3                   	ret
   1400063d3:	90                   	nop
   1400063d4:	90                   	nop
   1400063d5:	90                   	nop
   1400063d6:	90                   	nop
   1400063d7:	90                   	nop
   1400063d8:	90                   	nop
   1400063d9:	90                   	nop
   1400063da:	90                   	nop
   1400063db:	90                   	nop
   1400063dc:	90                   	nop
   1400063dd:	90                   	nop
   1400063de:	90                   	nop
   1400063df:	90                   	nop

00000001400063e0 <__dyn_tls_dtor>:
   1400063e0:	48 83 ec 28          	sub    $0x28,%rsp
   1400063e4:	83 fa 03             	cmp    $0x3,%edx
   1400063e7:	74 17                	je     140006400 <__dyn_tls_dtor+0x20>
   1400063e9:	85 d2                	test   %edx,%edx
   1400063eb:	74 13                	je     140006400 <__dyn_tls_dtor+0x20>
   1400063ed:	b8 01 00 00 00       	mov    $0x1,%eax
   1400063f2:	48 83 c4 28          	add    $0x28,%rsp
   1400063f6:	c3                   	ret
   1400063f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400063fe:	00 00 
   140006400:	e8 5b 0a 00 00       	call   140006e60 <__mingw_TLScallback>
   140006405:	b8 01 00 00 00       	mov    $0x1,%eax
   14000640a:	48 83 c4 28          	add    $0x28,%rsp
   14000640e:	c3                   	ret
   14000640f:	90                   	nop

0000000140006410 <__dyn_tls_init>:
   140006410:	56                   	push   %rsi
   140006411:	53                   	push   %rbx
   140006412:	48 83 ec 28          	sub    $0x28,%rsp
   140006416:	48 8b 05 03 30 00 00 	mov    0x3003(%rip),%rax        # 140009420 <.refptr._CRT_MT>
   14000641d:	83 38 02             	cmpl   $0x2,(%rax)
   140006420:	74 06                	je     140006428 <__dyn_tls_init+0x18>
   140006422:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140006428:	83 fa 02             	cmp    $0x2,%edx
   14000642b:	74 13                	je     140006440 <__dyn_tls_init+0x30>
   14000642d:	83 fa 01             	cmp    $0x1,%edx
   140006430:	74 4e                	je     140006480 <__dyn_tls_init+0x70>
   140006432:	b8 01 00 00 00       	mov    $0x1,%eax
   140006437:	48 83 c4 28          	add    $0x28,%rsp
   14000643b:	5b                   	pop    %rbx
   14000643c:	5e                   	pop    %rsi
   14000643d:	c3                   	ret
   14000643e:	66 90                	xchg   %ax,%ax
   140006440:	48 8d 1d 11 7c 00 00 	lea    0x7c11(%rip),%rbx        # 14000e058 <__xd_z>
   140006447:	48 8d 35 0a 7c 00 00 	lea    0x7c0a(%rip),%rsi        # 14000e058 <__xd_z>
   14000644e:	48 39 de             	cmp    %rbx,%rsi
   140006451:	74 df                	je     140006432 <__dyn_tls_init+0x22>
   140006453:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006458:	48 8b 03             	mov    (%rbx),%rax
   14000645b:	48 85 c0             	test   %rax,%rax
   14000645e:	74 02                	je     140006462 <__dyn_tls_init+0x52>
   140006460:	ff d0                	call   *%rax
   140006462:	48 83 c3 08          	add    $0x8,%rbx
   140006466:	48 39 de             	cmp    %rbx,%rsi
   140006469:	75 ed                	jne    140006458 <__dyn_tls_init+0x48>
   14000646b:	b8 01 00 00 00       	mov    $0x1,%eax
   140006470:	48 83 c4 28          	add    $0x28,%rsp
   140006474:	5b                   	pop    %rbx
   140006475:	5e                   	pop    %rsi
   140006476:	c3                   	ret
   140006477:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000647e:	00 00 
   140006480:	e8 db 09 00 00       	call   140006e60 <__mingw_TLScallback>
   140006485:	b8 01 00 00 00       	mov    $0x1,%eax
   14000648a:	48 83 c4 28          	add    $0x28,%rsp
   14000648e:	5b                   	pop    %rbx
   14000648f:	5e                   	pop    %rsi
   140006490:	c3                   	ret
   140006491:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006498:	00 00 00 00 
   14000649c:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400064a0 <__tlregdtor>:
   1400064a0:	31 c0                	xor    %eax,%eax
   1400064a2:	c3                   	ret
   1400064a3:	90                   	nop
   1400064a4:	90                   	nop
   1400064a5:	90                   	nop
   1400064a6:	90                   	nop
   1400064a7:	90                   	nop
   1400064a8:	90                   	nop
   1400064a9:	90                   	nop
   1400064aa:	90                   	nop
   1400064ab:	90                   	nop
   1400064ac:	90                   	nop
   1400064ad:	90                   	nop
   1400064ae:	90                   	nop
   1400064af:	90                   	nop

00000001400064b0 <_matherr>:
   1400064b0:	56                   	push   %rsi
   1400064b1:	53                   	push   %rbx
   1400064b2:	48 83 ec 78          	sub    $0x78,%rsp
   1400064b6:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   1400064bb:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   1400064c0:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   1400064c6:	83 39 06             	cmpl   $0x6,(%rcx)
   1400064c9:	0f 87 cd 00 00 00    	ja     14000659c <_matherr+0xec>
   1400064cf:	8b 01                	mov    (%rcx),%eax
   1400064d1:	48 8d 15 8c 2d 00 00 	lea    0x2d8c(%rip),%rdx        # 140009264 <.rdata+0x124>
   1400064d8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400064dc:	48 01 d0             	add    %rdx,%rax
   1400064df:	ff e0                	jmp    *%rax
   1400064e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400064e8:	48 8d 1d 70 2c 00 00 	lea    0x2c70(%rip),%rbx        # 14000915f <.rdata+0x1f>
   1400064ef:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400064f5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400064fa:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400064ff:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140006503:	b9 02 00 00 00       	mov    $0x2,%ecx
   140006508:	e8 e3 0e 00 00       	call   1400073f0 <__acrt_iob_func>
   14000650d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140006514:	49 89 d8             	mov    %rbx,%r8
   140006517:	48 8d 15 1a 2d 00 00 	lea    0x2d1a(%rip),%rdx        # 140009238 <.rdata+0xf8>
   14000651e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140006524:	48 89 c1             	mov    %rax,%rcx
   140006527:	49 89 f1             	mov    %rsi,%r9
   14000652a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140006530:	e8 3b 0f 00 00       	call   140007470 <fprintf>
   140006535:	90                   	nop
   140006536:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000653b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140006540:	31 c0                	xor    %eax,%eax
   140006542:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140006548:	48 83 c4 78          	add    $0x78,%rsp
   14000654c:	5b                   	pop    %rbx
   14000654d:	5e                   	pop    %rsi
   14000654e:	c3                   	ret
   14000654f:	90                   	nop
   140006550:	48 8d 1d e9 2b 00 00 	lea    0x2be9(%rip),%rbx        # 140009140 <.rdata>
   140006557:	eb 96                	jmp    1400064ef <_matherr+0x3f>
   140006559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006560:	48 8d 1d 39 2c 00 00 	lea    0x2c39(%rip),%rbx        # 1400091a0 <.rdata+0x60>
   140006567:	eb 86                	jmp    1400064ef <_matherr+0x3f>
   140006569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006570:	48 8d 1d 09 2c 00 00 	lea    0x2c09(%rip),%rbx        # 140009180 <.rdata+0x40>
   140006577:	e9 73 ff ff ff       	jmp    1400064ef <_matherr+0x3f>
   14000657c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006580:	48 8d 1d 69 2c 00 00 	lea    0x2c69(%rip),%rbx        # 1400091f0 <.rdata+0xb0>
   140006587:	e9 63 ff ff ff       	jmp    1400064ef <_matherr+0x3f>
   14000658c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006590:	48 8d 1d 31 2c 00 00 	lea    0x2c31(%rip),%rbx        # 1400091c8 <.rdata+0x88>
   140006597:	e9 53 ff ff ff       	jmp    1400064ef <_matherr+0x3f>
   14000659c:	48 8d 1d 83 2c 00 00 	lea    0x2c83(%rip),%rbx        # 140009226 <.rdata+0xe6>
   1400065a3:	e9 47 ff ff ff       	jmp    1400064ef <_matherr+0x3f>
   1400065a8:	90                   	nop
   1400065a9:	90                   	nop
   1400065aa:	90                   	nop
   1400065ab:	90                   	nop
   1400065ac:	90                   	nop
   1400065ad:	90                   	nop
   1400065ae:	90                   	nop
   1400065af:	90                   	nop

00000001400065b0 <_fpreset>:
   1400065b0:	db e3                	fninit
   1400065b2:	c3                   	ret
   1400065b3:	90                   	nop
   1400065b4:	90                   	nop
   1400065b5:	90                   	nop
   1400065b6:	90                   	nop
   1400065b7:	90                   	nop
   1400065b8:	90                   	nop
   1400065b9:	90                   	nop
   1400065ba:	90                   	nop
   1400065bb:	90                   	nop
   1400065bc:	90                   	nop
   1400065bd:	90                   	nop
   1400065be:	90                   	nop
   1400065bf:	90                   	nop

00000001400065c0 <__report_error>:
   1400065c0:	56                   	push   %rsi
   1400065c1:	53                   	push   %rbx
   1400065c2:	48 83 ec 38          	sub    $0x38,%rsp
   1400065c6:	48 89 cb             	mov    %rcx,%rbx
   1400065c9:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   1400065ce:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400065d3:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400065d8:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400065dd:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400065e2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400065e7:	e8 04 0e 00 00       	call   1400073f0 <__acrt_iob_func>
   1400065ec:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400065f2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400065f7:	48 8d 0d 82 2c 00 00 	lea    0x2c82(%rip),%rcx        # 140009280 <.rdata>
   1400065fe:	49 89 c1             	mov    %rax,%r9
   140006601:	e8 7a 0e 00 00       	call   140007480 <fwrite>
   140006606:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   14000660b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140006610:	e8 db 0d 00 00       	call   1400073f0 <__acrt_iob_func>
   140006615:	48 89 da             	mov    %rbx,%rdx
   140006618:	48 89 c1             	mov    %rax,%rcx
   14000661b:	49 89 f0             	mov    %rsi,%r8
   14000661e:	e8 8d 0e 00 00       	call   1400074b0 <vfprintf>
   140006623:	e8 30 0e 00 00       	call   140007458 <abort>
   140006628:	90                   	nop
   140006629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140006630 <mark_section_writable>:
   140006630:	57                   	push   %rdi
   140006631:	56                   	push   %rsi
   140006632:	53                   	push   %rbx
   140006633:	48 83 ec 50          	sub    $0x50,%rsp
   140006637:	48 63 35 a6 5a 00 00 	movslq 0x5aa6(%rip),%rsi        # 14000c0e4 <maxSections>
   14000663e:	48 89 cb             	mov    %rcx,%rbx
   140006641:	85 f6                	test   %esi,%esi
   140006643:	0f 8e 17 01 00 00    	jle    140006760 <mark_section_writable+0x130>
   140006649:	48 8b 05 98 5a 00 00 	mov    0x5a98(%rip),%rax        # 14000c0e8 <the_secs>
   140006650:	45 31 c9             	xor    %r9d,%r9d
   140006653:	48 83 c0 18          	add    $0x18,%rax
   140006657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000665e:	00 00 
   140006660:	4c 8b 00             	mov    (%rax),%r8
   140006663:	4c 39 c3             	cmp    %r8,%rbx
   140006666:	72 13                	jb     14000667b <mark_section_writable+0x4b>
   140006668:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000666c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000666f:	49 01 d0             	add    %rdx,%r8
   140006672:	4c 39 c3             	cmp    %r8,%rbx
   140006675:	0f 82 8a 00 00 00    	jb     140006705 <mark_section_writable+0xd5>
   14000667b:	41 83 c1 01          	add    $0x1,%r9d
   14000667f:	48 83 c0 28          	add    $0x28,%rax
   140006683:	41 39 f1             	cmp    %esi,%r9d
   140006686:	75 d8                	jne    140006660 <mark_section_writable+0x30>
   140006688:	48 89 d9             	mov    %rbx,%rcx
   14000668b:	e8 f0 09 00 00       	call   140007080 <__mingw_GetSectionForAddress>
   140006690:	48 89 c7             	mov    %rax,%rdi
   140006693:	48 85 c0             	test   %rax,%rax
   140006696:	0f 84 e6 00 00 00    	je     140006782 <mark_section_writable+0x152>
   14000669c:	48 8b 05 45 5a 00 00 	mov    0x5a45(%rip),%rax        # 14000c0e8 <the_secs>
   1400066a3:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   1400066a7:	48 c1 e3 03          	shl    $0x3,%rbx
   1400066ab:	48 01 d8             	add    %rbx,%rax
   1400066ae:	48 89 78 20          	mov    %rdi,0x20(%rax)
   1400066b2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400066b8:	e8 03 0b 00 00       	call   1400071c0 <_GetPEImageBase>
   1400066bd:	8b 57 0c             	mov    0xc(%rdi),%edx
   1400066c0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   1400066c6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   1400066ca:	48 8b 05 17 5a 00 00 	mov    0x5a17(%rip),%rax        # 14000c0e8 <the_secs>
   1400066d1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   1400066d6:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   1400066db:	ff 15 7b 6c 00 00    	call   *0x6c7b(%rip)        # 14000d35c <__imp_VirtualQuery>
   1400066e1:	48 85 c0             	test   %rax,%rax
   1400066e4:	0f 84 7d 00 00 00    	je     140006767 <mark_section_writable+0x137>
   1400066ea:	8b 44 24 44          	mov    0x44(%rsp),%eax
   1400066ee:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400066f1:	83 e2 bf             	and    $0xffffffbf,%edx
   1400066f4:	74 08                	je     1400066fe <mark_section_writable+0xce>
   1400066f6:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400066f9:	83 e2 fb             	and    $0xfffffffb,%edx
   1400066fc:	75 12                	jne    140006710 <mark_section_writable+0xe0>
   1400066fe:	83 05 df 59 00 00 01 	addl   $0x1,0x59df(%rip)        # 14000c0e4 <maxSections>
   140006705:	48 83 c4 50          	add    $0x50,%rsp
   140006709:	5b                   	pop    %rbx
   14000670a:	5e                   	pop    %rsi
   14000670b:	5f                   	pop    %rdi
   14000670c:	c3                   	ret
   14000670d:	0f 1f 00             	nopl   (%rax)
   140006710:	83 f8 02             	cmp    $0x2,%eax
   140006713:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006718:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000671d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140006723:	b8 04 00 00 00       	mov    $0x4,%eax
   140006728:	44 0f 44 c0          	cmove  %eax,%r8d
   14000672c:	48 03 1d b5 59 00 00 	add    0x59b5(%rip),%rbx        # 14000c0e8 <the_secs>
   140006733:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140006737:	49 89 d9             	mov    %rbx,%r9
   14000673a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000673e:	ff 15 10 6c 00 00    	call   *0x6c10(%rip)        # 14000d354 <__imp_VirtualProtect>
   140006744:	85 c0                	test   %eax,%eax
   140006746:	75 b6                	jne    1400066fe <mark_section_writable+0xce>
   140006748:	ff 15 d6 6b 00 00    	call   *0x6bd6(%rip)        # 14000d324 <__imp_GetLastError>
   14000674e:	48 8d 0d a3 2b 00 00 	lea    0x2ba3(%rip),%rcx        # 1400092f8 <.rdata+0x78>
   140006755:	89 c2                	mov    %eax,%edx
   140006757:	e8 64 fe ff ff       	call   1400065c0 <__report_error>
   14000675c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006760:	31 f6                	xor    %esi,%esi
   140006762:	e9 21 ff ff ff       	jmp    140006688 <mark_section_writable+0x58>
   140006767:	48 8b 05 7a 59 00 00 	mov    0x597a(%rip),%rax        # 14000c0e8 <the_secs>
   14000676e:	8b 57 08             	mov    0x8(%rdi),%edx
   140006771:	48 8d 0d 48 2b 00 00 	lea    0x2b48(%rip),%rcx        # 1400092c0 <.rdata+0x40>
   140006778:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000677d:	e8 3e fe ff ff       	call   1400065c0 <__report_error>
   140006782:	48 89 da             	mov    %rbx,%rdx
   140006785:	48 8d 0d 14 2b 00 00 	lea    0x2b14(%rip),%rcx        # 1400092a0 <.rdata+0x20>
   14000678c:	e8 2f fe ff ff       	call   1400065c0 <__report_error>
   140006791:	90                   	nop
   140006792:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006799:	00 00 00 00 
   14000679d:	0f 1f 00             	nopl   (%rax)

00000001400067a0 <_pei386_runtime_relocator>:
   1400067a0:	55                   	push   %rbp
   1400067a1:	41 57                	push   %r15
   1400067a3:	41 56                	push   %r14
   1400067a5:	41 55                	push   %r13
   1400067a7:	41 54                	push   %r12
   1400067a9:	57                   	push   %rdi
   1400067aa:	56                   	push   %rsi
   1400067ab:	53                   	push   %rbx
   1400067ac:	48 83 ec 48          	sub    $0x48,%rsp
   1400067b0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400067b5:	44 8b 25 24 59 00 00 	mov    0x5924(%rip),%r12d        # 14000c0e0 <was_init.0>
   1400067bc:	45 85 e4             	test   %r12d,%r12d
   1400067bf:	74 17                	je     1400067d8 <_pei386_runtime_relocator+0x38>
   1400067c1:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400067c5:	5b                   	pop    %rbx
   1400067c6:	5e                   	pop    %rsi
   1400067c7:	5f                   	pop    %rdi
   1400067c8:	41 5c                	pop    %r12
   1400067ca:	41 5d                	pop    %r13
   1400067cc:	41 5e                	pop    %r14
   1400067ce:	41 5f                	pop    %r15
   1400067d0:	5d                   	pop    %rbp
   1400067d1:	c3                   	ret
   1400067d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400067d8:	c7 05 fe 58 00 00 01 	movl   $0x1,0x58fe(%rip)        # 14000c0e0 <was_init.0>
   1400067df:	00 00 00 
   1400067e2:	e8 19 09 00 00       	call   140007100 <__mingw_GetSectionCount>
   1400067e7:	48 98                	cltq
   1400067e9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400067ed:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400067f4:	00 
   1400067f5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400067f9:	e8 72 0b 00 00       	call   140007370 <___chkstk_ms>
   1400067fe:	4c 8b 2d db 2c 00 00 	mov    0x2cdb(%rip),%r13        # 1400094e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140006805:	48 8b 1d e4 2c 00 00 	mov    0x2ce4(%rip),%rbx        # 1400094f0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   14000680c:	c7 05 ce 58 00 00 00 	movl   $0x0,0x58ce(%rip)        # 14000c0e4 <maxSections>
   140006813:	00 00 00 
   140006816:	48 29 c4             	sub    %rax,%rsp
   140006819:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   14000681e:	48 89 05 c3 58 00 00 	mov    %rax,0x58c3(%rip)        # 14000c0e8 <the_secs>
   140006825:	4c 89 e8             	mov    %r13,%rax
   140006828:	48 29 d8             	sub    %rbx,%rax
   14000682b:	48 83 f8 07          	cmp    $0x7,%rax
   14000682f:	7e 90                	jle    1400067c1 <_pei386_runtime_relocator+0x21>
   140006831:	8b 13                	mov    (%rbx),%edx
   140006833:	48 83 f8 0b          	cmp    $0xb,%rax
   140006837:	0f 8f 7b 01 00 00    	jg     1400069b8 <_pei386_runtime_relocator+0x218>
   14000683d:	8b 03                	mov    (%rbx),%eax
   14000683f:	85 c0                	test   %eax,%eax
   140006841:	0f 85 69 02 00 00    	jne    140006ab0 <_pei386_runtime_relocator+0x310>
   140006847:	8b 43 04             	mov    0x4(%rbx),%eax
   14000684a:	85 c0                	test   %eax,%eax
   14000684c:	0f 85 5e 02 00 00    	jne    140006ab0 <_pei386_runtime_relocator+0x310>
   140006852:	8b 53 08             	mov    0x8(%rbx),%edx
   140006855:	83 fa 01             	cmp    $0x1,%edx
   140006858:	0f 85 90 02 00 00    	jne    140006aee <_pei386_runtime_relocator+0x34e>
   14000685e:	48 83 c3 0c          	add    $0xc,%rbx
   140006862:	4c 39 eb             	cmp    %r13,%rbx
   140006865:	0f 83 56 ff ff ff    	jae    1400067c1 <_pei386_runtime_relocator+0x21>
   14000686b:	4c 8b 35 5e 2c 00 00 	mov    0x2c5e(%rip),%r14        # 1400094d0 <.refptr.__ImageBase>
   140006872:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140006879:	ff ff ff 
   14000687c:	eb 54                	jmp    1400068d2 <_pei386_runtime_relocator+0x132>
   14000687e:	66 90                	xchg   %ax,%ax
   140006880:	0f b6 37             	movzbl (%rdi),%esi
   140006883:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140006889:	40 84 f6             	test   %sil,%sil
   14000688c:	0f 89 06 02 00 00    	jns    140006a98 <_pei386_runtime_relocator+0x2f8>
   140006892:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140006899:	48 29 c6             	sub    %rax,%rsi
   14000689c:	4c 01 ce             	add    %r9,%rsi
   14000689f:	85 c9                	test   %ecx,%ecx
   1400068a1:	75 17                	jne    1400068ba <_pei386_runtime_relocator+0x11a>
   1400068a3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   1400068aa:	0f 8f 4f 01 00 00    	jg     1400069ff <_pei386_runtime_relocator+0x25f>
   1400068b0:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   1400068b4:	0f 8c 45 01 00 00    	jl     1400069ff <_pei386_runtime_relocator+0x25f>
   1400068ba:	48 89 f9             	mov    %rdi,%rcx
   1400068bd:	e8 6e fd ff ff       	call   140006630 <mark_section_writable>
   1400068c2:	40 88 37             	mov    %sil,(%rdi)
   1400068c5:	48 83 c3 0c          	add    $0xc,%rbx
   1400068c9:	4c 39 eb             	cmp    %r13,%rbx
   1400068cc:	0f 83 8e 00 00 00    	jae    140006960 <_pei386_runtime_relocator+0x1c0>
   1400068d2:	8b 03                	mov    (%rbx),%eax
   1400068d4:	8b 4b 08             	mov    0x8(%rbx),%ecx
   1400068d7:	8b 7b 04             	mov    0x4(%rbx),%edi
   1400068da:	4c 01 f0             	add    %r14,%rax
   1400068dd:	0f b6 d1             	movzbl %cl,%edx
   1400068e0:	4c 8b 08             	mov    (%rax),%r9
   1400068e3:	4c 01 f7             	add    %r14,%rdi
   1400068e6:	83 fa 20             	cmp    $0x20,%edx
   1400068e9:	0f 84 29 01 00 00    	je     140006a18 <_pei386_runtime_relocator+0x278>
   1400068ef:	0f 87 eb 00 00 00    	ja     1400069e0 <_pei386_runtime_relocator+0x240>
   1400068f5:	83 fa 08             	cmp    $0x8,%edx
   1400068f8:	74 86                	je     140006880 <_pei386_runtime_relocator+0xe0>
   1400068fa:	83 fa 10             	cmp    $0x10,%edx
   1400068fd:	0f 85 df 01 00 00    	jne    140006ae2 <_pei386_runtime_relocator+0x342>
   140006903:	0f b7 37             	movzwl (%rdi),%esi
   140006906:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   14000690c:	66 85 f6             	test   %si,%si
   14000690f:	0f 89 6b 01 00 00    	jns    140006a80 <_pei386_runtime_relocator+0x2e0>
   140006915:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   14000691c:	48 29 c6             	sub    %rax,%rsi
   14000691f:	4c 01 ce             	add    %r9,%rsi
   140006922:	85 c9                	test   %ecx,%ecx
   140006924:	75 1a                	jne    140006940 <_pei386_runtime_relocator+0x1a0>
   140006926:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   14000692d:	0f 8c cc 00 00 00    	jl     1400069ff <_pei386_runtime_relocator+0x25f>
   140006933:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   14000693a:	0f 8f bf 00 00 00    	jg     1400069ff <_pei386_runtime_relocator+0x25f>
   140006940:	48 89 f9             	mov    %rdi,%rcx
   140006943:	48 83 c3 0c          	add    $0xc,%rbx
   140006947:	e8 e4 fc ff ff       	call   140006630 <mark_section_writable>
   14000694c:	66 89 37             	mov    %si,(%rdi)
   14000694f:	4c 39 eb             	cmp    %r13,%rbx
   140006952:	0f 82 7a ff ff ff    	jb     1400068d2 <_pei386_runtime_relocator+0x132>
   140006958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000695f:	00 
   140006960:	8b 15 7e 57 00 00    	mov    0x577e(%rip),%edx        # 14000c0e4 <maxSections>
   140006966:	85 d2                	test   %edx,%edx
   140006968:	0f 8e 53 fe ff ff    	jle    1400067c1 <_pei386_runtime_relocator+0x21>
   14000696e:	48 8b 35 df 69 00 00 	mov    0x69df(%rip),%rsi        # 14000d354 <__imp_VirtualProtect>
   140006975:	31 db                	xor    %ebx,%ebx
   140006977:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   14000697b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006980:	48 8b 05 61 57 00 00 	mov    0x5761(%rip),%rax        # 14000c0e8 <the_secs>
   140006987:	48 01 d8             	add    %rbx,%rax
   14000698a:	44 8b 00             	mov    (%rax),%r8d
   14000698d:	45 85 c0             	test   %r8d,%r8d
   140006990:	74 0d                	je     14000699f <_pei386_runtime_relocator+0x1ff>
   140006992:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140006996:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000699a:	49 89 f9             	mov    %rdi,%r9
   14000699d:	ff d6                	call   *%rsi
   14000699f:	41 83 c4 01          	add    $0x1,%r12d
   1400069a3:	48 83 c3 28          	add    $0x28,%rbx
   1400069a7:	44 3b 25 36 57 00 00 	cmp    0x5736(%rip),%r12d        # 14000c0e4 <maxSections>
   1400069ae:	7c d0                	jl     140006980 <_pei386_runtime_relocator+0x1e0>
   1400069b0:	e9 0c fe ff ff       	jmp    1400067c1 <_pei386_runtime_relocator+0x21>
   1400069b5:	0f 1f 00             	nopl   (%rax)
   1400069b8:	85 d2                	test   %edx,%edx
   1400069ba:	0f 85 f0 00 00 00    	jne    140006ab0 <_pei386_runtime_relocator+0x310>
   1400069c0:	8b 43 04             	mov    0x4(%rbx),%eax
   1400069c3:	89 c2                	mov    %eax,%edx
   1400069c5:	0b 53 08             	or     0x8(%rbx),%edx
   1400069c8:	0f 85 7c fe ff ff    	jne    14000684a <_pei386_runtime_relocator+0xaa>
   1400069ce:	48 83 c3 0c          	add    $0xc,%rbx
   1400069d2:	e9 66 fe ff ff       	jmp    14000683d <_pei386_runtime_relocator+0x9d>
   1400069d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400069de:	00 00 
   1400069e0:	83 fa 40             	cmp    $0x40,%edx
   1400069e3:	0f 85 f9 00 00 00    	jne    140006ae2 <_pei386_runtime_relocator+0x342>
   1400069e9:	48 8b 37             	mov    (%rdi),%rsi
   1400069ec:	48 29 c6             	sub    %rax,%rsi
   1400069ef:	4c 01 ce             	add    %r9,%rsi
   1400069f2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400069f8:	75 66                	jne    140006a60 <_pei386_runtime_relocator+0x2c0>
   1400069fa:	48 85 f6             	test   %rsi,%rsi
   1400069fd:	78 61                	js     140006a60 <_pei386_runtime_relocator+0x2c0>
   1400069ff:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140006a04:	49 89 f8             	mov    %rdi,%r8
   140006a07:	48 8d 0d 7a 29 00 00 	lea    0x297a(%rip),%rcx        # 140009388 <.rdata+0x108>
   140006a0e:	e8 ad fb ff ff       	call   1400065c0 <__report_error>
   140006a13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006a18:	8b 37                	mov    (%rdi),%esi
   140006a1a:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140006a20:	85 f6                	test   %esi,%esi
   140006a22:	79 4c                	jns    140006a70 <_pei386_runtime_relocator+0x2d0>
   140006a24:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140006a2b:	ff ff ff 
   140006a2e:	4c 09 de             	or     %r11,%rsi
   140006a31:	48 29 c6             	sub    %rax,%rsi
   140006a34:	4c 01 ce             	add    %r9,%rsi
   140006a37:	85 c9                	test   %ecx,%ecx
   140006a39:	75 0f                	jne    140006a4a <_pei386_runtime_relocator+0x2aa>
   140006a3b:	4c 39 fe             	cmp    %r15,%rsi
   140006a3e:	7e bf                	jle    1400069ff <_pei386_runtime_relocator+0x25f>
   140006a40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140006a45:	48 39 c6             	cmp    %rax,%rsi
   140006a48:	7f b5                	jg     1400069ff <_pei386_runtime_relocator+0x25f>
   140006a4a:	48 89 f9             	mov    %rdi,%rcx
   140006a4d:	e8 de fb ff ff       	call   140006630 <mark_section_writable>
   140006a52:	89 37                	mov    %esi,(%rdi)
   140006a54:	e9 6c fe ff ff       	jmp    1400068c5 <_pei386_runtime_relocator+0x125>
   140006a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006a60:	48 89 f9             	mov    %rdi,%rcx
   140006a63:	e8 c8 fb ff ff       	call   140006630 <mark_section_writable>
   140006a68:	48 89 37             	mov    %rsi,(%rdi)
   140006a6b:	e9 55 fe ff ff       	jmp    1400068c5 <_pei386_runtime_relocator+0x125>
   140006a70:	48 29 c6             	sub    %rax,%rsi
   140006a73:	4c 01 ce             	add    %r9,%rsi
   140006a76:	85 c9                	test   %ecx,%ecx
   140006a78:	74 c1                	je     140006a3b <_pei386_runtime_relocator+0x29b>
   140006a7a:	eb ce                	jmp    140006a4a <_pei386_runtime_relocator+0x2aa>
   140006a7c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006a80:	48 29 c6             	sub    %rax,%rsi
   140006a83:	4c 01 ce             	add    %r9,%rsi
   140006a86:	85 c9                	test   %ecx,%ecx
   140006a88:	0f 84 98 fe ff ff    	je     140006926 <_pei386_runtime_relocator+0x186>
   140006a8e:	e9 ad fe ff ff       	jmp    140006940 <_pei386_runtime_relocator+0x1a0>
   140006a93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006a98:	48 29 c6             	sub    %rax,%rsi
   140006a9b:	4c 01 ce             	add    %r9,%rsi
   140006a9e:	85 c9                	test   %ecx,%ecx
   140006aa0:	0f 84 fd fd ff ff    	je     1400068a3 <_pei386_runtime_relocator+0x103>
   140006aa6:	e9 0f fe ff ff       	jmp    1400068ba <_pei386_runtime_relocator+0x11a>
   140006aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006ab0:	4c 39 eb             	cmp    %r13,%rbx
   140006ab3:	0f 83 08 fd ff ff    	jae    1400067c1 <_pei386_runtime_relocator+0x21>
   140006ab9:	4c 8b 35 10 2a 00 00 	mov    0x2a10(%rip),%r14        # 1400094d0 <.refptr.__ImageBase>
   140006ac0:	8b 73 04             	mov    0x4(%rbx),%esi
   140006ac3:	8b 3b                	mov    (%rbx),%edi
   140006ac5:	48 83 c3 08          	add    $0x8,%rbx
   140006ac9:	4c 01 f6             	add    %r14,%rsi
   140006acc:	03 3e                	add    (%rsi),%edi
   140006ace:	48 89 f1             	mov    %rsi,%rcx
   140006ad1:	e8 5a fb ff ff       	call   140006630 <mark_section_writable>
   140006ad6:	89 3e                	mov    %edi,(%rsi)
   140006ad8:	4c 39 eb             	cmp    %r13,%rbx
   140006adb:	72 e3                	jb     140006ac0 <_pei386_runtime_relocator+0x320>
   140006add:	e9 7e fe ff ff       	jmp    140006960 <_pei386_runtime_relocator+0x1c0>
   140006ae2:	48 8d 0d 6f 28 00 00 	lea    0x286f(%rip),%rcx        # 140009358 <.rdata+0xd8>
   140006ae9:	e8 d2 fa ff ff       	call   1400065c0 <__report_error>
   140006aee:	48 8d 0d 2b 28 00 00 	lea    0x282b(%rip),%rcx        # 140009320 <.rdata+0xa0>
   140006af5:	e8 c6 fa ff ff       	call   1400065c0 <__report_error>
   140006afa:	90                   	nop
   140006afb:	90                   	nop
   140006afc:	90                   	nop
   140006afd:	90                   	nop
   140006afe:	90                   	nop
   140006aff:	90                   	nop

0000000140006b00 <__mingw_raise_matherr>:
   140006b00:	48 83 ec 58          	sub    $0x58,%rsp
   140006b04:	48 8b 05 e5 55 00 00 	mov    0x55e5(%rip),%rax        # 14000c0f0 <stUserMathErr>
   140006b0b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140006b0f:	48 85 c0             	test   %rax,%rax
   140006b12:	74 25                	je     140006b39 <__mingw_raise_matherr+0x39>
   140006b14:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140006b1b:	00 00 
   140006b1d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140006b21:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140006b26:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140006b2b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140006b30:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140006b36:	ff d0                	call   *%rax
   140006b38:	90                   	nop
   140006b39:	48 83 c4 58          	add    $0x58,%rsp
   140006b3d:	c3                   	ret
   140006b3e:	66 90                	xchg   %ax,%ax

0000000140006b40 <__mingw_setusermatherr>:
   140006b40:	48 89 0d a9 55 00 00 	mov    %rcx,0x55a9(%rip)        # 14000c0f0 <stUserMathErr>
   140006b47:	e9 e4 08 00 00       	jmp    140007430 <__setusermatherr>
   140006b4c:	90                   	nop
   140006b4d:	90                   	nop
   140006b4e:	90                   	nop
   140006b4f:	90                   	nop

0000000140006b50 <_gnu_exception_handler>:
   140006b50:	53                   	push   %rbx
   140006b51:	48 83 ec 20          	sub    $0x20,%rsp
   140006b55:	48 8b 11             	mov    (%rcx),%rdx
   140006b58:	8b 02                	mov    (%rdx),%eax
   140006b5a:	48 89 cb             	mov    %rcx,%rbx
   140006b5d:	89 c1                	mov    %eax,%ecx
   140006b5f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140006b65:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140006b6b:	0f 84 9f 00 00 00    	je     140006c10 <_gnu_exception_handler+0xc0>
   140006b71:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140006b76:	77 77                	ja     140006bef <_gnu_exception_handler+0x9f>
   140006b78:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140006b7d:	76 21                	jbe    140006ba0 <_gnu_exception_handler+0x50>
   140006b7f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140006b84:	83 f8 09             	cmp    $0x9,%eax
   140006b87:	77 54                	ja     140006bdd <_gnu_exception_handler+0x8d>
   140006b89:	48 8d 15 50 28 00 00 	lea    0x2850(%rip),%rdx        # 1400093e0 <.rdata>
   140006b90:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140006b94:	48 01 d0             	add    %rdx,%rax
   140006b97:	ff e0                	jmp    *%rax
   140006b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006ba0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140006ba5:	0f 84 d5 00 00 00    	je     140006c80 <_gnu_exception_handler+0x130>
   140006bab:	76 3b                	jbe    140006be8 <_gnu_exception_handler+0x98>
   140006bad:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140006bb2:	74 29                	je     140006bdd <_gnu_exception_handler+0x8d>
   140006bb4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140006bb9:	75 34                	jne    140006bef <_gnu_exception_handler+0x9f>
   140006bbb:	31 d2                	xor    %edx,%edx
   140006bbd:	b9 04 00 00 00       	mov    $0x4,%ecx
   140006bc2:	e8 d1 08 00 00       	call   140007498 <signal>
   140006bc7:	48 83 f8 01          	cmp    $0x1,%rax
   140006bcb:	0f 84 d6 00 00 00    	je     140006ca7 <_gnu_exception_handler+0x157>
   140006bd1:	48 85 c0             	test   %rax,%rax
   140006bd4:	74 19                	je     140006bef <_gnu_exception_handler+0x9f>
   140006bd6:	b9 04 00 00 00       	mov    $0x4,%ecx
   140006bdb:	ff d0                	call   *%rax
   140006bdd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140006be2:	48 83 c4 20          	add    $0x20,%rsp
   140006be6:	5b                   	pop    %rbx
   140006be7:	c3                   	ret
   140006be8:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140006bed:	74 ee                	je     140006bdd <_gnu_exception_handler+0x8d>
   140006bef:	48 8b 05 1a 55 00 00 	mov    0x551a(%rip),%rax        # 14000c110 <__mingw_oldexcpt_handler>
   140006bf6:	48 85 c0             	test   %rax,%rax
   140006bf9:	74 25                	je     140006c20 <_gnu_exception_handler+0xd0>
   140006bfb:	48 89 d9             	mov    %rbx,%rcx
   140006bfe:	48 83 c4 20          	add    $0x20,%rsp
   140006c02:	5b                   	pop    %rbx
   140006c03:	48 ff e0             	rex.W jmp *%rax
   140006c06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006c0d:	00 00 00 
   140006c10:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140006c14:	0f 85 57 ff ff ff    	jne    140006b71 <_gnu_exception_handler+0x21>
   140006c1a:	eb c1                	jmp    140006bdd <_gnu_exception_handler+0x8d>
   140006c1c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006c20:	31 c0                	xor    %eax,%eax
   140006c22:	48 83 c4 20          	add    $0x20,%rsp
   140006c26:	5b                   	pop    %rbx
   140006c27:	c3                   	ret
   140006c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006c2f:	00 
   140006c30:	31 d2                	xor    %edx,%edx
   140006c32:	b9 08 00 00 00       	mov    $0x8,%ecx
   140006c37:	e8 5c 08 00 00       	call   140007498 <signal>
   140006c3c:	48 83 f8 01          	cmp    $0x1,%rax
   140006c40:	0f 84 89 00 00 00    	je     140006ccf <_gnu_exception_handler+0x17f>
   140006c46:	48 85 c0             	test   %rax,%rax
   140006c49:	74 a4                	je     140006bef <_gnu_exception_handler+0x9f>
   140006c4b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140006c50:	ff d0                	call   *%rax
   140006c52:	eb 89                	jmp    140006bdd <_gnu_exception_handler+0x8d>
   140006c54:	0f 1f 40 00          	nopl   0x0(%rax)
   140006c58:	31 d2                	xor    %edx,%edx
   140006c5a:	b9 08 00 00 00       	mov    $0x8,%ecx
   140006c5f:	e8 34 08 00 00       	call   140007498 <signal>
   140006c64:	48 83 f8 01          	cmp    $0x1,%rax
   140006c68:	75 dc                	jne    140006c46 <_gnu_exception_handler+0xf6>
   140006c6a:	ba 01 00 00 00       	mov    $0x1,%edx
   140006c6f:	b9 08 00 00 00       	mov    $0x8,%ecx
   140006c74:	e8 1f 08 00 00       	call   140007498 <signal>
   140006c79:	e9 5f ff ff ff       	jmp    140006bdd <_gnu_exception_handler+0x8d>
   140006c7e:	66 90                	xchg   %ax,%ax
   140006c80:	31 d2                	xor    %edx,%edx
   140006c82:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140006c87:	e8 0c 08 00 00       	call   140007498 <signal>
   140006c8c:	48 83 f8 01          	cmp    $0x1,%rax
   140006c90:	74 29                	je     140006cbb <_gnu_exception_handler+0x16b>
   140006c92:	48 85 c0             	test   %rax,%rax
   140006c95:	0f 84 54 ff ff ff    	je     140006bef <_gnu_exception_handler+0x9f>
   140006c9b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140006ca0:	ff d0                	call   *%rax
   140006ca2:	e9 36 ff ff ff       	jmp    140006bdd <_gnu_exception_handler+0x8d>
   140006ca7:	ba 01 00 00 00       	mov    $0x1,%edx
   140006cac:	b9 04 00 00 00       	mov    $0x4,%ecx
   140006cb1:	e8 e2 07 00 00       	call   140007498 <signal>
   140006cb6:	e9 22 ff ff ff       	jmp    140006bdd <_gnu_exception_handler+0x8d>
   140006cbb:	ba 01 00 00 00       	mov    $0x1,%edx
   140006cc0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140006cc5:	e8 ce 07 00 00       	call   140007498 <signal>
   140006cca:	e9 0e ff ff ff       	jmp    140006bdd <_gnu_exception_handler+0x8d>
   140006ccf:	ba 01 00 00 00       	mov    $0x1,%edx
   140006cd4:	b9 08 00 00 00       	mov    $0x8,%ecx
   140006cd9:	e8 ba 07 00 00       	call   140007498 <signal>
   140006cde:	e8 cd f8 ff ff       	call   1400065b0 <_fpreset>
   140006ce3:	e9 f5 fe ff ff       	jmp    140006bdd <_gnu_exception_handler+0x8d>
   140006ce8:	90                   	nop
   140006ce9:	90                   	nop
   140006cea:	90                   	nop
   140006ceb:	90                   	nop
   140006cec:	90                   	nop
   140006ced:	90                   	nop
   140006cee:	90                   	nop
   140006cef:	90                   	nop

0000000140006cf0 <__mingwthr_run_key_dtors.part.0>:
   140006cf0:	41 54                	push   %r12
   140006cf2:	55                   	push   %rbp
   140006cf3:	57                   	push   %rdi
   140006cf4:	56                   	push   %rsi
   140006cf5:	53                   	push   %rbx
   140006cf6:	48 83 ec 20          	sub    $0x20,%rsp
   140006cfa:	4c 8d 25 3f 54 00 00 	lea    0x543f(%rip),%r12        # 14000c140 <__mingwthr_cs>
   140006d01:	4c 89 e1             	mov    %r12,%rcx
   140006d04:	ff 15 12 66 00 00    	call   *0x6612(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   140006d0a:	48 8b 1d 0f 54 00 00 	mov    0x540f(%rip),%rbx        # 14000c120 <key_dtor_list>
   140006d11:	48 85 db             	test   %rbx,%rbx
   140006d14:	74 36                	je     140006d4c <__mingwthr_run_key_dtors.part.0+0x5c>
   140006d16:	48 8b 2d 2f 66 00 00 	mov    0x662f(%rip),%rbp        # 14000d34c <__imp_TlsGetValue>
   140006d1d:	48 8b 3d 00 66 00 00 	mov    0x6600(%rip),%rdi        # 14000d324 <__imp_GetLastError>
   140006d24:	0f 1f 40 00          	nopl   0x0(%rax)
   140006d28:	8b 0b                	mov    (%rbx),%ecx
   140006d2a:	ff d5                	call   *%rbp
   140006d2c:	48 89 c6             	mov    %rax,%rsi
   140006d2f:	ff d7                	call   *%rdi
   140006d31:	85 c0                	test   %eax,%eax
   140006d33:	75 0e                	jne    140006d43 <__mingwthr_run_key_dtors.part.0+0x53>
   140006d35:	48 85 f6             	test   %rsi,%rsi
   140006d38:	74 09                	je     140006d43 <__mingwthr_run_key_dtors.part.0+0x53>
   140006d3a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140006d3e:	48 89 f1             	mov    %rsi,%rcx
   140006d41:	ff d0                	call   *%rax
   140006d43:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140006d47:	48 85 db             	test   %rbx,%rbx
   140006d4a:	75 dc                	jne    140006d28 <__mingwthr_run_key_dtors.part.0+0x38>
   140006d4c:	4c 89 e1             	mov    %r12,%rcx
   140006d4f:	48 83 c4 20          	add    $0x20,%rsp
   140006d53:	5b                   	pop    %rbx
   140006d54:	5e                   	pop    %rsi
   140006d55:	5f                   	pop    %rdi
   140006d56:	5d                   	pop    %rbp
   140006d57:	41 5c                	pop    %r12
   140006d59:	48 ff 25 d4 65 00 00 	rex.W jmp *0x65d4(%rip)        # 14000d334 <__imp_LeaveCriticalSection>

0000000140006d60 <___w64_mingwthr_add_key_dtor>:
   140006d60:	57                   	push   %rdi
   140006d61:	56                   	push   %rsi
   140006d62:	53                   	push   %rbx
   140006d63:	48 83 ec 20          	sub    $0x20,%rsp
   140006d67:	8b 05 bb 53 00 00    	mov    0x53bb(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140006d6d:	89 cf                	mov    %ecx,%edi
   140006d6f:	48 89 d6             	mov    %rdx,%rsi
   140006d72:	85 c0                	test   %eax,%eax
   140006d74:	75 0a                	jne    140006d80 <___w64_mingwthr_add_key_dtor+0x20>
   140006d76:	31 c0                	xor    %eax,%eax
   140006d78:	48 83 c4 20          	add    $0x20,%rsp
   140006d7c:	5b                   	pop    %rbx
   140006d7d:	5e                   	pop    %rsi
   140006d7e:	5f                   	pop    %rdi
   140006d7f:	c3                   	ret
   140006d80:	ba 18 00 00 00       	mov    $0x18,%edx
   140006d85:	b9 01 00 00 00       	mov    $0x1,%ecx
   140006d8a:	e8 d1 06 00 00       	call   140007460 <calloc>
   140006d8f:	48 89 c3             	mov    %rax,%rbx
   140006d92:	48 85 c0             	test   %rax,%rax
   140006d95:	74 33                	je     140006dca <___w64_mingwthr_add_key_dtor+0x6a>
   140006d97:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140006d9b:	48 8d 35 9e 53 00 00 	lea    0x539e(%rip),%rsi        # 14000c140 <__mingwthr_cs>
   140006da2:	89 38                	mov    %edi,(%rax)
   140006da4:	48 89 f1             	mov    %rsi,%rcx
   140006da7:	ff 15 6f 65 00 00    	call   *0x656f(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   140006dad:	48 8b 05 6c 53 00 00 	mov    0x536c(%rip),%rax        # 14000c120 <key_dtor_list>
   140006db4:	48 89 f1             	mov    %rsi,%rcx
   140006db7:	48 89 1d 62 53 00 00 	mov    %rbx,0x5362(%rip)        # 14000c120 <key_dtor_list>
   140006dbe:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140006dc2:	ff 15 6c 65 00 00    	call   *0x656c(%rip)        # 14000d334 <__imp_LeaveCriticalSection>
   140006dc8:	eb ac                	jmp    140006d76 <___w64_mingwthr_add_key_dtor+0x16>
   140006dca:	83 c8 ff             	or     $0xffffffff,%eax
   140006dcd:	eb a9                	jmp    140006d78 <___w64_mingwthr_add_key_dtor+0x18>
   140006dcf:	90                   	nop

0000000140006dd0 <___w64_mingwthr_remove_key_dtor>:
   140006dd0:	56                   	push   %rsi
   140006dd1:	53                   	push   %rbx
   140006dd2:	48 83 ec 28          	sub    $0x28,%rsp
   140006dd6:	8b 05 4c 53 00 00    	mov    0x534c(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140006ddc:	89 cb                	mov    %ecx,%ebx
   140006dde:	85 c0                	test   %eax,%eax
   140006de0:	75 0e                	jne    140006df0 <___w64_mingwthr_remove_key_dtor+0x20>
   140006de2:	31 c0                	xor    %eax,%eax
   140006de4:	48 83 c4 28          	add    $0x28,%rsp
   140006de8:	5b                   	pop    %rbx
   140006de9:	5e                   	pop    %rsi
   140006dea:	c3                   	ret
   140006deb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006df0:	48 8d 35 49 53 00 00 	lea    0x5349(%rip),%rsi        # 14000c140 <__mingwthr_cs>
   140006df7:	48 89 f1             	mov    %rsi,%rcx
   140006dfa:	ff 15 1c 65 00 00    	call   *0x651c(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   140006e00:	48 8b 0d 19 53 00 00 	mov    0x5319(%rip),%rcx        # 14000c120 <key_dtor_list>
   140006e07:	48 85 c9             	test   %rcx,%rcx
   140006e0a:	74 27                	je     140006e33 <___w64_mingwthr_remove_key_dtor+0x63>
   140006e0c:	31 d2                	xor    %edx,%edx
   140006e0e:	eb 0b                	jmp    140006e1b <___w64_mingwthr_remove_key_dtor+0x4b>
   140006e10:	48 89 ca             	mov    %rcx,%rdx
   140006e13:	48 85 c0             	test   %rax,%rax
   140006e16:	74 1b                	je     140006e33 <___w64_mingwthr_remove_key_dtor+0x63>
   140006e18:	48 89 c1             	mov    %rax,%rcx
   140006e1b:	8b 01                	mov    (%rcx),%eax
   140006e1d:	39 d8                	cmp    %ebx,%eax
   140006e1f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140006e23:	75 eb                	jne    140006e10 <___w64_mingwthr_remove_key_dtor+0x40>
   140006e25:	48 85 d2             	test   %rdx,%rdx
   140006e28:	74 1e                	je     140006e48 <___w64_mingwthr_remove_key_dtor+0x78>
   140006e2a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140006e2e:	e8 45 06 00 00       	call   140007478 <free>
   140006e33:	48 89 f1             	mov    %rsi,%rcx
   140006e36:	ff 15 f8 64 00 00    	call   *0x64f8(%rip)        # 14000d334 <__imp_LeaveCriticalSection>
   140006e3c:	31 c0                	xor    %eax,%eax
   140006e3e:	48 83 c4 28          	add    $0x28,%rsp
   140006e42:	5b                   	pop    %rbx
   140006e43:	5e                   	pop    %rsi
   140006e44:	c3                   	ret
   140006e45:	0f 1f 00             	nopl   (%rax)
   140006e48:	48 89 05 d1 52 00 00 	mov    %rax,0x52d1(%rip)        # 14000c120 <key_dtor_list>
   140006e4f:	eb dd                	jmp    140006e2e <___w64_mingwthr_remove_key_dtor+0x5e>
   140006e51:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006e58:	00 00 00 00 
   140006e5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140006e60 <__mingw_TLScallback>:
   140006e60:	53                   	push   %rbx
   140006e61:	48 83 ec 20          	sub    $0x20,%rsp
   140006e65:	83 fa 02             	cmp    $0x2,%edx
   140006e68:	0f 84 b2 00 00 00    	je     140006f20 <__mingw_TLScallback+0xc0>
   140006e6e:	77 30                	ja     140006ea0 <__mingw_TLScallback+0x40>
   140006e70:	85 d2                	test   %edx,%edx
   140006e72:	74 4c                	je     140006ec0 <__mingw_TLScallback+0x60>
   140006e74:	8b 05 ae 52 00 00    	mov    0x52ae(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140006e7a:	85 c0                	test   %eax,%eax
   140006e7c:	0f 84 be 00 00 00    	je     140006f40 <__mingw_TLScallback+0xe0>
   140006e82:	c7 05 9c 52 00 00 01 	movl   $0x1,0x529c(%rip)        # 14000c128 <__mingwthr_cs_init>
   140006e89:	00 00 00 
   140006e8c:	b8 01 00 00 00       	mov    $0x1,%eax
   140006e91:	48 83 c4 20          	add    $0x20,%rsp
   140006e95:	5b                   	pop    %rbx
   140006e96:	c3                   	ret
   140006e97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140006e9e:	00 00 
   140006ea0:	83 fa 03             	cmp    $0x3,%edx
   140006ea3:	75 e7                	jne    140006e8c <__mingw_TLScallback+0x2c>
   140006ea5:	8b 05 7d 52 00 00    	mov    0x527d(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140006eab:	85 c0                	test   %eax,%eax
   140006ead:	74 dd                	je     140006e8c <__mingw_TLScallback+0x2c>
   140006eaf:	e8 3c fe ff ff       	call   140006cf0 <__mingwthr_run_key_dtors.part.0>
   140006eb4:	eb d6                	jmp    140006e8c <__mingw_TLScallback+0x2c>
   140006eb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006ebd:	00 00 00 
   140006ec0:	8b 05 62 52 00 00    	mov    0x5262(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140006ec6:	85 c0                	test   %eax,%eax
   140006ec8:	75 66                	jne    140006f30 <__mingw_TLScallback+0xd0>
   140006eca:	8b 05 58 52 00 00    	mov    0x5258(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140006ed0:	83 f8 01             	cmp    $0x1,%eax
   140006ed3:	75 b7                	jne    140006e8c <__mingw_TLScallback+0x2c>
   140006ed5:	48 8b 1d 44 52 00 00 	mov    0x5244(%rip),%rbx        # 14000c120 <key_dtor_list>
   140006edc:	48 85 db             	test   %rbx,%rbx
   140006edf:	74 18                	je     140006ef9 <__mingw_TLScallback+0x99>
   140006ee1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006ee8:	48 89 d9             	mov    %rbx,%rcx
   140006eeb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140006eef:	e8 84 05 00 00       	call   140007478 <free>
   140006ef4:	48 85 db             	test   %rbx,%rbx
   140006ef7:	75 ef                	jne    140006ee8 <__mingw_TLScallback+0x88>
   140006ef9:	48 8d 0d 40 52 00 00 	lea    0x5240(%rip),%rcx        # 14000c140 <__mingwthr_cs>
   140006f00:	48 c7 05 15 52 00 00 	movq   $0x0,0x5215(%rip)        # 14000c120 <key_dtor_list>
   140006f07:	00 00 00 00 
   140006f0b:	c7 05 13 52 00 00 00 	movl   $0x0,0x5213(%rip)        # 14000c128 <__mingwthr_cs_init>
   140006f12:	00 00 00 
   140006f15:	ff 15 f9 63 00 00    	call   *0x63f9(%rip)        # 14000d314 <__imp_DeleteCriticalSection>
   140006f1b:	e9 6c ff ff ff       	jmp    140006e8c <__mingw_TLScallback+0x2c>
   140006f20:	e8 8b f6 ff ff       	call   1400065b0 <_fpreset>
   140006f25:	b8 01 00 00 00       	mov    $0x1,%eax
   140006f2a:	48 83 c4 20          	add    $0x20,%rsp
   140006f2e:	5b                   	pop    %rbx
   140006f2f:	c3                   	ret
   140006f30:	e8 bb fd ff ff       	call   140006cf0 <__mingwthr_run_key_dtors.part.0>
   140006f35:	eb 93                	jmp    140006eca <__mingw_TLScallback+0x6a>
   140006f37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140006f3e:	00 00 
   140006f40:	48 8d 0d f9 51 00 00 	lea    0x51f9(%rip),%rcx        # 14000c140 <__mingwthr_cs>
   140006f47:	ff 15 df 63 00 00    	call   *0x63df(%rip)        # 14000d32c <__imp_InitializeCriticalSection>
   140006f4d:	e9 30 ff ff ff       	jmp    140006e82 <__mingw_TLScallback+0x22>
   140006f52:	90                   	nop
   140006f53:	90                   	nop
   140006f54:	90                   	nop
   140006f55:	90                   	nop
   140006f56:	90                   	nop
   140006f57:	90                   	nop
   140006f58:	90                   	nop
   140006f59:	90                   	nop
   140006f5a:	90                   	nop
   140006f5b:	90                   	nop
   140006f5c:	90                   	nop
   140006f5d:	90                   	nop
   140006f5e:	90                   	nop
   140006f5f:	90                   	nop

0000000140006f60 <_ValidateImageBase>:
   140006f60:	31 c0                	xor    %eax,%eax
   140006f62:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140006f67:	75 0f                	jne    140006f78 <_ValidateImageBase+0x18>
   140006f69:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140006f6d:	48 01 d1             	add    %rdx,%rcx
   140006f70:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140006f76:	74 08                	je     140006f80 <_ValidateImageBase+0x20>
   140006f78:	c3                   	ret
   140006f79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006f80:	31 c0                	xor    %eax,%eax
   140006f82:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140006f88:	0f 94 c0             	sete   %al
   140006f8b:	c3                   	ret
   140006f8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140006f90 <_FindPESection>:
   140006f90:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140006f94:	48 01 c1             	add    %rax,%rcx
   140006f97:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140006f9b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140006fa0:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140006fa5:	66 45 85 c0          	test   %r8w,%r8w
   140006fa9:	74 32                	je     140006fdd <_FindPESection+0x4d>
   140006fab:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   140006faf:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140006fb3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140006fb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006fbf:	00 
   140006fc0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140006fc4:	4c 89 c1             	mov    %r8,%rcx
   140006fc7:	4c 39 c2             	cmp    %r8,%rdx
   140006fca:	72 08                	jb     140006fd4 <_FindPESection+0x44>
   140006fcc:	03 48 08             	add    0x8(%rax),%ecx
   140006fcf:	48 39 ca             	cmp    %rcx,%rdx
   140006fd2:	72 0b                	jb     140006fdf <_FindPESection+0x4f>
   140006fd4:	48 83 c0 28          	add    $0x28,%rax
   140006fd8:	4c 39 c8             	cmp    %r9,%rax
   140006fdb:	75 e3                	jne    140006fc0 <_FindPESection+0x30>
   140006fdd:	31 c0                	xor    %eax,%eax
   140006fdf:	c3                   	ret

0000000140006fe0 <_FindPESectionByName>:
   140006fe0:	57                   	push   %rdi
   140006fe1:	56                   	push   %rsi
   140006fe2:	53                   	push   %rbx
   140006fe3:	48 83 ec 20          	sub    $0x20,%rsp
   140006fe7:	48 89 ce             	mov    %rcx,%rsi
   140006fea:	e8 b1 04 00 00       	call   1400074a0 <strlen>
   140006fef:	48 83 f8 08          	cmp    $0x8,%rax
   140006ff3:	77 7b                	ja     140007070 <_FindPESectionByName+0x90>
   140006ff5:	48 8b 15 d4 24 00 00 	mov    0x24d4(%rip),%rdx        # 1400094d0 <.refptr.__ImageBase>
   140006ffc:	31 db                	xor    %ebx,%ebx
   140006ffe:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140007003:	75 59                	jne    14000705e <_FindPESectionByName+0x7e>
   140007005:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140007009:	48 01 d0             	add    %rdx,%rax
   14000700c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140007012:	75 4a                	jne    14000705e <_FindPESectionByName+0x7e>
   140007014:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000701a:	75 42                	jne    14000705e <_FindPESectionByName+0x7e>
   14000701c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140007020:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140007025:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140007029:	66 85 d2             	test   %dx,%dx
   14000702c:	74 42                	je     140007070 <_FindPESectionByName+0x90>
   14000702e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140007031:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140007035:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000703a:	eb 0d                	jmp    140007049 <_FindPESectionByName+0x69>
   14000703c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007040:	48 83 c3 28          	add    $0x28,%rbx
   140007044:	48 39 fb             	cmp    %rdi,%rbx
   140007047:	74 27                	je     140007070 <_FindPESectionByName+0x90>
   140007049:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000704f:	48 89 f2             	mov    %rsi,%rdx
   140007052:	48 89 d9             	mov    %rbx,%rcx
   140007055:	e8 4e 04 00 00       	call   1400074a8 <strncmp>
   14000705a:	85 c0                	test   %eax,%eax
   14000705c:	75 e2                	jne    140007040 <_FindPESectionByName+0x60>
   14000705e:	48 89 d8             	mov    %rbx,%rax
   140007061:	48 83 c4 20          	add    $0x20,%rsp
   140007065:	5b                   	pop    %rbx
   140007066:	5e                   	pop    %rsi
   140007067:	5f                   	pop    %rdi
   140007068:	c3                   	ret
   140007069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007070:	31 db                	xor    %ebx,%ebx
   140007072:	48 89 d8             	mov    %rbx,%rax
   140007075:	48 83 c4 20          	add    $0x20,%rsp
   140007079:	5b                   	pop    %rbx
   14000707a:	5e                   	pop    %rsi
   14000707b:	5f                   	pop    %rdi
   14000707c:	c3                   	ret
   14000707d:	0f 1f 00             	nopl   (%rax)

0000000140007080 <__mingw_GetSectionForAddress>:
   140007080:	48 8b 15 49 24 00 00 	mov    0x2449(%rip),%rdx        # 1400094d0 <.refptr.__ImageBase>
   140007087:	31 c0                	xor    %eax,%eax
   140007089:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000708e:	75 10                	jne    1400070a0 <__mingw_GetSectionForAddress+0x20>
   140007090:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140007094:	49 01 d0             	add    %rdx,%r8
   140007097:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000709e:	74 08                	je     1400070a8 <__mingw_GetSectionForAddress+0x28>
   1400070a0:	c3                   	ret
   1400070a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400070a8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400070af:	75 ef                	jne    1400070a0 <__mingw_GetSectionForAddress+0x20>
   1400070b1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400070b6:	48 29 d1             	sub    %rdx,%rcx
   1400070b9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400070be:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400070c3:	66 45 85 c0          	test   %r8w,%r8w
   1400070c7:	74 34                	je     1400070fd <__mingw_GetSectionForAddress+0x7d>
   1400070c9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400070cd:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400070d1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400070d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400070dd:	00 00 00 
   1400070e0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400070e4:	4c 89 c2             	mov    %r8,%rdx
   1400070e7:	4c 39 c1             	cmp    %r8,%rcx
   1400070ea:	72 08                	jb     1400070f4 <__mingw_GetSectionForAddress+0x74>
   1400070ec:	03 50 08             	add    0x8(%rax),%edx
   1400070ef:	48 39 d1             	cmp    %rdx,%rcx
   1400070f2:	72 ac                	jb     1400070a0 <__mingw_GetSectionForAddress+0x20>
   1400070f4:	48 83 c0 28          	add    $0x28,%rax
   1400070f8:	4c 39 c8             	cmp    %r9,%rax
   1400070fb:	75 e3                	jne    1400070e0 <__mingw_GetSectionForAddress+0x60>
   1400070fd:	31 c0                	xor    %eax,%eax
   1400070ff:	c3                   	ret

0000000140007100 <__mingw_GetSectionCount>:
   140007100:	48 8b 05 c9 23 00 00 	mov    0x23c9(%rip),%rax        # 1400094d0 <.refptr.__ImageBase>
   140007107:	31 c9                	xor    %ecx,%ecx
   140007109:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000710e:	75 0f                	jne    14000711f <__mingw_GetSectionCount+0x1f>
   140007110:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140007114:	48 01 d0             	add    %rdx,%rax
   140007117:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000711d:	74 09                	je     140007128 <__mingw_GetSectionCount+0x28>
   14000711f:	89 c8                	mov    %ecx,%eax
   140007121:	c3                   	ret
   140007122:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007128:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000712e:	75 ef                	jne    14000711f <__mingw_GetSectionCount+0x1f>
   140007130:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140007134:	89 c8                	mov    %ecx,%eax
   140007136:	c3                   	ret
   140007137:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000713e:	00 00 

0000000140007140 <_FindPESectionExec>:
   140007140:	4c 8b 05 89 23 00 00 	mov    0x2389(%rip),%r8        # 1400094d0 <.refptr.__ImageBase>
   140007147:	31 c0                	xor    %eax,%eax
   140007149:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000714f:	75 0f                	jne    140007160 <_FindPESectionExec+0x20>
   140007151:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140007155:	4c 01 c2             	add    %r8,%rdx
   140007158:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000715e:	74 08                	je     140007168 <_FindPESectionExec+0x28>
   140007160:	c3                   	ret
   140007161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007168:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000716e:	75 f0                	jne    140007160 <_FindPESectionExec+0x20>
   140007170:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140007174:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140007179:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   14000717e:	66 45 85 c0          	test   %r8w,%r8w
   140007182:	74 2c                	je     1400071b0 <_FindPESectionExec+0x70>
   140007184:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140007188:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000718c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140007191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007198:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000719c:	74 09                	je     1400071a7 <_FindPESectionExec+0x67>
   14000719e:	48 85 c9             	test   %rcx,%rcx
   1400071a1:	74 bd                	je     140007160 <_FindPESectionExec+0x20>
   1400071a3:	48 83 e9 01          	sub    $0x1,%rcx
   1400071a7:	48 83 c0 28          	add    $0x28,%rax
   1400071ab:	48 39 d0             	cmp    %rdx,%rax
   1400071ae:	75 e8                	jne    140007198 <_FindPESectionExec+0x58>
   1400071b0:	31 c0                	xor    %eax,%eax
   1400071b2:	c3                   	ret
   1400071b3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400071ba:	00 00 00 00 
   1400071be:	66 90                	xchg   %ax,%ax

00000001400071c0 <_GetPEImageBase>:
   1400071c0:	48 8b 05 09 23 00 00 	mov    0x2309(%rip),%rax        # 1400094d0 <.refptr.__ImageBase>
   1400071c7:	31 d2                	xor    %edx,%edx
   1400071c9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400071ce:	75 0f                	jne    1400071df <_GetPEImageBase+0x1f>
   1400071d0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400071d4:	48 01 c1             	add    %rax,%rcx
   1400071d7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400071dd:	74 09                	je     1400071e8 <_GetPEImageBase+0x28>
   1400071df:	48 89 d0             	mov    %rdx,%rax
   1400071e2:	c3                   	ret
   1400071e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400071e8:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400071ee:	48 0f 44 d0          	cmove  %rax,%rdx
   1400071f2:	48 89 d0             	mov    %rdx,%rax
   1400071f5:	c3                   	ret
   1400071f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400071fd:	00 00 00 

0000000140007200 <_IsNonwritableInCurrentImage>:
   140007200:	48 8b 15 c9 22 00 00 	mov    0x22c9(%rip),%rdx        # 1400094d0 <.refptr.__ImageBase>
   140007207:	31 c0                	xor    %eax,%eax
   140007209:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000720e:	75 10                	jne    140007220 <_IsNonwritableInCurrentImage+0x20>
   140007210:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140007214:	49 01 d0             	add    %rdx,%r8
   140007217:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000721e:	74 08                	je     140007228 <_IsNonwritableInCurrentImage+0x28>
   140007220:	c3                   	ret
   140007221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007228:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000722f:	75 ef                	jne    140007220 <_IsNonwritableInCurrentImage+0x20>
   140007231:	48 29 d1             	sub    %rdx,%rcx
   140007234:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140007239:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000723e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140007243:	66 45 85 c9          	test   %r9w,%r9w
   140007247:	74 d7                	je     140007220 <_IsNonwritableInCurrentImage+0x20>
   140007249:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000724d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140007251:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140007256:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000725d:	00 00 00 
   140007260:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140007264:	4c 89 c0             	mov    %r8,%rax
   140007267:	4c 39 c1             	cmp    %r8,%rcx
   14000726a:	72 08                	jb     140007274 <_IsNonwritableInCurrentImage+0x74>
   14000726c:	03 42 08             	add    0x8(%rdx),%eax
   14000726f:	48 39 c1             	cmp    %rax,%rcx
   140007272:	72 0c                	jb     140007280 <_IsNonwritableInCurrentImage+0x80>
   140007274:	48 83 c2 28          	add    $0x28,%rdx
   140007278:	49 39 d1             	cmp    %rdx,%r9
   14000727b:	75 e3                	jne    140007260 <_IsNonwritableInCurrentImage+0x60>
   14000727d:	31 c0                	xor    %eax,%eax
   14000727f:	c3                   	ret
   140007280:	8b 42 24             	mov    0x24(%rdx),%eax
   140007283:	f7 d0                	not    %eax
   140007285:	c1 e8 1f             	shr    $0x1f,%eax
   140007288:	c3                   	ret
   140007289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140007290 <__mingw_enum_import_library_names>:
   140007290:	4c 8b 1d 39 22 00 00 	mov    0x2239(%rip),%r11        # 1400094d0 <.refptr.__ImageBase>
   140007297:	45 31 c9             	xor    %r9d,%r9d
   14000729a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400072a0:	75 10                	jne    1400072b2 <__mingw_enum_import_library_names+0x22>
   1400072a2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400072a6:	4d 01 d8             	add    %r11,%r8
   1400072a9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400072b0:	74 0e                	je     1400072c0 <__mingw_enum_import_library_names+0x30>
   1400072b2:	4c 89 c8             	mov    %r9,%rax
   1400072b5:	c3                   	ret
   1400072b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400072bd:	00 00 00 
   1400072c0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400072c7:	75 e9                	jne    1400072b2 <__mingw_enum_import_library_names+0x22>
   1400072c9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400072d0:	85 c0                	test   %eax,%eax
   1400072d2:	74 de                	je     1400072b2 <__mingw_enum_import_library_names+0x22>
   1400072d4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400072d9:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   1400072de:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400072e3:	66 45 85 d2          	test   %r10w,%r10w
   1400072e7:	74 c9                	je     1400072b2 <__mingw_enum_import_library_names+0x22>
   1400072e9:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   1400072ed:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400072f1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400072f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400072fd:	00 00 00 
   140007300:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140007304:	4d 89 c8             	mov    %r9,%r8
   140007307:	4c 39 c8             	cmp    %r9,%rax
   14000730a:	72 09                	jb     140007315 <__mingw_enum_import_library_names+0x85>
   14000730c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140007310:	4c 39 c0             	cmp    %r8,%rax
   140007313:	72 13                	jb     140007328 <__mingw_enum_import_library_names+0x98>
   140007315:	48 83 c2 28          	add    $0x28,%rdx
   140007319:	4c 39 d2             	cmp    %r10,%rdx
   14000731c:	75 e2                	jne    140007300 <__mingw_enum_import_library_names+0x70>
   14000731e:	45 31 c9             	xor    %r9d,%r9d
   140007321:	4c 89 c8             	mov    %r9,%rax
   140007324:	c3                   	ret
   140007325:	0f 1f 00             	nopl   (%rax)
   140007328:	4c 01 d8             	add    %r11,%rax
   14000732b:	eb 0a                	jmp    140007337 <__mingw_enum_import_library_names+0xa7>
   14000732d:	0f 1f 00             	nopl   (%rax)
   140007330:	83 e9 01             	sub    $0x1,%ecx
   140007333:	48 83 c0 14          	add    $0x14,%rax
   140007337:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000733b:	45 85 c0             	test   %r8d,%r8d
   14000733e:	75 07                	jne    140007347 <__mingw_enum_import_library_names+0xb7>
   140007340:	8b 50 0c             	mov    0xc(%rax),%edx
   140007343:	85 d2                	test   %edx,%edx
   140007345:	74 d7                	je     14000731e <__mingw_enum_import_library_names+0x8e>
   140007347:	85 c9                	test   %ecx,%ecx
   140007349:	7f e5                	jg     140007330 <__mingw_enum_import_library_names+0xa0>
   14000734b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000734f:	4d 01 d9             	add    %r11,%r9
   140007352:	4c 89 c8             	mov    %r9,%rax
   140007355:	c3                   	ret
   140007356:	90                   	nop
   140007357:	90                   	nop
   140007358:	90                   	nop
   140007359:	90                   	nop
   14000735a:	90                   	nop
   14000735b:	90                   	nop
   14000735c:	90                   	nop
   14000735d:	90                   	nop
   14000735e:	90                   	nop
   14000735f:	90                   	nop

0000000140007360 <_Unwind_Resume>:
   140007360:	ff 25 9e 5f 00 00    	jmp    *0x5f9e(%rip)        # 14000d304 <__IAT_start__>
   140007366:	90                   	nop
   140007367:	90                   	nop
   140007368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000736f:	00 

0000000140007370 <___chkstk_ms>:
   140007370:	51                   	push   %rcx
   140007371:	50                   	push   %rax
   140007372:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140007378:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000737d:	72 19                	jb     140007398 <___chkstk_ms+0x28>
   14000737f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140007386:	48 83 09 00          	orq    $0x0,(%rcx)
   14000738a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140007390:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140007396:	77 e7                	ja     14000737f <___chkstk_ms+0xf>
   140007398:	48 29 c1             	sub    %rax,%rcx
   14000739b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000739f:	58                   	pop    %rax
   1400073a0:	59                   	pop    %rcx
   1400073a1:	c3                   	ret
   1400073a2:	90                   	nop
   1400073a3:	90                   	nop
   1400073a4:	90                   	nop
   1400073a5:	90                   	nop
   1400073a6:	90                   	nop
   1400073a7:	90                   	nop
   1400073a8:	90                   	nop
   1400073a9:	90                   	nop
   1400073aa:	90                   	nop
   1400073ab:	90                   	nop
   1400073ac:	90                   	nop
   1400073ad:	90                   	nop
   1400073ae:	90                   	nop
   1400073af:	90                   	nop

00000001400073b0 <__p__fmode>:
   1400073b0:	48 8b 05 79 21 00 00 	mov    0x2179(%rip),%rax        # 140009530 <.refptr.__imp__fmode>
   1400073b7:	48 8b 00             	mov    (%rax),%rax
   1400073ba:	c3                   	ret
   1400073bb:	90                   	nop
   1400073bc:	90                   	nop
   1400073bd:	90                   	nop
   1400073be:	90                   	nop
   1400073bf:	90                   	nop

00000001400073c0 <__p__commode>:
   1400073c0:	48 8b 05 59 21 00 00 	mov    0x2159(%rip),%rax        # 140009520 <.refptr.__imp__commode>
   1400073c7:	48 8b 00             	mov    (%rax),%rax
   1400073ca:	c3                   	ret
   1400073cb:	90                   	nop
   1400073cc:	90                   	nop
   1400073cd:	90                   	nop
   1400073ce:	90                   	nop
   1400073cf:	90                   	nop

00000001400073d0 <_get_invalid_parameter_handler>:
   1400073d0:	48 8b 05 d9 4d 00 00 	mov    0x4dd9(%rip),%rax        # 14000c1b0 <handler>
   1400073d7:	c3                   	ret
   1400073d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400073df:	00 

00000001400073e0 <_set_invalid_parameter_handler>:
   1400073e0:	48 89 c8             	mov    %rcx,%rax
   1400073e3:	48 87 05 c6 4d 00 00 	xchg   %rax,0x4dc6(%rip)        # 14000c1b0 <handler>
   1400073ea:	c3                   	ret
   1400073eb:	90                   	nop
   1400073ec:	90                   	nop
   1400073ed:	90                   	nop
   1400073ee:	90                   	nop
   1400073ef:	90                   	nop

00000001400073f0 <__acrt_iob_func>:
   1400073f0:	53                   	push   %rbx
   1400073f1:	48 83 ec 20          	sub    $0x20,%rsp
   1400073f5:	89 cb                	mov    %ecx,%ebx
   1400073f7:	e8 24 00 00 00       	call   140007420 <__iob_func>
   1400073fc:	89 d9                	mov    %ebx,%ecx
   1400073fe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140007402:	48 c1 e2 04          	shl    $0x4,%rdx
   140007406:	48 01 d0             	add    %rdx,%rax
   140007409:	48 83 c4 20          	add    $0x20,%rsp
   14000740d:	5b                   	pop    %rbx
   14000740e:	c3                   	ret
   14000740f:	90                   	nop

0000000140007410 <__C_specific_handler>:
   140007410:	ff 25 56 5f 00 00    	jmp    *0x5f56(%rip)        # 14000d36c <__imp___C_specific_handler>
   140007416:	90                   	nop
   140007417:	90                   	nop

0000000140007418 <__getmainargs>:
   140007418:	ff 25 56 5f 00 00    	jmp    *0x5f56(%rip)        # 14000d374 <__imp___getmainargs>
   14000741e:	90                   	nop
   14000741f:	90                   	nop

0000000140007420 <__iob_func>:
   140007420:	ff 25 5e 5f 00 00    	jmp    *0x5f5e(%rip)        # 14000d384 <__imp___iob_func>
   140007426:	90                   	nop
   140007427:	90                   	nop

0000000140007428 <__set_app_type>:
   140007428:	ff 25 5e 5f 00 00    	jmp    *0x5f5e(%rip)        # 14000d38c <__imp___set_app_type>
   14000742e:	90                   	nop
   14000742f:	90                   	nop

0000000140007430 <__setusermatherr>:
   140007430:	ff 25 5e 5f 00 00    	jmp    *0x5f5e(%rip)        # 14000d394 <__imp___setusermatherr>
   140007436:	90                   	nop
   140007437:	90                   	nop

0000000140007438 <_amsg_exit>:
   140007438:	ff 25 5e 5f 00 00    	jmp    *0x5f5e(%rip)        # 14000d39c <__imp__amsg_exit>
   14000743e:	90                   	nop
   14000743f:	90                   	nop

0000000140007440 <_cexit>:
   140007440:	ff 25 5e 5f 00 00    	jmp    *0x5f5e(%rip)        # 14000d3a4 <__imp__cexit>
   140007446:	90                   	nop
   140007447:	90                   	nop

0000000140007448 <_initterm>:
   140007448:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3bc <__imp__initterm>
   14000744e:	90                   	nop
   14000744f:	90                   	nop

0000000140007450 <_onexit>:
   140007450:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3c4 <__imp__onexit>
   140007456:	90                   	nop
   140007457:	90                   	nop

0000000140007458 <abort>:
   140007458:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3cc <__imp_abort>
   14000745e:	90                   	nop
   14000745f:	90                   	nop

0000000140007460 <calloc>:
   140007460:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3d4 <__imp_calloc>
   140007466:	90                   	nop
   140007467:	90                   	nop

0000000140007468 <exit>:
   140007468:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3dc <__imp_exit>
   14000746e:	90                   	nop
   14000746f:	90                   	nop

0000000140007470 <fprintf>:
   140007470:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3e4 <__imp_fprintf>
   140007476:	90                   	nop
   140007477:	90                   	nop

0000000140007478 <free>:
   140007478:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3ec <__imp_free>
   14000747e:	90                   	nop
   14000747f:	90                   	nop

0000000140007480 <fwrite>:
   140007480:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3f4 <__imp_fwrite>
   140007486:	90                   	nop
   140007487:	90                   	nop

0000000140007488 <malloc>:
   140007488:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d3fc <__imp_malloc>
   14000748e:	90                   	nop
   14000748f:	90                   	nop

0000000140007490 <memcpy>:
   140007490:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d404 <__imp_memcpy>
   140007496:	90                   	nop
   140007497:	90                   	nop

0000000140007498 <signal>:
   140007498:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d40c <__imp_signal>
   14000749e:	90                   	nop
   14000749f:	90                   	nop

00000001400074a0 <strlen>:
   1400074a0:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d414 <__imp_strlen>
   1400074a6:	90                   	nop
   1400074a7:	90                   	nop

00000001400074a8 <strncmp>:
   1400074a8:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d41c <__imp_strncmp>
   1400074ae:	90                   	nop
   1400074af:	90                   	nop

00000001400074b0 <vfprintf>:
   1400074b0:	ff 25 6e 5f 00 00    	jmp    *0x5f6e(%rip)        # 14000d424 <__imp_vfprintf>
   1400074b6:	90                   	nop
   1400074b7:	90                   	nop
   1400074b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400074bf:	00 

00000001400074c0 <VirtualQuery>:
   1400074c0:	ff 25 96 5e 00 00    	jmp    *0x5e96(%rip)        # 14000d35c <__imp_VirtualQuery>
   1400074c6:	90                   	nop
   1400074c7:	90                   	nop

00000001400074c8 <VirtualProtect>:
   1400074c8:	ff 25 86 5e 00 00    	jmp    *0x5e86(%rip)        # 14000d354 <__imp_VirtualProtect>
   1400074ce:	90                   	nop
   1400074cf:	90                   	nop

00000001400074d0 <TlsGetValue>:
   1400074d0:	ff 25 76 5e 00 00    	jmp    *0x5e76(%rip)        # 14000d34c <__imp_TlsGetValue>
   1400074d6:	90                   	nop
   1400074d7:	90                   	nop

00000001400074d8 <Sleep>:
   1400074d8:	ff 25 66 5e 00 00    	jmp    *0x5e66(%rip)        # 14000d344 <__imp_Sleep>
   1400074de:	90                   	nop
   1400074df:	90                   	nop

00000001400074e0 <SetUnhandledExceptionFilter>:
   1400074e0:	ff 25 56 5e 00 00    	jmp    *0x5e56(%rip)        # 14000d33c <__imp_SetUnhandledExceptionFilter>
   1400074e6:	90                   	nop
   1400074e7:	90                   	nop

00000001400074e8 <LeaveCriticalSection>:
   1400074e8:	ff 25 46 5e 00 00    	jmp    *0x5e46(%rip)        # 14000d334 <__imp_LeaveCriticalSection>
   1400074ee:	90                   	nop
   1400074ef:	90                   	nop

00000001400074f0 <InitializeCriticalSection>:
   1400074f0:	ff 25 36 5e 00 00    	jmp    *0x5e36(%rip)        # 14000d32c <__imp_InitializeCriticalSection>
   1400074f6:	90                   	nop
   1400074f7:	90                   	nop

00000001400074f8 <GetLastError>:
   1400074f8:	ff 25 26 5e 00 00    	jmp    *0x5e26(%rip)        # 14000d324 <__imp_GetLastError>
   1400074fe:	90                   	nop
   1400074ff:	90                   	nop

0000000140007500 <EnterCriticalSection>:
   140007500:	ff 25 16 5e 00 00    	jmp    *0x5e16(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   140007506:	90                   	nop
   140007507:	90                   	nop

0000000140007508 <DeleteCriticalSection>:
   140007508:	ff 25 06 5e 00 00    	jmp    *0x5e06(%rip)        # 14000d314 <__imp_DeleteCriticalSection>
   14000750e:	90                   	nop
   14000750f:	90                   	nop

0000000140007510 <_ZNKSt5ctypeIcE8do_widenEc>:
   140007510:	89 d0                	mov    %edx,%eax
   140007512:	c3                   	ret
   140007513:	90                   	nop
   140007514:	90                   	nop
   140007515:	90                   	nop
   140007516:	90                   	nop
   140007517:	90                   	nop
   140007518:	90                   	nop
   140007519:	90                   	nop
   14000751a:	90                   	nop
   14000751b:	90                   	nop
   14000751c:	90                   	nop
   14000751d:	90                   	nop
   14000751e:	90                   	nop
   14000751f:	90                   	nop

0000000140007520 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>:
   140007520:	41 57                	push   %r15
   140007522:	41 56                	push   %r14
   140007524:	41 55                	push   %r13
   140007526:	41 54                	push   %r12
   140007528:	55                   	push   %rbp
   140007529:	57                   	push   %rdi
   14000752a:	56                   	push   %rsi
   14000752b:	53                   	push   %rbx
   14000752c:	48 83 ec 38          	sub    $0x38,%rsp
   140007530:	49 89 cc             	mov    %rcx,%r12
   140007533:	48 89 d3             	mov    %rdx,%rbx
   140007536:	48 85 d2             	test   %rdx,%rdx
   140007539:	74 64                	je     14000759f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   14000753b:	48 b8 55 55 55 55 55 	movabs $0x555555555555555,%rax
   140007542:	55 55 05 
   140007545:	48 8b 79 08          	mov    0x8(%rcx),%rdi
   140007549:	48 89 fe             	mov    %rdi,%rsi
   14000754c:	48 2b 31             	sub    (%rcx),%rsi
   14000754f:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
   140007556:	aa aa aa 
   140007559:	49 89 f5             	mov    %rsi,%r13
   14000755c:	49 c1 fd 03          	sar    $0x3,%r13
   140007560:	4c 0f af e9          	imul   %rcx,%r13
   140007564:	4c 29 e8             	sub    %r13,%rax
   140007567:	48 89 c2             	mov    %rax,%rdx
   14000756a:	49 8b 44 24 10       	mov    0x10(%r12),%rax
   14000756f:	48 29 f8             	sub    %rdi,%rax
   140007572:	48 c1 f8 03          	sar    $0x3,%rax
   140007576:	48 0f af c1          	imul   %rcx,%rax
   14000757a:	48 39 d8             	cmp    %rbx,%rax
   14000757d:	72 31                	jb     1400075b0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x90>
   14000757f:	48 89 fe             	mov    %rdi,%rsi
   140007582:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007588:	48 89 f1             	mov    %rsi,%rcx
   14000758b:	e8 30 a3 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140007590:	48 83 c6 18          	add    $0x18,%rsi
   140007594:	48 83 eb 01          	sub    $0x1,%rbx
   140007598:	75 ee                	jne    140007588 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x68>
   14000759a:	49 89 74 24 08       	mov    %rsi,0x8(%r12)
   14000759f:	48 83 c4 38          	add    $0x38,%rsp
   1400075a3:	5b                   	pop    %rbx
   1400075a4:	5e                   	pop    %rsi
   1400075a5:	5f                   	pop    %rdi
   1400075a6:	5d                   	pop    %rbp
   1400075a7:	41 5c                	pop    %r12
   1400075a9:	41 5d                	pop    %r13
   1400075ab:	41 5e                	pop    %r14
   1400075ad:	41 5f                	pop    %r15
   1400075af:	c3                   	ret
   1400075b0:	48 39 da             	cmp    %rbx,%rdx
   1400075b3:	0f 82 8d 01 00 00    	jb     140007746 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x226>
   1400075b9:	49 39 dd             	cmp    %rbx,%r13
   1400075bc:	0f 82 3e 01 00 00    	jb     140007700 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1e0>
   1400075c2:	48 ba f8 ff ff ff ff 	movabs $0x7ffffffffffffff8,%rdx
   1400075c9:	ff ff 7f 
   1400075cc:	4b 8d 44 2d 00       	lea    0x0(%r13,%r13,1),%rax
   1400075d1:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   1400075d6:	4c 39 e8             	cmp    %r13,%rax
   1400075d9:	0f 83 48 01 00 00    	jae    140007727 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x207>
   1400075df:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400075e4:	48 89 df             	mov    %rbx,%rdi
   1400075e7:	e8 1c ec ff ff       	call   140006208 <_Znwy>
   1400075ec:	49 89 c6             	mov    %rax,%r14
   1400075ef:	48 8d 04 30          	lea    (%rax,%rsi,1),%rax
   1400075f3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400075f8:	48 89 c6             	mov    %rax,%rsi
   1400075fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007600:	48 89 f1             	mov    %rsi,%rcx
   140007603:	e8 b8 a2 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140007608:	48 83 c6 18          	add    $0x18,%rsi
   14000760c:	48 83 ef 01          	sub    $0x1,%rdi
   140007610:	75 ee                	jne    140007600 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xe0>
   140007612:	4d 8b 7c 24 08       	mov    0x8(%r12),%r15
   140007617:	49 8b 34 24          	mov    (%r12),%rsi
   14000761b:	4c 89 f5             	mov    %r14,%rbp
   14000761e:	49 39 f7             	cmp    %rsi,%r15
   140007621:	0f 84 9b 00 00 00    	je     1400076c2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   140007627:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   14000762c:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   140007633:	00 
   140007634:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140007638:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   14000763c:	48 8b 3e             	mov    (%rsi),%rdi
   14000763f:	48 39 fe             	cmp    %rdi,%rsi
   140007642:	74 2d                	je     140007671 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x151>
   140007644:	0f 1f 40 00          	nopl   0x0(%rax)
   140007648:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000764d:	e8 b6 eb ff ff       	call   140006208 <_Znwy>
   140007652:	48 89 c1             	mov    %rax,%rcx
   140007655:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140007659:	48 89 ea             	mov    %rbp,%rdx
   14000765c:	88 41 10             	mov    %al,0x10(%rcx)
   14000765f:	e8 04 ec ff ff       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140007664:	48 8b 3f             	mov    (%rdi),%rdi
   140007667:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   14000766c:	48 39 fe             	cmp    %rdi,%rsi
   14000766f:	75 d7                	jne    140007648 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x128>
   140007671:	48 83 c6 18          	add    $0x18,%rsi
   140007675:	48 83 c5 18          	add    $0x18,%rbp
   140007679:	49 39 f7             	cmp    %rsi,%r15
   14000767c:	75 a9                	jne    140007627 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x107>
   14000767e:	49 8b 6c 24 08       	mov    0x8(%r12),%rbp
   140007683:	49 8b 34 24          	mov    (%r12),%rsi
   140007687:	48 39 f5             	cmp    %rsi,%rbp
   14000768a:	74 36                	je     1400076c2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   14000768c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007690:	48 8b 3e             	mov    (%rsi),%rdi
   140007693:	48 39 fe             	cmp    %rdi,%rsi
   140007696:	74 1d                	je     1400076b5 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x195>
   140007698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000769f:	00 
   1400076a0:	48 89 f9             	mov    %rdi,%rcx
   1400076a3:	48 8b 3f             	mov    (%rdi),%rdi
   1400076a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400076ab:	e8 60 eb ff ff       	call   140006210 <_ZdlPvy>
   1400076b0:	48 39 fe             	cmp    %rdi,%rsi
   1400076b3:	75 eb                	jne    1400076a0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x180>
   1400076b5:	48 83 c6 18          	add    $0x18,%rsi
   1400076b9:	48 39 f5             	cmp    %rsi,%rbp
   1400076bc:	75 d2                	jne    140007690 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x170>
   1400076be:	49 8b 34 24          	mov    (%r12),%rsi
   1400076c2:	48 85 f6             	test   %rsi,%rsi
   1400076c5:	74 10                	je     1400076d7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1b7>
   1400076c7:	49 8b 54 24 10       	mov    0x10(%r12),%rdx
   1400076cc:	48 89 f1             	mov    %rsi,%rcx
   1400076cf:	48 29 f2             	sub    %rsi,%rdx
   1400076d2:	e8 39 eb ff ff       	call   140006210 <_ZdlPvy>
   1400076d7:	4c 01 eb             	add    %r13,%rbx
   1400076da:	4d 89 34 24          	mov    %r14,(%r12)
   1400076de:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   1400076e2:	49 8d 04 c6          	lea    (%r14,%rax,8),%rax
   1400076e6:	49 89 44 24 08       	mov    %rax,0x8(%r12)
   1400076eb:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400076f0:	49 01 c6             	add    %rax,%r14
   1400076f3:	4d 89 74 24 10       	mov    %r14,0x10(%r12)
   1400076f8:	e9 a2 fe ff ff       	jmp    14000759f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   1400076fd:	0f 1f 00             	nopl   (%rax)
   140007700:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   140007707:	55 55 05 
   14000770a:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
   14000770e:	48 39 d0             	cmp    %rdx,%rax
   140007711:	48 0f 47 c2          	cmova  %rdx,%rax
   140007715:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   140007719:	48 c1 e0 03          	shl    $0x3,%rax
   14000771d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140007722:	e9 b8 fe ff ff       	jmp    1400075df <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   140007727:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   14000772e:	55 55 05 
   140007731:	48 39 d0             	cmp    %rdx,%rax
   140007734:	48 0f 47 c2          	cmova  %rdx,%rax
   140007738:	48 6b c0 18          	imul   $0x18,%rax,%rax
   14000773c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140007741:	e9 99 fe ff ff       	jmp    1400075df <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   140007746:	48 8d 0d fb 18 00 00 	lea    0x18fb(%rip),%rcx        # 140009048 <.rdata+0x18>
   14000774d:	e8 ce ea ff ff       	call   140006220 <_ZSt20__throw_length_errorPKc>
   140007752:	48 89 c1             	mov    %rax,%rcx
   140007755:	e8 9e ea ff ff       	call   1400061f8 <__cxa_begin_catch>
   14000775a:	48 39 fe             	cmp    %rdi,%rsi
   14000775d:	0f 84 af 00 00 00    	je     140007812 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2f2>
   140007763:	48 8b 0f             	mov    (%rdi),%rcx
   140007766:	48 39 cf             	cmp    %rcx,%rdi
   140007769:	0f 84 e2 00 00 00    	je     140007851 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x331>
   14000776f:	48 8b 19             	mov    (%rcx),%rbx
   140007772:	ba 18 00 00 00       	mov    $0x18,%edx
   140007777:	e8 94 ea ff ff       	call   140006210 <_ZdlPvy>
   14000777c:	48 89 d9             	mov    %rbx,%rcx
   14000777f:	eb e5                	jmp    140007766 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x246>
   140007781:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   140007785:	48 89 c6             	mov    %rax,%rsi
   140007788:	48 39 cd             	cmp    %rcx,%rbp
   14000778b:	0f 84 96 00 00 00    	je     140007827 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x307>
   140007791:	48 8b 39             	mov    (%rcx),%rdi
   140007794:	ba 18 00 00 00       	mov    $0x18,%edx
   140007799:	e8 72 ea ff ff       	call   140006210 <_ZdlPvy>
   14000779e:	48 89 f9             	mov    %rdi,%rcx
   1400077a1:	eb e5                	jmp    140007788 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x268>
   1400077a3:	48 89 c1             	mov    %rax,%rcx
   1400077a6:	e8 4d ea ff ff       	call   1400061f8 <__cxa_begin_catch>
   1400077ab:	48 39 74 24 28       	cmp    %rsi,0x28(%rsp)
   1400077b0:	74 21                	je     1400077d3 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2b3>
   1400077b2:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400077b7:	48 8b 08             	mov    (%rax),%rcx
   1400077ba:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   1400077bf:	74 49                	je     14000780a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2ea>
   1400077c1:	48 8b 19             	mov    (%rcx),%rbx
   1400077c4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400077c9:	e8 42 ea ff ff       	call   140006210 <_ZdlPvy>
   1400077ce:	48 89 d9             	mov    %rbx,%rcx
   1400077d1:	eb e7                	jmp    1400077ba <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x29a>
   1400077d3:	e8 08 ea ff ff       	call   1400061e0 <__cxa_rethrow>
   1400077d8:	48 89 c3             	mov    %rax,%rbx
   1400077db:	e8 10 ea ff ff       	call   1400061f0 <__cxa_end_catch>
   1400077e0:	48 89 d9             	mov    %rbx,%rcx
   1400077e3:	e8 10 ea ff ff       	call   1400061f8 <__cxa_begin_catch>
   1400077e8:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   1400077ed:	4c 89 f1             	mov    %r14,%rcx
   1400077f0:	e8 1b ea ff ff       	call   140006210 <_ZdlPvy>
   1400077f5:	e8 e6 e9 ff ff       	call   1400061e0 <__cxa_rethrow>
   1400077fa:	48 89 c3             	mov    %rax,%rbx
   1400077fd:	e8 ee e9 ff ff       	call   1400061f0 <__cxa_end_catch>
   140007802:	48 89 d9             	mov    %rbx,%rcx
   140007805:	e8 56 fb ff ff       	call   140007360 <_Unwind_Resume>
   14000780a:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   140007810:	eb 99                	jmp    1400077ab <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x28b>
   140007812:	e8 c9 e9 ff ff       	call   1400061e0 <__cxa_rethrow>
   140007817:	48 89 c3             	mov    %rax,%rbx
   14000781a:	e8 d1 e9 ff ff       	call   1400061f0 <__cxa_end_catch>
   14000781f:	48 89 d9             	mov    %rbx,%rcx
   140007822:	e8 39 fb ff ff       	call   140007360 <_Unwind_Resume>
   140007827:	48 89 f1             	mov    %rsi,%rcx
   14000782a:	4c 89 f6             	mov    %r14,%rsi
   14000782d:	e8 c6 e9 ff ff       	call   1400061f8 <__cxa_begin_catch>
   140007832:	48 39 f5             	cmp    %rsi,%rbp
   140007835:	74 23                	je     14000785a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x33a>
   140007837:	48 8b 0e             	mov    (%rsi),%rcx
   14000783a:	48 39 ce             	cmp    %rcx,%rsi
   14000783d:	74 6b                	je     1400078aa <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x38a>
   14000783f:	48 8b 39             	mov    (%rcx),%rdi
   140007842:	ba 18 00 00 00       	mov    $0x18,%edx
   140007847:	e8 c4 e9 ff ff       	call   140006210 <_ZdlPvy>
   14000784c:	48 89 f9             	mov    %rdi,%rcx
   14000784f:	eb e9                	jmp    14000783a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x31a>
   140007851:	48 83 c7 18          	add    $0x18,%rdi
   140007855:	e9 00 ff ff ff       	jmp    14000775a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x23a>
   14000785a:	e8 81 e9 ff ff       	call   1400061e0 <__cxa_rethrow>
   14000785f:	48 89 c6             	mov    %rax,%rsi
   140007862:	48 6b db 18          	imul   $0x18,%rbx,%rbx
   140007866:	e8 85 e9 ff ff       	call   1400061f0 <__cxa_end_catch>
   14000786b:	48 89 f1             	mov    %rsi,%rcx
   14000786e:	e8 85 e9 ff ff       	call   1400061f8 <__cxa_begin_catch>
   140007873:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140007878:	48 01 c3             	add    %rax,%rbx
   14000787b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140007880:	48 39 c3             	cmp    %rax,%rbx
   140007883:	0f 84 5f ff ff ff    	je     1400077e8 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2c8>
   140007889:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   14000788e:	48 8b 08             	mov    (%rax),%rcx
   140007891:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   140007896:	74 18                	je     1400078b0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x390>
   140007898:	48 8b 31             	mov    (%rcx),%rsi
   14000789b:	ba 18 00 00 00       	mov    $0x18,%edx
   1400078a0:	e8 6b e9 ff ff       	call   140006210 <_ZdlPvy>
   1400078a5:	48 89 f1             	mov    %rsi,%rcx
   1400078a8:	eb e7                	jmp    140007891 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x371>
   1400078aa:	48 83 c6 18          	add    $0x18,%rsi
   1400078ae:	eb 82                	jmp    140007832 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x312>
   1400078b0:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   1400078b6:	eb c3                	jmp    14000787b <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x35b>
   1400078b8:	90                   	nop
   1400078b9:	90                   	nop
   1400078ba:	90                   	nop
   1400078bb:	90                   	nop
   1400078bc:	90                   	nop
   1400078bd:	90                   	nop
   1400078be:	90                   	nop
   1400078bf:	90                   	nop

00000001400078c0 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy>:
   1400078c0:	57                   	push   %rdi
   1400078c1:	56                   	push   %rsi
   1400078c2:	53                   	push   %rbx
   1400078c3:	48 83 ec 20          	sub    $0x20,%rsp
   1400078c7:	31 f6                	xor    %esi,%esi
   1400078c9:	48 89 cb             	mov    %rcx,%rbx
   1400078cc:	48 89 d7             	mov    %rdx,%rdi
   1400078cf:	48 85 d2             	test   %rdx,%rdx
   1400078d2:	74 2b                	je     1400078ff <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x3f>
   1400078d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400078d8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400078dd:	e8 26 e9 ff ff       	call   140006208 <_Znwy>
   1400078e2:	c6 40 10 00          	movb   $0x0,0x10(%rax)
   1400078e6:	48 89 c1             	mov    %rax,%rcx
   1400078e9:	48 89 da             	mov    %rbx,%rdx
   1400078ec:	48 83 c6 01          	add    $0x1,%rsi
   1400078f0:	e8 73 e9 ff ff       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400078f5:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   1400078fa:	48 39 f7             	cmp    %rsi,%rdi
   1400078fd:	75 d9                	jne    1400078d8 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x18>
   1400078ff:	48 83 c4 20          	add    $0x20,%rsp
   140007903:	5b                   	pop    %rbx
   140007904:	5e                   	pop    %rsi
   140007905:	5f                   	pop    %rdi
   140007906:	c3                   	ret
   140007907:	48 89 c1             	mov    %rax,%rcx
   14000790a:	e8 e9 e8 ff ff       	call   1400061f8 <__cxa_begin_catch>
   14000790f:	48 85 f6             	test   %rsi,%rsi
   140007912:	74 24                	je     140007938 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x78>
   140007914:	48 83 6b 10 01       	subq   $0x1,0x10(%rbx)
   140007919:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
   14000791d:	48 83 ee 01          	sub    $0x1,%rsi
   140007921:	48 89 f9             	mov    %rdi,%rcx
   140007924:	e8 37 e9 ff ff       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140007929:	ba 18 00 00 00       	mov    $0x18,%edx
   14000792e:	48 89 f9             	mov    %rdi,%rcx
   140007931:	e8 da e8 ff ff       	call   140006210 <_ZdlPvy>
   140007936:	eb d7                	jmp    14000790f <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x4f>
   140007938:	e8 a3 e8 ff ff       	call   1400061e0 <__cxa_rethrow>
   14000793d:	48 89 c3             	mov    %rax,%rbx
   140007940:	e8 ab e8 ff ff       	call   1400061f0 <__cxa_end_catch>
   140007945:	48 89 d9             	mov    %rbx,%rcx
   140007948:	e8 13 fa ff ff       	call   140007360 <_Unwind_Resume>
   14000794d:	90                   	nop
   14000794e:	90                   	nop
   14000794f:	90                   	nop

0000000140007950 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>:
   140007950:	57                   	push   %rdi
   140007951:	56                   	push   %rsi
   140007952:	53                   	push   %rbx
   140007953:	48 83 ec 20          	sub    $0x20,%rsp
   140007957:	48 8b 41 10          	mov    0x10(%rcx),%rax
   14000795b:	48 89 ce             	mov    %rcx,%rsi
   14000795e:	48 39 c2             	cmp    %rax,%rdx
   140007961:	73 65                	jae    1400079c8 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x78>
   140007963:	48 89 c1             	mov    %rax,%rcx
   140007966:	48 d1 e9             	shr    %rcx
   140007969:	48 39 d1             	cmp    %rdx,%rcx
   14000796c:	72 72                	jb     1400079e0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x90>
   14000796e:	48 8b 1e             	mov    (%rsi),%rbx
   140007971:	48 85 d2             	test   %rdx,%rdx
   140007974:	74 13                	je     140007989 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140007976:	48 83 ea 01          	sub    $0x1,%rdx
   14000797a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007980:	48 8b 1b             	mov    (%rbx),%rbx
   140007983:	48 83 ea 01          	sub    $0x1,%rdx
   140007987:	73 f7                	jae    140007980 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x30>
   140007989:	48 39 de             	cmp    %rbx,%rsi
   14000798c:	75 09                	jne    140007997 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x47>
   14000798e:	eb 2c                	jmp    1400079bc <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x6c>
   140007990:	48 8b 46 10          	mov    0x10(%rsi),%rax
   140007994:	48 89 fb             	mov    %rdi,%rbx
   140007997:	48 83 e8 01          	sub    $0x1,%rax
   14000799b:	48 8b 3b             	mov    (%rbx),%rdi
   14000799e:	48 89 d9             	mov    %rbx,%rcx
   1400079a1:	48 89 46 10          	mov    %rax,0x10(%rsi)
   1400079a5:	e8 b6 e8 ff ff       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400079aa:	ba 18 00 00 00       	mov    $0x18,%edx
   1400079af:	48 89 d9             	mov    %rbx,%rcx
   1400079b2:	e8 59 e8 ff ff       	call   140006210 <_ZdlPvy>
   1400079b7:	48 39 fe             	cmp    %rdi,%rsi
   1400079ba:	75 d4                	jne    140007990 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x40>
   1400079bc:	48 83 c4 20          	add    $0x20,%rsp
   1400079c0:	5b                   	pop    %rbx
   1400079c1:	5e                   	pop    %rsi
   1400079c2:	5f                   	pop    %rdi
   1400079c3:	c3                   	ret
   1400079c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400079c8:	48 29 c2             	sub    %rax,%rdx
   1400079cb:	74 ef                	je     1400079bc <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x6c>
   1400079cd:	48 83 c4 20          	add    $0x20,%rsp
   1400079d1:	5b                   	pop    %rbx
   1400079d2:	5e                   	pop    %rsi
   1400079d3:	5f                   	pop    %rdi
   1400079d4:	e9 e7 fe ff ff       	jmp    1400078c0 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy>
   1400079d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400079e0:	48 89 c1             	mov    %rax,%rcx
   1400079e3:	48 89 f3             	mov    %rsi,%rbx
   1400079e6:	48 29 d1             	sub    %rdx,%rcx
   1400079e9:	48 89 ca             	mov    %rcx,%rdx
   1400079ec:	48 f7 d2             	not    %rdx
   1400079ef:	79 1f                	jns    140007a10 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xc0>
   1400079f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400079f8:	48 8b 1b             	mov    (%rbx),%rbx
   1400079fb:	48 83 ea 01          	sub    $0x1,%rdx
   1400079ff:	72 88                	jb     140007989 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140007a01:	48 8b 1b             	mov    (%rbx),%rbx
   140007a04:	48 83 ea 01          	sub    $0x1,%rdx
   140007a08:	73 ee                	jae    1400079f8 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xa8>
   140007a0a:	e9 7a ff ff ff       	jmp    140007989 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140007a0f:	90                   	nop
   140007a10:	ba 01 00 00 00       	mov    $0x1,%edx
   140007a15:	48 29 ca             	sub    %rcx,%rdx
   140007a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007a1f:	00 
   140007a20:	48 83 c2 01          	add    $0x1,%rdx
   140007a24:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140007a28:	48 83 fa 01          	cmp    $0x1,%rdx
   140007a2c:	75 f2                	jne    140007a20 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xd0>
   140007a2e:	e9 56 ff ff ff       	jmp    140007989 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140007a33:	90                   	nop
   140007a34:	90                   	nop
   140007a35:	90                   	nop
   140007a36:	90                   	nop
   140007a37:	90                   	nop
   140007a38:	90                   	nop
   140007a39:	90                   	nop
   140007a3a:	90                   	nop
   140007a3b:	90                   	nop
   140007a3c:	90                   	nop
   140007a3d:	90                   	nop
   140007a3e:	90                   	nop
   140007a3f:	90                   	nop

0000000140007a40 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>:
   140007a40:	57                   	push   %rdi
   140007a41:	56                   	push   %rsi
   140007a42:	53                   	push   %rbx
   140007a43:	48 83 ec 20          	sub    $0x20,%rsp
   140007a47:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   140007a4c:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140007a53:	00 
   140007a54:	48 89 ce             	mov    %rcx,%rsi
   140007a57:	48 89 d7             	mov    %rdx,%rdi
   140007a5a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140007a5e:	0f 11 01             	movups %xmm0,(%rcx)
   140007a61:	48 8b 1a             	mov    (%rdx),%rbx
   140007a64:	48 39 d3             	cmp    %rdx,%rbx
   140007a67:	74 30                	je     140007a99 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x59>
   140007a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007a70:	b9 18 00 00 00       	mov    $0x18,%ecx
   140007a75:	e8 8e e7 ff ff       	call   140006208 <_Znwy>
   140007a7a:	48 89 c1             	mov    %rax,%rcx
   140007a7d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140007a81:	48 89 f2             	mov    %rsi,%rdx
   140007a84:	88 41 10             	mov    %al,0x10(%rcx)
   140007a87:	e8 dc e7 ff ff       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140007a8c:	48 8b 1b             	mov    (%rbx),%rbx
   140007a8f:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140007a94:	48 39 fb             	cmp    %rdi,%rbx
   140007a97:	75 d7                	jne    140007a70 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x30>
   140007a99:	48 83 c4 20          	add    $0x20,%rsp
   140007a9d:	5b                   	pop    %rbx
   140007a9e:	5e                   	pop    %rsi
   140007a9f:	5f                   	pop    %rdi
   140007aa0:	c3                   	ret
   140007aa1:	48 8b 0e             	mov    (%rsi),%rcx
   140007aa4:	48 89 c3             	mov    %rax,%rbx
   140007aa7:	48 39 ce             	cmp    %rcx,%rsi
   140007aaa:	74 12                	je     140007abe <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x7e>
   140007aac:	48 8b 39             	mov    (%rcx),%rdi
   140007aaf:	ba 18 00 00 00       	mov    $0x18,%edx
   140007ab4:	e8 57 e7 ff ff       	call   140006210 <_ZdlPvy>
   140007ab9:	48 89 f9             	mov    %rdi,%rcx
   140007abc:	eb e9                	jmp    140007aa7 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x67>
   140007abe:	48 89 d9             	mov    %rbx,%rcx
   140007ac1:	e8 9a f8 ff ff       	call   140007360 <_Unwind_Resume>
   140007ac6:	90                   	nop
   140007ac7:	90                   	nop
   140007ac8:	90                   	nop
   140007ac9:	90                   	nop
   140007aca:	90                   	nop
   140007acb:	90                   	nop
   140007acc:	90                   	nop
   140007acd:	90                   	nop
   140007ace:	90                   	nop
   140007acf:	90                   	nop

0000000140007ad0 <_GLOBAL__sub_I__ZN10Arithmetic10carry_flagE>:
   140007ad0:	48 83 ec 28          	sub    $0x28,%rsp
   140007ad4:	48 8d 0d 56 45 00 00 	lea    0x4556(%rip),%rcx        # 14000c031 <_ZStL8__ioinit>
   140007adb:	e8 78 e7 ff ff       	call   140006258 <_ZNSt8ios_base4InitC1Ev>
   140007ae0:	48 8d 0d 69 99 ff ff 	lea    -0x6697(%rip),%rcx        # 140001450 <__tcf_0>
   140007ae7:	48 83 c4 28          	add    $0x28,%rsp
   140007aeb:	e9 20 99 ff ff       	jmp    140001410 <atexit>

0000000140007af0 <_GLOBAL__sub_I__ZN4ByteC2Ey>:
   140007af0:	48 83 ec 28          	sub    $0x28,%rsp
   140007af4:	48 8d 0d 45 45 00 00 	lea    0x4545(%rip),%rcx        # 14000c040 <_ZStL8__ioinit>
   140007afb:	e8 58 e7 ff ff       	call   140006258 <_ZNSt8ios_base4InitC1Ev>
   140007b00:	48 8d 0d 69 9b ff ff 	lea    -0x6497(%rip),%rcx        # 140001670 <__tcf_0>
   140007b07:	48 83 c4 28          	add    $0x28,%rsp
   140007b0b:	e9 00 99 ff ff       	jmp    140001410 <atexit>

0000000140007b10 <main>:
   140007b10:	41 57                	push   %r15
   140007b12:	41 56                	push   %r14
   140007b14:	41 55                	push   %r13
   140007b16:	41 54                	push   %r12
   140007b18:	55                   	push   %rbp
   140007b19:	57                   	push   %rdi
   140007b1a:	56                   	push   %rsi
   140007b1b:	53                   	push   %rbx
   140007b1c:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
   140007b23:	e8 88 e8 ff ff       	call   1400063b0 <__main>
   140007b28:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
   140007b2d:	ba 18 00 00 00       	mov    $0x18,%edx
   140007b32:	48 89 f1             	mov    %rsi,%rcx
   140007b35:	e8 56 d2 ff ff       	call   140004d90 <_ZN15SignedMagnitudeC1Ex>
   140007b3a:	ba 0c 00 00 00       	mov    $0xc,%edx
   140007b3f:	48 89 f1             	mov    %rsi,%rcx
   140007b42:	e8 59 e5 ff ff       	call   1400060a0 <_ZN15SignedMagnitude14set_precissionEj>
   140007b47:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   140007b4c:	ba 14 00 00 00       	mov    $0x14,%edx
   140007b51:	4c 89 e1             	mov    %r12,%rcx
   140007b54:	e8 37 d2 ff ff       	call   140004d90 <_ZN15SignedMagnitudeC1Ex>
   140007b59:	4c 8d ac 24 d0 00 00 	lea    0xd0(%rsp),%r13
   140007b60:	00 
   140007b61:	4c 89 e2             	mov    %r12,%rdx
   140007b64:	4c 89 e9             	mov    %r13,%rcx
   140007b67:	e8 d4 fe ff ff       	call   140007a40 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140007b6c:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
   140007b73:	4c 8d b4 24 f0 00 00 	lea    0xf0(%rsp),%r14
   140007b7a:	00 
   140007b7b:	4d 89 e8             	mov    %r13,%r8
   140007b7e:	48 89 f2             	mov    %rsi,%rdx
   140007b81:	4c 89 f1             	mov    %r14,%rcx
   140007b84:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
   140007b8b:	0f b6 84 24 8c 00 00 	movzbl 0x8c(%rsp),%eax
   140007b92:	00 
   140007b93:	88 84 24 ec 00 00 00 	mov    %al,0xec(%rsp)
   140007b9a:	e8 b1 e0 ff ff       	call   140005c50 <_ZN15SignedMagnitudemlES_>
   140007b9f:	4c 8d bc 24 90 00 00 	lea    0x90(%rsp),%r15
   140007ba6:	00 
   140007ba7:	4c 89 e2             	mov    %r12,%rdx
   140007baa:	4c 89 f9             	mov    %r15,%rcx
   140007bad:	e8 8e fe ff ff       	call   140007a40 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140007bb2:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
   140007bb9:	4d 89 f8             	mov    %r15,%r8
   140007bbc:	48 89 f2             	mov    %rsi,%rdx
   140007bbf:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
   140007bc6:	0f b6 84 24 8c 00 00 	movzbl 0x8c(%rsp),%eax
   140007bcd:	00 
   140007bce:	88 84 24 ac 00 00 00 	mov    %al,0xac(%rsp)
   140007bd5:	48 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%rax
   140007bdc:	00 
   140007bdd:	48 89 c1             	mov    %rax,%rcx
   140007be0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140007be5:	48 89 c3             	mov    %rax,%rbx
   140007be8:	e8 a3 d8 ff ff       	call   140005490 <_ZN15SignedMagnitudeplES_>
   140007bed:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
   140007bf4:	00 
   140007bf5:	4d 89 f0             	mov    %r14,%r8
   140007bf8:	48 89 da             	mov    %rbx,%rdx
   140007bfb:	48 89 f9             	mov    %rdi,%rcx
   140007bfe:	e8 9d e1 ff ff       	call   140005da0 <_ZN15SignedMagnitudedvES_>
   140007c03:	48 8b 6c 24 50       	mov    0x50(%rsp),%rbp
   140007c08:	48 8b 9c 24 10 01 00 	mov    0x110(%rsp),%rbx
   140007c0f:	00 
   140007c10:	48 39 f5             	cmp    %rsi,%rbp
   140007c13:	75 22                	jne    140007c37 <main+0x127>
   140007c15:	e9 33 01 00 00       	jmp    140007d4d <main+0x23d>
   140007c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007c20:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140007c24:	48 8b 1b             	mov    (%rbx),%rbx
   140007c27:	88 45 10             	mov    %al,0x10(%rbp)
   140007c2a:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140007c2e:	48 39 f5             	cmp    %rsi,%rbp
   140007c31:	0f 84 16 01 00 00    	je     140007d4d <main+0x23d>
   140007c37:	48 39 fb             	cmp    %rdi,%rbx
   140007c3a:	75 e4                	jne    140007c20 <main+0x110>
   140007c3c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007c40:	48 89 eb             	mov    %rbp,%rbx
   140007c43:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140007c47:	48 83 6c 24 60 01    	subq   $0x1,0x60(%rsp)
   140007c4d:	48 89 d9             	mov    %rbx,%rcx
   140007c50:	e8 0b e6 ff ff       	call   140006260 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140007c55:	ba 18 00 00 00       	mov    $0x18,%edx
   140007c5a:	48 89 d9             	mov    %rbx,%rcx
   140007c5d:	e8 ae e5 ff ff       	call   140006210 <_ZdlPvy>
   140007c62:	48 39 f5             	cmp    %rsi,%rbp
   140007c65:	75 d9                	jne    140007c40 <main+0x130>
   140007c67:	8b 84 24 28 01 00 00 	mov    0x128(%rsp),%eax
   140007c6e:	48 89 f9             	mov    %rdi,%rcx
   140007c71:	89 44 24 68          	mov    %eax,0x68(%rsp)
   140007c75:	0f b6 84 24 2c 01 00 	movzbl 0x12c(%rsp),%eax
   140007c7c:	00 
   140007c7d:	88 44 24 6c          	mov    %al,0x6c(%rsp)
   140007c81:	e8 3a d3 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007c86:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140007c8b:	e8 30 d3 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007c90:	4c 89 f9             	mov    %r15,%rcx
   140007c93:	e8 28 d3 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007c98:	4c 89 f1             	mov    %r14,%rcx
   140007c9b:	e8 20 d3 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007ca0:	4c 89 e9             	mov    %r13,%rcx
   140007ca3:	e8 18 d3 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007ca8:	ba 06 00 00 00       	mov    $0x6,%edx
   140007cad:	48 89 f1             	mov    %rsi,%rcx
   140007cb0:	e8 eb e3 ff ff       	call   1400060a0 <_ZN15SignedMagnitude14set_precissionEj>
   140007cb5:	48 89 f2             	mov    %rsi,%rdx
   140007cb8:	48 89 f9             	mov    %rdi,%rcx
   140007cbb:	e8 80 fd ff ff       	call   140007a40 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140007cc0:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140007cc4:	48 8b 0d 95 17 00 00 	mov    0x1795(%rip),%rcx        # 140009460 <__fu4__ZSt4cout>
   140007ccb:	48 89 fa             	mov    %rdi,%rdx
   140007cce:	89 84 24 28 01 00 00 	mov    %eax,0x128(%rsp)
   140007cd5:	0f b6 44 24 6c       	movzbl 0x6c(%rsp),%eax
   140007cda:	88 84 24 2c 01 00 00 	mov    %al,0x12c(%rsp)
   140007ce1:	e8 6a e4 ff ff       	call   140006150 <_ZlsRSo15SignedMagnitude>
   140007ce6:	48 89 c3             	mov    %rax,%rbx
   140007ce9:	48 8b 00             	mov    (%rax),%rax
   140007cec:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140007cf0:	48 8b ac 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%rbp
   140007cf7:	00 
   140007cf8:	48 85 ed             	test   %rbp,%rbp
   140007cfb:	0f 84 10 01 00 00    	je     140007e11 <main+0x301>
   140007d01:	80 7d 38 00          	cmpb   $0x0,0x38(%rbp)
   140007d05:	0f 84 e7 00 00 00    	je     140007df2 <main+0x2e2>
   140007d0b:	0f be 55 43          	movsbl 0x43(%rbp),%edx
   140007d0f:	48 89 d9             	mov    %rbx,%rcx
   140007d12:	e8 d1 e5 ff ff       	call   1400062e8 <_ZNSo3putEc>
   140007d17:	48 89 c1             	mov    %rax,%rcx
   140007d1a:	e8 c1 e5 ff ff       	call   1400062e0 <_ZNSo5flushEv>
   140007d1f:	48 89 f9             	mov    %rdi,%rcx
   140007d22:	e8 99 d2 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007d27:	4c 89 e1             	mov    %r12,%rcx
   140007d2a:	e8 91 d2 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007d2f:	48 89 f1             	mov    %rsi,%rcx
   140007d32:	e8 89 d2 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007d37:	31 c0                	xor    %eax,%eax
   140007d39:	48 81 c4 38 01 00 00 	add    $0x138,%rsp
   140007d40:	5b                   	pop    %rbx
   140007d41:	5e                   	pop    %rsi
   140007d42:	5f                   	pop    %rdi
   140007d43:	5d                   	pop    %rbp
   140007d44:	41 5c                	pop    %r12
   140007d46:	41 5d                	pop    %r13
   140007d48:	41 5e                	pop    %r14
   140007d4a:	41 5f                	pop    %r15
   140007d4c:	c3                   	ret
   140007d4d:	48 39 fb             	cmp    %rdi,%rbx
   140007d50:	0f 84 11 ff ff ff    	je     140007c67 <main+0x157>
   140007d56:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140007d5b:	31 d2                	xor    %edx,%edx
   140007d5d:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140007d62:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140007d67:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140007d6b:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
   140007d70:	b9 18 00 00 00       	mov    $0x18,%ecx
   140007d75:	e8 8e e4 ff ff       	call   140006208 <_Znwy>
   140007d7a:	48 89 c1             	mov    %rax,%rcx
   140007d7d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140007d81:	48 89 ea             	mov    %rbp,%rdx
   140007d84:	88 41 10             	mov    %al,0x10(%rcx)
   140007d87:	e8 dc e4 ff ff       	call   140006268 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140007d8c:	48 8b 1b             	mov    (%rbx),%rbx
   140007d8f:	48 83 44 24 40 01    	addq   $0x1,0x40(%rsp)
   140007d95:	48 39 fb             	cmp    %rdi,%rbx
   140007d98:	75 d6                	jne    140007d70 <main+0x260>
   140007d9a:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   140007d9f:	48 39 ea             	cmp    %rbp,%rdx
   140007da2:	0f 84 bf fe ff ff    	je     140007c67 <main+0x157>
   140007da8:	49 89 e8             	mov    %rbp,%r8
   140007dab:	48 89 f1             	mov    %rsi,%rcx
   140007dae:	e8 bd e4 ff ff       	call   140006270 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140007db3:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
   140007db8:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140007dbd:	48 01 44 24 60       	add    %rax,0x60(%rsp)
   140007dc2:	31 c0                	xor    %eax,%eax
   140007dc4:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
   140007dc9:	48 39 eb             	cmp    %rbp,%rbx
   140007dcc:	0f 84 95 fe ff ff    	je     140007c67 <main+0x157>
   140007dd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007dd8:	48 89 d9             	mov    %rbx,%rcx
   140007ddb:	48 8b 1b             	mov    (%rbx),%rbx
   140007dde:	ba 18 00 00 00       	mov    $0x18,%edx
   140007de3:	e8 28 e4 ff ff       	call   140006210 <_ZdlPvy>
   140007de8:	48 39 eb             	cmp    %rbp,%rbx
   140007deb:	75 eb                	jne    140007dd8 <main+0x2c8>
   140007ded:	e9 75 fe ff ff       	jmp    140007c67 <main+0x157>
   140007df2:	48 89 e9             	mov    %rbp,%rcx
   140007df5:	e8 f6 e4 ff ff       	call   1400062f0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   140007dfa:	48 8b 45 00          	mov    0x0(%rbp),%rax
   140007dfe:	ba 0a 00 00 00       	mov    $0xa,%edx
   140007e03:	48 89 e9             	mov    %rbp,%rcx
   140007e06:	ff 50 30             	call   *0x30(%rax)
   140007e09:	0f be d0             	movsbl %al,%edx
   140007e0c:	e9 fe fe ff ff       	jmp    140007d0f <main+0x1ff>
   140007e11:	e8 12 e4 ff ff       	call   140006228 <_ZSt16__throw_bad_castv>
   140007e16:	48 89 c3             	mov    %rax,%rbx
   140007e19:	48 89 f1             	mov    %rsi,%rcx
   140007e1c:	e8 9f d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e21:	48 89 d9             	mov    %rbx,%rcx
   140007e24:	e8 37 f5 ff ff       	call   140007360 <_Unwind_Resume>
   140007e29:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140007e2e:	48 89 c3             	mov    %rax,%rbx
   140007e31:	48 39 e9             	cmp    %rbp,%rcx
   140007e34:	75 46                	jne    140007e7c <main+0x36c>
   140007e36:	48 89 f9             	mov    %rdi,%rcx
   140007e39:	e8 82 d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e3e:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140007e43:	e8 78 d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e48:	4c 89 f9             	mov    %r15,%rcx
   140007e4b:	e8 70 d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e50:	4c 89 f1             	mov    %r14,%rcx
   140007e53:	e8 68 d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e58:	4c 89 e9             	mov    %r13,%rcx
   140007e5b:	e8 60 d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e60:	eb 0b                	jmp    140007e6d <main+0x35d>
   140007e62:	48 89 f9             	mov    %rdi,%rcx
   140007e65:	48 89 c3             	mov    %rax,%rbx
   140007e68:	e8 53 d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e6d:	4c 89 e1             	mov    %r12,%rcx
   140007e70:	e8 4b d1 ff ff       	call   140004fc0 <_ZN15SignedMagnitudeD1Ev>
   140007e75:	eb a2                	jmp    140007e19 <main+0x309>
   140007e77:	48 89 c3             	mov    %rax,%rbx
   140007e7a:	eb c2                	jmp    140007e3e <main+0x32e>
   140007e7c:	48 8b 01             	mov    (%rcx),%rax
   140007e7f:	ba 18 00 00 00       	mov    $0x18,%edx
   140007e84:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140007e89:	e8 82 e3 ff ff       	call   140006210 <_ZdlPvy>
   140007e8e:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   140007e93:	eb 9c                	jmp    140007e31 <main+0x321>
   140007e95:	48 89 c3             	mov    %rax,%rbx
   140007e98:	eb ae                	jmp    140007e48 <main+0x338>
   140007e9a:	48 89 c3             	mov    %rax,%rbx
   140007e9d:	eb b1                	jmp    140007e50 <main+0x340>
   140007e9f:	48 89 c3             	mov    %rax,%rbx
   140007ea2:	eb b4                	jmp    140007e58 <main+0x348>
   140007ea4:	48 89 c3             	mov    %rax,%rbx
   140007ea7:	eb c4                	jmp    140007e6d <main+0x35d>
   140007ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140007eb0 <_GLOBAL__sub_I_main>:
   140007eb0:	48 83 ec 28          	sub    $0x28,%rsp
   140007eb4:	48 8d 0d 95 41 00 00 	lea    0x4195(%rip),%rcx        # 14000c050 <_ZStL8__ioinit>
   140007ebb:	e8 98 e3 ff ff       	call   140006258 <_ZNSt8ios_base4InitC1Ev>
   140007ec0:	48 8d 0d 89 98 ff ff 	lea    -0x6777(%rip),%rcx        # 140001750 <__tcf_0>
   140007ec7:	48 83 c4 28          	add    $0x28,%rsp
   140007ecb:	e9 40 95 ff ff       	jmp    140001410 <atexit>

0000000140007ed0 <_GLOBAL__sub_I__ZN13NaturalBinaryC2Ev>:
   140007ed0:	48 83 ec 28          	sub    $0x28,%rsp
   140007ed4:	48 8d 0d 85 41 00 00 	lea    0x4185(%rip),%rcx        # 14000c060 <_ZStL8__ioinit>
   140007edb:	e8 78 e3 ff ff       	call   140006258 <_ZNSt8ios_base4InitC1Ev>
   140007ee0:	48 8d 0d 79 98 ff ff 	lea    -0x6787(%rip),%rcx        # 140001760 <__tcf_0>
   140007ee7:	48 83 c4 28          	add    $0x28,%rsp
   140007eeb:	e9 20 95 ff ff       	jmp    140001410 <atexit>

0000000140007ef0 <_GLOBAL__sub_I__ZN15SignedMagnitudeC2Ex>:
   140007ef0:	48 83 ec 28          	sub    $0x28,%rsp
   140007ef4:	48 8d 0d 75 41 00 00 	lea    0x4175(%rip),%rcx        # 14000c070 <_ZStL8__ioinit>
   140007efb:	e8 58 e3 ff ff       	call   140006258 <_ZNSt8ios_base4InitC1Ev>
   140007f00:	48 8d 0d 29 cd ff ff 	lea    -0x32d7(%rip),%rcx        # 140004c30 <__tcf_0>
   140007f07:	48 83 c4 28          	add    $0x28,%rsp
   140007f0b:	e9 00 95 ff ff       	jmp    140001410 <atexit>

0000000140007f10 <register_frame_ctor>:
   140007f10:	e9 1b 95 ff ff       	jmp    140001430 <__gcc_register_frame>
   140007f15:	90                   	nop
   140007f16:	90                   	nop
   140007f17:	90                   	nop
   140007f18:	90                   	nop
   140007f19:	90                   	nop
   140007f1a:	90                   	nop
   140007f1b:	90                   	nop
   140007f1c:	90                   	nop
   140007f1d:	90                   	nop
   140007f1e:	90                   	nop
   140007f1f:	90                   	nop

0000000140007f20 <__CTOR_LIST__>:
   140007f20:	ff                   	(bad)
   140007f21:	ff                   	(bad)
   140007f22:	ff                   	(bad)
   140007f23:	ff                   	(bad)
   140007f24:	ff                   	(bad)
   140007f25:	ff                   	(bad)
   140007f26:	ff                   	(bad)
   140007f27:	ff                   	.byte 0xff

0000000140007f28 <.ctors>:
   140007f28:	d0 7a 00             	sarb   0x0(%rdx)
   140007f2b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007f30 <.ctors>:
   140007f30:	f0 7a 00             	lock jp 140007f33 <.ctors+0x3>
   140007f33:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007f38 <.ctors>:
   140007f38:	b0 7e                	mov    $0x7e,%al
   140007f3a:	00 40 01             	add    %al,0x1(%rax)
   140007f3d:	00 00                	add    %al,(%rax)
	...

0000000140007f40 <.ctors>:
   140007f40:	d0 7e 00             	sarb   0x0(%rsi)
   140007f43:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007f48 <.ctors>:
   140007f48:	f0 7e 00             	lock jle 140007f4b <.ctors+0x3>
   140007f4b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007f50 <.ctors.65535>:
   140007f50:	10 7f 00             	adc    %bh,0x0(%rdi)
   140007f53:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007f60 <__DTOR_LIST__>:
   140007f60:	ff                   	(bad)
   140007f61:	ff                   	(bad)
   140007f62:	ff                   	(bad)
   140007f63:	ff                   	(bad)
   140007f64:	ff                   	(bad)
   140007f65:	ff                   	(bad)
   140007f66:	ff                   	(bad)
   140007f67:	ff 00                	incl   (%rax)
   140007f69:	00 00                	add    %al,(%rax)
   140007f6b:	00 00                	add    %al,(%rax)
   140007f6d:	00 00                	add    %al,(%rax)
	...
