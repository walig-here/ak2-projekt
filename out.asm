
ak2-projekt.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 15 85 00 00 	mov    0x8515(%rip),%rax        # 140009530 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 16 85 00 00 	mov    0x8516(%rip),%rax        # 140009540 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 19 85 00 00 	mov    0x8519(%rip),%rax        # 140009550 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 6c 84 00 00 	mov    0x846c(%rip),%rax        # 1400094b0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 bf 84 00 00 	mov    0x84bf(%rip),%rax        # 140009520 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 af 00 00    	mov    %ecx,0xafa5(%rip)        # 14000c00c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 61 53 00 00       	call   1400063d8 <__set_app_type>
   140001077:	e8 e4 52 00 00       	call   140006360 <__p__fmode>
   14000107c:	48 8b 15 6d 85 00 00 	mov    0x856d(%rip),%rdx        # 1400095f0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 e4 52 00 00       	call   140006370 <__p__commode>
   14000108c:	48 8b 15 3d 85 00 00 	mov    0x853d(%rip),%rdx        # 1400095d0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 e4 42 00 00       	call   140005380 <_setargv>
   14000109c:	48 8b 05 6d 83 00 00 	mov    0x836d(%rip),%rax        # 140009410 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 1e 53 00 00       	call   1400063d8 <__set_app_type>
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
   1400010f8:	48 8b 0d 11 85 00 00 	mov    0x8511(%rip),%rcx        # 140009610 <.refptr._matherr>
   1400010ff:	e8 ec 49 00 00       	call   140005af0 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 e5 84 00 00 	mov    0x84e5(%rip),%rax        # 140009620 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 ae 00 00 	lea    0xaed6(%rip),%r8        # 14000c018 <envp>
   140001142:	48 8d 15 d7 ae 00 00 	lea    0xaed7(%rip),%rdx        # 14000c020 <argv>
   140001149:	48 8d 0d d8 ae 00 00 	lea    0xaed8(%rip),%rcx        # 14000c028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac ae 00 00    	mov    %eax,0xaeac(%rip)        # 14000c004 <startinfo>
   140001158:	48 8b 05 81 84 00 00 	mov    0x8481(%rip),%rax        # 1400095e0 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b ae 00 00 	lea    0xae9b(%rip),%rax        # 14000c004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 55 52 00 00       	call   1400063c8 <__getmainargs>
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
   14000118a:	48 8b 1d df 83 00 00 	mov    0x83df(%rip),%rbx        # 140009570 <.refptr.__native_startup_lock>
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
   1400011cd:	48 8b 35 ac 83 00 00 	mov    0x83ac(%rip),%rsi        # 140009580 <.refptr.__native_startup_state>
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
   140001208:	48 8b 05 d1 82 00 00 	mov    0x82d1(%rip),%rax        # 1400094e0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 28 45 00 00       	call   140005750 <_pei386_runtime_relocator>
   140001228:	48 8b 0d d1 83 00 00 	mov    0x83d1(%rip),%rcx        # 140009600 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 07 c1 00 00    	call   *0xc107(%rip)        # 14000d33c <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 24 83 00 00 	mov    0x8324(%rip),%rdx        # 140009560 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 45 51 00 00       	call   140006390 <_set_invalid_parameter_handler>
   14000124b:	e8 10 43 00 00       	call   140005560 <_fpreset>
   140001250:	8b 1d d2 ad 00 00    	mov    0xadd2(%rip),%ebx        # 14000c028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 d0 51 00 00       	call   140006438 <malloc>
   140001268:	4c 8b 25 b1 ad 00 00 	mov    0xadb1(%rip),%r12        # 14000c020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 c7 51 00 00       	call   140006450 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 a3 51 00 00       	call   140006438 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 93 51 00 00       	call   140006440 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d ad 00 00 	mov    %rbp,0xad5d(%rip)        # 14000c020 <argv>
   1400012c3:	e8 98 40 00 00       	call   140005360 <__main>
   1400012c8:	48 8b 05 21 82 00 00 	mov    0x8221(%rip),%rax        # 1400094f0 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 ad 00 00 	mov    0xad42(%rip),%r8        # 14000c018 <envp>
   1400012d6:	8b 0d 4c ad 00 00    	mov    0xad4c(%rip),%ecx        # 14000c028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 ad 00 00 	mov    0xad37(%rip),%rdx        # 14000c020 <argv>
   1400012e9:	e8 52 56 00 00       	call   140006940 <main>
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
   140001320:	48 8b 35 59 82 00 00 	mov    0x8259(%rip),%rsi        # 140009580 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 a7 50 00 00       	call   1400063e8 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 4d 82 00 00 	mov    0x824d(%rip),%rdx        # 1400095a0 <.refptr.__xc_z>
   140001353:	48 8b 0d 36 82 00 00 	mov    0x8236(%rip),%rcx        # 140009590 <.refptr.__xc_a>
   14000135a:	e8 99 50 00 00       	call   1400063f8 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 6b 50 00 00       	call   1400063f0 <_cexit>
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
   1400013a0:	48 8b 15 19 82 00 00 	mov    0x8219(%rip),%rdx        # 1400095c0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 02 82 00 00 	mov    0x8202(%rip),%rcx        # 1400095b0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 3f 50 00 00       	call   1400063f8 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 49 50 00 00       	call   140006418 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 45 81 00 00 	mov    0x8145(%rip),%rax        # 140009520 <.refptr.__mingw_app_type>
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
   1400013f4:	48 8b 05 25 81 00 00 	mov    0x8125(%rip),%rax        # 140009520 <.refptr.__mingw_app_type>
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
   140001414:	e8 e7 4f 00 00       	call   140006400 <_onexit>
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
   140001457:	e9 a4 3d 00 00       	jmp    140005200 <_ZNSt8ios_base4InitD1Ev>
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
   14000162c:	e8 7f 3b 00 00       	call   1400051b0 <__cxa_allocate_exception>
   140001631:	48 8d 15 c8 79 00 00 	lea    0x79c8(%rip),%rdx        # 140009000 <.rdata>
   140001638:	48 89 c1             	mov    %rax,%rcx
   14000163b:	48 89 c3             	mov    %rax,%rbx
   14000163e:	e8 3d 3c 00 00       	call   140005280 <_ZNSt13runtime_errorC1EPKc>
   140001643:	4c 8d 05 2e 3c 00 00 	lea    0x3c2e(%rip),%r8        # 140005278 <_ZNSt13runtime_errorD1Ev>
   14000164a:	48 8d 15 ff 7f 00 00 	lea    0x7fff(%rip),%rdx        # 140009650 <_ZTISt13runtime_error>
   140001651:	48 89 d9             	mov    %rbx,%rcx
   140001654:	e8 2f 3b 00 00       	call   140005188 <__cxa_throw>
   140001659:	48 89 c6             	mov    %rax,%rsi
   14000165c:	48 89 d9             	mov    %rbx,%rcx
   14000165f:	e8 34 3b 00 00       	call   140005198 <__cxa_free_exception>
   140001664:	48 89 f1             	mov    %rsi,%rcx
   140001667:	e8 a4 4c 00 00       	call   140006310 <_Unwind_Resume>
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <__tcf_0>:
   140001670:	48 8d 0d c9 a9 00 00 	lea    0xa9c9(%rip),%rcx        # 14000c040 <_ZStL8__ioinit>
   140001677:	e9 84 3b 00 00       	jmp    140005200 <_ZNSt8ios_base4InitD1Ev>
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
   14000169d:	e8 0e 3b 00 00       	call   1400051b0 <__cxa_allocate_exception>
   1400016a2:	48 8d 15 67 79 00 00 	lea    0x7967(%rip),%rdx        # 140009010 <.rdata>
   1400016a9:	48 89 c1             	mov    %rax,%rcx
   1400016ac:	48 89 c3             	mov    %rax,%rbx
   1400016af:	e8 bc 3b 00 00       	call   140005270 <_ZNSt16invalid_argumentC1EPKc>
   1400016b4:	4c 8d 05 ad 3b 00 00 	lea    0x3bad(%rip),%r8        # 140005268 <_ZNSt16invalid_argumentD1Ev>
   1400016bb:	48 8d 15 ae 7f 00 00 	lea    0x7fae(%rip),%rdx        # 140009670 <_ZTISt16invalid_argument>
   1400016c2:	48 89 d9             	mov    %rbx,%rcx
   1400016c5:	e8 be 3a 00 00       	call   140005188 <__cxa_throw>
   1400016ca:	48 89 c6             	mov    %rax,%rsi
   1400016cd:	48 89 d9             	mov    %rbx,%rcx
   1400016d0:	e8 c3 3a 00 00       	call   140005198 <__cxa_free_exception>
   1400016d5:	48 89 f1             	mov    %rsi,%rcx
   1400016d8:	e8 33 4c 00 00       	call   140006310 <_Unwind_Resume>
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
   140001703:	e8 a8 3a 00 00       	call   1400051b0 <__cxa_allocate_exception>
   140001708:	48 8d 15 01 79 00 00 	lea    0x7901(%rip),%rdx        # 140009010 <.rdata>
   14000170f:	48 89 c1             	mov    %rax,%rcx
   140001712:	48 89 c3             	mov    %rax,%rbx
   140001715:	e8 56 3b 00 00       	call   140005270 <_ZNSt16invalid_argumentC1EPKc>
   14000171a:	4c 8d 05 47 3b 00 00 	lea    0x3b47(%rip),%r8        # 140005268 <_ZNSt16invalid_argumentD1Ev>
   140001721:	48 8d 15 48 7f 00 00 	lea    0x7f48(%rip),%rdx        # 140009670 <_ZTISt16invalid_argument>
   140001728:	48 89 d9             	mov    %rbx,%rcx
   14000172b:	e8 58 3a 00 00       	call   140005188 <__cxa_throw>
   140001730:	48 89 c6             	mov    %rax,%rsi
   140001733:	48 89 d9             	mov    %rbx,%rcx
   140001736:	e8 5d 3a 00 00       	call   140005198 <__cxa_free_exception>
   14000173b:	48 89 f1             	mov    %rsi,%rcx
   14000173e:	e8 cd 4b 00 00       	call   140006310 <_Unwind_Resume>
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
   140001757:	e9 a4 3a 00 00       	jmp    140005200 <_ZNSt8ios_base4InitD1Ev>
   14000175c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>:
   140001760:	56                   	push   %rsi
   140001761:	53                   	push   %rbx
   140001762:	48 83 ec 28          	sub    $0x28,%rsp
   140001766:	48 8b 01             	mov    (%rcx),%rax
   140001769:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   14000176d:	48 8b b4 01 f0 00 00 	mov    0xf0(%rcx,%rax,1),%rsi
   140001774:	00 
   140001775:	48 89 cb             	mov    %rcx,%rbx
   140001778:	48 85 f6             	test   %rsi,%rsi
   14000177b:	74 3b                	je     1400017b8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x58>
   14000177d:	80 7e 38 00          	cmpb   $0x0,0x38(%rsi)
   140001781:	74 1a                	je     14000179d <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x3d>
   140001783:	0f be 56 43          	movsbl 0x43(%rsi),%edx
   140001787:	48 89 d9             	mov    %rbx,%rcx
   14000178a:	e8 09 3b 00 00       	call   140005298 <_ZNSo3putEc>
   14000178f:	48 89 c1             	mov    %rax,%rcx
   140001792:	48 83 c4 28          	add    $0x28,%rsp
   140001796:	5b                   	pop    %rbx
   140001797:	5e                   	pop    %rsi
   140001798:	e9 f3 3a 00 00       	jmp    140005290 <_ZNSo5flushEv>
   14000179d:	48 89 f1             	mov    %rsi,%rcx
   1400017a0:	e8 fb 3a 00 00       	call   1400052a0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   1400017a5:	48 8b 06             	mov    (%rsi),%rax
   1400017a8:	ba 0a 00 00 00       	mov    $0xa,%edx
   1400017ad:	48 89 f1             	mov    %rsi,%rcx
   1400017b0:	ff 50 30             	call   *0x30(%rax)
   1400017b3:	0f be d0             	movsbl %al,%edx
   1400017b6:	eb cf                	jmp    140001787 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0+0x27>
   1400017b8:	e8 1b 3a 00 00       	call   1400051d8 <_ZSt16__throw_bad_castv>
   1400017bd:	90                   	nop
   1400017be:	90                   	nop
   1400017bf:	90                   	nop

00000001400017c0 <__tcf_0>:
   1400017c0:	48 8d 0d 99 a8 00 00 	lea    0xa899(%rip),%rcx        # 14000c060 <_ZStL8__ioinit>
   1400017c7:	e9 34 3a 00 00       	jmp    140005200 <_ZNSt8ios_base4InitD1Ev>
   1400017cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>:
   1400017d0:	41 54                	push   %r12
   1400017d2:	55                   	push   %rbp
   1400017d3:	57                   	push   %rdi
   1400017d4:	56                   	push   %rsi
   1400017d5:	53                   	push   %rbx
   1400017d6:	48 83 ec 40          	sub    $0x40,%rsp
   1400017da:	48 8b 32             	mov    (%rdx),%rsi
   1400017dd:	48 8b 19             	mov    (%rcx),%rbx
   1400017e0:	48 89 cf             	mov    %rcx,%rdi
   1400017e3:	48 89 d5             	mov    %rdx,%rbp
   1400017e6:	48 39 f2             	cmp    %rsi,%rdx
   1400017e9:	74 24                	je     14000180f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   1400017eb:	48 39 cb             	cmp    %rcx,%rbx
   1400017ee:	75 0d                	jne    1400017fd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x2d>
   1400017f0:	eb 5e                	jmp    140001850 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   1400017f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400017f8:	48 39 df             	cmp    %rbx,%rdi
   1400017fb:	74 53                	je     140001850 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   1400017fd:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001801:	48 8b 36             	mov    (%rsi),%rsi
   140001804:	88 43 10             	mov    %al,0x10(%rbx)
   140001807:	48 8b 1b             	mov    (%rbx),%rbx
   14000180a:	48 39 f5             	cmp    %rsi,%rbp
   14000180d:	75 e9                	jne    1400017f8 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x28>
   14000180f:	48 39 df             	cmp    %rbx,%rdi
   140001812:	74 29                	je     14000183d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001814:	0f 1f 40 00          	nopl   0x0(%rax)
   140001818:	48 89 de             	mov    %rbx,%rsi
   14000181b:	48 8b 1b             	mov    (%rbx),%rbx
   14000181e:	48 83 6f 10 01       	subq   $0x1,0x10(%rdi)
   140001823:	48 89 f1             	mov    %rsi,%rcx
   140001826:	e8 e5 39 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   14000182b:	ba 18 00 00 00       	mov    $0x18,%edx
   140001830:	48 89 f1             	mov    %rsi,%rcx
   140001833:	e8 88 39 00 00       	call   1400051c0 <_ZdlPvy>
   140001838:	48 39 df             	cmp    %rbx,%rdi
   14000183b:	75 db                	jne    140001818 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x48>
   14000183d:	48 83 c4 40          	add    $0x40,%rsp
   140001841:	5b                   	pop    %rbx
   140001842:	5e                   	pop    %rsi
   140001843:	5f                   	pop    %rdi
   140001844:	5d                   	pop    %rbp
   140001845:	41 5c                	pop    %r12
   140001847:	c3                   	ret
   140001848:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000184f:	00 
   140001850:	48 39 f5             	cmp    %rsi,%rbp
   140001853:	74 ba                	je     14000180f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   140001855:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000185c:	00 00 
   14000185e:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140001863:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140001868:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000186c:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001871:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001876:	e8 3d 39 00 00       	call   1400051b8 <_Znwy>
   14000187b:	48 89 c1             	mov    %rax,%rcx
   14000187e:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001882:	4c 89 e2             	mov    %r12,%rdx
   140001885:	88 41 10             	mov    %al,0x10(%rcx)
   140001888:	e8 8b 39 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000188d:	48 8b 36             	mov    (%rsi),%rsi
   140001890:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001896:	48 39 f5             	cmp    %rsi,%rbp
   140001899:	75 d6                	jne    140001871 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   14000189b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   1400018a0:	4c 39 e2             	cmp    %r12,%rdx
   1400018a3:	74 98                	je     14000183d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   1400018a5:	4d 89 e0             	mov    %r12,%r8
   1400018a8:	48 89 f9             	mov    %rdi,%rcx
   1400018ab:	e8 70 39 00 00       	call   140005220 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   1400018b0:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400018b5:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400018ba:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400018c1:	00 00 
   1400018c3:	48 01 47 10          	add    %rax,0x10(%rdi)
   1400018c7:	4c 39 e3             	cmp    %r12,%rbx
   1400018ca:	0f 84 6d ff ff ff    	je     14000183d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   1400018d0:	48 89 d9             	mov    %rbx,%rcx
   1400018d3:	48 8b 1b             	mov    (%rbx),%rbx
   1400018d6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400018db:	e8 e0 38 00 00       	call   1400051c0 <_ZdlPvy>
   1400018e0:	4c 39 e3             	cmp    %r12,%rbx
   1400018e3:	75 eb                	jne    1400018d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x100>
   1400018e5:	48 83 c4 40          	add    $0x40,%rsp
   1400018e9:	5b                   	pop    %rbx
   1400018ea:	5e                   	pop    %rsi
   1400018eb:	5f                   	pop    %rdi
   1400018ec:	5d                   	pop    %rbp
   1400018ed:	41 5c                	pop    %r12
   1400018ef:	c3                   	ret
   1400018f0:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400018f5:	48 89 c3             	mov    %rax,%rbx
   1400018f8:	4c 39 e1             	cmp    %r12,%rcx
   1400018fb:	74 12                	je     14000190f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x13f>
   1400018fd:	48 8b 31             	mov    (%rcx),%rsi
   140001900:	ba 18 00 00 00       	mov    $0x18,%edx
   140001905:	e8 b6 38 00 00       	call   1400051c0 <_ZdlPvy>
   14000190a:	48 89 f1             	mov    %rsi,%rcx
   14000190d:	eb e9                	jmp    1400018f8 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   14000190f:	48 89 d9             	mov    %rbx,%rcx
   140001912:	e8 f9 49 00 00       	call   140006310 <_Unwind_Resume>
   140001917:	90                   	nop
   140001918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000191f:	00 

0000000140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>:
   140001920:	57                   	push   %rdi
   140001921:	56                   	push   %rsi
   140001922:	53                   	push   %rbx
   140001923:	48 83 ec 30          	sub    $0x30,%rsp
   140001927:	31 d2                	xor    %edx,%edx
   140001929:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   14000192e:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140001935:	00 
   140001936:	48 89 cb             	mov    %rcx,%rbx
   140001939:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000193d:	0f 11 01             	movups %xmm0,(%rcx)
   140001940:	48 8d 4c 24 2f       	lea    0x2f(%rsp),%rcx
   140001945:	e8 36 fd ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000194a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000194f:	e8 64 38 00 00       	call   1400051b8 <_Znwy>
   140001954:	48 89 c1             	mov    %rax,%rcx
   140001957:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   14000195c:	48 89 da             	mov    %rbx,%rdx
   14000195f:	88 41 10             	mov    %al,0x10(%rcx)
   140001962:	e8 b1 38 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001967:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   14000196c:	48 83 c4 30          	add    $0x30,%rsp
   140001970:	5b                   	pop    %rbx
   140001971:	5e                   	pop    %rsi
   140001972:	5f                   	pop    %rdi
   140001973:	c3                   	ret
   140001974:	48 8b 0b             	mov    (%rbx),%rcx
   140001977:	48 89 c7             	mov    %rax,%rdi
   14000197a:	48 39 cb             	cmp    %rcx,%rbx
   14000197d:	74 12                	je     140001991 <_ZN13NaturalBinaryC2Ex.constprop.0+0x71>
   14000197f:	48 8b 31             	mov    (%rcx),%rsi
   140001982:	ba 18 00 00 00       	mov    $0x18,%edx
   140001987:	e8 34 38 00 00       	call   1400051c0 <_ZdlPvy>
   14000198c:	48 89 f1             	mov    %rsi,%rcx
   14000198f:	eb e9                	jmp    14000197a <_ZN13NaturalBinaryC2Ex.constprop.0+0x5a>
   140001991:	48 89 f9             	mov    %rdi,%rcx
   140001994:	e8 77 49 00 00       	call   140006310 <_Unwind_Resume>
   140001999:	90                   	nop
   14000199a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400019a0 <_ZN13NaturalBinaryC1Ev>:
   1400019a0:	e9 7b ff ff ff       	jmp    140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400019a5:	90                   	nop
   1400019a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400019ad:	00 00 00 

00000001400019b0 <_ZN13NaturalBinaryC1Ex>:
   1400019b0:	57                   	push   %rdi
   1400019b1:	56                   	push   %rsi
   1400019b2:	53                   	push   %rbx
   1400019b3:	48 83 ec 30          	sub    $0x30,%rsp
   1400019b7:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   1400019bc:	48 89 ce             	mov    %rcx,%rsi
   1400019bf:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   1400019c4:	48 89 d3             	mov    %rdx,%rbx
   1400019c7:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400019cb:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   1400019d2:	00 
   1400019d3:	0f 11 01             	movups %xmm0,(%rcx)
   1400019d6:	48 85 d2             	test   %rdx,%rdx
   1400019d9:	74 65                	je     140001a40 <_ZN13NaturalBinaryC1Ex+0x90>
   1400019db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400019e0:	48 89 d8             	mov    %rbx,%rax
   1400019e3:	48 89 f9             	mov    %rdi,%rcx
   1400019e6:	48 c1 f8 3f          	sar    $0x3f,%rax
   1400019ea:	48 c1 e8 38          	shr    $0x38,%rax
   1400019ee:	48 8d 14 03          	lea    (%rbx,%rax,1),%rdx
   1400019f2:	0f b6 d2             	movzbl %dl,%edx
   1400019f5:	48 29 c2             	sub    %rax,%rdx
   1400019f8:	e8 83 fc ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400019fd:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001a02:	e8 b1 37 00 00       	call   1400051b8 <_Znwy>
   140001a07:	48 89 c1             	mov    %rax,%rcx
   140001a0a:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140001a0f:	48 89 f2             	mov    %rsi,%rdx
   140001a12:	88 41 10             	mov    %al,0x10(%rcx)
   140001a15:	e8 fe 37 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001a1a:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001a1f:	48 85 db             	test   %rbx,%rbx
   140001a22:	48 8d 83 ff 00 00 00 	lea    0xff(%rbx),%rax
   140001a29:	48 0f 48 d8          	cmovs  %rax,%rbx
   140001a2d:	48 c1 fb 08          	sar    $0x8,%rbx
   140001a31:	75 ad                	jne    1400019e0 <_ZN13NaturalBinaryC1Ex+0x30>
   140001a33:	48 83 c4 30          	add    $0x30,%rsp
   140001a37:	5b                   	pop    %rbx
   140001a38:	5e                   	pop    %rsi
   140001a39:	5f                   	pop    %rdi
   140001a3a:	c3                   	ret
   140001a3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001a40:	31 d2                	xor    %edx,%edx
   140001a42:	48 89 f9             	mov    %rdi,%rcx
   140001a45:	e8 36 fc ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140001a4a:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001a4f:	e8 64 37 00 00       	call   1400051b8 <_Znwy>
   140001a54:	48 89 c1             	mov    %rax,%rcx
   140001a57:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140001a5c:	48 89 f2             	mov    %rsi,%rdx
   140001a5f:	88 41 10             	mov    %al,0x10(%rcx)
   140001a62:	e8 b1 37 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001a67:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001a6c:	48 83 c4 30          	add    $0x30,%rsp
   140001a70:	5b                   	pop    %rbx
   140001a71:	5e                   	pop    %rsi
   140001a72:	5f                   	pop    %rdi
   140001a73:	c3                   	ret
   140001a74:	48 8b 0e             	mov    (%rsi),%rcx
   140001a77:	48 89 c3             	mov    %rax,%rbx
   140001a7a:	48 39 ce             	cmp    %rcx,%rsi
   140001a7d:	74 12                	je     140001a91 <_ZN13NaturalBinaryC1Ex+0xe1>
   140001a7f:	48 8b 39             	mov    (%rcx),%rdi
   140001a82:	ba 18 00 00 00       	mov    $0x18,%edx
   140001a87:	e8 34 37 00 00       	call   1400051c0 <_ZdlPvy>
   140001a8c:	48 89 f9             	mov    %rdi,%rcx
   140001a8f:	eb e9                	jmp    140001a7a <_ZN13NaturalBinaryC1Ex+0xca>
   140001a91:	48 89 d9             	mov    %rbx,%rcx
   140001a94:	e8 77 48 00 00       	call   140006310 <_Unwind_Resume>
   140001a99:	90                   	nop
   140001a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001aa0 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE>:
   140001aa0:	41 54                	push   %r12
   140001aa2:	55                   	push   %rbp
   140001aa3:	57                   	push   %rdi
   140001aa4:	56                   	push   %rsi
   140001aa5:	53                   	push   %rbx
   140001aa6:	48 83 ec 20          	sub    $0x20,%rsp
   140001aaa:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   140001aaf:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140001ab6:	00 
   140001ab7:	48 89 ce             	mov    %rcx,%rsi
   140001aba:	48 89 d7             	mov    %rdx,%rdi
   140001abd:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001ac1:	0f 11 01             	movups %xmm0,(%rcx)
   140001ac4:	48 8b 1a             	mov    (%rdx),%rbx
   140001ac7:	48 39 da             	cmp    %rbx,%rdx
   140001aca:	74 39                	je     140001b05 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x65>
   140001acc:	49 89 cc             	mov    %rcx,%r12
   140001acf:	eb 0a                	jmp    140001adb <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x3b>
   140001ad1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001ad8:	4c 8b 26             	mov    (%rsi),%r12
   140001adb:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001ae0:	0f b6 6b 10          	movzbl 0x10(%rbx),%ebp
   140001ae4:	e8 cf 36 00 00       	call   1400051b8 <_Znwy>
   140001ae9:	40 88 68 10          	mov    %bpl,0x10(%rax)
   140001aed:	48 89 c1             	mov    %rax,%rcx
   140001af0:	4c 89 e2             	mov    %r12,%rdx
   140001af3:	e8 20 37 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001af8:	48 8b 1b             	mov    (%rbx),%rbx
   140001afb:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001b00:	48 39 df             	cmp    %rbx,%rdi
   140001b03:	75 d3                	jne    140001ad8 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x38>
   140001b05:	48 83 c4 20          	add    $0x20,%rsp
   140001b09:	5b                   	pop    %rbx
   140001b0a:	5e                   	pop    %rsi
   140001b0b:	5f                   	pop    %rdi
   140001b0c:	5d                   	pop    %rbp
   140001b0d:	41 5c                	pop    %r12
   140001b0f:	c3                   	ret
   140001b10:	48 8b 0e             	mov    (%rsi),%rcx
   140001b13:	48 89 c3             	mov    %rax,%rbx
   140001b16:	48 39 ce             	cmp    %rcx,%rsi
   140001b19:	74 12                	je     140001b2d <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x8d>
   140001b1b:	48 8b 39             	mov    (%rcx),%rdi
   140001b1e:	ba 18 00 00 00       	mov    $0x18,%edx
   140001b23:	e8 98 36 00 00       	call   1400051c0 <_ZdlPvy>
   140001b28:	48 89 f9             	mov    %rdi,%rcx
   140001b2b:	eb e9                	jmp    140001b16 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x76>
   140001b2d:	48 89 d9             	mov    %rbx,%rcx
   140001b30:	e8 db 47 00 00       	call   140006310 <_Unwind_Resume>
   140001b35:	90                   	nop
   140001b36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001b3d:	00 00 00 

0000000140001b40 <_ZN13NaturalBinaryD1Ev>:
   140001b40:	56                   	push   %rsi
   140001b41:	53                   	push   %rbx
   140001b42:	48 83 ec 28          	sub    $0x28,%rsp
   140001b46:	48 8b 19             	mov    (%rcx),%rbx
   140001b49:	48 89 ce             	mov    %rcx,%rsi
   140001b4c:	48 39 cb             	cmp    %rcx,%rbx
   140001b4f:	74 1c                	je     140001b6d <_ZN13NaturalBinaryD1Ev+0x2d>
   140001b51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001b58:	48 89 d9             	mov    %rbx,%rcx
   140001b5b:	48 8b 1b             	mov    (%rbx),%rbx
   140001b5e:	ba 18 00 00 00       	mov    $0x18,%edx
   140001b63:	e8 58 36 00 00       	call   1400051c0 <_ZdlPvy>
   140001b68:	48 39 f3             	cmp    %rsi,%rbx
   140001b6b:	75 eb                	jne    140001b58 <_ZN13NaturalBinaryD1Ev+0x18>
   140001b6d:	48 83 c4 28          	add    $0x28,%rsp
   140001b71:	5b                   	pop    %rbx
   140001b72:	5e                   	pop    %rsi
   140001b73:	c3                   	ret
   140001b74:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001b7b:	00 00 00 00 
   140001b7f:	90                   	nop

0000000140001b80 <_ZN13NaturalBinaryplES_>:
   140001b80:	41 57                	push   %r15
   140001b82:	41 56                	push   %r14
   140001b84:	41 55                	push   %r13
   140001b86:	41 54                	push   %r12
   140001b88:	55                   	push   %rbp
   140001b89:	57                   	push   %rdi
   140001b8a:	56                   	push   %rsi
   140001b8b:	53                   	push   %rbx
   140001b8c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   140001b93:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
   140001b9a:	00 
   140001b9b:	49 8b 18             	mov    (%r8),%rbx
   140001b9e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140001ba3:	48 89 cf             	mov    %rcx,%rdi
   140001ba6:	49 89 d4             	mov    %rdx,%r12
   140001ba9:	4c 89 c6             	mov    %r8,%rsi
   140001bac:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001bb3:	00 00 
   140001bb5:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140001bba:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001bbe:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001bc3:	49 39 d8             	cmp    %rbx,%r8
   140001bc6:	0f 84 cc 01 00 00    	je     140001d98 <_ZN13NaturalBinaryplES_+0x218>
   140001bcc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001bd0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001bd5:	e8 de 35 00 00       	call   1400051b8 <_Znwy>
   140001bda:	48 89 c1             	mov    %rax,%rcx
   140001bdd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001be1:	48 89 ea             	mov    %rbp,%rdx
   140001be4:	88 41 10             	mov    %al,0x10(%rcx)
   140001be7:	e8 2c 36 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001bec:	48 8b 1b             	mov    (%rbx),%rbx
   140001bef:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001bf5:	48 39 de             	cmp    %rbx,%rsi
   140001bf8:	75 d6                	jne    140001bd0 <_ZN13NaturalBinaryplES_+0x50>
   140001bfa:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
   140001bff:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001c06:	00 00 
   140001c08:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
   140001c0d:	66 49 0f 6e f7       	movq   %r15,%xmm6
   140001c12:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140001c16:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001c1b:	e8 50 f8 ff ff       	call   140001470 <_ZN10Arithmetic3clcEv>
   140001c20:	49 8b 1c 24          	mov    (%r12),%rbx
   140001c24:	49 39 dc             	cmp    %rbx,%r12
   140001c27:	74 47                	je     140001c70 <_ZN13NaturalBinaryplES_+0xf0>
   140001c29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001c30:	0f b6 4b 10          	movzbl 0x10(%rbx),%ecx
   140001c34:	41 0f b6 55 10       	movzbl 0x10(%r13),%edx
   140001c39:	e8 72 f8 ff ff       	call   1400014b0 <_ZN10Arithmetic4addcE4ByteS0_>
   140001c3e:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001c43:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
   140001c48:	89 c6                	mov    %eax,%esi
   140001c4a:	e8 69 35 00 00       	call   1400051b8 <_Znwy>
   140001c4f:	40 88 70 10          	mov    %sil,0x10(%rax)
   140001c53:	48 89 c1             	mov    %rax,%rcx
   140001c56:	4c 89 f2             	mov    %r14,%rdx
   140001c59:	e8 ba 35 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001c5e:	48 8b 1b             	mov    (%rbx),%rbx
   140001c61:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140001c67:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140001c6b:	49 39 dc             	cmp    %rbx,%r12
   140001c6e:	75 c0                	jne    140001c30 <_ZN13NaturalBinaryplES_+0xb0>
   140001c70:	e8 0b f8 ff ff       	call   140001480 <_ZN10Arithmetic5carryEv>
   140001c75:	84 c0                	test   %al,%al
   140001c77:	0f 85 23 01 00 00    	jne    140001da0 <_ZN13NaturalBinaryplES_+0x220>
   140001c7d:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140001c82:	f3 0f 6f 4c 24 40    	movdqu 0x40(%rsp),%xmm1
   140001c88:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
   140001c8d:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   140001c92:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140001c97:	0f 11 4c 24 60       	movups %xmm1,0x60(%rsp)
   140001c9c:	49 39 c7             	cmp    %rax,%r15
   140001c9f:	0f 84 43 01 00 00    	je     140001de8 <_ZN13NaturalBinaryplES_+0x268>
   140001ca5:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140001caa:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140001caf:	48 89 32             	mov    %rsi,(%rdx)
   140001cb2:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140001cb7:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001cbb:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   140001cbf:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001cc6:	00 00 
   140001cc8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   140001ccf:	00 
   140001cd0:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001cd5:	0f 11 07             	movups %xmm0,(%rdi)
   140001cd8:	48 39 f3             	cmp    %rsi,%rbx
   140001cdb:	74 78                	je     140001d55 <_ZN13NaturalBinaryplES_+0x1d5>
   140001cdd:	49 89 fd             	mov    %rdi,%r13
   140001ce0:	eb 09                	jmp    140001ceb <_ZN13NaturalBinaryplES_+0x16b>
   140001ce2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001ce8:	4c 8b 2f             	mov    (%rdi),%r13
   140001ceb:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001cf0:	44 0f b6 63 10       	movzbl 0x10(%rbx),%r12d
   140001cf5:	e8 be 34 00 00       	call   1400051b8 <_Znwy>
   140001cfa:	44 88 60 10          	mov    %r12b,0x10(%rax)
   140001cfe:	48 89 c1             	mov    %rax,%rcx
   140001d01:	4c 89 ea             	mov    %r13,%rdx
   140001d04:	e8 0f 35 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001d09:	48 8b 1b             	mov    (%rbx),%rbx
   140001d0c:	48 83 47 10 01       	addq   $0x1,0x10(%rdi)
   140001d11:	48 39 f3             	cmp    %rsi,%rbx
   140001d14:	75 d2                	jne    140001ce8 <_ZN13NaturalBinaryplES_+0x168>
   140001d16:	4c 8b 64 24 60       	mov    0x60(%rsp),%r12
   140001d1b:	49 39 dc             	cmp    %rbx,%r12
   140001d1e:	74 16                	je     140001d36 <_ZN13NaturalBinaryplES_+0x1b6>
   140001d20:	4c 89 e1             	mov    %r12,%rcx
   140001d23:	4d 8b 24 24          	mov    (%r12),%r12
   140001d27:	ba 18 00 00 00       	mov    $0x18,%edx
   140001d2c:	e8 8f 34 00 00       	call   1400051c0 <_ZdlPvy>
   140001d31:	49 39 f4             	cmp    %rsi,%r12
   140001d34:	75 ea                	jne    140001d20 <_ZN13NaturalBinaryplES_+0x1a0>
   140001d36:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001d3b:	eb 13                	jmp    140001d50 <_ZN13NaturalBinaryplES_+0x1d0>
   140001d3d:	0f 1f 00             	nopl   (%rax)
   140001d40:	48 89 d9             	mov    %rbx,%rcx
   140001d43:	ba 18 00 00 00       	mov    $0x18,%edx
   140001d48:	48 8b 1b             	mov    (%rbx),%rbx
   140001d4b:	e8 70 34 00 00       	call   1400051c0 <_ZdlPvy>
   140001d50:	4c 39 fb             	cmp    %r15,%rbx
   140001d53:	75 eb                	jne    140001d40 <_ZN13NaturalBinaryplES_+0x1c0>
   140001d55:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140001d5a:	48 39 eb             	cmp    %rbp,%rbx
   140001d5d:	74 16                	je     140001d75 <_ZN13NaturalBinaryplES_+0x1f5>
   140001d5f:	90                   	nop
   140001d60:	48 89 d9             	mov    %rbx,%rcx
   140001d63:	48 8b 1b             	mov    (%rbx),%rbx
   140001d66:	ba 18 00 00 00       	mov    $0x18,%edx
   140001d6b:	e8 50 34 00 00       	call   1400051c0 <_ZdlPvy>
   140001d70:	48 39 eb             	cmp    %rbp,%rbx
   140001d73:	75 eb                	jne    140001d60 <_ZN13NaturalBinaryplES_+0x1e0>
   140001d75:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
   140001d7c:	00 
   140001d7d:	48 89 f8             	mov    %rdi,%rax
   140001d80:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001d87:	5b                   	pop    %rbx
   140001d88:	5e                   	pop    %rsi
   140001d89:	5f                   	pop    %rdi
   140001d8a:	5d                   	pop    %rbp
   140001d8b:	41 5c                	pop    %r12
   140001d8d:	41 5d                	pop    %r13
   140001d8f:	41 5e                	pop    %r14
   140001d91:	41 5f                	pop    %r15
   140001d93:	c3                   	ret
   140001d94:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d98:	49 89 ed             	mov    %rbp,%r13
   140001d9b:	e9 5f fe ff ff       	jmp    140001bff <_ZN13NaturalBinaryplES_+0x7f>
   140001da0:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140001da5:	ba 01 00 00 00       	mov    $0x1,%edx
   140001daa:	e8 d1 f8 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140001daf:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001db4:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001db9:	e8 fa 33 00 00       	call   1400051b8 <_Znwy>
   140001dbe:	48 89 c1             	mov    %rax,%rcx
   140001dc1:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   140001dc6:	48 89 da             	mov    %rbx,%rdx
   140001dc9:	88 41 10             	mov    %al,0x10(%rcx)
   140001dcc:	e8 47 34 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001dd1:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140001dd6:	48 83 c0 01          	add    $0x1,%rax
   140001dda:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   140001ddf:	e9 9e fe ff ff       	jmp    140001c82 <_ZN13NaturalBinaryplES_+0x102>
   140001de4:	0f 1f 40 00          	nopl   0x0(%rax)
   140001de8:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140001ded:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   140001df4:	00 
   140001df5:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001df9:	0f 11 07             	movups %xmm0,(%rdi)
   140001dfc:	e9 54 ff ff ff       	jmp    140001d55 <_ZN13NaturalBinaryplES_+0x1d5>
   140001e01:	48 8b 0f             	mov    (%rdi),%rcx
   140001e04:	48 89 c3             	mov    %rax,%rbx
   140001e07:	48 39 cf             	cmp    %rcx,%rdi
   140001e0a:	74 62                	je     140001e6e <_ZN13NaturalBinaryplES_+0x2ee>
   140001e0c:	4c 8b 21             	mov    (%rcx),%r12
   140001e0f:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e14:	e8 a7 33 00 00       	call   1400051c0 <_ZdlPvy>
   140001e19:	4c 89 e1             	mov    %r12,%rcx
   140001e1c:	eb e9                	jmp    140001e07 <_ZN13NaturalBinaryplES_+0x287>
   140001e1e:	48 89 c3             	mov    %rax,%rbx
   140001e21:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140001e26:	4c 39 f9             	cmp    %r15,%rcx
   140001e29:	74 31                	je     140001e5c <_ZN13NaturalBinaryplES_+0x2dc>
   140001e2b:	48 8b 31             	mov    (%rcx),%rsi
   140001e2e:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e33:	e8 88 33 00 00       	call   1400051c0 <_ZdlPvy>
   140001e38:	48 89 f1             	mov    %rsi,%rcx
   140001e3b:	eb e9                	jmp    140001e26 <_ZN13NaturalBinaryplES_+0x2a6>
   140001e3d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001e42:	48 89 c3             	mov    %rax,%rbx
   140001e45:	48 39 e9             	cmp    %rbp,%rcx
   140001e48:	74 1c                	je     140001e66 <_ZN13NaturalBinaryplES_+0x2e6>
   140001e4a:	48 8b 31             	mov    (%rcx),%rsi
   140001e4d:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e52:	e8 69 33 00 00       	call   1400051c0 <_ZdlPvy>
   140001e57:	48 89 f1             	mov    %rsi,%rcx
   140001e5a:	eb e9                	jmp    140001e45 <_ZN13NaturalBinaryplES_+0x2c5>
   140001e5c:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001e61:	48 39 e9             	cmp    %rbp,%rcx
   140001e64:	75 24                	jne    140001e8a <_ZN13NaturalBinaryplES_+0x30a>
   140001e66:	48 89 d9             	mov    %rbx,%rcx
   140001e69:	e8 a2 44 00 00       	call   140006310 <_Unwind_Resume>
   140001e6e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140001e73:	48 39 f1             	cmp    %rsi,%rcx
   140001e76:	74 a9                	je     140001e21 <_ZN13NaturalBinaryplES_+0x2a1>
   140001e78:	48 8b 39             	mov    (%rcx),%rdi
   140001e7b:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e80:	e8 3b 33 00 00       	call   1400051c0 <_ZdlPvy>
   140001e85:	48 89 f9             	mov    %rdi,%rcx
   140001e88:	eb e9                	jmp    140001e73 <_ZN13NaturalBinaryplES_+0x2f3>
   140001e8a:	48 8b 31             	mov    (%rcx),%rsi
   140001e8d:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e92:	e8 29 33 00 00       	call   1400051c0 <_ZdlPvy>
   140001e97:	48 89 f1             	mov    %rsi,%rcx
   140001e9a:	eb c5                	jmp    140001e61 <_ZN13NaturalBinaryplES_+0x2e1>
   140001e9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001ea0 <_ZN13NaturalBinarymiES_>:
   140001ea0:	41 57                	push   %r15
   140001ea2:	41 56                	push   %r14
   140001ea4:	41 55                	push   %r13
   140001ea6:	41 54                	push   %r12
   140001ea8:	55                   	push   %rbp
   140001ea9:	57                   	push   %rdi
   140001eaa:	56                   	push   %rsi
   140001eab:	53                   	push   %rbx
   140001eac:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   140001eb3:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
   140001eba:	00 
   140001ebb:	49 8b 18             	mov    (%r8),%rbx
   140001ebe:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140001ec3:	48 89 cd             	mov    %rcx,%rbp
   140001ec6:	49 89 d5             	mov    %rdx,%r13
   140001ec9:	4c 89 c6             	mov    %r8,%rsi
   140001ecc:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001ed3:	00 00 
   140001ed5:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140001eda:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001ede:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001ee3:	49 39 d8             	cmp    %rbx,%r8
   140001ee6:	74 35                	je     140001f1d <_ZN13NaturalBinarymiES_+0x7d>
   140001ee8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001eef:	00 
   140001ef0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001ef5:	e8 be 32 00 00       	call   1400051b8 <_Znwy>
   140001efa:	48 89 c1             	mov    %rax,%rcx
   140001efd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001f01:	4c 89 e2             	mov    %r12,%rdx
   140001f04:	88 41 10             	mov    %al,0x10(%rcx)
   140001f07:	e8 0c 33 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001f0c:	48 8b 1b             	mov    (%rbx),%rbx
   140001f0f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001f15:	48 39 de             	cmp    %rbx,%rsi
   140001f18:	75 d6                	jne    140001ef0 <_ZN13NaturalBinarymiES_+0x50>
   140001f1a:	48 8b 1b             	mov    (%rbx),%rbx
   140001f1d:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001f24:	00 00 
   140001f26:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
   140001f2b:	66 49 0f 6e f7       	movq   %r15,%xmm6
   140001f30:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140001f34:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001f39:	e8 32 f5 ff ff       	call   140001470 <_ZN10Arithmetic3clcEv>
   140001f3e:	49 8b 75 00          	mov    0x0(%r13),%rsi
   140001f42:	49 39 f5             	cmp    %rsi,%r13
   140001f45:	74 47                	je     140001f8e <_ZN13NaturalBinarymiES_+0xee>
   140001f47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f4e:	00 00 
   140001f50:	0f b6 4e 10          	movzbl 0x10(%rsi),%ecx
   140001f54:	0f b6 53 10          	movzbl 0x10(%rbx),%edx
   140001f58:	e8 b3 f5 ff ff       	call   140001510 <_ZN10Arithmetic3sbbE4ByteS0_>
   140001f5d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001f62:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
   140001f67:	89 c7                	mov    %eax,%edi
   140001f69:	e8 4a 32 00 00       	call   1400051b8 <_Znwy>
   140001f6e:	40 88 78 10          	mov    %dil,0x10(%rax)
   140001f72:	48 89 c1             	mov    %rax,%rcx
   140001f75:	4c 89 f2             	mov    %r14,%rdx
   140001f78:	e8 9b 32 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001f7d:	48 8b 36             	mov    (%rsi),%rsi
   140001f80:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140001f86:	48 8b 1b             	mov    (%rbx),%rbx
   140001f89:	49 39 f5             	cmp    %rsi,%r13
   140001f8c:	75 c2                	jne    140001f50 <_ZN13NaturalBinarymiES_+0xb0>
   140001f8e:	e8 ed f4 ff ff       	call   140001480 <_ZN10Arithmetic5carryEv>
   140001f93:	84 c0                	test   %al,%al
   140001f95:	0f 85 1d 01 00 00    	jne    1400020b8 <_ZN13NaturalBinarymiES_+0x218>
   140001f9b:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140001fa0:	f3 0f 6f 4c 24 40    	movdqu 0x40(%rsp),%xmm1
   140001fa6:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
   140001fab:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   140001fb0:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140001fb5:	0f 11 4c 24 60       	movups %xmm1,0x60(%rsp)
   140001fba:	49 39 c7             	cmp    %rax,%r15
   140001fbd:	0f 84 3d 01 00 00    	je     140002100 <_ZN13NaturalBinarymiES_+0x260>
   140001fc3:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140001fc8:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140001fcd:	48 89 32             	mov    %rsi,(%rdx)
   140001fd0:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140001fd5:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001fd9:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   140001fdd:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140001fe4:	00 00 
   140001fe6:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   140001fed:	00 
   140001fee:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001ff3:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   140001ff7:	48 39 f3             	cmp    %rsi,%rbx
   140001ffa:	74 79                	je     140002075 <_ZN13NaturalBinarymiES_+0x1d5>
   140001ffc:	49 89 ed             	mov    %rbp,%r13
   140001fff:	eb 0b                	jmp    14000200c <_ZN13NaturalBinarymiES_+0x16c>
   140002001:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002008:	4c 8b 6d 00          	mov    0x0(%rbp),%r13
   14000200c:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002011:	0f b6 7b 10          	movzbl 0x10(%rbx),%edi
   140002015:	e8 9e 31 00 00       	call   1400051b8 <_Znwy>
   14000201a:	40 88 78 10          	mov    %dil,0x10(%rax)
   14000201e:	48 89 c1             	mov    %rax,%rcx
   140002021:	4c 89 ea             	mov    %r13,%rdx
   140002024:	e8 ef 31 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002029:	48 8b 1b             	mov    (%rbx),%rbx
   14000202c:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   140002031:	48 39 f3             	cmp    %rsi,%rbx
   140002034:	75 d2                	jne    140002008 <_ZN13NaturalBinarymiES_+0x168>
   140002036:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   14000203b:	48 39 df             	cmp    %rbx,%rdi
   14000203e:	74 15                	je     140002055 <_ZN13NaturalBinarymiES_+0x1b5>
   140002040:	48 89 f9             	mov    %rdi,%rcx
   140002043:	48 8b 3f             	mov    (%rdi),%rdi
   140002046:	ba 18 00 00 00       	mov    $0x18,%edx
   14000204b:	e8 70 31 00 00       	call   1400051c0 <_ZdlPvy>
   140002050:	48 39 f7             	cmp    %rsi,%rdi
   140002053:	75 eb                	jne    140002040 <_ZN13NaturalBinarymiES_+0x1a0>
   140002055:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   14000205a:	eb 14                	jmp    140002070 <_ZN13NaturalBinarymiES_+0x1d0>
   14000205c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002060:	48 89 d9             	mov    %rbx,%rcx
   140002063:	ba 18 00 00 00       	mov    $0x18,%edx
   140002068:	48 8b 1b             	mov    (%rbx),%rbx
   14000206b:	e8 50 31 00 00       	call   1400051c0 <_ZdlPvy>
   140002070:	4c 39 fb             	cmp    %r15,%rbx
   140002073:	75 eb                	jne    140002060 <_ZN13NaturalBinarymiES_+0x1c0>
   140002075:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000207a:	4c 39 e3             	cmp    %r12,%rbx
   14000207d:	74 16                	je     140002095 <_ZN13NaturalBinarymiES_+0x1f5>
   14000207f:	90                   	nop
   140002080:	48 89 d9             	mov    %rbx,%rcx
   140002083:	48 8b 1b             	mov    (%rbx),%rbx
   140002086:	ba 18 00 00 00       	mov    $0x18,%edx
   14000208b:	e8 30 31 00 00       	call   1400051c0 <_ZdlPvy>
   140002090:	4c 39 e3             	cmp    %r12,%rbx
   140002093:	75 eb                	jne    140002080 <_ZN13NaturalBinarymiES_+0x1e0>
   140002095:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
   14000209c:	00 
   14000209d:	48 89 e8             	mov    %rbp,%rax
   1400020a0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400020a7:	5b                   	pop    %rbx
   1400020a8:	5e                   	pop    %rsi
   1400020a9:	5f                   	pop    %rdi
   1400020aa:	5d                   	pop    %rbp
   1400020ab:	41 5c                	pop    %r12
   1400020ad:	41 5d                	pop    %r13
   1400020af:	41 5e                	pop    %r14
   1400020b1:	41 5f                	pop    %r15
   1400020b3:	c3                   	ret
   1400020b4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400020b8:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   1400020bd:	ba 01 00 00 00       	mov    $0x1,%edx
   1400020c2:	e8 b9 f5 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400020c7:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400020cc:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400020d1:	e8 e2 30 00 00       	call   1400051b8 <_Znwy>
   1400020d6:	48 89 c1             	mov    %rax,%rcx
   1400020d9:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   1400020de:	48 89 da             	mov    %rbx,%rdx
   1400020e1:	88 41 10             	mov    %al,0x10(%rcx)
   1400020e4:	e8 2f 31 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400020e9:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   1400020ee:	48 83 c0 01          	add    $0x1,%rax
   1400020f2:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   1400020f7:	e9 a4 fe ff ff       	jmp    140001fa0 <_ZN13NaturalBinarymiES_+0x100>
   1400020fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002100:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140002105:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   14000210c:	00 
   14000210d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002111:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   140002115:	e9 5b ff ff ff       	jmp    140002075 <_ZN13NaturalBinarymiES_+0x1d5>
   14000211a:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   14000211e:	48 89 c3             	mov    %rax,%rbx
   140002121:	48 39 cd             	cmp    %rcx,%rbp
   140002124:	74 62                	je     140002188 <_ZN13NaturalBinarymiES_+0x2e8>
   140002126:	48 8b 39             	mov    (%rcx),%rdi
   140002129:	ba 18 00 00 00       	mov    $0x18,%edx
   14000212e:	e8 8d 30 00 00       	call   1400051c0 <_ZdlPvy>
   140002133:	48 89 f9             	mov    %rdi,%rcx
   140002136:	eb e9                	jmp    140002121 <_ZN13NaturalBinarymiES_+0x281>
   140002138:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000213d:	48 89 c3             	mov    %rax,%rbx
   140002140:	4c 39 e1             	cmp    %r12,%rcx
   140002143:	74 3b                	je     140002180 <_ZN13NaturalBinarymiES_+0x2e0>
   140002145:	48 8b 31             	mov    (%rcx),%rsi
   140002148:	ba 18 00 00 00       	mov    $0x18,%edx
   14000214d:	e8 6e 30 00 00       	call   1400051c0 <_ZdlPvy>
   140002152:	48 89 f1             	mov    %rsi,%rcx
   140002155:	eb e9                	jmp    140002140 <_ZN13NaturalBinarymiES_+0x2a0>
   140002157:	48 89 c3             	mov    %rax,%rbx
   14000215a:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000215f:	4c 39 f9             	cmp    %r15,%rcx
   140002162:	74 12                	je     140002176 <_ZN13NaturalBinarymiES_+0x2d6>
   140002164:	48 8b 31             	mov    (%rcx),%rsi
   140002167:	ba 18 00 00 00       	mov    $0x18,%edx
   14000216c:	e8 4f 30 00 00       	call   1400051c0 <_ZdlPvy>
   140002171:	48 89 f1             	mov    %rsi,%rcx
   140002174:	eb e9                	jmp    14000215f <_ZN13NaturalBinarymiES_+0x2bf>
   140002176:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000217b:	4c 39 e1             	cmp    %r12,%rcx
   14000217e:	75 24                	jne    1400021a4 <_ZN13NaturalBinarymiES_+0x304>
   140002180:	48 89 d9             	mov    %rbx,%rcx
   140002183:	e8 88 41 00 00       	call   140006310 <_Unwind_Resume>
   140002188:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000218d:	48 39 f1             	cmp    %rsi,%rcx
   140002190:	74 c8                	je     14000215a <_ZN13NaturalBinarymiES_+0x2ba>
   140002192:	48 8b 39             	mov    (%rcx),%rdi
   140002195:	ba 18 00 00 00       	mov    $0x18,%edx
   14000219a:	e8 21 30 00 00       	call   1400051c0 <_ZdlPvy>
   14000219f:	48 89 f9             	mov    %rdi,%rcx
   1400021a2:	eb e9                	jmp    14000218d <_ZN13NaturalBinarymiES_+0x2ed>
   1400021a4:	48 8b 31             	mov    (%rcx),%rsi
   1400021a7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400021ac:	e8 0f 30 00 00       	call   1400051c0 <_ZdlPvy>
   1400021b1:	48 89 f1             	mov    %rsi,%rcx
   1400021b4:	eb c5                	jmp    14000217b <_ZN13NaturalBinarymiES_+0x2db>
   1400021b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400021bd:	00 00 00 

00000001400021c0 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>:
   1400021c0:	41 57                	push   %r15
   1400021c2:	41 56                	push   %r14
   1400021c4:	41 55                	push   %r13
   1400021c6:	41 54                	push   %r12
   1400021c8:	55                   	push   %rbp
   1400021c9:	57                   	push   %rdi
   1400021ca:	56                   	push   %rsi
   1400021cb:	53                   	push   %rbx
   1400021cc:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   1400021d3:	0f 11 74 24 70       	movups %xmm6,0x70(%rsp)
   1400021d8:	48 8b 5a 08          	mov    0x8(%rdx),%rbx
   1400021dc:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400021e0:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
   1400021e5:	48 89 cf             	mov    %rcx,%rdi
   1400021e8:	48 89 d5             	mov    %rdx,%rbp
   1400021eb:	45 89 c5             	mov    %r8d,%r13d
   1400021ee:	66 49 0f 6e f4       	movq   %r12,%xmm6
   1400021f3:	4d 89 cf             	mov    %r9,%r15
   1400021f6:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400021fa:	44 38 c0             	cmp    %r8b,%al
   1400021fd:	0f 83 e5 01 00 00    	jae    1400023e8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x228>
   140002203:	48 83 7a 10 01       	cmpq   $0x1,0x10(%rdx)
   140002208:	0f 84 da 01 00 00    	je     1400023e8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x228>
   14000220e:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   140002212:	c1 e0 08             	shl    $0x8,%eax
   140002215:	48 8d 4c 24 2e       	lea    0x2e(%rsp),%rcx
   14000221a:	4c 8d 74 24 2d       	lea    0x2d(%rsp),%r14
   14000221f:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
   140002224:	0f b6 52 10          	movzbl 0x10(%rdx),%edx
   140002228:	01 c2                	add    %eax,%edx
   14000222a:	48 63 d2             	movslq %edx,%rdx
   14000222d:	e8 ae f4 ff ff       	call   1400016e0 <_ZN4WordC1Ey>
   140002232:	c6 44 24 2d 00       	movb   $0x0,0x2d(%rsp)
   140002237:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   14000223e:	00 00 
   140002240:	0f 11 74 24 30       	movups %xmm6,0x30(%rsp)
   140002245:	0f 1f 00             	nopl   (%rax)
   140002248:	0f b7 4c 24 2e       	movzwl 0x2e(%rsp),%ecx
   14000224d:	4d 89 f0             	mov    %r14,%r8
   140002250:	44 89 ea             	mov    %r13d,%edx
   140002253:	e8 68 f3 ff ff       	call   1400015c0 <_ZN10Arithmetic3divE4Word4BytePS1_>
   140002258:	0f b7 d0             	movzwl %ax,%edx
   14000225b:	48 89 f1             	mov    %rsi,%rcx
   14000225e:	e8 1d f4 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140002263:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002268:	e8 4b 2f 00 00       	call   1400051b8 <_Znwy>
   14000226d:	48 89 c1             	mov    %rax,%rcx
   140002270:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   140002275:	4c 89 e2             	mov    %r12,%rdx
   140002278:	88 41 10             	mov    %al,0x10(%rcx)
   14000227b:	e8 98 2f 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002280:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140002284:	0f b6 54 24 2d       	movzbl 0x2d(%rsp),%edx
   140002289:	48 89 f1             	mov    %rsi,%rcx
   14000228c:	48 83 44 24 40 01    	addq   $0x1,0x40(%rsp)
   140002292:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002296:	c1 e2 08             	shl    $0x8,%edx
   140002299:	0f b6 40 10          	movzbl 0x10(%rax),%eax
   14000229d:	01 c2                	add    %eax,%edx
   14000229f:	48 63 d2             	movslq %edx,%rdx
   1400022a2:	e8 39 f4 ff ff       	call   1400016e0 <_ZN4WordC1Ey>
   1400022a7:	0f b7 44 24 50       	movzwl 0x50(%rsp),%eax
   1400022ac:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
   1400022b1:	48 3b 5d 00          	cmp    0x0(%rbp),%rbx
   1400022b5:	75 91                	jne    140002248 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x88>
   1400022b7:	4d 85 ff             	test   %r15,%r15
   1400022ba:	74 39                	je     1400022f5 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x135>
   1400022bc:	0f b6 54 24 2d       	movzbl 0x2d(%rsp),%edx
   1400022c1:	48 89 f1             	mov    %rsi,%rcx
   1400022c4:	e8 e7 f6 ff ff       	call   1400019b0 <_ZN13NaturalBinaryC1Ex>
   1400022c9:	48 89 f2             	mov    %rsi,%rdx
   1400022cc:	4c 89 f9             	mov    %r15,%rcx
   1400022cf:	e8 fc f4 ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400022d4:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   1400022d9:	48 39 f3             	cmp    %rsi,%rbx
   1400022dc:	74 17                	je     1400022f5 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x135>
   1400022de:	66 90                	xchg   %ax,%ax
   1400022e0:	48 89 d9             	mov    %rbx,%rcx
   1400022e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400022e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400022eb:	e8 d0 2e 00 00       	call   1400051c0 <_ZdlPvy>
   1400022f0:	48 39 f3             	cmp    %rsi,%rbx
   1400022f3:	75 eb                	jne    1400022e0 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x120>
   1400022f5:	f3 0f 6f 4c 24 30    	movdqu 0x30(%rsp),%xmm1
   1400022fb:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140002300:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140002305:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   14000230a:	66 48 0f 7e c8       	movq   %xmm1,%rax
   14000230f:	0f 11 4c 24 50       	movups %xmm1,0x50(%rsp)
   140002314:	49 39 c4             	cmp    %rax,%r12
   140002317:	0f 84 0b 01 00 00    	je     140002428 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x268>
   14000231d:	48 89 32             	mov    %rsi,(%rdx)
   140002320:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140002325:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   14000232a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000232e:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   140002332:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   140002339:	00 00 
   14000233b:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   140002342:	00 
   140002343:	0f 11 74 24 30       	movups %xmm6,0x30(%rsp)
   140002348:	0f 11 07             	movups %xmm0,(%rdi)
   14000234b:	48 39 f3             	cmp    %rsi,%rbx
   14000234e:	74 75                	je     1400023c5 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   140002350:	48 89 fd             	mov    %rdi,%rbp
   140002353:	eb 06                	jmp    14000235b <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x19b>
   140002355:	0f 1f 00             	nopl   (%rax)
   140002358:	48 8b 2f             	mov    (%rdi),%rbp
   14000235b:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002360:	44 0f b6 6b 10       	movzbl 0x10(%rbx),%r13d
   140002365:	e8 4e 2e 00 00       	call   1400051b8 <_Znwy>
   14000236a:	44 88 68 10          	mov    %r13b,0x10(%rax)
   14000236e:	48 89 c1             	mov    %rax,%rcx
   140002371:	48 89 ea             	mov    %rbp,%rdx
   140002374:	e8 9f 2e 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002379:	48 8b 1b             	mov    (%rbx),%rbx
   14000237c:	48 83 47 10 01       	addq   $0x1,0x10(%rdi)
   140002381:	48 39 f3             	cmp    %rsi,%rbx
   140002384:	75 d2                	jne    140002358 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x198>
   140002386:	48 8b 6c 24 50       	mov    0x50(%rsp),%rbp
   14000238b:	48 39 dd             	cmp    %rbx,%rbp
   14000238e:	74 16                	je     1400023a6 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1e6>
   140002390:	48 89 e9             	mov    %rbp,%rcx
   140002393:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140002397:	ba 18 00 00 00       	mov    $0x18,%edx
   14000239c:	e8 1f 2e 00 00       	call   1400051c0 <_ZdlPvy>
   1400023a1:	48 39 f5             	cmp    %rsi,%rbp
   1400023a4:	75 ea                	jne    140002390 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1d0>
   1400023a6:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
   1400023ab:	4c 39 e3             	cmp    %r12,%rbx
   1400023ae:	74 15                	je     1400023c5 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   1400023b0:	48 89 d9             	mov    %rbx,%rcx
   1400023b3:	48 8b 1b             	mov    (%rbx),%rbx
   1400023b6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400023bb:	e8 00 2e 00 00       	call   1400051c0 <_ZdlPvy>
   1400023c0:	4c 39 e3             	cmp    %r12,%rbx
   1400023c3:	75 eb                	jne    1400023b0 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1f0>
   1400023c5:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
   1400023ca:	48 89 f8             	mov    %rdi,%rax
   1400023cd:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
   1400023d4:	5b                   	pop    %rbx
   1400023d5:	5e                   	pop    %rsi
   1400023d6:	5f                   	pop    %rdi
   1400023d7:	5d                   	pop    %rbp
   1400023d8:	41 5c                	pop    %r12
   1400023da:	41 5d                	pop    %r13
   1400023dc:	41 5e                	pop    %r14
   1400023de:	41 5f                	pop    %r15
   1400023e0:	c3                   	ret
   1400023e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023e8:	31 d2                	xor    %edx,%edx
   1400023ea:	48 8d 4c 24 50       	lea    0x50(%rsp),%rcx
   1400023ef:	e8 8c f2 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400023f4:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400023f9:	e8 ba 2d 00 00       	call   1400051b8 <_Znwy>
   1400023fe:	48 89 ea             	mov    %rbp,%rdx
   140002401:	48 89 c1             	mov    %rax,%rcx
   140002404:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   140002409:	88 41 10             	mov    %al,0x10(%rcx)
   14000240c:	e8 07 2e 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002411:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
   140002415:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   14000241a:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   14000241e:	e9 eb fd ff ff       	jmp    14000220e <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x4e>
   140002423:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002428:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   14000242d:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   140002434:	00 
   140002435:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002439:	0f 11 07             	movups %xmm0,(%rdi)
   14000243c:	eb 87                	jmp    1400023c5 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   14000243e:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   140002443:	48 89 c3             	mov    %rax,%rbx
   140002446:	48 39 f1             	cmp    %rsi,%rcx
   140002449:	74 32                	je     14000247d <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   14000244b:	48 8b 39             	mov    (%rcx),%rdi
   14000244e:	ba 18 00 00 00       	mov    $0x18,%edx
   140002453:	e8 68 2d 00 00       	call   1400051c0 <_ZdlPvy>
   140002458:	48 89 f9             	mov    %rdi,%rcx
   14000245b:	eb e9                	jmp    140002446 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x286>
   14000245d:	48 8b 0f             	mov    (%rdi),%rcx
   140002460:	48 89 c3             	mov    %rax,%rbx
   140002463:	48 39 cf             	cmp    %rcx,%rdi
   140002466:	74 31                	je     140002499 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2d9>
   140002468:	48 8b 29             	mov    (%rcx),%rbp
   14000246b:	ba 18 00 00 00       	mov    $0x18,%edx
   140002470:	e8 4b 2d 00 00       	call   1400051c0 <_ZdlPvy>
   140002475:	48 89 e9             	mov    %rbp,%rcx
   140002478:	eb e9                	jmp    140002463 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2a3>
   14000247a:	48 89 c3             	mov    %rax,%rbx
   14000247d:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140002482:	4c 39 e1             	cmp    %r12,%rcx
   140002485:	74 2e                	je     1400024b5 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2f5>
   140002487:	48 8b 31             	mov    (%rcx),%rsi
   14000248a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000248f:	e8 2c 2d 00 00       	call   1400051c0 <_ZdlPvy>
   140002494:	48 89 f1             	mov    %rsi,%rcx
   140002497:	eb e9                	jmp    140002482 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2c2>
   140002499:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   14000249e:	48 39 f1             	cmp    %rsi,%rcx
   1400024a1:	74 da                	je     14000247d <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   1400024a3:	48 8b 39             	mov    (%rcx),%rdi
   1400024a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400024ab:	e8 10 2d 00 00       	call   1400051c0 <_ZdlPvy>
   1400024b0:	48 89 f9             	mov    %rdi,%rcx
   1400024b3:	eb e9                	jmp    14000249e <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2de>
   1400024b5:	48 89 d9             	mov    %rbx,%rcx
   1400024b8:	e8 53 3e 00 00       	call   140006310 <_Unwind_Resume>
   1400024bd:	90                   	nop
   1400024be:	66 90                	xchg   %ax,%ax

00000001400024c0 <_ZN13NaturalBinary8optimizeEv>:
   1400024c0:	56                   	push   %rsi
   1400024c1:	53                   	push   %rbx
   1400024c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400024c6:	31 d2                	xor    %edx,%edx
   1400024c8:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400024cc:	48 89 ce             	mov    %rcx,%rsi
   1400024cf:	48 83 f8 01          	cmp    $0x1,%rax
   1400024d3:	77 37                	ja     14000250c <_ZN13NaturalBinary8optimizeEv+0x4c>
   1400024d5:	eb 3e                	jmp    140002515 <_ZN13NaturalBinary8optimizeEv+0x55>
   1400024d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400024de:	00 00 
   1400024e0:	48 83 e8 01          	sub    $0x1,%rax
   1400024e4:	48 89 d9             	mov    %rbx,%rcx
   1400024e7:	48 89 46 10          	mov    %rax,0x10(%rsi)
   1400024eb:	e8 20 2d 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400024f0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400024f5:	48 89 d9             	mov    %rbx,%rcx
   1400024f8:	e8 c3 2c 00 00       	call   1400051c0 <_ZdlPvy>
   1400024fd:	48 8b 46 10          	mov    0x10(%rsi),%rax
   140002501:	ba 01 00 00 00       	mov    $0x1,%edx
   140002506:	48 83 f8 01          	cmp    $0x1,%rax
   14000250a:	76 09                	jbe    140002515 <_ZN13NaturalBinary8optimizeEv+0x55>
   14000250c:	48 8b 1e             	mov    (%rsi),%rbx
   14000250f:	80 7b 10 00          	cmpb   $0x0,0x10(%rbx)
   140002513:	74 cb                	je     1400024e0 <_ZN13NaturalBinary8optimizeEv+0x20>
   140002515:	89 d0                	mov    %edx,%eax
   140002517:	48 83 c4 28          	add    $0x28,%rsp
   14000251b:	5b                   	pop    %rbx
   14000251c:	5e                   	pop    %rsi
   14000251d:	c3                   	ret
   14000251e:	66 90                	xchg   %ax,%ax

0000000140002520 <_ZN13NaturalBinaryltES_>:
   140002520:	57                   	push   %rdi
   140002521:	56                   	push   %rsi
   140002522:	53                   	push   %rbx
   140002523:	48 83 ec 20          	sub    $0x20,%rsp
   140002527:	48 8b 41 10          	mov    0x10(%rcx),%rax
   14000252b:	48 89 cb             	mov    %rcx,%rbx
   14000252e:	48 89 d6             	mov    %rdx,%rsi
   140002531:	48 83 f8 01          	cmp    $0x1,%rax
   140002535:	77 30                	ja     140002567 <_ZN13NaturalBinaryltES_+0x47>
   140002537:	eb 37                	jmp    140002570 <_ZN13NaturalBinaryltES_+0x50>
   140002539:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002540:	48 83 e8 01          	sub    $0x1,%rax
   140002544:	48 89 f9             	mov    %rdi,%rcx
   140002547:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000254b:	e8 c0 2c 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002550:	ba 18 00 00 00       	mov    $0x18,%edx
   140002555:	48 89 f9             	mov    %rdi,%rcx
   140002558:	e8 63 2c 00 00       	call   1400051c0 <_ZdlPvy>
   14000255d:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140002561:	48 83 f8 01          	cmp    $0x1,%rax
   140002565:	76 09                	jbe    140002570 <_ZN13NaturalBinaryltES_+0x50>
   140002567:	48 8b 3b             	mov    (%rbx),%rdi
   14000256a:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   14000256e:	74 d0                	je     140002540 <_ZN13NaturalBinaryltES_+0x20>
   140002570:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002574:	48 83 fa 01          	cmp    $0x1,%rdx
   140002578:	77 2d                	ja     1400025a7 <_ZN13NaturalBinaryltES_+0x87>
   14000257a:	eb 38                	jmp    1400025b4 <_ZN13NaturalBinaryltES_+0x94>
   14000257c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002580:	48 83 ea 01          	sub    $0x1,%rdx
   140002584:	48 89 f9             	mov    %rdi,%rcx
   140002587:	48 89 56 10          	mov    %rdx,0x10(%rsi)
   14000258b:	e8 80 2c 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002590:	ba 18 00 00 00       	mov    $0x18,%edx
   140002595:	48 89 f9             	mov    %rdi,%rcx
   140002598:	e8 23 2c 00 00       	call   1400051c0 <_ZdlPvy>
   14000259d:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   1400025a1:	48 83 fa 01          	cmp    $0x1,%rdx
   1400025a5:	76 09                	jbe    1400025b0 <_ZN13NaturalBinaryltES_+0x90>
   1400025a7:	48 8b 3e             	mov    (%rsi),%rdi
   1400025aa:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   1400025ae:	74 d0                	je     140002580 <_ZN13NaturalBinaryltES_+0x60>
   1400025b0:	48 8b 43 10          	mov    0x10(%rbx),%rax
   1400025b4:	48 39 d0             	cmp    %rdx,%rax
   1400025b7:	74 0f                	je     1400025c8 <_ZN13NaturalBinaryltES_+0xa8>
   1400025b9:	0f 92 c0             	setb   %al
   1400025bc:	48 83 c4 20          	add    $0x20,%rsp
   1400025c0:	5b                   	pop    %rbx
   1400025c1:	5e                   	pop    %rsi
   1400025c2:	5f                   	pop    %rdi
   1400025c3:	c3                   	ret
   1400025c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400025c8:	48 8b 0b             	mov    (%rbx),%rcx
   1400025cb:	eb 1b                	jmp    1400025e8 <_ZN13NaturalBinaryltES_+0xc8>
   1400025cd:	0f 1f 00             	nopl   (%rax)
   1400025d0:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   1400025d4:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   1400025d8:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400025dc:	0f b6 56 10          	movzbl 0x10(%rsi),%edx
   1400025e0:	38 d0                	cmp    %dl,%al
   1400025e2:	72 1c                	jb     140002600 <_ZN13NaturalBinaryltES_+0xe0>
   1400025e4:	38 c2                	cmp    %al,%dl
   1400025e6:	72 05                	jb     1400025ed <_ZN13NaturalBinaryltES_+0xcd>
   1400025e8:	48 39 cb             	cmp    %rcx,%rbx
   1400025eb:	75 e3                	jne    1400025d0 <_ZN13NaturalBinaryltES_+0xb0>
   1400025ed:	31 c0                	xor    %eax,%eax
   1400025ef:	48 83 c4 20          	add    $0x20,%rsp
   1400025f3:	5b                   	pop    %rbx
   1400025f4:	5e                   	pop    %rsi
   1400025f5:	5f                   	pop    %rdi
   1400025f6:	c3                   	ret
   1400025f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400025fe:	00 00 
   140002600:	b8 01 00 00 00       	mov    $0x1,%eax
   140002605:	48 83 c4 20          	add    $0x20,%rsp
   140002609:	5b                   	pop    %rbx
   14000260a:	5e                   	pop    %rsi
   14000260b:	5f                   	pop    %rdi
   14000260c:	c3                   	ret
   14000260d:	90                   	nop
   14000260e:	66 90                	xchg   %ax,%ax

0000000140002610 <_ZN13NaturalBinarygtES_>:
   140002610:	57                   	push   %rdi
   140002611:	56                   	push   %rsi
   140002612:	53                   	push   %rbx
   140002613:	48 83 ec 20          	sub    $0x20,%rsp
   140002617:	48 8b 41 10          	mov    0x10(%rcx),%rax
   14000261b:	48 89 cb             	mov    %rcx,%rbx
   14000261e:	48 89 d6             	mov    %rdx,%rsi
   140002621:	48 83 f8 01          	cmp    $0x1,%rax
   140002625:	77 30                	ja     140002657 <_ZN13NaturalBinarygtES_+0x47>
   140002627:	eb 37                	jmp    140002660 <_ZN13NaturalBinarygtES_+0x50>
   140002629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002630:	48 83 e8 01          	sub    $0x1,%rax
   140002634:	48 89 f9             	mov    %rdi,%rcx
   140002637:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000263b:	e8 d0 2b 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002640:	ba 18 00 00 00       	mov    $0x18,%edx
   140002645:	48 89 f9             	mov    %rdi,%rcx
   140002648:	e8 73 2b 00 00       	call   1400051c0 <_ZdlPvy>
   14000264d:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140002651:	48 83 f8 01          	cmp    $0x1,%rax
   140002655:	76 09                	jbe    140002660 <_ZN13NaturalBinarygtES_+0x50>
   140002657:	48 8b 3b             	mov    (%rbx),%rdi
   14000265a:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   14000265e:	74 d0                	je     140002630 <_ZN13NaturalBinarygtES_+0x20>
   140002660:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002664:	48 83 fa 01          	cmp    $0x1,%rdx
   140002668:	77 2d                	ja     140002697 <_ZN13NaturalBinarygtES_+0x87>
   14000266a:	eb 38                	jmp    1400026a4 <_ZN13NaturalBinarygtES_+0x94>
   14000266c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002670:	48 83 ea 01          	sub    $0x1,%rdx
   140002674:	48 89 f9             	mov    %rdi,%rcx
   140002677:	48 89 56 10          	mov    %rdx,0x10(%rsi)
   14000267b:	e8 90 2b 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002680:	ba 18 00 00 00       	mov    $0x18,%edx
   140002685:	48 89 f9             	mov    %rdi,%rcx
   140002688:	e8 33 2b 00 00       	call   1400051c0 <_ZdlPvy>
   14000268d:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002691:	48 83 fa 01          	cmp    $0x1,%rdx
   140002695:	76 09                	jbe    1400026a0 <_ZN13NaturalBinarygtES_+0x90>
   140002697:	48 8b 3e             	mov    (%rsi),%rdi
   14000269a:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   14000269e:	74 d0                	je     140002670 <_ZN13NaturalBinarygtES_+0x60>
   1400026a0:	48 8b 43 10          	mov    0x10(%rbx),%rax
   1400026a4:	48 39 d0             	cmp    %rdx,%rax
   1400026a7:	74 17                	je     1400026c0 <_ZN13NaturalBinarygtES_+0xb0>
   1400026a9:	48 39 c2             	cmp    %rax,%rdx
   1400026ac:	0f 92 c0             	setb   %al
   1400026af:	48 83 c4 20          	add    $0x20,%rsp
   1400026b3:	5b                   	pop    %rbx
   1400026b4:	5e                   	pop    %rsi
   1400026b5:	5f                   	pop    %rdi
   1400026b6:	c3                   	ret
   1400026b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400026be:	00 00 
   1400026c0:	48 8b 0b             	mov    (%rbx),%rcx
   1400026c3:	eb 1b                	jmp    1400026e0 <_ZN13NaturalBinarygtES_+0xd0>
   1400026c5:	0f 1f 00             	nopl   (%rax)
   1400026c8:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   1400026cc:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   1400026d0:	0f b6 53 10          	movzbl 0x10(%rbx),%edx
   1400026d4:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   1400026d8:	38 d0                	cmp    %dl,%al
   1400026da:	72 14                	jb     1400026f0 <_ZN13NaturalBinarygtES_+0xe0>
   1400026dc:	38 c2                	cmp    %al,%dl
   1400026de:	72 05                	jb     1400026e5 <_ZN13NaturalBinarygtES_+0xd5>
   1400026e0:	48 39 cb             	cmp    %rcx,%rbx
   1400026e3:	75 e3                	jne    1400026c8 <_ZN13NaturalBinarygtES_+0xb8>
   1400026e5:	31 c0                	xor    %eax,%eax
   1400026e7:	48 83 c4 20          	add    $0x20,%rsp
   1400026eb:	5b                   	pop    %rbx
   1400026ec:	5e                   	pop    %rsi
   1400026ed:	5f                   	pop    %rdi
   1400026ee:	c3                   	ret
   1400026ef:	90                   	nop
   1400026f0:	b8 01 00 00 00       	mov    $0x1,%eax
   1400026f5:	48 83 c4 20          	add    $0x20,%rsp
   1400026f9:	5b                   	pop    %rbx
   1400026fa:	5e                   	pop    %rsi
   1400026fb:	5f                   	pop    %rdi
   1400026fc:	c3                   	ret
   1400026fd:	90                   	nop
   1400026fe:	66 90                	xchg   %ax,%ax

0000000140002700 <_ZN13NaturalBinaryeqES_>:
   140002700:	57                   	push   %rdi
   140002701:	56                   	push   %rsi
   140002702:	53                   	push   %rbx
   140002703:	48 83 ec 20          	sub    $0x20,%rsp
   140002707:	48 8b 41 10          	mov    0x10(%rcx),%rax
   14000270b:	48 89 cb             	mov    %rcx,%rbx
   14000270e:	48 89 d6             	mov    %rdx,%rsi
   140002711:	48 83 f8 01          	cmp    $0x1,%rax
   140002715:	77 30                	ja     140002747 <_ZN13NaturalBinaryeqES_+0x47>
   140002717:	eb 6d                	jmp    140002786 <_ZN13NaturalBinaryeqES_+0x86>
   140002719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002720:	48 83 e8 01          	sub    $0x1,%rax
   140002724:	48 89 f9             	mov    %rdi,%rcx
   140002727:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000272b:	e8 e0 2a 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002730:	ba 18 00 00 00       	mov    $0x18,%edx
   140002735:	48 89 f9             	mov    %rdi,%rcx
   140002738:	e8 83 2a 00 00       	call   1400051c0 <_ZdlPvy>
   14000273d:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140002741:	48 83 f8 01          	cmp    $0x1,%rax
   140002745:	76 3f                	jbe    140002786 <_ZN13NaturalBinaryeqES_+0x86>
   140002747:	48 8b 3b             	mov    (%rbx),%rdi
   14000274a:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   14000274e:	74 d0                	je     140002720 <_ZN13NaturalBinaryeqES_+0x20>
   140002750:	48 8b 46 10          	mov    0x10(%rsi),%rax
   140002754:	48 83 f8 01          	cmp    $0x1,%rax
   140002758:	76 36                	jbe    140002790 <_ZN13NaturalBinaryeqES_+0x90>
   14000275a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002760:	48 8b 3e             	mov    (%rsi),%rdi
   140002763:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   140002767:	75 27                	jne    140002790 <_ZN13NaturalBinaryeqES_+0x90>
   140002769:	48 83 e8 01          	sub    $0x1,%rax
   14000276d:	48 89 f9             	mov    %rdi,%rcx
   140002770:	48 89 46 10          	mov    %rax,0x10(%rsi)
   140002774:	e8 97 2a 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002779:	ba 18 00 00 00       	mov    $0x18,%edx
   14000277e:	48 89 f9             	mov    %rdi,%rcx
   140002781:	e8 3a 2a 00 00       	call   1400051c0 <_ZdlPvy>
   140002786:	48 8b 46 10          	mov    0x10(%rsi),%rax
   14000278a:	48 83 f8 01          	cmp    $0x1,%rax
   14000278e:	77 d0                	ja     140002760 <_ZN13NaturalBinaryeqES_+0x60>
   140002790:	31 d2                	xor    %edx,%edx
   140002792:	48 39 43 10          	cmp    %rax,0x10(%rbx)
   140002796:	75 23                	jne    1400027bb <_ZN13NaturalBinaryeqES_+0xbb>
   140002798:	48 8b 03             	mov    (%rbx),%rax
   14000279b:	eb 14                	jmp    1400027b1 <_ZN13NaturalBinaryeqES_+0xb1>
   14000279d:	0f 1f 00             	nopl   (%rax)
   1400027a0:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   1400027a4:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   1400027a8:	0f b6 56 10          	movzbl 0x10(%rsi),%edx
   1400027ac:	38 53 10             	cmp    %dl,0x10(%rbx)
   1400027af:	75 17                	jne    1400027c8 <_ZN13NaturalBinaryeqES_+0xc8>
   1400027b1:	48 39 c3             	cmp    %rax,%rbx
   1400027b4:	75 ea                	jne    1400027a0 <_ZN13NaturalBinaryeqES_+0xa0>
   1400027b6:	ba 01 00 00 00       	mov    $0x1,%edx
   1400027bb:	89 d0                	mov    %edx,%eax
   1400027bd:	48 83 c4 20          	add    $0x20,%rsp
   1400027c1:	5b                   	pop    %rbx
   1400027c2:	5e                   	pop    %rsi
   1400027c3:	5f                   	pop    %rdi
   1400027c4:	c3                   	ret
   1400027c5:	0f 1f 00             	nopl   (%rax)
   1400027c8:	31 d2                	xor    %edx,%edx
   1400027ca:	89 d0                	mov    %edx,%eax
   1400027cc:	48 83 c4 20          	add    $0x20,%rsp
   1400027d0:	5b                   	pop    %rbx
   1400027d1:	5e                   	pop    %rsi
   1400027d2:	5f                   	pop    %rdi
   1400027d3:	c3                   	ret
   1400027d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400027db:	00 00 00 00 
   1400027df:	90                   	nop

00000001400027e0 <_ZN13NaturalBinaryleES_>:
   1400027e0:	41 55                	push   %r13
   1400027e2:	41 54                	push   %r12
   1400027e4:	55                   	push   %rbp
   1400027e5:	57                   	push   %rdi
   1400027e6:	56                   	push   %rsi
   1400027e7:	53                   	push   %rbx
   1400027e8:	48 83 ec 68          	sub    $0x68,%rsp
   1400027ec:	48 8b 1a             	mov    (%rdx),%rbx
   1400027ef:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   1400027f4:	48 89 cd             	mov    %rcx,%rbp
   1400027f7:	48 89 d7             	mov    %rdx,%rdi
   1400027fa:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140002801:	00 00 
   140002803:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140002808:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000280c:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140002811:	48 39 da             	cmp    %rbx,%rdx
   140002814:	74 34                	je     14000284a <_ZN13NaturalBinaryleES_+0x6a>
   140002816:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000281d:	00 00 00 
   140002820:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002825:	e8 8e 29 00 00       	call   1400051b8 <_Znwy>
   14000282a:	48 89 c1             	mov    %rax,%rcx
   14000282d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002831:	48 89 f2             	mov    %rsi,%rdx
   140002834:	88 41 10             	mov    %al,0x10(%rcx)
   140002837:	e8 dc 29 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000283c:	48 8b 1b             	mov    (%rbx),%rbx
   14000283f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140002845:	48 39 df             	cmp    %rbx,%rdi
   140002848:	75 d6                	jne    140002820 <_ZN13NaturalBinaryleES_+0x40>
   14000284a:	48 89 f2             	mov    %rsi,%rdx
   14000284d:	48 89 e9             	mov    %rbp,%rcx
   140002850:	e8 ab fe ff ff       	call   140002700 <_ZN13NaturalBinaryeqES_>
   140002855:	41 89 c5             	mov    %eax,%r13d
   140002858:	84 c0                	test   %al,%al
   14000285a:	74 3c                	je     140002898 <_ZN13NaturalBinaryleES_+0xb8>
   14000285c:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140002861:	48 39 f3             	cmp    %rsi,%rbx
   140002864:	74 1f                	je     140002885 <_ZN13NaturalBinaryleES_+0xa5>
   140002866:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000286d:	00 00 00 
   140002870:	48 89 d9             	mov    %rbx,%rcx
   140002873:	48 8b 1b             	mov    (%rbx),%rbx
   140002876:	ba 18 00 00 00       	mov    $0x18,%edx
   14000287b:	e8 40 29 00 00       	call   1400051c0 <_ZdlPvy>
   140002880:	48 39 f3             	cmp    %rsi,%rbx
   140002883:	75 eb                	jne    140002870 <_ZN13NaturalBinaryleES_+0x90>
   140002885:	44 89 e8             	mov    %r13d,%eax
   140002888:	48 83 c4 68          	add    $0x68,%rsp
   14000288c:	5b                   	pop    %rbx
   14000288d:	5e                   	pop    %rsi
   14000288e:	5f                   	pop    %rdi
   14000288f:	5d                   	pop    %rbp
   140002890:	41 5c                	pop    %r12
   140002892:	41 5d                	pop    %r13
   140002894:	c3                   	ret
   140002895:	0f 1f 00             	nopl   (%rax)
   140002898:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   14000289d:	48 8b 1f             	mov    (%rdi),%rbx
   1400028a0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400028a7:	00 00 
   1400028a9:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400028ae:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400028b2:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   1400028b7:	48 39 df             	cmp    %rbx,%rdi
   1400028ba:	74 2e                	je     1400028ea <_ZN13NaturalBinaryleES_+0x10a>
   1400028bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400028c0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400028c5:	e8 ee 28 00 00       	call   1400051b8 <_Znwy>
   1400028ca:	48 89 c1             	mov    %rax,%rcx
   1400028cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400028d1:	4c 89 e2             	mov    %r12,%rdx
   1400028d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400028d7:	e8 3c 29 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400028dc:	48 8b 1b             	mov    (%rbx),%rbx
   1400028df:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400028e5:	48 39 df             	cmp    %rbx,%rdi
   1400028e8:	75 d6                	jne    1400028c0 <_ZN13NaturalBinaryleES_+0xe0>
   1400028ea:	4c 89 e2             	mov    %r12,%rdx
   1400028ed:	48 89 e9             	mov    %rbp,%rcx
   1400028f0:	e8 2b fc ff ff       	call   140002520 <_ZN13NaturalBinaryltES_>
   1400028f5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400028fa:	41 89 c5             	mov    %eax,%r13d
   1400028fd:	4c 39 e3             	cmp    %r12,%rbx
   140002900:	0f 84 56 ff ff ff    	je     14000285c <_ZN13NaturalBinaryleES_+0x7c>
   140002906:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000290d:	00 00 00 
   140002910:	48 89 d9             	mov    %rbx,%rcx
   140002913:	48 8b 1b             	mov    (%rbx),%rbx
   140002916:	ba 18 00 00 00       	mov    $0x18,%edx
   14000291b:	e8 a0 28 00 00       	call   1400051c0 <_ZdlPvy>
   140002920:	4c 39 e3             	cmp    %r12,%rbx
   140002923:	75 eb                	jne    140002910 <_ZN13NaturalBinaryleES_+0x130>
   140002925:	e9 32 ff ff ff       	jmp    14000285c <_ZN13NaturalBinaryleES_+0x7c>
   14000292a:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000292f:	48 89 c3             	mov    %rax,%rbx
   140002932:	4c 39 e1             	cmp    %r12,%rcx
   140002935:	74 31                	je     140002968 <_ZN13NaturalBinaryleES_+0x188>
   140002937:	48 8b 39             	mov    (%rcx),%rdi
   14000293a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000293f:	e8 7c 28 00 00       	call   1400051c0 <_ZdlPvy>
   140002944:	48 89 f9             	mov    %rdi,%rcx
   140002947:	eb e9                	jmp    140002932 <_ZN13NaturalBinaryleES_+0x152>
   140002949:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000294e:	48 89 c3             	mov    %rax,%rbx
   140002951:	48 39 f1             	cmp    %rsi,%rcx
   140002954:	74 2e                	je     140002984 <_ZN13NaturalBinaryleES_+0x1a4>
   140002956:	48 8b 39             	mov    (%rcx),%rdi
   140002959:	ba 18 00 00 00       	mov    $0x18,%edx
   14000295e:	e8 5d 28 00 00       	call   1400051c0 <_ZdlPvy>
   140002963:	48 89 f9             	mov    %rdi,%rcx
   140002966:	eb e9                	jmp    140002951 <_ZN13NaturalBinaryleES_+0x171>
   140002968:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000296d:	48 39 f1             	cmp    %rsi,%rcx
   140002970:	74 12                	je     140002984 <_ZN13NaturalBinaryleES_+0x1a4>
   140002972:	48 8b 39             	mov    (%rcx),%rdi
   140002975:	ba 18 00 00 00       	mov    $0x18,%edx
   14000297a:	e8 41 28 00 00       	call   1400051c0 <_ZdlPvy>
   14000297f:	48 89 f9             	mov    %rdi,%rcx
   140002982:	eb e9                	jmp    14000296d <_ZN13NaturalBinaryleES_+0x18d>
   140002984:	48 89 d9             	mov    %rbx,%rcx
   140002987:	e8 84 39 00 00       	call   140006310 <_Unwind_Resume>
   14000298c:	90                   	nop
   14000298d:	90                   	nop
   14000298e:	66 90                	xchg   %ax,%ax

0000000140002990 <_ZN13NaturalBinarygeES_>:
   140002990:	41 55                	push   %r13
   140002992:	41 54                	push   %r12
   140002994:	55                   	push   %rbp
   140002995:	57                   	push   %rdi
   140002996:	56                   	push   %rsi
   140002997:	53                   	push   %rbx
   140002998:	48 83 ec 68          	sub    $0x68,%rsp
   14000299c:	48 8b 1a             	mov    (%rdx),%rbx
   14000299f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   1400029a4:	48 89 cd             	mov    %rcx,%rbp
   1400029a7:	48 89 d7             	mov    %rdx,%rdi
   1400029aa:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400029b1:	00 00 
   1400029b3:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400029b8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400029bc:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400029c1:	48 39 da             	cmp    %rbx,%rdx
   1400029c4:	74 34                	je     1400029fa <_ZN13NaturalBinarygeES_+0x6a>
   1400029c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400029cd:	00 00 00 
   1400029d0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400029d5:	e8 de 27 00 00       	call   1400051b8 <_Znwy>
   1400029da:	48 89 c1             	mov    %rax,%rcx
   1400029dd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400029e1:	48 89 f2             	mov    %rsi,%rdx
   1400029e4:	88 41 10             	mov    %al,0x10(%rcx)
   1400029e7:	e8 2c 28 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400029ec:	48 8b 1b             	mov    (%rbx),%rbx
   1400029ef:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400029f5:	48 39 df             	cmp    %rbx,%rdi
   1400029f8:	75 d6                	jne    1400029d0 <_ZN13NaturalBinarygeES_+0x40>
   1400029fa:	48 89 f2             	mov    %rsi,%rdx
   1400029fd:	48 89 e9             	mov    %rbp,%rcx
   140002a00:	e8 fb fc ff ff       	call   140002700 <_ZN13NaturalBinaryeqES_>
   140002a05:	41 89 c5             	mov    %eax,%r13d
   140002a08:	84 c0                	test   %al,%al
   140002a0a:	74 3c                	je     140002a48 <_ZN13NaturalBinarygeES_+0xb8>
   140002a0c:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140002a11:	48 39 f3             	cmp    %rsi,%rbx
   140002a14:	74 1f                	je     140002a35 <_ZN13NaturalBinarygeES_+0xa5>
   140002a16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002a1d:	00 00 00 
   140002a20:	48 89 d9             	mov    %rbx,%rcx
   140002a23:	48 8b 1b             	mov    (%rbx),%rbx
   140002a26:	ba 18 00 00 00       	mov    $0x18,%edx
   140002a2b:	e8 90 27 00 00       	call   1400051c0 <_ZdlPvy>
   140002a30:	48 39 f3             	cmp    %rsi,%rbx
   140002a33:	75 eb                	jne    140002a20 <_ZN13NaturalBinarygeES_+0x90>
   140002a35:	44 89 e8             	mov    %r13d,%eax
   140002a38:	48 83 c4 68          	add    $0x68,%rsp
   140002a3c:	5b                   	pop    %rbx
   140002a3d:	5e                   	pop    %rsi
   140002a3e:	5f                   	pop    %rdi
   140002a3f:	5d                   	pop    %rbp
   140002a40:	41 5c                	pop    %r12
   140002a42:	41 5d                	pop    %r13
   140002a44:	c3                   	ret
   140002a45:	0f 1f 00             	nopl   (%rax)
   140002a48:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140002a4d:	48 8b 1f             	mov    (%rdi),%rbx
   140002a50:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140002a57:	00 00 
   140002a59:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140002a5e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002a62:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140002a67:	48 39 df             	cmp    %rbx,%rdi
   140002a6a:	74 2e                	je     140002a9a <_ZN13NaturalBinarygeES_+0x10a>
   140002a6c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002a70:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002a75:	e8 3e 27 00 00       	call   1400051b8 <_Znwy>
   140002a7a:	48 89 c1             	mov    %rax,%rcx
   140002a7d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002a81:	4c 89 e2             	mov    %r12,%rdx
   140002a84:	88 41 10             	mov    %al,0x10(%rcx)
   140002a87:	e8 8c 27 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002a8c:	48 8b 1b             	mov    (%rbx),%rbx
   140002a8f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140002a95:	48 39 df             	cmp    %rbx,%rdi
   140002a98:	75 d6                	jne    140002a70 <_ZN13NaturalBinarygeES_+0xe0>
   140002a9a:	4c 89 e2             	mov    %r12,%rdx
   140002a9d:	48 89 e9             	mov    %rbp,%rcx
   140002aa0:	e8 6b fb ff ff       	call   140002610 <_ZN13NaturalBinarygtES_>
   140002aa5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140002aaa:	41 89 c5             	mov    %eax,%r13d
   140002aad:	4c 39 e3             	cmp    %r12,%rbx
   140002ab0:	0f 84 56 ff ff ff    	je     140002a0c <_ZN13NaturalBinarygeES_+0x7c>
   140002ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002abd:	00 00 00 
   140002ac0:	48 89 d9             	mov    %rbx,%rcx
   140002ac3:	48 8b 1b             	mov    (%rbx),%rbx
   140002ac6:	ba 18 00 00 00       	mov    $0x18,%edx
   140002acb:	e8 f0 26 00 00       	call   1400051c0 <_ZdlPvy>
   140002ad0:	4c 39 e3             	cmp    %r12,%rbx
   140002ad3:	75 eb                	jne    140002ac0 <_ZN13NaturalBinarygeES_+0x130>
   140002ad5:	e9 32 ff ff ff       	jmp    140002a0c <_ZN13NaturalBinarygeES_+0x7c>
   140002ada:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140002adf:	48 89 c3             	mov    %rax,%rbx
   140002ae2:	4c 39 e1             	cmp    %r12,%rcx
   140002ae5:	74 31                	je     140002b18 <_ZN13NaturalBinarygeES_+0x188>
   140002ae7:	48 8b 39             	mov    (%rcx),%rdi
   140002aea:	ba 18 00 00 00       	mov    $0x18,%edx
   140002aef:	e8 cc 26 00 00       	call   1400051c0 <_ZdlPvy>
   140002af4:	48 89 f9             	mov    %rdi,%rcx
   140002af7:	eb e9                	jmp    140002ae2 <_ZN13NaturalBinarygeES_+0x152>
   140002af9:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002afe:	48 89 c3             	mov    %rax,%rbx
   140002b01:	48 39 f1             	cmp    %rsi,%rcx
   140002b04:	74 2e                	je     140002b34 <_ZN13NaturalBinarygeES_+0x1a4>
   140002b06:	48 8b 39             	mov    (%rcx),%rdi
   140002b09:	ba 18 00 00 00       	mov    $0x18,%edx
   140002b0e:	e8 ad 26 00 00       	call   1400051c0 <_ZdlPvy>
   140002b13:	48 89 f9             	mov    %rdi,%rcx
   140002b16:	eb e9                	jmp    140002b01 <_ZN13NaturalBinarygeES_+0x171>
   140002b18:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002b1d:	48 39 f1             	cmp    %rsi,%rcx
   140002b20:	74 12                	je     140002b34 <_ZN13NaturalBinarygeES_+0x1a4>
   140002b22:	48 8b 39             	mov    (%rcx),%rdi
   140002b25:	ba 18 00 00 00       	mov    $0x18,%edx
   140002b2a:	e8 91 26 00 00       	call   1400051c0 <_ZdlPvy>
   140002b2f:	48 89 f9             	mov    %rdi,%rcx
   140002b32:	eb e9                	jmp    140002b1d <_ZN13NaturalBinarygeES_+0x18d>
   140002b34:	48 89 d9             	mov    %rbx,%rcx
   140002b37:	e8 d4 37 00 00       	call   140006310 <_Unwind_Resume>
   140002b3c:	90                   	nop
   140002b3d:	90                   	nop
   140002b3e:	66 90                	xchg   %ax,%ax

0000000140002b40 <_ZN13NaturalBinary8toStringB5cxx11Ev>:
   140002b40:	41 57                	push   %r15
   140002b42:	41 56                	push   %r14
   140002b44:	41 55                	push   %r13
   140002b46:	41 54                	push   %r12
   140002b48:	55                   	push   %rbp
   140002b49:	57                   	push   %rdi
   140002b4a:	56                   	push   %rsi
   140002b4b:	53                   	push   %rbx
   140002b4c:	48 81 ec 78 02 00 00 	sub    $0x278,%rsp
   140002b53:	0f 11 b4 24 50 02 00 	movups %xmm6,0x250(%rsp)
   140002b5a:	00 
   140002b5b:	0f 11 bc 24 60 02 00 	movups %xmm7,0x260(%rsp)
   140002b62:	00 
   140002b63:	48 8b 05 06 69 00 00 	mov    0x6906(%rip),%rax        # 140009470 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002b6a:	48 8b 1d ef 68 00 00 	mov    0x68ef(%rip),%rbx        # 140009460 <__fu8__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE>
   140002b71:	48 83 c0 40          	add    $0x40,%rax
   140002b75:	66 48 0f 6e f0       	movq   %rax,%xmm6
   140002b7a:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140002b7e:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140002b83:	48 8b 05 f6 68 00 00 	mov    0x68f6(%rip),%rax        # 140009480 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140002b8a:	66 0f 6f fe          	movdqa %xmm6,%xmm7
   140002b8e:	66 0f 6c f9          	punpcklqdq %xmm1,%xmm7
   140002b92:	48 83 c0 10          	add    $0x10,%rax
   140002b96:	c6 41 10 00          	movb   $0x0,0x10(%rcx)
   140002b9a:	48 89 cf             	mov    %rcx,%rdi
   140002b9d:	49 89 d5             	mov    %rdx,%r13
   140002ba0:	66 48 0f 6e d0       	movq   %rax,%xmm2
   140002ba5:	48 8d 41 10          	lea    0x10(%rcx),%rax
   140002ba9:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   140002bb0:	00 
   140002bb1:	4c 8d bc 24 40 01 00 	lea    0x140(%rsp),%r15
   140002bb8:	00 
   140002bb9:	48 89 01             	mov    %rax,(%rcx)
   140002bbc:	4c 89 f9             	mov    %r15,%rcx
   140002bbf:	66 0f 6c f2          	punpcklqdq %xmm2,%xmm6
   140002bc3:	4c 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%r14
   140002bca:	00 
   140002bcb:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
   140002bd2:	00 
   140002bd3:	4c 89 b4 24 98 00 00 	mov    %r14,0x98(%rsp)
   140002bda:	00 
   140002bdb:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
   140002be2:	00 
   140002be3:	e8 10 26 00 00       	call   1400051f8 <_ZNSt8ios_baseC2Ev>
   140002be8:	48 8b 35 61 68 00 00 	mov    0x6861(%rip),%rsi        # 140009450 <__fu5__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002bef:	31 d2                	xor    %edx,%edx
   140002bf1:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002bf5:	48 8b 05 94 68 00 00 	mov    0x6894(%rip),%rax        # 140009490 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   140002bfc:	66 89 94 24 20 02 00 	mov    %dx,0x220(%rsp)
   140002c03:	00 
   140002c04:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   140002c08:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
   140002c0c:	0f 11 84 24 28 02 00 	movups %xmm0,0x228(%rsp)
   140002c13:	00 
   140002c14:	48 83 c0 10          	add    $0x10,%rax
   140002c18:	0f 11 84 24 38 02 00 	movups %xmm0,0x238(%rsp)
   140002c1f:	00 
   140002c20:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140002c27:	00 
   140002c28:	48 8b 42 e8          	mov    -0x18(%rdx),%rax
   140002c2c:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
   140002c33:	00 
   140002c34:	48 c7 84 24 18 02 00 	movq   $0x0,0x218(%rsp)
   140002c3b:	00 00 00 00 00 
   140002c40:	48 89 8c 04 c0 00 00 	mov    %rcx,0xc0(%rsp,%rax,1)
   140002c47:	00 
   140002c48:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   140002c4f:	00 00 00 00 00 
   140002c54:	4c 03 72 e8          	add    -0x18(%rdx),%r14
   140002c58:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
   140002c5d:	31 d2                	xor    %edx,%edx
   140002c5f:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
   140002c64:	4c 89 f1             	mov    %r14,%rcx
   140002c67:	e8 7c 25 00 00       	call   1400051e8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002c6c:	48 8b 46 20          	mov    0x20(%rsi),%rax
   140002c70:	48 8d ac 24 d0 00 00 	lea    0xd0(%rsp),%rbp
   140002c77:	00 
   140002c78:	31 d2                	xor    %edx,%edx
   140002c7a:	48 8b 48 e8          	mov    -0x18(%rax),%rcx
   140002c7e:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   140002c85:	00 
   140002c86:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   140002c8b:	48 8b 46 28          	mov    0x28(%rsi),%rax
   140002c8f:	48 01 e9             	add    %rbp,%rcx
   140002c92:	48 89 01             	mov    %rax,(%rcx)
   140002c95:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   140002c9a:	e8 49 25 00 00       	call   1400051e8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002c9f:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140002ca3:	48 8b 76 30          	mov    0x30(%rsi),%rsi
   140002ca7:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002cab:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140002cb0:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140002cb4:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
   140002cb9:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140002cc0:	00 
   140002cc1:	48 8b 05 a8 67 00 00 	mov    0x67a8(%rip),%rax        # 140009470 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002cc8:	0f 11 b4 24 d0 00 00 	movups %xmm6,0xd0(%rsp)
   140002ccf:	00 
   140002cd0:	48 83 c0 18          	add    $0x18,%rax
   140002cd4:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   140002cdb:	00 
   140002cdc:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140002ce3:	00 
   140002ce4:	48 8b 05 85 67 00 00 	mov    0x6785(%rip),%rax        # 140009470 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002ceb:	0f 11 84 24 f0 00 00 	movups %xmm0,0xf0(%rsp)
   140002cf2:	00 
   140002cf3:	48 83 c0 68          	add    $0x68,%rax
   140002cf7:	0f 11 84 24 00 01 00 	movups %xmm0,0x100(%rsp)
   140002cfe:	00 
   140002cff:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140002d06:	00 
   140002d07:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
   140002d0e:	00 
   140002d0f:	48 89 c1             	mov    %rax,%rcx
   140002d12:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
   140002d17:	e8 44 25 00 00       	call   140005260 <_ZNSt6localeC1Ev>
   140002d1c:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140002d20:	4c 89 f9             	mov    %r15,%rcx
   140002d23:	c7 84 24 18 01 00 00 	movl   $0x18,0x118(%rsp)
   140002d2a:	18 00 00 00 
   140002d2e:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140002d35:	00 
   140002d36:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
   140002d3d:	00 
   140002d3e:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   140002d45:	00 
   140002d46:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
   140002d4d:	00 
   140002d4e:	48 8d 84 24 d8 00 00 	lea    0xd8(%rsp),%rax
   140002d55:	00 
   140002d56:	48 89 c2             	mov    %rax,%rdx
   140002d59:	c6 84 24 30 01 00 00 	movb   $0x0,0x130(%rsp)
   140002d60:	00 
   140002d61:	48 c7 84 24 28 01 00 	movq   $0x0,0x128(%rsp)
   140002d68:	00 00 00 00 00 
   140002d6d:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002d72:	e8 71 24 00 00       	call   1400051e8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002d77:	48 8d 05 42 37 00 00 	lea    0x3742(%rip),%rax        # 1400064c0 <_ZNKSt5ctypeIcE8do_widenEc>
   140002d7e:	4c 89 ee             	mov    %r13,%rsi
   140002d81:	4c 8d a4 24 a0 00 00 	lea    0xa0(%rsp),%r12
   140002d88:	00 
   140002d89:	49 be ff ff ff ff ff 	movabs $0x3fffffffffffffff,%r14
   140002d90:	ff ff 3f 
   140002d93:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
   140002d98:	4d 3b 6d 00          	cmp    0x0(%r13),%r13
   140002d9c:	0f 84 ce 04 00 00    	je     140003270 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x730>
   140002da2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002da8:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   140002daf:	00 
   140002db0:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   140002db4:	48 c7 84 14 e0 00 00 	movq   $0x2,0xe0(%rsp,%rdx,1)
   140002dbb:	00 02 00 00 00 
   140002dc0:	48 8b 58 e8          	mov    -0x18(%rax),%rbx
   140002dc4:	48 01 eb             	add    %rbp,%rbx
   140002dc7:	80 bb e1 00 00 00 00 	cmpb   $0x0,0xe1(%rbx)
   140002dce:	48 89 da             	mov    %rbx,%rdx
   140002dd1:	0f 84 b9 03 00 00    	je     140003190 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x650>
   140002dd7:	c6 83 e0 00 00 00 30 	movb   $0x30,0xe0(%rbx)
   140002dde:	8b 42 18             	mov    0x18(%rdx),%eax
   140002de1:	48 89 e9             	mov    %rbp,%rcx
   140002de4:	83 e0 b5             	and    $0xffffffb5,%eax
   140002de7:	83 c8 08             	or     $0x8,%eax
   140002dea:	89 42 18             	mov    %eax,0x18(%rdx)
   140002ded:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140002df1:	0f b6 50 10          	movzbl 0x10(%rax),%edx
   140002df5:	e8 8e 24 00 00       	call   140005288 <_ZNSolsEi>
   140002dfa:	48 8b 94 24 00 01 00 	mov    0x100(%rsp),%rdx
   140002e01:	00 
   140002e02:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   140002e09:	00 
   140002e0a:	4d 89 e7             	mov    %r12,%r15
   140002e0d:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002e14:	00 00 00 00 00 
   140002e19:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140002e20:	00 
   140002e21:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140002e28:	00 
   140002e29:	48 85 d2             	test   %rdx,%rdx
   140002e2c:	0f 84 ae 03 00 00    	je     1400031e0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6a0>
   140002e32:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
   140002e39:	00 
   140002e3a:	48 85 c0             	test   %rax,%rax
   140002e3d:	0f 84 3d 03 00 00    	je     140003180 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   140002e43:	48 39 d0             	cmp    %rdx,%rax
   140002e46:	0f 82 34 03 00 00    	jb     140003180 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   140002e4c:	4c 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%r9
   140002e53:	00 
   140002e54:	45 31 c0             	xor    %r8d,%r8d
   140002e57:	31 d2                	xor    %edx,%edx
   140002e59:	4c 89 e1             	mov    %r12,%rcx
   140002e5c:	4c 29 c8             	sub    %r9,%rax
   140002e5f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002e64:	e8 e7 23 00 00       	call   140005250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140002e69:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140002e70:	00 
   140002e71:	4c 89 f0             	mov    %r14,%rax
   140002e74:	48 2b 47 08          	sub    0x8(%rdi),%rax
   140002e78:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   140002e7f:	00 
   140002e80:	4c 39 c0             	cmp    %r8,%rax
   140002e83:	0f 82 0e 04 00 00    	jb     140003297 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x757>
   140002e89:	48 89 f9             	mov    %rdi,%rcx
   140002e8c:	e8 af 23 00 00       	call   140005240 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140002e91:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140002e98:	00 
   140002e99:	48 39 d9             	cmp    %rbx,%rcx
   140002e9c:	74 11                	je     140002eaf <_ZN13NaturalBinary8toStringB5cxx11Ev+0x36f>
   140002e9e:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140002ea5:	00 
   140002ea6:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140002eaa:	e8 11 23 00 00       	call   1400051c0 <_ZdlPvy>
   140002eaf:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   140002eb6:	00 00 
   140002eb8:	4c 8b 84 24 28 01 00 	mov    0x128(%rsp),%r8
   140002ebf:	00 
   140002ec0:	49 89 d9             	mov    %rbx,%r9
   140002ec3:	31 d2                	xor    %edx,%edx
   140002ec5:	48 8d 8c 24 20 01 00 	lea    0x120(%rsp),%rcx
   140002ecc:	00 
   140002ecd:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140002ed4:	00 
   140002ed5:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002edc:	00 00 00 00 00 
   140002ee1:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140002ee8:	00 
   140002ee9:	e8 62 23 00 00       	call   140005250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140002eee:	45 31 c9             	xor    %r9d,%r9d
   140002ef1:	f6 84 24 18 01 00 00 	testb  $0x3,0x118(%rsp)
   140002ef8:	03 
   140002ef9:	74 08                	je     140002f03 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x3c3>
   140002efb:	4c 8b 8c 24 28 01 00 	mov    0x128(%rsp),%r9
   140002f02:	00 
   140002f03:	48 8b 94 24 20 01 00 	mov    0x120(%rsp),%rdx
   140002f0a:	00 
   140002f0b:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
   140002f10:	45 31 c0             	xor    %r8d,%r8d
   140002f13:	e8 18 23 00 00       	call   140005230 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   140002f18:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140002f1f:	00 
   140002f20:	48 39 d9             	cmp    %rbx,%rcx
   140002f23:	0f 84 3f 02 00 00    	je     140003168 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x628>
   140002f29:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140002f30:	00 
   140002f31:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140002f35:	e8 86 22 00 00       	call   1400051c0 <_ZdlPvy>
   140002f3a:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   140002f3e:	49 39 75 00          	cmp    %rsi,0x0(%r13)
   140002f42:	0f 85 60 fe ff ff    	jne    140002da8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   140002f48:	48 8b 47 08          	mov    0x8(%rdi),%rax
   140002f4c:	4c 89 f9             	mov    %r15,%rcx
   140002f4f:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140002f56:	00 
   140002f57:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140002f5e:	00 00 00 00 00 
   140002f63:	48 8d 50 02          	lea    0x2(%rax),%rdx
   140002f67:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140002f6e:	00 
   140002f6f:	e8 d4 22 00 00       	call   140005248 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   140002f74:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140002f7b:	ff ff 3f 
   140002f7e:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   140002f85:	00 
   140002f86:	48 83 f8 01          	cmp    $0x1,%rax
   140002f8a:	0f 86 18 03 00 00    	jbe    1400032a8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x768>
   140002f90:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140002f96:	48 8d 15 d8 60 00 00 	lea    0x60d8(%rip),%rdx        # 140009075 <.rdata+0x15>
   140002f9d:	4c 89 f9             	mov    %r15,%rcx
   140002fa0:	e8 9b 22 00 00       	call   140005240 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140002fa5:	4c 8b 47 08          	mov    0x8(%rdi),%r8
   140002fa9:	48 8b 17             	mov    (%rdi),%rdx
   140002fac:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140002fb3:	ff ff 3f 
   140002fb6:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   140002fbd:	00 
   140002fbe:	4c 39 c0             	cmp    %r8,%rax
   140002fc1:	0f 82 ed 02 00 00    	jb     1400032b4 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x774>
   140002fc7:	4c 89 f9             	mov    %r15,%rcx
   140002fca:	e8 71 22 00 00       	call   140005240 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140002fcf:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   140002fd6:	00 
   140002fd7:	48 8b 0f             	mov    (%rdi),%rcx
   140002fda:	48 39 d8             	cmp    %rbx,%rax
   140002fdd:	0f 84 3d 02 00 00    	je     140003220 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6e0>
   140002fe3:	48 39 8c 24 90 00 00 	cmp    %rcx,0x90(%rsp)
   140002fea:	00 
   140002feb:	0f 84 07 02 00 00    	je     1400031f8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6b8>
   140002ff1:	f3 0f 6f 9c 24 a8 00 	movdqu 0xa8(%rsp),%xmm3
   140002ff8:	00 00 
   140002ffa:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   140002ffe:	48 89 07             	mov    %rax,(%rdi)
   140003001:	0f 11 5f 08          	movups %xmm3,0x8(%rdi)
   140003005:	48 85 c9             	test   %rcx,%rcx
   140003008:	0f 84 fa 01 00 00    	je     140003208 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6c8>
   14000300e:	48 89 8c 24 a0 00 00 	mov    %rcx,0xa0(%rsp)
   140003015:	00 
   140003016:	48 89 94 24 b0 00 00 	mov    %rdx,0xb0(%rsp)
   14000301d:	00 
   14000301e:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   140003025:	00 00 00 00 00 
   14000302a:	c6 01 00             	movb   $0x0,(%rcx)
   14000302d:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003034:	00 
   140003035:	48 39 d9             	cmp    %rbx,%rcx
   140003038:	74 11                	je     14000304b <_ZN13NaturalBinary8toStringB5cxx11Ev+0x50b>
   14000303a:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003041:	00 
   140003042:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003046:	e8 75 21 00 00       	call   1400051c0 <_ZdlPvy>
   14000304b:	48 8b 05 1e 64 00 00 	mov    0x641e(%rip),%rax        # 140009470 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003052:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   140003059:	00 
   14000305a:	0f 11 bc 24 d0 00 00 	movups %xmm7,0xd0(%rsp)
   140003061:	00 
   140003062:	48 83 c0 18          	add    $0x18,%rax
   140003066:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   14000306d:	00 
   14000306e:	48 8b 05 fb 63 00 00 	mov    0x63fb(%rip),%rax        # 140009470 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003075:	48 83 c0 68          	add    $0x68,%rax
   140003079:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140003080:	00 
   140003081:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003088:	00 
   140003089:	48 39 c1             	cmp    %rax,%rcx
   14000308c:	74 11                	je     14000309f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x55f>
   14000308e:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140003095:	00 
   140003096:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000309a:	e8 21 21 00 00       	call   1400051c0 <_ZdlPvy>
   14000309f:	48 8b 05 da 63 00 00 	mov    0x63da(%rip),%rax        # 140009480 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   1400030a6:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   1400030ab:	48 83 c0 10          	add    $0x10,%rax
   1400030af:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   1400030b6:	00 
   1400030b7:	e8 9c 21 00 00       	call   140005258 <_ZNSt6localeD1Ev>
   1400030bc:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   1400030c1:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
   1400030c6:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   1400030cd:	00 
   1400030ce:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400030d2:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   1400030d9:	00 
   1400030da:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   1400030df:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
   1400030e4:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   1400030eb:	00 
   1400030ec:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400030f0:	48 89 b4 04 d0 00 00 	mov    %rsi,0xd0(%rsp,%rax,1)
   1400030f7:	00 
   1400030f8:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   1400030fd:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
   140003102:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140003109:	00 
   14000310a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   14000310e:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140003115:	00 
   140003116:	48 8b 05 73 63 00 00 	mov    0x6373(%rip),%rax        # 140009490 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   14000311d:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   140003124:	00 00 00 00 00 
   140003129:	48 83 c0 10          	add    $0x10,%rax
   14000312d:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140003134:	00 
   140003135:	e8 b6 20 00 00       	call   1400051f0 <_ZNSt8ios_baseD2Ev>
   14000313a:	90                   	nop
   14000313b:	0f 10 b4 24 50 02 00 	movups 0x250(%rsp),%xmm6
   140003142:	00 
   140003143:	0f 10 bc 24 60 02 00 	movups 0x260(%rsp),%xmm7
   14000314a:	00 
   14000314b:	48 89 f8             	mov    %rdi,%rax
   14000314e:	48 81 c4 78 02 00 00 	add    $0x278,%rsp
   140003155:	5b                   	pop    %rbx
   140003156:	5e                   	pop    %rsi
   140003157:	5f                   	pop    %rdi
   140003158:	5d                   	pop    %rbp
   140003159:	41 5c                	pop    %r12
   14000315b:	41 5d                	pop    %r13
   14000315d:	41 5e                	pop    %r14
   14000315f:	41 5f                	pop    %r15
   140003161:	c3                   	ret
   140003162:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003168:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   14000316c:	49 3b 75 00          	cmp    0x0(%r13),%rsi
   140003170:	0f 85 32 fc ff ff    	jne    140002da8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   140003176:	e9 cd fd ff ff       	jmp    140002f48 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   14000317b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003180:	48 89 d0             	mov    %rdx,%rax
   140003183:	e9 c4 fc ff ff       	jmp    140002e4c <_ZN13NaturalBinary8toStringB5cxx11Ev+0x30c>
   140003188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000318f:	00 
   140003190:	4c 8b bb f0 00 00 00 	mov    0xf0(%rbx),%r15
   140003197:	4d 85 ff             	test   %r15,%r15
   14000319a:	0f 84 03 01 00 00    	je     1400032a3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x763>
   1400031a0:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
   1400031a5:	75 2c                	jne    1400031d3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x693>
   1400031a7:	4c 89 f9             	mov    %r15,%rcx
   1400031aa:	e8 f1 20 00 00       	call   1400052a0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   1400031af:	49 8b 07             	mov    (%r15),%rax
   1400031b2:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400031b7:	48 8b 40 30          	mov    0x30(%rax),%rax
   1400031bb:	48 39 c8             	cmp    %rcx,%rax
   1400031be:	0f 85 9c 00 00 00    	jne    140003260 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x720>
   1400031c4:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   1400031cb:	00 
   1400031cc:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   1400031d0:	48 01 ea             	add    %rbp,%rdx
   1400031d3:	c6 83 e1 00 00 00 01 	movb   $0x1,0xe1(%rbx)
   1400031da:	e9 f8 fb ff ff       	jmp    140002dd7 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x297>
   1400031df:	90                   	nop
   1400031e0:	48 8d 94 24 20 01 00 	lea    0x120(%rsp),%rdx
   1400031e7:	00 
   1400031e8:	4c 89 e1             	mov    %r12,%rcx
   1400031eb:	e8 48 20 00 00       	call   140005238 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   1400031f0:	e9 74 fc ff ff       	jmp    140002e69 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x329>
   1400031f5:	0f 1f 00             	nopl   (%rax)
   1400031f8:	f3 0f 6f a4 24 a8 00 	movdqu 0xa8(%rsp),%xmm4
   1400031ff:	00 00 
   140003201:	48 89 07             	mov    %rax,(%rdi)
   140003204:	0f 11 67 08          	movups %xmm4,0x8(%rdi)
   140003208:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   14000320f:	00 
   140003210:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   140003217:	00 
   140003218:	48 89 d9             	mov    %rbx,%rcx
   14000321b:	e9 fe fd ff ff       	jmp    14000301e <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   140003220:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003227:	00 
   140003228:	4d 85 c0             	test   %r8,%r8
   14000322b:	74 19                	je     140003246 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   14000322d:	49 83 f8 01          	cmp    $0x1,%r8
   140003231:	74 4d                	je     140003280 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x740>
   140003233:	48 89 da             	mov    %rbx,%rdx
   140003236:	e8 05 32 00 00       	call   140006440 <memcpy>
   14000323b:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003242:	00 
   140003243:	48 8b 0f             	mov    (%rdi),%rcx
   140003246:	4c 89 47 08          	mov    %r8,0x8(%rdi)
   14000324a:	42 c6 04 01 00       	movb   $0x0,(%rcx,%r8,1)
   14000324f:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003256:	00 
   140003257:	e9 c2 fd ff ff       	jmp    14000301e <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   14000325c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003260:	ba 20 00 00 00       	mov    $0x20,%edx
   140003265:	4c 89 f9             	mov    %r15,%rcx
   140003268:	ff d0                	call   *%rax
   14000326a:	e9 55 ff ff ff       	jmp    1400031c4 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x684>
   14000326f:	90                   	nop
   140003270:	4d 89 e7             	mov    %r12,%r15
   140003273:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   14000327a:	00 
   14000327b:	e9 c8 fc ff ff       	jmp    140002f48 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   140003280:	0f b6 84 24 b0 00 00 	movzbl 0xb0(%rsp),%eax
   140003287:	00 
   140003288:	88 01                	mov    %al,(%rcx)
   14000328a:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003291:	00 
   140003292:	48 8b 0f             	mov    (%rdi),%rcx
   140003295:	eb af                	jmp    140003246 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   140003297:	48 8d 0d c2 5d 00 00 	lea    0x5dc2(%rip),%rcx        # 140009060 <.rdata>
   14000329e:	e8 2d 1f 00 00       	call   1400051d0 <_ZSt20__throw_length_errorPKc>
   1400032a3:	e8 30 1f 00 00       	call   1400051d8 <_ZSt16__throw_bad_castv>
   1400032a8:	48 8d 0d b1 5d 00 00 	lea    0x5db1(%rip),%rcx        # 140009060 <.rdata>
   1400032af:	e8 1c 1f 00 00       	call   1400051d0 <_ZSt20__throw_length_errorPKc>
   1400032b4:	48 8d 0d a5 5d 00 00 	lea    0x5da5(%rip),%rcx        # 140009060 <.rdata>
   1400032bb:	e8 10 1f 00 00       	call   1400051d0 <_ZSt20__throw_length_errorPKc>
   1400032c0:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400032c7:	00 
   1400032c8:	48 89 c6             	mov    %rax,%rsi
   1400032cb:	48 39 d9             	cmp    %rbx,%rcx
   1400032ce:	74 11                	je     1400032e1 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   1400032d0:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   1400032d7:	00 
   1400032d8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400032dc:	e8 df 1e 00 00       	call   1400051c0 <_ZdlPvy>
   1400032e1:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
   1400032e8:	00 
   1400032e9:	e8 3a 1f 00 00       	call   140005228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400032ee:	eb 23                	jmp    140003313 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7d3>
   1400032f0:	48 89 c6             	mov    %rax,%rsi
   1400032f3:	48 8b 05 96 61 00 00 	mov    0x6196(%rip),%rax        # 140009490 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   1400032fa:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   140003301:	00 
   140003302:	48 83 c0 10          	add    $0x10,%rax
   140003306:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   14000330d:	00 
   14000330e:	e8 dd 1e 00 00       	call   1400051f0 <_ZNSt8ios_baseD2Ev>
   140003313:	48 8b 0f             	mov    (%rdi),%rcx
   140003316:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   14000331d:	00 
   14000331e:	48 39 c1             	cmp    %rax,%rcx
   140003321:	74 0d                	je     140003330 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7f0>
   140003323:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   140003327:	48 83 c2 01          	add    $0x1,%rdx
   14000332b:	e8 90 1e 00 00       	call   1400051c0 <_ZdlPvy>
   140003330:	48 89 f1             	mov    %rsi,%rcx
   140003333:	e8 d8 2f 00 00       	call   140006310 <_Unwind_Resume>
   140003338:	eb 86                	jmp    1400032c0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   14000333a:	eb 84                	jmp    1400032c0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   14000333c:	eb 82                	jmp    1400032c0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   14000333e:	48 89 c6             	mov    %rax,%rsi
   140003341:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   140003346:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   14000334b:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140003352:	00 
   140003353:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003357:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   14000335e:	00 
   14000335f:	31 c0                	xor    %eax,%eax
   140003361:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
   140003368:	00 
   140003369:	eb 88                	jmp    1400032f3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7b3>
   14000336b:	48 89 c6             	mov    %rax,%rsi
   14000336e:	e9 6e ff ff ff       	jmp    1400032e1 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003373:	48 89 c6             	mov    %rax,%rsi
   140003376:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   14000337d:	00 
   14000337e:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003385:	00 
   140003386:	48 83 c3 10          	add    $0x10,%rbx
   14000338a:	48 89 9c 24 d8 00 00 	mov    %rbx,0xd8(%rsp)
   140003391:	00 
   140003392:	48 39 c1             	cmp    %rax,%rcx
   140003395:	74 11                	je     1400033a8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x868>
   140003397:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   14000339e:	00 
   14000339f:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400033a3:	e8 18 1e 00 00       	call   1400051c0 <_ZdlPvy>
   1400033a8:	48 8b 05 d1 60 00 00 	mov    0x60d1(%rip),%rax        # 140009480 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   1400033af:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   1400033b4:	48 83 c0 10          	add    $0x10,%rax
   1400033b8:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   1400033bf:	00 
   1400033c0:	e8 93 1e 00 00       	call   140005258 <_ZNSt6localeD1Ev>
   1400033c5:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   1400033ca:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
   1400033cf:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400033d3:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   1400033da:	00 
   1400033db:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   1400033e0:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400033e5:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   1400033ec:	00 
   1400033ed:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400033f1:	48 89 9c 04 d0 00 00 	mov    %rbx,0xd0(%rsp,%rax,1)
   1400033f8:	00 
   1400033f9:	e9 43 ff ff ff       	jmp    140003341 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x801>
   1400033fe:	66 90                	xchg   %ax,%ax

0000000140003400 <_ZlsRSo13NaturalBinary>:
   140003400:	53                   	push   %rbx
   140003401:	48 83 ec 40          	sub    $0x40,%rsp
   140003405:	48 89 cb             	mov    %rcx,%rbx
   140003408:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   14000340d:	e8 2e f7 ff ff       	call   140002b40 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   140003412:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   140003417:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   14000341c:	48 89 d9             	mov    %rbx,%rcx
   14000341f:	e8 bc 1d 00 00       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140003424:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140003429:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   14000342e:	48 39 c1             	cmp    %rax,%rcx
   140003431:	74 0e                	je     140003441 <_ZlsRSo13NaturalBinary+0x41>
   140003433:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003438:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000343c:	e8 7f 1d 00 00       	call   1400051c0 <_ZdlPvy>
   140003441:	48 89 d8             	mov    %rbx,%rax
   140003444:	48 83 c4 40          	add    $0x40,%rsp
   140003448:	5b                   	pop    %rbx
   140003449:	c3                   	ret
   14000344a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000344f:	48 89 c3             	mov    %rax,%rbx
   140003452:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140003457:	48 39 c1             	cmp    %rax,%rcx
   14000345a:	74 0e                	je     14000346a <_ZlsRSo13NaturalBinary+0x6a>
   14000345c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003461:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003465:	e8 56 1d 00 00       	call   1400051c0 <_ZdlPvy>
   14000346a:	48 89 d9             	mov    %rbx,%rcx
   14000346d:	e8 9e 2e 00 00       	call   140006310 <_Unwind_Resume>
   140003472:	90                   	nop
   140003473:	90                   	nop
   140003474:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000347b:	00 00 00 00 
   14000347f:	90                   	nop

0000000140003480 <_ZN13NaturalBinarymlES_>:
   140003480:	41 57                	push   %r15
   140003482:	41 56                	push   %r14
   140003484:	41 55                	push   %r13
   140003486:	41 54                	push   %r12
   140003488:	55                   	push   %rbp
   140003489:	57                   	push   %rdi
   14000348a:	56                   	push   %rsi
   14000348b:	53                   	push   %rbx
   14000348c:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   140003493:	0f 11 b4 24 00 01 00 	movups %xmm6,0x100(%rsp)
   14000349a:	00 
   14000349b:	49 8b 18             	mov    (%r8),%rbx
   14000349e:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   1400034a3:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
   1400034aa:	00 
   1400034ab:	48 89 d7             	mov    %rdx,%rdi
   1400034ae:	4c 89 c5             	mov    %r8,%rbp
   1400034b1:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   1400034b8:	00 00 
   1400034ba:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400034bf:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400034c3:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   1400034c8:	49 39 d8             	cmp    %rbx,%r8
   1400034cb:	0f 84 df 02 00 00    	je     1400037b0 <_ZN13NaturalBinarymlES_+0x330>
   1400034d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400034d8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400034dd:	e8 d6 1c 00 00       	call   1400051b8 <_Znwy>
   1400034e2:	48 89 c1             	mov    %rax,%rcx
   1400034e5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400034e9:	48 89 f2             	mov    %rsi,%rdx
   1400034ec:	88 41 10             	mov    %al,0x10(%rcx)
   1400034ef:	e8 24 1d 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400034f4:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
   1400034f9:	48 8b 1b             	mov    (%rbx),%rbx
   1400034fc:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003500:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
   140003505:	48 39 dd             	cmp    %rbx,%rbp
   140003508:	75 ce                	jne    1400034d8 <_ZN13NaturalBinarymlES_+0x58>
   14000350a:	48 0f af 57 10       	imul   0x10(%rdi),%rdx
   14000350f:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003513:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   14000351a:	00 00 00 00 00 
   14000351f:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140003526:	00 
   140003527:	48 85 d2             	test   %rdx,%rdx
   14000352a:	0f 85 60 02 00 00    	jne    140003790 <_ZN13NaturalBinarymlES_+0x310>
   140003530:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140003537:	00 00 
   140003539:	4c 8d a4 24 e0 00 00 	lea    0xe0(%rsp),%r12
   140003540:	00 
   140003541:	31 d2                	xor    %edx,%edx
   140003543:	4c 89 e1             	mov    %r12,%rcx
   140003546:	e8 35 e1 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000354b:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
   140003552:	00 
   140003553:	31 d2                	xor    %edx,%edx
   140003555:	48 89 d9             	mov    %rbx,%rcx
   140003558:	e8 23 e1 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000355d:	48 8b 54 24 60       	mov    0x60(%rsp),%rdx
   140003562:	31 c0                	xor    %eax,%eax
   140003564:	4c 8d bc 24 a2 00 00 	lea    0xa2(%rsp),%r15
   14000356b:	00 
   14000356c:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140003571:	48 39 f2             	cmp    %rsi,%rdx
   140003574:	0f 84 8e 02 00 00    	je     140003808 <_ZN13NaturalBinarymlES_+0x388>
   14000357a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   14000357f:	0f b6 52 10          	movzbl 0x10(%rdx),%edx
   140003583:	88 54 24 4f          	mov    %dl,0x4f(%rsp)
   140003587:	48 8b 17             	mov    (%rdi),%rdx
   14000358a:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   14000358f:	48 39 d7             	cmp    %rdx,%rdi
   140003592:	0f 84 40 02 00 00    	je     1400037d8 <_ZN13NaturalBinarymlES_+0x358>
   140003598:	48 98                	cltq
   14000359a:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   14000359f:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   1400035a4:	66 48 0f 6e f3       	movq   %rbx,%xmm6
   1400035a9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   1400035ae:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   1400035b2:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400035b6:	4c 8d 2c c1          	lea    (%rcx,%rax,8),%r13
   1400035ba:	48 89 d0             	mov    %rdx,%rax
   1400035bd:	0f b6 48 10          	movzbl 0x10(%rax),%ecx
   1400035c1:	0f b6 54 24 4f       	movzbl 0x4f(%rsp),%edx
   1400035c6:	e8 85 df ff ff       	call   140001550 <_ZN10Arithmetic3mulE4ByteS0_>
   1400035cb:	88 a4 24 a0 00 00 00 	mov    %ah,0xa0(%rsp)
   1400035d2:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   1400035d9:	00 
   1400035da:	88 84 24 a1 00 00 00 	mov    %al,0xa1(%rsp)
   1400035e1:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   1400035e8:	00 00 00 00 00 
   1400035ed:	0f 11 b4 24 c0 00 00 	movups %xmm6,0xc0(%rsp)
   1400035f4:	00 
   1400035f5:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400035fa:	e8 b9 1b 00 00       	call   1400051b8 <_Znwy>
   1400035ff:	48 89 c1             	mov    %rax,%rcx
   140003602:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
   140003606:	48 89 da             	mov    %rbx,%rdx
   140003609:	48 83 c5 01          	add    $0x1,%rbp
   14000360d:	88 41 10             	mov    %al,0x10(%rcx)
   140003610:	e8 03 1c 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003615:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   14000361c:	00 01 
   14000361e:	4c 39 fd             	cmp    %r15,%rbp
   140003621:	75 d2                	jne    1400035f5 <_ZN13NaturalBinarymlES_+0x175>
   140003623:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140003628:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   14000362f:	00 
   140003630:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
   140003637:	00 00 00 00 00 
   14000363c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003640:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   140003647:	00 
   140003648:	48 39 dd             	cmp    %rbx,%rbp
   14000364b:	0f 84 30 04 00 00    	je     140003a81 <_ZN13NaturalBinarymlES_+0x601>
   140003651:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
   140003656:	eb 15                	jmp    14000366d <_ZN13NaturalBinarymlES_+0x1ed>
   140003658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000365f:	00 
   140003660:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140003667:	00 
   140003668:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   14000366d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003672:	44 0f b6 75 10       	movzbl 0x10(%rbp),%r14d
   140003677:	e8 3c 1b 00 00       	call   1400051b8 <_Znwy>
   14000367c:	44 88 70 10          	mov    %r14b,0x10(%rax)
   140003680:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140003685:	48 89 c1             	mov    %rax,%rcx
   140003688:	e8 8b 1b 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000368d:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003691:	48 83 84 24 f0 00 00 	addq   $0x1,0xf0(%rsp)
   140003698:	00 01 
   14000369a:	48 39 dd             	cmp    %rbx,%rbp
   14000369d:	75 c1                	jne    140003660 <_ZN13NaturalBinarymlES_+0x1e0>
   14000369f:	4d 39 e5             	cmp    %r12,%r13
   1400036a2:	74 0b                	je     1400036af <_ZN13NaturalBinarymlES_+0x22f>
   1400036a4:	4c 89 e2             	mov    %r12,%rdx
   1400036a7:	4c 89 e9             	mov    %r13,%rcx
   1400036aa:	e8 21 e1 ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400036af:	48 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%rbp
   1400036b6:	00 
   1400036b7:	4c 39 e5             	cmp    %r12,%rbp
   1400036ba:	74 1a                	je     1400036d6 <_ZN13NaturalBinarymlES_+0x256>
   1400036bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400036c0:	48 89 e9             	mov    %rbp,%rcx
   1400036c3:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   1400036c7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400036cc:	e8 ef 1a 00 00       	call   1400051c0 <_ZdlPvy>
   1400036d1:	4c 39 e5             	cmp    %r12,%rbp
   1400036d4:	75 ea                	jne    1400036c0 <_ZN13NaturalBinarymlES_+0x240>
   1400036d6:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   1400036dd:	00 
   1400036de:	eb 11                	jmp    1400036f1 <_ZN13NaturalBinarymlES_+0x271>
   1400036e0:	48 89 e9             	mov    %rbp,%rcx
   1400036e3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400036e8:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   1400036ec:	e8 cf 1a 00 00       	call   1400051c0 <_ZdlPvy>
   1400036f1:	48 39 dd             	cmp    %rbx,%rbp
   1400036f4:	75 ea                	jne    1400036e0 <_ZN13NaturalBinarymlES_+0x260>
   1400036f6:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400036fb:	31 d2                	xor    %edx,%edx
   1400036fd:	31 ed                	xor    %ebp,%ebp
   1400036ff:	48 f7 77 10          	divq   0x10(%rdi)
   140003703:	48 01 c2             	add    %rax,%rdx
   140003706:	74 52                	je     14000375a <_ZN13NaturalBinarymlES_+0x2da>
   140003708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000370f:	00 
   140003710:	31 d2                	xor    %edx,%edx
   140003712:	4c 89 e1             	mov    %r12,%rcx
   140003715:	e8 66 df ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000371a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000371f:	4d 8b 75 00          	mov    0x0(%r13),%r14
   140003723:	e8 90 1a 00 00       	call   1400051b8 <_Znwy>
   140003728:	48 89 c1             	mov    %rax,%rcx
   14000372b:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003732:	00 
   140003733:	4c 89 f2             	mov    %r14,%rdx
   140003736:	48 83 c5 01          	add    $0x1,%rbp
   14000373a:	88 41 10             	mov    %al,0x10(%rcx)
   14000373d:	e8 d6 1a 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003742:	49 83 45 10 01       	addq   $0x1,0x10(%r13)
   140003747:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000374c:	31 d2                	xor    %edx,%edx
   14000374e:	48 f7 77 10          	divq   0x10(%rdi)
   140003752:	48 01 c2             	add    %rax,%rdx
   140003755:	48 39 d5             	cmp    %rdx,%rbp
   140003758:	72 b6                	jb     140003710 <_ZN13NaturalBinarymlES_+0x290>
   14000375a:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   14000375f:	49 83 c5 18          	add    $0x18,%r13
   140003763:	48 8b 10             	mov    (%rax),%rdx
   140003766:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000376b:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003770:	48 83 c0 01          	add    $0x1,%rax
   140003774:	48 39 d7             	cmp    %rdx,%rdi
   140003777:	74 54                	je     1400037cd <_ZN13NaturalBinarymlES_+0x34d>
   140003779:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   14000377e:	48 89 d0             	mov    %rdx,%rax
   140003781:	e9 37 fe ff ff       	jmp    1400035bd <_ZN13NaturalBinarymlES_+0x13d>
   140003786:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000378d:	00 00 00 
   140003790:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
   140003797:	00 
   140003798:	e8 33 2d 00 00       	call   1400064d0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>
   14000379d:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   1400037a4:	00 
   1400037a5:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   1400037aa:	e9 8a fd ff ff       	jmp    140003539 <_ZN13NaturalBinarymlES_+0xb9>
   1400037af:	90                   	nop
   1400037b0:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   1400037b7:	00 00 00 00 00 
   1400037bc:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400037c0:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   1400037c7:	00 
   1400037c8:	e9 63 fd ff ff       	jmp    140003530 <_ZN13NaturalBinarymlES_+0xb0>
   1400037cd:	8b 44 24 30          	mov    0x30(%rsp),%eax
   1400037d1:	83 c0 01             	add    $0x1,%eax
   1400037d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400037d8:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   1400037dd:	48 8b 12             	mov    (%rdx),%rdx
   1400037e0:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   1400037e5:	48 39 f2             	cmp    %rsi,%rdx
   1400037e8:	74 1e                	je     140003808 <_ZN13NaturalBinarymlES_+0x388>
   1400037ea:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
   1400037ef:	48 39 d7             	cmp    %rdx,%rdi
   1400037f2:	0f 85 82 fd ff ff    	jne    14000357a <_ZN13NaturalBinarymlES_+0xfa>
   1400037f8:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   1400037fd:	48 8b 00             	mov    (%rax),%rax
   140003800:	48 39 f0             	cmp    %rsi,%rax
   140003803:	75 f8                	jne    1400037fd <_ZN13NaturalBinarymlES_+0x37d>
   140003805:	0f 1f 00             	nopl   (%rax)
   140003808:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   14000380f:	00 
   140003810:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   140003817:	00 
   140003818:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   14000381d:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003821:	e8 fa e0 ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003826:	4c 8b bc 24 88 00 00 	mov    0x88(%rsp),%r15
   14000382d:	00 
   14000382e:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140003833:	4c 39 f8             	cmp    %r15,%rax
   140003836:	0f 84 e2 01 00 00    	je     140003a1e <_ZN13NaturalBinarymlES_+0x59e>
   14000383c:	49 89 c6             	mov    %rax,%r14
   14000383f:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140003846:	00 
   140003847:	4d 8b 2e             	mov    (%r14),%r13
   14000384a:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
   140003851:	00 00 00 00 00 
   140003856:	4d 39 f5             	cmp    %r14,%r13
   140003859:	0f 84 81 02 00 00    	je     140003ae0 <_ZN13NaturalBinarymlES_+0x660>
   14000385f:	90                   	nop
   140003860:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003865:	e8 4e 19 00 00       	call   1400051b8 <_Znwy>
   14000386a:	48 89 c1             	mov    %rax,%rcx
   14000386d:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   140003872:	48 89 ea             	mov    %rbp,%rdx
   140003875:	88 41 10             	mov    %al,0x10(%rcx)
   140003878:	e8 9b 19 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000387d:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003884:	00 
   140003885:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140003889:	48 8d 78 01          	lea    0x1(%rax),%rdi
   14000388d:	48 89 bc 24 b0 00 00 	mov    %rdi,0xb0(%rsp)
   140003894:	00 
   140003895:	4d 39 f5             	cmp    %r14,%r13
   140003898:	75 c6                	jne    140003860 <_ZN13NaturalBinarymlES_+0x3e0>
   14000389a:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   1400038a1:	00 
   1400038a2:	45 31 ed             	xor    %r13d,%r13d
   1400038a5:	2b 78 10             	sub    0x10(%rax),%edi
   1400038a8:	85 ff                	test   %edi,%edi
   1400038aa:	0f 8e df 01 00 00    	jle    140003a8f <_ZN13NaturalBinarymlES_+0x60f>
   1400038b0:	31 d2                	xor    %edx,%edx
   1400038b2:	4c 89 e1             	mov    %r12,%rcx
   1400038b5:	e8 c6 dd ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400038ba:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400038bf:	e8 f4 18 00 00       	call   1400051b8 <_Znwy>
   1400038c4:	48 89 c1             	mov    %rax,%rcx
   1400038c7:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   1400038ce:	00 
   1400038cf:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   1400038d6:	00 
   1400038d7:	41 83 c5 01          	add    $0x1,%r13d
   1400038db:	88 41 10             	mov    %al,0x10(%rcx)
   1400038de:	e8 35 19 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400038e3:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   1400038ea:	00 
   1400038eb:	48 83 40 10 01       	addq   $0x1,0x10(%rax)
   1400038f0:	44 39 ef             	cmp    %r13d,%edi
   1400038f3:	7f bb                	jg     1400038b0 <_ZN13NaturalBinarymlES_+0x430>
   1400038f5:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   1400038fa:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   140003901:	00 
   140003902:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   140003909:	00 00 00 00 00 
   14000390e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003912:	0f 11 84 24 c0 00 00 	movups %xmm0,0xc0(%rsp)
   140003919:	00 
   14000391a:	48 39 ef             	cmp    %rbp,%rdi
   14000391d:	74 2d                	je     14000394c <_ZN13NaturalBinarymlES_+0x4cc>
   14000391f:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003924:	e8 8f 18 00 00       	call   1400051b8 <_Znwy>
   140003929:	48 89 c1             	mov    %rax,%rcx
   14000392c:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140003930:	48 89 da             	mov    %rbx,%rdx
   140003933:	88 41 10             	mov    %al,0x10(%rcx)
   140003936:	e8 dd 18 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000393b:	48 8b 3f             	mov    (%rdi),%rdi
   14000393e:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   140003945:	00 01 
   140003947:	48 39 ef             	cmp    %rbp,%rdi
   14000394a:	75 d3                	jne    14000391f <_ZN13NaturalBinarymlES_+0x49f>
   14000394c:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   140003953:	00 
   140003954:	49 89 d8             	mov    %rbx,%r8
   140003957:	4c 89 e1             	mov    %r12,%rcx
   14000395a:	e8 21 e2 ff ff       	call   140001b80 <_ZN13NaturalBinaryplES_>
   14000395f:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   140003966:	00 
   140003967:	4c 89 e2             	mov    %r12,%rdx
   14000396a:	e8 61 de ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000396f:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
   140003976:	00 
   140003977:	4c 39 e7             	cmp    %r12,%rdi
   14000397a:	74 15                	je     140003991 <_ZN13NaturalBinarymlES_+0x511>
   14000397c:	48 89 f9             	mov    %rdi,%rcx
   14000397f:	48 8b 3f             	mov    (%rdi),%rdi
   140003982:	ba 18 00 00 00       	mov    $0x18,%edx
   140003987:	e8 34 18 00 00       	call   1400051c0 <_ZdlPvy>
   14000398c:	4c 39 e7             	cmp    %r12,%rdi
   14000398f:	75 eb                	jne    14000397c <_ZN13NaturalBinarymlES_+0x4fc>
   140003991:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
   140003998:	00 
   140003999:	48 39 df             	cmp    %rbx,%rdi
   14000399c:	74 15                	je     1400039b3 <_ZN13NaturalBinarymlES_+0x533>
   14000399e:	48 89 f9             	mov    %rdi,%rcx
   1400039a1:	48 8b 3f             	mov    (%rdi),%rdi
   1400039a4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400039a9:	e8 12 18 00 00       	call   1400051c0 <_ZdlPvy>
   1400039ae:	48 39 df             	cmp    %rbx,%rdi
   1400039b1:	75 eb                	jne    14000399e <_ZN13NaturalBinarymlES_+0x51e>
   1400039b3:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   1400039ba:	00 
   1400039bb:	48 39 ef             	cmp    %rbp,%rdi
   1400039be:	74 15                	je     1400039d5 <_ZN13NaturalBinarymlES_+0x555>
   1400039c0:	48 89 f9             	mov    %rdi,%rcx
   1400039c3:	48 8b 3f             	mov    (%rdi),%rdi
   1400039c6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400039cb:	e8 f0 17 00 00       	call   1400051c0 <_ZdlPvy>
   1400039d0:	48 39 ef             	cmp    %rbp,%rdi
   1400039d3:	75 eb                	jne    1400039c0 <_ZN13NaturalBinarymlES_+0x540>
   1400039d5:	49 83 c6 18          	add    $0x18,%r14
   1400039d9:	4d 39 f7             	cmp    %r14,%r15
   1400039dc:	0f 85 5d fe ff ff    	jne    14000383f <_ZN13NaturalBinarymlES_+0x3bf>
   1400039e2:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
   1400039e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400039ee:	00 00 
   1400039f0:	48 8b 1f             	mov    (%rdi),%rbx
   1400039f3:	48 39 df             	cmp    %rbx,%rdi
   1400039f6:	74 1d                	je     140003a15 <_ZN13NaturalBinarymlES_+0x595>
   1400039f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400039ff:	00 
   140003a00:	48 89 d9             	mov    %rbx,%rcx
   140003a03:	48 8b 1b             	mov    (%rbx),%rbx
   140003a06:	ba 18 00 00 00       	mov    $0x18,%edx
   140003a0b:	e8 b0 17 00 00       	call   1400051c0 <_ZdlPvy>
   140003a10:	48 39 df             	cmp    %rbx,%rdi
   140003a13:	75 eb                	jne    140003a00 <_ZN13NaturalBinarymlES_+0x580>
   140003a15:	48 83 c7 18          	add    $0x18,%rdi
   140003a19:	49 39 ff             	cmp    %rdi,%r15
   140003a1c:	75 d2                	jne    1400039f0 <_ZN13NaturalBinarymlES_+0x570>
   140003a1e:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   140003a23:	48 85 c9             	test   %rcx,%rcx
   140003a26:	74 10                	je     140003a38 <_ZN13NaturalBinarymlES_+0x5b8>
   140003a28:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   140003a2f:	00 
   140003a30:	48 29 ca             	sub    %rcx,%rdx
   140003a33:	e8 88 17 00 00       	call   1400051c0 <_ZdlPvy>
   140003a38:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003a3d:	48 39 f3             	cmp    %rsi,%rbx
   140003a40:	74 1b                	je     140003a5d <_ZN13NaturalBinarymlES_+0x5dd>
   140003a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003a48:	48 89 d9             	mov    %rbx,%rcx
   140003a4b:	48 8b 1b             	mov    (%rbx),%rbx
   140003a4e:	ba 18 00 00 00       	mov    $0x18,%edx
   140003a53:	e8 68 17 00 00       	call   1400051c0 <_ZdlPvy>
   140003a58:	48 39 f3             	cmp    %rsi,%rbx
   140003a5b:	75 eb                	jne    140003a48 <_ZN13NaturalBinarymlES_+0x5c8>
   140003a5d:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003a64:	00 
   140003a65:	0f 10 b4 24 00 01 00 	movups 0x100(%rsp),%xmm6
   140003a6c:	00 
   140003a6d:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
   140003a74:	5b                   	pop    %rbx
   140003a75:	5e                   	pop    %rsi
   140003a76:	5f                   	pop    %rdi
   140003a77:	5d                   	pop    %rbp
   140003a78:	41 5c                	pop    %r12
   140003a7a:	41 5d                	pop    %r13
   140003a7c:	41 5e                	pop    %r14
   140003a7e:	41 5f                	pop    %r15
   140003a80:	c3                   	ret
   140003a81:	4d 39 e5             	cmp    %r12,%r13
   140003a84:	0f 85 1a fc ff ff    	jne    1400036a4 <_ZN13NaturalBinarymlES_+0x224>
   140003a8a:	e9 67 fc ff ff       	jmp    1400036f6 <_ZN13NaturalBinarymlES_+0x276>
   140003a8f:	41 89 fd             	mov    %edi,%r13d
   140003a92:	41 f7 dd             	neg    %r13d
   140003a95:	0f 84 5a fe ff ff    	je     1400038f5 <_ZN13NaturalBinarymlES_+0x475>
   140003a9b:	31 ff                	xor    %edi,%edi
   140003a9d:	0f 1f 00             	nopl   (%rax)
   140003aa0:	31 d2                	xor    %edx,%edx
   140003aa2:	4c 89 e1             	mov    %r12,%rcx
   140003aa5:	e8 d6 db ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003aaa:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003aaf:	e8 04 17 00 00       	call   1400051b8 <_Znwy>
   140003ab4:	48 89 c1             	mov    %rax,%rcx
   140003ab7:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003abe:	00 
   140003abf:	48 89 ea             	mov    %rbp,%rdx
   140003ac2:	83 c7 01             	add    $0x1,%edi
   140003ac5:	88 41 10             	mov    %al,0x10(%rcx)
   140003ac8:	e8 4b 17 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003acd:	48 83 84 24 b0 00 00 	addq   $0x1,0xb0(%rsp)
   140003ad4:	00 01 
   140003ad6:	41 39 fd             	cmp    %edi,%r13d
   140003ad9:	7f c5                	jg     140003aa0 <_ZN13NaturalBinarymlES_+0x620>
   140003adb:	e9 15 fe ff ff       	jmp    1400038f5 <_ZN13NaturalBinarymlES_+0x475>
   140003ae0:	31 ff                	xor    %edi,%edi
   140003ae2:	e9 b3 fd ff ff       	jmp    14000389a <_ZN13NaturalBinarymlES_+0x41a>
   140003ae7:	48 89 c3             	mov    %rax,%rbx
   140003aea:	48 8b ac 24 80 00 00 	mov    0x80(%rsp),%rbp
   140003af1:	00 
   140003af2:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
   140003af9:	00 
   140003afa:	48 89 ef             	mov    %rbp,%rdi
   140003afd:	49 39 fc             	cmp    %rdi,%r12
   140003b00:	74 73                	je     140003b75 <_ZN13NaturalBinarymlES_+0x6f5>
   140003b02:	48 8b 0f             	mov    (%rdi),%rcx
   140003b05:	48 39 cf             	cmp    %rcx,%rdi
   140003b08:	0f 84 b7 00 00 00    	je     140003bc5 <_ZN13NaturalBinarymlES_+0x745>
   140003b0e:	4c 8b 29             	mov    (%rcx),%r13
   140003b11:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b16:	e8 a5 16 00 00       	call   1400051c0 <_ZdlPvy>
   140003b1b:	4c 89 e9             	mov    %r13,%rcx
   140003b1e:	eb e5                	jmp    140003b05 <_ZN13NaturalBinarymlES_+0x685>
   140003b20:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003b27:	00 
   140003b28:	48 89 c7             	mov    %rax,%rdi
   140003b2b:	4c 39 e1             	cmp    %r12,%rcx
   140003b2e:	74 26                	je     140003b56 <_ZN13NaturalBinarymlES_+0x6d6>
   140003b30:	48 8b 29             	mov    (%rcx),%rbp
   140003b33:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b38:	e8 83 16 00 00       	call   1400051c0 <_ZdlPvy>
   140003b3d:	48 89 e9             	mov    %rbp,%rcx
   140003b40:	eb e9                	jmp    140003b2b <_ZN13NaturalBinarymlES_+0x6ab>
   140003b42:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003b49:	00 
   140003b4a:	48 89 c7             	mov    %rax,%rdi
   140003b4d:	4c 39 e1             	cmp    %r12,%rcx
   140003b50:	0f 85 b3 00 00 00    	jne    140003c09 <_ZN13NaturalBinarymlES_+0x789>
   140003b56:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003b5d:	00 
   140003b5e:	48 39 d9             	cmp    %rbx,%rcx
   140003b61:	74 5a                	je     140003bbd <_ZN13NaturalBinarymlES_+0x73d>
   140003b63:	48 8b 29             	mov    (%rcx),%rbp
   140003b66:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b6b:	e8 50 16 00 00       	call   1400051c0 <_ZdlPvy>
   140003b70:	48 89 e9             	mov    %rbp,%rcx
   140003b73:	eb e9                	jmp    140003b5e <_ZN13NaturalBinarymlES_+0x6de>
   140003b75:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   140003b7c:	00 
   140003b7d:	48 29 ea             	sub    %rbp,%rdx
   140003b80:	48 85 ed             	test   %rbp,%rbp
   140003b83:	74 08                	je     140003b8d <_ZN13NaturalBinarymlES_+0x70d>
   140003b85:	48 89 e9             	mov    %rbp,%rcx
   140003b88:	e8 33 16 00 00       	call   1400051c0 <_ZdlPvy>
   140003b8d:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140003b92:	48 39 f1             	cmp    %rsi,%rcx
   140003b95:	74 48                	je     140003bdf <_ZN13NaturalBinarymlES_+0x75f>
   140003b97:	48 8b 39             	mov    (%rcx),%rdi
   140003b9a:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b9f:	e8 1c 16 00 00       	call   1400051c0 <_ZdlPvy>
   140003ba4:	48 89 f9             	mov    %rdi,%rcx
   140003ba7:	eb e9                	jmp    140003b92 <_ZN13NaturalBinarymlES_+0x712>
   140003ba9:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003bb0:	00 
   140003bb1:	48 89 c7             	mov    %rax,%rdi
   140003bb4:	48 39 d9             	cmp    %rbx,%rcx
   140003bb7:	0f 85 19 01 00 00    	jne    140003cd6 <_ZN13NaturalBinarymlES_+0x856>
   140003bbd:	48 89 fb             	mov    %rdi,%rbx
   140003bc0:	e9 25 ff ff ff       	jmp    140003aea <_ZN13NaturalBinarymlES_+0x66a>
   140003bc5:	48 83 c7 18          	add    $0x18,%rdi
   140003bc9:	e9 2f ff ff ff       	jmp    140003afd <_ZN13NaturalBinarymlES_+0x67d>
   140003bce:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140003bd3:	48 89 c3             	mov    %rax,%rbx
   140003bd6:	48 39 f1             	cmp    %rsi,%rcx
   140003bd9:	0f 85 0c 01 00 00    	jne    140003ceb <_ZN13NaturalBinarymlES_+0x86b>
   140003bdf:	48 89 d9             	mov    %rbx,%rcx
   140003be2:	e8 29 27 00 00       	call   140006310 <_Unwind_Resume>
   140003be7:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003bee:	00 
   140003bef:	48 89 c7             	mov    %rax,%rdi
   140003bf2:	4c 39 e1             	cmp    %r12,%rcx
   140003bf5:	74 2a                	je     140003c21 <_ZN13NaturalBinarymlES_+0x7a1>
   140003bf7:	4c 8b 29             	mov    (%rcx),%r13
   140003bfa:	ba 18 00 00 00       	mov    $0x18,%edx
   140003bff:	e8 bc 15 00 00       	call   1400051c0 <_ZdlPvy>
   140003c04:	4c 89 e9             	mov    %r13,%rcx
   140003c07:	eb e9                	jmp    140003bf2 <_ZN13NaturalBinarymlES_+0x772>
   140003c09:	48 8b 29             	mov    (%rcx),%rbp
   140003c0c:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c11:	e8 aa 15 00 00       	call   1400051c0 <_ZdlPvy>
   140003c16:	48 89 e9             	mov    %rbp,%rcx
   140003c19:	e9 2f ff ff ff       	jmp    140003b4d <_ZN13NaturalBinarymlES_+0x6cd>
   140003c1e:	48 89 c7             	mov    %rax,%rdi
   140003c21:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003c28:	00 
   140003c29:	48 39 d9             	cmp    %rbx,%rcx
   140003c2c:	74 34                	je     140003c62 <_ZN13NaturalBinarymlES_+0x7e2>
   140003c2e:	4c 8b 21             	mov    (%rcx),%r12
   140003c31:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c36:	e8 85 15 00 00       	call   1400051c0 <_ZdlPvy>
   140003c3b:	4c 89 e1             	mov    %r12,%rcx
   140003c3e:	eb e9                	jmp    140003c29 <_ZN13NaturalBinarymlES_+0x7a9>
   140003c40:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003c47:	00 
   140003c48:	48 89 c7             	mov    %rax,%rdi
   140003c4b:	48 39 d9             	cmp    %rbx,%rcx
   140003c4e:	74 12                	je     140003c62 <_ZN13NaturalBinarymlES_+0x7e2>
   140003c50:	4c 8b 21             	mov    (%rcx),%r12
   140003c53:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c58:	e8 63 15 00 00       	call   1400051c0 <_ZdlPvy>
   140003c5d:	4c 89 e1             	mov    %r12,%rcx
   140003c60:	eb e9                	jmp    140003c4b <_ZN13NaturalBinarymlES_+0x7cb>
   140003c62:	48 89 fb             	mov    %rdi,%rbx
   140003c65:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003c6c:	00 
   140003c6d:	48 39 e9             	cmp    %rbp,%rcx
   140003c70:	74 39                	je     140003cab <_ZN13NaturalBinarymlES_+0x82b>
   140003c72:	48 8b 39             	mov    (%rcx),%rdi
   140003c75:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c7a:	e8 41 15 00 00       	call   1400051c0 <_ZdlPvy>
   140003c7f:	48 89 f9             	mov    %rdi,%rcx
   140003c82:	eb e9                	jmp    140003c6d <_ZN13NaturalBinarymlES_+0x7ed>
   140003c84:	48 89 c3             	mov    %rax,%rbx
   140003c87:	eb dc                	jmp    140003c65 <_ZN13NaturalBinarymlES_+0x7e5>
   140003c89:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003c90:	00 
   140003c91:	48 89 c3             	mov    %rax,%rbx
   140003c94:	48 39 e9             	cmp    %rbp,%rcx
   140003c97:	74 12                	je     140003cab <_ZN13NaturalBinarymlES_+0x82b>
   140003c99:	48 8b 39             	mov    (%rcx),%rdi
   140003c9c:	ba 18 00 00 00       	mov    $0x18,%edx
   140003ca1:	e8 1a 15 00 00       	call   1400051c0 <_ZdlPvy>
   140003ca6:	48 89 f9             	mov    %rdi,%rcx
   140003ca9:	eb e9                	jmp    140003c94 <_ZN13NaturalBinarymlES_+0x814>
   140003cab:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140003cb2:	00 
   140003cb3:	48 8b 08             	mov    (%rax),%rcx
   140003cb6:	48 39 8c 24 60 01 00 	cmp    %rcx,0x160(%rsp)
   140003cbd:	00 
   140003cbe:	0f 84 26 fe ff ff    	je     140003aea <_ZN13NaturalBinarymlES_+0x66a>
   140003cc4:	48 8b 39             	mov    (%rcx),%rdi
   140003cc7:	ba 18 00 00 00       	mov    $0x18,%edx
   140003ccc:	e8 ef 14 00 00       	call   1400051c0 <_ZdlPvy>
   140003cd1:	48 89 f9             	mov    %rdi,%rcx
   140003cd4:	eb e0                	jmp    140003cb6 <_ZN13NaturalBinarymlES_+0x836>
   140003cd6:	48 8b 29             	mov    (%rcx),%rbp
   140003cd9:	ba 18 00 00 00       	mov    $0x18,%edx
   140003cde:	e8 dd 14 00 00       	call   1400051c0 <_ZdlPvy>
   140003ce3:	48 89 e9             	mov    %rbp,%rcx
   140003ce6:	e9 c9 fe ff ff       	jmp    140003bb4 <_ZN13NaturalBinarymlES_+0x734>
   140003ceb:	48 8b 39             	mov    (%rcx),%rdi
   140003cee:	ba 18 00 00 00       	mov    $0x18,%edx
   140003cf3:	e8 c8 14 00 00       	call   1400051c0 <_ZdlPvy>
   140003cf8:	48 89 f9             	mov    %rdi,%rcx
   140003cfb:	e9 d6 fe ff ff       	jmp    140003bd6 <_ZN13NaturalBinarymlES_+0x756>

0000000140003d00 <_ZN13NaturalBinary12long_divsionES_PS_>:
   140003d00:	41 57                	push   %r15
   140003d02:	41 56                	push   %r14
   140003d04:	41 55                	push   %r13
   140003d06:	41 54                	push   %r12
   140003d08:	55                   	push   %rbp
   140003d09:	57                   	push   %rdi
   140003d0a:	56                   	push   %rsi
   140003d0b:	53                   	push   %rbx
   140003d0c:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
   140003d13:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140003d1a:	00 
   140003d1b:	0f 11 bc 24 b0 00 00 	movups %xmm7,0xb0(%rsp)
   140003d22:	00 
   140003d23:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140003d28:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140003d2d:	48 89 d3             	mov    %rdx,%rbx
   140003d30:	4c 89 c5             	mov    %r8,%rbp
   140003d33:	48 89 8c 24 10 01 00 	mov    %rcx,0x110(%rsp)
   140003d3a:	00 
   140003d3b:	4c 89 cf             	mov    %r9,%rdi
   140003d3e:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   140003d43:	e8 d8 db ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003d48:	4c 89 e1             	mov    %r12,%rcx
   140003d4b:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003d4f:	e8 cc db ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003d54:	48 39 df             	cmp    %rbx,%rdi
   140003d57:	74 0b                	je     140003d64 <_ZN13NaturalBinary12long_divsionES_PS_+0x64>
   140003d59:	48 89 da             	mov    %rbx,%rdx
   140003d5c:	48 89 f9             	mov    %rdi,%rcx
   140003d5f:	e8 6c da ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003d64:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140003d69:	48 8b 45 08          	mov    0x8(%rbp),%rax
   140003d6d:	4c 89 e9             	mov    %r13,%rcx
   140003d70:	0f b6 40 10          	movzbl 0x10(%rax),%eax
   140003d74:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003d78:	e8 03 d9 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003d7d:	48 8b 1f             	mov    (%rdi),%rbx
   140003d80:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140003d85:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003d8c:	00 00 
   140003d8e:	48 39 df             	cmp    %rbx,%rdi
   140003d91:	74 2f                	je     140003dc2 <_ZN13NaturalBinary12long_divsionES_PS_+0xc2>
   140003d93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003d98:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003d9d:	e8 16 14 00 00       	call   1400051b8 <_Znwy>
   140003da2:	48 89 c1             	mov    %rax,%rcx
   140003da5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003da9:	48 89 f2             	mov    %rsi,%rdx
   140003dac:	88 41 10             	mov    %al,0x10(%rcx)
   140003daf:	e8 64 14 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003db4:	48 8b 1b             	mov    (%rbx),%rbx
   140003db7:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140003dbd:	48 39 df             	cmp    %rbx,%rdi
   140003dc0:	75 d6                	jne    140003d98 <_ZN13NaturalBinary12long_divsionES_PS_+0x98>
   140003dc2:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
   140003dc9:	00 
   140003dca:	44 0f b6 44 24 40    	movzbl 0x40(%rsp),%r8d
   140003dd0:	45 31 c9             	xor    %r9d,%r9d
   140003dd3:	48 89 f2             	mov    %rsi,%rdx
   140003dd6:	4c 89 f9             	mov    %r15,%rcx
   140003dd9:	e8 e2 e3 ff ff       	call   1400021c0 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   140003dde:	4c 89 fa             	mov    %r15,%rdx
   140003de1:	4c 89 e1             	mov    %r12,%rcx
   140003de4:	e8 e7 d9 ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003de9:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003df0:	00 
   140003df1:	4c 39 fb             	cmp    %r15,%rbx
   140003df4:	74 1f                	je     140003e15 <_ZN13NaturalBinary12long_divsionES_PS_+0x115>
   140003df6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003dfd:	00 00 00 
   140003e00:	48 89 d9             	mov    %rbx,%rcx
   140003e03:	48 8b 1b             	mov    (%rbx),%rbx
   140003e06:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e0b:	e8 b0 13 00 00       	call   1400051c0 <_ZdlPvy>
   140003e10:	4c 39 fb             	cmp    %r15,%rbx
   140003e13:	75 eb                	jne    140003e00 <_ZN13NaturalBinary12long_divsionES_PS_+0x100>
   140003e15:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003e1a:	48 39 f3             	cmp    %rsi,%rbx
   140003e1d:	74 16                	je     140003e35 <_ZN13NaturalBinary12long_divsionES_PS_+0x135>
   140003e1f:	90                   	nop
   140003e20:	48 89 d9             	mov    %rbx,%rcx
   140003e23:	48 8b 1b             	mov    (%rbx),%rbx
   140003e26:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e2b:	e8 90 13 00 00       	call   1400051c0 <_ZdlPvy>
   140003e30:	48 39 f3             	cmp    %rsi,%rbx
   140003e33:	75 eb                	jne    140003e20 <_ZN13NaturalBinary12long_divsionES_PS_+0x120>
   140003e35:	31 db                	xor    %ebx,%ebx
   140003e37:	48 83 7d 10 01       	cmpq   $0x1,0x10(%rbp)
   140003e3c:	74 33                	je     140003e71 <_ZN13NaturalBinary12long_divsionES_PS_+0x171>
   140003e3e:	66 90                	xchg   %ax,%ax
   140003e40:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
   140003e45:	48 83 6c 24 30 01    	subq   $0x1,0x30(%rsp)
   140003e4b:	48 83 c3 01          	add    $0x1,%rbx
   140003e4f:	4c 89 f1             	mov    %r14,%rcx
   140003e52:	e8 b9 13 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140003e57:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e5c:	4c 89 f1             	mov    %r14,%rcx
   140003e5f:	e8 5c 13 00 00       	call   1400051c0 <_ZdlPvy>
   140003e64:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003e68:	48 83 e8 01          	sub    $0x1,%rax
   140003e6c:	48 39 c3             	cmp    %rax,%rbx
   140003e6f:	72 cf                	jb     140003e40 <_ZN13NaturalBinary12long_divsionES_PS_+0x140>
   140003e71:	48 83 7c 24 30 00    	cmpq   $0x0,0x30(%rsp)
   140003e77:	75 30                	jne    140003ea9 <_ZN13NaturalBinary12long_divsionES_PS_+0x1a9>
   140003e79:	31 d2                	xor    %edx,%edx
   140003e7b:	4c 89 f9             	mov    %r15,%rcx
   140003e7e:	e8 fd d7 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003e83:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003e88:	e8 2b 13 00 00       	call   1400051b8 <_Znwy>
   140003e8d:	48 89 c1             	mov    %rax,%rcx
   140003e90:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140003e97:	00 
   140003e98:	4c 89 e2             	mov    %r12,%rdx
   140003e9b:	88 41 10             	mov    %al,0x10(%rcx)
   140003e9e:	e8 75 13 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003ea3:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140003ea9:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140003eae:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140003eb3:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003eba:	00 00 
   140003ebc:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003ec0:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140003ec5:	4c 39 e3             	cmp    %r12,%rbx
   140003ec8:	74 30                	je     140003efa <_ZN13NaturalBinary12long_divsionES_PS_+0x1fa>
   140003eca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003ed0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003ed5:	e8 de 12 00 00       	call   1400051b8 <_Znwy>
   140003eda:	48 89 c1             	mov    %rax,%rcx
   140003edd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003ee1:	48 89 f2             	mov    %rsi,%rdx
   140003ee4:	88 41 10             	mov    %al,0x10(%rcx)
   140003ee7:	e8 2c 13 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003eec:	48 8b 1b             	mov    (%rbx),%rbx
   140003eef:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140003ef5:	4c 39 e3             	cmp    %r12,%rbx
   140003ef8:	75 d6                	jne    140003ed0 <_ZN13NaturalBinary12long_divsionES_PS_+0x1d0>
   140003efa:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   140003f01:	00 
   140003f02:	49 89 f0             	mov    %rsi,%r8
   140003f05:	4c 89 f9             	mov    %r15,%rcx
   140003f08:	e8 73 dc ff ff       	call   140001b80 <_ZN13NaturalBinaryplES_>
   140003f0d:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   140003f14:	00 
   140003f15:	4c 89 fa             	mov    %r15,%rdx
   140003f18:	e8 b3 d8 ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003f1d:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003f24:	00 
   140003f25:	66 49 0f 6e fd       	movq   %r13,%xmm7
   140003f2a:	66 0f 6c ff          	punpcklqdq %xmm7,%xmm7
   140003f2e:	4c 39 fb             	cmp    %r15,%rbx
   140003f31:	74 1a                	je     140003f4d <_ZN13NaturalBinary12long_divsionES_PS_+0x24d>
   140003f33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003f38:	48 89 d9             	mov    %rbx,%rcx
   140003f3b:	48 8b 1b             	mov    (%rbx),%rbx
   140003f3e:	ba 18 00 00 00       	mov    $0x18,%edx
   140003f43:	e8 78 12 00 00       	call   1400051c0 <_ZdlPvy>
   140003f48:	4c 39 fb             	cmp    %r15,%rbx
   140003f4b:	75 eb                	jne    140003f38 <_ZN13NaturalBinary12long_divsionES_PS_+0x238>
   140003f4d:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003f52:	48 39 f3             	cmp    %rsi,%rbx
   140003f55:	74 1e                	je     140003f75 <_ZN13NaturalBinary12long_divsionES_PS_+0x275>
   140003f57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003f5e:	00 00 
   140003f60:	48 89 d9             	mov    %rbx,%rcx
   140003f63:	48 8b 1b             	mov    (%rbx),%rbx
   140003f66:	ba 18 00 00 00       	mov    $0x18,%edx
   140003f6b:	e8 50 12 00 00       	call   1400051c0 <_ZdlPvy>
   140003f70:	48 39 f3             	cmp    %rsi,%rbx
   140003f73:	75 eb                	jne    140003f60 <_ZN13NaturalBinary12long_divsionES_PS_+0x260>
   140003f75:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140003f79:	0f 11 7c 24 40       	movups %xmm7,0x40(%rsp)
   140003f7e:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140003f85:	00 00 
   140003f87:	48 39 dd             	cmp    %rbx,%rbp
   140003f8a:	74 2e                	je     140003fba <_ZN13NaturalBinary12long_divsionES_PS_+0x2ba>
   140003f8c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003f90:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003f95:	e8 1e 12 00 00       	call   1400051b8 <_Znwy>
   140003f9a:	48 89 c1             	mov    %rax,%rcx
   140003f9d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003fa1:	4c 89 ea             	mov    %r13,%rdx
   140003fa4:	88 41 10             	mov    %al,0x10(%rcx)
   140003fa7:	e8 6c 12 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003fac:	48 8b 1b             	mov    (%rbx),%rbx
   140003faf:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140003fb5:	48 39 dd             	cmp    %rbx,%rbp
   140003fb8:	75 d6                	jne    140003f90 <_ZN13NaturalBinary12long_divsionES_PS_+0x290>
   140003fba:	4d 89 e8             	mov    %r13,%r8
   140003fbd:	4c 89 e2             	mov    %r12,%rdx
   140003fc0:	48 89 f1             	mov    %rsi,%rcx
   140003fc3:	e8 b8 f4 ff ff       	call   140003480 <_ZN13NaturalBinarymlES_>
   140003fc8:	49 89 f0             	mov    %rsi,%r8
   140003fcb:	48 89 fa             	mov    %rdi,%rdx
   140003fce:	4c 89 f9             	mov    %r15,%rcx
   140003fd1:	e8 ca de ff ff       	call   140001ea0 <_ZN13NaturalBinarymiES_>
   140003fd6:	4c 89 fa             	mov    %r15,%rdx
   140003fd9:	48 89 f9             	mov    %rdi,%rcx
   140003fdc:	e8 ef d7 ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003fe1:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140003fe8:	00 
   140003fe9:	4c 39 fb             	cmp    %r15,%rbx
   140003fec:	74 17                	je     140004005 <_ZN13NaturalBinary12long_divsionES_PS_+0x305>
   140003fee:	66 90                	xchg   %ax,%ax
   140003ff0:	48 89 d9             	mov    %rbx,%rcx
   140003ff3:	48 8b 1b             	mov    (%rbx),%rbx
   140003ff6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003ffb:	e8 c0 11 00 00       	call   1400051c0 <_ZdlPvy>
   140004000:	4c 39 fb             	cmp    %r15,%rbx
   140004003:	75 eb                	jne    140003ff0 <_ZN13NaturalBinary12long_divsionES_PS_+0x2f0>
   140004005:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   14000400a:	48 39 f3             	cmp    %rsi,%rbx
   14000400d:	74 16                	je     140004025 <_ZN13NaturalBinary12long_divsionES_PS_+0x325>
   14000400f:	90                   	nop
   140004010:	48 89 d9             	mov    %rbx,%rcx
   140004013:	48 8b 1b             	mov    (%rbx),%rbx
   140004016:	ba 18 00 00 00       	mov    $0x18,%edx
   14000401b:	e8 a0 11 00 00       	call   1400051c0 <_ZdlPvy>
   140004020:	48 39 f3             	cmp    %rsi,%rbx
   140004023:	75 eb                	jne    140004010 <_ZN13NaturalBinary12long_divsionES_PS_+0x310>
   140004025:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   14000402a:	4c 39 eb             	cmp    %r13,%rbx
   14000402d:	74 16                	je     140004045 <_ZN13NaturalBinary12long_divsionES_PS_+0x345>
   14000402f:	90                   	nop
   140004030:	48 89 d9             	mov    %rbx,%rcx
   140004033:	48 8b 1b             	mov    (%rbx),%rbx
   140004036:	ba 18 00 00 00       	mov    $0x18,%edx
   14000403b:	e8 80 11 00 00       	call   1400051c0 <_ZdlPvy>
   140004040:	4c 39 eb             	cmp    %r13,%rbx
   140004043:	75 eb                	jne    140004030 <_ZN13NaturalBinary12long_divsionES_PS_+0x330>
   140004045:	4c 89 f9             	mov    %r15,%rcx
   140004048:	e8 d3 d8 ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   14000404d:	4c 89 fa             	mov    %r15,%rdx
   140004050:	4c 89 e1             	mov    %r12,%rcx
   140004053:	e8 b8 e5 ff ff       	call   140002610 <_ZN13NaturalBinarygtES_>
   140004058:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   14000405f:	00 
   140004060:	41 89 c6             	mov    %eax,%r14d
   140004063:	4c 39 fb             	cmp    %r15,%rbx
   140004066:	74 1d                	je     140004085 <_ZN13NaturalBinary12long_divsionES_PS_+0x385>
   140004068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000406f:	00 
   140004070:	48 89 d9             	mov    %rbx,%rcx
   140004073:	48 8b 1b             	mov    (%rbx),%rbx
   140004076:	ba 18 00 00 00       	mov    $0x18,%edx
   14000407b:	e8 40 11 00 00       	call   1400051c0 <_ZdlPvy>
   140004080:	4c 39 fb             	cmp    %r15,%rbx
   140004083:	75 eb                	jne    140004070 <_ZN13NaturalBinary12long_divsionES_PS_+0x370>
   140004085:	45 84 f6             	test   %r14b,%r14b
   140004088:	0f 85 db fc ff ff    	jne    140003d69 <_ZN13NaturalBinary12long_divsionES_PS_+0x69>
   14000408e:	66 49 0f 6e c7       	movq   %r15,%xmm0
   140004093:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004097:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   14000409e:	00 00 00 00 00 
   1400040a3:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400040a7:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   1400040ae:	00 
   1400040af:	48 39 dd             	cmp    %rbx,%rbp
   1400040b2:	74 31                	je     1400040e5 <_ZN13NaturalBinary12long_divsionES_PS_+0x3e5>
   1400040b4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400040b8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400040bd:	e8 f6 10 00 00       	call   1400051b8 <_Znwy>
   1400040c2:	48 89 c1             	mov    %rax,%rcx
   1400040c5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400040c9:	4c 89 fa             	mov    %r15,%rdx
   1400040cc:	88 41 10             	mov    %al,0x10(%rcx)
   1400040cf:	e8 44 11 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400040d4:	48 8b 1b             	mov    (%rbx),%rbx
   1400040d7:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   1400040de:	00 01 
   1400040e0:	48 39 dd             	cmp    %rbx,%rbp
   1400040e3:	75 d3                	jne    1400040b8 <_ZN13NaturalBinary12long_divsionES_PS_+0x3b8>
   1400040e5:	4c 89 fa             	mov    %r15,%rdx
   1400040e8:	48 89 f9             	mov    %rdi,%rcx
   1400040eb:	e8 a0 e8 ff ff       	call   140002990 <_ZN13NaturalBinarygeES_>
   1400040f0:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400040f7:	00 
   1400040f8:	41 89 c6             	mov    %eax,%r14d
   1400040fb:	4c 39 fb             	cmp    %r15,%rbx
   1400040fe:	74 15                	je     140004115 <_ZN13NaturalBinary12long_divsionES_PS_+0x415>
   140004100:	48 89 d9             	mov    %rbx,%rcx
   140004103:	48 8b 1b             	mov    (%rbx),%rbx
   140004106:	ba 18 00 00 00       	mov    $0x18,%edx
   14000410b:	e8 b0 10 00 00       	call   1400051c0 <_ZdlPvy>
   140004110:	4c 39 fb             	cmp    %r15,%rbx
   140004113:	75 eb                	jne    140004100 <_ZN13NaturalBinary12long_divsionES_PS_+0x400>
   140004115:	45 84 f6             	test   %r14b,%r14b
   140004118:	75 4f                	jne    140004169 <_ZN13NaturalBinary12long_divsionES_PS_+0x469>
   14000411a:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000411f:	4c 39 e3             	cmp    %r12,%rbx
   140004122:	74 19                	je     14000413d <_ZN13NaturalBinary12long_divsionES_PS_+0x43d>
   140004124:	0f 1f 40 00          	nopl   0x0(%rax)
   140004128:	48 89 d9             	mov    %rbx,%rcx
   14000412b:	48 8b 1b             	mov    (%rbx),%rbx
   14000412e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004133:	e8 88 10 00 00       	call   1400051c0 <_ZdlPvy>
   140004138:	4c 39 e3             	cmp    %r12,%rbx
   14000413b:	75 eb                	jne    140004128 <_ZN13NaturalBinary12long_divsionES_PS_+0x428>
   14000413d:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140004144:	00 
   140004145:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   14000414c:	00 
   14000414d:	0f 10 bc 24 b0 00 00 	movups 0xb0(%rsp),%xmm7
   140004154:	00 
   140004155:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
   14000415c:	5b                   	pop    %rbx
   14000415d:	5e                   	pop    %rsi
   14000415e:	5f                   	pop    %rdi
   14000415f:	5d                   	pop    %rbp
   140004160:	41 5c                	pop    %r12
   140004162:	41 5d                	pop    %r13
   140004164:	41 5e                	pop    %r14
   140004166:	41 5f                	pop    %r15
   140004168:	c3                   	ret
   140004169:	66 49 0f 6e c5       	movq   %r13,%xmm0
   14000416e:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004172:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004179:	00 00 
   14000417b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000417f:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140004184:	48 39 dd             	cmp    %rbx,%rbp
   140004187:	74 2a                	je     1400041b3 <_ZN13NaturalBinary12long_divsionES_PS_+0x4b3>
   140004189:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000418e:	e8 25 10 00 00       	call   1400051b8 <_Znwy>
   140004193:	48 89 c1             	mov    %rax,%rcx
   140004196:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   14000419a:	4c 89 ea             	mov    %r13,%rdx
   14000419d:	88 41 10             	mov    %al,0x10(%rcx)
   1400041a0:	e8 73 10 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400041a5:	48 8b 1b             	mov    (%rbx),%rbx
   1400041a8:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400041ae:	48 39 dd             	cmp    %rbx,%rbp
   1400041b1:	75 d6                	jne    140004189 <_ZN13NaturalBinary12long_divsionES_PS_+0x489>
   1400041b3:	4d 89 e8             	mov    %r13,%r8
   1400041b6:	48 89 fa             	mov    %rdi,%rdx
   1400041b9:	4c 89 f9             	mov    %r15,%rcx
   1400041bc:	e8 df dc ff ff       	call   140001ea0 <_ZN13NaturalBinarymiES_>
   1400041c1:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   1400041c6:	4c 89 fa             	mov    %r15,%rdx
   1400041c9:	48 89 f9             	mov    %rdi,%rcx
   1400041cc:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400041d0:	e8 fb d5 ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400041d5:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400041dc:	00 
   1400041dd:	4c 39 fb             	cmp    %r15,%rbx
   1400041e0:	74 15                	je     1400041f7 <_ZN13NaturalBinary12long_divsionES_PS_+0x4f7>
   1400041e2:	48 89 d9             	mov    %rbx,%rcx
   1400041e5:	48 8b 1b             	mov    (%rbx),%rbx
   1400041e8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041ed:	e8 ce 0f 00 00       	call   1400051c0 <_ZdlPvy>
   1400041f2:	4c 39 fb             	cmp    %r15,%rbx
   1400041f5:	75 eb                	jne    1400041e2 <_ZN13NaturalBinary12long_divsionES_PS_+0x4e2>
   1400041f7:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400041fc:	4c 39 eb             	cmp    %r13,%rbx
   1400041ff:	74 15                	je     140004216 <_ZN13NaturalBinary12long_divsionES_PS_+0x516>
   140004201:	48 89 d9             	mov    %rbx,%rcx
   140004204:	48 8b 1b             	mov    (%rbx),%rbx
   140004207:	ba 18 00 00 00       	mov    $0x18,%edx
   14000420c:	e8 af 0f 00 00       	call   1400051c0 <_ZdlPvy>
   140004211:	4c 39 eb             	cmp    %r13,%rbx
   140004214:	75 eb                	jne    140004201 <_ZN13NaturalBinary12long_divsionES_PS_+0x501>
   140004216:	ba 01 00 00 00       	mov    $0x1,%edx
   14000421b:	4c 89 f9             	mov    %r15,%rcx
   14000421e:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140004223:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   14000422a:	00 00 
   14000422c:	e8 4f d4 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140004231:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004236:	e8 7d 0f 00 00       	call   1400051b8 <_Znwy>
   14000423b:	48 89 c1             	mov    %rax,%rcx
   14000423e:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140004245:	00 
   140004246:	48 89 f2             	mov    %rsi,%rdx
   140004249:	88 41 10             	mov    %al,0x10(%rcx)
   14000424c:	e8 c7 0f 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004251:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   140004258:	00 
   140004259:	49 89 f0             	mov    %rsi,%r8
   14000425c:	4c 89 f9             	mov    %r15,%rcx
   14000425f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140004265:	e8 16 d9 ff ff       	call   140001b80 <_ZN13NaturalBinaryplES_>
   14000426a:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   140004271:	00 
   140004272:	4c 89 fa             	mov    %r15,%rdx
   140004275:	e8 56 d5 ff ff       	call   1400017d0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000427a:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140004281:	00 
   140004282:	4c 39 fb             	cmp    %r15,%rbx
   140004285:	74 15                	je     14000429c <_ZN13NaturalBinary12long_divsionES_PS_+0x59c>
   140004287:	48 89 d9             	mov    %rbx,%rcx
   14000428a:	48 8b 1b             	mov    (%rbx),%rbx
   14000428d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004292:	e8 29 0f 00 00       	call   1400051c0 <_ZdlPvy>
   140004297:	4c 39 fb             	cmp    %r15,%rbx
   14000429a:	75 eb                	jne    140004287 <_ZN13NaturalBinary12long_divsionES_PS_+0x587>
   14000429c:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400042a1:	48 39 f3             	cmp    %rsi,%rbx
   1400042a4:	0f 84 70 fe ff ff    	je     14000411a <_ZN13NaturalBinary12long_divsionES_PS_+0x41a>
   1400042aa:	48 89 d9             	mov    %rbx,%rcx
   1400042ad:	48 8b 1b             	mov    (%rbx),%rbx
   1400042b0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042b5:	e8 06 0f 00 00       	call   1400051c0 <_ZdlPvy>
   1400042ba:	48 39 f3             	cmp    %rsi,%rbx
   1400042bd:	75 eb                	jne    1400042aa <_ZN13NaturalBinary12long_divsionES_PS_+0x5aa>
   1400042bf:	e9 56 fe ff ff       	jmp    14000411a <_ZN13NaturalBinary12long_divsionES_PS_+0x41a>
   1400042c4:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400042cb:	00 
   1400042cc:	48 89 c3             	mov    %rax,%rbx
   1400042cf:	4c 39 f9             	cmp    %r15,%rcx
   1400042d2:	74 15                	je     1400042e9 <_ZN13NaturalBinary12long_divsionES_PS_+0x5e9>
   1400042d4:	48 8b 39             	mov    (%rcx),%rdi
   1400042d7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042dc:	e8 df 0e 00 00       	call   1400051c0 <_ZdlPvy>
   1400042e1:	48 89 f9             	mov    %rdi,%rcx
   1400042e4:	eb e9                	jmp    1400042cf <_ZN13NaturalBinary12long_divsionES_PS_+0x5cf>
   1400042e6:	48 89 c3             	mov    %rax,%rbx
   1400042e9:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400042ee:	48 39 f1             	cmp    %rsi,%rcx
   1400042f1:	74 75                	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400042f3:	48 8b 39             	mov    (%rcx),%rdi
   1400042f6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042fb:	e8 c0 0e 00 00       	call   1400051c0 <_ZdlPvy>
   140004300:	48 89 f9             	mov    %rdi,%rcx
   140004303:	eb e9                	jmp    1400042ee <_ZN13NaturalBinary12long_divsionES_PS_+0x5ee>
   140004305:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000430a:	48 89 c3             	mov    %rax,%rbx
   14000430d:	48 39 f1             	cmp    %rsi,%rcx
   140004310:	74 56                	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004312:	48 8b 39             	mov    (%rcx),%rdi
   140004315:	ba 18 00 00 00       	mov    $0x18,%edx
   14000431a:	e8 a1 0e 00 00       	call   1400051c0 <_ZdlPvy>
   14000431f:	48 89 f9             	mov    %rdi,%rcx
   140004322:	eb e9                	jmp    14000430d <_ZN13NaturalBinary12long_divsionES_PS_+0x60d>
   140004324:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   14000432b:	00 
   14000432c:	48 89 c3             	mov    %rax,%rbx
   14000432f:	4c 39 f9             	cmp    %r15,%rcx
   140004332:	74 15                	je     140004349 <_ZN13NaturalBinary12long_divsionES_PS_+0x649>
   140004334:	48 8b 31             	mov    (%rcx),%rsi
   140004337:	ba 18 00 00 00       	mov    $0x18,%edx
   14000433c:	e8 7f 0e 00 00       	call   1400051c0 <_ZdlPvy>
   140004341:	48 89 f1             	mov    %rsi,%rcx
   140004344:	eb e9                	jmp    14000432f <_ZN13NaturalBinary12long_divsionES_PS_+0x62f>
   140004346:	48 89 c3             	mov    %rax,%rbx
   140004349:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000434e:	4c 39 e9             	cmp    %r13,%rcx
   140004351:	74 15                	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004353:	48 8b 31             	mov    (%rcx),%rsi
   140004356:	ba 18 00 00 00       	mov    $0x18,%edx
   14000435b:	e8 60 0e 00 00       	call   1400051c0 <_ZdlPvy>
   140004360:	48 89 f1             	mov    %rsi,%rcx
   140004363:	eb e9                	jmp    14000434e <_ZN13NaturalBinary12long_divsionES_PS_+0x64e>
   140004365:	48 89 c3             	mov    %rax,%rbx
   140004368:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000436d:	4c 39 e1             	cmp    %r12,%rcx
   140004370:	0f 84 c5 00 00 00    	je     14000443b <_ZN13NaturalBinary12long_divsionES_PS_+0x73b>
   140004376:	48 8b 31             	mov    (%rcx),%rsi
   140004379:	ba 18 00 00 00       	mov    $0x18,%edx
   14000437e:	e8 3d 0e 00 00       	call   1400051c0 <_ZdlPvy>
   140004383:	48 89 f1             	mov    %rsi,%rcx
   140004386:	eb e5                	jmp    14000436d <_ZN13NaturalBinary12long_divsionES_PS_+0x66d>
   140004388:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000438d:	48 89 c3             	mov    %rax,%rbx
   140004390:	4c 39 e9             	cmp    %r13,%rcx
   140004393:	74 d3                	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004395:	48 8b 31             	mov    (%rcx),%rsi
   140004398:	ba 18 00 00 00       	mov    $0x18,%edx
   14000439d:	e8 1e 0e 00 00       	call   1400051c0 <_ZdlPvy>
   1400043a2:	48 89 f1             	mov    %rsi,%rcx
   1400043a5:	eb e9                	jmp    140004390 <_ZN13NaturalBinary12long_divsionES_PS_+0x690>
   1400043a7:	48 89 c3             	mov    %rax,%rbx
   1400043aa:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400043af:	48 39 f1             	cmp    %rsi,%rcx
   1400043b2:	74 b4                	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   1400043b4:	48 8b 39             	mov    (%rcx),%rdi
   1400043b7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043bc:	e8 ff 0d 00 00       	call   1400051c0 <_ZdlPvy>
   1400043c1:	48 89 f9             	mov    %rdi,%rcx
   1400043c4:	eb e9                	jmp    1400043af <_ZN13NaturalBinary12long_divsionES_PS_+0x6af>
   1400043c6:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400043cd:	00 
   1400043ce:	48 89 c3             	mov    %rax,%rbx
   1400043d1:	4c 39 f9             	cmp    %r15,%rcx
   1400043d4:	0f 84 d1 00 00 00    	je     1400044ab <_ZN13NaturalBinary12long_divsionES_PS_+0x7ab>
   1400043da:	48 8b 39             	mov    (%rcx),%rdi
   1400043dd:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043e2:	e8 d9 0d 00 00       	call   1400051c0 <_ZdlPvy>
   1400043e7:	48 89 f9             	mov    %rdi,%rcx
   1400043ea:	eb e5                	jmp    1400043d1 <_ZN13NaturalBinary12long_divsionES_PS_+0x6d1>
   1400043ec:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400043f3:	00 
   1400043f4:	48 89 c3             	mov    %rax,%rbx
   1400043f7:	4c 39 f9             	cmp    %r15,%rcx
   1400043fa:	0f 84 68 ff ff ff    	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004400:	48 8b 31             	mov    (%rcx),%rsi
   140004403:	ba 18 00 00 00       	mov    $0x18,%edx
   140004408:	e8 b3 0d 00 00       	call   1400051c0 <_ZdlPvy>
   14000440d:	48 89 f1             	mov    %rsi,%rcx
   140004410:	eb e5                	jmp    1400043f7 <_ZN13NaturalBinary12long_divsionES_PS_+0x6f7>
   140004412:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004419:	00 
   14000441a:	48 89 c3             	mov    %rax,%rbx
   14000441d:	4c 39 f9             	cmp    %r15,%rcx
   140004420:	0f 84 42 ff ff ff    	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004426:	48 8b 31             	mov    (%rcx),%rsi
   140004429:	ba 18 00 00 00       	mov    $0x18,%edx
   14000442e:	e8 8d 0d 00 00       	call   1400051c0 <_ZdlPvy>
   140004433:	48 89 f1             	mov    %rsi,%rcx
   140004436:	eb e5                	jmp    14000441d <_ZN13NaturalBinary12long_divsionES_PS_+0x71d>
   140004438:	48 89 c3             	mov    %rax,%rbx
   14000443b:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140004442:	00 
   140004443:	48 8b 08             	mov    (%rax),%rcx
   140004446:	48 3b 8c 24 10 01 00 	cmp    0x110(%rsp),%rcx
   14000444d:	00 
   14000444e:	74 77                	je     1400044c7 <_ZN13NaturalBinary12long_divsionES_PS_+0x7c7>
   140004450:	48 8b 31             	mov    (%rcx),%rsi
   140004453:	ba 18 00 00 00       	mov    $0x18,%edx
   140004458:	e8 63 0d 00 00       	call   1400051c0 <_ZdlPvy>
   14000445d:	48 89 f1             	mov    %rsi,%rcx
   140004460:	eb e4                	jmp    140004446 <_ZN13NaturalBinary12long_divsionES_PS_+0x746>
   140004462:	48 89 c3             	mov    %rax,%rbx
   140004465:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000446a:	4c 39 e9             	cmp    %r13,%rcx
   14000446d:	0f 84 f5 fe ff ff    	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004473:	48 8b 31             	mov    (%rcx),%rsi
   140004476:	ba 18 00 00 00       	mov    $0x18,%edx
   14000447b:	e8 40 0d 00 00       	call   1400051c0 <_ZdlPvy>
   140004480:	48 89 f1             	mov    %rsi,%rcx
   140004483:	eb e5                	jmp    14000446a <_ZN13NaturalBinary12long_divsionES_PS_+0x76a>
   140004485:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000448a:	48 89 c3             	mov    %rax,%rbx
   14000448d:	4c 39 e9             	cmp    %r13,%rcx
   140004490:	0f 84 d2 fe ff ff    	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004496:	48 8b 31             	mov    (%rcx),%rsi
   140004499:	ba 18 00 00 00       	mov    $0x18,%edx
   14000449e:	e8 1d 0d 00 00       	call   1400051c0 <_ZdlPvy>
   1400044a3:	48 89 f1             	mov    %rsi,%rcx
   1400044a6:	eb e5                	jmp    14000448d <_ZN13NaturalBinary12long_divsionES_PS_+0x78d>
   1400044a8:	48 89 c3             	mov    %rax,%rbx
   1400044ab:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400044b0:	48 39 f1             	cmp    %rsi,%rcx
   1400044b3:	74 b0                	je     140004465 <_ZN13NaturalBinary12long_divsionES_PS_+0x765>
   1400044b5:	48 8b 39             	mov    (%rcx),%rdi
   1400044b8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044bd:	e8 fe 0c 00 00       	call   1400051c0 <_ZdlPvy>
   1400044c2:	48 89 f9             	mov    %rdi,%rcx
   1400044c5:	eb e9                	jmp    1400044b0 <_ZN13NaturalBinary12long_divsionES_PS_+0x7b0>
   1400044c7:	48 89 d9             	mov    %rbx,%rcx
   1400044ca:	e8 41 1e 00 00       	call   140006310 <_Unwind_Resume>
   1400044cf:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400044d6:	00 
   1400044d7:	48 89 c3             	mov    %rax,%rbx
   1400044da:	4c 39 f9             	cmp    %r15,%rcx
   1400044dd:	0f 84 c7 fe ff ff    	je     1400043aa <_ZN13NaturalBinary12long_divsionES_PS_+0x6aa>
   1400044e3:	48 8b 39             	mov    (%rcx),%rdi
   1400044e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044eb:	e8 d0 0c 00 00       	call   1400051c0 <_ZdlPvy>
   1400044f0:	48 89 f9             	mov    %rdi,%rcx
   1400044f3:	eb e5                	jmp    1400044da <_ZN13NaturalBinary12long_divsionES_PS_+0x7da>
   1400044f5:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400044fa:	48 89 c3             	mov    %rax,%rbx
   1400044fd:	48 39 f1             	cmp    %rsi,%rcx
   140004500:	0f 84 62 fe ff ff    	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004506:	48 8b 39             	mov    (%rcx),%rdi
   140004509:	ba 18 00 00 00       	mov    $0x18,%edx
   14000450e:	e8 ad 0c 00 00       	call   1400051c0 <_ZdlPvy>
   140004513:	48 89 f9             	mov    %rdi,%rcx
   140004516:	eb e5                	jmp    1400044fd <_ZN13NaturalBinary12long_divsionES_PS_+0x7fd>
   140004518:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000451d:	48 89 c3             	mov    %rax,%rbx
   140004520:	48 39 f1             	cmp    %rsi,%rcx
   140004523:	0f 84 3f fe ff ff    	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   140004529:	48 8b 39             	mov    (%rcx),%rdi
   14000452c:	ba 18 00 00 00       	mov    $0x18,%edx
   140004531:	e8 8a 0c 00 00       	call   1400051c0 <_ZdlPvy>
   140004536:	48 89 f9             	mov    %rdi,%rcx
   140004539:	eb e5                	jmp    140004520 <_ZN13NaturalBinary12long_divsionES_PS_+0x820>
   14000453b:	48 89 c3             	mov    %rax,%rbx
   14000453e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004543:	48 39 f1             	cmp    %rsi,%rcx
   140004546:	0f 84 1c fe ff ff    	je     140004368 <_ZN13NaturalBinary12long_divsionES_PS_+0x668>
   14000454c:	48 8b 39             	mov    (%rcx),%rdi
   14000454f:	ba 18 00 00 00       	mov    $0x18,%edx
   140004554:	e8 67 0c 00 00       	call   1400051c0 <_ZdlPvy>
   140004559:	48 89 f9             	mov    %rdi,%rcx
   14000455c:	eb e5                	jmp    140004543 <_ZN13NaturalBinary12long_divsionES_PS_+0x843>
   14000455e:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004565:	00 
   140004566:	48 89 c3             	mov    %rax,%rbx
   140004569:	4c 39 f9             	cmp    %r15,%rcx
   14000456c:	74 d0                	je     14000453e <_ZN13NaturalBinary12long_divsionES_PS_+0x83e>
   14000456e:	48 8b 39             	mov    (%rcx),%rdi
   140004571:	ba 18 00 00 00       	mov    $0x18,%edx
   140004576:	e8 45 0c 00 00       	call   1400051c0 <_ZdlPvy>
   14000457b:	48 89 f9             	mov    %rdi,%rcx
   14000457e:	eb e9                	jmp    140004569 <_ZN13NaturalBinary12long_divsionES_PS_+0x869>

0000000140004580 <_ZN13NaturalBinaryrmES_>:
   140004580:	41 55                	push   %r13
   140004582:	41 54                	push   %r12
   140004584:	55                   	push   %rbp
   140004585:	57                   	push   %rdi
   140004586:	56                   	push   %rsi
   140004587:	53                   	push   %rbx
   140004588:	48 83 ec 68          	sub    $0x68,%rsp
   14000458c:	4c 89 c7             	mov    %r8,%rdi
   14000458f:	48 89 cd             	mov    %rcx,%rbp
   140004592:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140004597:	49 89 d4             	mov    %rdx,%r12
   14000459a:	e8 81 d3 ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   14000459f:	48 83 7f 10 01       	cmpq   $0x1,0x10(%rdi)
   1400045a4:	0f 84 be 00 00 00    	je     140004668 <_ZN13NaturalBinaryrmES_+0xe8>
   1400045aa:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400045af:	48 8b 1f             	mov    (%rdi),%rbx
   1400045b2:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400045b9:	00 00 
   1400045bb:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400045bf:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400045c4:	48 39 df             	cmp    %rbx,%rdi
   1400045c7:	74 31                	je     1400045fa <_ZN13NaturalBinaryrmES_+0x7a>
   1400045c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400045d0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400045d5:	e8 de 0b 00 00       	call   1400051b8 <_Znwy>
   1400045da:	48 89 c1             	mov    %rax,%rcx
   1400045dd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400045e1:	48 89 f2             	mov    %rsi,%rdx
   1400045e4:	88 41 10             	mov    %al,0x10(%rcx)
   1400045e7:	e8 2c 0c 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400045ec:	48 8b 1b             	mov    (%rbx),%rbx
   1400045ef:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400045f5:	48 39 df             	cmp    %rbx,%rdi
   1400045f8:	75 d6                	jne    1400045d0 <_ZN13NaturalBinaryrmES_+0x50>
   1400045fa:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   1400045ff:	49 89 e9             	mov    %rbp,%r9
   140004602:	49 89 f0             	mov    %rsi,%r8
   140004605:	4c 89 e2             	mov    %r12,%rdx
   140004608:	48 89 f9             	mov    %rdi,%rcx
   14000460b:	e8 f0 f6 ff ff       	call   140003d00 <_ZN13NaturalBinary12long_divsionES_PS_>
   140004610:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004615:	48 39 fb             	cmp    %rdi,%rbx
   140004618:	74 1b                	je     140004635 <_ZN13NaturalBinaryrmES_+0xb5>
   14000461a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004620:	48 89 d9             	mov    %rbx,%rcx
   140004623:	48 8b 1b             	mov    (%rbx),%rbx
   140004626:	ba 18 00 00 00       	mov    $0x18,%edx
   14000462b:	e8 90 0b 00 00       	call   1400051c0 <_ZdlPvy>
   140004630:	48 39 fb             	cmp    %rdi,%rbx
   140004633:	75 eb                	jne    140004620 <_ZN13NaturalBinaryrmES_+0xa0>
   140004635:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000463a:	48 39 f3             	cmp    %rsi,%rbx
   14000463d:	74 16                	je     140004655 <_ZN13NaturalBinaryrmES_+0xd5>
   14000463f:	90                   	nop
   140004640:	48 89 d9             	mov    %rbx,%rcx
   140004643:	48 8b 1b             	mov    (%rbx),%rbx
   140004646:	ba 18 00 00 00       	mov    $0x18,%edx
   14000464b:	e8 70 0b 00 00       	call   1400051c0 <_ZdlPvy>
   140004650:	48 39 f3             	cmp    %rsi,%rbx
   140004653:	75 eb                	jne    140004640 <_ZN13NaturalBinaryrmES_+0xc0>
   140004655:	48 89 e8             	mov    %rbp,%rax
   140004658:	48 83 c4 68          	add    $0x68,%rsp
   14000465c:	5b                   	pop    %rbx
   14000465d:	5e                   	pop    %rsi
   14000465e:	5f                   	pop    %rdi
   14000465f:	5d                   	pop    %rbp
   140004660:	41 5c                	pop    %r12
   140004662:	41 5d                	pop    %r13
   140004664:	c3                   	ret
   140004665:	0f 1f 00             	nopl   (%rax)
   140004668:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000466d:	49 8b 1c 24          	mov    (%r12),%rbx
   140004671:	4c 8b 2f             	mov    (%rdi),%r13
   140004674:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000467b:	00 00 
   14000467d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004681:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004686:	49 39 dc             	cmp    %rbx,%r12
   140004689:	74 2f                	je     1400046ba <_ZN13NaturalBinaryrmES_+0x13a>
   14000468b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004690:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004695:	e8 1e 0b 00 00       	call   1400051b8 <_Znwy>
   14000469a:	48 89 c1             	mov    %rax,%rcx
   14000469d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400046a1:	48 89 f2             	mov    %rsi,%rdx
   1400046a4:	88 41 10             	mov    %al,0x10(%rcx)
   1400046a7:	e8 6c 0b 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400046ac:	48 8b 1b             	mov    (%rbx),%rbx
   1400046af:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400046b5:	49 39 dc             	cmp    %rbx,%r12
   1400046b8:	75 d6                	jne    140004690 <_ZN13NaturalBinaryrmES_+0x110>
   1400046ba:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   1400046bf:	45 0f b6 45 10       	movzbl 0x10(%r13),%r8d
   1400046c4:	49 89 e9             	mov    %rbp,%r9
   1400046c7:	48 89 f2             	mov    %rsi,%rdx
   1400046ca:	48 89 f9             	mov    %rdi,%rcx
   1400046cd:	e8 ee da ff ff       	call   1400021c0 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   1400046d2:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400046d7:	48 39 fb             	cmp    %rdi,%rbx
   1400046da:	74 19                	je     1400046f5 <_ZN13NaturalBinaryrmES_+0x175>
   1400046dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400046e0:	48 89 d9             	mov    %rbx,%rcx
   1400046e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400046e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046eb:	e8 d0 0a 00 00       	call   1400051c0 <_ZdlPvy>
   1400046f0:	48 39 fb             	cmp    %rdi,%rbx
   1400046f3:	75 eb                	jne    1400046e0 <_ZN13NaturalBinaryrmES_+0x160>
   1400046f5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400046fa:	48 39 f3             	cmp    %rsi,%rbx
   1400046fd:	0f 84 52 ff ff ff    	je     140004655 <_ZN13NaturalBinaryrmES_+0xd5>
   140004703:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004708:	48 89 d9             	mov    %rbx,%rcx
   14000470b:	48 8b 1b             	mov    (%rbx),%rbx
   14000470e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004713:	e8 a8 0a 00 00       	call   1400051c0 <_ZdlPvy>
   140004718:	48 39 f3             	cmp    %rsi,%rbx
   14000471b:	75 eb                	jne    140004708 <_ZN13NaturalBinaryrmES_+0x188>
   14000471d:	48 89 e8             	mov    %rbp,%rax
   140004720:	48 83 c4 68          	add    $0x68,%rsp
   140004724:	5b                   	pop    %rbx
   140004725:	5e                   	pop    %rsi
   140004726:	5f                   	pop    %rdi
   140004727:	5d                   	pop    %rbp
   140004728:	41 5c                	pop    %r12
   14000472a:	41 5d                	pop    %r13
   14000472c:	c3                   	ret
   14000472d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004732:	48 89 c3             	mov    %rax,%rbx
   140004735:	48 39 f1             	cmp    %rsi,%rcx
   140004738:	74 3e                	je     140004778 <_ZN13NaturalBinaryrmES_+0x1f8>
   14000473a:	48 8b 39             	mov    (%rcx),%rdi
   14000473d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004742:	e8 79 0a 00 00       	call   1400051c0 <_ZdlPvy>
   140004747:	48 89 f9             	mov    %rdi,%rcx
   14000474a:	eb e9                	jmp    140004735 <_ZN13NaturalBinaryrmES_+0x1b5>
   14000474c:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004751:	48 89 c3             	mov    %rax,%rbx
   140004754:	48 39 f1             	cmp    %rsi,%rcx
   140004757:	74 1f                	je     140004778 <_ZN13NaturalBinaryrmES_+0x1f8>
   140004759:	48 8b 39             	mov    (%rcx),%rdi
   14000475c:	ba 18 00 00 00       	mov    $0x18,%edx
   140004761:	e8 5a 0a 00 00       	call   1400051c0 <_ZdlPvy>
   140004766:	48 89 f9             	mov    %rdi,%rcx
   140004769:	eb e9                	jmp    140004754 <_ZN13NaturalBinaryrmES_+0x1d4>
   14000476b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004770:	48 89 c3             	mov    %rax,%rbx
   140004773:	48 39 f1             	cmp    %rsi,%rcx
   140004776:	75 42                	jne    1400047ba <_ZN13NaturalBinaryrmES_+0x23a>
   140004778:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   14000477c:	48 39 e9             	cmp    %rbp,%rcx
   14000477f:	74 31                	je     1400047b2 <_ZN13NaturalBinaryrmES_+0x232>
   140004781:	48 8b 31             	mov    (%rcx),%rsi
   140004784:	ba 18 00 00 00       	mov    $0x18,%edx
   140004789:	e8 32 0a 00 00       	call   1400051c0 <_ZdlPvy>
   14000478e:	48 89 f1             	mov    %rsi,%rcx
   140004791:	eb e9                	jmp    14000477c <_ZN13NaturalBinaryrmES_+0x1fc>
   140004793:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004798:	48 89 c3             	mov    %rax,%rbx
   14000479b:	48 39 f1             	cmp    %rsi,%rcx
   14000479e:	74 d8                	je     140004778 <_ZN13NaturalBinaryrmES_+0x1f8>
   1400047a0:	48 8b 39             	mov    (%rcx),%rdi
   1400047a3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400047a8:	e8 13 0a 00 00       	call   1400051c0 <_ZdlPvy>
   1400047ad:	48 89 f9             	mov    %rdi,%rcx
   1400047b0:	eb e9                	jmp    14000479b <_ZN13NaturalBinaryrmES_+0x21b>
   1400047b2:	48 89 d9             	mov    %rbx,%rcx
   1400047b5:	e8 56 1b 00 00       	call   140006310 <_Unwind_Resume>
   1400047ba:	48 8b 39             	mov    (%rcx),%rdi
   1400047bd:	ba 18 00 00 00       	mov    $0x18,%edx
   1400047c2:	e8 f9 09 00 00       	call   1400051c0 <_ZdlPvy>
   1400047c7:	48 89 f9             	mov    %rdi,%rcx
   1400047ca:	eb a7                	jmp    140004773 <_ZN13NaturalBinaryrmES_+0x1f3>
   1400047cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400047d0 <_ZN13NaturalBinarydvES_>:
   1400047d0:	41 55                	push   %r13
   1400047d2:	41 54                	push   %r12
   1400047d4:	55                   	push   %rbp
   1400047d5:	57                   	push   %rdi
   1400047d6:	56                   	push   %rsi
   1400047d7:	53                   	push   %rbx
   1400047d8:	48 83 ec 68          	sub    $0x68,%rsp
   1400047dc:	49 83 78 10 01       	cmpq   $0x1,0x10(%r8)
   1400047e1:	48 89 cd             	mov    %rcx,%rbp
   1400047e4:	49 89 d5             	mov    %rdx,%r13
   1400047e7:	4d 89 c4             	mov    %r8,%r12
   1400047ea:	0f 84 c8 00 00 00    	je     1400048b8 <_ZN13NaturalBinarydvES_+0xe8>
   1400047f0:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   1400047f5:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   1400047fa:	48 89 f9             	mov    %rdi,%rcx
   1400047fd:	e8 1e d1 ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140004802:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004807:	49 8b 1c 24          	mov    (%r12),%rbx
   14000480b:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004812:	00 00 
   140004814:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004818:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   14000481d:	49 39 dc             	cmp    %rbx,%r12
   140004820:	74 30                	je     140004852 <_ZN13NaturalBinarydvES_+0x82>
   140004822:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004828:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000482d:	e8 86 09 00 00       	call   1400051b8 <_Znwy>
   140004832:	48 89 c1             	mov    %rax,%rcx
   140004835:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004839:	48 89 f2             	mov    %rsi,%rdx
   14000483c:	88 41 10             	mov    %al,0x10(%rcx)
   14000483f:	e8 d4 09 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004844:	48 8b 1b             	mov    (%rbx),%rbx
   140004847:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   14000484d:	49 39 dc             	cmp    %rbx,%r12
   140004850:	75 d6                	jne    140004828 <_ZN13NaturalBinarydvES_+0x58>
   140004852:	49 89 f9             	mov    %rdi,%r9
   140004855:	49 89 f0             	mov    %rsi,%r8
   140004858:	4c 89 ea             	mov    %r13,%rdx
   14000485b:	48 89 e9             	mov    %rbp,%rcx
   14000485e:	e8 9d f4 ff ff       	call   140003d00 <_ZN13NaturalBinary12long_divsionES_PS_>
   140004863:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004868:	48 39 f3             	cmp    %rsi,%rbx
   14000486b:	74 18                	je     140004885 <_ZN13NaturalBinarydvES_+0xb5>
   14000486d:	0f 1f 00             	nopl   (%rax)
   140004870:	48 89 d9             	mov    %rbx,%rcx
   140004873:	48 8b 1b             	mov    (%rbx),%rbx
   140004876:	ba 18 00 00 00       	mov    $0x18,%edx
   14000487b:	e8 40 09 00 00       	call   1400051c0 <_ZdlPvy>
   140004880:	48 39 f3             	cmp    %rsi,%rbx
   140004883:	75 eb                	jne    140004870 <_ZN13NaturalBinarydvES_+0xa0>
   140004885:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000488a:	48 39 fb             	cmp    %rdi,%rbx
   14000488d:	74 16                	je     1400048a5 <_ZN13NaturalBinarydvES_+0xd5>
   14000488f:	90                   	nop
   140004890:	48 89 d9             	mov    %rbx,%rcx
   140004893:	48 8b 1b             	mov    (%rbx),%rbx
   140004896:	ba 18 00 00 00       	mov    $0x18,%edx
   14000489b:	e8 20 09 00 00       	call   1400051c0 <_ZdlPvy>
   1400048a0:	48 39 fb             	cmp    %rdi,%rbx
   1400048a3:	75 eb                	jne    140004890 <_ZN13NaturalBinarydvES_+0xc0>
   1400048a5:	48 89 e8             	mov    %rbp,%rax
   1400048a8:	48 83 c4 68          	add    $0x68,%rsp
   1400048ac:	5b                   	pop    %rbx
   1400048ad:	5e                   	pop    %rsi
   1400048ae:	5f                   	pop    %rdi
   1400048af:	5d                   	pop    %rbp
   1400048b0:	41 5c                	pop    %r12
   1400048b2:	41 5d                	pop    %r13
   1400048b4:	c3                   	ret
   1400048b5:	0f 1f 00             	nopl   (%rax)
   1400048b8:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   1400048bd:	48 8b 1a             	mov    (%rdx),%rbx
   1400048c0:	49 8b 38             	mov    (%r8),%rdi
   1400048c3:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400048ca:	00 00 
   1400048cc:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400048d1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400048d5:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   1400048da:	48 39 da             	cmp    %rbx,%rdx
   1400048dd:	74 2b                	je     14000490a <_ZN13NaturalBinarydvES_+0x13a>
   1400048df:	90                   	nop
   1400048e0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400048e5:	e8 ce 08 00 00       	call   1400051b8 <_Znwy>
   1400048ea:	48 89 c1             	mov    %rax,%rcx
   1400048ed:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400048f1:	48 89 f2             	mov    %rsi,%rdx
   1400048f4:	88 41 10             	mov    %al,0x10(%rcx)
   1400048f7:	e8 1c 09 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400048fc:	48 8b 1b             	mov    (%rbx),%rbx
   1400048ff:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140004905:	49 39 dd             	cmp    %rbx,%r13
   140004908:	75 d6                	jne    1400048e0 <_ZN13NaturalBinarydvES_+0x110>
   14000490a:	44 0f b6 47 10       	movzbl 0x10(%rdi),%r8d
   14000490f:	45 31 c9             	xor    %r9d,%r9d
   140004912:	48 89 f2             	mov    %rsi,%rdx
   140004915:	48 89 e9             	mov    %rbp,%rcx
   140004918:	e8 a3 d8 ff ff       	call   1400021c0 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   14000491d:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004922:	48 39 f3             	cmp    %rsi,%rbx
   140004925:	0f 84 7a ff ff ff    	je     1400048a5 <_ZN13NaturalBinarydvES_+0xd5>
   14000492b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004930:	48 89 d9             	mov    %rbx,%rcx
   140004933:	48 8b 1b             	mov    (%rbx),%rbx
   140004936:	ba 18 00 00 00       	mov    $0x18,%edx
   14000493b:	e8 80 08 00 00       	call   1400051c0 <_ZdlPvy>
   140004940:	48 39 f3             	cmp    %rsi,%rbx
   140004943:	75 eb                	jne    140004930 <_ZN13NaturalBinarydvES_+0x160>
   140004945:	48 89 e8             	mov    %rbp,%rax
   140004948:	48 83 c4 68          	add    $0x68,%rsp
   14000494c:	5b                   	pop    %rbx
   14000494d:	5e                   	pop    %rsi
   14000494e:	5f                   	pop    %rdi
   14000494f:	5d                   	pop    %rbp
   140004950:	41 5c                	pop    %r12
   140004952:	41 5d                	pop    %r13
   140004954:	c3                   	ret
   140004955:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000495a:	48 89 c3             	mov    %rax,%rbx
   14000495d:	48 39 f1             	cmp    %rsi,%rcx
   140004960:	74 48                	je     1400049aa <_ZN13NaturalBinarydvES_+0x1da>
   140004962:	48 8b 39             	mov    (%rcx),%rdi
   140004965:	ba 18 00 00 00       	mov    $0x18,%edx
   14000496a:	e8 51 08 00 00       	call   1400051c0 <_ZdlPvy>
   14000496f:	48 89 f9             	mov    %rdi,%rcx
   140004972:	eb e9                	jmp    14000495d <_ZN13NaturalBinarydvES_+0x18d>
   140004974:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004979:	48 89 c3             	mov    %rax,%rbx
   14000497c:	48 39 f1             	cmp    %rsi,%rcx
   14000497f:	74 29                	je     1400049aa <_ZN13NaturalBinarydvES_+0x1da>
   140004981:	48 8b 39             	mov    (%rcx),%rdi
   140004984:	ba 18 00 00 00       	mov    $0x18,%edx
   140004989:	e8 32 08 00 00       	call   1400051c0 <_ZdlPvy>
   14000498e:	48 89 f9             	mov    %rdi,%rcx
   140004991:	eb e9                	jmp    14000497c <_ZN13NaturalBinarydvES_+0x1ac>
   140004993:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004998:	48 89 c3             	mov    %rax,%rbx
   14000499b:	48 39 f1             	cmp    %rsi,%rcx
   14000499e:	75 31                	jne    1400049d1 <_ZN13NaturalBinarydvES_+0x201>
   1400049a0:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400049a5:	48 39 f9             	cmp    %rdi,%rcx
   1400049a8:	75 39                	jne    1400049e3 <_ZN13NaturalBinarydvES_+0x213>
   1400049aa:	48 89 d9             	mov    %rbx,%rcx
   1400049ad:	e8 5e 19 00 00       	call   140006310 <_Unwind_Resume>
   1400049b2:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400049b7:	48 89 c3             	mov    %rax,%rbx
   1400049ba:	48 39 f1             	cmp    %rsi,%rcx
   1400049bd:	74 e1                	je     1400049a0 <_ZN13NaturalBinarydvES_+0x1d0>
   1400049bf:	48 8b 29             	mov    (%rcx),%rbp
   1400049c2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049c7:	e8 f4 07 00 00       	call   1400051c0 <_ZdlPvy>
   1400049cc:	48 89 e9             	mov    %rbp,%rcx
   1400049cf:	eb e9                	jmp    1400049ba <_ZN13NaturalBinarydvES_+0x1ea>
   1400049d1:	48 8b 29             	mov    (%rcx),%rbp
   1400049d4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049d9:	e8 e2 07 00 00       	call   1400051c0 <_ZdlPvy>
   1400049de:	48 89 e9             	mov    %rbp,%rcx
   1400049e1:	eb b8                	jmp    14000499b <_ZN13NaturalBinarydvES_+0x1cb>
   1400049e3:	48 8b 31             	mov    (%rcx),%rsi
   1400049e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049eb:	e8 d0 07 00 00       	call   1400051c0 <_ZdlPvy>
   1400049f0:	48 89 f1             	mov    %rsi,%rcx
   1400049f3:	eb b0                	jmp    1400049a5 <_ZN13NaturalBinarydvES_+0x1d5>
   1400049f5:	90                   	nop
   1400049f6:	90                   	nop
   1400049f7:	90                   	nop
   1400049f8:	90                   	nop
   1400049f9:	90                   	nop
   1400049fa:	90                   	nop
   1400049fb:	90                   	nop
   1400049fc:	90                   	nop
   1400049fd:	90                   	nop
   1400049fe:	90                   	nop
   1400049ff:	90                   	nop

0000000140004a00 <__tcf_0>:
   140004a00:	48 8d 0d 69 76 00 00 	lea    0x7669(%rip),%rcx        # 14000c070 <_ZStL8__ioinit>
   140004a07:	e9 f4 07 00 00       	jmp    140005200 <_ZNSt8ios_base4InitD1Ev>
   140004a0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004a10 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0>:
   140004a10:	41 54                	push   %r12
   140004a12:	55                   	push   %rbp
   140004a13:	57                   	push   %rdi
   140004a14:	56                   	push   %rsi
   140004a15:	53                   	push   %rbx
   140004a16:	48 83 ec 40          	sub    $0x40,%rsp
   140004a1a:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140004a1f:	48 89 cd             	mov    %rcx,%rbp
   140004a22:	49 89 d4             	mov    %rdx,%r12
   140004a25:	4c 89 cf             	mov    %r9,%rdi
   140004a28:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004a2d:	4c 89 c3             	mov    %r8,%rbx
   140004a30:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004a37:	00 00 
   140004a39:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004a3d:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004a42:	4d 39 c1             	cmp    %r8,%r9
   140004a45:	74 7e                	je     140004ac5 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0+0xb5>
   140004a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004a4e:	00 00 
   140004a50:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004a55:	e8 5e 07 00 00       	call   1400051b8 <_Znwy>
   140004a5a:	48 89 c1             	mov    %rax,%rcx
   140004a5d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004a61:	48 89 f2             	mov    %rsi,%rdx
   140004a64:	88 41 10             	mov    %al,0x10(%rcx)
   140004a67:	e8 ac 07 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004a6c:	48 8b 1b             	mov    (%rbx),%rbx
   140004a6f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004a75:	48 39 df             	cmp    %rbx,%rdi
   140004a78:	75 d6                	jne    140004a50 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0+0x40>
   140004a7a:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140004a7f:	48 39 f2             	cmp    %rsi,%rdx
   140004a82:	74 41                	je     140004ac5 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0+0xb5>
   140004a84:	49 89 f0             	mov    %rsi,%r8
   140004a87:	4c 89 e1             	mov    %r12,%rcx
   140004a8a:	e8 91 07 00 00       	call   140005220 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140004a8f:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140004a94:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140004a99:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004aa0:	00 00 
   140004aa2:	48 01 45 10          	add    %rax,0x10(%rbp)
   140004aa6:	48 39 f3             	cmp    %rsi,%rbx
   140004aa9:	74 1a                	je     140004ac5 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0+0xb5>
   140004aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004ab0:	48 89 d9             	mov    %rbx,%rcx
   140004ab3:	48 8b 1b             	mov    (%rbx),%rbx
   140004ab6:	ba 18 00 00 00       	mov    $0x18,%edx
   140004abb:	e8 00 07 00 00       	call   1400051c0 <_ZdlPvy>
   140004ac0:	48 39 f3             	cmp    %rsi,%rbx
   140004ac3:	75 eb                	jne    140004ab0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0+0xa0>
   140004ac5:	48 83 c4 40          	add    $0x40,%rsp
   140004ac9:	5b                   	pop    %rbx
   140004aca:	5e                   	pop    %rsi
   140004acb:	5f                   	pop    %rdi
   140004acc:	5d                   	pop    %rbp
   140004acd:	41 5c                	pop    %r12
   140004acf:	c3                   	ret
   140004ad0:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004ad5:	48 89 c3             	mov    %rax,%rbx
   140004ad8:	48 39 f1             	cmp    %rsi,%rcx
   140004adb:	74 12                	je     140004aef <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0+0xdf>
   140004add:	48 8b 39             	mov    (%rcx),%rdi
   140004ae0:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ae5:	e8 d6 06 00 00       	call   1400051c0 <_ZdlPvy>
   140004aea:	48 89 f9             	mov    %rdi,%rcx
   140004aed:	eb e9                	jmp    140004ad8 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0+0xc8>
   140004aef:	48 89 d9             	mov    %rbx,%rcx
   140004af2:	e8 19 18 00 00       	call   140006310 <_Unwind_Resume>
   140004af7:	90                   	nop
   140004af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004aff:	00 

0000000140004b00 <_ZN15SignedMagnitudeC1Ex>:
   140004b00:	55                   	push   %rbp
   140004b01:	57                   	push   %rdi
   140004b02:	56                   	push   %rsi
   140004b03:	53                   	push   %rbx
   140004b04:	48 83 ec 48          	sub    $0x48,%rsp
   140004b08:	48 89 d3             	mov    %rdx,%rbx
   140004b0b:	48 89 ce             	mov    %rcx,%rsi
   140004b0e:	e8 8d ce ff ff       	call   1400019a0 <_ZN13NaturalBinaryC1Ev>
   140004b13:	31 c0                	xor    %eax,%eax
   140004b15:	48 85 db             	test   %rbx,%rbx
   140004b18:	79 08                	jns    140004b22 <_ZN15SignedMagnitudeC1Ex+0x22>
   140004b1a:	48 f7 db             	neg    %rbx
   140004b1d:	b8 01 00 00 00       	mov    $0x1,%eax
   140004b22:	88 46 1c             	mov    %al,0x1c(%rsi)
   140004b25:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140004b2a:	48 89 da             	mov    %rbx,%rdx
   140004b2d:	48 89 f9             	mov    %rdi,%rcx
   140004b30:	e8 7b ce ff ff       	call   1400019b0 <_ZN13NaturalBinaryC1Ex>
   140004b35:	48 39 fe             	cmp    %rdi,%rsi
   140004b38:	74 5b                	je     140004b95 <_ZN15SignedMagnitudeC1Ex+0x95>
   140004b3a:	48 8b 1e             	mov    (%rsi),%rbx
   140004b3d:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
   140004b42:	48 39 de             	cmp    %rbx,%rsi
   140004b45:	75 1c                	jne    140004b63 <_ZN15SignedMagnitudeC1Ex+0x63>
   140004b47:	eb 67                	jmp    140004bb0 <_ZN15SignedMagnitudeC1Ex+0xb0>
   140004b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004b50:	41 0f b6 40 10       	movzbl 0x10(%r8),%eax
   140004b55:	4d 8b 00             	mov    (%r8),%r8
   140004b58:	88 43 10             	mov    %al,0x10(%rbx)
   140004b5b:	48 8b 1b             	mov    (%rbx),%rbx
   140004b5e:	48 39 de             	cmp    %rbx,%rsi
   140004b61:	74 4d                	je     140004bb0 <_ZN15SignedMagnitudeC1Ex+0xb0>
   140004b63:	49 39 f8             	cmp    %rdi,%r8
   140004b66:	75 e8                	jne    140004b50 <_ZN15SignedMagnitudeC1Ex+0x50>
   140004b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004b6f:	00 
   140004b70:	48 89 dd             	mov    %rbx,%rbp
   140004b73:	48 8b 1b             	mov    (%rbx),%rbx
   140004b76:	48 83 6e 10 01       	subq   $0x1,0x10(%rsi)
   140004b7b:	48 89 e9             	mov    %rbp,%rcx
   140004b7e:	e8 8d 06 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140004b83:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b88:	48 89 e9             	mov    %rbp,%rcx
   140004b8b:	e8 30 06 00 00       	call   1400051c0 <_ZdlPvy>
   140004b90:	48 39 de             	cmp    %rbx,%rsi
   140004b93:	75 db                	jne    140004b70 <_ZN15SignedMagnitudeC1Ex+0x70>
   140004b95:	48 89 f9             	mov    %rdi,%rcx
   140004b98:	e8 a3 cf ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004b9d:	90                   	nop
   140004b9e:	48 83 c4 48          	add    $0x48,%rsp
   140004ba2:	5b                   	pop    %rbx
   140004ba3:	5e                   	pop    %rsi
   140004ba4:	5f                   	pop    %rdi
   140004ba5:	5d                   	pop    %rbp
   140004ba6:	c3                   	ret
   140004ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004bae:	00 00 
   140004bb0:	49 39 f8             	cmp    %rdi,%r8
   140004bb3:	74 e0                	je     140004b95 <_ZN15SignedMagnitudeC1Ex+0x95>
   140004bb5:	49 89 f9             	mov    %rdi,%r9
   140004bb8:	48 89 f2             	mov    %rsi,%rdx
   140004bbb:	48 89 f1             	mov    %rsi,%rcx
   140004bbe:	e8 4d fe ff ff       	call   140004a10 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0>
   140004bc3:	eb d0                	jmp    140004b95 <_ZN15SignedMagnitudeC1Ex+0x95>
   140004bc5:	48 89 f9             	mov    %rdi,%rcx
   140004bc8:	48 89 c3             	mov    %rax,%rbx
   140004bcb:	e8 70 cf ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004bd0:	48 89 f1             	mov    %rsi,%rcx
   140004bd3:	e8 68 cf ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004bd8:	48 89 d9             	mov    %rbx,%rcx
   140004bdb:	e8 30 17 00 00       	call   140006310 <_Unwind_Resume>
   140004be0:	48 89 c3             	mov    %rax,%rbx
   140004be3:	eb eb                	jmp    140004bd0 <_ZN15SignedMagnitudeC1Ex+0xd0>
   140004be5:	90                   	nop
   140004be6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004bed:	00 00 00 

0000000140004bf0 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb>:
   140004bf0:	41 54                	push   %r12
   140004bf2:	55                   	push   %rbp
   140004bf3:	57                   	push   %rdi
   140004bf4:	56                   	push   %rsi
   140004bf5:	53                   	push   %rbx
   140004bf6:	48 83 ec 70          	sub    $0x70,%rsp
   140004bfa:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140004bff:	48 89 ce             	mov    %rcx,%rsi
   140004c02:	44 89 c3             	mov    %r8d,%ebx
   140004c05:	48 89 d5             	mov    %rdx,%rbp
   140004c08:	45 89 cc             	mov    %r9d,%r12d
   140004c0b:	e8 90 cd ff ff       	call   1400019a0 <_ZN13NaturalBinaryC1Ev>
   140004c10:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140004c15:	89 5e 18             	mov    %ebx,0x18(%rsi)
   140004c18:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004c1c:	66 48 0f 6e f7       	movq   %rdi,%xmm6
   140004c21:	44 88 66 1c          	mov    %r12b,0x1c(%rsi)
   140004c25:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004c2c:	00 00 
   140004c2e:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140004c32:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140004c37:	48 39 dd             	cmp    %rbx,%rbp
   140004c3a:	74 2e                	je     140004c6a <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x7a>
   140004c3c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004c40:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004c45:	e8 6e 05 00 00       	call   1400051b8 <_Znwy>
   140004c4a:	48 89 c1             	mov    %rax,%rcx
   140004c4d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004c51:	48 89 fa             	mov    %rdi,%rdx
   140004c54:	88 41 10             	mov    %al,0x10(%rcx)
   140004c57:	e8 bc 05 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004c5c:	48 8b 1b             	mov    (%rbx),%rbx
   140004c5f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140004c65:	48 39 dd             	cmp    %rbx,%rbp
   140004c68:	75 d6                	jne    140004c40 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x50>
   140004c6a:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140004c6f:	48 89 fa             	mov    %rdi,%rdx
   140004c72:	48 89 e9             	mov    %rbp,%rcx
   140004c75:	e8 26 ce ff ff       	call   140001aa0 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE>
   140004c7a:	48 39 ee             	cmp    %rbp,%rsi
   140004c7d:	74 56                	je     140004cd5 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xe5>
   140004c7f:	48 8b 1e             	mov    (%rsi),%rbx
   140004c82:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
   140004c87:	48 39 de             	cmp    %rbx,%rsi
   140004c8a:	75 1f                	jne    140004cab <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xbb>
   140004c8c:	e9 87 00 00 00       	jmp    140004d18 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x128>
   140004c91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004c98:	41 0f b6 40 10       	movzbl 0x10(%r8),%eax
   140004c9d:	4d 8b 00             	mov    (%r8),%r8
   140004ca0:	88 43 10             	mov    %al,0x10(%rbx)
   140004ca3:	48 8b 1b             	mov    (%rbx),%rbx
   140004ca6:	48 39 de             	cmp    %rbx,%rsi
   140004ca9:	74 6d                	je     140004d18 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x128>
   140004cab:	49 39 e8             	cmp    %rbp,%r8
   140004cae:	75 e8                	jne    140004c98 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xa8>
   140004cb0:	49 89 dc             	mov    %rbx,%r12
   140004cb3:	48 8b 1b             	mov    (%rbx),%rbx
   140004cb6:	48 83 6e 10 01       	subq   $0x1,0x10(%rsi)
   140004cbb:	4c 89 e1             	mov    %r12,%rcx
   140004cbe:	e8 4d 05 00 00       	call   140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140004cc3:	ba 18 00 00 00       	mov    $0x18,%edx
   140004cc8:	4c 89 e1             	mov    %r12,%rcx
   140004ccb:	e8 f0 04 00 00       	call   1400051c0 <_ZdlPvy>
   140004cd0:	48 39 de             	cmp    %rbx,%rsi
   140004cd3:	75 db                	jne    140004cb0 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xc0>
   140004cd5:	48 89 e9             	mov    %rbp,%rcx
   140004cd8:	e8 63 ce ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004cdd:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004ce2:	48 39 fb             	cmp    %rdi,%rbx
   140004ce5:	74 1e                	je     140004d05 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x115>
   140004ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140004cee:	00 00 
   140004cf0:	48 89 d9             	mov    %rbx,%rcx
   140004cf3:	48 8b 1b             	mov    (%rbx),%rbx
   140004cf6:	ba 18 00 00 00       	mov    $0x18,%edx
   140004cfb:	e8 c0 04 00 00       	call   1400051c0 <_ZdlPvy>
   140004d00:	48 39 fb             	cmp    %rdi,%rbx
   140004d03:	75 eb                	jne    140004cf0 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x100>
   140004d05:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140004d0a:	48 83 c4 70          	add    $0x70,%rsp
   140004d0e:	5b                   	pop    %rbx
   140004d0f:	5e                   	pop    %rsi
   140004d10:	5f                   	pop    %rdi
   140004d11:	5d                   	pop    %rbp
   140004d12:	41 5c                	pop    %r12
   140004d14:	c3                   	ret
   140004d15:	0f 1f 00             	nopl   (%rax)
   140004d18:	49 39 e8             	cmp    %rbp,%r8
   140004d1b:	74 b8                	je     140004cd5 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xe5>
   140004d1d:	49 89 e9             	mov    %rbp,%r9
   140004d20:	48 89 f2             	mov    %rsi,%rdx
   140004d23:	48 89 f1             	mov    %rsi,%rcx
   140004d26:	e8 e5 fc ff ff       	call   140004a10 <_ZNSt7__cxx114listI4ByteSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_.isra.0>
   140004d2b:	eb a8                	jmp    140004cd5 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xe5>
   140004d2d:	48 89 e9             	mov    %rbp,%rcx
   140004d30:	48 89 c3             	mov    %rax,%rbx
   140004d33:	e8 08 ce ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004d38:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004d3d:	48 39 f9             	cmp    %rdi,%rcx
   140004d40:	74 36                	je     140004d78 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x188>
   140004d42:	48 8b 29             	mov    (%rcx),%rbp
   140004d45:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d4a:	e8 71 04 00 00       	call   1400051c0 <_ZdlPvy>
   140004d4f:	48 89 e9             	mov    %rbp,%rcx
   140004d52:	eb e9                	jmp    140004d3d <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x14d>
   140004d54:	48 89 c3             	mov    %rax,%rbx
   140004d57:	eb df                	jmp    140004d38 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x148>
   140004d59:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004d5e:	48 89 c3             	mov    %rax,%rbx
   140004d61:	48 39 f9             	cmp    %rdi,%rcx
   140004d64:	74 12                	je     140004d78 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x188>
   140004d66:	48 8b 29             	mov    (%rcx),%rbp
   140004d69:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d6e:	e8 4d 04 00 00       	call   1400051c0 <_ZdlPvy>
   140004d73:	48 89 e9             	mov    %rbp,%rcx
   140004d76:	eb e9                	jmp    140004d61 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x171>
   140004d78:	48 89 f1             	mov    %rsi,%rcx
   140004d7b:	e8 c0 cd ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004d80:	48 89 d9             	mov    %rbx,%rcx
   140004d83:	e8 88 15 00 00       	call   140006310 <_Unwind_Resume>
   140004d88:	90                   	nop
   140004d89:	90                   	nop
   140004d8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140004d90 <_ZN15SignedMagnitudeD1Ev>:
   140004d90:	e9 ab cd ff ff       	jmp    140001b40 <_ZN13NaturalBinaryD1Ev>
   140004d95:	90                   	nop
   140004d96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004d9d:	00 00 00 

0000000140004da0 <_ZN15SignedMagnitude7getByteB5cxx11Ev>:
   140004da0:	48 89 c8             	mov    %rcx,%rax
   140004da3:	c3                   	ret
   140004da4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004dab:	00 00 00 00 
   140004daf:	90                   	nop

0000000140004db0 <_ZN15SignedMagnitude11getNegativeEv>:
   140004db0:	0f b6 41 1c          	movzbl 0x1c(%rcx),%eax
   140004db4:	c3                   	ret
   140004db5:	90                   	nop
   140004db6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140004dbd:	00 00 00 

0000000140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>:
   140004dc0:	57                   	push   %rdi
   140004dc1:	56                   	push   %rsi
   140004dc2:	53                   	push   %rbx
   140004dc3:	48 83 ec 50          	sub    $0x50,%rsp
   140004dc7:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
   140004dcc:	48 89 d3             	mov    %rdx,%rbx
   140004dcf:	48 89 ce             	mov    %rcx,%rsi
   140004dd2:	48 89 f9             	mov    %rdi,%rcx
   140004dd5:	e8 66 dd ff ff       	call   140002b40 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   140004dda:	80 7b 1c 01          	cmpb   $0x1,0x1c(%rbx)
   140004dde:	4c 8d 0d bd 42 00 00 	lea    0x42bd(%rip),%r9        # 1400090a2 <.rdata+0x2>
   140004de5:	48 89 f9             	mov    %rdi,%rcx
   140004de8:	48 19 c0             	sbb    %rax,%rax
   140004deb:	48 83 c0 01          	add    $0x1,%rax
   140004def:	80 7b 1c 00          	cmpb   $0x0,0x1c(%rbx)
   140004df3:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140004df8:	48 8d 05 a1 42 00 00 	lea    0x42a1(%rip),%rax        # 1400090a0 <.rdata>
   140004dff:	4c 0f 45 c8          	cmovne %rax,%r9
   140004e03:	45 31 c0             	xor    %r8d,%r8d
   140004e06:	31 d2                	xor    %edx,%edx
   140004e08:	e8 43 04 00 00       	call   140005250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140004e0d:	48 8d 4e 10          	lea    0x10(%rsi),%rcx
   140004e11:	48 8d 78 10          	lea    0x10(%rax),%rdi
   140004e15:	48 89 c3             	mov    %rax,%rbx
   140004e18:	48 89 0e             	mov    %rcx,(%rsi)
   140004e1b:	48 8b 10             	mov    (%rax),%rdx
   140004e1e:	48 8b 40 08          	mov    0x8(%rax),%rax
   140004e22:	48 39 fa             	cmp    %rdi,%rdx
   140004e25:	74 49                	je     140004e70 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xb0>
   140004e27:	48 89 16             	mov    %rdx,(%rsi)
   140004e2a:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   140004e2e:	48 89 56 10          	mov    %rdx,0x10(%rsi)
   140004e32:	48 89 3b             	mov    %rdi,(%rbx)
   140004e35:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140004e3a:	48 89 46 08          	mov    %rax,0x8(%rsi)
   140004e3e:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
   140004e43:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
   140004e4a:	00 
   140004e4b:	c6 43 10 00          	movb   $0x0,0x10(%rbx)
   140004e4f:	48 39 c1             	cmp    %rax,%rcx
   140004e52:	74 0e                	je     140004e62 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xa2>
   140004e54:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140004e59:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004e5d:	e8 5e 03 00 00       	call   1400051c0 <_ZdlPvy>
   140004e62:	48 89 f0             	mov    %rsi,%rax
   140004e65:	48 83 c4 50          	add    $0x50,%rsp
   140004e69:	5b                   	pop    %rbx
   140004e6a:	5e                   	pop    %rsi
   140004e6b:	5f                   	pop    %rdi
   140004e6c:	c3                   	ret
   140004e6d:	0f 1f 00             	nopl   (%rax)
   140004e70:	4c 8d 40 01          	lea    0x1(%rax),%r8
   140004e74:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   140004e7b:	4d 85 c0             	test   %r8,%r8
   140004e7e:	74 b2                	je     140004e32 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x72>
   140004e80:	48 89 fa             	mov    %rdi,%rdx
   140004e83:	e8 b8 15 00 00       	call   140006440 <memcpy>
   140004e88:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140004e8c:	eb a4                	jmp    140004e32 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x72>
   140004e8e:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140004e93:	48 89 c3             	mov    %rax,%rbx
   140004e96:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
   140004e9b:	48 39 c1             	cmp    %rax,%rcx
   140004e9e:	74 0e                	je     140004eae <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xee>
   140004ea0:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140004ea5:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004ea9:	e8 12 03 00 00       	call   1400051c0 <_ZdlPvy>
   140004eae:	48 89 d9             	mov    %rbx,%rcx
   140004eb1:	e8 5a 14 00 00       	call   140006310 <_Unwind_Resume>
   140004eb6:	90                   	nop
   140004eb7:	90                   	nop
   140004eb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140004ebf:	00 

0000000140004ec0 <_ZN15SignedMagnitude10mulDivSignES_>:
   140004ec0:	0f b6 42 1c          	movzbl 0x1c(%rdx),%eax
   140004ec4:	22 41 1c             	and    0x1c(%rcx),%al
   140004ec7:	83 f0 01             	xor    $0x1,%eax
   140004eca:	c3                   	ret
   140004ecb:	90                   	nop
   140004ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004ed0 <_ZN15SignedMagnitude7addSignES_>:
   140004ed0:	41 54                	push   %r12
   140004ed2:	55                   	push   %rbp
   140004ed3:	57                   	push   %rdi
   140004ed4:	56                   	push   %rsi
   140004ed5:	53                   	push   %rbx
   140004ed6:	48 83 ec 40          	sub    $0x40,%rsp
   140004eda:	48 8b 1a             	mov    (%rdx),%rbx
   140004edd:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140004ee2:	48 89 cd             	mov    %rcx,%rbp
   140004ee5:	48 89 d6             	mov    %rdx,%rsi
   140004ee8:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004eef:	00 00 
   140004ef1:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140004ef6:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004efa:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004eff:	48 39 da             	cmp    %rbx,%rdx
   140004f02:	74 2e                	je     140004f32 <_ZN15SignedMagnitude7addSignES_+0x62>
   140004f04:	0f 1f 40 00          	nopl   0x0(%rax)
   140004f08:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004f0d:	e8 a6 02 00 00       	call   1400051b8 <_Znwy>
   140004f12:	48 89 c1             	mov    %rax,%rcx
   140004f15:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004f19:	48 89 fa             	mov    %rdi,%rdx
   140004f1c:	88 41 10             	mov    %al,0x10(%rcx)
   140004f1f:	e8 f4 02 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004f24:	48 8b 1b             	mov    (%rbx),%rbx
   140004f27:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004f2d:	48 39 de             	cmp    %rbx,%rsi
   140004f30:	75 d6                	jne    140004f08 <_ZN15SignedMagnitude7addSignES_+0x38>
   140004f32:	48 89 fa             	mov    %rdi,%rdx
   140004f35:	48 89 e9             	mov    %rbp,%rcx
   140004f38:	e8 d3 d6 ff ff       	call   140002610 <_ZN13NaturalBinarygtES_>
   140004f3d:	41 89 c4             	mov    %eax,%r12d
   140004f40:	48 89 f9             	mov    %rdi,%rcx
   140004f43:	e8 f8 cb ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004f48:	45 84 e4             	test   %r12b,%r12b
   140004f4b:	74 13                	je     140004f60 <_ZN15SignedMagnitude7addSignES_+0x90>
   140004f4d:	44 0f b6 65 1c       	movzbl 0x1c(%rbp),%r12d
   140004f52:	44 89 e0             	mov    %r12d,%eax
   140004f55:	48 83 c4 40          	add    $0x40,%rsp
   140004f59:	5b                   	pop    %rbx
   140004f5a:	5e                   	pop    %rsi
   140004f5b:	5f                   	pop    %rdi
   140004f5c:	5d                   	pop    %rbp
   140004f5d:	41 5c                	pop    %r12
   140004f5f:	c3                   	ret
   140004f60:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140004f65:	48 8b 1e             	mov    (%rsi),%rbx
   140004f68:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004f6f:	00 00 
   140004f71:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004f75:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004f7a:	48 39 de             	cmp    %rbx,%rsi
   140004f7d:	74 2b                	je     140004faa <_ZN15SignedMagnitude7addSignES_+0xda>
   140004f7f:	90                   	nop
   140004f80:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004f85:	e8 2e 02 00 00       	call   1400051b8 <_Znwy>
   140004f8a:	48 89 c1             	mov    %rax,%rcx
   140004f8d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004f91:	48 89 fa             	mov    %rdi,%rdx
   140004f94:	88 41 10             	mov    %al,0x10(%rcx)
   140004f97:	e8 7c 02 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004f9c:	48 8b 1b             	mov    (%rbx),%rbx
   140004f9f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004fa5:	48 39 de             	cmp    %rbx,%rsi
   140004fa8:	75 d6                	jne    140004f80 <_ZN15SignedMagnitude7addSignES_+0xb0>
   140004faa:	48 89 fa             	mov    %rdi,%rdx
   140004fad:	48 89 e9             	mov    %rbp,%rcx
   140004fb0:	e8 4b d7 ff ff       	call   140002700 <_ZN13NaturalBinaryeqES_>
   140004fb5:	89 c3                	mov    %eax,%ebx
   140004fb7:	48 89 f9             	mov    %rdi,%rcx
   140004fba:	e8 81 cb ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004fbf:	84 db                	test   %bl,%bl
   140004fc1:	75 8f                	jne    140004f52 <_ZN15SignedMagnitude7addSignES_+0x82>
   140004fc3:	44 0f b6 66 1c       	movzbl 0x1c(%rsi),%r12d
   140004fc8:	eb 88                	jmp    140004f52 <_ZN15SignedMagnitude7addSignES_+0x82>
   140004fca:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004fcf:	48 89 c3             	mov    %rax,%rbx
   140004fd2:	48 39 f9             	cmp    %rdi,%rcx
   140004fd5:	74 1d                	je     140004ff4 <_ZN15SignedMagnitude7addSignES_+0x124>
   140004fd7:	48 8b 31             	mov    (%rcx),%rsi
   140004fda:	ba 18 00 00 00       	mov    $0x18,%edx
   140004fdf:	e8 dc 01 00 00       	call   1400051c0 <_ZdlPvy>
   140004fe4:	48 89 f1             	mov    %rsi,%rcx
   140004fe7:	eb e9                	jmp    140004fd2 <_ZN15SignedMagnitude7addSignES_+0x102>
   140004fe9:	48 89 f9             	mov    %rdi,%rcx
   140004fec:	48 89 c3             	mov    %rax,%rbx
   140004fef:	e8 4c cb ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140004ff4:	48 89 d9             	mov    %rbx,%rcx
   140004ff7:	e8 14 13 00 00       	call   140006310 <_Unwind_Resume>
   140004ffc:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005001:	48 89 c3             	mov    %rax,%rbx
   140005004:	48 39 f9             	cmp    %rdi,%rcx
   140005007:	74 eb                	je     140004ff4 <_ZN15SignedMagnitude7addSignES_+0x124>
   140005009:	48 8b 31             	mov    (%rcx),%rsi
   14000500c:	ba 18 00 00 00       	mov    $0x18,%edx
   140005011:	e8 aa 01 00 00       	call   1400051c0 <_ZdlPvy>
   140005016:	48 89 f1             	mov    %rsi,%rcx
   140005019:	eb e9                	jmp    140005004 <_ZN15SignedMagnitude7addSignES_+0x134>
   14000501b:	eb cc                	jmp    140004fe9 <_ZN15SignedMagnitude7addSignES_+0x119>
   14000501d:	90                   	nop
   14000501e:	66 90                	xchg   %ax,%ax

0000000140005020 <_ZN15SignedMagnitude7subSignES_>:
   140005020:	41 54                	push   %r12
   140005022:	55                   	push   %rbp
   140005023:	57                   	push   %rdi
   140005024:	56                   	push   %rsi
   140005025:	53                   	push   %rbx
   140005026:	48 83 ec 40          	sub    $0x40,%rsp
   14000502a:	48 8b 1a             	mov    (%rdx),%rbx
   14000502d:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005032:	48 89 cd             	mov    %rcx,%rbp
   140005035:	48 89 d6             	mov    %rdx,%rsi
   140005038:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000503f:	00 00 
   140005041:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140005046:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000504a:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   14000504f:	48 39 da             	cmp    %rbx,%rdx
   140005052:	74 2e                	je     140005082 <_ZN15SignedMagnitude7subSignES_+0x62>
   140005054:	0f 1f 40 00          	nopl   0x0(%rax)
   140005058:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000505d:	e8 56 01 00 00       	call   1400051b8 <_Znwy>
   140005062:	48 89 c1             	mov    %rax,%rcx
   140005065:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005069:	48 89 fa             	mov    %rdi,%rdx
   14000506c:	88 41 10             	mov    %al,0x10(%rcx)
   14000506f:	e8 a4 01 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005074:	48 8b 1b             	mov    (%rbx),%rbx
   140005077:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   14000507d:	48 39 de             	cmp    %rbx,%rsi
   140005080:	75 d6                	jne    140005058 <_ZN15SignedMagnitude7subSignES_+0x38>
   140005082:	48 89 fa             	mov    %rdi,%rdx
   140005085:	48 89 e9             	mov    %rbp,%rcx
   140005088:	e8 83 d5 ff ff       	call   140002610 <_ZN13NaturalBinarygtES_>
   14000508d:	41 89 c4             	mov    %eax,%r12d
   140005090:	48 89 f9             	mov    %rdi,%rcx
   140005093:	e8 a8 ca ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140005098:	45 84 e4             	test   %r12b,%r12b
   14000509b:	74 13                	je     1400050b0 <_ZN15SignedMagnitude7subSignES_+0x90>
   14000509d:	44 0f b6 65 1c       	movzbl 0x1c(%rbp),%r12d
   1400050a2:	44 89 e0             	mov    %r12d,%eax
   1400050a5:	48 83 c4 40          	add    $0x40,%rsp
   1400050a9:	5b                   	pop    %rbx
   1400050aa:	5e                   	pop    %rsi
   1400050ab:	5f                   	pop    %rdi
   1400050ac:	5d                   	pop    %rbp
   1400050ad:	41 5c                	pop    %r12
   1400050af:	c3                   	ret
   1400050b0:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   1400050b5:	48 8b 1e             	mov    (%rsi),%rbx
   1400050b8:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400050bf:	00 00 
   1400050c1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400050c5:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400050ca:	48 39 de             	cmp    %rbx,%rsi
   1400050cd:	74 2b                	je     1400050fa <_ZN15SignedMagnitude7subSignES_+0xda>
   1400050cf:	90                   	nop
   1400050d0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400050d5:	e8 de 00 00 00       	call   1400051b8 <_Znwy>
   1400050da:	48 89 c1             	mov    %rax,%rcx
   1400050dd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400050e1:	48 89 fa             	mov    %rdi,%rdx
   1400050e4:	88 41 10             	mov    %al,0x10(%rcx)
   1400050e7:	e8 2c 01 00 00       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400050ec:	48 8b 1b             	mov    (%rbx),%rbx
   1400050ef:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400050f5:	48 39 de             	cmp    %rbx,%rsi
   1400050f8:	75 d6                	jne    1400050d0 <_ZN15SignedMagnitude7subSignES_+0xb0>
   1400050fa:	48 89 fa             	mov    %rdi,%rdx
   1400050fd:	48 89 e9             	mov    %rbp,%rcx
   140005100:	e8 fb d5 ff ff       	call   140002700 <_ZN13NaturalBinaryeqES_>
   140005105:	89 c3                	mov    %eax,%ebx
   140005107:	48 89 f9             	mov    %rdi,%rcx
   14000510a:	e8 31 ca ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   14000510f:	84 db                	test   %bl,%bl
   140005111:	75 8f                	jne    1400050a2 <_ZN15SignedMagnitude7subSignES_+0x82>
   140005113:	44 0f b6 66 1c       	movzbl 0x1c(%rsi),%r12d
   140005118:	41 83 f4 01          	xor    $0x1,%r12d
   14000511c:	eb 84                	jmp    1400050a2 <_ZN15SignedMagnitude7subSignES_+0x82>
   14000511e:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005123:	48 89 c3             	mov    %rax,%rbx
   140005126:	48 39 f9             	cmp    %rdi,%rcx
   140005129:	74 1d                	je     140005148 <_ZN15SignedMagnitude7subSignES_+0x128>
   14000512b:	48 8b 31             	mov    (%rcx),%rsi
   14000512e:	ba 18 00 00 00       	mov    $0x18,%edx
   140005133:	e8 88 00 00 00       	call   1400051c0 <_ZdlPvy>
   140005138:	48 89 f1             	mov    %rsi,%rcx
   14000513b:	eb e9                	jmp    140005126 <_ZN15SignedMagnitude7subSignES_+0x106>
   14000513d:	48 89 f9             	mov    %rdi,%rcx
   140005140:	48 89 c3             	mov    %rax,%rbx
   140005143:	e8 f8 c9 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140005148:	48 89 d9             	mov    %rbx,%rcx
   14000514b:	e8 c0 11 00 00       	call   140006310 <_Unwind_Resume>
   140005150:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005155:	48 89 c3             	mov    %rax,%rbx
   140005158:	48 39 f9             	cmp    %rdi,%rcx
   14000515b:	74 eb                	je     140005148 <_ZN15SignedMagnitude7subSignES_+0x128>
   14000515d:	48 8b 31             	mov    (%rcx),%rsi
   140005160:	ba 18 00 00 00       	mov    $0x18,%edx
   140005165:	e8 56 00 00 00       	call   1400051c0 <_ZdlPvy>
   14000516a:	48 89 f1             	mov    %rsi,%rcx
   14000516d:	eb e9                	jmp    140005158 <_ZN15SignedMagnitude7subSignES_+0x138>
   14000516f:	eb cc                	jmp    14000513d <_ZN15SignedMagnitude7subSignES_+0x11d>
   140005171:	90                   	nop
   140005172:	90                   	nop
   140005173:	90                   	nop
   140005174:	90                   	nop
   140005175:	90                   	nop
   140005176:	90                   	nop
   140005177:	90                   	nop
   140005178:	90                   	nop
   140005179:	90                   	nop
   14000517a:	90                   	nop
   14000517b:	90                   	nop
   14000517c:	90                   	nop
   14000517d:	90                   	nop
   14000517e:	90                   	nop
   14000517f:	90                   	nop

0000000140005180 <__gxx_personality_seh0>:
   140005180:	ff 25 0e 84 00 00    	jmp    *0x840e(%rip)        # 14000d594 <__imp___gxx_personality_seh0>
   140005186:	90                   	nop
   140005187:	90                   	nop

0000000140005188 <__cxa_throw>:
   140005188:	ff 25 fe 83 00 00    	jmp    *0x83fe(%rip)        # 14000d58c <__imp___cxa_throw>
   14000518e:	90                   	nop
   14000518f:	90                   	nop

0000000140005190 <__cxa_rethrow>:
   140005190:	ff 25 ee 83 00 00    	jmp    *0x83ee(%rip)        # 14000d584 <__imp___cxa_rethrow>
   140005196:	90                   	nop
   140005197:	90                   	nop

0000000140005198 <__cxa_free_exception>:
   140005198:	ff 25 de 83 00 00    	jmp    *0x83de(%rip)        # 14000d57c <__imp___cxa_free_exception>
   14000519e:	90                   	nop
   14000519f:	90                   	nop

00000001400051a0 <__cxa_end_catch>:
   1400051a0:	ff 25 ce 83 00 00    	jmp    *0x83ce(%rip)        # 14000d574 <__imp___cxa_end_catch>
   1400051a6:	90                   	nop
   1400051a7:	90                   	nop

00000001400051a8 <__cxa_begin_catch>:
   1400051a8:	ff 25 be 83 00 00    	jmp    *0x83be(%rip)        # 14000d56c <__imp___cxa_begin_catch>
   1400051ae:	90                   	nop
   1400051af:	90                   	nop

00000001400051b0 <__cxa_allocate_exception>:
   1400051b0:	ff 25 ae 83 00 00    	jmp    *0x83ae(%rip)        # 14000d564 <__imp___cxa_allocate_exception>
   1400051b6:	90                   	nop
   1400051b7:	90                   	nop

00000001400051b8 <_Znwy>:
   1400051b8:	ff 25 9e 83 00 00    	jmp    *0x839e(%rip)        # 14000d55c <__imp__Znwy>
   1400051be:	90                   	nop
   1400051bf:	90                   	nop

00000001400051c0 <_ZdlPvy>:
   1400051c0:	ff 25 8e 83 00 00    	jmp    *0x838e(%rip)        # 14000d554 <__imp__ZdlPvy>
   1400051c6:	90                   	nop
   1400051c7:	90                   	nop

00000001400051c8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   1400051c8:	ff 25 46 83 00 00    	jmp    *0x8346(%rip)        # 14000d514 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400051ce:	90                   	nop
   1400051cf:	90                   	nop

00000001400051d0 <_ZSt20__throw_length_errorPKc>:
   1400051d0:	ff 25 2e 83 00 00    	jmp    *0x832e(%rip)        # 14000d504 <__imp__ZSt20__throw_length_errorPKc>
   1400051d6:	90                   	nop
   1400051d7:	90                   	nop

00000001400051d8 <_ZSt16__throw_bad_castv>:
   1400051d8:	ff 25 1e 83 00 00    	jmp    *0x831e(%rip)        # 14000d4fc <__imp__ZSt16__throw_bad_castv>
   1400051de:	90                   	nop
   1400051df:	90                   	nop

00000001400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>:
   1400051e0:	ff 25 0e 83 00 00    	jmp    *0x830e(%rip)        # 14000d4f4 <__imp__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400051e6:	90                   	nop
   1400051e7:	90                   	nop

00000001400051e8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>:
   1400051e8:	ff 25 fe 82 00 00    	jmp    *0x82fe(%rip)        # 14000d4ec <__imp__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   1400051ee:	90                   	nop
   1400051ef:	90                   	nop

00000001400051f0 <_ZNSt8ios_baseD2Ev>:
   1400051f0:	ff 25 ee 82 00 00    	jmp    *0x82ee(%rip)        # 14000d4e4 <__imp__ZNSt8ios_baseD2Ev>
   1400051f6:	90                   	nop
   1400051f7:	90                   	nop

00000001400051f8 <_ZNSt8ios_baseC2Ev>:
   1400051f8:	ff 25 de 82 00 00    	jmp    *0x82de(%rip)        # 14000d4dc <__imp__ZNSt8ios_baseC2Ev>
   1400051fe:	90                   	nop
   1400051ff:	90                   	nop

0000000140005200 <_ZNSt8ios_base4InitD1Ev>:
   140005200:	ff 25 ce 82 00 00    	jmp    *0x82ce(%rip)        # 14000d4d4 <__imp__ZNSt8ios_base4InitD1Ev>
   140005206:	90                   	nop
   140005207:	90                   	nop

0000000140005208 <_ZNSt8ios_base4InitC1Ev>:
   140005208:	ff 25 be 82 00 00    	jmp    *0x82be(%rip)        # 14000d4cc <__imp__ZNSt8ios_base4InitC1Ev>
   14000520e:	90                   	nop
   14000520f:	90                   	nop

0000000140005210 <_ZNSt8__detail15_List_node_base9_M_unhookEv>:
   140005210:	ff 25 ae 82 00 00    	jmp    *0x82ae(%rip)        # 14000d4c4 <__imp__ZNSt8__detail15_List_node_base9_M_unhookEv>
   140005216:	90                   	nop
   140005217:	90                   	nop

0000000140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>:
   140005218:	ff 25 9e 82 00 00    	jmp    *0x829e(%rip)        # 14000d4bc <__imp__ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000521e:	90                   	nop
   14000521f:	90                   	nop

0000000140005220 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>:
   140005220:	ff 25 8e 82 00 00    	jmp    *0x828e(%rip)        # 14000d4b4 <__imp__ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140005226:	90                   	nop
   140005227:	90                   	nop

0000000140005228 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140005228:	ff 25 7e 82 00 00    	jmp    *0x827e(%rip)        # 14000d4ac <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   14000522e:	90                   	nop
   14000522f:	90                   	nop

0000000140005230 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>:
   140005230:	ff 25 6e 82 00 00    	jmp    *0x826e(%rip)        # 14000d4a4 <__imp__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   140005236:	90                   	nop
   140005237:	90                   	nop

0000000140005238 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>:
   140005238:	ff 25 5e 82 00 00    	jmp    *0x825e(%rip)        # 14000d49c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   14000523e:	90                   	nop
   14000523f:	90                   	nop

0000000140005240 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>:
   140005240:	ff 25 4e 82 00 00    	jmp    *0x824e(%rip)        # 14000d494 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140005246:	90                   	nop
   140005247:	90                   	nop

0000000140005248 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>:
   140005248:	ff 25 3e 82 00 00    	jmp    *0x823e(%rip)        # 14000d48c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   14000524e:	90                   	nop
   14000524f:	90                   	nop

0000000140005250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>:
   140005250:	ff 25 2e 82 00 00    	jmp    *0x822e(%rip)        # 14000d484 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140005256:	90                   	nop
   140005257:	90                   	nop

0000000140005258 <_ZNSt6localeD1Ev>:
   140005258:	ff 25 1e 82 00 00    	jmp    *0x821e(%rip)        # 14000d47c <__imp__ZNSt6localeD1Ev>
   14000525e:	90                   	nop
   14000525f:	90                   	nop

0000000140005260 <_ZNSt6localeC1Ev>:
   140005260:	ff 25 0e 82 00 00    	jmp    *0x820e(%rip)        # 14000d474 <__imp__ZNSt6localeC1Ev>
   140005266:	90                   	nop
   140005267:	90                   	nop

0000000140005268 <_ZNSt16invalid_argumentD1Ev>:
   140005268:	ff 25 fe 81 00 00    	jmp    *0x81fe(%rip)        # 14000d46c <__imp__ZNSt16invalid_argumentD1Ev>
   14000526e:	90                   	nop
   14000526f:	90                   	nop

0000000140005270 <_ZNSt16invalid_argumentC1EPKc>:
   140005270:	ff 25 ee 81 00 00    	jmp    *0x81ee(%rip)        # 14000d464 <__imp__ZNSt16invalid_argumentC1EPKc>
   140005276:	90                   	nop
   140005277:	90                   	nop

0000000140005278 <_ZNSt13runtime_errorD1Ev>:
   140005278:	ff 25 de 81 00 00    	jmp    *0x81de(%rip)        # 14000d45c <__imp__ZNSt13runtime_errorD1Ev>
   14000527e:	90                   	nop
   14000527f:	90                   	nop

0000000140005280 <_ZNSt13runtime_errorC1EPKc>:
   140005280:	ff 25 ce 81 00 00    	jmp    *0x81ce(%rip)        # 14000d454 <__imp__ZNSt13runtime_errorC1EPKc>
   140005286:	90                   	nop
   140005287:	90                   	nop

0000000140005288 <_ZNSolsEi>:
   140005288:	ff 25 be 81 00 00    	jmp    *0x81be(%rip)        # 14000d44c <__imp__ZNSolsEi>
   14000528e:	90                   	nop
   14000528f:	90                   	nop

0000000140005290 <_ZNSo5flushEv>:
   140005290:	ff 25 ae 81 00 00    	jmp    *0x81ae(%rip)        # 14000d444 <__imp__ZNSo5flushEv>
   140005296:	90                   	nop
   140005297:	90                   	nop

0000000140005298 <_ZNSo3putEc>:
   140005298:	ff 25 9e 81 00 00    	jmp    *0x819e(%rip)        # 14000d43c <__imp__ZNSo3putEc>
   14000529e:	90                   	nop
   14000529f:	90                   	nop

00000001400052a0 <_ZNKSt5ctypeIcE13_M_widen_initEv>:
   1400052a0:	ff 25 8e 81 00 00    	jmp    *0x818e(%rip)        # 14000d434 <__imp__ZNKSt5ctypeIcE13_M_widen_initEv>
   1400052a6:	90                   	nop
   1400052a7:	90                   	nop
   1400052a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400052af:	00 

00000001400052b0 <__do_global_dtors>:
   1400052b0:	48 83 ec 28          	sub    $0x28,%rsp
   1400052b4:	48 8b 05 45 2d 00 00 	mov    0x2d45(%rip),%rax        # 140008000 <__data_start__>
   1400052bb:	48 8b 00             	mov    (%rax),%rax
   1400052be:	48 85 c0             	test   %rax,%rax
   1400052c1:	74 22                	je     1400052e5 <__do_global_dtors+0x35>
   1400052c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400052c8:	ff d0                	call   *%rax
   1400052ca:	48 8b 05 2f 2d 00 00 	mov    0x2d2f(%rip),%rax        # 140008000 <__data_start__>
   1400052d1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400052d5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400052d9:	48 89 15 20 2d 00 00 	mov    %rdx,0x2d20(%rip)        # 140008000 <__data_start__>
   1400052e0:	48 85 c0             	test   %rax,%rax
   1400052e3:	75 e3                	jne    1400052c8 <__do_global_dtors+0x18>
   1400052e5:	48 83 c4 28          	add    $0x28,%rsp
   1400052e9:	c3                   	ret
   1400052ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400052f0 <__do_global_ctors>:
   1400052f0:	56                   	push   %rsi
   1400052f1:	53                   	push   %rbx
   1400052f2:	48 83 ec 28          	sub    $0x28,%rsp
   1400052f6:	48 8b 15 a3 41 00 00 	mov    0x41a3(%rip),%rdx        # 1400094a0 <.refptr.__CTOR_LIST__>
   1400052fd:	48 8b 02             	mov    (%rdx),%rax
   140005300:	89 c1                	mov    %eax,%ecx
   140005302:	83 f8 ff             	cmp    $0xffffffff,%eax
   140005305:	74 39                	je     140005340 <__do_global_ctors+0x50>
   140005307:	85 c9                	test   %ecx,%ecx
   140005309:	74 20                	je     14000532b <__do_global_ctors+0x3b>
   14000530b:	89 c8                	mov    %ecx,%eax
   14000530d:	83 e9 01             	sub    $0x1,%ecx
   140005310:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140005314:	48 29 c8             	sub    %rcx,%rax
   140005317:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000531c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005320:	ff 13                	call   *(%rbx)
   140005322:	48 83 eb 08          	sub    $0x8,%rbx
   140005326:	48 39 f3             	cmp    %rsi,%rbx
   140005329:	75 f5                	jne    140005320 <__do_global_ctors+0x30>
   14000532b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400052b0 <__do_global_dtors>
   140005332:	48 83 c4 28          	add    $0x28,%rsp
   140005336:	5b                   	pop    %rbx
   140005337:	5e                   	pop    %rsi
   140005338:	e9 d3 c0 ff ff       	jmp    140001410 <atexit>
   14000533d:	0f 1f 00             	nopl   (%rax)
   140005340:	31 c0                	xor    %eax,%eax
   140005342:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005348:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000534c:	89 c1                	mov    %eax,%ecx
   14000534e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140005353:	4c 89 c0             	mov    %r8,%rax
   140005356:	75 f0                	jne    140005348 <__do_global_ctors+0x58>
   140005358:	eb ad                	jmp    140005307 <__do_global_ctors+0x17>
   14000535a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140005360 <__main>:
   140005360:	8b 05 1a 6d 00 00    	mov    0x6d1a(%rip),%eax        # 14000c080 <initialized>
   140005366:	85 c0                	test   %eax,%eax
   140005368:	74 06                	je     140005370 <__main+0x10>
   14000536a:	c3                   	ret
   14000536b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005370:	c7 05 06 6d 00 00 01 	movl   $0x1,0x6d06(%rip)        # 14000c080 <initialized>
   140005377:	00 00 00 
   14000537a:	e9 71 ff ff ff       	jmp    1400052f0 <__do_global_ctors>
   14000537f:	90                   	nop

0000000140005380 <_setargv>:
   140005380:	31 c0                	xor    %eax,%eax
   140005382:	c3                   	ret
   140005383:	90                   	nop
   140005384:	90                   	nop
   140005385:	90                   	nop
   140005386:	90                   	nop
   140005387:	90                   	nop
   140005388:	90                   	nop
   140005389:	90                   	nop
   14000538a:	90                   	nop
   14000538b:	90                   	nop
   14000538c:	90                   	nop
   14000538d:	90                   	nop
   14000538e:	90                   	nop
   14000538f:	90                   	nop

0000000140005390 <__dyn_tls_dtor>:
   140005390:	48 83 ec 28          	sub    $0x28,%rsp
   140005394:	83 fa 03             	cmp    $0x3,%edx
   140005397:	74 17                	je     1400053b0 <__dyn_tls_dtor+0x20>
   140005399:	85 d2                	test   %edx,%edx
   14000539b:	74 13                	je     1400053b0 <__dyn_tls_dtor+0x20>
   14000539d:	b8 01 00 00 00       	mov    $0x1,%eax
   1400053a2:	48 83 c4 28          	add    $0x28,%rsp
   1400053a6:	c3                   	ret
   1400053a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400053ae:	00 00 
   1400053b0:	e8 5b 0a 00 00       	call   140005e10 <__mingw_TLScallback>
   1400053b5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400053ba:	48 83 c4 28          	add    $0x28,%rsp
   1400053be:	c3                   	ret
   1400053bf:	90                   	nop

00000001400053c0 <__dyn_tls_init>:
   1400053c0:	56                   	push   %rsi
   1400053c1:	53                   	push   %rbx
   1400053c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400053c6:	48 8b 05 33 40 00 00 	mov    0x4033(%rip),%rax        # 140009400 <.refptr._CRT_MT>
   1400053cd:	83 38 02             	cmpl   $0x2,(%rax)
   1400053d0:	74 06                	je     1400053d8 <__dyn_tls_init+0x18>
   1400053d2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400053d8:	83 fa 02             	cmp    $0x2,%edx
   1400053db:	74 13                	je     1400053f0 <__dyn_tls_init+0x30>
   1400053dd:	83 fa 01             	cmp    $0x1,%edx
   1400053e0:	74 4e                	je     140005430 <__dyn_tls_init+0x70>
   1400053e2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400053e7:	48 83 c4 28          	add    $0x28,%rsp
   1400053eb:	5b                   	pop    %rbx
   1400053ec:	5e                   	pop    %rsi
   1400053ed:	c3                   	ret
   1400053ee:	66 90                	xchg   %ax,%ax
   1400053f0:	48 8d 1d 61 8c 00 00 	lea    0x8c61(%rip),%rbx        # 14000e058 <__xd_z>
   1400053f7:	48 8d 35 5a 8c 00 00 	lea    0x8c5a(%rip),%rsi        # 14000e058 <__xd_z>
   1400053fe:	48 39 de             	cmp    %rbx,%rsi
   140005401:	74 df                	je     1400053e2 <__dyn_tls_init+0x22>
   140005403:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005408:	48 8b 03             	mov    (%rbx),%rax
   14000540b:	48 85 c0             	test   %rax,%rax
   14000540e:	74 02                	je     140005412 <__dyn_tls_init+0x52>
   140005410:	ff d0                	call   *%rax
   140005412:	48 83 c3 08          	add    $0x8,%rbx
   140005416:	48 39 de             	cmp    %rbx,%rsi
   140005419:	75 ed                	jne    140005408 <__dyn_tls_init+0x48>
   14000541b:	b8 01 00 00 00       	mov    $0x1,%eax
   140005420:	48 83 c4 28          	add    $0x28,%rsp
   140005424:	5b                   	pop    %rbx
   140005425:	5e                   	pop    %rsi
   140005426:	c3                   	ret
   140005427:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000542e:	00 00 
   140005430:	e8 db 09 00 00       	call   140005e10 <__mingw_TLScallback>
   140005435:	b8 01 00 00 00       	mov    $0x1,%eax
   14000543a:	48 83 c4 28          	add    $0x28,%rsp
   14000543e:	5b                   	pop    %rbx
   14000543f:	5e                   	pop    %rsi
   140005440:	c3                   	ret
   140005441:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005448:	00 00 00 00 
   14000544c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005450 <__tlregdtor>:
   140005450:	31 c0                	xor    %eax,%eax
   140005452:	c3                   	ret
   140005453:	90                   	nop
   140005454:	90                   	nop
   140005455:	90                   	nop
   140005456:	90                   	nop
   140005457:	90                   	nop
   140005458:	90                   	nop
   140005459:	90                   	nop
   14000545a:	90                   	nop
   14000545b:	90                   	nop
   14000545c:	90                   	nop
   14000545d:	90                   	nop
   14000545e:	90                   	nop
   14000545f:	90                   	nop

0000000140005460 <_matherr>:
   140005460:	56                   	push   %rsi
   140005461:	53                   	push   %rbx
   140005462:	48 83 ec 78          	sub    $0x78,%rsp
   140005466:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000546b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140005470:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140005476:	83 39 06             	cmpl   $0x6,(%rcx)
   140005479:	0f 87 cd 00 00 00    	ja     14000554c <_matherr+0xec>
   14000547f:	8b 01                	mov    (%rcx),%eax
   140005481:	48 8d 15 bc 3d 00 00 	lea    0x3dbc(%rip),%rdx        # 140009244 <.rdata+0x124>
   140005488:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000548c:	48 01 d0             	add    %rdx,%rax
   14000548f:	ff e0                	jmp    *%rax
   140005491:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005498:	48 8d 1d a0 3c 00 00 	lea    0x3ca0(%rip),%rbx        # 14000913f <.rdata+0x1f>
   14000549f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400054a5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400054aa:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400054af:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400054b3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400054b8:	e8 e3 0e 00 00       	call   1400063a0 <__acrt_iob_func>
   1400054bd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400054c4:	49 89 d8             	mov    %rbx,%r8
   1400054c7:	48 8d 15 4a 3d 00 00 	lea    0x3d4a(%rip),%rdx        # 140009218 <.rdata+0xf8>
   1400054ce:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400054d4:	48 89 c1             	mov    %rax,%rcx
   1400054d7:	49 89 f1             	mov    %rsi,%r9
   1400054da:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400054e0:	e8 3b 0f 00 00       	call   140006420 <fprintf>
   1400054e5:	90                   	nop
   1400054e6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400054eb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400054f0:	31 c0                	xor    %eax,%eax
   1400054f2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400054f8:	48 83 c4 78          	add    $0x78,%rsp
   1400054fc:	5b                   	pop    %rbx
   1400054fd:	5e                   	pop    %rsi
   1400054fe:	c3                   	ret
   1400054ff:	90                   	nop
   140005500:	48 8d 1d 19 3c 00 00 	lea    0x3c19(%rip),%rbx        # 140009120 <.rdata>
   140005507:	eb 96                	jmp    14000549f <_matherr+0x3f>
   140005509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005510:	48 8d 1d 69 3c 00 00 	lea    0x3c69(%rip),%rbx        # 140009180 <.rdata+0x60>
   140005517:	eb 86                	jmp    14000549f <_matherr+0x3f>
   140005519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005520:	48 8d 1d 39 3c 00 00 	lea    0x3c39(%rip),%rbx        # 140009160 <.rdata+0x40>
   140005527:	e9 73 ff ff ff       	jmp    14000549f <_matherr+0x3f>
   14000552c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005530:	48 8d 1d 99 3c 00 00 	lea    0x3c99(%rip),%rbx        # 1400091d0 <.rdata+0xb0>
   140005537:	e9 63 ff ff ff       	jmp    14000549f <_matherr+0x3f>
   14000553c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005540:	48 8d 1d 61 3c 00 00 	lea    0x3c61(%rip),%rbx        # 1400091a8 <.rdata+0x88>
   140005547:	e9 53 ff ff ff       	jmp    14000549f <_matherr+0x3f>
   14000554c:	48 8d 1d b3 3c 00 00 	lea    0x3cb3(%rip),%rbx        # 140009206 <.rdata+0xe6>
   140005553:	e9 47 ff ff ff       	jmp    14000549f <_matherr+0x3f>
   140005558:	90                   	nop
   140005559:	90                   	nop
   14000555a:	90                   	nop
   14000555b:	90                   	nop
   14000555c:	90                   	nop
   14000555d:	90                   	nop
   14000555e:	90                   	nop
   14000555f:	90                   	nop

0000000140005560 <_fpreset>:
   140005560:	db e3                	fninit
   140005562:	c3                   	ret
   140005563:	90                   	nop
   140005564:	90                   	nop
   140005565:	90                   	nop
   140005566:	90                   	nop
   140005567:	90                   	nop
   140005568:	90                   	nop
   140005569:	90                   	nop
   14000556a:	90                   	nop
   14000556b:	90                   	nop
   14000556c:	90                   	nop
   14000556d:	90                   	nop
   14000556e:	90                   	nop
   14000556f:	90                   	nop

0000000140005570 <__report_error>:
   140005570:	56                   	push   %rsi
   140005571:	53                   	push   %rbx
   140005572:	48 83 ec 38          	sub    $0x38,%rsp
   140005576:	48 89 cb             	mov    %rcx,%rbx
   140005579:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000557e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140005583:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140005588:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000558d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140005592:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140005597:	e8 04 0e 00 00       	call   1400063a0 <__acrt_iob_func>
   14000559c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400055a2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400055a7:	48 8d 0d b2 3c 00 00 	lea    0x3cb2(%rip),%rcx        # 140009260 <.rdata>
   1400055ae:	49 89 c1             	mov    %rax,%r9
   1400055b1:	e8 7a 0e 00 00       	call   140006430 <fwrite>
   1400055b6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   1400055bb:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400055c0:	e8 db 0d 00 00       	call   1400063a0 <__acrt_iob_func>
   1400055c5:	48 89 da             	mov    %rbx,%rdx
   1400055c8:	48 89 c1             	mov    %rax,%rcx
   1400055cb:	49 89 f0             	mov    %rsi,%r8
   1400055ce:	e8 8d 0e 00 00       	call   140006460 <vfprintf>
   1400055d3:	e8 30 0e 00 00       	call   140006408 <abort>
   1400055d8:	90                   	nop
   1400055d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400055e0 <mark_section_writable>:
   1400055e0:	57                   	push   %rdi
   1400055e1:	56                   	push   %rsi
   1400055e2:	53                   	push   %rbx
   1400055e3:	48 83 ec 50          	sub    $0x50,%rsp
   1400055e7:	48 63 35 f6 6a 00 00 	movslq 0x6af6(%rip),%rsi        # 14000c0e4 <maxSections>
   1400055ee:	48 89 cb             	mov    %rcx,%rbx
   1400055f1:	85 f6                	test   %esi,%esi
   1400055f3:	0f 8e 17 01 00 00    	jle    140005710 <mark_section_writable+0x130>
   1400055f9:	48 8b 05 e8 6a 00 00 	mov    0x6ae8(%rip),%rax        # 14000c0e8 <the_secs>
   140005600:	45 31 c9             	xor    %r9d,%r9d
   140005603:	48 83 c0 18          	add    $0x18,%rax
   140005607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000560e:	00 00 
   140005610:	4c 8b 00             	mov    (%rax),%r8
   140005613:	4c 39 c3             	cmp    %r8,%rbx
   140005616:	72 13                	jb     14000562b <mark_section_writable+0x4b>
   140005618:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000561c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000561f:	49 01 d0             	add    %rdx,%r8
   140005622:	4c 39 c3             	cmp    %r8,%rbx
   140005625:	0f 82 8a 00 00 00    	jb     1400056b5 <mark_section_writable+0xd5>
   14000562b:	41 83 c1 01          	add    $0x1,%r9d
   14000562f:	48 83 c0 28          	add    $0x28,%rax
   140005633:	41 39 f1             	cmp    %esi,%r9d
   140005636:	75 d8                	jne    140005610 <mark_section_writable+0x30>
   140005638:	48 89 d9             	mov    %rbx,%rcx
   14000563b:	e8 f0 09 00 00       	call   140006030 <__mingw_GetSectionForAddress>
   140005640:	48 89 c7             	mov    %rax,%rdi
   140005643:	48 85 c0             	test   %rax,%rax
   140005646:	0f 84 e6 00 00 00    	je     140005732 <mark_section_writable+0x152>
   14000564c:	48 8b 05 95 6a 00 00 	mov    0x6a95(%rip),%rax        # 14000c0e8 <the_secs>
   140005653:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140005657:	48 c1 e3 03          	shl    $0x3,%rbx
   14000565b:	48 01 d8             	add    %rbx,%rax
   14000565e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140005662:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140005668:	e8 03 0b 00 00       	call   140006170 <_GetPEImageBase>
   14000566d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140005670:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140005676:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000567a:	48 8b 05 67 6a 00 00 	mov    0x6a67(%rip),%rax        # 14000c0e8 <the_secs>
   140005681:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140005686:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000568b:	ff 15 cb 7c 00 00    	call   *0x7ccb(%rip)        # 14000d35c <__imp_VirtualQuery>
   140005691:	48 85 c0             	test   %rax,%rax
   140005694:	0f 84 7d 00 00 00    	je     140005717 <mark_section_writable+0x137>
   14000569a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000569e:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400056a1:	83 e2 bf             	and    $0xffffffbf,%edx
   1400056a4:	74 08                	je     1400056ae <mark_section_writable+0xce>
   1400056a6:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400056a9:	83 e2 fb             	and    $0xfffffffb,%edx
   1400056ac:	75 12                	jne    1400056c0 <mark_section_writable+0xe0>
   1400056ae:	83 05 2f 6a 00 00 01 	addl   $0x1,0x6a2f(%rip)        # 14000c0e4 <maxSections>
   1400056b5:	48 83 c4 50          	add    $0x50,%rsp
   1400056b9:	5b                   	pop    %rbx
   1400056ba:	5e                   	pop    %rsi
   1400056bb:	5f                   	pop    %rdi
   1400056bc:	c3                   	ret
   1400056bd:	0f 1f 00             	nopl   (%rax)
   1400056c0:	83 f8 02             	cmp    $0x2,%eax
   1400056c3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400056c8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400056cd:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400056d3:	b8 04 00 00 00       	mov    $0x4,%eax
   1400056d8:	44 0f 44 c0          	cmove  %eax,%r8d
   1400056dc:	48 03 1d 05 6a 00 00 	add    0x6a05(%rip),%rbx        # 14000c0e8 <the_secs>
   1400056e3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400056e7:	49 89 d9             	mov    %rbx,%r9
   1400056ea:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400056ee:	ff 15 60 7c 00 00    	call   *0x7c60(%rip)        # 14000d354 <__imp_VirtualProtect>
   1400056f4:	85 c0                	test   %eax,%eax
   1400056f6:	75 b6                	jne    1400056ae <mark_section_writable+0xce>
   1400056f8:	ff 15 26 7c 00 00    	call   *0x7c26(%rip)        # 14000d324 <__imp_GetLastError>
   1400056fe:	48 8d 0d d3 3b 00 00 	lea    0x3bd3(%rip),%rcx        # 1400092d8 <.rdata+0x78>
   140005705:	89 c2                	mov    %eax,%edx
   140005707:	e8 64 fe ff ff       	call   140005570 <__report_error>
   14000570c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005710:	31 f6                	xor    %esi,%esi
   140005712:	e9 21 ff ff ff       	jmp    140005638 <mark_section_writable+0x58>
   140005717:	48 8b 05 ca 69 00 00 	mov    0x69ca(%rip),%rax        # 14000c0e8 <the_secs>
   14000571e:	8b 57 08             	mov    0x8(%rdi),%edx
   140005721:	48 8d 0d 78 3b 00 00 	lea    0x3b78(%rip),%rcx        # 1400092a0 <.rdata+0x40>
   140005728:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000572d:	e8 3e fe ff ff       	call   140005570 <__report_error>
   140005732:	48 89 da             	mov    %rbx,%rdx
   140005735:	48 8d 0d 44 3b 00 00 	lea    0x3b44(%rip),%rcx        # 140009280 <.rdata+0x20>
   14000573c:	e8 2f fe ff ff       	call   140005570 <__report_error>
   140005741:	90                   	nop
   140005742:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005749:	00 00 00 00 
   14000574d:	0f 1f 00             	nopl   (%rax)

0000000140005750 <_pei386_runtime_relocator>:
   140005750:	55                   	push   %rbp
   140005751:	41 57                	push   %r15
   140005753:	41 56                	push   %r14
   140005755:	41 55                	push   %r13
   140005757:	41 54                	push   %r12
   140005759:	57                   	push   %rdi
   14000575a:	56                   	push   %rsi
   14000575b:	53                   	push   %rbx
   14000575c:	48 83 ec 48          	sub    $0x48,%rsp
   140005760:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140005765:	44 8b 25 74 69 00 00 	mov    0x6974(%rip),%r12d        # 14000c0e0 <was_init.0>
   14000576c:	45 85 e4             	test   %r12d,%r12d
   14000576f:	74 17                	je     140005788 <_pei386_runtime_relocator+0x38>
   140005771:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140005775:	5b                   	pop    %rbx
   140005776:	5e                   	pop    %rsi
   140005777:	5f                   	pop    %rdi
   140005778:	41 5c                	pop    %r12
   14000577a:	41 5d                	pop    %r13
   14000577c:	41 5e                	pop    %r14
   14000577e:	41 5f                	pop    %r15
   140005780:	5d                   	pop    %rbp
   140005781:	c3                   	ret
   140005782:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005788:	c7 05 4e 69 00 00 01 	movl   $0x1,0x694e(%rip)        # 14000c0e0 <was_init.0>
   14000578f:	00 00 00 
   140005792:	e8 19 09 00 00       	call   1400060b0 <__mingw_GetSectionCount>
   140005797:	48 98                	cltq
   140005799:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   14000579d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400057a4:	00 
   1400057a5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400057a9:	e8 72 0b 00 00       	call   140006320 <___chkstk_ms>
   1400057ae:	4c 8b 2d 0b 3d 00 00 	mov    0x3d0b(%rip),%r13        # 1400094c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400057b5:	48 8b 1d 14 3d 00 00 	mov    0x3d14(%rip),%rbx        # 1400094d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400057bc:	c7 05 1e 69 00 00 00 	movl   $0x0,0x691e(%rip)        # 14000c0e4 <maxSections>
   1400057c3:	00 00 00 
   1400057c6:	48 29 c4             	sub    %rax,%rsp
   1400057c9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400057ce:	48 89 05 13 69 00 00 	mov    %rax,0x6913(%rip)        # 14000c0e8 <the_secs>
   1400057d5:	4c 89 e8             	mov    %r13,%rax
   1400057d8:	48 29 d8             	sub    %rbx,%rax
   1400057db:	48 83 f8 07          	cmp    $0x7,%rax
   1400057df:	7e 90                	jle    140005771 <_pei386_runtime_relocator+0x21>
   1400057e1:	8b 13                	mov    (%rbx),%edx
   1400057e3:	48 83 f8 0b          	cmp    $0xb,%rax
   1400057e7:	0f 8f 7b 01 00 00    	jg     140005968 <_pei386_runtime_relocator+0x218>
   1400057ed:	8b 03                	mov    (%rbx),%eax
   1400057ef:	85 c0                	test   %eax,%eax
   1400057f1:	0f 85 69 02 00 00    	jne    140005a60 <_pei386_runtime_relocator+0x310>
   1400057f7:	8b 43 04             	mov    0x4(%rbx),%eax
   1400057fa:	85 c0                	test   %eax,%eax
   1400057fc:	0f 85 5e 02 00 00    	jne    140005a60 <_pei386_runtime_relocator+0x310>
   140005802:	8b 53 08             	mov    0x8(%rbx),%edx
   140005805:	83 fa 01             	cmp    $0x1,%edx
   140005808:	0f 85 90 02 00 00    	jne    140005a9e <_pei386_runtime_relocator+0x34e>
   14000580e:	48 83 c3 0c          	add    $0xc,%rbx
   140005812:	4c 39 eb             	cmp    %r13,%rbx
   140005815:	0f 83 56 ff ff ff    	jae    140005771 <_pei386_runtime_relocator+0x21>
   14000581b:	4c 8b 35 8e 3c 00 00 	mov    0x3c8e(%rip),%r14        # 1400094b0 <.refptr.__ImageBase>
   140005822:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140005829:	ff ff ff 
   14000582c:	eb 54                	jmp    140005882 <_pei386_runtime_relocator+0x132>
   14000582e:	66 90                	xchg   %ax,%ax
   140005830:	0f b6 37             	movzbl (%rdi),%esi
   140005833:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140005839:	40 84 f6             	test   %sil,%sil
   14000583c:	0f 89 06 02 00 00    	jns    140005a48 <_pei386_runtime_relocator+0x2f8>
   140005842:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140005849:	48 29 c6             	sub    %rax,%rsi
   14000584c:	4c 01 ce             	add    %r9,%rsi
   14000584f:	85 c9                	test   %ecx,%ecx
   140005851:	75 17                	jne    14000586a <_pei386_runtime_relocator+0x11a>
   140005853:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   14000585a:	0f 8f 4f 01 00 00    	jg     1400059af <_pei386_runtime_relocator+0x25f>
   140005860:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140005864:	0f 8c 45 01 00 00    	jl     1400059af <_pei386_runtime_relocator+0x25f>
   14000586a:	48 89 f9             	mov    %rdi,%rcx
   14000586d:	e8 6e fd ff ff       	call   1400055e0 <mark_section_writable>
   140005872:	40 88 37             	mov    %sil,(%rdi)
   140005875:	48 83 c3 0c          	add    $0xc,%rbx
   140005879:	4c 39 eb             	cmp    %r13,%rbx
   14000587c:	0f 83 8e 00 00 00    	jae    140005910 <_pei386_runtime_relocator+0x1c0>
   140005882:	8b 03                	mov    (%rbx),%eax
   140005884:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140005887:	8b 7b 04             	mov    0x4(%rbx),%edi
   14000588a:	4c 01 f0             	add    %r14,%rax
   14000588d:	0f b6 d1             	movzbl %cl,%edx
   140005890:	4c 8b 08             	mov    (%rax),%r9
   140005893:	4c 01 f7             	add    %r14,%rdi
   140005896:	83 fa 20             	cmp    $0x20,%edx
   140005899:	0f 84 29 01 00 00    	je     1400059c8 <_pei386_runtime_relocator+0x278>
   14000589f:	0f 87 eb 00 00 00    	ja     140005990 <_pei386_runtime_relocator+0x240>
   1400058a5:	83 fa 08             	cmp    $0x8,%edx
   1400058a8:	74 86                	je     140005830 <_pei386_runtime_relocator+0xe0>
   1400058aa:	83 fa 10             	cmp    $0x10,%edx
   1400058ad:	0f 85 df 01 00 00    	jne    140005a92 <_pei386_runtime_relocator+0x342>
   1400058b3:	0f b7 37             	movzwl (%rdi),%esi
   1400058b6:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400058bc:	66 85 f6             	test   %si,%si
   1400058bf:	0f 89 6b 01 00 00    	jns    140005a30 <_pei386_runtime_relocator+0x2e0>
   1400058c5:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   1400058cc:	48 29 c6             	sub    %rax,%rsi
   1400058cf:	4c 01 ce             	add    %r9,%rsi
   1400058d2:	85 c9                	test   %ecx,%ecx
   1400058d4:	75 1a                	jne    1400058f0 <_pei386_runtime_relocator+0x1a0>
   1400058d6:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   1400058dd:	0f 8c cc 00 00 00    	jl     1400059af <_pei386_runtime_relocator+0x25f>
   1400058e3:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   1400058ea:	0f 8f bf 00 00 00    	jg     1400059af <_pei386_runtime_relocator+0x25f>
   1400058f0:	48 89 f9             	mov    %rdi,%rcx
   1400058f3:	48 83 c3 0c          	add    $0xc,%rbx
   1400058f7:	e8 e4 fc ff ff       	call   1400055e0 <mark_section_writable>
   1400058fc:	66 89 37             	mov    %si,(%rdi)
   1400058ff:	4c 39 eb             	cmp    %r13,%rbx
   140005902:	0f 82 7a ff ff ff    	jb     140005882 <_pei386_runtime_relocator+0x132>
   140005908:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000590f:	00 
   140005910:	8b 15 ce 67 00 00    	mov    0x67ce(%rip),%edx        # 14000c0e4 <maxSections>
   140005916:	85 d2                	test   %edx,%edx
   140005918:	0f 8e 53 fe ff ff    	jle    140005771 <_pei386_runtime_relocator+0x21>
   14000591e:	48 8b 35 2f 7a 00 00 	mov    0x7a2f(%rip),%rsi        # 14000d354 <__imp_VirtualProtect>
   140005925:	31 db                	xor    %ebx,%ebx
   140005927:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   14000592b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005930:	48 8b 05 b1 67 00 00 	mov    0x67b1(%rip),%rax        # 14000c0e8 <the_secs>
   140005937:	48 01 d8             	add    %rbx,%rax
   14000593a:	44 8b 00             	mov    (%rax),%r8d
   14000593d:	45 85 c0             	test   %r8d,%r8d
   140005940:	74 0d                	je     14000594f <_pei386_runtime_relocator+0x1ff>
   140005942:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140005946:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000594a:	49 89 f9             	mov    %rdi,%r9
   14000594d:	ff d6                	call   *%rsi
   14000594f:	41 83 c4 01          	add    $0x1,%r12d
   140005953:	48 83 c3 28          	add    $0x28,%rbx
   140005957:	44 3b 25 86 67 00 00 	cmp    0x6786(%rip),%r12d        # 14000c0e4 <maxSections>
   14000595e:	7c d0                	jl     140005930 <_pei386_runtime_relocator+0x1e0>
   140005960:	e9 0c fe ff ff       	jmp    140005771 <_pei386_runtime_relocator+0x21>
   140005965:	0f 1f 00             	nopl   (%rax)
   140005968:	85 d2                	test   %edx,%edx
   14000596a:	0f 85 f0 00 00 00    	jne    140005a60 <_pei386_runtime_relocator+0x310>
   140005970:	8b 43 04             	mov    0x4(%rbx),%eax
   140005973:	89 c2                	mov    %eax,%edx
   140005975:	0b 53 08             	or     0x8(%rbx),%edx
   140005978:	0f 85 7c fe ff ff    	jne    1400057fa <_pei386_runtime_relocator+0xaa>
   14000597e:	48 83 c3 0c          	add    $0xc,%rbx
   140005982:	e9 66 fe ff ff       	jmp    1400057ed <_pei386_runtime_relocator+0x9d>
   140005987:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000598e:	00 00 
   140005990:	83 fa 40             	cmp    $0x40,%edx
   140005993:	0f 85 f9 00 00 00    	jne    140005a92 <_pei386_runtime_relocator+0x342>
   140005999:	48 8b 37             	mov    (%rdi),%rsi
   14000599c:	48 29 c6             	sub    %rax,%rsi
   14000599f:	4c 01 ce             	add    %r9,%rsi
   1400059a2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400059a8:	75 66                	jne    140005a10 <_pei386_runtime_relocator+0x2c0>
   1400059aa:	48 85 f6             	test   %rsi,%rsi
   1400059ad:	78 61                	js     140005a10 <_pei386_runtime_relocator+0x2c0>
   1400059af:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   1400059b4:	49 89 f8             	mov    %rdi,%r8
   1400059b7:	48 8d 0d aa 39 00 00 	lea    0x39aa(%rip),%rcx        # 140009368 <.rdata+0x108>
   1400059be:	e8 ad fb ff ff       	call   140005570 <__report_error>
   1400059c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400059c8:	8b 37                	mov    (%rdi),%esi
   1400059ca:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400059d0:	85 f6                	test   %esi,%esi
   1400059d2:	79 4c                	jns    140005a20 <_pei386_runtime_relocator+0x2d0>
   1400059d4:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   1400059db:	ff ff ff 
   1400059de:	4c 09 de             	or     %r11,%rsi
   1400059e1:	48 29 c6             	sub    %rax,%rsi
   1400059e4:	4c 01 ce             	add    %r9,%rsi
   1400059e7:	85 c9                	test   %ecx,%ecx
   1400059e9:	75 0f                	jne    1400059fa <_pei386_runtime_relocator+0x2aa>
   1400059eb:	4c 39 fe             	cmp    %r15,%rsi
   1400059ee:	7e bf                	jle    1400059af <_pei386_runtime_relocator+0x25f>
   1400059f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400059f5:	48 39 c6             	cmp    %rax,%rsi
   1400059f8:	7f b5                	jg     1400059af <_pei386_runtime_relocator+0x25f>
   1400059fa:	48 89 f9             	mov    %rdi,%rcx
   1400059fd:	e8 de fb ff ff       	call   1400055e0 <mark_section_writable>
   140005a02:	89 37                	mov    %esi,(%rdi)
   140005a04:	e9 6c fe ff ff       	jmp    140005875 <_pei386_runtime_relocator+0x125>
   140005a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005a10:	48 89 f9             	mov    %rdi,%rcx
   140005a13:	e8 c8 fb ff ff       	call   1400055e0 <mark_section_writable>
   140005a18:	48 89 37             	mov    %rsi,(%rdi)
   140005a1b:	e9 55 fe ff ff       	jmp    140005875 <_pei386_runtime_relocator+0x125>
   140005a20:	48 29 c6             	sub    %rax,%rsi
   140005a23:	4c 01 ce             	add    %r9,%rsi
   140005a26:	85 c9                	test   %ecx,%ecx
   140005a28:	74 c1                	je     1400059eb <_pei386_runtime_relocator+0x29b>
   140005a2a:	eb ce                	jmp    1400059fa <_pei386_runtime_relocator+0x2aa>
   140005a2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005a30:	48 29 c6             	sub    %rax,%rsi
   140005a33:	4c 01 ce             	add    %r9,%rsi
   140005a36:	85 c9                	test   %ecx,%ecx
   140005a38:	0f 84 98 fe ff ff    	je     1400058d6 <_pei386_runtime_relocator+0x186>
   140005a3e:	e9 ad fe ff ff       	jmp    1400058f0 <_pei386_runtime_relocator+0x1a0>
   140005a43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005a48:	48 29 c6             	sub    %rax,%rsi
   140005a4b:	4c 01 ce             	add    %r9,%rsi
   140005a4e:	85 c9                	test   %ecx,%ecx
   140005a50:	0f 84 fd fd ff ff    	je     140005853 <_pei386_runtime_relocator+0x103>
   140005a56:	e9 0f fe ff ff       	jmp    14000586a <_pei386_runtime_relocator+0x11a>
   140005a5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005a60:	4c 39 eb             	cmp    %r13,%rbx
   140005a63:	0f 83 08 fd ff ff    	jae    140005771 <_pei386_runtime_relocator+0x21>
   140005a69:	4c 8b 35 40 3a 00 00 	mov    0x3a40(%rip),%r14        # 1400094b0 <.refptr.__ImageBase>
   140005a70:	8b 73 04             	mov    0x4(%rbx),%esi
   140005a73:	8b 3b                	mov    (%rbx),%edi
   140005a75:	48 83 c3 08          	add    $0x8,%rbx
   140005a79:	4c 01 f6             	add    %r14,%rsi
   140005a7c:	03 3e                	add    (%rsi),%edi
   140005a7e:	48 89 f1             	mov    %rsi,%rcx
   140005a81:	e8 5a fb ff ff       	call   1400055e0 <mark_section_writable>
   140005a86:	89 3e                	mov    %edi,(%rsi)
   140005a88:	4c 39 eb             	cmp    %r13,%rbx
   140005a8b:	72 e3                	jb     140005a70 <_pei386_runtime_relocator+0x320>
   140005a8d:	e9 7e fe ff ff       	jmp    140005910 <_pei386_runtime_relocator+0x1c0>
   140005a92:	48 8d 0d 9f 38 00 00 	lea    0x389f(%rip),%rcx        # 140009338 <.rdata+0xd8>
   140005a99:	e8 d2 fa ff ff       	call   140005570 <__report_error>
   140005a9e:	48 8d 0d 5b 38 00 00 	lea    0x385b(%rip),%rcx        # 140009300 <.rdata+0xa0>
   140005aa5:	e8 c6 fa ff ff       	call   140005570 <__report_error>
   140005aaa:	90                   	nop
   140005aab:	90                   	nop
   140005aac:	90                   	nop
   140005aad:	90                   	nop
   140005aae:	90                   	nop
   140005aaf:	90                   	nop

0000000140005ab0 <__mingw_raise_matherr>:
   140005ab0:	48 83 ec 58          	sub    $0x58,%rsp
   140005ab4:	48 8b 05 35 66 00 00 	mov    0x6635(%rip),%rax        # 14000c0f0 <stUserMathErr>
   140005abb:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140005abf:	48 85 c0             	test   %rax,%rax
   140005ac2:	74 25                	je     140005ae9 <__mingw_raise_matherr+0x39>
   140005ac4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140005acb:	00 00 
   140005acd:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140005ad1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140005ad6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140005adb:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140005ae0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140005ae6:	ff d0                	call   *%rax
   140005ae8:	90                   	nop
   140005ae9:	48 83 c4 58          	add    $0x58,%rsp
   140005aed:	c3                   	ret
   140005aee:	66 90                	xchg   %ax,%ax

0000000140005af0 <__mingw_setusermatherr>:
   140005af0:	48 89 0d f9 65 00 00 	mov    %rcx,0x65f9(%rip)        # 14000c0f0 <stUserMathErr>
   140005af7:	e9 e4 08 00 00       	jmp    1400063e0 <__setusermatherr>
   140005afc:	90                   	nop
   140005afd:	90                   	nop
   140005afe:	90                   	nop
   140005aff:	90                   	nop

0000000140005b00 <_gnu_exception_handler>:
   140005b00:	53                   	push   %rbx
   140005b01:	48 83 ec 20          	sub    $0x20,%rsp
   140005b05:	48 8b 11             	mov    (%rcx),%rdx
   140005b08:	8b 02                	mov    (%rdx),%eax
   140005b0a:	48 89 cb             	mov    %rcx,%rbx
   140005b0d:	89 c1                	mov    %eax,%ecx
   140005b0f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140005b15:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140005b1b:	0f 84 9f 00 00 00    	je     140005bc0 <_gnu_exception_handler+0xc0>
   140005b21:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140005b26:	77 77                	ja     140005b9f <_gnu_exception_handler+0x9f>
   140005b28:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140005b2d:	76 21                	jbe    140005b50 <_gnu_exception_handler+0x50>
   140005b2f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140005b34:	83 f8 09             	cmp    $0x9,%eax
   140005b37:	77 54                	ja     140005b8d <_gnu_exception_handler+0x8d>
   140005b39:	48 8d 15 80 38 00 00 	lea    0x3880(%rip),%rdx        # 1400093c0 <.rdata>
   140005b40:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140005b44:	48 01 d0             	add    %rdx,%rax
   140005b47:	ff e0                	jmp    *%rax
   140005b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005b50:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140005b55:	0f 84 d5 00 00 00    	je     140005c30 <_gnu_exception_handler+0x130>
   140005b5b:	76 3b                	jbe    140005b98 <_gnu_exception_handler+0x98>
   140005b5d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140005b62:	74 29                	je     140005b8d <_gnu_exception_handler+0x8d>
   140005b64:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140005b69:	75 34                	jne    140005b9f <_gnu_exception_handler+0x9f>
   140005b6b:	31 d2                	xor    %edx,%edx
   140005b6d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140005b72:	e8 d1 08 00 00       	call   140006448 <signal>
   140005b77:	48 83 f8 01          	cmp    $0x1,%rax
   140005b7b:	0f 84 d6 00 00 00    	je     140005c57 <_gnu_exception_handler+0x157>
   140005b81:	48 85 c0             	test   %rax,%rax
   140005b84:	74 19                	je     140005b9f <_gnu_exception_handler+0x9f>
   140005b86:	b9 04 00 00 00       	mov    $0x4,%ecx
   140005b8b:	ff d0                	call   *%rax
   140005b8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140005b92:	48 83 c4 20          	add    $0x20,%rsp
   140005b96:	5b                   	pop    %rbx
   140005b97:	c3                   	ret
   140005b98:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140005b9d:	74 ee                	je     140005b8d <_gnu_exception_handler+0x8d>
   140005b9f:	48 8b 05 6a 65 00 00 	mov    0x656a(%rip),%rax        # 14000c110 <__mingw_oldexcpt_handler>
   140005ba6:	48 85 c0             	test   %rax,%rax
   140005ba9:	74 25                	je     140005bd0 <_gnu_exception_handler+0xd0>
   140005bab:	48 89 d9             	mov    %rbx,%rcx
   140005bae:	48 83 c4 20          	add    $0x20,%rsp
   140005bb2:	5b                   	pop    %rbx
   140005bb3:	48 ff e0             	rex.W jmp *%rax
   140005bb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005bbd:	00 00 00 
   140005bc0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140005bc4:	0f 85 57 ff ff ff    	jne    140005b21 <_gnu_exception_handler+0x21>
   140005bca:	eb c1                	jmp    140005b8d <_gnu_exception_handler+0x8d>
   140005bcc:	0f 1f 40 00          	nopl   0x0(%rax)
   140005bd0:	31 c0                	xor    %eax,%eax
   140005bd2:	48 83 c4 20          	add    $0x20,%rsp
   140005bd6:	5b                   	pop    %rbx
   140005bd7:	c3                   	ret
   140005bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005bdf:	00 
   140005be0:	31 d2                	xor    %edx,%edx
   140005be2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005be7:	e8 5c 08 00 00       	call   140006448 <signal>
   140005bec:	48 83 f8 01          	cmp    $0x1,%rax
   140005bf0:	0f 84 89 00 00 00    	je     140005c7f <_gnu_exception_handler+0x17f>
   140005bf6:	48 85 c0             	test   %rax,%rax
   140005bf9:	74 a4                	je     140005b9f <_gnu_exception_handler+0x9f>
   140005bfb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005c00:	ff d0                	call   *%rax
   140005c02:	eb 89                	jmp    140005b8d <_gnu_exception_handler+0x8d>
   140005c04:	0f 1f 40 00          	nopl   0x0(%rax)
   140005c08:	31 d2                	xor    %edx,%edx
   140005c0a:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005c0f:	e8 34 08 00 00       	call   140006448 <signal>
   140005c14:	48 83 f8 01          	cmp    $0x1,%rax
   140005c18:	75 dc                	jne    140005bf6 <_gnu_exception_handler+0xf6>
   140005c1a:	ba 01 00 00 00       	mov    $0x1,%edx
   140005c1f:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005c24:	e8 1f 08 00 00       	call   140006448 <signal>
   140005c29:	e9 5f ff ff ff       	jmp    140005b8d <_gnu_exception_handler+0x8d>
   140005c2e:	66 90                	xchg   %ax,%ax
   140005c30:	31 d2                	xor    %edx,%edx
   140005c32:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140005c37:	e8 0c 08 00 00       	call   140006448 <signal>
   140005c3c:	48 83 f8 01          	cmp    $0x1,%rax
   140005c40:	74 29                	je     140005c6b <_gnu_exception_handler+0x16b>
   140005c42:	48 85 c0             	test   %rax,%rax
   140005c45:	0f 84 54 ff ff ff    	je     140005b9f <_gnu_exception_handler+0x9f>
   140005c4b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140005c50:	ff d0                	call   *%rax
   140005c52:	e9 36 ff ff ff       	jmp    140005b8d <_gnu_exception_handler+0x8d>
   140005c57:	ba 01 00 00 00       	mov    $0x1,%edx
   140005c5c:	b9 04 00 00 00       	mov    $0x4,%ecx
   140005c61:	e8 e2 07 00 00       	call   140006448 <signal>
   140005c66:	e9 22 ff ff ff       	jmp    140005b8d <_gnu_exception_handler+0x8d>
   140005c6b:	ba 01 00 00 00       	mov    $0x1,%edx
   140005c70:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140005c75:	e8 ce 07 00 00       	call   140006448 <signal>
   140005c7a:	e9 0e ff ff ff       	jmp    140005b8d <_gnu_exception_handler+0x8d>
   140005c7f:	ba 01 00 00 00       	mov    $0x1,%edx
   140005c84:	b9 08 00 00 00       	mov    $0x8,%ecx
   140005c89:	e8 ba 07 00 00       	call   140006448 <signal>
   140005c8e:	e8 cd f8 ff ff       	call   140005560 <_fpreset>
   140005c93:	e9 f5 fe ff ff       	jmp    140005b8d <_gnu_exception_handler+0x8d>
   140005c98:	90                   	nop
   140005c99:	90                   	nop
   140005c9a:	90                   	nop
   140005c9b:	90                   	nop
   140005c9c:	90                   	nop
   140005c9d:	90                   	nop
   140005c9e:	90                   	nop
   140005c9f:	90                   	nop

0000000140005ca0 <__mingwthr_run_key_dtors.part.0>:
   140005ca0:	41 54                	push   %r12
   140005ca2:	55                   	push   %rbp
   140005ca3:	57                   	push   %rdi
   140005ca4:	56                   	push   %rsi
   140005ca5:	53                   	push   %rbx
   140005ca6:	48 83 ec 20          	sub    $0x20,%rsp
   140005caa:	4c 8d 25 8f 64 00 00 	lea    0x648f(%rip),%r12        # 14000c140 <__mingwthr_cs>
   140005cb1:	4c 89 e1             	mov    %r12,%rcx
   140005cb4:	ff 15 62 76 00 00    	call   *0x7662(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   140005cba:	48 8b 1d 5f 64 00 00 	mov    0x645f(%rip),%rbx        # 14000c120 <key_dtor_list>
   140005cc1:	48 85 db             	test   %rbx,%rbx
   140005cc4:	74 36                	je     140005cfc <__mingwthr_run_key_dtors.part.0+0x5c>
   140005cc6:	48 8b 2d 7f 76 00 00 	mov    0x767f(%rip),%rbp        # 14000d34c <__imp_TlsGetValue>
   140005ccd:	48 8b 3d 50 76 00 00 	mov    0x7650(%rip),%rdi        # 14000d324 <__imp_GetLastError>
   140005cd4:	0f 1f 40 00          	nopl   0x0(%rax)
   140005cd8:	8b 0b                	mov    (%rbx),%ecx
   140005cda:	ff d5                	call   *%rbp
   140005cdc:	48 89 c6             	mov    %rax,%rsi
   140005cdf:	ff d7                	call   *%rdi
   140005ce1:	85 c0                	test   %eax,%eax
   140005ce3:	75 0e                	jne    140005cf3 <__mingwthr_run_key_dtors.part.0+0x53>
   140005ce5:	48 85 f6             	test   %rsi,%rsi
   140005ce8:	74 09                	je     140005cf3 <__mingwthr_run_key_dtors.part.0+0x53>
   140005cea:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140005cee:	48 89 f1             	mov    %rsi,%rcx
   140005cf1:	ff d0                	call   *%rax
   140005cf3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140005cf7:	48 85 db             	test   %rbx,%rbx
   140005cfa:	75 dc                	jne    140005cd8 <__mingwthr_run_key_dtors.part.0+0x38>
   140005cfc:	4c 89 e1             	mov    %r12,%rcx
   140005cff:	48 83 c4 20          	add    $0x20,%rsp
   140005d03:	5b                   	pop    %rbx
   140005d04:	5e                   	pop    %rsi
   140005d05:	5f                   	pop    %rdi
   140005d06:	5d                   	pop    %rbp
   140005d07:	41 5c                	pop    %r12
   140005d09:	48 ff 25 24 76 00 00 	rex.W jmp *0x7624(%rip)        # 14000d334 <__imp_LeaveCriticalSection>

0000000140005d10 <___w64_mingwthr_add_key_dtor>:
   140005d10:	57                   	push   %rdi
   140005d11:	56                   	push   %rsi
   140005d12:	53                   	push   %rbx
   140005d13:	48 83 ec 20          	sub    $0x20,%rsp
   140005d17:	8b 05 0b 64 00 00    	mov    0x640b(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140005d1d:	89 cf                	mov    %ecx,%edi
   140005d1f:	48 89 d6             	mov    %rdx,%rsi
   140005d22:	85 c0                	test   %eax,%eax
   140005d24:	75 0a                	jne    140005d30 <___w64_mingwthr_add_key_dtor+0x20>
   140005d26:	31 c0                	xor    %eax,%eax
   140005d28:	48 83 c4 20          	add    $0x20,%rsp
   140005d2c:	5b                   	pop    %rbx
   140005d2d:	5e                   	pop    %rsi
   140005d2e:	5f                   	pop    %rdi
   140005d2f:	c3                   	ret
   140005d30:	ba 18 00 00 00       	mov    $0x18,%edx
   140005d35:	b9 01 00 00 00       	mov    $0x1,%ecx
   140005d3a:	e8 d1 06 00 00       	call   140006410 <calloc>
   140005d3f:	48 89 c3             	mov    %rax,%rbx
   140005d42:	48 85 c0             	test   %rax,%rax
   140005d45:	74 33                	je     140005d7a <___w64_mingwthr_add_key_dtor+0x6a>
   140005d47:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140005d4b:	48 8d 35 ee 63 00 00 	lea    0x63ee(%rip),%rsi        # 14000c140 <__mingwthr_cs>
   140005d52:	89 38                	mov    %edi,(%rax)
   140005d54:	48 89 f1             	mov    %rsi,%rcx
   140005d57:	ff 15 bf 75 00 00    	call   *0x75bf(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   140005d5d:	48 8b 05 bc 63 00 00 	mov    0x63bc(%rip),%rax        # 14000c120 <key_dtor_list>
   140005d64:	48 89 f1             	mov    %rsi,%rcx
   140005d67:	48 89 1d b2 63 00 00 	mov    %rbx,0x63b2(%rip)        # 14000c120 <key_dtor_list>
   140005d6e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140005d72:	ff 15 bc 75 00 00    	call   *0x75bc(%rip)        # 14000d334 <__imp_LeaveCriticalSection>
   140005d78:	eb ac                	jmp    140005d26 <___w64_mingwthr_add_key_dtor+0x16>
   140005d7a:	83 c8 ff             	or     $0xffffffff,%eax
   140005d7d:	eb a9                	jmp    140005d28 <___w64_mingwthr_add_key_dtor+0x18>
   140005d7f:	90                   	nop

0000000140005d80 <___w64_mingwthr_remove_key_dtor>:
   140005d80:	56                   	push   %rsi
   140005d81:	53                   	push   %rbx
   140005d82:	48 83 ec 28          	sub    $0x28,%rsp
   140005d86:	8b 05 9c 63 00 00    	mov    0x639c(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140005d8c:	89 cb                	mov    %ecx,%ebx
   140005d8e:	85 c0                	test   %eax,%eax
   140005d90:	75 0e                	jne    140005da0 <___w64_mingwthr_remove_key_dtor+0x20>
   140005d92:	31 c0                	xor    %eax,%eax
   140005d94:	48 83 c4 28          	add    $0x28,%rsp
   140005d98:	5b                   	pop    %rbx
   140005d99:	5e                   	pop    %rsi
   140005d9a:	c3                   	ret
   140005d9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005da0:	48 8d 35 99 63 00 00 	lea    0x6399(%rip),%rsi        # 14000c140 <__mingwthr_cs>
   140005da7:	48 89 f1             	mov    %rsi,%rcx
   140005daa:	ff 15 6c 75 00 00    	call   *0x756c(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   140005db0:	48 8b 0d 69 63 00 00 	mov    0x6369(%rip),%rcx        # 14000c120 <key_dtor_list>
   140005db7:	48 85 c9             	test   %rcx,%rcx
   140005dba:	74 27                	je     140005de3 <___w64_mingwthr_remove_key_dtor+0x63>
   140005dbc:	31 d2                	xor    %edx,%edx
   140005dbe:	eb 0b                	jmp    140005dcb <___w64_mingwthr_remove_key_dtor+0x4b>
   140005dc0:	48 89 ca             	mov    %rcx,%rdx
   140005dc3:	48 85 c0             	test   %rax,%rax
   140005dc6:	74 1b                	je     140005de3 <___w64_mingwthr_remove_key_dtor+0x63>
   140005dc8:	48 89 c1             	mov    %rax,%rcx
   140005dcb:	8b 01                	mov    (%rcx),%eax
   140005dcd:	39 d8                	cmp    %ebx,%eax
   140005dcf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140005dd3:	75 eb                	jne    140005dc0 <___w64_mingwthr_remove_key_dtor+0x40>
   140005dd5:	48 85 d2             	test   %rdx,%rdx
   140005dd8:	74 1e                	je     140005df8 <___w64_mingwthr_remove_key_dtor+0x78>
   140005dda:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140005dde:	e8 45 06 00 00       	call   140006428 <free>
   140005de3:	48 89 f1             	mov    %rsi,%rcx
   140005de6:	ff 15 48 75 00 00    	call   *0x7548(%rip)        # 14000d334 <__imp_LeaveCriticalSection>
   140005dec:	31 c0                	xor    %eax,%eax
   140005dee:	48 83 c4 28          	add    $0x28,%rsp
   140005df2:	5b                   	pop    %rbx
   140005df3:	5e                   	pop    %rsi
   140005df4:	c3                   	ret
   140005df5:	0f 1f 00             	nopl   (%rax)
   140005df8:	48 89 05 21 63 00 00 	mov    %rax,0x6321(%rip)        # 14000c120 <key_dtor_list>
   140005dff:	eb dd                	jmp    140005dde <___w64_mingwthr_remove_key_dtor+0x5e>
   140005e01:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005e08:	00 00 00 00 
   140005e0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005e10 <__mingw_TLScallback>:
   140005e10:	53                   	push   %rbx
   140005e11:	48 83 ec 20          	sub    $0x20,%rsp
   140005e15:	83 fa 02             	cmp    $0x2,%edx
   140005e18:	0f 84 b2 00 00 00    	je     140005ed0 <__mingw_TLScallback+0xc0>
   140005e1e:	77 30                	ja     140005e50 <__mingw_TLScallback+0x40>
   140005e20:	85 d2                	test   %edx,%edx
   140005e22:	74 4c                	je     140005e70 <__mingw_TLScallback+0x60>
   140005e24:	8b 05 fe 62 00 00    	mov    0x62fe(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140005e2a:	85 c0                	test   %eax,%eax
   140005e2c:	0f 84 be 00 00 00    	je     140005ef0 <__mingw_TLScallback+0xe0>
   140005e32:	c7 05 ec 62 00 00 01 	movl   $0x1,0x62ec(%rip)        # 14000c128 <__mingwthr_cs_init>
   140005e39:	00 00 00 
   140005e3c:	b8 01 00 00 00       	mov    $0x1,%eax
   140005e41:	48 83 c4 20          	add    $0x20,%rsp
   140005e45:	5b                   	pop    %rbx
   140005e46:	c3                   	ret
   140005e47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140005e4e:	00 00 
   140005e50:	83 fa 03             	cmp    $0x3,%edx
   140005e53:	75 e7                	jne    140005e3c <__mingw_TLScallback+0x2c>
   140005e55:	8b 05 cd 62 00 00    	mov    0x62cd(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140005e5b:	85 c0                	test   %eax,%eax
   140005e5d:	74 dd                	je     140005e3c <__mingw_TLScallback+0x2c>
   140005e5f:	e8 3c fe ff ff       	call   140005ca0 <__mingwthr_run_key_dtors.part.0>
   140005e64:	eb d6                	jmp    140005e3c <__mingw_TLScallback+0x2c>
   140005e66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005e6d:	00 00 00 
   140005e70:	8b 05 b2 62 00 00    	mov    0x62b2(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140005e76:	85 c0                	test   %eax,%eax
   140005e78:	75 66                	jne    140005ee0 <__mingw_TLScallback+0xd0>
   140005e7a:	8b 05 a8 62 00 00    	mov    0x62a8(%rip),%eax        # 14000c128 <__mingwthr_cs_init>
   140005e80:	83 f8 01             	cmp    $0x1,%eax
   140005e83:	75 b7                	jne    140005e3c <__mingw_TLScallback+0x2c>
   140005e85:	48 8b 1d 94 62 00 00 	mov    0x6294(%rip),%rbx        # 14000c120 <key_dtor_list>
   140005e8c:	48 85 db             	test   %rbx,%rbx
   140005e8f:	74 18                	je     140005ea9 <__mingw_TLScallback+0x99>
   140005e91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005e98:	48 89 d9             	mov    %rbx,%rcx
   140005e9b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140005e9f:	e8 84 05 00 00       	call   140006428 <free>
   140005ea4:	48 85 db             	test   %rbx,%rbx
   140005ea7:	75 ef                	jne    140005e98 <__mingw_TLScallback+0x88>
   140005ea9:	48 8d 0d 90 62 00 00 	lea    0x6290(%rip),%rcx        # 14000c140 <__mingwthr_cs>
   140005eb0:	48 c7 05 65 62 00 00 	movq   $0x0,0x6265(%rip)        # 14000c120 <key_dtor_list>
   140005eb7:	00 00 00 00 
   140005ebb:	c7 05 63 62 00 00 00 	movl   $0x0,0x6263(%rip)        # 14000c128 <__mingwthr_cs_init>
   140005ec2:	00 00 00 
   140005ec5:	ff 15 49 74 00 00    	call   *0x7449(%rip)        # 14000d314 <__imp_DeleteCriticalSection>
   140005ecb:	e9 6c ff ff ff       	jmp    140005e3c <__mingw_TLScallback+0x2c>
   140005ed0:	e8 8b f6 ff ff       	call   140005560 <_fpreset>
   140005ed5:	b8 01 00 00 00       	mov    $0x1,%eax
   140005eda:	48 83 c4 20          	add    $0x20,%rsp
   140005ede:	5b                   	pop    %rbx
   140005edf:	c3                   	ret
   140005ee0:	e8 bb fd ff ff       	call   140005ca0 <__mingwthr_run_key_dtors.part.0>
   140005ee5:	eb 93                	jmp    140005e7a <__mingw_TLScallback+0x6a>
   140005ee7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140005eee:	00 00 
   140005ef0:	48 8d 0d 49 62 00 00 	lea    0x6249(%rip),%rcx        # 14000c140 <__mingwthr_cs>
   140005ef7:	ff 15 2f 74 00 00    	call   *0x742f(%rip)        # 14000d32c <__imp_InitializeCriticalSection>
   140005efd:	e9 30 ff ff ff       	jmp    140005e32 <__mingw_TLScallback+0x22>
   140005f02:	90                   	nop
   140005f03:	90                   	nop
   140005f04:	90                   	nop
   140005f05:	90                   	nop
   140005f06:	90                   	nop
   140005f07:	90                   	nop
   140005f08:	90                   	nop
   140005f09:	90                   	nop
   140005f0a:	90                   	nop
   140005f0b:	90                   	nop
   140005f0c:	90                   	nop
   140005f0d:	90                   	nop
   140005f0e:	90                   	nop
   140005f0f:	90                   	nop

0000000140005f10 <_ValidateImageBase>:
   140005f10:	31 c0                	xor    %eax,%eax
   140005f12:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140005f17:	75 0f                	jne    140005f28 <_ValidateImageBase+0x18>
   140005f19:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140005f1d:	48 01 d1             	add    %rdx,%rcx
   140005f20:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140005f26:	74 08                	je     140005f30 <_ValidateImageBase+0x20>
   140005f28:	c3                   	ret
   140005f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005f30:	31 c0                	xor    %eax,%eax
   140005f32:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140005f38:	0f 94 c0             	sete   %al
   140005f3b:	c3                   	ret
   140005f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005f40 <_FindPESection>:
   140005f40:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140005f44:	48 01 c1             	add    %rax,%rcx
   140005f47:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140005f4b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140005f50:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140005f55:	66 45 85 c0          	test   %r8w,%r8w
   140005f59:	74 32                	je     140005f8d <_FindPESection+0x4d>
   140005f5b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   140005f5f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140005f63:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140005f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140005f6f:	00 
   140005f70:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140005f74:	4c 89 c1             	mov    %r8,%rcx
   140005f77:	4c 39 c2             	cmp    %r8,%rdx
   140005f7a:	72 08                	jb     140005f84 <_FindPESection+0x44>
   140005f7c:	03 48 08             	add    0x8(%rax),%ecx
   140005f7f:	48 39 ca             	cmp    %rcx,%rdx
   140005f82:	72 0b                	jb     140005f8f <_FindPESection+0x4f>
   140005f84:	48 83 c0 28          	add    $0x28,%rax
   140005f88:	4c 39 c8             	cmp    %r9,%rax
   140005f8b:	75 e3                	jne    140005f70 <_FindPESection+0x30>
   140005f8d:	31 c0                	xor    %eax,%eax
   140005f8f:	c3                   	ret

0000000140005f90 <_FindPESectionByName>:
   140005f90:	57                   	push   %rdi
   140005f91:	56                   	push   %rsi
   140005f92:	53                   	push   %rbx
   140005f93:	48 83 ec 20          	sub    $0x20,%rsp
   140005f97:	48 89 ce             	mov    %rcx,%rsi
   140005f9a:	e8 b1 04 00 00       	call   140006450 <strlen>
   140005f9f:	48 83 f8 08          	cmp    $0x8,%rax
   140005fa3:	77 7b                	ja     140006020 <_FindPESectionByName+0x90>
   140005fa5:	48 8b 15 04 35 00 00 	mov    0x3504(%rip),%rdx        # 1400094b0 <.refptr.__ImageBase>
   140005fac:	31 db                	xor    %ebx,%ebx
   140005fae:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140005fb3:	75 59                	jne    14000600e <_FindPESectionByName+0x7e>
   140005fb5:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140005fb9:	48 01 d0             	add    %rdx,%rax
   140005fbc:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140005fc2:	75 4a                	jne    14000600e <_FindPESectionByName+0x7e>
   140005fc4:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140005fca:	75 42                	jne    14000600e <_FindPESectionByName+0x7e>
   140005fcc:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140005fd0:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140005fd5:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140005fd9:	66 85 d2             	test   %dx,%dx
   140005fdc:	74 42                	je     140006020 <_FindPESectionByName+0x90>
   140005fde:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140005fe1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140005fe5:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   140005fea:	eb 0d                	jmp    140005ff9 <_FindPESectionByName+0x69>
   140005fec:	0f 1f 40 00          	nopl   0x0(%rax)
   140005ff0:	48 83 c3 28          	add    $0x28,%rbx
   140005ff4:	48 39 fb             	cmp    %rdi,%rbx
   140005ff7:	74 27                	je     140006020 <_FindPESectionByName+0x90>
   140005ff9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140005fff:	48 89 f2             	mov    %rsi,%rdx
   140006002:	48 89 d9             	mov    %rbx,%rcx
   140006005:	e8 4e 04 00 00       	call   140006458 <strncmp>
   14000600a:	85 c0                	test   %eax,%eax
   14000600c:	75 e2                	jne    140005ff0 <_FindPESectionByName+0x60>
   14000600e:	48 89 d8             	mov    %rbx,%rax
   140006011:	48 83 c4 20          	add    $0x20,%rsp
   140006015:	5b                   	pop    %rbx
   140006016:	5e                   	pop    %rsi
   140006017:	5f                   	pop    %rdi
   140006018:	c3                   	ret
   140006019:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006020:	31 db                	xor    %ebx,%ebx
   140006022:	48 89 d8             	mov    %rbx,%rax
   140006025:	48 83 c4 20          	add    $0x20,%rsp
   140006029:	5b                   	pop    %rbx
   14000602a:	5e                   	pop    %rsi
   14000602b:	5f                   	pop    %rdi
   14000602c:	c3                   	ret
   14000602d:	0f 1f 00             	nopl   (%rax)

0000000140006030 <__mingw_GetSectionForAddress>:
   140006030:	48 8b 15 79 34 00 00 	mov    0x3479(%rip),%rdx        # 1400094b0 <.refptr.__ImageBase>
   140006037:	31 c0                	xor    %eax,%eax
   140006039:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000603e:	75 10                	jne    140006050 <__mingw_GetSectionForAddress+0x20>
   140006040:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140006044:	49 01 d0             	add    %rdx,%r8
   140006047:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000604e:	74 08                	je     140006058 <__mingw_GetSectionForAddress+0x28>
   140006050:	c3                   	ret
   140006051:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006058:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000605f:	75 ef                	jne    140006050 <__mingw_GetSectionForAddress+0x20>
   140006061:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140006066:	48 29 d1             	sub    %rdx,%rcx
   140006069:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000606e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140006073:	66 45 85 c0          	test   %r8w,%r8w
   140006077:	74 34                	je     1400060ad <__mingw_GetSectionForAddress+0x7d>
   140006079:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000607d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140006081:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140006086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000608d:	00 00 00 
   140006090:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140006094:	4c 89 c2             	mov    %r8,%rdx
   140006097:	4c 39 c1             	cmp    %r8,%rcx
   14000609a:	72 08                	jb     1400060a4 <__mingw_GetSectionForAddress+0x74>
   14000609c:	03 50 08             	add    0x8(%rax),%edx
   14000609f:	48 39 d1             	cmp    %rdx,%rcx
   1400060a2:	72 ac                	jb     140006050 <__mingw_GetSectionForAddress+0x20>
   1400060a4:	48 83 c0 28          	add    $0x28,%rax
   1400060a8:	4c 39 c8             	cmp    %r9,%rax
   1400060ab:	75 e3                	jne    140006090 <__mingw_GetSectionForAddress+0x60>
   1400060ad:	31 c0                	xor    %eax,%eax
   1400060af:	c3                   	ret

00000001400060b0 <__mingw_GetSectionCount>:
   1400060b0:	48 8b 05 f9 33 00 00 	mov    0x33f9(%rip),%rax        # 1400094b0 <.refptr.__ImageBase>
   1400060b7:	31 c9                	xor    %ecx,%ecx
   1400060b9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400060be:	75 0f                	jne    1400060cf <__mingw_GetSectionCount+0x1f>
   1400060c0:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400060c4:	48 01 d0             	add    %rdx,%rax
   1400060c7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400060cd:	74 09                	je     1400060d8 <__mingw_GetSectionCount+0x28>
   1400060cf:	89 c8                	mov    %ecx,%eax
   1400060d1:	c3                   	ret
   1400060d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400060d8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400060de:	75 ef                	jne    1400060cf <__mingw_GetSectionCount+0x1f>
   1400060e0:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   1400060e4:	89 c8                	mov    %ecx,%eax
   1400060e6:	c3                   	ret
   1400060e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400060ee:	00 00 

00000001400060f0 <_FindPESectionExec>:
   1400060f0:	4c 8b 05 b9 33 00 00 	mov    0x33b9(%rip),%r8        # 1400094b0 <.refptr.__ImageBase>
   1400060f7:	31 c0                	xor    %eax,%eax
   1400060f9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400060ff:	75 0f                	jne    140006110 <_FindPESectionExec+0x20>
   140006101:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140006105:	4c 01 c2             	add    %r8,%rdx
   140006108:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000610e:	74 08                	je     140006118 <_FindPESectionExec+0x28>
   140006110:	c3                   	ret
   140006111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006118:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000611e:	75 f0                	jne    140006110 <_FindPESectionExec+0x20>
   140006120:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140006124:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140006129:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   14000612e:	66 45 85 c0          	test   %r8w,%r8w
   140006132:	74 2c                	je     140006160 <_FindPESectionExec+0x70>
   140006134:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140006138:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000613c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140006141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006148:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000614c:	74 09                	je     140006157 <_FindPESectionExec+0x67>
   14000614e:	48 85 c9             	test   %rcx,%rcx
   140006151:	74 bd                	je     140006110 <_FindPESectionExec+0x20>
   140006153:	48 83 e9 01          	sub    $0x1,%rcx
   140006157:	48 83 c0 28          	add    $0x28,%rax
   14000615b:	48 39 d0             	cmp    %rdx,%rax
   14000615e:	75 e8                	jne    140006148 <_FindPESectionExec+0x58>
   140006160:	31 c0                	xor    %eax,%eax
   140006162:	c3                   	ret
   140006163:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000616a:	00 00 00 00 
   14000616e:	66 90                	xchg   %ax,%ax

0000000140006170 <_GetPEImageBase>:
   140006170:	48 8b 05 39 33 00 00 	mov    0x3339(%rip),%rax        # 1400094b0 <.refptr.__ImageBase>
   140006177:	31 d2                	xor    %edx,%edx
   140006179:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000617e:	75 0f                	jne    14000618f <_GetPEImageBase+0x1f>
   140006180:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140006184:	48 01 c1             	add    %rax,%rcx
   140006187:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000618d:	74 09                	je     140006198 <_GetPEImageBase+0x28>
   14000618f:	48 89 d0             	mov    %rdx,%rax
   140006192:	c3                   	ret
   140006193:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006198:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000619e:	48 0f 44 d0          	cmove  %rax,%rdx
   1400061a2:	48 89 d0             	mov    %rdx,%rax
   1400061a5:	c3                   	ret
   1400061a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400061ad:	00 00 00 

00000001400061b0 <_IsNonwritableInCurrentImage>:
   1400061b0:	48 8b 15 f9 32 00 00 	mov    0x32f9(%rip),%rdx        # 1400094b0 <.refptr.__ImageBase>
   1400061b7:	31 c0                	xor    %eax,%eax
   1400061b9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400061be:	75 10                	jne    1400061d0 <_IsNonwritableInCurrentImage+0x20>
   1400061c0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400061c4:	49 01 d0             	add    %rdx,%r8
   1400061c7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400061ce:	74 08                	je     1400061d8 <_IsNonwritableInCurrentImage+0x28>
   1400061d0:	c3                   	ret
   1400061d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400061d8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400061df:	75 ef                	jne    1400061d0 <_IsNonwritableInCurrentImage+0x20>
   1400061e1:	48 29 d1             	sub    %rdx,%rcx
   1400061e4:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   1400061e9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400061ee:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400061f3:	66 45 85 c9          	test   %r9w,%r9w
   1400061f7:	74 d7                	je     1400061d0 <_IsNonwritableInCurrentImage+0x20>
   1400061f9:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   1400061fd:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140006201:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140006206:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000620d:	00 00 00 
   140006210:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140006214:	4c 89 c0             	mov    %r8,%rax
   140006217:	4c 39 c1             	cmp    %r8,%rcx
   14000621a:	72 08                	jb     140006224 <_IsNonwritableInCurrentImage+0x74>
   14000621c:	03 42 08             	add    0x8(%rdx),%eax
   14000621f:	48 39 c1             	cmp    %rax,%rcx
   140006222:	72 0c                	jb     140006230 <_IsNonwritableInCurrentImage+0x80>
   140006224:	48 83 c2 28          	add    $0x28,%rdx
   140006228:	49 39 d1             	cmp    %rdx,%r9
   14000622b:	75 e3                	jne    140006210 <_IsNonwritableInCurrentImage+0x60>
   14000622d:	31 c0                	xor    %eax,%eax
   14000622f:	c3                   	ret
   140006230:	8b 42 24             	mov    0x24(%rdx),%eax
   140006233:	f7 d0                	not    %eax
   140006235:	c1 e8 1f             	shr    $0x1f,%eax
   140006238:	c3                   	ret
   140006239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140006240 <__mingw_enum_import_library_names>:
   140006240:	4c 8b 1d 69 32 00 00 	mov    0x3269(%rip),%r11        # 1400094b0 <.refptr.__ImageBase>
   140006247:	45 31 c9             	xor    %r9d,%r9d
   14000624a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140006250:	75 10                	jne    140006262 <__mingw_enum_import_library_names+0x22>
   140006252:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140006256:	4d 01 d8             	add    %r11,%r8
   140006259:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140006260:	74 0e                	je     140006270 <__mingw_enum_import_library_names+0x30>
   140006262:	4c 89 c8             	mov    %r9,%rax
   140006265:	c3                   	ret
   140006266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000626d:	00 00 00 
   140006270:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140006277:	75 e9                	jne    140006262 <__mingw_enum_import_library_names+0x22>
   140006279:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140006280:	85 c0                	test   %eax,%eax
   140006282:	74 de                	je     140006262 <__mingw_enum_import_library_names+0x22>
   140006284:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140006289:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   14000628e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140006293:	66 45 85 d2          	test   %r10w,%r10w
   140006297:	74 c9                	je     140006262 <__mingw_enum_import_library_names+0x22>
   140006299:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000629d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400062a1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400062a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400062ad:	00 00 00 
   1400062b0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400062b4:	4d 89 c8             	mov    %r9,%r8
   1400062b7:	4c 39 c8             	cmp    %r9,%rax
   1400062ba:	72 09                	jb     1400062c5 <__mingw_enum_import_library_names+0x85>
   1400062bc:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400062c0:	4c 39 c0             	cmp    %r8,%rax
   1400062c3:	72 13                	jb     1400062d8 <__mingw_enum_import_library_names+0x98>
   1400062c5:	48 83 c2 28          	add    $0x28,%rdx
   1400062c9:	4c 39 d2             	cmp    %r10,%rdx
   1400062cc:	75 e2                	jne    1400062b0 <__mingw_enum_import_library_names+0x70>
   1400062ce:	45 31 c9             	xor    %r9d,%r9d
   1400062d1:	4c 89 c8             	mov    %r9,%rax
   1400062d4:	c3                   	ret
   1400062d5:	0f 1f 00             	nopl   (%rax)
   1400062d8:	4c 01 d8             	add    %r11,%rax
   1400062db:	eb 0a                	jmp    1400062e7 <__mingw_enum_import_library_names+0xa7>
   1400062dd:	0f 1f 00             	nopl   (%rax)
   1400062e0:	83 e9 01             	sub    $0x1,%ecx
   1400062e3:	48 83 c0 14          	add    $0x14,%rax
   1400062e7:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400062eb:	45 85 c0             	test   %r8d,%r8d
   1400062ee:	75 07                	jne    1400062f7 <__mingw_enum_import_library_names+0xb7>
   1400062f0:	8b 50 0c             	mov    0xc(%rax),%edx
   1400062f3:	85 d2                	test   %edx,%edx
   1400062f5:	74 d7                	je     1400062ce <__mingw_enum_import_library_names+0x8e>
   1400062f7:	85 c9                	test   %ecx,%ecx
   1400062f9:	7f e5                	jg     1400062e0 <__mingw_enum_import_library_names+0xa0>
   1400062fb:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400062ff:	4d 01 d9             	add    %r11,%r9
   140006302:	4c 89 c8             	mov    %r9,%rax
   140006305:	c3                   	ret
   140006306:	90                   	nop
   140006307:	90                   	nop
   140006308:	90                   	nop
   140006309:	90                   	nop
   14000630a:	90                   	nop
   14000630b:	90                   	nop
   14000630c:	90                   	nop
   14000630d:	90                   	nop
   14000630e:	90                   	nop
   14000630f:	90                   	nop

0000000140006310 <_Unwind_Resume>:
   140006310:	ff 25 ee 6f 00 00    	jmp    *0x6fee(%rip)        # 14000d304 <__IAT_start__>
   140006316:	90                   	nop
   140006317:	90                   	nop
   140006318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000631f:	00 

0000000140006320 <___chkstk_ms>:
   140006320:	51                   	push   %rcx
   140006321:	50                   	push   %rax
   140006322:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140006328:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000632d:	72 19                	jb     140006348 <___chkstk_ms+0x28>
   14000632f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140006336:	48 83 09 00          	orq    $0x0,(%rcx)
   14000633a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140006340:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140006346:	77 e7                	ja     14000632f <___chkstk_ms+0xf>
   140006348:	48 29 c1             	sub    %rax,%rcx
   14000634b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000634f:	58                   	pop    %rax
   140006350:	59                   	pop    %rcx
   140006351:	c3                   	ret
   140006352:	90                   	nop
   140006353:	90                   	nop
   140006354:	90                   	nop
   140006355:	90                   	nop
   140006356:	90                   	nop
   140006357:	90                   	nop
   140006358:	90                   	nop
   140006359:	90                   	nop
   14000635a:	90                   	nop
   14000635b:	90                   	nop
   14000635c:	90                   	nop
   14000635d:	90                   	nop
   14000635e:	90                   	nop
   14000635f:	90                   	nop

0000000140006360 <__p__fmode>:
   140006360:	48 8b 05 a9 31 00 00 	mov    0x31a9(%rip),%rax        # 140009510 <.refptr.__imp__fmode>
   140006367:	48 8b 00             	mov    (%rax),%rax
   14000636a:	c3                   	ret
   14000636b:	90                   	nop
   14000636c:	90                   	nop
   14000636d:	90                   	nop
   14000636e:	90                   	nop
   14000636f:	90                   	nop

0000000140006370 <__p__commode>:
   140006370:	48 8b 05 89 31 00 00 	mov    0x3189(%rip),%rax        # 140009500 <.refptr.__imp__commode>
   140006377:	48 8b 00             	mov    (%rax),%rax
   14000637a:	c3                   	ret
   14000637b:	90                   	nop
   14000637c:	90                   	nop
   14000637d:	90                   	nop
   14000637e:	90                   	nop
   14000637f:	90                   	nop

0000000140006380 <_get_invalid_parameter_handler>:
   140006380:	48 8b 05 29 5e 00 00 	mov    0x5e29(%rip),%rax        # 14000c1b0 <handler>
   140006387:	c3                   	ret
   140006388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000638f:	00 

0000000140006390 <_set_invalid_parameter_handler>:
   140006390:	48 89 c8             	mov    %rcx,%rax
   140006393:	48 87 05 16 5e 00 00 	xchg   %rax,0x5e16(%rip)        # 14000c1b0 <handler>
   14000639a:	c3                   	ret
   14000639b:	90                   	nop
   14000639c:	90                   	nop
   14000639d:	90                   	nop
   14000639e:	90                   	nop
   14000639f:	90                   	nop

00000001400063a0 <__acrt_iob_func>:
   1400063a0:	53                   	push   %rbx
   1400063a1:	48 83 ec 20          	sub    $0x20,%rsp
   1400063a5:	89 cb                	mov    %ecx,%ebx
   1400063a7:	e8 24 00 00 00       	call   1400063d0 <__iob_func>
   1400063ac:	89 d9                	mov    %ebx,%ecx
   1400063ae:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   1400063b2:	48 c1 e2 04          	shl    $0x4,%rdx
   1400063b6:	48 01 d0             	add    %rdx,%rax
   1400063b9:	48 83 c4 20          	add    $0x20,%rsp
   1400063bd:	5b                   	pop    %rbx
   1400063be:	c3                   	ret
   1400063bf:	90                   	nop

00000001400063c0 <__C_specific_handler>:
   1400063c0:	ff 25 a6 6f 00 00    	jmp    *0x6fa6(%rip)        # 14000d36c <__imp___C_specific_handler>
   1400063c6:	90                   	nop
   1400063c7:	90                   	nop

00000001400063c8 <__getmainargs>:
   1400063c8:	ff 25 a6 6f 00 00    	jmp    *0x6fa6(%rip)        # 14000d374 <__imp___getmainargs>
   1400063ce:	90                   	nop
   1400063cf:	90                   	nop

00000001400063d0 <__iob_func>:
   1400063d0:	ff 25 ae 6f 00 00    	jmp    *0x6fae(%rip)        # 14000d384 <__imp___iob_func>
   1400063d6:	90                   	nop
   1400063d7:	90                   	nop

00000001400063d8 <__set_app_type>:
   1400063d8:	ff 25 ae 6f 00 00    	jmp    *0x6fae(%rip)        # 14000d38c <__imp___set_app_type>
   1400063de:	90                   	nop
   1400063df:	90                   	nop

00000001400063e0 <__setusermatherr>:
   1400063e0:	ff 25 ae 6f 00 00    	jmp    *0x6fae(%rip)        # 14000d394 <__imp___setusermatherr>
   1400063e6:	90                   	nop
   1400063e7:	90                   	nop

00000001400063e8 <_amsg_exit>:
   1400063e8:	ff 25 ae 6f 00 00    	jmp    *0x6fae(%rip)        # 14000d39c <__imp__amsg_exit>
   1400063ee:	90                   	nop
   1400063ef:	90                   	nop

00000001400063f0 <_cexit>:
   1400063f0:	ff 25 ae 6f 00 00    	jmp    *0x6fae(%rip)        # 14000d3a4 <__imp__cexit>
   1400063f6:	90                   	nop
   1400063f7:	90                   	nop

00000001400063f8 <_initterm>:
   1400063f8:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3bc <__imp__initterm>
   1400063fe:	90                   	nop
   1400063ff:	90                   	nop

0000000140006400 <_onexit>:
   140006400:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3c4 <__imp__onexit>
   140006406:	90                   	nop
   140006407:	90                   	nop

0000000140006408 <abort>:
   140006408:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3cc <__imp_abort>
   14000640e:	90                   	nop
   14000640f:	90                   	nop

0000000140006410 <calloc>:
   140006410:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3d4 <__imp_calloc>
   140006416:	90                   	nop
   140006417:	90                   	nop

0000000140006418 <exit>:
   140006418:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3dc <__imp_exit>
   14000641e:	90                   	nop
   14000641f:	90                   	nop

0000000140006420 <fprintf>:
   140006420:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3e4 <__imp_fprintf>
   140006426:	90                   	nop
   140006427:	90                   	nop

0000000140006428 <free>:
   140006428:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3ec <__imp_free>
   14000642e:	90                   	nop
   14000642f:	90                   	nop

0000000140006430 <fwrite>:
   140006430:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3f4 <__imp_fwrite>
   140006436:	90                   	nop
   140006437:	90                   	nop

0000000140006438 <malloc>:
   140006438:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d3fc <__imp_malloc>
   14000643e:	90                   	nop
   14000643f:	90                   	nop

0000000140006440 <memcpy>:
   140006440:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d404 <__imp_memcpy>
   140006446:	90                   	nop
   140006447:	90                   	nop

0000000140006448 <signal>:
   140006448:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d40c <__imp_signal>
   14000644e:	90                   	nop
   14000644f:	90                   	nop

0000000140006450 <strlen>:
   140006450:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d414 <__imp_strlen>
   140006456:	90                   	nop
   140006457:	90                   	nop

0000000140006458 <strncmp>:
   140006458:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d41c <__imp_strncmp>
   14000645e:	90                   	nop
   14000645f:	90                   	nop

0000000140006460 <vfprintf>:
   140006460:	ff 25 be 6f 00 00    	jmp    *0x6fbe(%rip)        # 14000d424 <__imp_vfprintf>
   140006466:	90                   	nop
   140006467:	90                   	nop
   140006468:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000646f:	00 

0000000140006470 <VirtualQuery>:
   140006470:	ff 25 e6 6e 00 00    	jmp    *0x6ee6(%rip)        # 14000d35c <__imp_VirtualQuery>
   140006476:	90                   	nop
   140006477:	90                   	nop

0000000140006478 <VirtualProtect>:
   140006478:	ff 25 d6 6e 00 00    	jmp    *0x6ed6(%rip)        # 14000d354 <__imp_VirtualProtect>
   14000647e:	90                   	nop
   14000647f:	90                   	nop

0000000140006480 <TlsGetValue>:
   140006480:	ff 25 c6 6e 00 00    	jmp    *0x6ec6(%rip)        # 14000d34c <__imp_TlsGetValue>
   140006486:	90                   	nop
   140006487:	90                   	nop

0000000140006488 <Sleep>:
   140006488:	ff 25 b6 6e 00 00    	jmp    *0x6eb6(%rip)        # 14000d344 <__imp_Sleep>
   14000648e:	90                   	nop
   14000648f:	90                   	nop

0000000140006490 <SetUnhandledExceptionFilter>:
   140006490:	ff 25 a6 6e 00 00    	jmp    *0x6ea6(%rip)        # 14000d33c <__imp_SetUnhandledExceptionFilter>
   140006496:	90                   	nop
   140006497:	90                   	nop

0000000140006498 <LeaveCriticalSection>:
   140006498:	ff 25 96 6e 00 00    	jmp    *0x6e96(%rip)        # 14000d334 <__imp_LeaveCriticalSection>
   14000649e:	90                   	nop
   14000649f:	90                   	nop

00000001400064a0 <InitializeCriticalSection>:
   1400064a0:	ff 25 86 6e 00 00    	jmp    *0x6e86(%rip)        # 14000d32c <__imp_InitializeCriticalSection>
   1400064a6:	90                   	nop
   1400064a7:	90                   	nop

00000001400064a8 <GetLastError>:
   1400064a8:	ff 25 76 6e 00 00    	jmp    *0x6e76(%rip)        # 14000d324 <__imp_GetLastError>
   1400064ae:	90                   	nop
   1400064af:	90                   	nop

00000001400064b0 <EnterCriticalSection>:
   1400064b0:	ff 25 66 6e 00 00    	jmp    *0x6e66(%rip)        # 14000d31c <__imp_EnterCriticalSection>
   1400064b6:	90                   	nop
   1400064b7:	90                   	nop

00000001400064b8 <DeleteCriticalSection>:
   1400064b8:	ff 25 56 6e 00 00    	jmp    *0x6e56(%rip)        # 14000d314 <__imp_DeleteCriticalSection>
   1400064be:	90                   	nop
   1400064bf:	90                   	nop

00000001400064c0 <_ZNKSt5ctypeIcE8do_widenEc>:
   1400064c0:	89 d0                	mov    %edx,%eax
   1400064c2:	c3                   	ret
   1400064c3:	90                   	nop
   1400064c4:	90                   	nop
   1400064c5:	90                   	nop
   1400064c6:	90                   	nop
   1400064c7:	90                   	nop
   1400064c8:	90                   	nop
   1400064c9:	90                   	nop
   1400064ca:	90                   	nop
   1400064cb:	90                   	nop
   1400064cc:	90                   	nop
   1400064cd:	90                   	nop
   1400064ce:	90                   	nop
   1400064cf:	90                   	nop

00000001400064d0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>:
   1400064d0:	41 57                	push   %r15
   1400064d2:	41 56                	push   %r14
   1400064d4:	41 55                	push   %r13
   1400064d6:	41 54                	push   %r12
   1400064d8:	55                   	push   %rbp
   1400064d9:	57                   	push   %rdi
   1400064da:	56                   	push   %rsi
   1400064db:	53                   	push   %rbx
   1400064dc:	48 83 ec 38          	sub    $0x38,%rsp
   1400064e0:	49 89 cc             	mov    %rcx,%r12
   1400064e3:	48 89 d3             	mov    %rdx,%rbx
   1400064e6:	48 85 d2             	test   %rdx,%rdx
   1400064e9:	74 64                	je     14000654f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   1400064eb:	48 b8 55 55 55 55 55 	movabs $0x555555555555555,%rax
   1400064f2:	55 55 05 
   1400064f5:	48 8b 79 08          	mov    0x8(%rcx),%rdi
   1400064f9:	48 89 fe             	mov    %rdi,%rsi
   1400064fc:	48 2b 31             	sub    (%rcx),%rsi
   1400064ff:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
   140006506:	aa aa aa 
   140006509:	49 89 f5             	mov    %rsi,%r13
   14000650c:	49 c1 fd 03          	sar    $0x3,%r13
   140006510:	4c 0f af e9          	imul   %rcx,%r13
   140006514:	4c 29 e8             	sub    %r13,%rax
   140006517:	48 89 c2             	mov    %rax,%rdx
   14000651a:	49 8b 44 24 10       	mov    0x10(%r12),%rax
   14000651f:	48 29 f8             	sub    %rdi,%rax
   140006522:	48 c1 f8 03          	sar    $0x3,%rax
   140006526:	48 0f af c1          	imul   %rcx,%rax
   14000652a:	48 39 d8             	cmp    %rbx,%rax
   14000652d:	72 31                	jb     140006560 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x90>
   14000652f:	48 89 fe             	mov    %rdi,%rsi
   140006532:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006538:	48 89 f1             	mov    %rsi,%rcx
   14000653b:	e8 e0 b3 ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140006540:	48 83 c6 18          	add    $0x18,%rsi
   140006544:	48 83 eb 01          	sub    $0x1,%rbx
   140006548:	75 ee                	jne    140006538 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x68>
   14000654a:	49 89 74 24 08       	mov    %rsi,0x8(%r12)
   14000654f:	48 83 c4 38          	add    $0x38,%rsp
   140006553:	5b                   	pop    %rbx
   140006554:	5e                   	pop    %rsi
   140006555:	5f                   	pop    %rdi
   140006556:	5d                   	pop    %rbp
   140006557:	41 5c                	pop    %r12
   140006559:	41 5d                	pop    %r13
   14000655b:	41 5e                	pop    %r14
   14000655d:	41 5f                	pop    %r15
   14000655f:	c3                   	ret
   140006560:	48 39 da             	cmp    %rbx,%rdx
   140006563:	0f 82 8d 01 00 00    	jb     1400066f6 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x226>
   140006569:	49 39 dd             	cmp    %rbx,%r13
   14000656c:	0f 82 3e 01 00 00    	jb     1400066b0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1e0>
   140006572:	48 ba f8 ff ff ff ff 	movabs $0x7ffffffffffffff8,%rdx
   140006579:	ff ff 7f 
   14000657c:	4b 8d 44 2d 00       	lea    0x0(%r13,%r13,1),%rax
   140006581:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140006586:	4c 39 e8             	cmp    %r13,%rax
   140006589:	0f 83 48 01 00 00    	jae    1400066d7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x207>
   14000658f:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006594:	48 89 df             	mov    %rbx,%rdi
   140006597:	e8 1c ec ff ff       	call   1400051b8 <_Znwy>
   14000659c:	49 89 c6             	mov    %rax,%r14
   14000659f:	48 8d 04 30          	lea    (%rax,%rsi,1),%rax
   1400065a3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400065a8:	48 89 c6             	mov    %rax,%rsi
   1400065ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400065b0:	48 89 f1             	mov    %rsi,%rcx
   1400065b3:	e8 68 b3 ff ff       	call   140001920 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400065b8:	48 83 c6 18          	add    $0x18,%rsi
   1400065bc:	48 83 ef 01          	sub    $0x1,%rdi
   1400065c0:	75 ee                	jne    1400065b0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xe0>
   1400065c2:	4d 8b 7c 24 08       	mov    0x8(%r12),%r15
   1400065c7:	49 8b 34 24          	mov    (%r12),%rsi
   1400065cb:	4c 89 f5             	mov    %r14,%rbp
   1400065ce:	49 39 f7             	cmp    %rsi,%r15
   1400065d1:	0f 84 9b 00 00 00    	je     140006672 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   1400065d7:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400065dc:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   1400065e3:	00 
   1400065e4:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400065e8:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   1400065ec:	48 8b 3e             	mov    (%rsi),%rdi
   1400065ef:	48 39 fe             	cmp    %rdi,%rsi
   1400065f2:	74 2d                	je     140006621 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x151>
   1400065f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400065f8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400065fd:	e8 b6 eb ff ff       	call   1400051b8 <_Znwy>
   140006602:	48 89 c1             	mov    %rax,%rcx
   140006605:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140006609:	48 89 ea             	mov    %rbp,%rdx
   14000660c:	88 41 10             	mov    %al,0x10(%rcx)
   14000660f:	e8 04 ec ff ff       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006614:	48 8b 3f             	mov    (%rdi),%rdi
   140006617:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   14000661c:	48 39 fe             	cmp    %rdi,%rsi
   14000661f:	75 d7                	jne    1400065f8 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x128>
   140006621:	48 83 c6 18          	add    $0x18,%rsi
   140006625:	48 83 c5 18          	add    $0x18,%rbp
   140006629:	49 39 f7             	cmp    %rsi,%r15
   14000662c:	75 a9                	jne    1400065d7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x107>
   14000662e:	49 8b 6c 24 08       	mov    0x8(%r12),%rbp
   140006633:	49 8b 34 24          	mov    (%r12),%rsi
   140006637:	48 39 f5             	cmp    %rsi,%rbp
   14000663a:	74 36                	je     140006672 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   14000663c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006640:	48 8b 3e             	mov    (%rsi),%rdi
   140006643:	48 39 fe             	cmp    %rdi,%rsi
   140006646:	74 1d                	je     140006665 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x195>
   140006648:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000664f:	00 
   140006650:	48 89 f9             	mov    %rdi,%rcx
   140006653:	48 8b 3f             	mov    (%rdi),%rdi
   140006656:	ba 18 00 00 00       	mov    $0x18,%edx
   14000665b:	e8 60 eb ff ff       	call   1400051c0 <_ZdlPvy>
   140006660:	48 39 fe             	cmp    %rdi,%rsi
   140006663:	75 eb                	jne    140006650 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x180>
   140006665:	48 83 c6 18          	add    $0x18,%rsi
   140006669:	48 39 f5             	cmp    %rsi,%rbp
   14000666c:	75 d2                	jne    140006640 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x170>
   14000666e:	49 8b 34 24          	mov    (%r12),%rsi
   140006672:	48 85 f6             	test   %rsi,%rsi
   140006675:	74 10                	je     140006687 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1b7>
   140006677:	49 8b 54 24 10       	mov    0x10(%r12),%rdx
   14000667c:	48 89 f1             	mov    %rsi,%rcx
   14000667f:	48 29 f2             	sub    %rsi,%rdx
   140006682:	e8 39 eb ff ff       	call   1400051c0 <_ZdlPvy>
   140006687:	4c 01 eb             	add    %r13,%rbx
   14000668a:	4d 89 34 24          	mov    %r14,(%r12)
   14000668e:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   140006692:	49 8d 04 c6          	lea    (%r14,%rax,8),%rax
   140006696:	49 89 44 24 08       	mov    %rax,0x8(%r12)
   14000669b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400066a0:	49 01 c6             	add    %rax,%r14
   1400066a3:	4d 89 74 24 10       	mov    %r14,0x10(%r12)
   1400066a8:	e9 a2 fe ff ff       	jmp    14000654f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   1400066ad:	0f 1f 00             	nopl   (%rax)
   1400066b0:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   1400066b7:	55 55 05 
   1400066ba:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
   1400066be:	48 39 d0             	cmp    %rdx,%rax
   1400066c1:	48 0f 47 c2          	cmova  %rdx,%rax
   1400066c5:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   1400066c9:	48 c1 e0 03          	shl    $0x3,%rax
   1400066cd:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400066d2:	e9 b8 fe ff ff       	jmp    14000658f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   1400066d7:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   1400066de:	55 55 05 
   1400066e1:	48 39 d0             	cmp    %rdx,%rax
   1400066e4:	48 0f 47 c2          	cmova  %rdx,%rax
   1400066e8:	48 6b c0 18          	imul   $0x18,%rax,%rax
   1400066ec:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400066f1:	e9 99 fe ff ff       	jmp    14000658f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   1400066f6:	48 8d 0d 7b 29 00 00 	lea    0x297b(%rip),%rcx        # 140009078 <.rdata+0x18>
   1400066fd:	e8 ce ea ff ff       	call   1400051d0 <_ZSt20__throw_length_errorPKc>
   140006702:	48 89 c1             	mov    %rax,%rcx
   140006705:	e8 9e ea ff ff       	call   1400051a8 <__cxa_begin_catch>
   14000670a:	48 39 fe             	cmp    %rdi,%rsi
   14000670d:	0f 84 af 00 00 00    	je     1400067c2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2f2>
   140006713:	48 8b 0f             	mov    (%rdi),%rcx
   140006716:	48 39 cf             	cmp    %rcx,%rdi
   140006719:	0f 84 e2 00 00 00    	je     140006801 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x331>
   14000671f:	48 8b 19             	mov    (%rcx),%rbx
   140006722:	ba 18 00 00 00       	mov    $0x18,%edx
   140006727:	e8 94 ea ff ff       	call   1400051c0 <_ZdlPvy>
   14000672c:	48 89 d9             	mov    %rbx,%rcx
   14000672f:	eb e5                	jmp    140006716 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x246>
   140006731:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   140006735:	48 89 c6             	mov    %rax,%rsi
   140006738:	48 39 cd             	cmp    %rcx,%rbp
   14000673b:	0f 84 96 00 00 00    	je     1400067d7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x307>
   140006741:	48 8b 39             	mov    (%rcx),%rdi
   140006744:	ba 18 00 00 00       	mov    $0x18,%edx
   140006749:	e8 72 ea ff ff       	call   1400051c0 <_ZdlPvy>
   14000674e:	48 89 f9             	mov    %rdi,%rcx
   140006751:	eb e5                	jmp    140006738 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x268>
   140006753:	48 89 c1             	mov    %rax,%rcx
   140006756:	e8 4d ea ff ff       	call   1400051a8 <__cxa_begin_catch>
   14000675b:	48 39 74 24 28       	cmp    %rsi,0x28(%rsp)
   140006760:	74 21                	je     140006783 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2b3>
   140006762:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006767:	48 8b 08             	mov    (%rax),%rcx
   14000676a:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   14000676f:	74 49                	je     1400067ba <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2ea>
   140006771:	48 8b 19             	mov    (%rcx),%rbx
   140006774:	ba 18 00 00 00       	mov    $0x18,%edx
   140006779:	e8 42 ea ff ff       	call   1400051c0 <_ZdlPvy>
   14000677e:	48 89 d9             	mov    %rbx,%rcx
   140006781:	eb e7                	jmp    14000676a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x29a>
   140006783:	e8 08 ea ff ff       	call   140005190 <__cxa_rethrow>
   140006788:	48 89 c3             	mov    %rax,%rbx
   14000678b:	e8 10 ea ff ff       	call   1400051a0 <__cxa_end_catch>
   140006790:	48 89 d9             	mov    %rbx,%rcx
   140006793:	e8 10 ea ff ff       	call   1400051a8 <__cxa_begin_catch>
   140006798:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   14000679d:	4c 89 f1             	mov    %r14,%rcx
   1400067a0:	e8 1b ea ff ff       	call   1400051c0 <_ZdlPvy>
   1400067a5:	e8 e6 e9 ff ff       	call   140005190 <__cxa_rethrow>
   1400067aa:	48 89 c3             	mov    %rax,%rbx
   1400067ad:	e8 ee e9 ff ff       	call   1400051a0 <__cxa_end_catch>
   1400067b2:	48 89 d9             	mov    %rbx,%rcx
   1400067b5:	e8 56 fb ff ff       	call   140006310 <_Unwind_Resume>
   1400067ba:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   1400067c0:	eb 99                	jmp    14000675b <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x28b>
   1400067c2:	e8 c9 e9 ff ff       	call   140005190 <__cxa_rethrow>
   1400067c7:	48 89 c3             	mov    %rax,%rbx
   1400067ca:	e8 d1 e9 ff ff       	call   1400051a0 <__cxa_end_catch>
   1400067cf:	48 89 d9             	mov    %rbx,%rcx
   1400067d2:	e8 39 fb ff ff       	call   140006310 <_Unwind_Resume>
   1400067d7:	48 89 f1             	mov    %rsi,%rcx
   1400067da:	4c 89 f6             	mov    %r14,%rsi
   1400067dd:	e8 c6 e9 ff ff       	call   1400051a8 <__cxa_begin_catch>
   1400067e2:	48 39 f5             	cmp    %rsi,%rbp
   1400067e5:	74 23                	je     14000680a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x33a>
   1400067e7:	48 8b 0e             	mov    (%rsi),%rcx
   1400067ea:	48 39 ce             	cmp    %rcx,%rsi
   1400067ed:	74 6b                	je     14000685a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x38a>
   1400067ef:	48 8b 39             	mov    (%rcx),%rdi
   1400067f2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400067f7:	e8 c4 e9 ff ff       	call   1400051c0 <_ZdlPvy>
   1400067fc:	48 89 f9             	mov    %rdi,%rcx
   1400067ff:	eb e9                	jmp    1400067ea <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x31a>
   140006801:	48 83 c7 18          	add    $0x18,%rdi
   140006805:	e9 00 ff ff ff       	jmp    14000670a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x23a>
   14000680a:	e8 81 e9 ff ff       	call   140005190 <__cxa_rethrow>
   14000680f:	48 89 c6             	mov    %rax,%rsi
   140006812:	48 6b db 18          	imul   $0x18,%rbx,%rbx
   140006816:	e8 85 e9 ff ff       	call   1400051a0 <__cxa_end_catch>
   14000681b:	48 89 f1             	mov    %rsi,%rcx
   14000681e:	e8 85 e9 ff ff       	call   1400051a8 <__cxa_begin_catch>
   140006823:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006828:	48 01 c3             	add    %rax,%rbx
   14000682b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006830:	48 39 c3             	cmp    %rax,%rbx
   140006833:	0f 84 5f ff ff ff    	je     140006798 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2c8>
   140006839:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   14000683e:	48 8b 08             	mov    (%rax),%rcx
   140006841:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   140006846:	74 18                	je     140006860 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x390>
   140006848:	48 8b 31             	mov    (%rcx),%rsi
   14000684b:	ba 18 00 00 00       	mov    $0x18,%edx
   140006850:	e8 6b e9 ff ff       	call   1400051c0 <_ZdlPvy>
   140006855:	48 89 f1             	mov    %rsi,%rcx
   140006858:	eb e7                	jmp    140006841 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x371>
   14000685a:	48 83 c6 18          	add    $0x18,%rsi
   14000685e:	eb 82                	jmp    1400067e2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x312>
   140006860:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   140006866:	eb c3                	jmp    14000682b <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x35b>
   140006868:	90                   	nop
   140006869:	90                   	nop
   14000686a:	90                   	nop
   14000686b:	90                   	nop
   14000686c:	90                   	nop
   14000686d:	90                   	nop
   14000686e:	90                   	nop
   14000686f:	90                   	nop

0000000140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>:
   140006870:	57                   	push   %rdi
   140006871:	56                   	push   %rsi
   140006872:	53                   	push   %rbx
   140006873:	48 83 ec 20          	sub    $0x20,%rsp
   140006877:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   14000687c:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140006883:	00 
   140006884:	48 89 ce             	mov    %rcx,%rsi
   140006887:	48 89 d7             	mov    %rdx,%rdi
   14000688a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000688e:	0f 11 01             	movups %xmm0,(%rcx)
   140006891:	48 8b 1a             	mov    (%rdx),%rbx
   140006894:	48 39 d3             	cmp    %rdx,%rbx
   140006897:	74 30                	je     1400068c9 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x59>
   140006899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400068a0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400068a5:	e8 0e e9 ff ff       	call   1400051b8 <_Znwy>
   1400068aa:	48 89 c1             	mov    %rax,%rcx
   1400068ad:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400068b1:	48 89 f2             	mov    %rsi,%rdx
   1400068b4:	88 41 10             	mov    %al,0x10(%rcx)
   1400068b7:	e8 5c e9 ff ff       	call   140005218 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400068bc:	48 8b 1b             	mov    (%rbx),%rbx
   1400068bf:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   1400068c4:	48 39 fb             	cmp    %rdi,%rbx
   1400068c7:	75 d7                	jne    1400068a0 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x30>
   1400068c9:	48 83 c4 20          	add    $0x20,%rsp
   1400068cd:	5b                   	pop    %rbx
   1400068ce:	5e                   	pop    %rsi
   1400068cf:	5f                   	pop    %rdi
   1400068d0:	c3                   	ret
   1400068d1:	48 8b 0e             	mov    (%rsi),%rcx
   1400068d4:	48 89 c3             	mov    %rax,%rbx
   1400068d7:	48 39 ce             	cmp    %rcx,%rsi
   1400068da:	74 12                	je     1400068ee <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x7e>
   1400068dc:	48 8b 39             	mov    (%rcx),%rdi
   1400068df:	ba 18 00 00 00       	mov    $0x18,%edx
   1400068e4:	e8 d7 e8 ff ff       	call   1400051c0 <_ZdlPvy>
   1400068e9:	48 89 f9             	mov    %rdi,%rcx
   1400068ec:	eb e9                	jmp    1400068d7 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_+0x67>
   1400068ee:	48 89 d9             	mov    %rbx,%rcx
   1400068f1:	e8 1a fa ff ff       	call   140006310 <_Unwind_Resume>
   1400068f6:	90                   	nop
   1400068f7:	90                   	nop
   1400068f8:	90                   	nop
   1400068f9:	90                   	nop
   1400068fa:	90                   	nop
   1400068fb:	90                   	nop
   1400068fc:	90                   	nop
   1400068fd:	90                   	nop
   1400068fe:	90                   	nop
   1400068ff:	90                   	nop

0000000140006900 <_GLOBAL__sub_I__ZN10Arithmetic10carry_flagE>:
   140006900:	48 83 ec 28          	sub    $0x28,%rsp
   140006904:	48 8d 0d 26 57 00 00 	lea    0x5726(%rip),%rcx        # 14000c031 <_ZStL8__ioinit>
   14000690b:	e8 f8 e8 ff ff       	call   140005208 <_ZNSt8ios_base4InitC1Ev>
   140006910:	48 8d 0d 39 ab ff ff 	lea    -0x54c7(%rip),%rcx        # 140001450 <__tcf_0>
   140006917:	48 83 c4 28          	add    $0x28,%rsp
   14000691b:	e9 f0 aa ff ff       	jmp    140001410 <atexit>

0000000140006920 <_GLOBAL__sub_I__ZN4ByteC2Ey>:
   140006920:	48 83 ec 28          	sub    $0x28,%rsp
   140006924:	48 8d 0d 15 57 00 00 	lea    0x5715(%rip),%rcx        # 14000c040 <_ZStL8__ioinit>
   14000692b:	e8 d8 e8 ff ff       	call   140005208 <_ZNSt8ios_base4InitC1Ev>
   140006930:	48 8d 0d 39 ad ff ff 	lea    -0x52c7(%rip),%rcx        # 140001670 <__tcf_0>
   140006937:	48 83 c4 28          	add    $0x28,%rsp
   14000693b:	e9 d0 aa ff ff       	jmp    140001410 <atexit>

0000000140006940 <main>:
   140006940:	41 57                	push   %r15
   140006942:	41 56                	push   %r14
   140006944:	41 55                	push   %r13
   140006946:	41 54                	push   %r12
   140006948:	55                   	push   %rbp
   140006949:	57                   	push   %rdi
   14000694a:	56                   	push   %rsi
   14000694b:	53                   	push   %rbx
   14000694c:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   140006953:	e8 08 ea ff ff       	call   140005360 <__main>
   140006958:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
   14000695d:	ba 0c 00 00 00       	mov    $0xc,%edx
   140006962:	4c 8d 64 24 50       	lea    0x50(%rsp),%r12
   140006967:	4c 89 f9             	mov    %r15,%rcx
   14000696a:	e8 41 b0 ff ff       	call   1400019b0 <_ZN13NaturalBinaryC1Ex>
   14000696f:	ba 05 00 00 00       	mov    $0x5,%edx
   140006974:	4c 89 e1             	mov    %r12,%rcx
   140006977:	e8 34 b0 ff ff       	call   1400019b0 <_ZN13NaturalBinaryC1Ex>
   14000697c:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
   140006983:	00 
   140006984:	4c 89 fa             	mov    %r15,%rdx
   140006987:	48 89 f1             	mov    %rsi,%rcx
   14000698a:	e8 e1 fe ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   14000698f:	48 8b 0d aa 2a 00 00 	mov    0x2aaa(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006996:	48 89 f2             	mov    %rsi,%rdx
   140006999:	e8 62 ca ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   14000699e:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   1400069a4:	48 8d 15 8a 26 00 00 	lea    0x268a(%rip),%rdx        # 140009035 <.rdata+0x5>
   1400069ab:	48 89 c1             	mov    %rax,%rcx
   1400069ae:	48 89 c3             	mov    %rax,%rbx
   1400069b1:	e8 2a e8 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400069b6:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
   1400069bd:	00 
   1400069be:	4c 89 e2             	mov    %r12,%rdx
   1400069c1:	48 89 f9             	mov    %rdi,%rcx
   1400069c4:	e8 a7 fe ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   1400069c9:	48 89 fa             	mov    %rdi,%rdx
   1400069cc:	48 89 d9             	mov    %rbx,%rcx
   1400069cf:	e8 2c ca ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   1400069d4:	4c 8d 35 5e 26 00 00 	lea    0x265e(%rip),%r14        # 140009039 <.rdata+0x9>
   1400069db:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   1400069e1:	48 89 c1             	mov    %rax,%rcx
   1400069e4:	49 89 c5             	mov    %rax,%r13
   1400069e7:	4c 89 f2             	mov    %r14,%rdx
   1400069ea:	e8 f1 e7 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400069ef:	48 8d ac 24 d0 00 00 	lea    0xd0(%rsp),%rbp
   1400069f6:	00 
   1400069f7:	4c 89 e2             	mov    %r12,%rdx
   1400069fa:	48 89 e9             	mov    %rbp,%rcx
   1400069fd:	e8 6e fe ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006a02:	48 8d 9c 24 f0 00 00 	lea    0xf0(%rsp),%rbx
   140006a09:	00 
   140006a0a:	49 89 e8             	mov    %rbp,%r8
   140006a0d:	4c 89 fa             	mov    %r15,%rdx
   140006a10:	48 89 d9             	mov    %rbx,%rcx
   140006a13:	e8 68 b1 ff ff       	call   140001b80 <_ZN13NaturalBinaryplES_>
   140006a18:	48 89 da             	mov    %rbx,%rdx
   140006a1b:	4c 89 e9             	mov    %r13,%rcx
   140006a1e:	e8 dd c9 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006a23:	48 89 c1             	mov    %rax,%rcx
   140006a26:	e8 35 ad ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140006a2b:	48 89 d9             	mov    %rbx,%rcx
   140006a2e:	e8 0d b1 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006a33:	48 89 e9             	mov    %rbp,%rcx
   140006a36:	e8 05 b1 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006a3b:	48 89 f9             	mov    %rdi,%rcx
   140006a3e:	e8 fd b0 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006a43:	48 89 f1             	mov    %rsi,%rcx
   140006a46:	e8 f5 b0 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006a4b:	4c 89 fa             	mov    %r15,%rdx
   140006a4e:	48 89 f1             	mov    %rsi,%rcx
   140006a51:	e8 1a fe ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006a56:	48 8b 0d e3 29 00 00 	mov    0x29e3(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006a5d:	48 89 f2             	mov    %rsi,%rdx
   140006a60:	e8 9b c9 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006a65:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006a6b:	48 8d 15 cb 25 00 00 	lea    0x25cb(%rip),%rdx        # 14000903d <.rdata+0xd>
   140006a72:	48 89 c1             	mov    %rax,%rcx
   140006a75:	49 89 c5             	mov    %rax,%r13
   140006a78:	e8 63 e7 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006a7d:	4c 89 e2             	mov    %r12,%rdx
   140006a80:	48 89 f9             	mov    %rdi,%rcx
   140006a83:	e8 e8 fd ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006a88:	48 89 fa             	mov    %rdi,%rdx
   140006a8b:	4c 89 e9             	mov    %r13,%rcx
   140006a8e:	e8 6d c9 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006a93:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006a99:	4c 89 f2             	mov    %r14,%rdx
   140006a9c:	48 89 c1             	mov    %rax,%rcx
   140006a9f:	49 89 c5             	mov    %rax,%r13
   140006aa2:	e8 39 e7 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006aa7:	4c 89 e2             	mov    %r12,%rdx
   140006aaa:	48 89 e9             	mov    %rbp,%rcx
   140006aad:	e8 be fd ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006ab2:	49 89 e8             	mov    %rbp,%r8
   140006ab5:	4c 89 fa             	mov    %r15,%rdx
   140006ab8:	48 89 d9             	mov    %rbx,%rcx
   140006abb:	e8 e0 b3 ff ff       	call   140001ea0 <_ZN13NaturalBinarymiES_>
   140006ac0:	48 89 da             	mov    %rbx,%rdx
   140006ac3:	4c 89 e9             	mov    %r13,%rcx
   140006ac6:	e8 35 c9 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006acb:	48 89 c1             	mov    %rax,%rcx
   140006ace:	e8 8d ac ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140006ad3:	48 89 d9             	mov    %rbx,%rcx
   140006ad6:	e8 65 b0 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006adb:	48 89 e9             	mov    %rbp,%rcx
   140006ade:	e8 5d b0 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006ae3:	48 89 f9             	mov    %rdi,%rcx
   140006ae6:	e8 55 b0 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006aeb:	48 89 f1             	mov    %rsi,%rcx
   140006aee:	e8 4d b0 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006af3:	4c 89 fa             	mov    %r15,%rdx
   140006af6:	48 89 f1             	mov    %rsi,%rcx
   140006af9:	e8 72 fd ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006afe:	48 8b 0d 3b 29 00 00 	mov    0x293b(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006b05:	48 89 f2             	mov    %rsi,%rdx
   140006b08:	e8 f3 c8 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006b0d:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006b13:	48 8d 15 27 25 00 00 	lea    0x2527(%rip),%rdx        # 140009041 <.rdata+0x11>
   140006b1a:	48 89 c1             	mov    %rax,%rcx
   140006b1d:	49 89 c5             	mov    %rax,%r13
   140006b20:	e8 bb e6 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006b25:	4c 89 e2             	mov    %r12,%rdx
   140006b28:	48 89 f9             	mov    %rdi,%rcx
   140006b2b:	e8 40 fd ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006b30:	48 89 fa             	mov    %rdi,%rdx
   140006b33:	4c 89 e9             	mov    %r13,%rcx
   140006b36:	e8 c5 c8 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006b3b:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006b41:	4c 89 f2             	mov    %r14,%rdx
   140006b44:	48 89 c1             	mov    %rax,%rcx
   140006b47:	49 89 c5             	mov    %rax,%r13
   140006b4a:	e8 91 e6 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006b4f:	4c 89 e2             	mov    %r12,%rdx
   140006b52:	48 89 e9             	mov    %rbp,%rcx
   140006b55:	e8 16 fd ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006b5a:	49 89 e8             	mov    %rbp,%r8
   140006b5d:	4c 89 fa             	mov    %r15,%rdx
   140006b60:	48 89 d9             	mov    %rbx,%rcx
   140006b63:	e8 18 c9 ff ff       	call   140003480 <_ZN13NaturalBinarymlES_>
   140006b68:	48 89 da             	mov    %rbx,%rdx
   140006b6b:	4c 89 e9             	mov    %r13,%rcx
   140006b6e:	e8 8d c8 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006b73:	48 89 c1             	mov    %rax,%rcx
   140006b76:	e8 e5 ab ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140006b7b:	48 89 d9             	mov    %rbx,%rcx
   140006b7e:	e8 bd af ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006b83:	48 89 e9             	mov    %rbp,%rcx
   140006b86:	e8 b5 af ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006b8b:	48 89 f9             	mov    %rdi,%rcx
   140006b8e:	e8 ad af ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006b93:	48 89 f1             	mov    %rsi,%rcx
   140006b96:	e8 a5 af ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006b9b:	4c 89 fa             	mov    %r15,%rdx
   140006b9e:	48 89 f1             	mov    %rsi,%rcx
   140006ba1:	e8 ca fc ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006ba6:	48 8b 0d 93 28 00 00 	mov    0x2893(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006bad:	48 89 f2             	mov    %rsi,%rdx
   140006bb0:	e8 4b c8 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006bb5:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006bbb:	48 8d 15 83 24 00 00 	lea    0x2483(%rip),%rdx        # 140009045 <.rdata+0x15>
   140006bc2:	48 89 c1             	mov    %rax,%rcx
   140006bc5:	49 89 c5             	mov    %rax,%r13
   140006bc8:	e8 13 e6 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006bcd:	4c 89 e2             	mov    %r12,%rdx
   140006bd0:	48 89 f9             	mov    %rdi,%rcx
   140006bd3:	e8 98 fc ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006bd8:	48 89 fa             	mov    %rdi,%rdx
   140006bdb:	4c 89 e9             	mov    %r13,%rcx
   140006bde:	e8 1d c8 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006be3:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006be9:	4c 89 f2             	mov    %r14,%rdx
   140006bec:	48 89 c1             	mov    %rax,%rcx
   140006bef:	49 89 c5             	mov    %rax,%r13
   140006bf2:	e8 e9 e5 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006bf7:	4c 89 e2             	mov    %r12,%rdx
   140006bfa:	48 89 e9             	mov    %rbp,%rcx
   140006bfd:	e8 6e fc ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006c02:	49 89 e8             	mov    %rbp,%r8
   140006c05:	4c 89 fa             	mov    %r15,%rdx
   140006c08:	48 89 d9             	mov    %rbx,%rcx
   140006c0b:	e8 c0 db ff ff       	call   1400047d0 <_ZN13NaturalBinarydvES_>
   140006c10:	48 89 da             	mov    %rbx,%rdx
   140006c13:	4c 89 e9             	mov    %r13,%rcx
   140006c16:	e8 e5 c7 ff ff       	call   140003400 <_ZlsRSo13NaturalBinary>
   140006c1b:	48 89 c1             	mov    %rax,%rcx
   140006c1e:	e8 3d ab ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140006c23:	48 89 d9             	mov    %rbx,%rcx
   140006c26:	4c 8d 6c 24 70       	lea    0x70(%rsp),%r13
   140006c2b:	e8 10 af ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006c30:	48 89 e9             	mov    %rbp,%rcx
   140006c33:	e8 08 af ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006c38:	48 89 f9             	mov    %rdi,%rcx
   140006c3b:	e8 00 af ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006c40:	48 89 f1             	mov    %rsi,%rcx
   140006c43:	e8 f8 ae ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140006c48:	ba 06 00 00 00       	mov    $0x6,%edx
   140006c4d:	4c 89 e9             	mov    %r13,%rcx
   140006c50:	e8 ab de ff ff       	call   140004b00 <_ZN15SignedMagnitudeC1Ex>
   140006c55:	48 c7 c2 fd ff ff ff 	mov    $0xfffffffffffffffd,%rdx
   140006c5c:	48 89 f1             	mov    %rsi,%rcx
   140006c5f:	e8 9c de ff ff       	call   140004b00 <_ZN15SignedMagnitudeC1Ex>
   140006c64:	48 8b 0d d5 27 00 00 	mov    0x27d5(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006c6b:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140006c71:	48 8d 15 d1 23 00 00 	lea    0x23d1(%rip),%rdx        # 140009049 <.rdata+0x19>
   140006c78:	e8 63 e5 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006c7d:	4c 89 ea             	mov    %r13,%rdx
   140006c80:	48 89 f9             	mov    %rdi,%rcx
   140006c83:	e8 38 e1 ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006c88:	4c 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%r8
   140006c8f:	00 
   140006c90:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
   140006c97:	00 
   140006c98:	48 8b 0d a1 27 00 00 	mov    0x27a1(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006c9f:	e8 3c e5 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006ca4:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006caa:	48 8d 15 84 23 00 00 	lea    0x2384(%rip),%rdx        # 140009035 <.rdata+0x5>
   140006cb1:	48 89 c1             	mov    %rax,%rcx
   140006cb4:	49 89 c6             	mov    %rax,%r14
   140006cb7:	e8 24 e5 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006cbc:	48 89 f2             	mov    %rsi,%rdx
   140006cbf:	48 89 e9             	mov    %rbp,%rcx
   140006cc2:	e8 f9 e0 ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006cc7:	4c 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%r8
   140006cce:	00 
   140006ccf:	48 8b 94 24 d0 00 00 	mov    0xd0(%rsp),%rdx
   140006cd6:	00 
   140006cd7:	4c 89 f1             	mov    %r14,%rcx
   140006cda:	e8 01 e5 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006cdf:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140006ce5:	48 8d 15 62 23 00 00 	lea    0x2362(%rip),%rdx        # 14000904e <.rdata+0x1e>
   140006cec:	48 89 c1             	mov    %rax,%rcx
   140006cef:	49 89 c6             	mov    %rax,%r14
   140006cf2:	e8 e9 e4 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006cf7:	48 89 f2             	mov    %rsi,%rdx
   140006cfa:	48 89 d9             	mov    %rbx,%rcx
   140006cfd:	e8 6e fb ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006d02:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
   140006d09:	48 89 da             	mov    %rbx,%rdx
   140006d0c:	4c 89 e9             	mov    %r13,%rcx
   140006d0f:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
   140006d16:	0f b6 84 24 ac 00 00 	movzbl 0xac(%rsp),%eax
   140006d1d:	00 
   140006d1e:	88 84 24 0c 01 00 00 	mov    %al,0x10c(%rsp)
   140006d25:	e8 a6 e1 ff ff       	call   140004ed0 <_ZN15SignedMagnitude7addSignES_>
   140006d2a:	84 c0                	test   %al,%al
   140006d2c:	48 8d 15 00 23 00 00 	lea    0x2300(%rip),%rdx        # 140009033 <.rdata+0x3>
   140006d33:	48 8d 05 f6 22 00 00 	lea    0x22f6(%rip),%rax        # 140009030 <.rdata>
   140006d3a:	4c 89 f1             	mov    %r14,%rcx
   140006d3d:	48 0f 45 d0          	cmovne %rax,%rdx
   140006d41:	e8 82 e4 ff ff       	call   1400051c8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140006d46:	48 89 c1             	mov    %rax,%rcx
   140006d49:	e8 12 aa ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140006d4e:	48 89 d9             	mov    %rbx,%rcx
   140006d51:	e8 3a e0 ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   140006d56:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
   140006d5d:	00 
   140006d5e:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
   140006d65:	00 
   140006d66:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140006d6b:	48 39 c1             	cmp    %rax,%rcx
   140006d6e:	74 11                	je     140006d81 <main+0x441>
   140006d70:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140006d77:	00 
   140006d78:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006d7c:	e8 3f e4 ff ff       	call   1400051c0 <_ZdlPvy>
   140006d81:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
   140006d88:	00 
   140006d89:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
   140006d90:	00 
   140006d91:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140006d96:	48 39 c1             	cmp    %rax,%rcx
   140006d99:	74 11                	je     140006dac <main+0x46c>
   140006d9b:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
   140006da2:	00 
   140006da3:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006da7:	e8 14 e4 ff ff       	call   1400051c0 <_ZdlPvy>
   140006dac:	48 8b 0d 8d 26 00 00 	mov    0x268d(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006db3:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140006db9:	48 8d 15 89 22 00 00 	lea    0x2289(%rip),%rdx        # 140009049 <.rdata+0x19>
   140006dc0:	e8 1b e4 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006dc5:	4c 89 ea             	mov    %r13,%rdx
   140006dc8:	48 89 f9             	mov    %rdi,%rcx
   140006dcb:	e8 f0 df ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006dd0:	4c 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%r8
   140006dd7:	00 
   140006dd8:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
   140006ddf:	00 
   140006de0:	48 8b 0d 59 26 00 00 	mov    0x2659(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006de7:	e8 f4 e3 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006dec:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006df2:	48 8d 15 44 22 00 00 	lea    0x2244(%rip),%rdx        # 14000903d <.rdata+0xd>
   140006df9:	48 89 c1             	mov    %rax,%rcx
   140006dfc:	49 89 c6             	mov    %rax,%r14
   140006dff:	e8 dc e3 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006e04:	48 89 f2             	mov    %rsi,%rdx
   140006e07:	48 89 e9             	mov    %rbp,%rcx
   140006e0a:	e8 b1 df ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006e0f:	4c 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%r8
   140006e16:	00 
   140006e17:	48 8b 94 24 d0 00 00 	mov    0xd0(%rsp),%rdx
   140006e1e:	00 
   140006e1f:	4c 89 f1             	mov    %r14,%rcx
   140006e22:	e8 b9 e3 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006e27:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140006e2d:	48 8d 15 1a 22 00 00 	lea    0x221a(%rip),%rdx        # 14000904e <.rdata+0x1e>
   140006e34:	48 89 c1             	mov    %rax,%rcx
   140006e37:	49 89 c6             	mov    %rax,%r14
   140006e3a:	e8 a1 e3 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006e3f:	48 89 f2             	mov    %rsi,%rdx
   140006e42:	48 89 d9             	mov    %rbx,%rcx
   140006e45:	e8 26 fa ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006e4a:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
   140006e51:	48 89 da             	mov    %rbx,%rdx
   140006e54:	4c 89 e9             	mov    %r13,%rcx
   140006e57:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
   140006e5e:	0f b6 84 24 ac 00 00 	movzbl 0xac(%rsp),%eax
   140006e65:	00 
   140006e66:	88 84 24 0c 01 00 00 	mov    %al,0x10c(%rsp)
   140006e6d:	e8 ae e1 ff ff       	call   140005020 <_ZN15SignedMagnitude7subSignES_>
   140006e72:	84 c0                	test   %al,%al
   140006e74:	48 8d 15 b8 21 00 00 	lea    0x21b8(%rip),%rdx        # 140009033 <.rdata+0x3>
   140006e7b:	48 8d 05 ae 21 00 00 	lea    0x21ae(%rip),%rax        # 140009030 <.rdata>
   140006e82:	4c 89 f1             	mov    %r14,%rcx
   140006e85:	48 0f 45 d0          	cmovne %rax,%rdx
   140006e89:	e8 3a e3 ff ff       	call   1400051c8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140006e8e:	48 89 c1             	mov    %rax,%rcx
   140006e91:	e8 ca a8 ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140006e96:	48 89 d9             	mov    %rbx,%rcx
   140006e99:	e8 f2 de ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   140006e9e:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
   140006ea5:	00 
   140006ea6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006eab:	48 39 c1             	cmp    %rax,%rcx
   140006eae:	74 11                	je     140006ec1 <main+0x581>
   140006eb0:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140006eb7:	00 
   140006eb8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006ebc:	e8 ff e2 ff ff       	call   1400051c0 <_ZdlPvy>
   140006ec1:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
   140006ec8:	00 
   140006ec9:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140006ece:	48 39 c1             	cmp    %rax,%rcx
   140006ed1:	74 11                	je     140006ee4 <main+0x5a4>
   140006ed3:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
   140006eda:	00 
   140006edb:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006edf:	e8 dc e2 ff ff       	call   1400051c0 <_ZdlPvy>
   140006ee4:	48 8b 0d 55 25 00 00 	mov    0x2555(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006eeb:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140006ef1:	48 8d 15 51 21 00 00 	lea    0x2151(%rip),%rdx        # 140009049 <.rdata+0x19>
   140006ef8:	e8 e3 e2 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006efd:	4c 89 ea             	mov    %r13,%rdx
   140006f00:	48 89 f9             	mov    %rdi,%rcx
   140006f03:	e8 b8 de ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006f08:	4c 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%r8
   140006f0f:	00 
   140006f10:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
   140006f17:	00 
   140006f18:	48 8b 0d 21 25 00 00 	mov    0x2521(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140006f1f:	e8 bc e2 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006f24:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140006f2a:	48 8d 15 10 21 00 00 	lea    0x2110(%rip),%rdx        # 140009041 <.rdata+0x11>
   140006f31:	48 89 c1             	mov    %rax,%rcx
   140006f34:	49 89 c6             	mov    %rax,%r14
   140006f37:	e8 a4 e2 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006f3c:	48 89 f2             	mov    %rsi,%rdx
   140006f3f:	48 89 e9             	mov    %rbp,%rcx
   140006f42:	e8 79 de ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006f47:	4c 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%r8
   140006f4e:	00 
   140006f4f:	48 8b 94 24 d0 00 00 	mov    0xd0(%rsp),%rdx
   140006f56:	00 
   140006f57:	4c 89 f1             	mov    %r14,%rcx
   140006f5a:	e8 81 e2 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006f5f:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140006f65:	48 8d 15 e2 20 00 00 	lea    0x20e2(%rip),%rdx        # 14000904e <.rdata+0x1e>
   140006f6c:	48 89 c1             	mov    %rax,%rcx
   140006f6f:	49 89 c6             	mov    %rax,%r14
   140006f72:	e8 69 e2 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006f77:	48 89 f2             	mov    %rsi,%rdx
   140006f7a:	48 89 d9             	mov    %rbx,%rcx
   140006f7d:	e8 ee f8 ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   140006f82:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
   140006f89:	48 89 da             	mov    %rbx,%rdx
   140006f8c:	4c 89 e9             	mov    %r13,%rcx
   140006f8f:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
   140006f96:	0f b6 84 24 ac 00 00 	movzbl 0xac(%rsp),%eax
   140006f9d:	00 
   140006f9e:	88 84 24 0c 01 00 00 	mov    %al,0x10c(%rsp)
   140006fa5:	e8 16 df ff ff       	call   140004ec0 <_ZN15SignedMagnitude10mulDivSignES_>
   140006faa:	84 c0                	test   %al,%al
   140006fac:	48 8d 15 80 20 00 00 	lea    0x2080(%rip),%rdx        # 140009033 <.rdata+0x3>
   140006fb3:	48 8d 05 76 20 00 00 	lea    0x2076(%rip),%rax        # 140009030 <.rdata>
   140006fba:	4c 89 f1             	mov    %r14,%rcx
   140006fbd:	48 0f 45 d0          	cmovne %rax,%rdx
   140006fc1:	e8 02 e2 ff ff       	call   1400051c8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140006fc6:	48 89 c1             	mov    %rax,%rcx
   140006fc9:	e8 92 a7 ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140006fce:	48 89 d9             	mov    %rbx,%rcx
   140006fd1:	e8 ba dd ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   140006fd6:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
   140006fdd:	00 
   140006fde:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140006fe3:	48 39 c1             	cmp    %rax,%rcx
   140006fe6:	74 11                	je     140006ff9 <main+0x6b9>
   140006fe8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140006fef:	00 
   140006ff0:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006ff4:	e8 c7 e1 ff ff       	call   1400051c0 <_ZdlPvy>
   140006ff9:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
   140007000:	00 
   140007001:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140007006:	48 39 c1             	cmp    %rax,%rcx
   140007009:	74 11                	je     14000701c <main+0x6dc>
   14000700b:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
   140007012:	00 
   140007013:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140007017:	e8 a4 e1 ff ff       	call   1400051c0 <_ZdlPvy>
   14000701c:	48 8b 0d 1d 24 00 00 	mov    0x241d(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140007023:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140007029:	48 8d 15 19 20 00 00 	lea    0x2019(%rip),%rdx        # 140009049 <.rdata+0x19>
   140007030:	e8 ab e1 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140007035:	4c 89 ea             	mov    %r13,%rdx
   140007038:	48 89 f9             	mov    %rdi,%rcx
   14000703b:	e8 80 dd ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140007040:	4c 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%r8
   140007047:	00 
   140007048:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
   14000704f:	00 
   140007050:	48 8b 0d e9 23 00 00 	mov    0x23e9(%rip),%rcx        # 140009440 <__fu4__ZSt4cout>
   140007057:	e8 84 e1 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   14000705c:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   140007062:	48 8d 15 dc 1f 00 00 	lea    0x1fdc(%rip),%rdx        # 140009045 <.rdata+0x15>
   140007069:	48 89 c1             	mov    %rax,%rcx
   14000706c:	48 89 c7             	mov    %rax,%rdi
   14000706f:	e8 6c e1 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140007074:	48 89 f2             	mov    %rsi,%rdx
   140007077:	48 89 e9             	mov    %rbp,%rcx
   14000707a:	e8 41 dd ff ff       	call   140004dc0 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   14000707f:	4c 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%r8
   140007086:	00 
   140007087:	48 8b 94 24 d0 00 00 	mov    0xd0(%rsp),%rdx
   14000708e:	00 
   14000708f:	48 89 f9             	mov    %rdi,%rcx
   140007092:	e8 49 e1 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140007097:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   14000709d:	48 8d 15 aa 1f 00 00 	lea    0x1faa(%rip),%rdx        # 14000904e <.rdata+0x1e>
   1400070a4:	48 89 c1             	mov    %rax,%rcx
   1400070a7:	48 89 c7             	mov    %rax,%rdi
   1400070aa:	e8 31 e1 ff ff       	call   1400051e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400070af:	48 89 f2             	mov    %rsi,%rdx
   1400070b2:	48 89 d9             	mov    %rbx,%rcx
   1400070b5:	e8 b6 f7 ff ff       	call   140006870 <_ZNSt7__cxx114listI4ByteSaIS1_EEC1ERKS3_>
   1400070ba:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
   1400070c1:	48 89 da             	mov    %rbx,%rdx
   1400070c4:	4c 89 e9             	mov    %r13,%rcx
   1400070c7:	89 84 24 08 01 00 00 	mov    %eax,0x108(%rsp)
   1400070ce:	0f b6 84 24 ac 00 00 	movzbl 0xac(%rsp),%eax
   1400070d5:	00 
   1400070d6:	88 84 24 0c 01 00 00 	mov    %al,0x10c(%rsp)
   1400070dd:	e8 de dd ff ff       	call   140004ec0 <_ZN15SignedMagnitude10mulDivSignES_>
   1400070e2:	84 c0                	test   %al,%al
   1400070e4:	48 8d 15 48 1f 00 00 	lea    0x1f48(%rip),%rdx        # 140009033 <.rdata+0x3>
   1400070eb:	48 8d 05 3e 1f 00 00 	lea    0x1f3e(%rip),%rax        # 140009030 <.rdata>
   1400070f2:	48 89 f9             	mov    %rdi,%rcx
   1400070f5:	48 0f 45 d0          	cmovne %rax,%rdx
   1400070f9:	e8 ca e0 ff ff       	call   1400051c8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400070fe:	48 89 c1             	mov    %rax,%rcx
   140007101:	e8 5a a6 ff ff       	call   140001760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0>
   140007106:	48 89 d9             	mov    %rbx,%rcx
   140007109:	e8 82 dc ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   14000710e:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
   140007115:	00 
   140007116:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   14000711b:	48 39 c1             	cmp    %rax,%rcx
   14000711e:	74 11                	je     140007131 <main+0x7f1>
   140007120:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140007127:	00 
   140007128:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000712c:	e8 8f e0 ff ff       	call   1400051c0 <_ZdlPvy>
   140007131:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
   140007138:	00 
   140007139:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   14000713e:	48 39 c1             	cmp    %rax,%rcx
   140007141:	74 11                	je     140007154 <main+0x814>
   140007143:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
   14000714a:	00 
   14000714b:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000714f:	e8 6c e0 ff ff       	call   1400051c0 <_ZdlPvy>
   140007154:	48 89 f1             	mov    %rsi,%rcx
   140007157:	e8 34 dc ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   14000715c:	4c 89 e9             	mov    %r13,%rcx
   14000715f:	e8 2c dc ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   140007164:	4c 89 e1             	mov    %r12,%rcx
   140007167:	e8 d4 a9 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   14000716c:	4c 89 f9             	mov    %r15,%rcx
   14000716f:	e8 cc a9 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140007174:	31 c0                	xor    %eax,%eax
   140007176:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
   14000717d:	5b                   	pop    %rbx
   14000717e:	5e                   	pop    %rsi
   14000717f:	5f                   	pop    %rdi
   140007180:	5d                   	pop    %rbp
   140007181:	41 5c                	pop    %r12
   140007183:	41 5d                	pop    %r13
   140007185:	41 5e                	pop    %r14
   140007187:	41 5f                	pop    %r15
   140007189:	c3                   	ret
   14000718a:	48 89 c3             	mov    %rax,%rbx
   14000718d:	4c 89 f9             	mov    %r15,%rcx
   140007190:	e8 ab a9 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140007195:	48 89 d9             	mov    %rbx,%rcx
   140007198:	e8 73 f1 ff ff       	call   140006310 <_Unwind_Resume>
   14000719d:	48 89 c7             	mov    %rax,%rdi
   1400071a0:	48 89 d9             	mov    %rbx,%rcx
   1400071a3:	e8 e8 db ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   1400071a8:	48 89 fb             	mov    %rdi,%rbx
   1400071ab:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
   1400071b2:	00 
   1400071b3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400071b8:	48 39 c1             	cmp    %rax,%rcx
   1400071bb:	74 11                	je     1400071ce <main+0x88e>
   1400071bd:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   1400071c4:	00 
   1400071c5:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400071c9:	e8 f2 df ff ff       	call   1400051c0 <_ZdlPvy>
   1400071ce:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
   1400071d5:	00 
   1400071d6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400071db:	48 39 c1             	cmp    %rax,%rcx
   1400071de:	75 3c                	jne    14000721c <main+0x8dc>
   1400071e0:	48 89 f1             	mov    %rsi,%rcx
   1400071e3:	e8 a8 db ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   1400071e8:	4c 89 e9             	mov    %r13,%rcx
   1400071eb:	e8 a0 db ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   1400071f0:	4c 89 e1             	mov    %r12,%rcx
   1400071f3:	e8 48 a9 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   1400071f8:	eb 93                	jmp    14000718d <main+0x84d>
   1400071fa:	48 89 c3             	mov    %rax,%rbx
   1400071fd:	eb ac                	jmp    1400071ab <main+0x86b>
   1400071ff:	48 89 c3             	mov    %rax,%rbx
   140007202:	eb ca                	jmp    1400071ce <main+0x88e>
   140007204:	48 89 c3             	mov    %rax,%rbx
   140007207:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
   14000720e:	00 
   14000720f:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
   140007216:	00 
   140007217:	48 39 c1             	cmp    %rax,%rcx
   14000721a:	74 c4                	je     1400071e0 <main+0x8a0>
   14000721c:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
   140007223:	00 
   140007224:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140007228:	e8 93 df ff ff       	call   1400051c0 <_ZdlPvy>
   14000722d:	eb b1                	jmp    1400071e0 <main+0x8a0>
   14000722f:	e9 69 ff ff ff       	jmp    14000719d <main+0x85d>
   140007234:	eb c4                	jmp    1400071fa <main+0x8ba>
   140007236:	eb c7                	jmp    1400071ff <main+0x8bf>
   140007238:	e9 60 ff ff ff       	jmp    14000719d <main+0x85d>
   14000723d:	eb bb                	jmp    1400071fa <main+0x8ba>
   14000723f:	eb be                	jmp    1400071ff <main+0x8bf>
   140007241:	48 89 c7             	mov    %rax,%rdi
   140007244:	48 89 d9             	mov    %rbx,%rcx
   140007247:	e8 44 db ff ff       	call   140004d90 <_ZN15SignedMagnitudeD1Ev>
   14000724c:	48 89 fb             	mov    %rdi,%rbx
   14000724f:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
   140007256:	00 
   140007257:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
   14000725e:	00 
   14000725f:	48 39 c1             	cmp    %rax,%rcx
   140007262:	74 a3                	je     140007207 <main+0x8c7>
   140007264:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   14000726b:	00 
   14000726c:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140007270:	e8 4b df ff ff       	call   1400051c0 <_ZdlPvy>
   140007275:	eb 90                	jmp    140007207 <main+0x8c7>
   140007277:	48 89 c3             	mov    %rax,%rbx
   14000727a:	eb d3                	jmp    14000724f <main+0x90f>
   14000727c:	48 89 c3             	mov    %rax,%rbx
   14000727f:	e9 5c ff ff ff       	jmp    1400071e0 <main+0x8a0>
   140007284:	48 89 c3             	mov    %rax,%rbx
   140007287:	e9 5c ff ff ff       	jmp    1400071e8 <main+0x8a8>
   14000728c:	49 89 c5             	mov    %rax,%r13
   14000728f:	48 89 d9             	mov    %rbx,%rcx
   140007292:	e8 a9 a8 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   140007297:	4c 89 eb             	mov    %r13,%rbx
   14000729a:	48 89 e9             	mov    %rbp,%rcx
   14000729d:	e8 9e a8 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   1400072a2:	48 89 f9             	mov    %rdi,%rcx
   1400072a5:	e8 96 a8 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   1400072aa:	48 89 f1             	mov    %rsi,%rcx
   1400072ad:	e8 8e a8 ff ff       	call   140001b40 <_ZN13NaturalBinaryD1Ev>
   1400072b2:	e9 39 ff ff ff       	jmp    1400071f0 <main+0x8b0>
   1400072b7:	48 89 c3             	mov    %rax,%rbx
   1400072ba:	eb de                	jmp    14000729a <main+0x95a>
   1400072bc:	eb f9                	jmp    1400072b7 <main+0x977>
   1400072be:	eb f7                	jmp    1400072b7 <main+0x977>
   1400072c0:	48 89 c3             	mov    %rax,%rbx
   1400072c3:	eb dd                	jmp    1400072a2 <main+0x962>
   1400072c5:	48 89 c3             	mov    %rax,%rbx
   1400072c8:	eb e0                	jmp    1400072aa <main+0x96a>
   1400072ca:	eb c0                	jmp    14000728c <main+0x94c>
   1400072cc:	eb f7                	jmp    1400072c5 <main+0x985>
   1400072ce:	eb bc                	jmp    14000728c <main+0x94c>
   1400072d0:	eb ee                	jmp    1400072c0 <main+0x980>
   1400072d2:	eb e3                	jmp    1400072b7 <main+0x977>
   1400072d4:	eb ea                	jmp    1400072c0 <main+0x980>
   1400072d6:	eb ed                	jmp    1400072c5 <main+0x985>
   1400072d8:	48 89 c3             	mov    %rax,%rbx
   1400072db:	e9 10 ff ff ff       	jmp    1400071f0 <main+0x8b0>
   1400072e0:	eb e3                	jmp    1400072c5 <main+0x985>
   1400072e2:	eb a8                	jmp    14000728c <main+0x94c>
   1400072e4:	eb da                	jmp    1400072c0 <main+0x980>
   1400072e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400072ed:	00 00 00 

00000001400072f0 <_GLOBAL__sub_I_main>:
   1400072f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400072f4:	48 8d 0d 55 4d 00 00 	lea    0x4d55(%rip),%rcx        # 14000c050 <_ZStL8__ioinit>
   1400072fb:	e8 08 df ff ff       	call   140005208 <_ZNSt8ios_base4InitC1Ev>
   140007300:	48 8d 0d 49 a4 ff ff 	lea    -0x5bb7(%rip),%rcx        # 140001750 <__tcf_0>
   140007307:	48 83 c4 28          	add    $0x28,%rsp
   14000730b:	e9 00 a1 ff ff       	jmp    140001410 <atexit>

0000000140007310 <_GLOBAL__sub_I__ZN13NaturalBinaryC2Ev>:
   140007310:	48 83 ec 28          	sub    $0x28,%rsp
   140007314:	48 8d 0d 45 4d 00 00 	lea    0x4d45(%rip),%rcx        # 14000c060 <_ZStL8__ioinit>
   14000731b:	e8 e8 de ff ff       	call   140005208 <_ZNSt8ios_base4InitC1Ev>
   140007320:	48 8d 0d 99 a4 ff ff 	lea    -0x5b67(%rip),%rcx        # 1400017c0 <__tcf_0>
   140007327:	48 83 c4 28          	add    $0x28,%rsp
   14000732b:	e9 e0 a0 ff ff       	jmp    140001410 <atexit>

0000000140007330 <_GLOBAL__sub_I__ZN15SignedMagnitudeC2Ex>:
   140007330:	48 83 ec 28          	sub    $0x28,%rsp
   140007334:	48 8d 0d 35 4d 00 00 	lea    0x4d35(%rip),%rcx        # 14000c070 <_ZStL8__ioinit>
   14000733b:	e8 c8 de ff ff       	call   140005208 <_ZNSt8ios_base4InitC1Ev>
   140007340:	48 8d 0d b9 d6 ff ff 	lea    -0x2947(%rip),%rcx        # 140004a00 <__tcf_0>
   140007347:	48 83 c4 28          	add    $0x28,%rsp
   14000734b:	e9 c0 a0 ff ff       	jmp    140001410 <atexit>

0000000140007350 <register_frame_ctor>:
   140007350:	e9 db a0 ff ff       	jmp    140001430 <__gcc_register_frame>
   140007355:	90                   	nop
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

0000000140007360 <__CTOR_LIST__>:
   140007360:	ff                   	(bad)
   140007361:	ff                   	(bad)
   140007362:	ff                   	(bad)
   140007363:	ff                   	(bad)
   140007364:	ff                   	(bad)
   140007365:	ff                   	(bad)
   140007366:	ff                   	(bad)
   140007367:	ff                   	.byte 0xff

0000000140007368 <.ctors>:
   140007368:	00 69 00             	add    %ch,0x0(%rcx)
   14000736b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007370 <.ctors>:
   140007370:	20 69 00             	and    %ch,0x0(%rcx)
   140007373:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007378 <.ctors>:
   140007378:	f0 72 00             	lock jb 14000737b <.ctors+0x3>
   14000737b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007380 <.ctors>:
   140007380:	10 73 00             	adc    %dh,0x0(%rbx)
   140007383:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007388 <.ctors>:
   140007388:	30 73 00             	xor    %dh,0x0(%rbx)
   14000738b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140007390 <.ctors.65535>:
   140007390:	50                   	push   %rax
   140007391:	73 00                	jae    140007393 <.ctors.65535+0x3>
   140007393:	40 01 00             	rex add %eax,(%rax)
	...

00000001400073a0 <__DTOR_LIST__>:
   1400073a0:	ff                   	(bad)
   1400073a1:	ff                   	(bad)
   1400073a2:	ff                   	(bad)
   1400073a3:	ff                   	(bad)
   1400073a4:	ff                   	(bad)
   1400073a5:	ff                   	(bad)
   1400073a6:	ff                   	(bad)
   1400073a7:	ff 00                	incl   (%rax)
   1400073a9:	00 00                	add    %al,(%rax)
   1400073ab:	00 00                	add    %al,(%rax)
   1400073ad:	00 00                	add    %al,(%rax)
	...
