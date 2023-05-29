
ak2-projekt.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 25 95 00 00 	mov    0x9525(%rip),%rax        # 14000a540 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 26 95 00 00 	mov    0x9526(%rip),%rax        # 14000a550 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 29 95 00 00 	mov    0x9529(%rip),%rax        # 14000a560 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 7c 94 00 00 	mov    0x947c(%rip),%rax        # 14000a4c0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 cf 94 00 00 	mov    0x94cf(%rip),%rax        # 14000a530 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 bf 00 00    	mov    %ecx,0xbfa5(%rip)        # 14000d00c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 31 75 00 00       	call   1400085a8 <__set_app_type>
   140001077:	e8 b4 74 00 00       	call   140008530 <__p__fmode>
   14000107c:	48 8b 15 7d 95 00 00 	mov    0x957d(%rip),%rdx        # 14000a600 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 b4 74 00 00       	call   140008540 <__p__commode>
   14000108c:	48 8b 15 4d 95 00 00 	mov    0x954d(%rip),%rdx        # 14000a5e0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 b4 64 00 00       	call   140007550 <_setargv>
   14000109c:	48 8b 05 8d 93 00 00 	mov    0x938d(%rip),%rax        # 14000a430 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 ee 74 00 00       	call   1400085a8 <__set_app_type>
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
   1400010f8:	48 8b 0d 21 95 00 00 	mov    0x9521(%rip),%rcx        # 14000a620 <.refptr._matherr>
   1400010ff:	e8 bc 6b 00 00       	call   140007cc0 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 f5 94 00 00 	mov    0x94f5(%rip),%rax        # 14000a630 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 be 00 00 	lea    0xbed6(%rip),%r8        # 14000d018 <envp>
   140001142:	48 8d 15 d7 be 00 00 	lea    0xbed7(%rip),%rdx        # 14000d020 <argv>
   140001149:	48 8d 0d d8 be 00 00 	lea    0xbed8(%rip),%rcx        # 14000d028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac be 00 00    	mov    %eax,0xbeac(%rip)        # 14000d004 <startinfo>
   140001158:	48 8b 05 91 94 00 00 	mov    0x9491(%rip),%rax        # 14000a5f0 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b be 00 00 	lea    0xbe9b(%rip),%rax        # 14000d004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 25 74 00 00       	call   140008598 <__getmainargs>
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
   14000118a:	48 8b 1d ef 93 00 00 	mov    0x93ef(%rip),%rbx        # 14000a580 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d 94 d1 00 00 	mov    0xd194(%rip),%rbp        # 14000e32c <__imp_Sleep>
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
   1400011cd:	48 8b 35 bc 93 00 00 	mov    0x93bc(%rip),%rsi        # 14000a590 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 be 00 00 01 	movl   $0x1,0xbe13(%rip)        # 14000d008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 e1 92 00 00 	mov    0x92e1(%rip),%rax        # 14000a4f0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 f8 66 00 00       	call   140007920 <_pei386_runtime_relocator>
   140001228:	48 8b 0d e1 93 00 00 	mov    0x93e1(%rip),%rcx        # 14000a610 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 ef d0 00 00    	call   *0xd0ef(%rip)        # 14000e324 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 34 93 00 00 	mov    0x9334(%rip),%rdx        # 14000a570 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 15 73 00 00       	call   140008560 <_set_invalid_parameter_handler>
   14000124b:	e8 e0 64 00 00       	call   140007730 <_fpreset>
   140001250:	8b 1d d2 bd 00 00    	mov    0xbdd2(%rip),%ebx        # 14000d028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 a0 73 00 00       	call   140008608 <malloc>
   140001268:	4c 8b 25 b1 bd 00 00 	mov    0xbdb1(%rip),%r12        # 14000d020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 97 73 00 00       	call   140008620 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 73 73 00 00       	call   140008608 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 63 73 00 00       	call   140008610 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d bd 00 00 	mov    %rbp,0xbd5d(%rip)        # 14000d020 <argv>
   1400012c3:	e8 68 62 00 00       	call   140007530 <__main>
   1400012c8:	48 8b 05 31 92 00 00 	mov    0x9231(%rip),%rax        # 14000a500 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 bd 00 00 	mov    0xbd42(%rip),%r8        # 14000d018 <envp>
   1400012d6:	8b 0d 4c bd 00 00    	mov    0xbd4c(%rip),%ecx        # 14000d028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 bd 00 00 	mov    0xbd37(%rip),%rdx        # 14000d020 <argv>
   1400012e9:	e8 12 79 00 00       	call   140008c00 <main>
   1400012ee:	8b 0d 18 bd 00 00    	mov    0xbd18(%rip),%ecx        # 14000d00c <managedapp>
   1400012f4:	89 05 16 bd 00 00    	mov    %eax,0xbd16(%rip)        # 14000d010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 bd 00 00    	mov    0xbd00(%rip),%edx        # 14000d008 <has_cctor>
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
   140001320:	48 8b 35 69 92 00 00 	mov    0x9269(%rip),%rsi        # 14000a590 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 77 72 00 00       	call   1400085b8 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 5d 92 00 00 	mov    0x925d(%rip),%rdx        # 14000a5b0 <.refptr.__xc_z>
   140001353:	48 8b 0d 46 92 00 00 	mov    0x9246(%rip),%rcx        # 14000a5a0 <.refptr.__xc_a>
   14000135a:	e8 69 72 00 00       	call   1400085c8 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 3b 72 00 00       	call   1400085c0 <_cexit>
   140001385:	8b 05 85 bc 00 00    	mov    0xbc85(%rip),%eax        # 14000d010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 29 92 00 00 	mov    0x9229(%rip),%rdx        # 14000a5d0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 12 92 00 00 	mov    0x9212(%rip),%rcx        # 14000a5c0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 0f 72 00 00       	call   1400085c8 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 19 72 00 00       	call   1400085e8 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 55 91 00 00 	mov    0x9155(%rip),%rax        # 14000a530 <.refptr.__mingw_app_type>
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
   1400013f4:	48 8b 05 35 91 00 00 	mov    0x9135(%rip),%rax        # 14000a530 <.refptr.__mingw_app_type>
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
   140001414:	e8 b7 71 00 00       	call   1400085d0 <_onexit>
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
   140001450:	48 8d 0d da bb 00 00 	lea    0xbbda(%rip),%rcx        # 14000d031 <_ZStL8__ioinit>
   140001457:	e9 84 5f 00 00       	jmp    1400073e0 <_ZNSt8ios_base4InitD1Ev>
   14000145c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001460 <_ZN10Arithmetic3stcEv>:
   140001460:	f9                   	stc
   140001461:	c6 05 c8 bb 00 00 01 	movb   $0x1,0xbbc8(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   140001468:	c3                   	ret
   140001469:	90                   	nop
   14000146a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001470 <_ZN10Arithmetic3clcEv>:
   140001470:	f8                   	clc
   140001471:	c6 05 b8 bb 00 00 00 	movb   $0x0,0xbbb8(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   140001478:	c3                   	ret
   140001479:	90                   	nop
   14000147a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001480 <_ZN10Arithmetic5carryEv>:
   140001480:	0f b6 05 a9 bb 00 00 	movzbl 0xbba9(%rip),%eax        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   140001487:	c3                   	ret
   140001488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000148f:	00 

0000000140001490 <_ZN10Arithmetic3addE4ByteS0_>:
   140001490:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   140001494:	88 54 24 10          	mov    %dl,0x10(%rsp)
   140001498:	8a 44 24 08          	mov    0x8(%rsp),%al
   14000149c:	02 44 24 10          	add    0x10(%rsp),%al
   1400014a0:	0f 92 05 89 bb 00 00 	setb   0xbb89(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   1400014a7:	c3                   	ret
   1400014a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400014af:	00 

00000001400014b0 <_ZN10Arithmetic4addcE4ByteS0_>:
   1400014b0:	0f b6 05 79 bb 00 00 	movzbl 0xbb79(%rip),%eax        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   1400014b7:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   1400014bb:	88 54 24 10          	mov    %dl,0x10(%rsp)
   1400014bf:	84 c0                	test   %al,%al
   1400014c1:	74 1d                	je     1400014e0 <_ZN10Arithmetic4addcE4ByteS0_+0x30>
   1400014c3:	f9                   	stc
   1400014c4:	88 05 66 bb 00 00    	mov    %al,0xbb66(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   1400014ca:	8a 44 24 08          	mov    0x8(%rsp),%al
   1400014ce:	12 44 24 10          	adc    0x10(%rsp),%al
   1400014d2:	0f 92 05 57 bb 00 00 	setb   0xbb57(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
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
   140001500:	0f 92 05 29 bb 00 00 	setb   0xbb29(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   140001507:	c3                   	ret
   140001508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000150f:	00 

0000000140001510 <_ZN10Arithmetic3sbbE4ByteS0_>:
   140001510:	0f b6 05 19 bb 00 00 	movzbl 0xbb19(%rip),%eax        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   140001517:	88 4c 24 08          	mov    %cl,0x8(%rsp)
   14000151b:	88 54 24 10          	mov    %dl,0x10(%rsp)
   14000151f:	84 c0                	test   %al,%al
   140001521:	74 1d                	je     140001540 <_ZN10Arithmetic3sbbE4ByteS0_+0x30>
   140001523:	f9                   	stc
   140001524:	88 05 06 bb 00 00    	mov    %al,0xbb06(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
   14000152a:	8a 44 24 08          	mov    0x8(%rsp),%al
   14000152e:	1a 44 24 10          	sbb    0x10(%rsp),%al
   140001532:	0f 92 05 f7 ba 00 00 	setb   0xbaf7(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
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
   14000159f:	0f 92 05 8a ba 00 00 	setb   0xba8a(%rip)        # 14000d030 <_ZN10Arithmetic10carry_flagE>
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
   14000162c:	e8 5f 5d 00 00       	call   140007390 <__cxa_allocate_exception>
   140001631:	48 8d 15 c8 89 00 00 	lea    0x89c8(%rip),%rdx        # 14000a000 <.rdata>
   140001638:	48 89 c1             	mov    %rax,%rcx
   14000163b:	48 89 c3             	mov    %rax,%rbx
   14000163e:	e8 1d 5e 00 00       	call   140007460 <_ZNSt13runtime_errorC1EPKc>
   140001643:	4c 8d 05 0e 5e 00 00 	lea    0x5e0e(%rip),%r8        # 140007458 <_ZNSt13runtime_errorD1Ev>
   14000164a:	48 8d 15 0f 90 00 00 	lea    0x900f(%rip),%rdx        # 14000a660 <_ZTISt13runtime_error>
   140001651:	48 89 d9             	mov    %rbx,%rcx
   140001654:	e8 0f 5d 00 00       	call   140007368 <__cxa_throw>
   140001659:	48 89 c6             	mov    %rax,%rsi
   14000165c:	48 89 d9             	mov    %rbx,%rcx
   14000165f:	e8 14 5d 00 00       	call   140007378 <__cxa_free_exception>
   140001664:	48 89 f1             	mov    %rsi,%rcx
   140001667:	e8 74 6e 00 00       	call   1400084e0 <_Unwind_Resume>
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <__tcf_0>:
   140001670:	48 8d 0d c9 b9 00 00 	lea    0xb9c9(%rip),%rcx        # 14000d040 <_ZStL8__ioinit>
   140001677:	e9 64 5d 00 00       	jmp    1400073e0 <_ZNSt8ios_base4InitD1Ev>
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
   14000169d:	e8 ee 5c 00 00       	call   140007390 <__cxa_allocate_exception>
   1400016a2:	48 8d 15 67 89 00 00 	lea    0x8967(%rip),%rdx        # 14000a010 <.rdata>
   1400016a9:	48 89 c1             	mov    %rax,%rcx
   1400016ac:	48 89 c3             	mov    %rax,%rbx
   1400016af:	e8 9c 5d 00 00       	call   140007450 <_ZNSt16invalid_argumentC1EPKc>
   1400016b4:	4c 8d 05 8d 5d 00 00 	lea    0x5d8d(%rip),%r8        # 140007448 <_ZNSt16invalid_argumentD1Ev>
   1400016bb:	48 8d 15 be 8f 00 00 	lea    0x8fbe(%rip),%rdx        # 14000a680 <_ZTISt16invalid_argument>
   1400016c2:	48 89 d9             	mov    %rbx,%rcx
   1400016c5:	e8 9e 5c 00 00       	call   140007368 <__cxa_throw>
   1400016ca:	48 89 c6             	mov    %rax,%rsi
   1400016cd:	48 89 d9             	mov    %rbx,%rcx
   1400016d0:	e8 a3 5c 00 00       	call   140007378 <__cxa_free_exception>
   1400016d5:	48 89 f1             	mov    %rsi,%rcx
   1400016d8:	e8 03 6e 00 00       	call   1400084e0 <_Unwind_Resume>
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
   140001703:	e8 88 5c 00 00       	call   140007390 <__cxa_allocate_exception>
   140001708:	48 8d 15 01 89 00 00 	lea    0x8901(%rip),%rdx        # 14000a010 <.rdata>
   14000170f:	48 89 c1             	mov    %rax,%rcx
   140001712:	48 89 c3             	mov    %rax,%rbx
   140001715:	e8 36 5d 00 00       	call   140007450 <_ZNSt16invalid_argumentC1EPKc>
   14000171a:	4c 8d 05 27 5d 00 00 	lea    0x5d27(%rip),%r8        # 140007448 <_ZNSt16invalid_argumentD1Ev>
   140001721:	48 8d 15 58 8f 00 00 	lea    0x8f58(%rip),%rdx        # 14000a680 <_ZTISt16invalid_argument>
   140001728:	48 89 d9             	mov    %rbx,%rcx
   14000172b:	e8 38 5c 00 00       	call   140007368 <__cxa_throw>
   140001730:	48 89 c6             	mov    %rax,%rsi
   140001733:	48 89 d9             	mov    %rbx,%rcx
   140001736:	e8 3d 5c 00 00       	call   140007378 <__cxa_free_exception>
   14000173b:	48 89 f1             	mov    %rsi,%rcx
   14000173e:	e8 9d 6d 00 00       	call   1400084e0 <_Unwind_Resume>
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
   140001750:	48 8d 0d f9 b8 00 00 	lea    0xb8f9(%rip),%rcx        # 14000d050 <_ZStL8__ioinit>
   140001757:	e9 84 5c 00 00       	jmp    1400073e0 <_ZNSt8ios_base4InitD1Ev>
   14000175c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001760 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>:
   140001760:	41 54                	push   %r12
   140001762:	55                   	push   %rbp
   140001763:	57                   	push   %rdi
   140001764:	56                   	push   %rsi
   140001765:	53                   	push   %rbx
   140001766:	48 83 ec 40          	sub    $0x40,%rsp
   14000176a:	48 8b 32             	mov    (%rdx),%rsi
   14000176d:	48 8b 19             	mov    (%rcx),%rbx
   140001770:	48 89 cf             	mov    %rcx,%rdi
   140001773:	48 89 d5             	mov    %rdx,%rbp
   140001776:	48 39 f2             	cmp    %rsi,%rdx
   140001779:	74 24                	je     14000179f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   14000177b:	48 39 cb             	cmp    %rcx,%rbx
   14000177e:	75 0d                	jne    14000178d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x2d>
   140001780:	eb 5e                	jmp    1400017e0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   140001782:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001788:	48 39 df             	cmp    %rbx,%rdi
   14000178b:	74 53                	je     1400017e0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   14000178d:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001791:	48 8b 36             	mov    (%rsi),%rsi
   140001794:	88 43 10             	mov    %al,0x10(%rbx)
   140001797:	48 8b 1b             	mov    (%rbx),%rbx
   14000179a:	48 39 f5             	cmp    %rsi,%rbp
   14000179d:	75 e9                	jne    140001788 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x28>
   14000179f:	48 39 df             	cmp    %rbx,%rdi
   1400017a2:	74 29                	je     1400017cd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   1400017a4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017a8:	48 89 de             	mov    %rbx,%rsi
   1400017ab:	48 8b 1b             	mov    (%rbx),%rbx
   1400017ae:	48 83 6f 10 01       	subq   $0x1,0x10(%rdi)
   1400017b3:	48 89 f1             	mov    %rsi,%rcx
   1400017b6:	e8 35 5c 00 00       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400017bb:	ba 18 00 00 00       	mov    $0x18,%edx
   1400017c0:	48 89 f1             	mov    %rsi,%rcx
   1400017c3:	e8 d8 5b 00 00       	call   1400073a0 <_ZdlPvy>
   1400017c8:	48 39 df             	cmp    %rbx,%rdi
   1400017cb:	75 db                	jne    1400017a8 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x48>
   1400017cd:	48 83 c4 40          	add    $0x40,%rsp
   1400017d1:	5b                   	pop    %rbx
   1400017d2:	5e                   	pop    %rsi
   1400017d3:	5f                   	pop    %rdi
   1400017d4:	5d                   	pop    %rbp
   1400017d5:	41 5c                	pop    %r12
   1400017d7:	c3                   	ret
   1400017d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400017df:	00 
   1400017e0:	48 39 f5             	cmp    %rsi,%rbp
   1400017e3:	74 ba                	je     14000179f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   1400017e5:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400017ec:	00 00 
   1400017ee:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   1400017f3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400017f8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400017fc:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001801:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001806:	e8 8d 5b 00 00       	call   140007398 <_Znwy>
   14000180b:	48 89 c1             	mov    %rax,%rcx
   14000180e:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001812:	4c 89 e2             	mov    %r12,%rdx
   140001815:	88 41 10             	mov    %al,0x10(%rcx)
   140001818:	e8 db 5b 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000181d:	48 8b 36             	mov    (%rsi),%rsi
   140001820:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001826:	48 39 f5             	cmp    %rsi,%rbp
   140001829:	75 d6                	jne    140001801 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   14000182b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140001830:	4c 39 e2             	cmp    %r12,%rdx
   140001833:	74 98                	je     1400017cd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001835:	4d 89 e0             	mov    %r12,%r8
   140001838:	48 89 f9             	mov    %rdi,%rcx
   14000183b:	e8 c0 5b 00 00       	call   140007400 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140001840:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140001845:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000184a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001851:	00 00 
   140001853:	48 01 47 10          	add    %rax,0x10(%rdi)
   140001857:	4c 39 e3             	cmp    %r12,%rbx
   14000185a:	0f 84 6d ff ff ff    	je     1400017cd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001860:	48 89 d9             	mov    %rbx,%rcx
   140001863:	48 8b 1b             	mov    (%rbx),%rbx
   140001866:	ba 18 00 00 00       	mov    $0x18,%edx
   14000186b:	e8 30 5b 00 00       	call   1400073a0 <_ZdlPvy>
   140001870:	4c 39 e3             	cmp    %r12,%rbx
   140001873:	75 eb                	jne    140001860 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x100>
   140001875:	48 83 c4 40          	add    $0x40,%rsp
   140001879:	5b                   	pop    %rbx
   14000187a:	5e                   	pop    %rsi
   14000187b:	5f                   	pop    %rdi
   14000187c:	5d                   	pop    %rbp
   14000187d:	41 5c                	pop    %r12
   14000187f:	c3                   	ret
   140001880:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001885:	48 89 c3             	mov    %rax,%rbx
   140001888:	4c 39 e1             	cmp    %r12,%rcx
   14000188b:	74 12                	je     14000189f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x13f>
   14000188d:	48 8b 31             	mov    (%rcx),%rsi
   140001890:	ba 18 00 00 00       	mov    $0x18,%edx
   140001895:	e8 06 5b 00 00       	call   1400073a0 <_ZdlPvy>
   14000189a:	48 89 f1             	mov    %rsi,%rcx
   14000189d:	eb e9                	jmp    140001888 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   14000189f:	48 89 d9             	mov    %rbx,%rcx
   1400018a2:	e8 39 6c 00 00       	call   1400084e0 <_Unwind_Resume>
   1400018a7:	90                   	nop
   1400018a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400018af:	00 

00000001400018b0 <_Z10fibbonacci15SignedMagnitude>:
   1400018b0:	41 57                	push   %r15
   1400018b2:	41 56                	push   %r14
   1400018b4:	41 55                	push   %r13
   1400018b6:	41 54                	push   %r12
   1400018b8:	55                   	push   %rbp
   1400018b9:	57                   	push   %rdi
   1400018ba:	56                   	push   %rsi
   1400018bb:	53                   	push   %rbx
   1400018bc:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
   1400018c3:	0f 11 b4 24 f0 00 00 	movups %xmm6,0xf0(%rsp)
   1400018ca:	00 
   1400018cb:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
   1400018d2:	00 
   1400018d3:	48 89 d3             	mov    %rdx,%rbx
   1400018d6:	48 89 ce             	mov    %rcx,%rsi
   1400018d9:	ba 01 00 00 00       	mov    $0x1,%edx
   1400018de:	48 89 f9             	mov    %rdi,%rcx
   1400018e1:	e8 8a 3a 00 00       	call   140005370 <_ZN15SignedMagnitudeC1Ex>
   1400018e6:	48 89 fa             	mov    %rdi,%rdx
   1400018e9:	48 89 d9             	mov    %rbx,%rcx
   1400018ec:	e8 9f 45 00 00       	call   140005e90 <_ZN15SignedMagnitudeleES_>
   1400018f1:	89 c5                	mov    %eax,%ebp
   1400018f3:	48 89 f9             	mov    %rdi,%rcx
   1400018f6:	e8 05 3d 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   1400018fb:	40 84 ed             	test   %bpl,%bpl
   1400018fe:	74 78                	je     140001978 <_Z10fibbonacci15SignedMagnitude+0xc8>
   140001900:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140001905:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
   14000190c:	00 
   14000190d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001911:	0f 11 06             	movups %xmm0,(%rsi)
   140001914:	48 8b 3b             	mov    (%rbx),%rdi
   140001917:	48 39 fb             	cmp    %rdi,%rbx
   14000191a:	74 2d                	je     140001949 <_Z10fibbonacci15SignedMagnitude+0x99>
   14000191c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001920:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001925:	e8 6e 5a 00 00       	call   140007398 <_Znwy>
   14000192a:	48 89 c1             	mov    %rax,%rcx
   14000192d:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140001931:	48 89 f2             	mov    %rsi,%rdx
   140001934:	88 41 10             	mov    %al,0x10(%rcx)
   140001937:	e8 bc 5a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000193c:	48 8b 3f             	mov    (%rdi),%rdi
   14000193f:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001944:	48 39 fb             	cmp    %rdi,%rbx
   140001947:	75 d7                	jne    140001920 <_Z10fibbonacci15SignedMagnitude+0x70>
   140001949:	8b 43 18             	mov    0x18(%rbx),%eax
   14000194c:	89 46 18             	mov    %eax,0x18(%rsi)
   14000194f:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   140001953:	88 46 1c             	mov    %al,0x1c(%rsi)
   140001956:	0f 10 b4 24 f0 00 00 	movups 0xf0(%rsp),%xmm6
   14000195d:	00 
   14000195e:	48 89 f0             	mov    %rsi,%rax
   140001961:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
   140001968:	5b                   	pop    %rbx
   140001969:	5e                   	pop    %rsi
   14000196a:	5f                   	pop    %rdi
   14000196b:	5d                   	pop    %rbp
   14000196c:	41 5c                	pop    %r12
   14000196e:	41 5d                	pop    %r13
   140001970:	41 5e                	pop    %r14
   140001972:	41 5f                	pop    %r15
   140001974:	c3                   	ret
   140001975:	0f 1f 00             	nopl   (%rax)
   140001978:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
   14000197d:	31 d2                	xor    %edx,%edx
   14000197f:	4c 89 e9             	mov    %r13,%rcx
   140001982:	e8 e9 39 00 00       	call   140005370 <_ZN15SignedMagnitudeC1Ex>
   140001987:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
   14000198c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001991:	48 89 c1             	mov    %rax,%rcx
   140001994:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001999:	e8 d2 39 00 00       	call   140005370 <_ZN15SignedMagnitudeC1Ex>
   14000199e:	4c 8d 7c 24 70       	lea    0x70(%rsp),%r15
   1400019a3:	4c 89 f9             	mov    %r15,%rcx
   1400019a6:	e8 45 3a 00 00       	call   1400053f0 <_ZN15SignedMagnitudeC1Ev>
   1400019ab:	4c 8d b4 24 90 00 00 	lea    0x90(%rsp),%r14
   1400019b2:	00 
   1400019b3:	ba 02 00 00 00       	mov    $0x2,%edx
   1400019b8:	4c 89 f1             	mov    %r14,%rcx
   1400019bb:	e8 b0 39 00 00       	call   140005370 <_ZN15SignedMagnitudeC1Ex>
   1400019c0:	66 48 0f 6e f7       	movq   %rdi,%xmm6
   1400019c5:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400019c9:	48 8b 2b             	mov    (%rbx),%rbp
   1400019cc:	0f 11 b4 24 d0 00 00 	movups %xmm6,0xd0(%rsp)
   1400019d3:	00 
   1400019d4:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
   1400019db:	00 00 00 00 00 
   1400019e0:	48 39 dd             	cmp    %rbx,%rbp
   1400019e3:	74 31                	je     140001a16 <_Z10fibbonacci15SignedMagnitude+0x166>
   1400019e5:	0f 1f 00             	nopl   (%rax)
   1400019e8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400019ed:	e8 a6 59 00 00       	call   140007398 <_Znwy>
   1400019f2:	48 89 c1             	mov    %rax,%rcx
   1400019f5:	0f b6 45 10          	movzbl 0x10(%rbp),%eax
   1400019f9:	48 89 fa             	mov    %rdi,%rdx
   1400019fc:	88 41 10             	mov    %al,0x10(%rcx)
   1400019ff:	e8 f4 59 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001a04:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140001a08:	48 83 84 24 e0 00 00 	addq   $0x1,0xe0(%rsp)
   140001a0f:	00 01 
   140001a11:	48 39 dd             	cmp    %rbx,%rbp
   140001a14:	75 d2                	jne    1400019e8 <_Z10fibbonacci15SignedMagnitude+0x138>
   140001a16:	8b 43 18             	mov    0x18(%rbx),%eax
   140001a19:	48 89 fa             	mov    %rdi,%rdx
   140001a1c:	4c 89 f1             	mov    %r14,%rcx
   140001a1f:	89 84 24 e8 00 00 00 	mov    %eax,0xe8(%rsp)
   140001a26:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   140001a2a:	88 84 24 ec 00 00 00 	mov    %al,0xec(%rsp)
   140001a31:	e8 5a 44 00 00       	call   140005e90 <_ZN15SignedMagnitudeleES_>
   140001a36:	89 c5                	mov    %eax,%ebp
   140001a38:	48 89 f9             	mov    %rdi,%rcx
   140001a3b:	e8 c0 3b 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001a40:	40 84 ed             	test   %bpl,%bpl
   140001a43:	0f 84 67 01 00 00    	je     140001bb0 <_Z10fibbonacci15SignedMagnitude+0x300>
   140001a49:	4c 8d a4 24 b0 00 00 	lea    0xb0(%rsp),%r12
   140001a50:	00 
   140001a51:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
   140001a56:	48 c7 84 24 c0 00 00 	movq   $0x0,0xc0(%rsp)
   140001a5d:	00 00 00 00 00 
   140001a62:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140001a67:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001a6b:	0f 11 84 24 b0 00 00 	movups %xmm0,0xb0(%rsp)
   140001a72:	00 
   140001a73:	4c 39 ed             	cmp    %r13,%rbp
   140001a76:	74 36                	je     140001aae <_Z10fibbonacci15SignedMagnitude+0x1fe>
   140001a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001a7f:	00 
   140001a80:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001a85:	e8 0e 59 00 00       	call   140007398 <_Znwy>
   140001a8a:	48 89 c1             	mov    %rax,%rcx
   140001a8d:	0f b6 45 10          	movzbl 0x10(%rbp),%eax
   140001a91:	4c 89 e2             	mov    %r12,%rdx
   140001a94:	88 41 10             	mov    %al,0x10(%rcx)
   140001a97:	e8 5c 59 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001a9c:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140001aa0:	48 83 84 24 c0 00 00 	addq   $0x1,0xc0(%rsp)
   140001aa7:	00 01 
   140001aa9:	4c 39 ed             	cmp    %r13,%rbp
   140001aac:	75 d2                	jne    140001a80 <_Z10fibbonacci15SignedMagnitude+0x1d0>
   140001aae:	8b 44 24 48          	mov    0x48(%rsp),%eax
   140001ab2:	48 8b 6c 24 28       	mov    0x28(%rsp),%rbp
   140001ab7:	4d 89 e0             	mov    %r12,%r8
   140001aba:	48 89 f9             	mov    %rdi,%rcx
   140001abd:	89 84 24 c8 00 00 00 	mov    %eax,0xc8(%rsp)
   140001ac4:	0f b6 44 24 4c       	movzbl 0x4c(%rsp),%eax
   140001ac9:	48 89 ea             	mov    %rbp,%rdx
   140001acc:	88 84 24 cc 00 00 00 	mov    %al,0xcc(%rsp)
   140001ad3:	e8 08 4a 00 00       	call   1400064e0 <_ZN15SignedMagnitudeplES_>
   140001ad8:	48 89 fa             	mov    %rdi,%rdx
   140001adb:	4c 89 f9             	mov    %r15,%rcx
   140001ade:	e8 7d fc ff ff       	call   140001760 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140001ae3:	8b 84 24 e8 00 00 00 	mov    0xe8(%rsp),%eax
   140001aea:	48 89 f9             	mov    %rdi,%rcx
   140001aed:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
   140001af4:	0f b6 84 24 ec 00 00 	movzbl 0xec(%rsp),%eax
   140001afb:	00 
   140001afc:	88 84 24 8c 00 00 00 	mov    %al,0x8c(%rsp)
   140001b03:	e8 f8 3a 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001b08:	4c 89 e1             	mov    %r12,%rcx
   140001b0b:	e8 f0 3a 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001b10:	48 89 ea             	mov    %rbp,%rdx
   140001b13:	4c 89 e9             	mov    %r13,%rcx
   140001b16:	e8 45 fc ff ff       	call   140001760 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140001b1b:	8b 44 24 68          	mov    0x68(%rsp),%eax
   140001b1f:	4c 89 fa             	mov    %r15,%rdx
   140001b22:	48 89 e9             	mov    %rbp,%rcx
   140001b25:	89 44 24 48          	mov    %eax,0x48(%rsp)
   140001b29:	0f b6 44 24 6c       	movzbl 0x6c(%rsp),%eax
   140001b2e:	88 44 24 4c          	mov    %al,0x4c(%rsp)
   140001b32:	e8 29 fc ff ff       	call   140001760 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140001b37:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
   140001b3e:	ba 01 00 00 00       	mov    $0x1,%edx
   140001b43:	4c 89 e1             	mov    %r12,%rcx
   140001b46:	89 44 24 68          	mov    %eax,0x68(%rsp)
   140001b4a:	0f b6 84 24 8c 00 00 	movzbl 0x8c(%rsp),%eax
   140001b51:	00 
   140001b52:	88 44 24 6c          	mov    %al,0x6c(%rsp)
   140001b56:	e8 15 38 00 00       	call   140005370 <_ZN15SignedMagnitudeC1Ex>
   140001b5b:	4d 89 e0             	mov    %r12,%r8
   140001b5e:	4c 89 f2             	mov    %r14,%rdx
   140001b61:	48 89 f9             	mov    %rdi,%rcx
   140001b64:	e8 77 49 00 00       	call   1400064e0 <_ZN15SignedMagnitudeplES_>
   140001b69:	48 89 fa             	mov    %rdi,%rdx
   140001b6c:	4c 89 f1             	mov    %r14,%rcx
   140001b6f:	e8 ec fb ff ff       	call   140001760 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140001b74:	8b 84 24 e8 00 00 00 	mov    0xe8(%rsp),%eax
   140001b7b:	48 89 f9             	mov    %rdi,%rcx
   140001b7e:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
   140001b85:	0f b6 84 24 ec 00 00 	movzbl 0xec(%rsp),%eax
   140001b8c:	00 
   140001b8d:	88 84 24 ac 00 00 00 	mov    %al,0xac(%rsp)
   140001b94:	e8 67 3a 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001b99:	4c 89 e1             	mov    %r12,%rcx
   140001b9c:	e8 5f 3a 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001ba1:	e9 23 fe ff ff       	jmp    1400019c9 <_Z10fibbonacci15SignedMagnitude+0x119>
   140001ba6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001bad:	00 00 00 
   140001bb0:	4c 89 f1             	mov    %r14,%rcx
   140001bb3:	e8 48 3a 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001bb8:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140001bbd:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
   140001bc2:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
   140001bc9:	00 
   140001bca:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001bce:	0f 11 06             	movups %xmm0,(%rsi)
   140001bd1:	4c 39 fb             	cmp    %r15,%rbx
   140001bd4:	74 33                	je     140001c09 <_Z10fibbonacci15SignedMagnitude+0x359>
   140001bd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001bdd:	00 00 00 
   140001be0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001be5:	e8 ae 57 00 00       	call   140007398 <_Znwy>
   140001bea:	48 89 c1             	mov    %rax,%rcx
   140001bed:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001bf1:	48 89 f2             	mov    %rsi,%rdx
   140001bf4:	88 41 10             	mov    %al,0x10(%rcx)
   140001bf7:	e8 fc 57 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001bfc:	48 8b 1b             	mov    (%rbx),%rbx
   140001bff:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001c04:	4c 39 fb             	cmp    %r15,%rbx
   140001c07:	75 d7                	jne    140001be0 <_Z10fibbonacci15SignedMagnitude+0x330>
   140001c09:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
   140001c10:	4c 89 f9             	mov    %r15,%rcx
   140001c13:	89 46 18             	mov    %eax,0x18(%rsi)
   140001c16:	0f b6 84 24 8c 00 00 	movzbl 0x8c(%rsp),%eax
   140001c1d:	00 
   140001c1e:	88 46 1c             	mov    %al,0x1c(%rsi)
   140001c21:	e8 da 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c26:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   140001c2b:	e8 d0 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c30:	4c 89 e9             	mov    %r13,%rcx
   140001c33:	e8 c8 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c38:	e9 19 fd ff ff       	jmp    140001956 <_Z10fibbonacci15SignedMagnitude+0xa6>
   140001c3d:	48 89 f9             	mov    %rdi,%rcx
   140001c40:	48 89 c3             	mov    %rax,%rbx
   140001c43:	e8 b8 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c48:	4c 89 e1             	mov    %r12,%rcx
   140001c4b:	e8 b0 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c50:	4c 89 f1             	mov    %r14,%rcx
   140001c53:	e8 a8 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c58:	4c 89 f9             	mov    %r15,%rcx
   140001c5b:	e8 a0 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c60:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
   140001c65:	e8 96 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c6a:	4c 89 e9             	mov    %r13,%rcx
   140001c6d:	e8 8e 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001c72:	48 89 d9             	mov    %rbx,%rcx
   140001c75:	e8 66 68 00 00       	call   1400084e0 <_Unwind_Resume>
   140001c7a:	48 8b 0e             	mov    (%rsi),%rcx
   140001c7d:	48 89 c3             	mov    %rax,%rbx
   140001c80:	48 39 ce             	cmp    %rcx,%rsi
   140001c83:	74 d3                	je     140001c58 <_Z10fibbonacci15SignedMagnitude+0x3a8>
   140001c85:	48 8b 39             	mov    (%rcx),%rdi
   140001c88:	ba 18 00 00 00       	mov    $0x18,%edx
   140001c8d:	e8 0e 57 00 00       	call   1400073a0 <_ZdlPvy>
   140001c92:	48 89 f9             	mov    %rdi,%rcx
   140001c95:	eb e9                	jmp    140001c80 <_Z10fibbonacci15SignedMagnitude+0x3d0>
   140001c97:	48 89 c3             	mov    %rax,%rbx
   140001c9a:	eb ac                	jmp    140001c48 <_Z10fibbonacci15SignedMagnitude+0x398>
   140001c9c:	eb 9f                	jmp    140001c3d <_Z10fibbonacci15SignedMagnitude+0x38d>
   140001c9e:	48 89 c3             	mov    %rax,%rbx
   140001ca1:	eb ad                	jmp    140001c50 <_Z10fibbonacci15SignedMagnitude+0x3a0>
   140001ca3:	eb f2                	jmp    140001c97 <_Z10fibbonacci15SignedMagnitude+0x3e7>
   140001ca5:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
   140001cac:	00 
   140001cad:	48 89 c3             	mov    %rax,%rbx
   140001cb0:	4c 39 e1             	cmp    %r12,%rcx
   140001cb3:	74 9b                	je     140001c50 <_Z10fibbonacci15SignedMagnitude+0x3a0>
   140001cb5:	48 8b 31             	mov    (%rcx),%rsi
   140001cb8:	ba 18 00 00 00       	mov    $0x18,%edx
   140001cbd:	e8 de 56 00 00       	call   1400073a0 <_ZdlPvy>
   140001cc2:	48 89 f1             	mov    %rsi,%rcx
   140001cc5:	eb e9                	jmp    140001cb0 <_Z10fibbonacci15SignedMagnitude+0x400>
   140001cc7:	48 89 c3             	mov    %rax,%rbx
   140001cca:	eb 94                	jmp    140001c60 <_Z10fibbonacci15SignedMagnitude+0x3b0>
   140001ccc:	48 89 c3             	mov    %rax,%rbx
   140001ccf:	eb 99                	jmp    140001c6a <_Z10fibbonacci15SignedMagnitude+0x3ba>
   140001cd1:	48 89 c3             	mov    %rax,%rbx
   140001cd4:	eb 82                	jmp    140001c58 <_Z10fibbonacci15SignedMagnitude+0x3a8>
   140001cd6:	48 8b 0e             	mov    (%rsi),%rcx
   140001cd9:	48 89 c3             	mov    %rax,%rbx
   140001cdc:	48 39 ce             	cmp    %rcx,%rsi
   140001cdf:	74 1d                	je     140001cfe <_Z10fibbonacci15SignedMagnitude+0x44e>
   140001ce1:	48 8b 39             	mov    (%rcx),%rdi
   140001ce4:	ba 18 00 00 00       	mov    $0x18,%edx
   140001ce9:	e8 b2 56 00 00       	call   1400073a0 <_ZdlPvy>
   140001cee:	48 89 f9             	mov    %rdi,%rcx
   140001cf1:	eb e9                	jmp    140001cdc <_Z10fibbonacci15SignedMagnitude+0x42c>
   140001cf3:	48 89 f9             	mov    %rdi,%rcx
   140001cf6:	48 89 c3             	mov    %rax,%rbx
   140001cf9:	e8 02 39 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001cfe:	48 89 d9             	mov    %rbx,%rcx
   140001d01:	e8 da 67 00 00       	call   1400084e0 <_Unwind_Resume>
   140001d06:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
   140001d0d:	00 
   140001d0e:	48 89 c3             	mov    %rax,%rbx
   140001d11:	48 39 f9             	cmp    %rdi,%rcx
   140001d14:	0f 84 36 ff ff ff    	je     140001c50 <_Z10fibbonacci15SignedMagnitude+0x3a0>
   140001d1a:	48 8b 31             	mov    (%rcx),%rsi
   140001d1d:	ba 18 00 00 00       	mov    $0x18,%edx
   140001d22:	e8 79 56 00 00       	call   1400073a0 <_ZdlPvy>
   140001d27:	48 89 f1             	mov    %rsi,%rcx
   140001d2a:	eb e5                	jmp    140001d11 <_Z10fibbonacci15SignedMagnitude+0x461>
   140001d2c:	48 89 f9             	mov    %rdi,%rcx
   140001d2f:	48 89 c3             	mov    %rax,%rbx
   140001d32:	e8 c9 38 00 00       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140001d37:	e9 14 ff ff ff       	jmp    140001c50 <_Z10fibbonacci15SignedMagnitude+0x3a0>
   140001d3c:	90                   	nop
   140001d3d:	90                   	nop
   140001d3e:	90                   	nop
   140001d3f:	90                   	nop

0000000140001d40 <__tcf_0>:
   140001d40:	48 8d 0d 19 b3 00 00 	lea    0xb319(%rip),%rcx        # 14000d060 <_ZStL8__ioinit>
   140001d47:	e9 94 56 00 00       	jmp    1400073e0 <_ZNSt8ios_base4InitD1Ev>
   140001d4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>:
   140001d50:	41 54                	push   %r12
   140001d52:	55                   	push   %rbp
   140001d53:	57                   	push   %rdi
   140001d54:	56                   	push   %rsi
   140001d55:	53                   	push   %rbx
   140001d56:	48 83 ec 40          	sub    $0x40,%rsp
   140001d5a:	48 8b 32             	mov    (%rdx),%rsi
   140001d5d:	48 8b 19             	mov    (%rcx),%rbx
   140001d60:	48 89 cf             	mov    %rcx,%rdi
   140001d63:	48 89 d5             	mov    %rdx,%rbp
   140001d66:	48 39 f2             	cmp    %rsi,%rdx
   140001d69:	74 24                	je     140001d8f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   140001d6b:	48 39 cb             	cmp    %rcx,%rbx
   140001d6e:	75 0d                	jne    140001d7d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x2d>
   140001d70:	eb 5e                	jmp    140001dd0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   140001d72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001d78:	48 39 df             	cmp    %rbx,%rdi
   140001d7b:	74 53                	je     140001dd0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   140001d7d:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001d81:	48 8b 36             	mov    (%rsi),%rsi
   140001d84:	88 43 10             	mov    %al,0x10(%rbx)
   140001d87:	48 8b 1b             	mov    (%rbx),%rbx
   140001d8a:	48 39 f5             	cmp    %rsi,%rbp
   140001d8d:	75 e9                	jne    140001d78 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x28>
   140001d8f:	48 39 df             	cmp    %rbx,%rdi
   140001d92:	74 29                	je     140001dbd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001d94:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d98:	48 89 de             	mov    %rbx,%rsi
   140001d9b:	48 8b 1b             	mov    (%rbx),%rbx
   140001d9e:	48 83 6f 10 01       	subq   $0x1,0x10(%rdi)
   140001da3:	48 89 f1             	mov    %rsi,%rcx
   140001da6:	e8 45 56 00 00       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140001dab:	ba 18 00 00 00       	mov    $0x18,%edx
   140001db0:	48 89 f1             	mov    %rsi,%rcx
   140001db3:	e8 e8 55 00 00       	call   1400073a0 <_ZdlPvy>
   140001db8:	48 39 df             	cmp    %rbx,%rdi
   140001dbb:	75 db                	jne    140001d98 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x48>
   140001dbd:	48 83 c4 40          	add    $0x40,%rsp
   140001dc1:	5b                   	pop    %rbx
   140001dc2:	5e                   	pop    %rsi
   140001dc3:	5f                   	pop    %rdi
   140001dc4:	5d                   	pop    %rbp
   140001dc5:	41 5c                	pop    %r12
   140001dc7:	c3                   	ret
   140001dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001dcf:	00 
   140001dd0:	48 39 f5             	cmp    %rsi,%rbp
   140001dd3:	74 ba                	je     140001d8f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   140001dd5:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001ddc:	00 00 
   140001dde:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140001de3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140001de8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001dec:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140001df1:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001df6:	e8 9d 55 00 00       	call   140007398 <_Znwy>
   140001dfb:	48 89 c1             	mov    %rax,%rcx
   140001dfe:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001e02:	4c 89 e2             	mov    %r12,%rdx
   140001e05:	88 41 10             	mov    %al,0x10(%rcx)
   140001e08:	e8 eb 55 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001e0d:	48 8b 36             	mov    (%rsi),%rsi
   140001e10:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001e16:	48 39 f5             	cmp    %rsi,%rbp
   140001e19:	75 d6                	jne    140001df1 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   140001e1b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140001e20:	4c 39 e2             	cmp    %r12,%rdx
   140001e23:	74 98                	je     140001dbd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001e25:	4d 89 e0             	mov    %r12,%r8
   140001e28:	48 89 f9             	mov    %rdi,%rcx
   140001e2b:	e8 d0 55 00 00       	call   140007400 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140001e30:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140001e35:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140001e3a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140001e41:	00 00 
   140001e43:	48 01 47 10          	add    %rax,0x10(%rdi)
   140001e47:	4c 39 e3             	cmp    %r12,%rbx
   140001e4a:	0f 84 6d ff ff ff    	je     140001dbd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001e50:	48 89 d9             	mov    %rbx,%rcx
   140001e53:	48 8b 1b             	mov    (%rbx),%rbx
   140001e56:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e5b:	e8 40 55 00 00       	call   1400073a0 <_ZdlPvy>
   140001e60:	4c 39 e3             	cmp    %r12,%rbx
   140001e63:	75 eb                	jne    140001e50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x100>
   140001e65:	48 83 c4 40          	add    $0x40,%rsp
   140001e69:	5b                   	pop    %rbx
   140001e6a:	5e                   	pop    %rsi
   140001e6b:	5f                   	pop    %rdi
   140001e6c:	5d                   	pop    %rbp
   140001e6d:	41 5c                	pop    %r12
   140001e6f:	c3                   	ret
   140001e70:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001e75:	48 89 c3             	mov    %rax,%rbx
   140001e78:	4c 39 e1             	cmp    %r12,%rcx
   140001e7b:	74 12                	je     140001e8f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x13f>
   140001e7d:	48 8b 31             	mov    (%rcx),%rsi
   140001e80:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e85:	e8 16 55 00 00       	call   1400073a0 <_ZdlPvy>
   140001e8a:	48 89 f1             	mov    %rsi,%rcx
   140001e8d:	eb e9                	jmp    140001e78 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   140001e8f:	48 89 d9             	mov    %rbx,%rcx
   140001e92:	e8 49 66 00 00       	call   1400084e0 <_Unwind_Resume>
   140001e97:	90                   	nop
   140001e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e9f:	00 

0000000140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>:
   140001ea0:	57                   	push   %rdi
   140001ea1:	56                   	push   %rsi
   140001ea2:	53                   	push   %rbx
   140001ea3:	48 83 ec 30          	sub    $0x30,%rsp
   140001ea7:	31 d2                	xor    %edx,%edx
   140001ea9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   140001eae:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140001eb5:	00 
   140001eb6:	48 89 cb             	mov    %rcx,%rbx
   140001eb9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001ebd:	0f 11 01             	movups %xmm0,(%rcx)
   140001ec0:	48 8d 4c 24 2f       	lea    0x2f(%rsp),%rcx
   140001ec5:	e8 b6 f7 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140001eca:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001ecf:	e8 c4 54 00 00       	call   140007398 <_Znwy>
   140001ed4:	48 89 c1             	mov    %rax,%rcx
   140001ed7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140001edc:	48 89 da             	mov    %rbx,%rdx
   140001edf:	88 41 10             	mov    %al,0x10(%rcx)
   140001ee2:	e8 11 55 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001ee7:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   140001eec:	48 83 c4 30          	add    $0x30,%rsp
   140001ef0:	5b                   	pop    %rbx
   140001ef1:	5e                   	pop    %rsi
   140001ef2:	5f                   	pop    %rdi
   140001ef3:	c3                   	ret
   140001ef4:	48 8b 0b             	mov    (%rbx),%rcx
   140001ef7:	48 89 c7             	mov    %rax,%rdi
   140001efa:	48 39 cb             	cmp    %rcx,%rbx
   140001efd:	74 12                	je     140001f11 <_ZN13NaturalBinaryC2Ex.constprop.0+0x71>
   140001eff:	48 8b 31             	mov    (%rcx),%rsi
   140001f02:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f07:	e8 94 54 00 00       	call   1400073a0 <_ZdlPvy>
   140001f0c:	48 89 f1             	mov    %rsi,%rcx
   140001f0f:	eb e9                	jmp    140001efa <_ZN13NaturalBinaryC2Ex.constprop.0+0x5a>
   140001f11:	48 89 f9             	mov    %rdi,%rcx
   140001f14:	e8 c7 65 00 00       	call   1400084e0 <_Unwind_Resume>
   140001f19:	90                   	nop
   140001f1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001f20 <_ZN13NaturalBinaryC1Ev>:
   140001f20:	e9 7b ff ff ff       	jmp    140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140001f25:	90                   	nop
   140001f26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001f2d:	00 00 00 

0000000140001f30 <_ZN13NaturalBinaryC1Ex>:
   140001f30:	57                   	push   %rdi
   140001f31:	56                   	push   %rsi
   140001f32:	53                   	push   %rbx
   140001f33:	48 83 ec 30          	sub    $0x30,%rsp
   140001f37:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   140001f3c:	48 89 ce             	mov    %rcx,%rsi
   140001f3f:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   140001f44:	48 89 d3             	mov    %rdx,%rbx
   140001f47:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140001f4b:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140001f52:	00 
   140001f53:	0f 11 01             	movups %xmm0,(%rcx)
   140001f56:	48 85 d2             	test   %rdx,%rdx
   140001f59:	74 65                	je     140001fc0 <_ZN13NaturalBinaryC1Ex+0x90>
   140001f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001f60:	48 89 d8             	mov    %rbx,%rax
   140001f63:	48 89 f9             	mov    %rdi,%rcx
   140001f66:	48 c1 f8 3f          	sar    $0x3f,%rax
   140001f6a:	48 c1 e8 38          	shr    $0x38,%rax
   140001f6e:	48 8d 14 03          	lea    (%rbx,%rax,1),%rdx
   140001f72:	0f b6 d2             	movzbl %dl,%edx
   140001f75:	48 29 c2             	sub    %rax,%rdx
   140001f78:	e8 03 f7 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140001f7d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001f82:	e8 11 54 00 00       	call   140007398 <_Znwy>
   140001f87:	48 89 c1             	mov    %rax,%rcx
   140001f8a:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140001f8f:	48 89 f2             	mov    %rsi,%rdx
   140001f92:	88 41 10             	mov    %al,0x10(%rcx)
   140001f95:	e8 5e 54 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001f9a:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001f9f:	48 85 db             	test   %rbx,%rbx
   140001fa2:	48 8d 83 ff 00 00 00 	lea    0xff(%rbx),%rax
   140001fa9:	48 0f 48 d8          	cmovs  %rax,%rbx
   140001fad:	48 c1 fb 08          	sar    $0x8,%rbx
   140001fb1:	75 ad                	jne    140001f60 <_ZN13NaturalBinaryC1Ex+0x30>
   140001fb3:	48 83 c4 30          	add    $0x30,%rsp
   140001fb7:	5b                   	pop    %rbx
   140001fb8:	5e                   	pop    %rsi
   140001fb9:	5f                   	pop    %rdi
   140001fba:	c3                   	ret
   140001fbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001fc0:	31 d2                	xor    %edx,%edx
   140001fc2:	48 89 f9             	mov    %rdi,%rcx
   140001fc5:	e8 b6 f6 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140001fca:	b9 18 00 00 00       	mov    $0x18,%ecx
   140001fcf:	e8 c4 53 00 00       	call   140007398 <_Znwy>
   140001fd4:	48 89 c1             	mov    %rax,%rcx
   140001fd7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140001fdc:	48 89 f2             	mov    %rsi,%rdx
   140001fdf:	88 41 10             	mov    %al,0x10(%rcx)
   140001fe2:	e8 11 54 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140001fe7:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140001fec:	48 83 c4 30          	add    $0x30,%rsp
   140001ff0:	5b                   	pop    %rbx
   140001ff1:	5e                   	pop    %rsi
   140001ff2:	5f                   	pop    %rdi
   140001ff3:	c3                   	ret
   140001ff4:	48 8b 0e             	mov    (%rsi),%rcx
   140001ff7:	48 89 c3             	mov    %rax,%rbx
   140001ffa:	48 39 ce             	cmp    %rcx,%rsi
   140001ffd:	74 12                	je     140002011 <_ZN13NaturalBinaryC1Ex+0xe1>
   140001fff:	48 8b 39             	mov    (%rcx),%rdi
   140002002:	ba 18 00 00 00       	mov    $0x18,%edx
   140002007:	e8 94 53 00 00       	call   1400073a0 <_ZdlPvy>
   14000200c:	48 89 f9             	mov    %rdi,%rcx
   14000200f:	eb e9                	jmp    140001ffa <_ZN13NaturalBinaryC1Ex+0xca>
   140002011:	48 89 d9             	mov    %rbx,%rcx
   140002014:	e8 c7 64 00 00       	call   1400084e0 <_Unwind_Resume>
   140002019:	90                   	nop
   14000201a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002020 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE>:
   140002020:	41 54                	push   %r12
   140002022:	55                   	push   %rbp
   140002023:	57                   	push   %rdi
   140002024:	56                   	push   %rsi
   140002025:	53                   	push   %rbx
   140002026:	48 83 ec 20          	sub    $0x20,%rsp
   14000202a:	66 48 0f 6e c1       	movq   %rcx,%xmm0
   14000202f:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
   140002036:	00 
   140002037:	48 89 ce             	mov    %rcx,%rsi
   14000203a:	48 89 d7             	mov    %rdx,%rdi
   14000203d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002041:	0f 11 01             	movups %xmm0,(%rcx)
   140002044:	48 8b 1a             	mov    (%rdx),%rbx
   140002047:	48 39 da             	cmp    %rbx,%rdx
   14000204a:	74 39                	je     140002085 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x65>
   14000204c:	49 89 cc             	mov    %rcx,%r12
   14000204f:	eb 0a                	jmp    14000205b <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x3b>
   140002051:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002058:	4c 8b 26             	mov    (%rsi),%r12
   14000205b:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002060:	0f b6 6b 10          	movzbl 0x10(%rbx),%ebp
   140002064:	e8 2f 53 00 00       	call   140007398 <_Znwy>
   140002069:	40 88 68 10          	mov    %bpl,0x10(%rax)
   14000206d:	48 89 c1             	mov    %rax,%rcx
   140002070:	4c 89 e2             	mov    %r12,%rdx
   140002073:	e8 80 53 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002078:	48 8b 1b             	mov    (%rbx),%rbx
   14000207b:	48 83 46 10 01       	addq   $0x1,0x10(%rsi)
   140002080:	48 39 df             	cmp    %rbx,%rdi
   140002083:	75 d3                	jne    140002058 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x38>
   140002085:	48 83 c4 20          	add    $0x20,%rsp
   140002089:	5b                   	pop    %rbx
   14000208a:	5e                   	pop    %rsi
   14000208b:	5f                   	pop    %rdi
   14000208c:	5d                   	pop    %rbp
   14000208d:	41 5c                	pop    %r12
   14000208f:	c3                   	ret
   140002090:	48 8b 0e             	mov    (%rsi),%rcx
   140002093:	48 89 c3             	mov    %rax,%rbx
   140002096:	48 39 ce             	cmp    %rcx,%rsi
   140002099:	74 12                	je     1400020ad <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x8d>
   14000209b:	48 8b 39             	mov    (%rcx),%rdi
   14000209e:	ba 18 00 00 00       	mov    $0x18,%edx
   1400020a3:	e8 f8 52 00 00       	call   1400073a0 <_ZdlPvy>
   1400020a8:	48 89 f9             	mov    %rdi,%rcx
   1400020ab:	eb e9                	jmp    140002096 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x76>
   1400020ad:	48 89 d9             	mov    %rbx,%rcx
   1400020b0:	e8 2b 64 00 00       	call   1400084e0 <_Unwind_Resume>
   1400020b5:	90                   	nop
   1400020b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400020bd:	00 00 00 

00000001400020c0 <_ZN13NaturalBinaryD1Ev>:
   1400020c0:	56                   	push   %rsi
   1400020c1:	53                   	push   %rbx
   1400020c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400020c6:	48 8b 19             	mov    (%rcx),%rbx
   1400020c9:	48 89 ce             	mov    %rcx,%rsi
   1400020cc:	48 39 cb             	cmp    %rcx,%rbx
   1400020cf:	74 1c                	je     1400020ed <_ZN13NaturalBinaryD1Ev+0x2d>
   1400020d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020d8:	48 89 d9             	mov    %rbx,%rcx
   1400020db:	48 8b 1b             	mov    (%rbx),%rbx
   1400020de:	ba 18 00 00 00       	mov    $0x18,%edx
   1400020e3:	e8 b8 52 00 00       	call   1400073a0 <_ZdlPvy>
   1400020e8:	48 39 f3             	cmp    %rsi,%rbx
   1400020eb:	75 eb                	jne    1400020d8 <_ZN13NaturalBinaryD1Ev+0x18>
   1400020ed:	48 83 c4 28          	add    $0x28,%rsp
   1400020f1:	5b                   	pop    %rbx
   1400020f2:	5e                   	pop    %rsi
   1400020f3:	c3                   	ret
   1400020f4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400020fb:	00 00 00 00 
   1400020ff:	90                   	nop

0000000140002100 <_ZN13NaturalBinaryplES_>:
   140002100:	41 57                	push   %r15
   140002102:	41 56                	push   %r14
   140002104:	41 55                	push   %r13
   140002106:	41 54                	push   %r12
   140002108:	55                   	push   %rbp
   140002109:	57                   	push   %rdi
   14000210a:	56                   	push   %rsi
   14000210b:	53                   	push   %rbx
   14000210c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   140002113:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
   14000211a:	00 
   14000211b:	49 8b 18             	mov    (%r8),%rbx
   14000211e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140002123:	48 89 cf             	mov    %rcx,%rdi
   140002126:	49 89 d4             	mov    %rdx,%r12
   140002129:	4c 89 c6             	mov    %r8,%rsi
   14000212c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140002133:	00 00 
   140002135:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   14000213a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000213e:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140002143:	49 39 d8             	cmp    %rbx,%r8
   140002146:	0f 84 cc 01 00 00    	je     140002318 <_ZN13NaturalBinaryplES_+0x218>
   14000214c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002150:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002155:	e8 3e 52 00 00       	call   140007398 <_Znwy>
   14000215a:	48 89 c1             	mov    %rax,%rcx
   14000215d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002161:	48 89 ea             	mov    %rbp,%rdx
   140002164:	88 41 10             	mov    %al,0x10(%rcx)
   140002167:	e8 8c 52 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000216c:	48 8b 1b             	mov    (%rbx),%rbx
   14000216f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140002175:	48 39 de             	cmp    %rbx,%rsi
   140002178:	75 d6                	jne    140002150 <_ZN13NaturalBinaryplES_+0x50>
   14000217a:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
   14000217f:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140002186:	00 00 
   140002188:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
   14000218d:	66 49 0f 6e f7       	movq   %r15,%xmm6
   140002192:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140002196:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000219b:	e8 d0 f2 ff ff       	call   140001470 <_ZN10Arithmetic3clcEv>
   1400021a0:	49 8b 1c 24          	mov    (%r12),%rbx
   1400021a4:	49 39 dc             	cmp    %rbx,%r12
   1400021a7:	74 47                	je     1400021f0 <_ZN13NaturalBinaryplES_+0xf0>
   1400021a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400021b0:	0f b6 4b 10          	movzbl 0x10(%rbx),%ecx
   1400021b4:	41 0f b6 55 10       	movzbl 0x10(%r13),%edx
   1400021b9:	e8 f2 f2 ff ff       	call   1400014b0 <_ZN10Arithmetic4addcE4ByteS0_>
   1400021be:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400021c3:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
   1400021c8:	89 c6                	mov    %eax,%esi
   1400021ca:	e8 c9 51 00 00       	call   140007398 <_Znwy>
   1400021cf:	40 88 70 10          	mov    %sil,0x10(%rax)
   1400021d3:	48 89 c1             	mov    %rax,%rcx
   1400021d6:	4c 89 f2             	mov    %r14,%rdx
   1400021d9:	e8 1a 52 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400021de:	48 8b 1b             	mov    (%rbx),%rbx
   1400021e1:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400021e7:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   1400021eb:	49 39 dc             	cmp    %rbx,%r12
   1400021ee:	75 c0                	jne    1400021b0 <_ZN13NaturalBinaryplES_+0xb0>
   1400021f0:	e8 8b f2 ff ff       	call   140001480 <_ZN10Arithmetic5carryEv>
   1400021f5:	84 c0                	test   %al,%al
   1400021f7:	0f 85 23 01 00 00    	jne    140002320 <_ZN13NaturalBinaryplES_+0x220>
   1400021fd:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140002202:	f3 0f 6f 4c 24 40    	movdqu 0x40(%rsp),%xmm1
   140002208:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
   14000220d:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   140002212:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140002217:	0f 11 4c 24 60       	movups %xmm1,0x60(%rsp)
   14000221c:	49 39 c7             	cmp    %rax,%r15
   14000221f:	0f 84 43 01 00 00    	je     140002368 <_ZN13NaturalBinaryplES_+0x268>
   140002225:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   14000222a:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   14000222f:	48 89 32             	mov    %rsi,(%rdx)
   140002232:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140002237:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000223b:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   14000223f:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140002246:	00 00 
   140002248:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   14000224f:	00 
   140002250:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140002255:	0f 11 07             	movups %xmm0,(%rdi)
   140002258:	48 39 f3             	cmp    %rsi,%rbx
   14000225b:	74 78                	je     1400022d5 <_ZN13NaturalBinaryplES_+0x1d5>
   14000225d:	49 89 fd             	mov    %rdi,%r13
   140002260:	eb 09                	jmp    14000226b <_ZN13NaturalBinaryplES_+0x16b>
   140002262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002268:	4c 8b 2f             	mov    (%rdi),%r13
   14000226b:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002270:	44 0f b6 63 10       	movzbl 0x10(%rbx),%r12d
   140002275:	e8 1e 51 00 00       	call   140007398 <_Znwy>
   14000227a:	44 88 60 10          	mov    %r12b,0x10(%rax)
   14000227e:	48 89 c1             	mov    %rax,%rcx
   140002281:	4c 89 ea             	mov    %r13,%rdx
   140002284:	e8 6f 51 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002289:	48 8b 1b             	mov    (%rbx),%rbx
   14000228c:	48 83 47 10 01       	addq   $0x1,0x10(%rdi)
   140002291:	48 39 f3             	cmp    %rsi,%rbx
   140002294:	75 d2                	jne    140002268 <_ZN13NaturalBinaryplES_+0x168>
   140002296:	4c 8b 64 24 60       	mov    0x60(%rsp),%r12
   14000229b:	49 39 dc             	cmp    %rbx,%r12
   14000229e:	74 16                	je     1400022b6 <_ZN13NaturalBinaryplES_+0x1b6>
   1400022a0:	4c 89 e1             	mov    %r12,%rcx
   1400022a3:	4d 8b 24 24          	mov    (%r12),%r12
   1400022a7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400022ac:	e8 ef 50 00 00       	call   1400073a0 <_ZdlPvy>
   1400022b1:	49 39 f4             	cmp    %rsi,%r12
   1400022b4:	75 ea                	jne    1400022a0 <_ZN13NaturalBinaryplES_+0x1a0>
   1400022b6:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400022bb:	eb 13                	jmp    1400022d0 <_ZN13NaturalBinaryplES_+0x1d0>
   1400022bd:	0f 1f 00             	nopl   (%rax)
   1400022c0:	48 89 d9             	mov    %rbx,%rcx
   1400022c3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400022c8:	48 8b 1b             	mov    (%rbx),%rbx
   1400022cb:	e8 d0 50 00 00       	call   1400073a0 <_ZdlPvy>
   1400022d0:	4c 39 fb             	cmp    %r15,%rbx
   1400022d3:	75 eb                	jne    1400022c0 <_ZN13NaturalBinaryplES_+0x1c0>
   1400022d5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400022da:	48 39 eb             	cmp    %rbp,%rbx
   1400022dd:	74 16                	je     1400022f5 <_ZN13NaturalBinaryplES_+0x1f5>
   1400022df:	90                   	nop
   1400022e0:	48 89 d9             	mov    %rbx,%rcx
   1400022e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400022e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400022eb:	e8 b0 50 00 00       	call   1400073a0 <_ZdlPvy>
   1400022f0:	48 39 eb             	cmp    %rbp,%rbx
   1400022f3:	75 eb                	jne    1400022e0 <_ZN13NaturalBinaryplES_+0x1e0>
   1400022f5:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
   1400022fc:	00 
   1400022fd:	48 89 f8             	mov    %rdi,%rax
   140002300:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140002307:	5b                   	pop    %rbx
   140002308:	5e                   	pop    %rsi
   140002309:	5f                   	pop    %rdi
   14000230a:	5d                   	pop    %rbp
   14000230b:	41 5c                	pop    %r12
   14000230d:	41 5d                	pop    %r13
   14000230f:	41 5e                	pop    %r14
   140002311:	41 5f                	pop    %r15
   140002313:	c3                   	ret
   140002314:	0f 1f 40 00          	nopl   0x0(%rax)
   140002318:	49 89 ed             	mov    %rbp,%r13
   14000231b:	e9 5f fe ff ff       	jmp    14000217f <_ZN13NaturalBinaryplES_+0x7f>
   140002320:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   140002325:	ba 01 00 00 00       	mov    $0x1,%edx
   14000232a:	e8 51 f3 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000232f:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002334:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140002339:	e8 5a 50 00 00       	call   140007398 <_Znwy>
   14000233e:	48 89 c1             	mov    %rax,%rcx
   140002341:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   140002346:	48 89 da             	mov    %rbx,%rdx
   140002349:	88 41 10             	mov    %al,0x10(%rcx)
   14000234c:	e8 a7 50 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002351:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140002356:	48 83 c0 01          	add    $0x1,%rax
   14000235a:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   14000235f:	e9 9e fe ff ff       	jmp    140002202 <_ZN13NaturalBinaryplES_+0x102>
   140002364:	0f 1f 40 00          	nopl   0x0(%rax)
   140002368:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   14000236d:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   140002374:	00 
   140002375:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002379:	0f 11 07             	movups %xmm0,(%rdi)
   14000237c:	e9 54 ff ff ff       	jmp    1400022d5 <_ZN13NaturalBinaryplES_+0x1d5>
   140002381:	48 8b 0f             	mov    (%rdi),%rcx
   140002384:	48 89 c3             	mov    %rax,%rbx
   140002387:	48 39 cf             	cmp    %rcx,%rdi
   14000238a:	74 62                	je     1400023ee <_ZN13NaturalBinaryplES_+0x2ee>
   14000238c:	4c 8b 21             	mov    (%rcx),%r12
   14000238f:	ba 18 00 00 00       	mov    $0x18,%edx
   140002394:	e8 07 50 00 00       	call   1400073a0 <_ZdlPvy>
   140002399:	4c 89 e1             	mov    %r12,%rcx
   14000239c:	eb e9                	jmp    140002387 <_ZN13NaturalBinaryplES_+0x287>
   14000239e:	48 89 c3             	mov    %rax,%rbx
   1400023a1:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400023a6:	4c 39 f9             	cmp    %r15,%rcx
   1400023a9:	74 31                	je     1400023dc <_ZN13NaturalBinaryplES_+0x2dc>
   1400023ab:	48 8b 31             	mov    (%rcx),%rsi
   1400023ae:	ba 18 00 00 00       	mov    $0x18,%edx
   1400023b3:	e8 e8 4f 00 00       	call   1400073a0 <_ZdlPvy>
   1400023b8:	48 89 f1             	mov    %rsi,%rcx
   1400023bb:	eb e9                	jmp    1400023a6 <_ZN13NaturalBinaryplES_+0x2a6>
   1400023bd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400023c2:	48 89 c3             	mov    %rax,%rbx
   1400023c5:	48 39 e9             	cmp    %rbp,%rcx
   1400023c8:	74 1c                	je     1400023e6 <_ZN13NaturalBinaryplES_+0x2e6>
   1400023ca:	48 8b 31             	mov    (%rcx),%rsi
   1400023cd:	ba 18 00 00 00       	mov    $0x18,%edx
   1400023d2:	e8 c9 4f 00 00       	call   1400073a0 <_ZdlPvy>
   1400023d7:	48 89 f1             	mov    %rsi,%rcx
   1400023da:	eb e9                	jmp    1400023c5 <_ZN13NaturalBinaryplES_+0x2c5>
   1400023dc:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400023e1:	48 39 e9             	cmp    %rbp,%rcx
   1400023e4:	75 24                	jne    14000240a <_ZN13NaturalBinaryplES_+0x30a>
   1400023e6:	48 89 d9             	mov    %rbx,%rcx
   1400023e9:	e8 f2 60 00 00       	call   1400084e0 <_Unwind_Resume>
   1400023ee:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400023f3:	48 39 f1             	cmp    %rsi,%rcx
   1400023f6:	74 a9                	je     1400023a1 <_ZN13NaturalBinaryplES_+0x2a1>
   1400023f8:	48 8b 39             	mov    (%rcx),%rdi
   1400023fb:	ba 18 00 00 00       	mov    $0x18,%edx
   140002400:	e8 9b 4f 00 00       	call   1400073a0 <_ZdlPvy>
   140002405:	48 89 f9             	mov    %rdi,%rcx
   140002408:	eb e9                	jmp    1400023f3 <_ZN13NaturalBinaryplES_+0x2f3>
   14000240a:	48 8b 31             	mov    (%rcx),%rsi
   14000240d:	ba 18 00 00 00       	mov    $0x18,%edx
   140002412:	e8 89 4f 00 00       	call   1400073a0 <_ZdlPvy>
   140002417:	48 89 f1             	mov    %rsi,%rcx
   14000241a:	eb c5                	jmp    1400023e1 <_ZN13NaturalBinaryplES_+0x2e1>
   14000241c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002420 <_ZN13NaturalBinarymiES_>:
   140002420:	41 57                	push   %r15
   140002422:	41 56                	push   %r14
   140002424:	41 55                	push   %r13
   140002426:	41 54                	push   %r12
   140002428:	55                   	push   %rbp
   140002429:	57                   	push   %rdi
   14000242a:	56                   	push   %rsi
   14000242b:	53                   	push   %rbx
   14000242c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   140002433:	0f 11 b4 24 80 00 00 	movups %xmm6,0x80(%rsp)
   14000243a:	00 
   14000243b:	49 8b 18             	mov    (%r8),%rbx
   14000243e:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140002443:	48 89 cd             	mov    %rcx,%rbp
   140002446:	49 89 d5             	mov    %rdx,%r13
   140002449:	4c 89 c6             	mov    %r8,%rsi
   14000244c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140002453:	00 00 
   140002455:	66 49 0f 6e c4       	movq   %r12,%xmm0
   14000245a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000245e:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140002463:	49 39 d8             	cmp    %rbx,%r8
   140002466:	74 35                	je     14000249d <_ZN13NaturalBinarymiES_+0x7d>
   140002468:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000246f:	00 
   140002470:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002475:	e8 1e 4f 00 00       	call   140007398 <_Znwy>
   14000247a:	48 89 c1             	mov    %rax,%rcx
   14000247d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002481:	4c 89 e2             	mov    %r12,%rdx
   140002484:	88 41 10             	mov    %al,0x10(%rcx)
   140002487:	e8 6c 4f 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000248c:	48 8b 1b             	mov    (%rbx),%rbx
   14000248f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140002495:	48 39 de             	cmp    %rbx,%rsi
   140002498:	75 d6                	jne    140002470 <_ZN13NaturalBinarymiES_+0x50>
   14000249a:	48 8b 1b             	mov    (%rbx),%rbx
   14000249d:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400024a4:	00 00 
   1400024a6:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
   1400024ab:	66 49 0f 6e f7       	movq   %r15,%xmm6
   1400024b0:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400024b4:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   1400024b9:	e8 b2 ef ff ff       	call   140001470 <_ZN10Arithmetic3clcEv>
   1400024be:	49 8b 75 00          	mov    0x0(%r13),%rsi
   1400024c2:	49 39 f5             	cmp    %rsi,%r13
   1400024c5:	74 47                	je     14000250e <_ZN13NaturalBinarymiES_+0xee>
   1400024c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400024ce:	00 00 
   1400024d0:	0f b6 4e 10          	movzbl 0x10(%rsi),%ecx
   1400024d4:	0f b6 53 10          	movzbl 0x10(%rbx),%edx
   1400024d8:	e8 33 f0 ff ff       	call   140001510 <_ZN10Arithmetic3sbbE4ByteS0_>
   1400024dd:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400024e2:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
   1400024e7:	89 c7                	mov    %eax,%edi
   1400024e9:	e8 aa 4e 00 00       	call   140007398 <_Znwy>
   1400024ee:	40 88 78 10          	mov    %dil,0x10(%rax)
   1400024f2:	48 89 c1             	mov    %rax,%rcx
   1400024f5:	4c 89 f2             	mov    %r14,%rdx
   1400024f8:	e8 fb 4e 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400024fd:	48 8b 36             	mov    (%rsi),%rsi
   140002500:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140002506:	48 8b 1b             	mov    (%rbx),%rbx
   140002509:	49 39 f5             	cmp    %rsi,%r13
   14000250c:	75 c2                	jne    1400024d0 <_ZN13NaturalBinarymiES_+0xb0>
   14000250e:	e8 6d ef ff ff       	call   140001480 <_ZN10Arithmetic5carryEv>
   140002513:	84 c0                	test   %al,%al
   140002515:	0f 85 1d 01 00 00    	jne    140002638 <_ZN13NaturalBinarymiES_+0x218>
   14000251b:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140002520:	f3 0f 6f 4c 24 40    	movdqu 0x40(%rsp),%xmm1
   140002526:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
   14000252b:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   140002530:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140002535:	0f 11 4c 24 60       	movups %xmm1,0x60(%rsp)
   14000253a:	49 39 c7             	cmp    %rax,%r15
   14000253d:	0f 84 3d 01 00 00    	je     140002680 <_ZN13NaturalBinarymiES_+0x260>
   140002543:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140002548:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   14000254d:	48 89 32             	mov    %rsi,(%rdx)
   140002550:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140002555:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002559:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   14000255d:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140002564:	00 00 
   140002566:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   14000256d:	00 
   14000256e:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140002573:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   140002577:	48 39 f3             	cmp    %rsi,%rbx
   14000257a:	74 79                	je     1400025f5 <_ZN13NaturalBinarymiES_+0x1d5>
   14000257c:	49 89 ed             	mov    %rbp,%r13
   14000257f:	eb 0b                	jmp    14000258c <_ZN13NaturalBinarymiES_+0x16c>
   140002581:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002588:	4c 8b 6d 00          	mov    0x0(%rbp),%r13
   14000258c:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002591:	0f b6 7b 10          	movzbl 0x10(%rbx),%edi
   140002595:	e8 fe 4d 00 00       	call   140007398 <_Znwy>
   14000259a:	40 88 78 10          	mov    %dil,0x10(%rax)
   14000259e:	48 89 c1             	mov    %rax,%rcx
   1400025a1:	4c 89 ea             	mov    %r13,%rdx
   1400025a4:	e8 4f 4e 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400025a9:	48 8b 1b             	mov    (%rbx),%rbx
   1400025ac:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   1400025b1:	48 39 f3             	cmp    %rsi,%rbx
   1400025b4:	75 d2                	jne    140002588 <_ZN13NaturalBinarymiES_+0x168>
   1400025b6:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
   1400025bb:	48 39 df             	cmp    %rbx,%rdi
   1400025be:	74 15                	je     1400025d5 <_ZN13NaturalBinarymiES_+0x1b5>
   1400025c0:	48 89 f9             	mov    %rdi,%rcx
   1400025c3:	48 8b 3f             	mov    (%rdi),%rdi
   1400025c6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400025cb:	e8 d0 4d 00 00       	call   1400073a0 <_ZdlPvy>
   1400025d0:	48 39 f7             	cmp    %rsi,%rdi
   1400025d3:	75 eb                	jne    1400025c0 <_ZN13NaturalBinarymiES_+0x1a0>
   1400025d5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400025da:	eb 14                	jmp    1400025f0 <_ZN13NaturalBinarymiES_+0x1d0>
   1400025dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400025e0:	48 89 d9             	mov    %rbx,%rcx
   1400025e3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400025e8:	48 8b 1b             	mov    (%rbx),%rbx
   1400025eb:	e8 b0 4d 00 00       	call   1400073a0 <_ZdlPvy>
   1400025f0:	4c 39 fb             	cmp    %r15,%rbx
   1400025f3:	75 eb                	jne    1400025e0 <_ZN13NaturalBinarymiES_+0x1c0>
   1400025f5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400025fa:	4c 39 e3             	cmp    %r12,%rbx
   1400025fd:	74 16                	je     140002615 <_ZN13NaturalBinarymiES_+0x1f5>
   1400025ff:	90                   	nop
   140002600:	48 89 d9             	mov    %rbx,%rcx
   140002603:	48 8b 1b             	mov    (%rbx),%rbx
   140002606:	ba 18 00 00 00       	mov    $0x18,%edx
   14000260b:	e8 90 4d 00 00       	call   1400073a0 <_ZdlPvy>
   140002610:	4c 39 e3             	cmp    %r12,%rbx
   140002613:	75 eb                	jne    140002600 <_ZN13NaturalBinarymiES_+0x1e0>
   140002615:	0f 10 b4 24 80 00 00 	movups 0x80(%rsp),%xmm6
   14000261c:	00 
   14000261d:	48 89 e8             	mov    %rbp,%rax
   140002620:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140002627:	5b                   	pop    %rbx
   140002628:	5e                   	pop    %rsi
   140002629:	5f                   	pop    %rdi
   14000262a:	5d                   	pop    %rbp
   14000262b:	41 5c                	pop    %r12
   14000262d:	41 5d                	pop    %r13
   14000262f:	41 5e                	pop    %r14
   140002631:	41 5f                	pop    %r15
   140002633:	c3                   	ret
   140002634:	0f 1f 40 00          	nopl   0x0(%rax)
   140002638:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
   14000263d:	ba 01 00 00 00       	mov    $0x1,%edx
   140002642:	e8 39 f0 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140002647:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000264c:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140002651:	e8 42 4d 00 00       	call   140007398 <_Znwy>
   140002656:	48 89 c1             	mov    %rax,%rcx
   140002659:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   14000265e:	48 89 da             	mov    %rbx,%rdx
   140002661:	88 41 10             	mov    %al,0x10(%rcx)
   140002664:	e8 8f 4d 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002669:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   14000266e:	48 83 c0 01          	add    $0x1,%rax
   140002672:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   140002677:	e9 a4 fe ff ff       	jmp    140002520 <_ZN13NaturalBinarymiES_+0x100>
   14000267c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002680:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140002685:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   14000268c:	00 
   14000268d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002691:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   140002695:	e9 5b ff ff ff       	jmp    1400025f5 <_ZN13NaturalBinarymiES_+0x1d5>
   14000269a:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   14000269e:	48 89 c3             	mov    %rax,%rbx
   1400026a1:	48 39 cd             	cmp    %rcx,%rbp
   1400026a4:	74 62                	je     140002708 <_ZN13NaturalBinarymiES_+0x2e8>
   1400026a6:	48 8b 39             	mov    (%rcx),%rdi
   1400026a9:	ba 18 00 00 00       	mov    $0x18,%edx
   1400026ae:	e8 ed 4c 00 00       	call   1400073a0 <_ZdlPvy>
   1400026b3:	48 89 f9             	mov    %rdi,%rcx
   1400026b6:	eb e9                	jmp    1400026a1 <_ZN13NaturalBinarymiES_+0x281>
   1400026b8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400026bd:	48 89 c3             	mov    %rax,%rbx
   1400026c0:	4c 39 e1             	cmp    %r12,%rcx
   1400026c3:	74 3b                	je     140002700 <_ZN13NaturalBinarymiES_+0x2e0>
   1400026c5:	48 8b 31             	mov    (%rcx),%rsi
   1400026c8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400026cd:	e8 ce 4c 00 00       	call   1400073a0 <_ZdlPvy>
   1400026d2:	48 89 f1             	mov    %rsi,%rcx
   1400026d5:	eb e9                	jmp    1400026c0 <_ZN13NaturalBinarymiES_+0x2a0>
   1400026d7:	48 89 c3             	mov    %rax,%rbx
   1400026da:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400026df:	4c 39 f9             	cmp    %r15,%rcx
   1400026e2:	74 12                	je     1400026f6 <_ZN13NaturalBinarymiES_+0x2d6>
   1400026e4:	48 8b 31             	mov    (%rcx),%rsi
   1400026e7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400026ec:	e8 af 4c 00 00       	call   1400073a0 <_ZdlPvy>
   1400026f1:	48 89 f1             	mov    %rsi,%rcx
   1400026f4:	eb e9                	jmp    1400026df <_ZN13NaturalBinarymiES_+0x2bf>
   1400026f6:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400026fb:	4c 39 e1             	cmp    %r12,%rcx
   1400026fe:	75 24                	jne    140002724 <_ZN13NaturalBinarymiES_+0x304>
   140002700:	48 89 d9             	mov    %rbx,%rcx
   140002703:	e8 d8 5d 00 00       	call   1400084e0 <_Unwind_Resume>
   140002708:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000270d:	48 39 f1             	cmp    %rsi,%rcx
   140002710:	74 c8                	je     1400026da <_ZN13NaturalBinarymiES_+0x2ba>
   140002712:	48 8b 39             	mov    (%rcx),%rdi
   140002715:	ba 18 00 00 00       	mov    $0x18,%edx
   14000271a:	e8 81 4c 00 00       	call   1400073a0 <_ZdlPvy>
   14000271f:	48 89 f9             	mov    %rdi,%rcx
   140002722:	eb e9                	jmp    14000270d <_ZN13NaturalBinarymiES_+0x2ed>
   140002724:	48 8b 31             	mov    (%rcx),%rsi
   140002727:	ba 18 00 00 00       	mov    $0x18,%edx
   14000272c:	e8 6f 4c 00 00       	call   1400073a0 <_ZdlPvy>
   140002731:	48 89 f1             	mov    %rsi,%rcx
   140002734:	eb c5                	jmp    1400026fb <_ZN13NaturalBinarymiES_+0x2db>
   140002736:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000273d:	00 00 00 

0000000140002740 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>:
   140002740:	41 57                	push   %r15
   140002742:	41 56                	push   %r14
   140002744:	41 55                	push   %r13
   140002746:	41 54                	push   %r12
   140002748:	55                   	push   %rbp
   140002749:	57                   	push   %rdi
   14000274a:	56                   	push   %rsi
   14000274b:	53                   	push   %rbx
   14000274c:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   140002753:	0f 11 74 24 70       	movups %xmm6,0x70(%rsp)
   140002758:	48 8b 5a 08          	mov    0x8(%rdx),%rbx
   14000275c:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002760:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
   140002765:	48 89 cf             	mov    %rcx,%rdi
   140002768:	48 89 d5             	mov    %rdx,%rbp
   14000276b:	45 89 c5             	mov    %r8d,%r13d
   14000276e:	66 49 0f 6e f4       	movq   %r12,%xmm6
   140002773:	4d 89 cf             	mov    %r9,%r15
   140002776:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   14000277a:	44 38 c0             	cmp    %r8b,%al
   14000277d:	0f 83 e5 01 00 00    	jae    140002968 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x228>
   140002783:	48 83 7a 10 01       	cmpq   $0x1,0x10(%rdx)
   140002788:	0f 84 da 01 00 00    	je     140002968 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x228>
   14000278e:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   140002792:	c1 e0 08             	shl    $0x8,%eax
   140002795:	48 8d 4c 24 2e       	lea    0x2e(%rsp),%rcx
   14000279a:	4c 8d 74 24 2d       	lea    0x2d(%rsp),%r14
   14000279f:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
   1400027a4:	0f b6 52 10          	movzbl 0x10(%rdx),%edx
   1400027a8:	01 c2                	add    %eax,%edx
   1400027aa:	48 63 d2             	movslq %edx,%rdx
   1400027ad:	e8 2e ef ff ff       	call   1400016e0 <_ZN4WordC1Ey>
   1400027b2:	c6 44 24 2d 00       	movb   $0x0,0x2d(%rsp)
   1400027b7:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   1400027be:	00 00 
   1400027c0:	0f 11 74 24 30       	movups %xmm6,0x30(%rsp)
   1400027c5:	0f 1f 00             	nopl   (%rax)
   1400027c8:	0f b7 4c 24 2e       	movzwl 0x2e(%rsp),%ecx
   1400027cd:	4d 89 f0             	mov    %r14,%r8
   1400027d0:	44 89 ea             	mov    %r13d,%edx
   1400027d3:	e8 e8 ed ff ff       	call   1400015c0 <_ZN10Arithmetic3divE4Word4BytePS1_>
   1400027d8:	0f b7 d0             	movzwl %ax,%edx
   1400027db:	48 89 f1             	mov    %rsi,%rcx
   1400027de:	e8 9d ee ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400027e3:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400027e8:	e8 ab 4b 00 00       	call   140007398 <_Znwy>
   1400027ed:	48 89 c1             	mov    %rax,%rcx
   1400027f0:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   1400027f5:	4c 89 e2             	mov    %r12,%rdx
   1400027f8:	88 41 10             	mov    %al,0x10(%rcx)
   1400027fb:	e8 f8 4b 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002800:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140002804:	0f b6 54 24 2d       	movzbl 0x2d(%rsp),%edx
   140002809:	48 89 f1             	mov    %rsi,%rcx
   14000280c:	48 83 44 24 40 01    	addq   $0x1,0x40(%rsp)
   140002812:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140002816:	c1 e2 08             	shl    $0x8,%edx
   140002819:	0f b6 40 10          	movzbl 0x10(%rax),%eax
   14000281d:	01 c2                	add    %eax,%edx
   14000281f:	48 63 d2             	movslq %edx,%rdx
   140002822:	e8 b9 ee ff ff       	call   1400016e0 <_ZN4WordC1Ey>
   140002827:	0f b7 44 24 50       	movzwl 0x50(%rsp),%eax
   14000282c:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
   140002831:	48 3b 5d 00          	cmp    0x0(%rbp),%rbx
   140002835:	75 91                	jne    1400027c8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x88>
   140002837:	4d 85 ff             	test   %r15,%r15
   14000283a:	74 39                	je     140002875 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x135>
   14000283c:	0f b6 54 24 2d       	movzbl 0x2d(%rsp),%edx
   140002841:	48 89 f1             	mov    %rsi,%rcx
   140002844:	e8 e7 f6 ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140002849:	48 89 f2             	mov    %rsi,%rdx
   14000284c:	4c 89 f9             	mov    %r15,%rcx
   14000284f:	e8 fc f4 ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140002854:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   140002859:	48 39 f3             	cmp    %rsi,%rbx
   14000285c:	74 17                	je     140002875 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x135>
   14000285e:	66 90                	xchg   %ax,%ax
   140002860:	48 89 d9             	mov    %rbx,%rcx
   140002863:	48 8b 1b             	mov    (%rbx),%rbx
   140002866:	ba 18 00 00 00       	mov    $0x18,%edx
   14000286b:	e8 30 4b 00 00       	call   1400073a0 <_ZdlPvy>
   140002870:	48 39 f3             	cmp    %rsi,%rbx
   140002873:	75 eb                	jne    140002860 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x120>
   140002875:	f3 0f 6f 4c 24 30    	movdqu 0x30(%rsp),%xmm1
   14000287b:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140002880:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140002885:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   14000288a:	66 48 0f 7e c8       	movq   %xmm1,%rax
   14000288f:	0f 11 4c 24 50       	movups %xmm1,0x50(%rsp)
   140002894:	49 39 c4             	cmp    %rax,%r12
   140002897:	0f 84 0b 01 00 00    	je     1400029a8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x268>
   14000289d:	48 89 32             	mov    %rsi,(%rdx)
   1400028a0:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   1400028a5:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   1400028aa:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400028ae:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   1400028b2:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
   1400028b9:	00 00 
   1400028bb:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   1400028c2:	00 
   1400028c3:	0f 11 74 24 30       	movups %xmm6,0x30(%rsp)
   1400028c8:	0f 11 07             	movups %xmm0,(%rdi)
   1400028cb:	48 39 f3             	cmp    %rsi,%rbx
   1400028ce:	74 75                	je     140002945 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   1400028d0:	48 89 fd             	mov    %rdi,%rbp
   1400028d3:	eb 06                	jmp    1400028db <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x19b>
   1400028d5:	0f 1f 00             	nopl   (%rax)
   1400028d8:	48 8b 2f             	mov    (%rdi),%rbp
   1400028db:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400028e0:	44 0f b6 6b 10       	movzbl 0x10(%rbx),%r13d
   1400028e5:	e8 ae 4a 00 00       	call   140007398 <_Znwy>
   1400028ea:	44 88 68 10          	mov    %r13b,0x10(%rax)
   1400028ee:	48 89 c1             	mov    %rax,%rcx
   1400028f1:	48 89 ea             	mov    %rbp,%rdx
   1400028f4:	e8 ff 4a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400028f9:	48 8b 1b             	mov    (%rbx),%rbx
   1400028fc:	48 83 47 10 01       	addq   $0x1,0x10(%rdi)
   140002901:	48 39 f3             	cmp    %rsi,%rbx
   140002904:	75 d2                	jne    1400028d8 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x198>
   140002906:	48 8b 6c 24 50       	mov    0x50(%rsp),%rbp
   14000290b:	48 39 dd             	cmp    %rbx,%rbp
   14000290e:	74 16                	je     140002926 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1e6>
   140002910:	48 89 e9             	mov    %rbp,%rcx
   140002913:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140002917:	ba 18 00 00 00       	mov    $0x18,%edx
   14000291c:	e8 7f 4a 00 00       	call   1400073a0 <_ZdlPvy>
   140002921:	48 39 f5             	cmp    %rsi,%rbp
   140002924:	75 ea                	jne    140002910 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1d0>
   140002926:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
   14000292b:	4c 39 e3             	cmp    %r12,%rbx
   14000292e:	74 15                	je     140002945 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   140002930:	48 89 d9             	mov    %rbx,%rcx
   140002933:	48 8b 1b             	mov    (%rbx),%rbx
   140002936:	ba 18 00 00 00       	mov    $0x18,%edx
   14000293b:	e8 60 4a 00 00       	call   1400073a0 <_ZdlPvy>
   140002940:	4c 39 e3             	cmp    %r12,%rbx
   140002943:	75 eb                	jne    140002930 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1f0>
   140002945:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
   14000294a:	48 89 f8             	mov    %rdi,%rax
   14000294d:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
   140002954:	5b                   	pop    %rbx
   140002955:	5e                   	pop    %rsi
   140002956:	5f                   	pop    %rdi
   140002957:	5d                   	pop    %rbp
   140002958:	41 5c                	pop    %r12
   14000295a:	41 5d                	pop    %r13
   14000295c:	41 5e                	pop    %r14
   14000295e:	41 5f                	pop    %r15
   140002960:	c3                   	ret
   140002961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002968:	31 d2                	xor    %edx,%edx
   14000296a:	48 8d 4c 24 50       	lea    0x50(%rsp),%rcx
   14000296f:	e8 0c ed ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140002974:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002979:	e8 1a 4a 00 00       	call   140007398 <_Znwy>
   14000297e:	48 89 ea             	mov    %rbp,%rdx
   140002981:	48 89 c1             	mov    %rax,%rcx
   140002984:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   140002989:	88 41 10             	mov    %al,0x10(%rcx)
   14000298c:	e8 67 4a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002991:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
   140002995:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   14000299a:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   14000299e:	e9 eb fd ff ff       	jmp    14000278e <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x4e>
   1400029a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400029a8:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   1400029ad:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   1400029b4:	00 
   1400029b5:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400029b9:	0f 11 07             	movups %xmm0,(%rdi)
   1400029bc:	eb 87                	jmp    140002945 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   1400029be:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   1400029c3:	48 89 c3             	mov    %rax,%rbx
   1400029c6:	48 39 f1             	cmp    %rsi,%rcx
   1400029c9:	74 32                	je     1400029fd <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   1400029cb:	48 8b 39             	mov    (%rcx),%rdi
   1400029ce:	ba 18 00 00 00       	mov    $0x18,%edx
   1400029d3:	e8 c8 49 00 00       	call   1400073a0 <_ZdlPvy>
   1400029d8:	48 89 f9             	mov    %rdi,%rcx
   1400029db:	eb e9                	jmp    1400029c6 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x286>
   1400029dd:	48 8b 0f             	mov    (%rdi),%rcx
   1400029e0:	48 89 c3             	mov    %rax,%rbx
   1400029e3:	48 39 cf             	cmp    %rcx,%rdi
   1400029e6:	74 31                	je     140002a19 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2d9>
   1400029e8:	48 8b 29             	mov    (%rcx),%rbp
   1400029eb:	ba 18 00 00 00       	mov    $0x18,%edx
   1400029f0:	e8 ab 49 00 00       	call   1400073a0 <_ZdlPvy>
   1400029f5:	48 89 e9             	mov    %rbp,%rcx
   1400029f8:	eb e9                	jmp    1400029e3 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2a3>
   1400029fa:	48 89 c3             	mov    %rax,%rbx
   1400029fd:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140002a02:	4c 39 e1             	cmp    %r12,%rcx
   140002a05:	74 2e                	je     140002a35 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2f5>
   140002a07:	48 8b 31             	mov    (%rcx),%rsi
   140002a0a:	ba 18 00 00 00       	mov    $0x18,%edx
   140002a0f:	e8 8c 49 00 00       	call   1400073a0 <_ZdlPvy>
   140002a14:	48 89 f1             	mov    %rsi,%rcx
   140002a17:	eb e9                	jmp    140002a02 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2c2>
   140002a19:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   140002a1e:	48 39 f1             	cmp    %rsi,%rcx
   140002a21:	74 da                	je     1400029fd <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   140002a23:	48 8b 39             	mov    (%rcx),%rdi
   140002a26:	ba 18 00 00 00       	mov    $0x18,%edx
   140002a2b:	e8 70 49 00 00       	call   1400073a0 <_ZdlPvy>
   140002a30:	48 89 f9             	mov    %rdi,%rcx
   140002a33:	eb e9                	jmp    140002a1e <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2de>
   140002a35:	48 89 d9             	mov    %rbx,%rcx
   140002a38:	e8 a3 5a 00 00       	call   1400084e0 <_Unwind_Resume>
   140002a3d:	90                   	nop
   140002a3e:	66 90                	xchg   %ax,%ax

0000000140002a40 <_ZN13NaturalBinary8optimizeEv>:
   140002a40:	56                   	push   %rsi
   140002a41:	53                   	push   %rbx
   140002a42:	48 83 ec 28          	sub    $0x28,%rsp
   140002a46:	31 d2                	xor    %edx,%edx
   140002a48:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002a4c:	48 89 ce             	mov    %rcx,%rsi
   140002a4f:	48 83 f8 01          	cmp    $0x1,%rax
   140002a53:	77 37                	ja     140002a8c <_ZN13NaturalBinary8optimizeEv+0x4c>
   140002a55:	eb 3f                	jmp    140002a96 <_ZN13NaturalBinary8optimizeEv+0x56>
   140002a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002a5e:	00 00 
   140002a60:	48 83 e8 01          	sub    $0x1,%rax
   140002a64:	48 89 d9             	mov    %rbx,%rcx
   140002a67:	48 89 46 10          	mov    %rax,0x10(%rsi)
   140002a6b:	e8 80 49 00 00       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002a70:	ba 18 00 00 00       	mov    $0x18,%edx
   140002a75:	48 89 d9             	mov    %rbx,%rcx
   140002a78:	e8 23 49 00 00       	call   1400073a0 <_ZdlPvy>
   140002a7d:	48 8b 46 10          	mov    0x10(%rsi),%rax
   140002a81:	ba 01 00 00 00       	mov    $0x1,%edx
   140002a86:	48 83 f8 01          	cmp    $0x1,%rax
   140002a8a:	76 0a                	jbe    140002a96 <_ZN13NaturalBinary8optimizeEv+0x56>
   140002a8c:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
   140002a90:	80 7b 10 00          	cmpb   $0x0,0x10(%rbx)
   140002a94:	74 ca                	je     140002a60 <_ZN13NaturalBinary8optimizeEv+0x20>
   140002a96:	89 d0                	mov    %edx,%eax
   140002a98:	48 83 c4 28          	add    $0x28,%rsp
   140002a9c:	5b                   	pop    %rbx
   140002a9d:	5e                   	pop    %rsi
   140002a9e:	c3                   	ret
   140002a9f:	90                   	nop

0000000140002aa0 <_ZN13NaturalBinary4sizeEv>:
   140002aa0:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002aa4:	eb 14                	jmp    140002aba <_ZN13NaturalBinary4sizeEv+0x1a>
   140002aa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002aad:	00 00 00 
   140002ab0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
   140002ab4:	80 79 10 00          	cmpb   $0x0,0x10(%rcx)
   140002ab8:	75 05                	jne    140002abf <_ZN13NaturalBinary4sizeEv+0x1f>
   140002aba:	83 e8 01             	sub    $0x1,%eax
   140002abd:	75 f1                	jne    140002ab0 <_ZN13NaturalBinary4sizeEv+0x10>
   140002abf:	c3                   	ret

0000000140002ac0 <_ZN13NaturalBinary3msbEv>:
   140002ac0:	4c 8b 42 10          	mov    0x10(%rdx),%r8
   140002ac4:	48 89 c8             	mov    %rcx,%rax
   140002ac7:	eb 11                	jmp    140002ada <_ZN13NaturalBinary3msbEv+0x1a>
   140002ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002ad0:	48 8b 52 08          	mov    0x8(%rdx),%rdx
   140002ad4:	80 7a 10 00          	cmpb   $0x0,0x10(%rdx)
   140002ad8:	75 09                	jne    140002ae3 <_ZN13NaturalBinary3msbEv+0x23>
   140002ada:	48 89 10             	mov    %rdx,(%rax)
   140002add:	41 83 e8 01          	sub    $0x1,%r8d
   140002ae1:	75 ed                	jne    140002ad0 <_ZN13NaturalBinary3msbEv+0x10>
   140002ae3:	c3                   	ret
   140002ae4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002aeb:	00 00 00 00 
   140002aef:	90                   	nop

0000000140002af0 <_ZN13NaturalBinaryltES_>:
   140002af0:	56                   	push   %rsi
   140002af1:	53                   	push   %rbx
   140002af2:	44 8b 41 10          	mov    0x10(%rcx),%r8d
   140002af6:	48 89 cb             	mov    %rcx,%rbx
   140002af9:	48 89 d6             	mov    %rdx,%rsi
   140002afc:	49 89 ca             	mov    %rcx,%r10
   140002aff:	41 83 e8 01          	sub    $0x1,%r8d
   140002b03:	0f 84 47 01 00 00    	je     140002c50 <_ZN13NaturalBinaryltES_+0x160>
   140002b09:	48 89 c8             	mov    %rcx,%rax
   140002b0c:	44 89 c2             	mov    %r8d,%edx
   140002b0f:	eb 0c                	jmp    140002b1d <_ZN13NaturalBinaryltES_+0x2d>
   140002b11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002b18:	83 ea 01             	sub    $0x1,%edx
   140002b1b:	74 0a                	je     140002b27 <_ZN13NaturalBinaryltES_+0x37>
   140002b1d:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002b21:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002b25:	74 f1                	je     140002b18 <_ZN13NaturalBinaryltES_+0x28>
   140002b27:	44 8b 4e 10          	mov    0x10(%rsi),%r9d
   140002b2b:	49 89 f3             	mov    %rsi,%r11
   140002b2e:	41 83 e9 01          	sub    $0x1,%r9d
   140002b32:	74 33                	je     140002b67 <_ZN13NaturalBinaryltES_+0x77>
   140002b34:	44 89 c9             	mov    %r9d,%ecx
   140002b37:	48 89 f0             	mov    %rsi,%rax
   140002b3a:	eb 09                	jmp    140002b45 <_ZN13NaturalBinaryltES_+0x55>
   140002b3c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002b40:	83 e9 01             	sub    $0x1,%ecx
   140002b43:	74 1b                	je     140002b60 <_ZN13NaturalBinaryltES_+0x70>
   140002b45:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002b49:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002b4d:	74 f1                	je     140002b40 <_ZN13NaturalBinaryltES_+0x50>
   140002b4f:	b8 01 00 00 00       	mov    $0x1,%eax
   140002b54:	39 ca                	cmp    %ecx,%edx
   140002b56:	73 08                	jae    140002b60 <_ZN13NaturalBinaryltES_+0x70>
   140002b58:	5b                   	pop    %rbx
   140002b59:	5e                   	pop    %rsi
   140002b5a:	c3                   	ret
   140002b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002b60:	31 d2                	xor    %edx,%edx
   140002b62:	45 85 c0             	test   %r8d,%r8d
   140002b65:	74 25                	je     140002b8c <_ZN13NaturalBinaryltES_+0x9c>
   140002b67:	48 89 d8             	mov    %rbx,%rax
   140002b6a:	44 89 c2             	mov    %r8d,%edx
   140002b6d:	eb 0a                	jmp    140002b79 <_ZN13NaturalBinaryltES_+0x89>
   140002b6f:	90                   	nop
   140002b70:	83 ea 01             	sub    $0x1,%edx
   140002b73:	0f 84 af 00 00 00    	je     140002c28 <_ZN13NaturalBinaryltES_+0x138>
   140002b79:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002b7d:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002b81:	74 ed                	je     140002b70 <_ZN13NaturalBinaryltES_+0x80>
   140002b83:	45 85 c9             	test   %r9d,%r9d
   140002b86:	0f 84 df 00 00 00    	je     140002c6b <_ZN13NaturalBinaryltES_+0x17b>
   140002b8c:	48 89 f0             	mov    %rsi,%rax
   140002b8f:	44 89 c9             	mov    %r9d,%ecx
   140002b92:	eb 09                	jmp    140002b9d <_ZN13NaturalBinaryltES_+0xad>
   140002b94:	0f 1f 40 00          	nopl   0x0(%rax)
   140002b98:	83 e9 01             	sub    $0x1,%ecx
   140002b9b:	74 0a                	je     140002ba7 <_ZN13NaturalBinaryltES_+0xb7>
   140002b9d:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002ba1:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002ba5:	74 f1                	je     140002b98 <_ZN13NaturalBinaryltES_+0xa8>
   140002ba7:	31 c0                	xor    %eax,%eax
   140002ba9:	39 d1                	cmp    %edx,%ecx
   140002bab:	72 ab                	jb     140002b58 <_ZN13NaturalBinaryltES_+0x68>
   140002bad:	45 85 c0             	test   %r8d,%r8d
   140002bb0:	75 14                	jne    140002bc6 <_ZN13NaturalBinaryltES_+0xd6>
   140002bb2:	e9 c3 00 00 00       	jmp    140002c7a <_ZN13NaturalBinaryltES_+0x18a>
   140002bb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002bbe:	00 00 
   140002bc0:	41 83 e8 01          	sub    $0x1,%r8d
   140002bc4:	74 72                	je     140002c38 <_ZN13NaturalBinaryltES_+0x148>
   140002bc6:	4c 89 d0             	mov    %r10,%rax
   140002bc9:	4d 8b 52 08          	mov    0x8(%r10),%r10
   140002bcd:	41 80 7a 10 00       	cmpb   $0x0,0x10(%r10)
   140002bd2:	74 ec                	je     140002bc0 <_ZN13NaturalBinaryltES_+0xd0>
   140002bd4:	48 89 f2             	mov    %rsi,%rdx
   140002bd7:	45 85 c9             	test   %r9d,%r9d
   140002bda:	75 0a                	jne    140002be6 <_ZN13NaturalBinaryltES_+0xf6>
   140002bdc:	eb 16                	jmp    140002bf4 <_ZN13NaturalBinaryltES_+0x104>
   140002bde:	66 90                	xchg   %ax,%ax
   140002be0:	41 83 e9 01          	sub    $0x1,%r9d
   140002be4:	74 5a                	je     140002c40 <_ZN13NaturalBinaryltES_+0x150>
   140002be6:	4c 89 da             	mov    %r11,%rdx
   140002be9:	4d 8b 5b 08          	mov    0x8(%r11),%r11
   140002bed:	41 80 7b 10 00       	cmpb   $0x0,0x10(%r11)
   140002bf2:	74 ec                	je     140002be0 <_ZN13NaturalBinaryltES_+0xf0>
   140002bf4:	4c 8b 0b             	mov    (%rbx),%r9
   140002bf7:	eb 22                	jmp    140002c1b <_ZN13NaturalBinaryltES_+0x12b>
   140002bf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002c00:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002c04:	48 8b 52 08          	mov    0x8(%rdx),%rdx
   140002c08:	0f b6 48 10          	movzbl 0x10(%rax),%ecx
   140002c0c:	44 0f b6 42 10       	movzbl 0x10(%rdx),%r8d
   140002c11:	44 38 c1             	cmp    %r8b,%cl
   140002c14:	72 32                	jb     140002c48 <_ZN13NaturalBinaryltES_+0x158>
   140002c16:	41 38 c8             	cmp    %cl,%r8b
   140002c19:	72 05                	jb     140002c20 <_ZN13NaturalBinaryltES_+0x130>
   140002c1b:	4c 39 c8             	cmp    %r9,%rax
   140002c1e:	75 e0                	jne    140002c00 <_ZN13NaturalBinaryltES_+0x110>
   140002c20:	31 c0                	xor    %eax,%eax
   140002c22:	5b                   	pop    %rbx
   140002c23:	5e                   	pop    %rsi
   140002c24:	c3                   	ret
   140002c25:	0f 1f 00             	nopl   (%rax)
   140002c28:	45 85 c9             	test   %r9d,%r9d
   140002c2b:	0f 85 5b ff ff ff    	jne    140002b8c <_ZN13NaturalBinaryltES_+0x9c>
   140002c31:	eb 93                	jmp    140002bc6 <_ZN13NaturalBinaryltES_+0xd6>
   140002c33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002c38:	4c 89 d0             	mov    %r10,%rax
   140002c3b:	eb 97                	jmp    140002bd4 <_ZN13NaturalBinaryltES_+0xe4>
   140002c3d:	0f 1f 00             	nopl   (%rax)
   140002c40:	4c 89 da             	mov    %r11,%rdx
   140002c43:	eb af                	jmp    140002bf4 <_ZN13NaturalBinaryltES_+0x104>
   140002c45:	0f 1f 00             	nopl   (%rax)
   140002c48:	b8 01 00 00 00       	mov    $0x1,%eax
   140002c4d:	5b                   	pop    %rbx
   140002c4e:	5e                   	pop    %rsi
   140002c4f:	c3                   	ret
   140002c50:	44 8b 4e 10          	mov    0x10(%rsi),%r9d
   140002c54:	49 89 d3             	mov    %rdx,%r11
   140002c57:	31 d2                	xor    %edx,%edx
   140002c59:	41 83 e9 01          	sub    $0x1,%r9d
   140002c5d:	0f 85 d1 fe ff ff    	jne    140002b34 <_ZN13NaturalBinaryltES_+0x44>
   140002c63:	48 89 c8             	mov    %rcx,%rax
   140002c66:	48 89 f2             	mov    %rsi,%rdx
   140002c69:	eb 89                	jmp    140002bf4 <_ZN13NaturalBinaryltES_+0x104>
   140002c6b:	31 c0                	xor    %eax,%eax
   140002c6d:	85 d2                	test   %edx,%edx
   140002c6f:	0f 85 e3 fe ff ff    	jne    140002b58 <_ZN13NaturalBinaryltES_+0x68>
   140002c75:	e9 4c ff ff ff       	jmp    140002bc6 <_ZN13NaturalBinaryltES_+0xd6>
   140002c7a:	48 89 d8             	mov    %rbx,%rax
   140002c7d:	e9 64 ff ff ff       	jmp    140002be6 <_ZN13NaturalBinaryltES_+0xf6>
   140002c82:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002c89:	00 00 00 00 
   140002c8d:	0f 1f 00             	nopl   (%rax)

0000000140002c90 <_ZN13NaturalBinarygtES_>:
   140002c90:	56                   	push   %rsi
   140002c91:	53                   	push   %rbx
   140002c92:	48 8b 42 10          	mov    0x10(%rdx),%rax
   140002c96:	44 8b 49 10          	mov    0x10(%rcx),%r9d
   140002c9a:	8d 58 ff             	lea    -0x1(%rax),%ebx
   140002c9d:	49 89 cb             	mov    %rcx,%r11
   140002ca0:	49 89 d0             	mov    %rdx,%r8
   140002ca3:	48 89 ce             	mov    %rcx,%rsi
   140002ca6:	49 89 d2             	mov    %rdx,%r10
   140002ca9:	41 83 e9 01          	sub    $0x1,%r9d
   140002cad:	0f 84 4d 01 00 00    	je     140002e00 <_ZN13NaturalBinarygtES_+0x170>
   140002cb3:	48 89 c8             	mov    %rcx,%rax
   140002cb6:	44 89 ca             	mov    %r9d,%edx
   140002cb9:	eb 0e                	jmp    140002cc9 <_ZN13NaturalBinarygtES_+0x39>
   140002cbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002cc0:	83 ea 01             	sub    $0x1,%edx
   140002cc3:	0f 84 97 00 00 00    	je     140002d60 <_ZN13NaturalBinarygtES_+0xd0>
   140002cc9:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002ccd:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002cd1:	74 ed                	je     140002cc0 <_ZN13NaturalBinarygtES_+0x30>
   140002cd3:	85 db                	test   %ebx,%ebx
   140002cd5:	0f 84 1d 01 00 00    	je     140002df8 <_ZN13NaturalBinarygtES_+0x168>
   140002cdb:	89 d9                	mov    %ebx,%ecx
   140002cdd:	4c 89 c0             	mov    %r8,%rax
   140002ce0:	eb 0b                	jmp    140002ced <_ZN13NaturalBinarygtES_+0x5d>
   140002ce2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002ce8:	83 e9 01             	sub    $0x1,%ecx
   140002ceb:	74 0a                	je     140002cf7 <_ZN13NaturalBinarygtES_+0x67>
   140002ced:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002cf1:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002cf5:	74 f1                	je     140002ce8 <_ZN13NaturalBinarygtES_+0x58>
   140002cf7:	b8 01 00 00 00       	mov    $0x1,%eax
   140002cfc:	39 d1                	cmp    %edx,%ecx
   140002cfe:	72 55                	jb     140002d55 <_ZN13NaturalBinarygtES_+0xc5>
   140002d00:	45 85 c9             	test   %r9d,%r9d
   140002d03:	0f 84 17 01 00 00    	je     140002e20 <_ZN13NaturalBinarygtES_+0x190>
   140002d09:	4c 89 d8             	mov    %r11,%rax
   140002d0c:	44 89 ca             	mov    %r9d,%edx
   140002d0f:	eb 0c                	jmp    140002d1d <_ZN13NaturalBinarygtES_+0x8d>
   140002d11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002d18:	83 ea 01             	sub    $0x1,%edx
   140002d1b:	74 0a                	je     140002d27 <_ZN13NaturalBinarygtES_+0x97>
   140002d1d:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002d21:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002d25:	74 f1                	je     140002d18 <_ZN13NaturalBinarygtES_+0x88>
   140002d27:	85 db                	test   %ebx,%ebx
   140002d29:	0f 84 e4 00 00 00    	je     140002e13 <_ZN13NaturalBinarygtES_+0x183>
   140002d2f:	4c 89 c0             	mov    %r8,%rax
   140002d32:	89 d9                	mov    %ebx,%ecx
   140002d34:	eb 0f                	jmp    140002d45 <_ZN13NaturalBinarygtES_+0xb5>
   140002d36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002d3d:	00 00 00 
   140002d40:	83 e9 01             	sub    $0x1,%ecx
   140002d43:	74 2b                	je     140002d70 <_ZN13NaturalBinarygtES_+0xe0>
   140002d45:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002d49:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002d4d:	74 f1                	je     140002d40 <_ZN13NaturalBinarygtES_+0xb0>
   140002d4f:	31 c0                	xor    %eax,%eax
   140002d51:	39 ca                	cmp    %ecx,%edx
   140002d53:	73 1b                	jae    140002d70 <_ZN13NaturalBinarygtES_+0xe0>
   140002d55:	5b                   	pop    %rbx
   140002d56:	5e                   	pop    %rsi
   140002d57:	c3                   	ret
   140002d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002d5f:	00 
   140002d60:	85 db                	test   %ebx,%ebx
   140002d62:	0f 85 73 ff ff ff    	jne    140002cdb <_ZN13NaturalBinarygtES_+0x4b>
   140002d68:	eb 9f                	jmp    140002d09 <_ZN13NaturalBinarygtES_+0x79>
   140002d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002d70:	45 85 c9             	test   %r9d,%r9d
   140002d73:	75 11                	jne    140002d86 <_ZN13NaturalBinarygtES_+0xf6>
   140002d75:	e9 b6 00 00 00       	jmp    140002e30 <_ZN13NaturalBinarygtES_+0x1a0>
   140002d7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002d80:	41 83 e9 01          	sub    $0x1,%r9d
   140002d84:	74 6a                	je     140002df0 <_ZN13NaturalBinarygtES_+0x160>
   140002d86:	48 89 f0             	mov    %rsi,%rax
   140002d89:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   140002d8d:	80 7e 10 00          	cmpb   $0x0,0x10(%rsi)
   140002d91:	74 ed                	je     140002d80 <_ZN13NaturalBinarygtES_+0xf0>
   140002d93:	4c 89 c2             	mov    %r8,%rdx
   140002d96:	85 db                	test   %ebx,%ebx
   140002d98:	75 0b                	jne    140002da5 <_ZN13NaturalBinarygtES_+0x115>
   140002d9a:	eb 17                	jmp    140002db3 <_ZN13NaturalBinarygtES_+0x123>
   140002d9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002da0:	83 eb 01             	sub    $0x1,%ebx
   140002da3:	74 43                	je     140002de8 <_ZN13NaturalBinarygtES_+0x158>
   140002da5:	4c 89 d2             	mov    %r10,%rdx
   140002da8:	4d 8b 52 08          	mov    0x8(%r10),%r10
   140002dac:	41 80 7a 10 00       	cmpb   $0x0,0x10(%r10)
   140002db1:	74 ed                	je     140002da0 <_ZN13NaturalBinarygtES_+0x110>
   140002db3:	4d 8b 0b             	mov    (%r11),%r9
   140002db6:	eb 23                	jmp    140002ddb <_ZN13NaturalBinarygtES_+0x14b>
   140002db8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002dbf:	00 
   140002dc0:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002dc4:	48 8b 52 08          	mov    0x8(%rdx),%rdx
   140002dc8:	44 0f b6 40 10       	movzbl 0x10(%rax),%r8d
   140002dcd:	0f b6 4a 10          	movzbl 0x10(%rdx),%ecx
   140002dd1:	44 38 c1             	cmp    %r8b,%cl
   140002dd4:	72 22                	jb     140002df8 <_ZN13NaturalBinarygtES_+0x168>
   140002dd6:	41 38 c8             	cmp    %cl,%r8b
   140002dd9:	72 05                	jb     140002de0 <_ZN13NaturalBinarygtES_+0x150>
   140002ddb:	4c 39 c8             	cmp    %r9,%rax
   140002dde:	75 e0                	jne    140002dc0 <_ZN13NaturalBinarygtES_+0x130>
   140002de0:	31 c0                	xor    %eax,%eax
   140002de2:	5b                   	pop    %rbx
   140002de3:	5e                   	pop    %rsi
   140002de4:	c3                   	ret
   140002de5:	0f 1f 00             	nopl   (%rax)
   140002de8:	4c 89 d2             	mov    %r10,%rdx
   140002deb:	eb c6                	jmp    140002db3 <_ZN13NaturalBinarygtES_+0x123>
   140002ded:	0f 1f 00             	nopl   (%rax)
   140002df0:	48 89 f0             	mov    %rsi,%rax
   140002df3:	eb 9e                	jmp    140002d93 <_ZN13NaturalBinarygtES_+0x103>
   140002df5:	0f 1f 00             	nopl   (%rax)
   140002df8:	b8 01 00 00 00       	mov    $0x1,%eax
   140002dfd:	5b                   	pop    %rbx
   140002dfe:	5e                   	pop    %rsi
   140002dff:	c3                   	ret
   140002e00:	31 d2                	xor    %edx,%edx
   140002e02:	83 f8 01             	cmp    $0x1,%eax
   140002e05:	0f 85 d0 fe ff ff    	jne    140002cdb <_ZN13NaturalBinarygtES_+0x4b>
   140002e0b:	4c 89 c2             	mov    %r8,%rdx
   140002e0e:	4c 89 d8             	mov    %r11,%rax
   140002e11:	eb a0                	jmp    140002db3 <_ZN13NaturalBinarygtES_+0x123>
   140002e13:	45 85 c9             	test   %r9d,%r9d
   140002e16:	0f 85 6a ff ff ff    	jne    140002d86 <_ZN13NaturalBinarygtES_+0xf6>
   140002e1c:	eb ed                	jmp    140002e0b <_ZN13NaturalBinarygtES_+0x17b>
   140002e1e:	66 90                	xchg   %ax,%ax
   140002e20:	31 d2                	xor    %edx,%edx
   140002e22:	85 db                	test   %ebx,%ebx
   140002e24:	0f 85 05 ff ff ff    	jne    140002d2f <_ZN13NaturalBinarygtES_+0x9f>
   140002e2a:	eb df                	jmp    140002e0b <_ZN13NaturalBinarygtES_+0x17b>
   140002e2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002e30:	4c 89 d8             	mov    %r11,%rax
   140002e33:	e9 6d ff ff ff       	jmp    140002da5 <_ZN13NaturalBinarygtES_+0x115>
   140002e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e3f:	00 

0000000140002e40 <_ZN13NaturalBinaryeqES_>:
   140002e40:	56                   	push   %rsi
   140002e41:	53                   	push   %rbx
   140002e42:	48 8b 42 10          	mov    0x10(%rdx),%rax
   140002e46:	44 8b 59 10          	mov    0x10(%rcx),%r11d
   140002e4a:	8d 58 ff             	lea    -0x1(%rax),%ebx
   140002e4d:	48 89 ce             	mov    %rcx,%rsi
   140002e50:	49 89 ca             	mov    %rcx,%r10
   140002e53:	49 89 d1             	mov    %rdx,%r9
   140002e56:	41 83 eb 01          	sub    $0x1,%r11d
   140002e5a:	0f 84 e5 00 00 00    	je     140002f45 <_ZN13NaturalBinaryeqES_+0x105>
   140002e60:	48 89 c8             	mov    %rcx,%rax
   140002e63:	44 89 d9             	mov    %r11d,%ecx
   140002e66:	eb 11                	jmp    140002e79 <_ZN13NaturalBinaryeqES_+0x39>
   140002e68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e6f:	00 
   140002e70:	83 e9 01             	sub    $0x1,%ecx
   140002e73:	0f 84 a7 00 00 00    	je     140002f20 <_ZN13NaturalBinaryeqES_+0xe0>
   140002e79:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002e7d:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002e81:	74 ed                	je     140002e70 <_ZN13NaturalBinaryeqES_+0x30>
   140002e83:	85 db                	test   %ebx,%ebx
   140002e85:	0f 84 a5 00 00 00    	je     140002f30 <_ZN13NaturalBinaryeqES_+0xf0>
   140002e8b:	48 89 d0             	mov    %rdx,%rax
   140002e8e:	41 89 d8             	mov    %ebx,%r8d
   140002e91:	eb 0b                	jmp    140002e9e <_ZN13NaturalBinaryeqES_+0x5e>
   140002e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002e98:	41 83 e8 01          	sub    $0x1,%r8d
   140002e9c:	74 0a                	je     140002ea8 <_ZN13NaturalBinaryeqES_+0x68>
   140002e9e:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002ea2:	80 78 10 00          	cmpb   $0x0,0x10(%rax)
   140002ea6:	74 f0                	je     140002e98 <_ZN13NaturalBinaryeqES_+0x58>
   140002ea8:	31 c0                	xor    %eax,%eax
   140002eaa:	41 39 c8             	cmp    %ecx,%r8d
   140002ead:	75 6d                	jne    140002f1c <_ZN13NaturalBinaryeqES_+0xdc>
   140002eaf:	45 85 db             	test   %r11d,%r11d
   140002eb2:	75 12                	jne    140002ec6 <_ZN13NaturalBinaryeqES_+0x86>
   140002eb4:	e9 9f 00 00 00       	jmp    140002f58 <_ZN13NaturalBinaryeqES_+0x118>
   140002eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002ec0:	41 83 eb 01          	sub    $0x1,%r11d
   140002ec4:	74 72                	je     140002f38 <_ZN13NaturalBinaryeqES_+0xf8>
   140002ec6:	4c 89 d1             	mov    %r10,%rcx
   140002ec9:	4d 8b 52 08          	mov    0x8(%r10),%r10
   140002ecd:	41 80 7a 10 00       	cmpb   $0x0,0x10(%r10)
   140002ed2:	74 ec                	je     140002ec0 <_ZN13NaturalBinaryeqES_+0x80>
   140002ed4:	48 89 d0             	mov    %rdx,%rax
   140002ed7:	85 db                	test   %ebx,%ebx
   140002ed9:	75 0a                	jne    140002ee5 <_ZN13NaturalBinaryeqES_+0xa5>
   140002edb:	eb 16                	jmp    140002ef3 <_ZN13NaturalBinaryeqES_+0xb3>
   140002edd:	0f 1f 00             	nopl   (%rax)
   140002ee0:	83 eb 01             	sub    $0x1,%ebx
   140002ee3:	74 5b                	je     140002f40 <_ZN13NaturalBinaryeqES_+0x100>
   140002ee5:	4c 89 c8             	mov    %r9,%rax
   140002ee8:	4d 8b 49 08          	mov    0x8(%r9),%r9
   140002eec:	41 80 79 10 00       	cmpb   $0x0,0x10(%r9)
   140002ef1:	74 ed                	je     140002ee0 <_ZN13NaturalBinaryeqES_+0xa0>
   140002ef3:	48 8b 16             	mov    (%rsi),%rdx
   140002ef6:	eb 1a                	jmp    140002f12 <_ZN13NaturalBinaryeqES_+0xd2>
   140002ef8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002eff:	00 
   140002f00:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002f04:	48 8b 49 08          	mov    0x8(%rcx),%rcx
   140002f08:	0f b6 70 10          	movzbl 0x10(%rax),%esi
   140002f0c:	40 38 71 10          	cmp    %sil,0x10(%rcx)
   140002f10:	75 1e                	jne    140002f30 <_ZN13NaturalBinaryeqES_+0xf0>
   140002f12:	48 39 d1             	cmp    %rdx,%rcx
   140002f15:	75 e9                	jne    140002f00 <_ZN13NaturalBinaryeqES_+0xc0>
   140002f17:	b8 01 00 00 00       	mov    $0x1,%eax
   140002f1c:	5b                   	pop    %rbx
   140002f1d:	5e                   	pop    %rsi
   140002f1e:	c3                   	ret
   140002f1f:	90                   	nop
   140002f20:	85 db                	test   %ebx,%ebx
   140002f22:	0f 85 63 ff ff ff    	jne    140002e8b <_ZN13NaturalBinaryeqES_+0x4b>
   140002f28:	eb 9c                	jmp    140002ec6 <_ZN13NaturalBinaryeqES_+0x86>
   140002f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002f30:	31 c0                	xor    %eax,%eax
   140002f32:	5b                   	pop    %rbx
   140002f33:	5e                   	pop    %rsi
   140002f34:	c3                   	ret
   140002f35:	0f 1f 00             	nopl   (%rax)
   140002f38:	4c 89 d1             	mov    %r10,%rcx
   140002f3b:	eb 97                	jmp    140002ed4 <_ZN13NaturalBinaryeqES_+0x94>
   140002f3d:	0f 1f 00             	nopl   (%rax)
   140002f40:	4c 89 c8             	mov    %r9,%rax
   140002f43:	eb ae                	jmp    140002ef3 <_ZN13NaturalBinaryeqES_+0xb3>
   140002f45:	31 c9                	xor    %ecx,%ecx
   140002f47:	83 f8 01             	cmp    $0x1,%eax
   140002f4a:	0f 85 3b ff ff ff    	jne    140002e8b <_ZN13NaturalBinaryeqES_+0x4b>
   140002f50:	48 89 f1             	mov    %rsi,%rcx
   140002f53:	48 89 d0             	mov    %rdx,%rax
   140002f56:	eb 9b                	jmp    140002ef3 <_ZN13NaturalBinaryeqES_+0xb3>
   140002f58:	48 89 f1             	mov    %rsi,%rcx
   140002f5b:	e9 74 ff ff ff       	jmp    140002ed4 <_ZN13NaturalBinaryeqES_+0x94>

0000000140002f60 <_ZN13NaturalBinaryleES_>:
   140002f60:	41 55                	push   %r13
   140002f62:	41 54                	push   %r12
   140002f64:	55                   	push   %rbp
   140002f65:	57                   	push   %rdi
   140002f66:	56                   	push   %rsi
   140002f67:	53                   	push   %rbx
   140002f68:	48 83 ec 68          	sub    $0x68,%rsp
   140002f6c:	48 8b 1a             	mov    (%rdx),%rbx
   140002f6f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140002f74:	48 89 cd             	mov    %rcx,%rbp
   140002f77:	48 89 d7             	mov    %rdx,%rdi
   140002f7a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140002f81:	00 00 
   140002f83:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140002f88:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140002f8c:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140002f91:	48 39 da             	cmp    %rbx,%rdx
   140002f94:	74 34                	je     140002fca <_ZN13NaturalBinaryleES_+0x6a>
   140002f96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002f9d:	00 00 00 
   140002fa0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140002fa5:	e8 ee 43 00 00       	call   140007398 <_Znwy>
   140002faa:	48 89 c1             	mov    %rax,%rcx
   140002fad:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002fb1:	48 89 f2             	mov    %rsi,%rdx
   140002fb4:	88 41 10             	mov    %al,0x10(%rcx)
   140002fb7:	e8 3c 44 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140002fbc:	48 8b 1b             	mov    (%rbx),%rbx
   140002fbf:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140002fc5:	48 39 df             	cmp    %rbx,%rdi
   140002fc8:	75 d6                	jne    140002fa0 <_ZN13NaturalBinaryleES_+0x40>
   140002fca:	48 89 f2             	mov    %rsi,%rdx
   140002fcd:	48 89 e9             	mov    %rbp,%rcx
   140002fd0:	e8 6b fe ff ff       	call   140002e40 <_ZN13NaturalBinaryeqES_>
   140002fd5:	41 89 c5             	mov    %eax,%r13d
   140002fd8:	84 c0                	test   %al,%al
   140002fda:	74 3c                	je     140003018 <_ZN13NaturalBinaryleES_+0xb8>
   140002fdc:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140002fe1:	48 39 f3             	cmp    %rsi,%rbx
   140002fe4:	74 1f                	je     140003005 <_ZN13NaturalBinaryleES_+0xa5>
   140002fe6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002fed:	00 00 00 
   140002ff0:	48 89 d9             	mov    %rbx,%rcx
   140002ff3:	48 8b 1b             	mov    (%rbx),%rbx
   140002ff6:	ba 18 00 00 00       	mov    $0x18,%edx
   140002ffb:	e8 a0 43 00 00       	call   1400073a0 <_ZdlPvy>
   140003000:	48 39 f3             	cmp    %rsi,%rbx
   140003003:	75 eb                	jne    140002ff0 <_ZN13NaturalBinaryleES_+0x90>
   140003005:	44 89 e8             	mov    %r13d,%eax
   140003008:	48 83 c4 68          	add    $0x68,%rsp
   14000300c:	5b                   	pop    %rbx
   14000300d:	5e                   	pop    %rsi
   14000300e:	5f                   	pop    %rdi
   14000300f:	5d                   	pop    %rbp
   140003010:	41 5c                	pop    %r12
   140003012:	41 5d                	pop    %r13
   140003014:	c3                   	ret
   140003015:	0f 1f 00             	nopl   (%rax)
   140003018:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   14000301d:	48 8b 1f             	mov    (%rdi),%rbx
   140003020:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140003027:	00 00 
   140003029:	66 49 0f 6e c4       	movq   %r12,%xmm0
   14000302e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003032:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140003037:	48 39 df             	cmp    %rbx,%rdi
   14000303a:	74 6e                	je     1400030aa <_ZN13NaturalBinaryleES_+0x14a>
   14000303c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003040:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003045:	e8 4e 43 00 00       	call   140007398 <_Znwy>
   14000304a:	48 89 c1             	mov    %rax,%rcx
   14000304d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003051:	4c 89 e2             	mov    %r12,%rdx
   140003054:	88 41 10             	mov    %al,0x10(%rcx)
   140003057:	e8 9c 43 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000305c:	48 8b 1b             	mov    (%rbx),%rbx
   14000305f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140003065:	48 39 df             	cmp    %rbx,%rdi
   140003068:	75 d6                	jne    140003040 <_ZN13NaturalBinaryleES_+0xe0>
   14000306a:	4c 89 e2             	mov    %r12,%rdx
   14000306d:	48 89 e9             	mov    %rbp,%rcx
   140003070:	e8 7b fa ff ff       	call   140002af0 <_ZN13NaturalBinaryltES_>
   140003075:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   14000307a:	41 89 c5             	mov    %eax,%r13d
   14000307d:	4c 39 e3             	cmp    %r12,%rbx
   140003080:	0f 84 56 ff ff ff    	je     140002fdc <_ZN13NaturalBinaryleES_+0x7c>
   140003086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000308d:	00 00 00 
   140003090:	48 89 d9             	mov    %rbx,%rcx
   140003093:	48 8b 1b             	mov    (%rbx),%rbx
   140003096:	ba 18 00 00 00       	mov    $0x18,%edx
   14000309b:	e8 00 43 00 00       	call   1400073a0 <_ZdlPvy>
   1400030a0:	4c 39 e3             	cmp    %r12,%rbx
   1400030a3:	75 eb                	jne    140003090 <_ZN13NaturalBinaryleES_+0x130>
   1400030a5:	e9 32 ff ff ff       	jmp    140002fdc <_ZN13NaturalBinaryleES_+0x7c>
   1400030aa:	4c 89 e2             	mov    %r12,%rdx
   1400030ad:	48 89 e9             	mov    %rbp,%rcx
   1400030b0:	e8 3b fa ff ff       	call   140002af0 <_ZN13NaturalBinaryltES_>
   1400030b5:	41 89 c5             	mov    %eax,%r13d
   1400030b8:	e9 1f ff ff ff       	jmp    140002fdc <_ZN13NaturalBinaryleES_+0x7c>
   1400030bd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400030c2:	48 89 c3             	mov    %rax,%rbx
   1400030c5:	48 39 f1             	cmp    %rsi,%rcx
   1400030c8:	74 3b                	je     140003105 <_ZN13NaturalBinaryleES_+0x1a5>
   1400030ca:	48 8b 39             	mov    (%rcx),%rdi
   1400030cd:	ba 18 00 00 00       	mov    $0x18,%edx
   1400030d2:	e8 c9 42 00 00       	call   1400073a0 <_ZdlPvy>
   1400030d7:	48 89 f9             	mov    %rdi,%rcx
   1400030da:	eb e9                	jmp    1400030c5 <_ZN13NaturalBinaryleES_+0x165>
   1400030dc:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400030e1:	48 89 c3             	mov    %rax,%rbx
   1400030e4:	4c 39 e1             	cmp    %r12,%rcx
   1400030e7:	74 12                	je     1400030fb <_ZN13NaturalBinaryleES_+0x19b>
   1400030e9:	48 8b 39             	mov    (%rcx),%rdi
   1400030ec:	ba 18 00 00 00       	mov    $0x18,%edx
   1400030f1:	e8 aa 42 00 00       	call   1400073a0 <_ZdlPvy>
   1400030f6:	48 89 f9             	mov    %rdi,%rcx
   1400030f9:	eb e9                	jmp    1400030e4 <_ZN13NaturalBinaryleES_+0x184>
   1400030fb:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140003100:	48 39 f1             	cmp    %rsi,%rcx
   140003103:	75 08                	jne    14000310d <_ZN13NaturalBinaryleES_+0x1ad>
   140003105:	48 89 d9             	mov    %rbx,%rcx
   140003108:	e8 d3 53 00 00       	call   1400084e0 <_Unwind_Resume>
   14000310d:	48 8b 39             	mov    (%rcx),%rdi
   140003110:	ba 18 00 00 00       	mov    $0x18,%edx
   140003115:	e8 86 42 00 00       	call   1400073a0 <_ZdlPvy>
   14000311a:	48 89 f9             	mov    %rdi,%rcx
   14000311d:	eb e1                	jmp    140003100 <_ZN13NaturalBinaryleES_+0x1a0>
   14000311f:	90                   	nop

0000000140003120 <_ZN13NaturalBinarygeES_>:
   140003120:	41 55                	push   %r13
   140003122:	41 54                	push   %r12
   140003124:	55                   	push   %rbp
   140003125:	57                   	push   %rdi
   140003126:	56                   	push   %rsi
   140003127:	53                   	push   %rbx
   140003128:	48 83 ec 68          	sub    $0x68,%rsp
   14000312c:	48 8b 1a             	mov    (%rdx),%rbx
   14000312f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140003134:	48 89 cd             	mov    %rcx,%rbp
   140003137:	48 89 d7             	mov    %rdx,%rdi
   14000313a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140003141:	00 00 
   140003143:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140003148:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000314c:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140003151:	48 39 da             	cmp    %rbx,%rdx
   140003154:	74 34                	je     14000318a <_ZN13NaturalBinarygeES_+0x6a>
   140003156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000315d:	00 00 00 
   140003160:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003165:	e8 2e 42 00 00       	call   140007398 <_Znwy>
   14000316a:	48 89 c1             	mov    %rax,%rcx
   14000316d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003171:	48 89 f2             	mov    %rsi,%rdx
   140003174:	88 41 10             	mov    %al,0x10(%rcx)
   140003177:	e8 7c 42 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000317c:	48 8b 1b             	mov    (%rbx),%rbx
   14000317f:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140003185:	48 39 df             	cmp    %rbx,%rdi
   140003188:	75 d6                	jne    140003160 <_ZN13NaturalBinarygeES_+0x40>
   14000318a:	48 89 f2             	mov    %rsi,%rdx
   14000318d:	48 89 e9             	mov    %rbp,%rcx
   140003190:	e8 ab fc ff ff       	call   140002e40 <_ZN13NaturalBinaryeqES_>
   140003195:	41 89 c5             	mov    %eax,%r13d
   140003198:	84 c0                	test   %al,%al
   14000319a:	74 3c                	je     1400031d8 <_ZN13NaturalBinarygeES_+0xb8>
   14000319c:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400031a1:	48 39 f3             	cmp    %rsi,%rbx
   1400031a4:	74 1f                	je     1400031c5 <_ZN13NaturalBinarygeES_+0xa5>
   1400031a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400031ad:	00 00 00 
   1400031b0:	48 89 d9             	mov    %rbx,%rcx
   1400031b3:	48 8b 1b             	mov    (%rbx),%rbx
   1400031b6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400031bb:	e8 e0 41 00 00       	call   1400073a0 <_ZdlPvy>
   1400031c0:	48 39 f3             	cmp    %rsi,%rbx
   1400031c3:	75 eb                	jne    1400031b0 <_ZN13NaturalBinarygeES_+0x90>
   1400031c5:	44 89 e8             	mov    %r13d,%eax
   1400031c8:	48 83 c4 68          	add    $0x68,%rsp
   1400031cc:	5b                   	pop    %rbx
   1400031cd:	5e                   	pop    %rsi
   1400031ce:	5f                   	pop    %rdi
   1400031cf:	5d                   	pop    %rbp
   1400031d0:	41 5c                	pop    %r12
   1400031d2:	41 5d                	pop    %r13
   1400031d4:	c3                   	ret
   1400031d5:	0f 1f 00             	nopl   (%rax)
   1400031d8:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   1400031dd:	48 8b 1f             	mov    (%rdi),%rbx
   1400031e0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400031e7:	00 00 
   1400031e9:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400031ee:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400031f2:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   1400031f7:	48 39 df             	cmp    %rbx,%rdi
   1400031fa:	74 6e                	je     14000326a <_ZN13NaturalBinarygeES_+0x14a>
   1400031fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140003200:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003205:	e8 8e 41 00 00       	call   140007398 <_Znwy>
   14000320a:	48 89 c1             	mov    %rax,%rcx
   14000320d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003211:	4c 89 e2             	mov    %r12,%rdx
   140003214:	88 41 10             	mov    %al,0x10(%rcx)
   140003217:	e8 dc 41 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000321c:	48 8b 1b             	mov    (%rbx),%rbx
   14000321f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140003225:	48 39 df             	cmp    %rbx,%rdi
   140003228:	75 d6                	jne    140003200 <_ZN13NaturalBinarygeES_+0xe0>
   14000322a:	4c 89 e2             	mov    %r12,%rdx
   14000322d:	48 89 e9             	mov    %rbp,%rcx
   140003230:	e8 5b fa ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   140003235:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   14000323a:	41 89 c5             	mov    %eax,%r13d
   14000323d:	4c 39 e3             	cmp    %r12,%rbx
   140003240:	0f 84 56 ff ff ff    	je     14000319c <_ZN13NaturalBinarygeES_+0x7c>
   140003246:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000324d:	00 00 00 
   140003250:	48 89 d9             	mov    %rbx,%rcx
   140003253:	48 8b 1b             	mov    (%rbx),%rbx
   140003256:	ba 18 00 00 00       	mov    $0x18,%edx
   14000325b:	e8 40 41 00 00       	call   1400073a0 <_ZdlPvy>
   140003260:	4c 39 e3             	cmp    %r12,%rbx
   140003263:	75 eb                	jne    140003250 <_ZN13NaturalBinarygeES_+0x130>
   140003265:	e9 32 ff ff ff       	jmp    14000319c <_ZN13NaturalBinarygeES_+0x7c>
   14000326a:	4c 89 e2             	mov    %r12,%rdx
   14000326d:	48 89 e9             	mov    %rbp,%rcx
   140003270:	e8 1b fa ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   140003275:	41 89 c5             	mov    %eax,%r13d
   140003278:	e9 1f ff ff ff       	jmp    14000319c <_ZN13NaturalBinarygeES_+0x7c>
   14000327d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140003282:	48 89 c3             	mov    %rax,%rbx
   140003285:	48 39 f1             	cmp    %rsi,%rcx
   140003288:	74 3b                	je     1400032c5 <_ZN13NaturalBinarygeES_+0x1a5>
   14000328a:	48 8b 39             	mov    (%rcx),%rdi
   14000328d:	ba 18 00 00 00       	mov    $0x18,%edx
   140003292:	e8 09 41 00 00       	call   1400073a0 <_ZdlPvy>
   140003297:	48 89 f9             	mov    %rdi,%rcx
   14000329a:	eb e9                	jmp    140003285 <_ZN13NaturalBinarygeES_+0x165>
   14000329c:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400032a1:	48 89 c3             	mov    %rax,%rbx
   1400032a4:	4c 39 e1             	cmp    %r12,%rcx
   1400032a7:	74 12                	je     1400032bb <_ZN13NaturalBinarygeES_+0x19b>
   1400032a9:	48 8b 39             	mov    (%rcx),%rdi
   1400032ac:	ba 18 00 00 00       	mov    $0x18,%edx
   1400032b1:	e8 ea 40 00 00       	call   1400073a0 <_ZdlPvy>
   1400032b6:	48 89 f9             	mov    %rdi,%rcx
   1400032b9:	eb e9                	jmp    1400032a4 <_ZN13NaturalBinarygeES_+0x184>
   1400032bb:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400032c0:	48 39 f1             	cmp    %rsi,%rcx
   1400032c3:	75 08                	jne    1400032cd <_ZN13NaturalBinarygeES_+0x1ad>
   1400032c5:	48 89 d9             	mov    %rbx,%rcx
   1400032c8:	e8 13 52 00 00       	call   1400084e0 <_Unwind_Resume>
   1400032cd:	48 8b 39             	mov    (%rcx),%rdi
   1400032d0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400032d5:	e8 c6 40 00 00       	call   1400073a0 <_ZdlPvy>
   1400032da:	48 89 f9             	mov    %rdi,%rcx
   1400032dd:	eb e1                	jmp    1400032c0 <_ZN13NaturalBinarygeES_+0x1a0>
   1400032df:	90                   	nop

00000001400032e0 <_ZN13NaturalBinary8toStringB5cxx11Ev>:
   1400032e0:	41 57                	push   %r15
   1400032e2:	41 56                	push   %r14
   1400032e4:	41 55                	push   %r13
   1400032e6:	41 54                	push   %r12
   1400032e8:	55                   	push   %rbp
   1400032e9:	57                   	push   %rdi
   1400032ea:	56                   	push   %rsi
   1400032eb:	53                   	push   %rbx
   1400032ec:	48 81 ec 78 02 00 00 	sub    $0x278,%rsp
   1400032f3:	0f 11 b4 24 50 02 00 	movups %xmm6,0x250(%rsp)
   1400032fa:	00 
   1400032fb:	0f 11 bc 24 60 02 00 	movups %xmm7,0x260(%rsp)
   140003302:	00 
   140003303:	48 8b 05 76 71 00 00 	mov    0x7176(%rip),%rax        # 14000a480 <__fu8__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   14000330a:	48 8b 1d 5f 71 00 00 	mov    0x715f(%rip),%rbx        # 14000a470 <__fu7__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE>
   140003311:	48 83 c0 40          	add    $0x40,%rax
   140003315:	66 48 0f 6e f0       	movq   %rax,%xmm6
   14000331a:	48 8d 43 10          	lea    0x10(%rbx),%rax
   14000331e:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140003323:	48 8b 05 66 71 00 00 	mov    0x7166(%rip),%rax        # 14000a490 <__fu6__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   14000332a:	66 0f 6f fe          	movdqa %xmm6,%xmm7
   14000332e:	66 0f 6c f9          	punpcklqdq %xmm1,%xmm7
   140003332:	48 83 c0 10          	add    $0x10,%rax
   140003336:	c6 41 10 00          	movb   $0x0,0x10(%rcx)
   14000333a:	48 89 cf             	mov    %rcx,%rdi
   14000333d:	49 89 d5             	mov    %rdx,%r13
   140003340:	66 48 0f 6e d0       	movq   %rax,%xmm2
   140003345:	48 8d 41 10          	lea    0x10(%rcx),%rax
   140003349:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   140003350:	00 
   140003351:	4c 8d bc 24 40 01 00 	lea    0x140(%rsp),%r15
   140003358:	00 
   140003359:	48 89 01             	mov    %rax,(%rcx)
   14000335c:	4c 89 f9             	mov    %r15,%rcx
   14000335f:	66 0f 6c f2          	punpcklqdq %xmm2,%xmm6
   140003363:	4c 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%r14
   14000336a:	00 
   14000336b:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
   140003372:	00 
   140003373:	4c 89 b4 24 98 00 00 	mov    %r14,0x98(%rsp)
   14000337a:	00 
   14000337b:	4c 89 bc 24 88 00 00 	mov    %r15,0x88(%rsp)
   140003382:	00 
   140003383:	e8 50 40 00 00       	call   1400073d8 <_ZNSt8ios_baseC2Ev>
   140003388:	48 8b 35 d1 70 00 00 	mov    0x70d1(%rip),%rsi        # 14000a460 <__fu4__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   14000338f:	31 d2                	xor    %edx,%edx
   140003391:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003395:	48 8b 05 04 71 00 00 	mov    0x7104(%rip),%rax        # 14000a4a0 <__fu5__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   14000339c:	66 89 94 24 20 02 00 	mov    %dx,0x220(%rsp)
   1400033a3:	00 
   1400033a4:	48 8b 56 10          	mov    0x10(%rsi),%rdx
   1400033a8:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
   1400033ac:	0f 11 84 24 28 02 00 	movups %xmm0,0x228(%rsp)
   1400033b3:	00 
   1400033b4:	48 83 c0 10          	add    $0x10,%rax
   1400033b8:	0f 11 84 24 38 02 00 	movups %xmm0,0x238(%rsp)
   1400033bf:	00 
   1400033c0:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400033c7:	00 
   1400033c8:	48 8b 42 e8          	mov    -0x18(%rdx),%rax
   1400033cc:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
   1400033d3:	00 
   1400033d4:	48 c7 84 24 18 02 00 	movq   $0x0,0x218(%rsp)
   1400033db:	00 00 00 00 00 
   1400033e0:	48 89 8c 04 c0 00 00 	mov    %rcx,0xc0(%rsp,%rax,1)
   1400033e7:	00 
   1400033e8:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   1400033ef:	00 00 00 00 00 
   1400033f4:	4c 03 72 e8          	add    -0x18(%rdx),%r14
   1400033f8:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
   1400033fd:	31 d2                	xor    %edx,%edx
   1400033ff:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
   140003404:	4c 89 f1             	mov    %r14,%rcx
   140003407:	e8 bc 3f 00 00       	call   1400073c8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   14000340c:	48 8b 46 20          	mov    0x20(%rsi),%rax
   140003410:	48 8d ac 24 d0 00 00 	lea    0xd0(%rsp),%rbp
   140003417:	00 
   140003418:	31 d2                	xor    %edx,%edx
   14000341a:	48 8b 48 e8          	mov    -0x18(%rax),%rcx
   14000341e:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   140003425:	00 
   140003426:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
   14000342b:	48 8b 46 28          	mov    0x28(%rsi),%rax
   14000342f:	48 01 e9             	add    %rbp,%rcx
   140003432:	48 89 01             	mov    %rax,(%rcx)
   140003435:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
   14000343a:	e8 89 3f 00 00       	call   1400073c8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   14000343f:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140003443:	48 8b 76 30          	mov    0x30(%rsi),%rsi
   140003447:	66 0f ef c0          	pxor   %xmm0,%xmm0
   14000344b:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140003450:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003454:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
   140003459:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140003460:	00 
   140003461:	48 8b 05 18 70 00 00 	mov    0x7018(%rip),%rax        # 14000a480 <__fu8__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003468:	0f 11 b4 24 d0 00 00 	movups %xmm6,0xd0(%rsp)
   14000346f:	00 
   140003470:	48 83 c0 18          	add    $0x18,%rax
   140003474:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   14000347b:	00 
   14000347c:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140003483:	00 
   140003484:	48 8b 05 f5 6f 00 00 	mov    0x6ff5(%rip),%rax        # 14000a480 <__fu8__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   14000348b:	0f 11 84 24 f0 00 00 	movups %xmm0,0xf0(%rsp)
   140003492:	00 
   140003493:	48 83 c0 68          	add    $0x68,%rax
   140003497:	0f 11 84 24 00 01 00 	movups %xmm0,0x100(%rsp)
   14000349e:	00 
   14000349f:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400034a6:	00 
   1400034a7:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
   1400034ae:	00 
   1400034af:	48 89 c1             	mov    %rax,%rcx
   1400034b2:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
   1400034b7:	e8 84 3f 00 00       	call   140007440 <_ZNSt6localeC1Ev>
   1400034bc:	48 8d 43 10          	lea    0x10(%rbx),%rax
   1400034c0:	4c 89 f9             	mov    %r15,%rcx
   1400034c3:	c7 84 24 18 01 00 00 	movl   $0x18,0x118(%rsp)
   1400034ca:	18 00 00 00 
   1400034ce:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   1400034d5:	00 
   1400034d6:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
   1400034dd:	00 
   1400034de:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
   1400034e5:	00 
   1400034e6:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
   1400034ed:	00 
   1400034ee:	48 8d 84 24 d8 00 00 	lea    0xd8(%rsp),%rax
   1400034f5:	00 
   1400034f6:	48 89 c2             	mov    %rax,%rdx
   1400034f9:	c6 84 24 30 01 00 00 	movb   $0x0,0x130(%rsp)
   140003500:	00 
   140003501:	48 c7 84 24 28 01 00 	movq   $0x0,0x128(%rsp)
   140003508:	00 00 00 00 00 
   14000350d:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140003512:	e8 b1 3e 00 00       	call   1400073c8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140003517:	48 8d 05 72 51 00 00 	lea    0x5172(%rip),%rax        # 140008690 <_ZNKSt5ctypeIcE8do_widenEc>
   14000351e:	4c 89 ee             	mov    %r13,%rsi
   140003521:	4c 8d a4 24 a0 00 00 	lea    0xa0(%rsp),%r12
   140003528:	00 
   140003529:	49 be ff ff ff ff ff 	movabs $0x3fffffffffffffff,%r14
   140003530:	ff ff 3f 
   140003533:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
   140003538:	4d 3b 6d 00          	cmp    0x0(%r13),%r13
   14000353c:	0f 84 ce 04 00 00    	je     140003a10 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x730>
   140003542:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003548:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   14000354f:	00 
   140003550:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   140003554:	48 c7 84 14 e0 00 00 	movq   $0x2,0xe0(%rsp,%rdx,1)
   14000355b:	00 02 00 00 00 
   140003560:	48 8b 58 e8          	mov    -0x18(%rax),%rbx
   140003564:	48 01 eb             	add    %rbp,%rbx
   140003567:	80 bb e1 00 00 00 00 	cmpb   $0x0,0xe1(%rbx)
   14000356e:	48 89 da             	mov    %rbx,%rdx
   140003571:	0f 84 b9 03 00 00    	je     140003930 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x650>
   140003577:	c6 83 e0 00 00 00 30 	movb   $0x30,0xe0(%rbx)
   14000357e:	8b 42 18             	mov    0x18(%rdx),%eax
   140003581:	48 89 e9             	mov    %rbp,%rcx
   140003584:	83 e0 b5             	and    $0xffffffb5,%eax
   140003587:	83 c8 08             	or     $0x8,%eax
   14000358a:	89 42 18             	mov    %eax,0x18(%rdx)
   14000358d:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140003591:	0f b6 50 10          	movzbl 0x10(%rax),%edx
   140003595:	e8 ce 3e 00 00       	call   140007468 <_ZNSolsEi>
   14000359a:	48 8b 94 24 00 01 00 	mov    0x100(%rsp),%rdx
   1400035a1:	00 
   1400035a2:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   1400035a9:	00 
   1400035aa:	4d 89 e7             	mov    %r12,%r15
   1400035ad:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   1400035b4:	00 00 00 00 00 
   1400035b9:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   1400035c0:	00 
   1400035c1:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   1400035c8:	00 
   1400035c9:	48 85 d2             	test   %rdx,%rdx
   1400035cc:	0f 84 ae 03 00 00    	je     140003980 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6a0>
   1400035d2:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
   1400035d9:	00 
   1400035da:	48 85 c0             	test   %rax,%rax
   1400035dd:	0f 84 3d 03 00 00    	je     140003920 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   1400035e3:	48 39 d0             	cmp    %rdx,%rax
   1400035e6:	0f 82 34 03 00 00    	jb     140003920 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x640>
   1400035ec:	4c 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%r9
   1400035f3:	00 
   1400035f4:	45 31 c0             	xor    %r8d,%r8d
   1400035f7:	31 d2                	xor    %edx,%edx
   1400035f9:	4c 89 e1             	mov    %r12,%rcx
   1400035fc:	4c 29 c8             	sub    %r9,%rax
   1400035ff:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140003604:	e8 27 3e 00 00       	call   140007430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140003609:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003610:	00 
   140003611:	4c 89 f0             	mov    %r14,%rax
   140003614:	48 2b 47 08          	sub    0x8(%rdi),%rax
   140003618:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   14000361f:	00 
   140003620:	4c 39 c0             	cmp    %r8,%rax
   140003623:	0f 82 0e 04 00 00    	jb     140003a37 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x757>
   140003629:	48 89 f9             	mov    %rdi,%rcx
   14000362c:	e8 ef 3d 00 00       	call   140007420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140003631:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003638:	00 
   140003639:	48 39 d9             	cmp    %rbx,%rcx
   14000363c:	74 11                	je     14000364f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x36f>
   14000363e:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003645:	00 
   140003646:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000364a:	e8 51 3d 00 00       	call   1400073a0 <_ZdlPvy>
   14000364f:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
   140003656:	00 00 
   140003658:	4c 8b 84 24 28 01 00 	mov    0x128(%rsp),%r8
   14000365f:	00 
   140003660:	49 89 d9             	mov    %rbx,%r9
   140003663:	31 d2                	xor    %edx,%edx
   140003665:	48 8d 8c 24 20 01 00 	lea    0x120(%rsp),%rcx
   14000366c:	00 
   14000366d:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   140003674:	00 
   140003675:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   14000367c:	00 00 00 00 00 
   140003681:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   140003688:	00 
   140003689:	e8 a2 3d 00 00       	call   140007430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   14000368e:	45 31 c9             	xor    %r9d,%r9d
   140003691:	f6 84 24 18 01 00 00 	testb  $0x3,0x118(%rsp)
   140003698:	03 
   140003699:	74 08                	je     1400036a3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x3c3>
   14000369b:	4c 8b 8c 24 28 01 00 	mov    0x128(%rsp),%r9
   1400036a2:	00 
   1400036a3:	48 8b 94 24 20 01 00 	mov    0x120(%rsp),%rdx
   1400036aa:	00 
   1400036ab:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
   1400036b0:	45 31 c0             	xor    %r8d,%r8d
   1400036b3:	e8 58 3d 00 00       	call   140007410 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   1400036b8:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400036bf:	00 
   1400036c0:	48 39 d9             	cmp    %rbx,%rcx
   1400036c3:	0f 84 3f 02 00 00    	je     140003908 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x628>
   1400036c9:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   1400036d0:	00 
   1400036d1:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400036d5:	e8 c6 3c 00 00       	call   1400073a0 <_ZdlPvy>
   1400036da:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   1400036de:	49 39 75 00          	cmp    %rsi,0x0(%r13)
   1400036e2:	0f 85 60 fe ff ff    	jne    140003548 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   1400036e8:	48 8b 47 08          	mov    0x8(%rdi),%rax
   1400036ec:	4c 89 f9             	mov    %r15,%rcx
   1400036ef:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   1400036f6:	00 
   1400036f7:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   1400036fe:	00 00 00 00 00 
   140003703:	48 8d 50 02          	lea    0x2(%rax),%rdx
   140003707:	c6 84 24 b0 00 00 00 	movb   $0x0,0xb0(%rsp)
   14000370e:	00 
   14000370f:	e8 14 3d 00 00       	call   140007428 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   140003714:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   14000371b:	ff ff 3f 
   14000371e:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   140003725:	00 
   140003726:	48 83 f8 01          	cmp    $0x1,%rax
   14000372a:	0f 86 18 03 00 00    	jbe    140003a48 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x768>
   140003730:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140003736:	48 8d 15 08 69 00 00 	lea    0x6908(%rip),%rdx        # 14000a045 <.rdata+0x15>
   14000373d:	4c 89 f9             	mov    %r15,%rcx
   140003740:	e8 db 3c 00 00       	call   140007420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140003745:	4c 8b 47 08          	mov    0x8(%rdi),%r8
   140003749:	48 8b 17             	mov    (%rdi),%rdx
   14000374c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140003753:	ff ff 3f 
   140003756:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   14000375d:	00 
   14000375e:	4c 39 c0             	cmp    %r8,%rax
   140003761:	0f 82 ed 02 00 00    	jb     140003a54 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x774>
   140003767:	4c 89 f9             	mov    %r15,%rcx
   14000376a:	e8 b1 3c 00 00       	call   140007420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   14000376f:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
   140003776:	00 
   140003777:	48 8b 0f             	mov    (%rdi),%rcx
   14000377a:	48 39 d8             	cmp    %rbx,%rax
   14000377d:	0f 84 3d 02 00 00    	je     1400039c0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6e0>
   140003783:	48 39 8c 24 90 00 00 	cmp    %rcx,0x90(%rsp)
   14000378a:	00 
   14000378b:	0f 84 07 02 00 00    	je     140003998 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6b8>
   140003791:	f3 0f 6f 9c 24 a8 00 	movdqu 0xa8(%rsp),%xmm3
   140003798:	00 00 
   14000379a:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   14000379e:	48 89 07             	mov    %rax,(%rdi)
   1400037a1:	0f 11 5f 08          	movups %xmm3,0x8(%rdi)
   1400037a5:	48 85 c9             	test   %rcx,%rcx
   1400037a8:	0f 84 fa 01 00 00    	je     1400039a8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x6c8>
   1400037ae:	48 89 8c 24 a0 00 00 	mov    %rcx,0xa0(%rsp)
   1400037b5:	00 
   1400037b6:	48 89 94 24 b0 00 00 	mov    %rdx,0xb0(%rsp)
   1400037bd:	00 
   1400037be:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
   1400037c5:	00 00 00 00 00 
   1400037ca:	c6 01 00             	movb   $0x0,(%rcx)
   1400037cd:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400037d4:	00 
   1400037d5:	48 39 d9             	cmp    %rbx,%rcx
   1400037d8:	74 11                	je     1400037eb <_ZN13NaturalBinary8toStringB5cxx11Ev+0x50b>
   1400037da:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   1400037e1:	00 
   1400037e2:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400037e6:	e8 b5 3b 00 00       	call   1400073a0 <_ZdlPvy>
   1400037eb:	48 8b 05 8e 6c 00 00 	mov    0x6c8e(%rip),%rax        # 14000a480 <__fu8__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   1400037f2:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   1400037f9:	00 
   1400037fa:	0f 11 bc 24 d0 00 00 	movups %xmm7,0xd0(%rsp)
   140003801:	00 
   140003802:	48 83 c0 18          	add    $0x18,%rax
   140003806:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   14000380d:	00 
   14000380e:	48 8b 05 6b 6c 00 00 	mov    0x6c6b(%rip),%rax        # 14000a480 <__fu8__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003815:	48 83 c0 68          	add    $0x68,%rax
   140003819:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140003820:	00 
   140003821:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003828:	00 
   140003829:	48 39 c1             	cmp    %rax,%rcx
   14000382c:	74 11                	je     14000383f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x55f>
   14000382e:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140003835:	00 
   140003836:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000383a:	e8 61 3b 00 00       	call   1400073a0 <_ZdlPvy>
   14000383f:	48 8b 05 4a 6c 00 00 	mov    0x6c4a(%rip),%rax        # 14000a490 <__fu6__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140003846:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   14000384b:	48 83 c0 10          	add    $0x10,%rax
   14000384f:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140003856:	00 
   140003857:	e8 dc 3b 00 00       	call   140007438 <_ZNSt6localeD1Ev>
   14000385c:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140003861:	48 8b 74 24 70       	mov    0x70(%rsp),%rsi
   140003866:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   14000386d:	00 
   14000386e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003872:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140003879:	00 
   14000387a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   14000387f:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
   140003884:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   14000388b:	00 
   14000388c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003890:	48 89 b4 04 d0 00 00 	mov    %rsi,0xd0(%rsp,%rax,1)
   140003897:	00 
   140003898:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   14000389d:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
   1400038a2:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   1400038a9:	00 
   1400038aa:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   1400038ae:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   1400038b5:	00 
   1400038b6:	48 8b 05 e3 6b 00 00 	mov    0x6be3(%rip),%rax        # 14000a4a0 <__fu5__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   1400038bd:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   1400038c4:	00 00 00 00 00 
   1400038c9:	48 83 c0 10          	add    $0x10,%rax
   1400038cd:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400038d4:	00 
   1400038d5:	e8 f6 3a 00 00       	call   1400073d0 <_ZNSt8ios_baseD2Ev>
   1400038da:	90                   	nop
   1400038db:	0f 10 b4 24 50 02 00 	movups 0x250(%rsp),%xmm6
   1400038e2:	00 
   1400038e3:	0f 10 bc 24 60 02 00 	movups 0x260(%rsp),%xmm7
   1400038ea:	00 
   1400038eb:	48 89 f8             	mov    %rdi,%rax
   1400038ee:	48 81 c4 78 02 00 00 	add    $0x278,%rsp
   1400038f5:	5b                   	pop    %rbx
   1400038f6:	5e                   	pop    %rsi
   1400038f7:	5f                   	pop    %rdi
   1400038f8:	5d                   	pop    %rbp
   1400038f9:	41 5c                	pop    %r12
   1400038fb:	41 5d                	pop    %r13
   1400038fd:	41 5e                	pop    %r14
   1400038ff:	41 5f                	pop    %r15
   140003901:	c3                   	ret
   140003902:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003908:	48 8b 76 08          	mov    0x8(%rsi),%rsi
   14000390c:	49 3b 75 00          	cmp    0x0(%r13),%rsi
   140003910:	0f 85 32 fc ff ff    	jne    140003548 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x268>
   140003916:	e9 cd fd ff ff       	jmp    1400036e8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   14000391b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003920:	48 89 d0             	mov    %rdx,%rax
   140003923:	e9 c4 fc ff ff       	jmp    1400035ec <_ZN13NaturalBinary8toStringB5cxx11Ev+0x30c>
   140003928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000392f:	00 
   140003930:	4c 8b bb f0 00 00 00 	mov    0xf0(%rbx),%r15
   140003937:	4d 85 ff             	test   %r15,%r15
   14000393a:	0f 84 03 01 00 00    	je     140003a43 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x763>
   140003940:	41 80 7f 38 00       	cmpb   $0x0,0x38(%r15)
   140003945:	75 2c                	jne    140003973 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x693>
   140003947:	4c 89 f9             	mov    %r15,%rcx
   14000394a:	e8 21 3b 00 00       	call   140007470 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   14000394f:	49 8b 07             	mov    (%r15),%rax
   140003952:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140003957:	48 8b 40 30          	mov    0x30(%rax),%rax
   14000395b:	48 39 c8             	cmp    %rcx,%rax
   14000395e:	0f 85 9c 00 00 00    	jne    140003a00 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x720>
   140003964:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
   14000396b:	00 
   14000396c:	48 8b 50 e8          	mov    -0x18(%rax),%rdx
   140003970:	48 01 ea             	add    %rbp,%rdx
   140003973:	c6 83 e1 00 00 00 01 	movb   $0x1,0xe1(%rbx)
   14000397a:	e9 f8 fb ff ff       	jmp    140003577 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x297>
   14000397f:	90                   	nop
   140003980:	48 8d 94 24 20 01 00 	lea    0x120(%rsp),%rdx
   140003987:	00 
   140003988:	4c 89 e1             	mov    %r12,%rcx
   14000398b:	e8 88 3a 00 00       	call   140007418 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   140003990:	e9 74 fc ff ff       	jmp    140003609 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x329>
   140003995:	0f 1f 00             	nopl   (%rax)
   140003998:	f3 0f 6f a4 24 a8 00 	movdqu 0xa8(%rsp),%xmm4
   14000399f:	00 00 
   1400039a1:	48 89 07             	mov    %rax,(%rdi)
   1400039a4:	0f 11 67 08          	movups %xmm4,0x8(%rdi)
   1400039a8:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
   1400039af:	00 
   1400039b0:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   1400039b7:	00 
   1400039b8:	48 89 d9             	mov    %rbx,%rcx
   1400039bb:	e9 fe fd ff ff       	jmp    1400037be <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   1400039c0:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   1400039c7:	00 
   1400039c8:	4d 85 c0             	test   %r8,%r8
   1400039cb:	74 19                	je     1400039e6 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   1400039cd:	49 83 f8 01          	cmp    $0x1,%r8
   1400039d1:	74 4d                	je     140003a20 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x740>
   1400039d3:	48 89 da             	mov    %rbx,%rdx
   1400039d6:	e8 35 4c 00 00       	call   140008610 <memcpy>
   1400039db:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   1400039e2:	00 
   1400039e3:	48 8b 0f             	mov    (%rdi),%rcx
   1400039e6:	4c 89 47 08          	mov    %r8,0x8(%rdi)
   1400039ea:	42 c6 04 01 00       	movb   $0x0,(%rcx,%r8,1)
   1400039ef:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400039f6:	00 
   1400039f7:	e9 c2 fd ff ff       	jmp    1400037be <_ZN13NaturalBinary8toStringB5cxx11Ev+0x4de>
   1400039fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140003a00:	ba 20 00 00 00       	mov    $0x20,%edx
   140003a05:	4c 89 f9             	mov    %r15,%rcx
   140003a08:	ff d0                	call   *%rax
   140003a0a:	e9 55 ff ff ff       	jmp    140003964 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x684>
   140003a0f:	90                   	nop
   140003a10:	4d 89 e7             	mov    %r12,%r15
   140003a13:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
   140003a1a:	00 
   140003a1b:	e9 c8 fc ff ff       	jmp    1400036e8 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x408>
   140003a20:	0f b6 84 24 b0 00 00 	movzbl 0xb0(%rsp),%eax
   140003a27:	00 
   140003a28:	88 01                	mov    %al,(%rcx)
   140003a2a:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003a31:	00 
   140003a32:	48 8b 0f             	mov    (%rdi),%rcx
   140003a35:	eb af                	jmp    1400039e6 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x706>
   140003a37:	48 8d 0d f2 65 00 00 	lea    0x65f2(%rip),%rcx        # 14000a030 <.rdata>
   140003a3e:	e8 6d 39 00 00       	call   1400073b0 <_ZSt20__throw_length_errorPKc>
   140003a43:	e8 70 39 00 00       	call   1400073b8 <_ZSt16__throw_bad_castv>
   140003a48:	48 8d 0d e1 65 00 00 	lea    0x65e1(%rip),%rcx        # 14000a030 <.rdata>
   140003a4f:	e8 5c 39 00 00       	call   1400073b0 <_ZSt20__throw_length_errorPKc>
   140003a54:	48 8d 0d d5 65 00 00 	lea    0x65d5(%rip),%rcx        # 14000a030 <.rdata>
   140003a5b:	e8 50 39 00 00       	call   1400073b0 <_ZSt20__throw_length_errorPKc>
   140003a60:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003a67:	00 
   140003a68:	48 89 c6             	mov    %rax,%rsi
   140003a6b:	48 39 d9             	cmp    %rbx,%rcx
   140003a6e:	74 11                	je     140003a81 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003a70:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003a77:	00 
   140003a78:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003a7c:	e8 1f 39 00 00       	call   1400073a0 <_ZdlPvy>
   140003a81:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
   140003a88:	00 
   140003a89:	e8 7a 39 00 00       	call   140007408 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140003a8e:	eb 23                	jmp    140003ab3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7d3>
   140003a90:	48 89 c6             	mov    %rax,%rsi
   140003a93:	48 8b 05 06 6a 00 00 	mov    0x6a06(%rip),%rax        # 14000a4a0 <__fu5__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   140003a9a:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   140003aa1:	00 
   140003aa2:	48 83 c0 10          	add    $0x10,%rax
   140003aa6:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   140003aad:	00 
   140003aae:	e8 1d 39 00 00       	call   1400073d0 <_ZNSt8ios_baseD2Ev>
   140003ab3:	48 8b 0f             	mov    (%rdi),%rcx
   140003ab6:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   140003abd:	00 
   140003abe:	48 39 c1             	cmp    %rax,%rcx
   140003ac1:	74 0d                	je     140003ad0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7f0>
   140003ac3:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   140003ac7:	48 83 c2 01          	add    $0x1,%rdx
   140003acb:	e8 d0 38 00 00       	call   1400073a0 <_ZdlPvy>
   140003ad0:	48 89 f1             	mov    %rsi,%rcx
   140003ad3:	e8 08 4a 00 00       	call   1400084e0 <_Unwind_Resume>
   140003ad8:	eb 86                	jmp    140003a60 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   140003ada:	eb 84                	jmp    140003a60 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   140003adc:	eb 82                	jmp    140003a60 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x780>
   140003ade:	48 89 c6             	mov    %rax,%rsi
   140003ae1:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
   140003ae6:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
   140003aeb:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140003af2:	00 
   140003af3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003af7:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   140003afe:	00 
   140003aff:	31 c0                	xor    %eax,%eax
   140003b01:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
   140003b08:	00 
   140003b09:	eb 88                	jmp    140003a93 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7b3>
   140003b0b:	48 89 c6             	mov    %rax,%rsi
   140003b0e:	e9 6e ff ff ff       	jmp    140003a81 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003b13:	48 89 c6             	mov    %rax,%rsi
   140003b16:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   140003b1d:	00 
   140003b1e:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003b25:	00 
   140003b26:	48 83 c3 10          	add    $0x10,%rbx
   140003b2a:	48 89 9c 24 d8 00 00 	mov    %rbx,0xd8(%rsp)
   140003b31:	00 
   140003b32:	48 39 c1             	cmp    %rax,%rcx
   140003b35:	74 11                	je     140003b48 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x868>
   140003b37:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
   140003b3e:	00 
   140003b3f:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003b43:	e8 58 38 00 00       	call   1400073a0 <_ZdlPvy>
   140003b48:	48 8b 05 41 69 00 00 	mov    0x6941(%rip),%rax        # 14000a490 <__fu6__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140003b4f:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   140003b54:	48 83 c0 10          	add    $0x10,%rax
   140003b58:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140003b5f:	00 
   140003b60:	e8 d3 38 00 00       	call   140007438 <_ZNSt6localeD1Ev>
   140003b65:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
   140003b6a:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
   140003b6f:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003b73:	48 89 9c 04 c0 00 00 	mov    %rbx,0xc0(%rsp,%rax,1)
   140003b7a:	00 
   140003b7b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
   140003b80:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003b85:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
   140003b8c:	00 
   140003b8d:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140003b91:	48 89 9c 04 d0 00 00 	mov    %rbx,0xd0(%rsp,%rax,1)
   140003b98:	00 
   140003b99:	e9 43 ff ff ff       	jmp    140003ae1 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x801>
   140003b9e:	66 90                	xchg   %ax,%ax

0000000140003ba0 <_ZlsRSo13NaturalBinary>:
   140003ba0:	53                   	push   %rbx
   140003ba1:	48 83 ec 40          	sub    $0x40,%rsp
   140003ba5:	48 89 cb             	mov    %rcx,%rbx
   140003ba8:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140003bad:	e8 2e f7 ff ff       	call   1400032e0 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   140003bb2:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   140003bb7:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140003bbc:	48 89 d9             	mov    %rbx,%rcx
   140003bbf:	e8 fc 37 00 00       	call   1400073c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140003bc4:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140003bc9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140003bce:	48 39 c1             	cmp    %rax,%rcx
   140003bd1:	74 0e                	je     140003be1 <_ZlsRSo13NaturalBinary+0x41>
   140003bd3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003bd8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003bdc:	e8 bf 37 00 00       	call   1400073a0 <_ZdlPvy>
   140003be1:	48 89 d8             	mov    %rbx,%rax
   140003be4:	48 83 c4 40          	add    $0x40,%rsp
   140003be8:	5b                   	pop    %rbx
   140003be9:	c3                   	ret
   140003bea:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140003bef:	48 89 c3             	mov    %rax,%rbx
   140003bf2:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140003bf7:	48 39 c1             	cmp    %rax,%rcx
   140003bfa:	74 0e                	je     140003c0a <_ZlsRSo13NaturalBinary+0x6a>
   140003bfc:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003c01:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003c05:	e8 96 37 00 00       	call   1400073a0 <_ZdlPvy>
   140003c0a:	48 89 d9             	mov    %rbx,%rcx
   140003c0d:	e8 ce 48 00 00       	call   1400084e0 <_Unwind_Resume>
   140003c12:	90                   	nop
   140003c13:	90                   	nop
   140003c14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140003c1b:	00 00 00 00 
   140003c1f:	90                   	nop

0000000140003c20 <_ZN13NaturalBinarymlES_>:
   140003c20:	41 57                	push   %r15
   140003c22:	41 56                	push   %r14
   140003c24:	41 55                	push   %r13
   140003c26:	41 54                	push   %r12
   140003c28:	55                   	push   %rbp
   140003c29:	57                   	push   %rdi
   140003c2a:	56                   	push   %rsi
   140003c2b:	53                   	push   %rbx
   140003c2c:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
   140003c33:	0f 11 b4 24 00 01 00 	movups %xmm6,0x100(%rsp)
   140003c3a:	00 
   140003c3b:	49 8b 18             	mov    (%r8),%rbx
   140003c3e:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   140003c43:	48 89 8c 24 60 01 00 	mov    %rcx,0x160(%rsp)
   140003c4a:	00 
   140003c4b:	48 89 d7             	mov    %rdx,%rdi
   140003c4e:	4c 89 c5             	mov    %r8,%rbp
   140003c51:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140003c58:	00 00 
   140003c5a:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140003c5f:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003c63:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140003c68:	49 39 d8             	cmp    %rbx,%r8
   140003c6b:	0f 84 df 02 00 00    	je     140003f50 <_ZN13NaturalBinarymlES_+0x330>
   140003c71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003c78:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003c7d:	e8 16 37 00 00       	call   140007398 <_Znwy>
   140003c82:	48 89 c1             	mov    %rax,%rcx
   140003c85:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003c89:	48 89 f2             	mov    %rsi,%rdx
   140003c8c:	88 41 10             	mov    %al,0x10(%rcx)
   140003c8f:	e8 64 37 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003c94:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
   140003c99:	48 8b 1b             	mov    (%rbx),%rbx
   140003c9c:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140003ca0:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
   140003ca5:	48 39 dd             	cmp    %rbx,%rbp
   140003ca8:	75 ce                	jne    140003c78 <_ZN13NaturalBinarymlES_+0x58>
   140003caa:	48 0f af 57 10       	imul   0x10(%rdi),%rdx
   140003caf:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003cb3:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140003cba:	00 00 00 00 00 
   140003cbf:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140003cc6:	00 
   140003cc7:	48 85 d2             	test   %rdx,%rdx
   140003cca:	0f 85 60 02 00 00    	jne    140003f30 <_ZN13NaturalBinarymlES_+0x310>
   140003cd0:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140003cd7:	00 00 
   140003cd9:	4c 8d a4 24 e0 00 00 	lea    0xe0(%rsp),%r12
   140003ce0:	00 
   140003ce1:	31 d2                	xor    %edx,%edx
   140003ce3:	4c 89 e1             	mov    %r12,%rcx
   140003ce6:	e8 95 d9 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003ceb:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
   140003cf2:	00 
   140003cf3:	31 d2                	xor    %edx,%edx
   140003cf5:	48 89 d9             	mov    %rbx,%rcx
   140003cf8:	e8 83 d9 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003cfd:	48 8b 54 24 60       	mov    0x60(%rsp),%rdx
   140003d02:	31 c0                	xor    %eax,%eax
   140003d04:	4c 8d bc 24 a2 00 00 	lea    0xa2(%rsp),%r15
   140003d0b:	00 
   140003d0c:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140003d11:	48 39 f2             	cmp    %rsi,%rdx
   140003d14:	0f 84 8e 02 00 00    	je     140003fa8 <_ZN13NaturalBinarymlES_+0x388>
   140003d1a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   140003d1f:	0f b6 52 10          	movzbl 0x10(%rdx),%edx
   140003d23:	88 54 24 4f          	mov    %dl,0x4f(%rsp)
   140003d27:	48 8b 17             	mov    (%rdi),%rdx
   140003d2a:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140003d2f:	48 39 d7             	cmp    %rdx,%rdi
   140003d32:	0f 84 40 02 00 00    	je     140003f78 <_ZN13NaturalBinarymlES_+0x358>
   140003d38:	48 98                	cltq
   140003d3a:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   140003d3f:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003d44:	66 48 0f 6e f3       	movq   %rbx,%xmm6
   140003d49:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   140003d4e:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   140003d52:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003d56:	4c 8d 2c c1          	lea    (%rcx,%rax,8),%r13
   140003d5a:	48 89 d0             	mov    %rdx,%rax
   140003d5d:	0f b6 48 10          	movzbl 0x10(%rax),%ecx
   140003d61:	0f b6 54 24 4f       	movzbl 0x4f(%rsp),%edx
   140003d66:	e8 e5 d7 ff ff       	call   140001550 <_ZN10Arithmetic3mulE4ByteS0_>
   140003d6b:	88 a4 24 a0 00 00 00 	mov    %ah,0xa0(%rsp)
   140003d72:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   140003d79:	00 
   140003d7a:	88 84 24 a1 00 00 00 	mov    %al,0xa1(%rsp)
   140003d81:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   140003d88:	00 00 00 00 00 
   140003d8d:	0f 11 b4 24 c0 00 00 	movups %xmm6,0xc0(%rsp)
   140003d94:	00 
   140003d95:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003d9a:	e8 f9 35 00 00       	call   140007398 <_Znwy>
   140003d9f:	48 89 c1             	mov    %rax,%rcx
   140003da2:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
   140003da6:	48 89 da             	mov    %rbx,%rdx
   140003da9:	48 83 c5 01          	add    $0x1,%rbp
   140003dad:	88 41 10             	mov    %al,0x10(%rcx)
   140003db0:	e8 43 36 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003db5:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   140003dbc:	00 01 
   140003dbe:	4c 39 fd             	cmp    %r15,%rbp
   140003dc1:	75 d2                	jne    140003d95 <_ZN13NaturalBinarymlES_+0x175>
   140003dc3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140003dc8:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   140003dcf:	00 
   140003dd0:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
   140003dd7:	00 00 00 00 00 
   140003ddc:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140003de0:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   140003de7:	00 
   140003de8:	48 39 dd             	cmp    %rbx,%rbp
   140003deb:	0f 84 30 04 00 00    	je     140004221 <_ZN13NaturalBinarymlES_+0x601>
   140003df1:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
   140003df6:	eb 15                	jmp    140003e0d <_ZN13NaturalBinarymlES_+0x1ed>
   140003df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140003dff:	00 
   140003e00:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
   140003e07:	00 
   140003e08:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140003e0d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003e12:	44 0f b6 75 10       	movzbl 0x10(%rbp),%r14d
   140003e17:	e8 7c 35 00 00       	call   140007398 <_Znwy>
   140003e1c:	44 88 70 10          	mov    %r14b,0x10(%rax)
   140003e20:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140003e25:	48 89 c1             	mov    %rax,%rcx
   140003e28:	e8 cb 35 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003e2d:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003e31:	48 83 84 24 f0 00 00 	addq   $0x1,0xf0(%rsp)
   140003e38:	00 01 
   140003e3a:	48 39 dd             	cmp    %rbx,%rbp
   140003e3d:	75 c1                	jne    140003e00 <_ZN13NaturalBinarymlES_+0x1e0>
   140003e3f:	4d 39 e5             	cmp    %r12,%r13
   140003e42:	74 0b                	je     140003e4f <_ZN13NaturalBinarymlES_+0x22f>
   140003e44:	4c 89 e2             	mov    %r12,%rdx
   140003e47:	4c 89 e9             	mov    %r13,%rcx
   140003e4a:	e8 01 df ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140003e4f:	48 8b ac 24 e0 00 00 	mov    0xe0(%rsp),%rbp
   140003e56:	00 
   140003e57:	4c 39 e5             	cmp    %r12,%rbp
   140003e5a:	74 1a                	je     140003e76 <_ZN13NaturalBinarymlES_+0x256>
   140003e5c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003e60:	48 89 e9             	mov    %rbp,%rcx
   140003e63:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003e67:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e6c:	e8 2f 35 00 00       	call   1400073a0 <_ZdlPvy>
   140003e71:	4c 39 e5             	cmp    %r12,%rbp
   140003e74:	75 ea                	jne    140003e60 <_ZN13NaturalBinarymlES_+0x240>
   140003e76:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   140003e7d:	00 
   140003e7e:	eb 11                	jmp    140003e91 <_ZN13NaturalBinarymlES_+0x271>
   140003e80:	48 89 e9             	mov    %rbp,%rcx
   140003e83:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e88:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140003e8c:	e8 0f 35 00 00       	call   1400073a0 <_ZdlPvy>
   140003e91:	48 39 dd             	cmp    %rbx,%rbp
   140003e94:	75 ea                	jne    140003e80 <_ZN13NaturalBinarymlES_+0x260>
   140003e96:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003e9b:	31 d2                	xor    %edx,%edx
   140003e9d:	31 ed                	xor    %ebp,%ebp
   140003e9f:	48 f7 77 10          	divq   0x10(%rdi)
   140003ea3:	48 01 c2             	add    %rax,%rdx
   140003ea6:	74 52                	je     140003efa <_ZN13NaturalBinarymlES_+0x2da>
   140003ea8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140003eaf:	00 
   140003eb0:	31 d2                	xor    %edx,%edx
   140003eb2:	4c 89 e1             	mov    %r12,%rcx
   140003eb5:	e8 c6 d7 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140003eba:	b9 18 00 00 00       	mov    $0x18,%ecx
   140003ebf:	4d 8b 75 00          	mov    0x0(%r13),%r14
   140003ec3:	e8 d0 34 00 00       	call   140007398 <_Znwy>
   140003ec8:	48 89 c1             	mov    %rax,%rcx
   140003ecb:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003ed2:	00 
   140003ed3:	4c 89 f2             	mov    %r14,%rdx
   140003ed6:	48 83 c5 01          	add    $0x1,%rbp
   140003eda:	88 41 10             	mov    %al,0x10(%rcx)
   140003edd:	e8 16 35 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140003ee2:	49 83 45 10 01       	addq   $0x1,0x10(%r13)
   140003ee7:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003eec:	31 d2                	xor    %edx,%edx
   140003eee:	48 f7 77 10          	divq   0x10(%rdi)
   140003ef2:	48 01 c2             	add    %rax,%rdx
   140003ef5:	48 39 d5             	cmp    %rdx,%rbp
   140003ef8:	72 b6                	jb     140003eb0 <_ZN13NaturalBinarymlES_+0x290>
   140003efa:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
   140003eff:	49 83 c5 18          	add    $0x18,%r13
   140003f03:	48 8b 10             	mov    (%rax),%rdx
   140003f06:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140003f0b:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
   140003f10:	48 83 c0 01          	add    $0x1,%rax
   140003f14:	48 39 d7             	cmp    %rdx,%rdi
   140003f17:	74 54                	je     140003f6d <_ZN13NaturalBinarymlES_+0x34d>
   140003f19:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
   140003f1e:	48 89 d0             	mov    %rdx,%rax
   140003f21:	e9 37 fe ff ff       	jmp    140003d5d <_ZN13NaturalBinarymlES_+0x13d>
   140003f26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140003f2d:	00 00 00 
   140003f30:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
   140003f37:	00 
   140003f38:	e8 63 47 00 00       	call   1400086a0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>
   140003f3d:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
   140003f44:	00 
   140003f45:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
   140003f4a:	e9 8a fd ff ff       	jmp    140003cd9 <_ZN13NaturalBinarymlES_+0xb9>
   140003f4f:	90                   	nop
   140003f50:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140003f57:	00 00 00 00 00 
   140003f5c:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003f60:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140003f67:	00 
   140003f68:	e9 63 fd ff ff       	jmp    140003cd0 <_ZN13NaturalBinarymlES_+0xb0>
   140003f6d:	8b 44 24 30          	mov    0x30(%rsp),%eax
   140003f71:	83 c0 01             	add    $0x1,%eax
   140003f74:	0f 1f 40 00          	nopl   0x0(%rax)
   140003f78:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
   140003f7d:	48 8b 12             	mov    (%rdx),%rdx
   140003f80:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140003f85:	48 39 f2             	cmp    %rsi,%rdx
   140003f88:	74 1e                	je     140003fa8 <_ZN13NaturalBinarymlES_+0x388>
   140003f8a:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
   140003f8f:	48 39 d7             	cmp    %rdx,%rdi
   140003f92:	0f 85 82 fd ff ff    	jne    140003d1a <_ZN13NaturalBinarymlES_+0xfa>
   140003f98:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140003f9d:	48 8b 00             	mov    (%rax),%rax
   140003fa0:	48 39 f0             	cmp    %rsi,%rax
   140003fa3:	75 f8                	jne    140003f9d <_ZN13NaturalBinarymlES_+0x37d>
   140003fa5:	0f 1f 00             	nopl   (%rax)
   140003fa8:	48 8d ac 24 a0 00 00 	lea    0xa0(%rsp),%rbp
   140003faf:	00 
   140003fb0:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   140003fb7:	00 
   140003fb8:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   140003fbd:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140003fc1:	e8 da de ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140003fc6:	4c 8b bc 24 88 00 00 	mov    0x88(%rsp),%r15
   140003fcd:	00 
   140003fce:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
   140003fd3:	4c 39 f8             	cmp    %r15,%rax
   140003fd6:	0f 84 e2 01 00 00    	je     1400041be <_ZN13NaturalBinarymlES_+0x59e>
   140003fdc:	49 89 c6             	mov    %rax,%r14
   140003fdf:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140003fe6:	00 
   140003fe7:	4d 8b 2e             	mov    (%r14),%r13
   140003fea:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
   140003ff1:	00 00 00 00 00 
   140003ff6:	4d 39 f5             	cmp    %r14,%r13
   140003ff9:	0f 84 81 02 00 00    	je     140004280 <_ZN13NaturalBinarymlES_+0x660>
   140003fff:	90                   	nop
   140004000:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004005:	e8 8e 33 00 00       	call   140007398 <_Znwy>
   14000400a:	48 89 c1             	mov    %rax,%rcx
   14000400d:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   140004012:	48 89 ea             	mov    %rbp,%rdx
   140004015:	88 41 10             	mov    %al,0x10(%rcx)
   140004018:	e8 db 33 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000401d:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140004024:	00 
   140004025:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140004029:	48 8d 78 01          	lea    0x1(%rax),%rdi
   14000402d:	48 89 bc 24 b0 00 00 	mov    %rdi,0xb0(%rsp)
   140004034:	00 
   140004035:	4d 39 f5             	cmp    %r14,%r13
   140004038:	75 c6                	jne    140004000 <_ZN13NaturalBinarymlES_+0x3e0>
   14000403a:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140004041:	00 
   140004042:	45 31 ed             	xor    %r13d,%r13d
   140004045:	2b 78 10             	sub    0x10(%rax),%edi
   140004048:	85 ff                	test   %edi,%edi
   14000404a:	0f 8e df 01 00 00    	jle    14000422f <_ZN13NaturalBinarymlES_+0x60f>
   140004050:	31 d2                	xor    %edx,%edx
   140004052:	4c 89 e1             	mov    %r12,%rcx
   140004055:	e8 26 d6 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000405a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000405f:	e8 34 33 00 00       	call   140007398 <_Znwy>
   140004064:	48 89 c1             	mov    %rax,%rcx
   140004067:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   14000406e:	00 
   14000406f:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   140004076:	00 
   140004077:	41 83 c5 01          	add    $0x1,%r13d
   14000407b:	88 41 10             	mov    %al,0x10(%rcx)
   14000407e:	e8 75 33 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004083:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   14000408a:	00 
   14000408b:	48 83 40 10 01       	addq   $0x1,0x10(%rax)
   140004090:	44 39 ef             	cmp    %r13d,%edi
   140004093:	7f bb                	jg     140004050 <_ZN13NaturalBinarymlES_+0x430>
   140004095:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   14000409a:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   1400040a1:	00 
   1400040a2:	48 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%rsp)
   1400040a9:	00 00 00 00 00 
   1400040ae:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400040b2:	0f 11 84 24 c0 00 00 	movups %xmm0,0xc0(%rsp)
   1400040b9:	00 
   1400040ba:	48 39 ef             	cmp    %rbp,%rdi
   1400040bd:	74 2d                	je     1400040ec <_ZN13NaturalBinarymlES_+0x4cc>
   1400040bf:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400040c4:	e8 cf 32 00 00       	call   140007398 <_Znwy>
   1400040c9:	48 89 c1             	mov    %rax,%rcx
   1400040cc:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   1400040d0:	48 89 da             	mov    %rbx,%rdx
   1400040d3:	88 41 10             	mov    %al,0x10(%rcx)
   1400040d6:	e8 1d 33 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400040db:	48 8b 3f             	mov    (%rdi),%rdi
   1400040de:	48 83 84 24 d0 00 00 	addq   $0x1,0xd0(%rsp)
   1400040e5:	00 01 
   1400040e7:	48 39 ef             	cmp    %rbp,%rdi
   1400040ea:	75 d3                	jne    1400040bf <_ZN13NaturalBinarymlES_+0x49f>
   1400040ec:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   1400040f3:	00 
   1400040f4:	49 89 d8             	mov    %rbx,%r8
   1400040f7:	4c 89 e1             	mov    %r12,%rcx
   1400040fa:	e8 01 e0 ff ff       	call   140002100 <_ZN13NaturalBinaryplES_>
   1400040ff:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
   140004106:	00 
   140004107:	4c 89 e2             	mov    %r12,%rdx
   14000410a:	e8 41 dc ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000410f:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
   140004116:	00 
   140004117:	4c 39 e7             	cmp    %r12,%rdi
   14000411a:	74 15                	je     140004131 <_ZN13NaturalBinarymlES_+0x511>
   14000411c:	48 89 f9             	mov    %rdi,%rcx
   14000411f:	48 8b 3f             	mov    (%rdi),%rdi
   140004122:	ba 18 00 00 00       	mov    $0x18,%edx
   140004127:	e8 74 32 00 00       	call   1400073a0 <_ZdlPvy>
   14000412c:	4c 39 e7             	cmp    %r12,%rdi
   14000412f:	75 eb                	jne    14000411c <_ZN13NaturalBinarymlES_+0x4fc>
   140004131:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
   140004138:	00 
   140004139:	48 39 df             	cmp    %rbx,%rdi
   14000413c:	74 15                	je     140004153 <_ZN13NaturalBinarymlES_+0x533>
   14000413e:	48 89 f9             	mov    %rdi,%rcx
   140004141:	48 8b 3f             	mov    (%rdi),%rdi
   140004144:	ba 18 00 00 00       	mov    $0x18,%edx
   140004149:	e8 52 32 00 00       	call   1400073a0 <_ZdlPvy>
   14000414e:	48 39 df             	cmp    %rbx,%rdi
   140004151:	75 eb                	jne    14000413e <_ZN13NaturalBinarymlES_+0x51e>
   140004153:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   14000415a:	00 
   14000415b:	48 39 ef             	cmp    %rbp,%rdi
   14000415e:	74 15                	je     140004175 <_ZN13NaturalBinarymlES_+0x555>
   140004160:	48 89 f9             	mov    %rdi,%rcx
   140004163:	48 8b 3f             	mov    (%rdi),%rdi
   140004166:	ba 18 00 00 00       	mov    $0x18,%edx
   14000416b:	e8 30 32 00 00       	call   1400073a0 <_ZdlPvy>
   140004170:	48 39 ef             	cmp    %rbp,%rdi
   140004173:	75 eb                	jne    140004160 <_ZN13NaturalBinarymlES_+0x540>
   140004175:	49 83 c6 18          	add    $0x18,%r14
   140004179:	4d 39 f7             	cmp    %r14,%r15
   14000417c:	0f 85 5d fe ff ff    	jne    140003fdf <_ZN13NaturalBinarymlES_+0x3bf>
   140004182:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
   140004187:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000418e:	00 00 
   140004190:	48 8b 1f             	mov    (%rdi),%rbx
   140004193:	48 39 df             	cmp    %rbx,%rdi
   140004196:	74 1d                	je     1400041b5 <_ZN13NaturalBinarymlES_+0x595>
   140004198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000419f:	00 
   1400041a0:	48 89 d9             	mov    %rbx,%rcx
   1400041a3:	48 8b 1b             	mov    (%rbx),%rbx
   1400041a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041ab:	e8 f0 31 00 00       	call   1400073a0 <_ZdlPvy>
   1400041b0:	48 39 df             	cmp    %rbx,%rdi
   1400041b3:	75 eb                	jne    1400041a0 <_ZN13NaturalBinarymlES_+0x580>
   1400041b5:	48 83 c7 18          	add    $0x18,%rdi
   1400041b9:	49 39 ff             	cmp    %rdi,%r15
   1400041bc:	75 d2                	jne    140004190 <_ZN13NaturalBinarymlES_+0x570>
   1400041be:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   1400041c3:	48 85 c9             	test   %rcx,%rcx
   1400041c6:	74 10                	je     1400041d8 <_ZN13NaturalBinarymlES_+0x5b8>
   1400041c8:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   1400041cf:	00 
   1400041d0:	48 29 ca             	sub    %rcx,%rdx
   1400041d3:	e8 c8 31 00 00       	call   1400073a0 <_ZdlPvy>
   1400041d8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400041dd:	48 39 f3             	cmp    %rsi,%rbx
   1400041e0:	74 1b                	je     1400041fd <_ZN13NaturalBinarymlES_+0x5dd>
   1400041e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400041e8:	48 89 d9             	mov    %rbx,%rcx
   1400041eb:	48 8b 1b             	mov    (%rbx),%rbx
   1400041ee:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041f3:	e8 a8 31 00 00       	call   1400073a0 <_ZdlPvy>
   1400041f8:	48 39 f3             	cmp    %rsi,%rbx
   1400041fb:	75 eb                	jne    1400041e8 <_ZN13NaturalBinarymlES_+0x5c8>
   1400041fd:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140004204:	00 
   140004205:	0f 10 b4 24 00 01 00 	movups 0x100(%rsp),%xmm6
   14000420c:	00 
   14000420d:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
   140004214:	5b                   	pop    %rbx
   140004215:	5e                   	pop    %rsi
   140004216:	5f                   	pop    %rdi
   140004217:	5d                   	pop    %rbp
   140004218:	41 5c                	pop    %r12
   14000421a:	41 5d                	pop    %r13
   14000421c:	41 5e                	pop    %r14
   14000421e:	41 5f                	pop    %r15
   140004220:	c3                   	ret
   140004221:	4d 39 e5             	cmp    %r12,%r13
   140004224:	0f 85 1a fc ff ff    	jne    140003e44 <_ZN13NaturalBinarymlES_+0x224>
   14000422a:	e9 67 fc ff ff       	jmp    140003e96 <_ZN13NaturalBinarymlES_+0x276>
   14000422f:	41 89 fd             	mov    %edi,%r13d
   140004232:	41 f7 dd             	neg    %r13d
   140004235:	0f 84 5a fe ff ff    	je     140004095 <_ZN13NaturalBinarymlES_+0x475>
   14000423b:	31 ff                	xor    %edi,%edi
   14000423d:	0f 1f 00             	nopl   (%rax)
   140004240:	31 d2                	xor    %edx,%edx
   140004242:	4c 89 e1             	mov    %r12,%rcx
   140004245:	e8 36 d4 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000424a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000424f:	e8 44 31 00 00       	call   140007398 <_Znwy>
   140004254:	48 89 c1             	mov    %rax,%rcx
   140004257:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   14000425e:	00 
   14000425f:	48 89 ea             	mov    %rbp,%rdx
   140004262:	83 c7 01             	add    $0x1,%edi
   140004265:	88 41 10             	mov    %al,0x10(%rcx)
   140004268:	e8 8b 31 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000426d:	48 83 84 24 b0 00 00 	addq   $0x1,0xb0(%rsp)
   140004274:	00 01 
   140004276:	41 39 fd             	cmp    %edi,%r13d
   140004279:	7f c5                	jg     140004240 <_ZN13NaturalBinarymlES_+0x620>
   14000427b:	e9 15 fe ff ff       	jmp    140004095 <_ZN13NaturalBinarymlES_+0x475>
   140004280:	31 ff                	xor    %edi,%edi
   140004282:	e9 b3 fd ff ff       	jmp    14000403a <_ZN13NaturalBinarymlES_+0x41a>
   140004287:	48 89 c3             	mov    %rax,%rbx
   14000428a:	48 8b ac 24 80 00 00 	mov    0x80(%rsp),%rbp
   140004291:	00 
   140004292:	4c 8b a4 24 88 00 00 	mov    0x88(%rsp),%r12
   140004299:	00 
   14000429a:	48 89 ef             	mov    %rbp,%rdi
   14000429d:	49 39 fc             	cmp    %rdi,%r12
   1400042a0:	74 73                	je     140004315 <_ZN13NaturalBinarymlES_+0x6f5>
   1400042a2:	48 8b 0f             	mov    (%rdi),%rcx
   1400042a5:	48 39 cf             	cmp    %rcx,%rdi
   1400042a8:	0f 84 b7 00 00 00    	je     140004365 <_ZN13NaturalBinarymlES_+0x745>
   1400042ae:	4c 8b 29             	mov    (%rcx),%r13
   1400042b1:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042b6:	e8 e5 30 00 00       	call   1400073a0 <_ZdlPvy>
   1400042bb:	4c 89 e9             	mov    %r13,%rcx
   1400042be:	eb e5                	jmp    1400042a5 <_ZN13NaturalBinarymlES_+0x685>
   1400042c0:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   1400042c7:	00 
   1400042c8:	48 89 c7             	mov    %rax,%rdi
   1400042cb:	4c 39 e1             	cmp    %r12,%rcx
   1400042ce:	74 26                	je     1400042f6 <_ZN13NaturalBinarymlES_+0x6d6>
   1400042d0:	48 8b 29             	mov    (%rcx),%rbp
   1400042d3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400042d8:	e8 c3 30 00 00       	call   1400073a0 <_ZdlPvy>
   1400042dd:	48 89 e9             	mov    %rbp,%rcx
   1400042e0:	eb e9                	jmp    1400042cb <_ZN13NaturalBinarymlES_+0x6ab>
   1400042e2:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   1400042e9:	00 
   1400042ea:	48 89 c7             	mov    %rax,%rdi
   1400042ed:	4c 39 e1             	cmp    %r12,%rcx
   1400042f0:	0f 85 b3 00 00 00    	jne    1400043a9 <_ZN13NaturalBinarymlES_+0x789>
   1400042f6:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   1400042fd:	00 
   1400042fe:	48 39 d9             	cmp    %rbx,%rcx
   140004301:	74 5a                	je     14000435d <_ZN13NaturalBinarymlES_+0x73d>
   140004303:	48 8b 29             	mov    (%rcx),%rbp
   140004306:	ba 18 00 00 00       	mov    $0x18,%edx
   14000430b:	e8 90 30 00 00       	call   1400073a0 <_ZdlPvy>
   140004310:	48 89 e9             	mov    %rbp,%rcx
   140004313:	eb e9                	jmp    1400042fe <_ZN13NaturalBinarymlES_+0x6de>
   140004315:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   14000431c:	00 
   14000431d:	48 29 ea             	sub    %rbp,%rdx
   140004320:	48 85 ed             	test   %rbp,%rbp
   140004323:	74 08                	je     14000432d <_ZN13NaturalBinarymlES_+0x70d>
   140004325:	48 89 e9             	mov    %rbp,%rcx
   140004328:	e8 73 30 00 00       	call   1400073a0 <_ZdlPvy>
   14000432d:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004332:	48 39 f1             	cmp    %rsi,%rcx
   140004335:	74 48                	je     14000437f <_ZN13NaturalBinarymlES_+0x75f>
   140004337:	48 8b 39             	mov    (%rcx),%rdi
   14000433a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000433f:	e8 5c 30 00 00       	call   1400073a0 <_ZdlPvy>
   140004344:	48 89 f9             	mov    %rdi,%rcx
   140004347:	eb e9                	jmp    140004332 <_ZN13NaturalBinarymlES_+0x712>
   140004349:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140004350:	00 
   140004351:	48 89 c7             	mov    %rax,%rdi
   140004354:	48 39 d9             	cmp    %rbx,%rcx
   140004357:	0f 85 19 01 00 00    	jne    140004476 <_ZN13NaturalBinarymlES_+0x856>
   14000435d:	48 89 fb             	mov    %rdi,%rbx
   140004360:	e9 25 ff ff ff       	jmp    14000428a <_ZN13NaturalBinarymlES_+0x66a>
   140004365:	48 83 c7 18          	add    $0x18,%rdi
   140004369:	e9 2f ff ff ff       	jmp    14000429d <_ZN13NaturalBinarymlES_+0x67d>
   14000436e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004373:	48 89 c3             	mov    %rax,%rbx
   140004376:	48 39 f1             	cmp    %rsi,%rcx
   140004379:	0f 85 0c 01 00 00    	jne    14000448b <_ZN13NaturalBinarymlES_+0x86b>
   14000437f:	48 89 d9             	mov    %rbx,%rcx
   140004382:	e8 59 41 00 00       	call   1400084e0 <_Unwind_Resume>
   140004387:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   14000438e:	00 
   14000438f:	48 89 c7             	mov    %rax,%rdi
   140004392:	4c 39 e1             	cmp    %r12,%rcx
   140004395:	74 2a                	je     1400043c1 <_ZN13NaturalBinarymlES_+0x7a1>
   140004397:	4c 8b 29             	mov    (%rcx),%r13
   14000439a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000439f:	e8 fc 2f 00 00       	call   1400073a0 <_ZdlPvy>
   1400043a4:	4c 89 e9             	mov    %r13,%rcx
   1400043a7:	eb e9                	jmp    140004392 <_ZN13NaturalBinarymlES_+0x772>
   1400043a9:	48 8b 29             	mov    (%rcx),%rbp
   1400043ac:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043b1:	e8 ea 2f 00 00       	call   1400073a0 <_ZdlPvy>
   1400043b6:	48 89 e9             	mov    %rbp,%rcx
   1400043b9:	e9 2f ff ff ff       	jmp    1400042ed <_ZN13NaturalBinarymlES_+0x6cd>
   1400043be:	48 89 c7             	mov    %rax,%rdi
   1400043c1:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   1400043c8:	00 
   1400043c9:	48 39 d9             	cmp    %rbx,%rcx
   1400043cc:	74 34                	je     140004402 <_ZN13NaturalBinarymlES_+0x7e2>
   1400043ce:	4c 8b 21             	mov    (%rcx),%r12
   1400043d1:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043d6:	e8 c5 2f 00 00       	call   1400073a0 <_ZdlPvy>
   1400043db:	4c 89 e1             	mov    %r12,%rcx
   1400043de:	eb e9                	jmp    1400043c9 <_ZN13NaturalBinarymlES_+0x7a9>
   1400043e0:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   1400043e7:	00 
   1400043e8:	48 89 c7             	mov    %rax,%rdi
   1400043eb:	48 39 d9             	cmp    %rbx,%rcx
   1400043ee:	74 12                	je     140004402 <_ZN13NaturalBinarymlES_+0x7e2>
   1400043f0:	4c 8b 21             	mov    (%rcx),%r12
   1400043f3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400043f8:	e8 a3 2f 00 00       	call   1400073a0 <_ZdlPvy>
   1400043fd:	4c 89 e1             	mov    %r12,%rcx
   140004400:	eb e9                	jmp    1400043eb <_ZN13NaturalBinarymlES_+0x7cb>
   140004402:	48 89 fb             	mov    %rdi,%rbx
   140004405:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   14000440c:	00 
   14000440d:	48 39 e9             	cmp    %rbp,%rcx
   140004410:	74 39                	je     14000444b <_ZN13NaturalBinarymlES_+0x82b>
   140004412:	48 8b 39             	mov    (%rcx),%rdi
   140004415:	ba 18 00 00 00       	mov    $0x18,%edx
   14000441a:	e8 81 2f 00 00       	call   1400073a0 <_ZdlPvy>
   14000441f:	48 89 f9             	mov    %rdi,%rcx
   140004422:	eb e9                	jmp    14000440d <_ZN13NaturalBinarymlES_+0x7ed>
   140004424:	48 89 c3             	mov    %rax,%rbx
   140004427:	eb dc                	jmp    140004405 <_ZN13NaturalBinarymlES_+0x7e5>
   140004429:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140004430:	00 
   140004431:	48 89 c3             	mov    %rax,%rbx
   140004434:	48 39 e9             	cmp    %rbp,%rcx
   140004437:	74 12                	je     14000444b <_ZN13NaturalBinarymlES_+0x82b>
   140004439:	48 8b 39             	mov    (%rcx),%rdi
   14000443c:	ba 18 00 00 00       	mov    $0x18,%edx
   140004441:	e8 5a 2f 00 00       	call   1400073a0 <_ZdlPvy>
   140004446:	48 89 f9             	mov    %rdi,%rcx
   140004449:	eb e9                	jmp    140004434 <_ZN13NaturalBinarymlES_+0x814>
   14000444b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
   140004452:	00 
   140004453:	48 8b 08             	mov    (%rax),%rcx
   140004456:	48 39 8c 24 60 01 00 	cmp    %rcx,0x160(%rsp)
   14000445d:	00 
   14000445e:	0f 84 26 fe ff ff    	je     14000428a <_ZN13NaturalBinarymlES_+0x66a>
   140004464:	48 8b 39             	mov    (%rcx),%rdi
   140004467:	ba 18 00 00 00       	mov    $0x18,%edx
   14000446c:	e8 2f 2f 00 00       	call   1400073a0 <_ZdlPvy>
   140004471:	48 89 f9             	mov    %rdi,%rcx
   140004474:	eb e0                	jmp    140004456 <_ZN13NaturalBinarymlES_+0x836>
   140004476:	48 8b 29             	mov    (%rcx),%rbp
   140004479:	ba 18 00 00 00       	mov    $0x18,%edx
   14000447e:	e8 1d 2f 00 00       	call   1400073a0 <_ZdlPvy>
   140004483:	48 89 e9             	mov    %rbp,%rcx
   140004486:	e9 c9 fe ff ff       	jmp    140004354 <_ZN13NaturalBinarymlES_+0x734>
   14000448b:	48 8b 39             	mov    (%rcx),%rdi
   14000448e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004493:	e8 08 2f 00 00       	call   1400073a0 <_ZdlPvy>
   140004498:	48 89 f9             	mov    %rdi,%rcx
   14000449b:	e9 d6 fe ff ff       	jmp    140004376 <_ZN13NaturalBinarymlES_+0x756>

00000001400044a0 <_ZN13NaturalBinary12long_divsionES_PS_>:
   1400044a0:	41 57                	push   %r15
   1400044a2:	41 56                	push   %r14
   1400044a4:	41 55                	push   %r13
   1400044a6:	41 54                	push   %r12
   1400044a8:	55                   	push   %rbp
   1400044a9:	57                   	push   %rdi
   1400044aa:	56                   	push   %rsi
   1400044ab:	53                   	push   %rbx
   1400044ac:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
   1400044b3:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   1400044ba:	00 
   1400044bb:	0f 11 bc 24 b0 00 00 	movups %xmm7,0xb0(%rsp)
   1400044c2:	00 
   1400044c3:	48 8d 74 24 60       	lea    0x60(%rsp),%rsi
   1400044c8:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   1400044cd:	48 89 d3             	mov    %rdx,%rbx
   1400044d0:	4c 89 c5             	mov    %r8,%rbp
   1400044d3:	48 89 8c 24 10 01 00 	mov    %rcx,0x110(%rsp)
   1400044da:	00 
   1400044db:	4c 89 cf             	mov    %r9,%rdi
   1400044de:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   1400044e3:	e8 b8 d9 ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400044e8:	4c 89 e1             	mov    %r12,%rcx
   1400044eb:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400044ef:	e8 ac d9 ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400044f4:	48 39 df             	cmp    %rbx,%rdi
   1400044f7:	74 0b                	je     140004504 <_ZN13NaturalBinary12long_divsionES_PS_+0x64>
   1400044f9:	48 89 da             	mov    %rbx,%rdx
   1400044fc:	48 89 f9             	mov    %rdi,%rcx
   1400044ff:	e8 4c d8 ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004504:	4c 8d 74 24 40       	lea    0x40(%rsp),%r14
   140004509:	48 8b 45 08          	mov    0x8(%rbp),%rax
   14000450d:	4c 89 f1             	mov    %r14,%rcx
   140004510:	0f b6 40 10          	movzbl 0x10(%rax),%eax
   140004514:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140004518:	e8 63 d1 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000451d:	48 8b 1f             	mov    (%rdi),%rbx
   140004520:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140004525:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   14000452c:	00 00 
   14000452e:	48 39 df             	cmp    %rbx,%rdi
   140004531:	74 2f                	je     140004562 <_ZN13NaturalBinary12long_divsionES_PS_+0xc2>
   140004533:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004538:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000453d:	e8 56 2e 00 00       	call   140007398 <_Znwy>
   140004542:	48 89 c1             	mov    %rax,%rcx
   140004545:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004549:	48 89 f2             	mov    %rsi,%rdx
   14000454c:	88 41 10             	mov    %al,0x10(%rcx)
   14000454f:	e8 a4 2e 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004554:	48 8b 1b             	mov    (%rbx),%rbx
   140004557:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   14000455d:	48 39 df             	cmp    %rbx,%rdi
   140004560:	75 d6                	jne    140004538 <_ZN13NaturalBinary12long_divsionES_PS_+0x98>
   140004562:	4c 8d bc 24 80 00 00 	lea    0x80(%rsp),%r15
   140004569:	00 
   14000456a:	44 0f b6 44 24 40    	movzbl 0x40(%rsp),%r8d
   140004570:	45 31 c9             	xor    %r9d,%r9d
   140004573:	48 89 f2             	mov    %rsi,%rdx
   140004576:	4c 89 f9             	mov    %r15,%rcx
   140004579:	e8 c2 e1 ff ff       	call   140002740 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   14000457e:	4c 89 fa             	mov    %r15,%rdx
   140004581:	4c 89 e1             	mov    %r12,%rcx
   140004584:	e8 c7 d7 ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004589:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140004590:	00 
   140004591:	4c 39 fb             	cmp    %r15,%rbx
   140004594:	74 1f                	je     1400045b5 <_ZN13NaturalBinary12long_divsionES_PS_+0x115>
   140004596:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000459d:	00 00 00 
   1400045a0:	48 89 d9             	mov    %rbx,%rcx
   1400045a3:	48 8b 1b             	mov    (%rbx),%rbx
   1400045a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045ab:	e8 f0 2d 00 00       	call   1400073a0 <_ZdlPvy>
   1400045b0:	4c 39 fb             	cmp    %r15,%rbx
   1400045b3:	75 eb                	jne    1400045a0 <_ZN13NaturalBinary12long_divsionES_PS_+0x100>
   1400045b5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400045ba:	48 39 f3             	cmp    %rsi,%rbx
   1400045bd:	74 16                	je     1400045d5 <_ZN13NaturalBinary12long_divsionES_PS_+0x135>
   1400045bf:	90                   	nop
   1400045c0:	48 89 d9             	mov    %rbx,%rcx
   1400045c3:	48 8b 1b             	mov    (%rbx),%rbx
   1400045c6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045cb:	e8 d0 2d 00 00       	call   1400073a0 <_ZdlPvy>
   1400045d0:	48 39 f3             	cmp    %rsi,%rbx
   1400045d3:	75 eb                	jne    1400045c0 <_ZN13NaturalBinary12long_divsionES_PS_+0x120>
   1400045d5:	31 db                	xor    %ebx,%ebx
   1400045d7:	48 83 7d 10 01       	cmpq   $0x1,0x10(%rbp)
   1400045dc:	74 33                	je     140004611 <_ZN13NaturalBinary12long_divsionES_PS_+0x171>
   1400045de:	66 90                	xchg   %ax,%ax
   1400045e0:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
   1400045e5:	48 83 6c 24 30 01    	subq   $0x1,0x30(%rsp)
   1400045eb:	48 83 c3 01          	add    $0x1,%rbx
   1400045ef:	4c 89 e9             	mov    %r13,%rcx
   1400045f2:	e8 f9 2d 00 00       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400045f7:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045fc:	4c 89 e9             	mov    %r13,%rcx
   1400045ff:	e8 9c 2d 00 00       	call   1400073a0 <_ZdlPvy>
   140004604:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140004608:	48 83 e8 01          	sub    $0x1,%rax
   14000460c:	48 39 c3             	cmp    %rax,%rbx
   14000460f:	72 cf                	jb     1400045e0 <_ZN13NaturalBinary12long_divsionES_PS_+0x140>
   140004611:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
   140004616:	48 85 d2             	test   %rdx,%rdx
   140004619:	0f 84 09 03 00 00    	je     140004928 <_ZN13NaturalBinary12long_divsionES_PS_+0x488>
   14000461f:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140004626:	00 
   140004627:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   14000462e:	00 
   14000462f:	66 48 0f 6e fe       	movq   %rsi,%xmm7
   140004634:	66 0f 6c ff          	punpcklqdq %xmm7,%xmm7
   140004638:	48 8b 40 10          	mov    0x10(%rax),%rax
   14000463c:	48 39 c2             	cmp    %rax,%rdx
   14000463f:	48 0f 42 d0          	cmovb  %rax,%rdx
   140004643:	e8 88 44 00 00       	call   140008ad0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>
   140004648:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   14000464f:	00 
   140004650:	4c 89 e1             	mov    %r12,%rcx
   140004653:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140004657:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000465c:	48 39 c2             	cmp    %rax,%rdx
   14000465f:	48 0f 42 d0          	cmovb  %rax,%rdx
   140004663:	e8 68 44 00 00       	call   140008ad0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>
   140004668:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000466d:	0f 11 7c 24 60       	movups %xmm7,0x60(%rsp)
   140004672:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140004679:	00 00 
   14000467b:	4c 39 e3             	cmp    %r12,%rbx
   14000467e:	74 2a                	je     1400046aa <_ZN13NaturalBinary12long_divsionES_PS_+0x20a>
   140004680:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004685:	e8 0e 2d 00 00       	call   140007398 <_Znwy>
   14000468a:	48 89 c1             	mov    %rax,%rcx
   14000468d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004691:	48 89 f2             	mov    %rsi,%rdx
   140004694:	88 41 10             	mov    %al,0x10(%rcx)
   140004697:	e8 5c 2d 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000469c:	48 8b 1b             	mov    (%rbx),%rbx
   14000469f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   1400046a5:	4c 39 e3             	cmp    %r12,%rbx
   1400046a8:	75 d6                	jne    140004680 <_ZN13NaturalBinary12long_divsionES_PS_+0x1e0>
   1400046aa:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   1400046b1:	00 
   1400046b2:	49 89 f0             	mov    %rsi,%r8
   1400046b5:	4c 89 f9             	mov    %r15,%rcx
   1400046b8:	e8 43 da ff ff       	call   140002100 <_ZN13NaturalBinaryplES_>
   1400046bd:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   1400046c4:	00 
   1400046c5:	4c 89 fa             	mov    %r15,%rdx
   1400046c8:	e8 83 d6 ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400046cd:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400046d4:	00 
   1400046d5:	66 49 0f 6e fe       	movq   %r14,%xmm7
   1400046da:	66 0f 6c ff          	punpcklqdq %xmm7,%xmm7
   1400046de:	4c 39 fb             	cmp    %r15,%rbx
   1400046e1:	74 1a                	je     1400046fd <_ZN13NaturalBinary12long_divsionES_PS_+0x25d>
   1400046e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400046e8:	48 89 d9             	mov    %rbx,%rcx
   1400046eb:	48 8b 1b             	mov    (%rbx),%rbx
   1400046ee:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046f3:	e8 a8 2c 00 00       	call   1400073a0 <_ZdlPvy>
   1400046f8:	4c 39 fb             	cmp    %r15,%rbx
   1400046fb:	75 eb                	jne    1400046e8 <_ZN13NaturalBinary12long_divsionES_PS_+0x248>
   1400046fd:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140004702:	48 39 f3             	cmp    %rsi,%rbx
   140004705:	74 1e                	je     140004725 <_ZN13NaturalBinary12long_divsionES_PS_+0x285>
   140004707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000470e:	00 00 
   140004710:	48 89 d9             	mov    %rbx,%rcx
   140004713:	48 8b 1b             	mov    (%rbx),%rbx
   140004716:	ba 18 00 00 00       	mov    $0x18,%edx
   14000471b:	e8 80 2c 00 00       	call   1400073a0 <_ZdlPvy>
   140004720:	48 39 f3             	cmp    %rsi,%rbx
   140004723:	75 eb                	jne    140004710 <_ZN13NaturalBinary12long_divsionES_PS_+0x270>
   140004725:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004729:	0f 11 7c 24 40       	movups %xmm7,0x40(%rsp)
   14000472e:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004735:	00 00 
   140004737:	48 39 dd             	cmp    %rbx,%rbp
   14000473a:	74 2e                	je     14000476a <_ZN13NaturalBinary12long_divsionES_PS_+0x2ca>
   14000473c:	0f 1f 40 00          	nopl   0x0(%rax)
   140004740:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004745:	e8 4e 2c 00 00       	call   140007398 <_Znwy>
   14000474a:	48 89 c1             	mov    %rax,%rcx
   14000474d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004751:	4c 89 f2             	mov    %r14,%rdx
   140004754:	88 41 10             	mov    %al,0x10(%rcx)
   140004757:	e8 9c 2c 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000475c:	48 8b 1b             	mov    (%rbx),%rbx
   14000475f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140004765:	48 39 dd             	cmp    %rbx,%rbp
   140004768:	75 d6                	jne    140004740 <_ZN13NaturalBinary12long_divsionES_PS_+0x2a0>
   14000476a:	4d 89 f0             	mov    %r14,%r8
   14000476d:	4c 89 e2             	mov    %r12,%rdx
   140004770:	48 89 f1             	mov    %rsi,%rcx
   140004773:	e8 a8 f4 ff ff       	call   140003c20 <_ZN13NaturalBinarymlES_>
   140004778:	49 89 f0             	mov    %rsi,%r8
   14000477b:	48 89 fa             	mov    %rdi,%rdx
   14000477e:	4c 89 f9             	mov    %r15,%rcx
   140004781:	e8 9a dc ff ff       	call   140002420 <_ZN13NaturalBinarymiES_>
   140004786:	4c 89 fa             	mov    %r15,%rdx
   140004789:	48 89 f9             	mov    %rdi,%rcx
   14000478c:	e8 bf d5 ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004791:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140004798:	00 
   140004799:	4c 39 fb             	cmp    %r15,%rbx
   14000479c:	74 17                	je     1400047b5 <_ZN13NaturalBinary12long_divsionES_PS_+0x315>
   14000479e:	66 90                	xchg   %ax,%ax
   1400047a0:	48 89 d9             	mov    %rbx,%rcx
   1400047a3:	48 8b 1b             	mov    (%rbx),%rbx
   1400047a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400047ab:	e8 f0 2b 00 00       	call   1400073a0 <_ZdlPvy>
   1400047b0:	4c 39 fb             	cmp    %r15,%rbx
   1400047b3:	75 eb                	jne    1400047a0 <_ZN13NaturalBinary12long_divsionES_PS_+0x300>
   1400047b5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400047ba:	48 39 f3             	cmp    %rsi,%rbx
   1400047bd:	74 16                	je     1400047d5 <_ZN13NaturalBinary12long_divsionES_PS_+0x335>
   1400047bf:	90                   	nop
   1400047c0:	48 89 d9             	mov    %rbx,%rcx
   1400047c3:	48 8b 1b             	mov    (%rbx),%rbx
   1400047c6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400047cb:	e8 d0 2b 00 00       	call   1400073a0 <_ZdlPvy>
   1400047d0:	48 39 f3             	cmp    %rsi,%rbx
   1400047d3:	75 eb                	jne    1400047c0 <_ZN13NaturalBinary12long_divsionES_PS_+0x320>
   1400047d5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400047da:	4c 39 f3             	cmp    %r14,%rbx
   1400047dd:	74 16                	je     1400047f5 <_ZN13NaturalBinary12long_divsionES_PS_+0x355>
   1400047df:	90                   	nop
   1400047e0:	48 89 d9             	mov    %rbx,%rcx
   1400047e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400047e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400047eb:	e8 b0 2b 00 00       	call   1400073a0 <_ZdlPvy>
   1400047f0:	4c 39 f3             	cmp    %r14,%rbx
   1400047f3:	75 eb                	jne    1400047e0 <_ZN13NaturalBinary12long_divsionES_PS_+0x340>
   1400047f5:	4c 89 f9             	mov    %r15,%rcx
   1400047f8:	e8 a3 d6 ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400047fd:	4c 89 fa             	mov    %r15,%rdx
   140004800:	4c 89 e1             	mov    %r12,%rcx
   140004803:	e8 88 e4 ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   140004808:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   14000480f:	00 
   140004810:	41 89 c5             	mov    %eax,%r13d
   140004813:	4c 39 fb             	cmp    %r15,%rbx
   140004816:	74 1d                	je     140004835 <_ZN13NaturalBinary12long_divsionES_PS_+0x395>
   140004818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000481f:	00 
   140004820:	48 89 d9             	mov    %rbx,%rcx
   140004823:	48 8b 1b             	mov    (%rbx),%rbx
   140004826:	ba 18 00 00 00       	mov    $0x18,%edx
   14000482b:	e8 70 2b 00 00       	call   1400073a0 <_ZdlPvy>
   140004830:	4c 39 fb             	cmp    %r15,%rbx
   140004833:	75 eb                	jne    140004820 <_ZN13NaturalBinary12long_divsionES_PS_+0x380>
   140004835:	45 84 ed             	test   %r13b,%r13b
   140004838:	0f 85 cb fc ff ff    	jne    140004509 <_ZN13NaturalBinary12long_divsionES_PS_+0x69>
   14000483e:	66 49 0f 6e c7       	movq   %r15,%xmm0
   140004843:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   140004847:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   14000484e:	00 00 00 00 00 
   140004853:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004857:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   14000485e:	00 
   14000485f:	48 39 dd             	cmp    %rbx,%rbp
   140004862:	74 31                	je     140004895 <_ZN13NaturalBinary12long_divsionES_PS_+0x3f5>
   140004864:	0f 1f 40 00          	nopl   0x0(%rax)
   140004868:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000486d:	e8 26 2b 00 00       	call   140007398 <_Znwy>
   140004872:	48 89 c1             	mov    %rax,%rcx
   140004875:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004879:	4c 89 fa             	mov    %r15,%rdx
   14000487c:	88 41 10             	mov    %al,0x10(%rcx)
   14000487f:	e8 74 2b 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004884:	48 8b 1b             	mov    (%rbx),%rbx
   140004887:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   14000488e:	00 01 
   140004890:	48 39 dd             	cmp    %rbx,%rbp
   140004893:	75 d3                	jne    140004868 <_ZN13NaturalBinary12long_divsionES_PS_+0x3c8>
   140004895:	4c 89 fa             	mov    %r15,%rdx
   140004898:	48 89 f9             	mov    %rdi,%rcx
   14000489b:	e8 80 e8 ff ff       	call   140003120 <_ZN13NaturalBinarygeES_>
   1400048a0:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400048a7:	00 
   1400048a8:	41 89 c5             	mov    %eax,%r13d
   1400048ab:	4c 39 fb             	cmp    %r15,%rbx
   1400048ae:	74 15                	je     1400048c5 <_ZN13NaturalBinary12long_divsionES_PS_+0x425>
   1400048b0:	48 89 d9             	mov    %rbx,%rcx
   1400048b3:	48 8b 1b             	mov    (%rbx),%rbx
   1400048b6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400048bb:	e8 e0 2a 00 00       	call   1400073a0 <_ZdlPvy>
   1400048c0:	4c 39 fb             	cmp    %r15,%rbx
   1400048c3:	75 eb                	jne    1400048b0 <_ZN13NaturalBinary12long_divsionES_PS_+0x410>
   1400048c5:	45 84 ed             	test   %r13b,%r13b
   1400048c8:	0f 85 97 00 00 00    	jne    140004965 <_ZN13NaturalBinary12long_divsionES_PS_+0x4c5>
   1400048ce:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   1400048d3:	4c 39 e3             	cmp    %r12,%rbx
   1400048d6:	74 1d                	je     1400048f5 <_ZN13NaturalBinary12long_divsionES_PS_+0x455>
   1400048d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400048df:	00 
   1400048e0:	48 89 d9             	mov    %rbx,%rcx
   1400048e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400048e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400048eb:	e8 b0 2a 00 00       	call   1400073a0 <_ZdlPvy>
   1400048f0:	4c 39 e3             	cmp    %r12,%rbx
   1400048f3:	75 eb                	jne    1400048e0 <_ZN13NaturalBinary12long_divsionES_PS_+0x440>
   1400048f5:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   1400048fc:	00 
   1400048fd:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   140004904:	00 
   140004905:	0f 10 bc 24 b0 00 00 	movups 0xb0(%rsp),%xmm7
   14000490c:	00 
   14000490d:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
   140004914:	5b                   	pop    %rbx
   140004915:	5e                   	pop    %rsi
   140004916:	5f                   	pop    %rdi
   140004917:	5d                   	pop    %rbp
   140004918:	41 5c                	pop    %r12
   14000491a:	41 5d                	pop    %r13
   14000491c:	41 5e                	pop    %r14
   14000491e:	41 5f                	pop    %r15
   140004920:	c3                   	ret
   140004921:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004928:	31 d2                	xor    %edx,%edx
   14000492a:	4c 89 f9             	mov    %r15,%rcx
   14000492d:	e8 4e cd ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140004932:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004937:	e8 5c 2a 00 00       	call   140007398 <_Znwy>
   14000493c:	48 89 c1             	mov    %rax,%rcx
   14000493f:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140004946:	00 
   140004947:	4c 89 e2             	mov    %r12,%rdx
   14000494a:	88 41 10             	mov    %al,0x10(%rcx)
   14000494d:	e8 a6 2a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004952:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140004957:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000495b:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
   140004960:	e9 ba fc ff ff       	jmp    14000461f <_ZN13NaturalBinary12long_divsionES_PS_+0x17f>
   140004965:	66 49 0f 6e c6       	movq   %r14,%xmm0
   14000496a:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
   14000496e:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004975:	00 00 
   140004977:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000497b:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140004980:	48 39 dd             	cmp    %rbx,%rbp
   140004983:	74 2a                	je     1400049af <_ZN13NaturalBinary12long_divsionES_PS_+0x50f>
   140004985:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000498a:	e8 09 2a 00 00       	call   140007398 <_Znwy>
   14000498f:	48 89 c1             	mov    %rax,%rcx
   140004992:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004996:	4c 89 f2             	mov    %r14,%rdx
   140004999:	88 41 10             	mov    %al,0x10(%rcx)
   14000499c:	e8 57 2a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400049a1:	48 8b 1b             	mov    (%rbx),%rbx
   1400049a4:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400049aa:	48 39 dd             	cmp    %rbx,%rbp
   1400049ad:	75 d6                	jne    140004985 <_ZN13NaturalBinary12long_divsionES_PS_+0x4e5>
   1400049af:	4d 89 f0             	mov    %r14,%r8
   1400049b2:	48 89 fa             	mov    %rdi,%rdx
   1400049b5:	4c 89 f9             	mov    %r15,%rcx
   1400049b8:	e8 63 da ff ff       	call   140002420 <_ZN13NaturalBinarymiES_>
   1400049bd:	66 48 0f 6e f6       	movq   %rsi,%xmm6
   1400049c2:	4c 89 fa             	mov    %r15,%rdx
   1400049c5:	48 89 f9             	mov    %rdi,%rcx
   1400049c8:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400049cc:	e8 7f d3 ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400049d1:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   1400049d8:	00 
   1400049d9:	4c 39 fb             	cmp    %r15,%rbx
   1400049dc:	74 15                	je     1400049f3 <_ZN13NaturalBinary12long_divsionES_PS_+0x553>
   1400049de:	48 89 d9             	mov    %rbx,%rcx
   1400049e1:	48 8b 1b             	mov    (%rbx),%rbx
   1400049e4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049e9:	e8 b2 29 00 00       	call   1400073a0 <_ZdlPvy>
   1400049ee:	4c 39 fb             	cmp    %r15,%rbx
   1400049f1:	75 eb                	jne    1400049de <_ZN13NaturalBinary12long_divsionES_PS_+0x53e>
   1400049f3:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400049f8:	4c 39 f3             	cmp    %r14,%rbx
   1400049fb:	74 15                	je     140004a12 <_ZN13NaturalBinary12long_divsionES_PS_+0x572>
   1400049fd:	48 89 d9             	mov    %rbx,%rcx
   140004a00:	48 8b 1b             	mov    (%rbx),%rbx
   140004a03:	ba 18 00 00 00       	mov    $0x18,%edx
   140004a08:	e8 93 29 00 00       	call   1400073a0 <_ZdlPvy>
   140004a0d:	4c 39 f3             	cmp    %r14,%rbx
   140004a10:	75 eb                	jne    1400049fd <_ZN13NaturalBinary12long_divsionES_PS_+0x55d>
   140004a12:	ba 01 00 00 00       	mov    $0x1,%edx
   140004a17:	4c 89 f9             	mov    %r15,%rcx
   140004a1a:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140004a1f:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140004a26:	00 00 
   140004a28:	e8 53 cc ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140004a2d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004a32:	e8 61 29 00 00       	call   140007398 <_Znwy>
   140004a37:	48 89 c1             	mov    %rax,%rcx
   140004a3a:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140004a41:	00 
   140004a42:	48 89 f2             	mov    %rsi,%rdx
   140004a45:	88 41 10             	mov    %al,0x10(%rcx)
   140004a48:	e8 ab 29 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004a4d:	48 8b 94 24 10 01 00 	mov    0x110(%rsp),%rdx
   140004a54:	00 
   140004a55:	49 89 f0             	mov    %rsi,%r8
   140004a58:	4c 89 f9             	mov    %r15,%rcx
   140004a5b:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140004a61:	e8 9a d6 ff ff       	call   140002100 <_ZN13NaturalBinaryplES_>
   140004a66:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
   140004a6d:	00 
   140004a6e:	4c 89 fa             	mov    %r15,%rdx
   140004a71:	e8 da d2 ff ff       	call   140001d50 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004a76:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
   140004a7d:	00 
   140004a7e:	4c 39 fb             	cmp    %r15,%rbx
   140004a81:	74 15                	je     140004a98 <_ZN13NaturalBinary12long_divsionES_PS_+0x5f8>
   140004a83:	48 89 d9             	mov    %rbx,%rcx
   140004a86:	48 8b 1b             	mov    (%rbx),%rbx
   140004a89:	ba 18 00 00 00       	mov    $0x18,%edx
   140004a8e:	e8 0d 29 00 00       	call   1400073a0 <_ZdlPvy>
   140004a93:	4c 39 fb             	cmp    %r15,%rbx
   140004a96:	75 eb                	jne    140004a83 <_ZN13NaturalBinary12long_divsionES_PS_+0x5e3>
   140004a98:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140004a9d:	48 39 f3             	cmp    %rsi,%rbx
   140004aa0:	0f 84 28 fe ff ff    	je     1400048ce <_ZN13NaturalBinary12long_divsionES_PS_+0x42e>
   140004aa6:	48 89 d9             	mov    %rbx,%rcx
   140004aa9:	48 8b 1b             	mov    (%rbx),%rbx
   140004aac:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ab1:	e8 ea 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004ab6:	48 39 f3             	cmp    %rsi,%rbx
   140004ab9:	75 eb                	jne    140004aa6 <_ZN13NaturalBinary12long_divsionES_PS_+0x606>
   140004abb:	e9 0e fe ff ff       	jmp    1400048ce <_ZN13NaturalBinary12long_divsionES_PS_+0x42e>
   140004ac0:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004ac7:	00 
   140004ac8:	48 89 c3             	mov    %rax,%rbx
   140004acb:	4c 39 f9             	cmp    %r15,%rcx
   140004ace:	74 15                	je     140004ae5 <_ZN13NaturalBinary12long_divsionES_PS_+0x645>
   140004ad0:	48 8b 39             	mov    (%rcx),%rdi
   140004ad3:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ad8:	e8 c3 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004add:	48 89 f9             	mov    %rdi,%rcx
   140004ae0:	eb e9                	jmp    140004acb <_ZN13NaturalBinary12long_divsionES_PS_+0x62b>
   140004ae2:	48 89 c3             	mov    %rax,%rbx
   140004ae5:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004aea:	48 39 f1             	cmp    %rsi,%rcx
   140004aed:	74 75                	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004aef:	48 8b 39             	mov    (%rcx),%rdi
   140004af2:	ba 18 00 00 00       	mov    $0x18,%edx
   140004af7:	e8 a4 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004afc:	48 89 f9             	mov    %rdi,%rcx
   140004aff:	eb e9                	jmp    140004aea <_ZN13NaturalBinary12long_divsionES_PS_+0x64a>
   140004b01:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004b06:	48 89 c3             	mov    %rax,%rbx
   140004b09:	48 39 f1             	cmp    %rsi,%rcx
   140004b0c:	74 56                	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004b0e:	48 8b 39             	mov    (%rcx),%rdi
   140004b11:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b16:	e8 85 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004b1b:	48 89 f9             	mov    %rdi,%rcx
   140004b1e:	eb e9                	jmp    140004b09 <_ZN13NaturalBinary12long_divsionES_PS_+0x669>
   140004b20:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004b27:	00 
   140004b28:	48 89 c3             	mov    %rax,%rbx
   140004b2b:	4c 39 f9             	cmp    %r15,%rcx
   140004b2e:	74 15                	je     140004b45 <_ZN13NaturalBinary12long_divsionES_PS_+0x6a5>
   140004b30:	48 8b 31             	mov    (%rcx),%rsi
   140004b33:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b38:	e8 63 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004b3d:	48 89 f1             	mov    %rsi,%rcx
   140004b40:	eb e9                	jmp    140004b2b <_ZN13NaturalBinary12long_divsionES_PS_+0x68b>
   140004b42:	48 89 c3             	mov    %rax,%rbx
   140004b45:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004b4a:	4c 39 f1             	cmp    %r14,%rcx
   140004b4d:	74 15                	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004b4f:	48 8b 31             	mov    (%rcx),%rsi
   140004b52:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b57:	e8 44 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004b5c:	48 89 f1             	mov    %rsi,%rcx
   140004b5f:	eb e9                	jmp    140004b4a <_ZN13NaturalBinary12long_divsionES_PS_+0x6aa>
   140004b61:	48 89 c3             	mov    %rax,%rbx
   140004b64:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004b69:	4c 39 e1             	cmp    %r12,%rcx
   140004b6c:	0f 84 80 00 00 00    	je     140004bf2 <_ZN13NaturalBinary12long_divsionES_PS_+0x752>
   140004b72:	48 8b 31             	mov    (%rcx),%rsi
   140004b75:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b7a:	e8 21 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004b7f:	48 89 f1             	mov    %rsi,%rcx
   140004b82:	eb e5                	jmp    140004b69 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c9>
   140004b84:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004b89:	48 89 c3             	mov    %rax,%rbx
   140004b8c:	4c 39 f1             	cmp    %r14,%rcx
   140004b8f:	74 d3                	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004b91:	48 8b 31             	mov    (%rcx),%rsi
   140004b94:	ba 18 00 00 00       	mov    $0x18,%edx
   140004b99:	e8 02 28 00 00       	call   1400073a0 <_ZdlPvy>
   140004b9e:	48 89 f1             	mov    %rsi,%rcx
   140004ba1:	eb e9                	jmp    140004b8c <_ZN13NaturalBinary12long_divsionES_PS_+0x6ec>
   140004ba3:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004baa:	00 
   140004bab:	48 89 c3             	mov    %rax,%rbx
   140004bae:	4c 39 f9             	cmp    %r15,%rcx
   140004bb1:	0f 84 1a 01 00 00    	je     140004cd1 <_ZN13NaturalBinary12long_divsionES_PS_+0x831>
   140004bb7:	48 8b 39             	mov    (%rcx),%rdi
   140004bba:	ba 18 00 00 00       	mov    $0x18,%edx
   140004bbf:	e8 dc 27 00 00       	call   1400073a0 <_ZdlPvy>
   140004bc4:	48 89 f9             	mov    %rdi,%rcx
   140004bc7:	eb e5                	jmp    140004bae <_ZN13NaturalBinary12long_divsionES_PS_+0x70e>
   140004bc9:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004bd0:	00 
   140004bd1:	48 89 c3             	mov    %rax,%rbx
   140004bd4:	4c 39 f9             	cmp    %r15,%rcx
   140004bd7:	0f 84 d5 00 00 00    	je     140004cb2 <_ZN13NaturalBinary12long_divsionES_PS_+0x812>
   140004bdd:	48 8b 39             	mov    (%rcx),%rdi
   140004be0:	ba 18 00 00 00       	mov    $0x18,%edx
   140004be5:	e8 b6 27 00 00       	call   1400073a0 <_ZdlPvy>
   140004bea:	48 89 f9             	mov    %rdi,%rcx
   140004bed:	eb e5                	jmp    140004bd4 <_ZN13NaturalBinary12long_divsionES_PS_+0x734>
   140004bef:	48 89 c3             	mov    %rax,%rbx
   140004bf2:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   140004bf9:	00 
   140004bfa:	48 8b 08             	mov    (%rax),%rcx
   140004bfd:	48 3b 8c 24 10 01 00 	cmp    0x110(%rsp),%rcx
   140004c04:	00 
   140004c05:	0f 84 e6 00 00 00    	je     140004cf1 <_ZN13NaturalBinary12long_divsionES_PS_+0x851>
   140004c0b:	48 8b 31             	mov    (%rcx),%rsi
   140004c0e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c13:	e8 88 27 00 00       	call   1400073a0 <_ZdlPvy>
   140004c18:	48 89 f1             	mov    %rsi,%rcx
   140004c1b:	eb e0                	jmp    140004bfd <_ZN13NaturalBinary12long_divsionES_PS_+0x75d>
   140004c1d:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004c24:	00 
   140004c25:	48 89 c3             	mov    %rax,%rbx
   140004c28:	4c 39 f9             	cmp    %r15,%rcx
   140004c2b:	0f 84 33 ff ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004c31:	48 8b 31             	mov    (%rcx),%rsi
   140004c34:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c39:	e8 62 27 00 00       	call   1400073a0 <_ZdlPvy>
   140004c3e:	48 89 f1             	mov    %rsi,%rcx
   140004c41:	eb e5                	jmp    140004c28 <_ZN13NaturalBinary12long_divsionES_PS_+0x788>
   140004c43:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004c4a:	00 
   140004c4b:	48 89 c3             	mov    %rax,%rbx
   140004c4e:	4c 39 f9             	cmp    %r15,%rcx
   140004c51:	0f 84 0d ff ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004c57:	48 8b 31             	mov    (%rcx),%rsi
   140004c5a:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c5f:	e8 3c 27 00 00       	call   1400073a0 <_ZdlPvy>
   140004c64:	48 89 f1             	mov    %rsi,%rcx
   140004c67:	eb e5                	jmp    140004c4e <_ZN13NaturalBinary12long_divsionES_PS_+0x7ae>
   140004c69:	48 89 c3             	mov    %rax,%rbx
   140004c6c:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004c71:	4c 39 f1             	cmp    %r14,%rcx
   140004c74:	0f 84 ea fe ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004c7a:	48 8b 31             	mov    (%rcx),%rsi
   140004c7d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c82:	e8 19 27 00 00       	call   1400073a0 <_ZdlPvy>
   140004c87:	48 89 f1             	mov    %rsi,%rcx
   140004c8a:	eb e5                	jmp    140004c71 <_ZN13NaturalBinary12long_divsionES_PS_+0x7d1>
   140004c8c:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004c91:	48 89 c3             	mov    %rax,%rbx
   140004c94:	4c 39 f1             	cmp    %r14,%rcx
   140004c97:	0f 84 c7 fe ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004c9d:	48 8b 31             	mov    (%rcx),%rsi
   140004ca0:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ca5:	e8 f6 26 00 00       	call   1400073a0 <_ZdlPvy>
   140004caa:	48 89 f1             	mov    %rsi,%rcx
   140004cad:	eb e5                	jmp    140004c94 <_ZN13NaturalBinary12long_divsionES_PS_+0x7f4>
   140004caf:	48 89 c3             	mov    %rax,%rbx
   140004cb2:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004cb7:	48 39 f1             	cmp    %rsi,%rcx
   140004cba:	74 b0                	je     140004c6c <_ZN13NaturalBinary12long_divsionES_PS_+0x7cc>
   140004cbc:	48 8b 39             	mov    (%rcx),%rdi
   140004cbf:	ba 18 00 00 00       	mov    $0x18,%edx
   140004cc4:	e8 d7 26 00 00       	call   1400073a0 <_ZdlPvy>
   140004cc9:	48 89 f9             	mov    %rdi,%rcx
   140004ccc:	eb e9                	jmp    140004cb7 <_ZN13NaturalBinary12long_divsionES_PS_+0x817>
   140004cce:	48 89 c3             	mov    %rax,%rbx
   140004cd1:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004cd6:	48 39 f1             	cmp    %rsi,%rcx
   140004cd9:	0f 84 85 fe ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004cdf:	48 8b 39             	mov    (%rcx),%rdi
   140004ce2:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ce7:	e8 b4 26 00 00       	call   1400073a0 <_ZdlPvy>
   140004cec:	48 89 f9             	mov    %rdi,%rcx
   140004cef:	eb e5                	jmp    140004cd6 <_ZN13NaturalBinary12long_divsionES_PS_+0x836>
   140004cf1:	48 89 d9             	mov    %rbx,%rcx
   140004cf4:	e8 e7 37 00 00       	call   1400084e0 <_Unwind_Resume>
   140004cf9:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004cfe:	48 89 c3             	mov    %rax,%rbx
   140004d01:	48 39 f1             	cmp    %rsi,%rcx
   140004d04:	0f 84 5a fe ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004d0a:	48 8b 39             	mov    (%rcx),%rdi
   140004d0d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d12:	e8 89 26 00 00       	call   1400073a0 <_ZdlPvy>
   140004d17:	48 89 f9             	mov    %rdi,%rcx
   140004d1a:	eb e5                	jmp    140004d01 <_ZN13NaturalBinary12long_divsionES_PS_+0x861>
   140004d1c:	48 89 c3             	mov    %rax,%rbx
   140004d1f:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004d24:	48 39 f1             	cmp    %rsi,%rcx
   140004d27:	0f 84 37 fe ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004d2d:	48 8b 39             	mov    (%rcx),%rdi
   140004d30:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d35:	e8 66 26 00 00       	call   1400073a0 <_ZdlPvy>
   140004d3a:	48 89 f9             	mov    %rdi,%rcx
   140004d3d:	eb e5                	jmp    140004d24 <_ZN13NaturalBinary12long_divsionES_PS_+0x884>
   140004d3f:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004d46:	00 
   140004d47:	48 89 c3             	mov    %rax,%rbx
   140004d4a:	4c 39 f9             	cmp    %r15,%rcx
   140004d4d:	74 d0                	je     140004d1f <_ZN13NaturalBinary12long_divsionES_PS_+0x87f>
   140004d4f:	48 8b 39             	mov    (%rcx),%rdi
   140004d52:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d57:	e8 44 26 00 00       	call   1400073a0 <_ZdlPvy>
   140004d5c:	48 89 f9             	mov    %rdi,%rcx
   140004d5f:	eb e9                	jmp    140004d4a <_ZN13NaturalBinary12long_divsionES_PS_+0x8aa>
   140004d61:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004d66:	48 89 c3             	mov    %rax,%rbx
   140004d69:	48 39 f1             	cmp    %rsi,%rcx
   140004d6c:	0f 84 f2 fd ff ff    	je     140004b64 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004d72:	48 8b 39             	mov    (%rcx),%rdi
   140004d75:	ba 18 00 00 00       	mov    $0x18,%edx
   140004d7a:	e8 21 26 00 00       	call   1400073a0 <_ZdlPvy>
   140004d7f:	48 89 f9             	mov    %rdi,%rcx
   140004d82:	eb e5                	jmp    140004d69 <_ZN13NaturalBinary12long_divsionES_PS_+0x8c9>
   140004d84:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140004d8b:	00 00 00 00 
   140004d8f:	90                   	nop

0000000140004d90 <_ZN13NaturalBinaryrmES_>:
   140004d90:	41 55                	push   %r13
   140004d92:	41 54                	push   %r12
   140004d94:	55                   	push   %rbp
   140004d95:	57                   	push   %rdi
   140004d96:	56                   	push   %rsi
   140004d97:	53                   	push   %rbx
   140004d98:	48 83 ec 68          	sub    $0x68,%rsp
   140004d9c:	4c 89 c7             	mov    %r8,%rdi
   140004d9f:	48 89 cd             	mov    %rcx,%rbp
   140004da2:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   140004da7:	49 89 d4             	mov    %rdx,%r12
   140004daa:	e8 f1 d0 ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140004daf:	48 83 7f 10 01       	cmpq   $0x1,0x10(%rdi)
   140004db4:	0f 84 be 00 00 00    	je     140004e78 <_ZN13NaturalBinaryrmES_+0xe8>
   140004dba:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004dbf:	48 8b 1f             	mov    (%rdi),%rbx
   140004dc2:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004dc9:	00 00 
   140004dcb:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004dcf:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004dd4:	48 39 df             	cmp    %rbx,%rdi
   140004dd7:	74 31                	je     140004e0a <_ZN13NaturalBinaryrmES_+0x7a>
   140004dd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004de0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004de5:	e8 ae 25 00 00       	call   140007398 <_Znwy>
   140004dea:	48 89 c1             	mov    %rax,%rcx
   140004ded:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004df1:	48 89 f2             	mov    %rsi,%rdx
   140004df4:	88 41 10             	mov    %al,0x10(%rcx)
   140004df7:	e8 fc 25 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004dfc:	48 8b 1b             	mov    (%rbx),%rbx
   140004dff:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004e05:	48 39 df             	cmp    %rbx,%rdi
   140004e08:	75 d6                	jne    140004de0 <_ZN13NaturalBinaryrmES_+0x50>
   140004e0a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140004e0f:	49 89 e9             	mov    %rbp,%r9
   140004e12:	49 89 f0             	mov    %rsi,%r8
   140004e15:	4c 89 e2             	mov    %r12,%rdx
   140004e18:	48 89 f9             	mov    %rdi,%rcx
   140004e1b:	e8 80 f6 ff ff       	call   1400044a0 <_ZN13NaturalBinary12long_divsionES_PS_>
   140004e20:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004e25:	48 39 fb             	cmp    %rdi,%rbx
   140004e28:	74 1b                	je     140004e45 <_ZN13NaturalBinaryrmES_+0xb5>
   140004e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004e30:	48 89 d9             	mov    %rbx,%rcx
   140004e33:	48 8b 1b             	mov    (%rbx),%rbx
   140004e36:	ba 18 00 00 00       	mov    $0x18,%edx
   140004e3b:	e8 60 25 00 00       	call   1400073a0 <_ZdlPvy>
   140004e40:	48 39 fb             	cmp    %rdi,%rbx
   140004e43:	75 eb                	jne    140004e30 <_ZN13NaturalBinaryrmES_+0xa0>
   140004e45:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140004e4a:	48 39 f3             	cmp    %rsi,%rbx
   140004e4d:	74 16                	je     140004e65 <_ZN13NaturalBinaryrmES_+0xd5>
   140004e4f:	90                   	nop
   140004e50:	48 89 d9             	mov    %rbx,%rcx
   140004e53:	48 8b 1b             	mov    (%rbx),%rbx
   140004e56:	ba 18 00 00 00       	mov    $0x18,%edx
   140004e5b:	e8 40 25 00 00       	call   1400073a0 <_ZdlPvy>
   140004e60:	48 39 f3             	cmp    %rsi,%rbx
   140004e63:	75 eb                	jne    140004e50 <_ZN13NaturalBinaryrmES_+0xc0>
   140004e65:	48 89 e8             	mov    %rbp,%rax
   140004e68:	48 83 c4 68          	add    $0x68,%rsp
   140004e6c:	5b                   	pop    %rbx
   140004e6d:	5e                   	pop    %rsi
   140004e6e:	5f                   	pop    %rdi
   140004e6f:	5d                   	pop    %rbp
   140004e70:	41 5c                	pop    %r12
   140004e72:	41 5d                	pop    %r13
   140004e74:	c3                   	ret
   140004e75:	0f 1f 00             	nopl   (%rax)
   140004e78:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004e7d:	49 8b 1c 24          	mov    (%r12),%rbx
   140004e81:	4c 8b 2f             	mov    (%rdi),%r13
   140004e84:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140004e8b:	00 00 
   140004e8d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004e91:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140004e96:	49 39 dc             	cmp    %rbx,%r12
   140004e99:	74 2f                	je     140004eca <_ZN13NaturalBinaryrmES_+0x13a>
   140004e9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004ea0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004ea5:	e8 ee 24 00 00       	call   140007398 <_Znwy>
   140004eaa:	48 89 c1             	mov    %rax,%rcx
   140004ead:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004eb1:	48 89 f2             	mov    %rsi,%rdx
   140004eb4:	88 41 10             	mov    %al,0x10(%rcx)
   140004eb7:	e8 3c 25 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004ebc:	48 8b 1b             	mov    (%rbx),%rbx
   140004ebf:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004ec5:	49 39 dc             	cmp    %rbx,%r12
   140004ec8:	75 d6                	jne    140004ea0 <_ZN13NaturalBinaryrmES_+0x110>
   140004eca:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140004ecf:	45 0f b6 45 10       	movzbl 0x10(%r13),%r8d
   140004ed4:	49 89 e9             	mov    %rbp,%r9
   140004ed7:	48 89 f2             	mov    %rsi,%rdx
   140004eda:	48 89 f9             	mov    %rdi,%rcx
   140004edd:	e8 5e d8 ff ff       	call   140002740 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   140004ee2:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004ee7:	48 39 fb             	cmp    %rdi,%rbx
   140004eea:	74 19                	je     140004f05 <_ZN13NaturalBinaryrmES_+0x175>
   140004eec:	0f 1f 40 00          	nopl   0x0(%rax)
   140004ef0:	48 89 d9             	mov    %rbx,%rcx
   140004ef3:	48 8b 1b             	mov    (%rbx),%rbx
   140004ef6:	ba 18 00 00 00       	mov    $0x18,%edx
   140004efb:	e8 a0 24 00 00       	call   1400073a0 <_ZdlPvy>
   140004f00:	48 39 fb             	cmp    %rdi,%rbx
   140004f03:	75 eb                	jne    140004ef0 <_ZN13NaturalBinaryrmES_+0x160>
   140004f05:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140004f0a:	48 39 f3             	cmp    %rsi,%rbx
   140004f0d:	0f 84 52 ff ff ff    	je     140004e65 <_ZN13NaturalBinaryrmES_+0xd5>
   140004f13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004f18:	48 89 d9             	mov    %rbx,%rcx
   140004f1b:	48 8b 1b             	mov    (%rbx),%rbx
   140004f1e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004f23:	e8 78 24 00 00       	call   1400073a0 <_ZdlPvy>
   140004f28:	48 39 f3             	cmp    %rsi,%rbx
   140004f2b:	75 eb                	jne    140004f18 <_ZN13NaturalBinaryrmES_+0x188>
   140004f2d:	48 89 e8             	mov    %rbp,%rax
   140004f30:	48 83 c4 68          	add    $0x68,%rsp
   140004f34:	5b                   	pop    %rbx
   140004f35:	5e                   	pop    %rsi
   140004f36:	5f                   	pop    %rdi
   140004f37:	5d                   	pop    %rbp
   140004f38:	41 5c                	pop    %r12
   140004f3a:	41 5d                	pop    %r13
   140004f3c:	c3                   	ret
   140004f3d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004f42:	48 89 c3             	mov    %rax,%rbx
   140004f45:	48 39 f1             	cmp    %rsi,%rcx
   140004f48:	74 3e                	je     140004f88 <_ZN13NaturalBinaryrmES_+0x1f8>
   140004f4a:	48 8b 39             	mov    (%rcx),%rdi
   140004f4d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004f52:	e8 49 24 00 00       	call   1400073a0 <_ZdlPvy>
   140004f57:	48 89 f9             	mov    %rdi,%rcx
   140004f5a:	eb e9                	jmp    140004f45 <_ZN13NaturalBinaryrmES_+0x1b5>
   140004f5c:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004f61:	48 89 c3             	mov    %rax,%rbx
   140004f64:	48 39 f1             	cmp    %rsi,%rcx
   140004f67:	74 1f                	je     140004f88 <_ZN13NaturalBinaryrmES_+0x1f8>
   140004f69:	48 8b 39             	mov    (%rcx),%rdi
   140004f6c:	ba 18 00 00 00       	mov    $0x18,%edx
   140004f71:	e8 2a 24 00 00       	call   1400073a0 <_ZdlPvy>
   140004f76:	48 89 f9             	mov    %rdi,%rcx
   140004f79:	eb e9                	jmp    140004f64 <_ZN13NaturalBinaryrmES_+0x1d4>
   140004f7b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004f80:	48 89 c3             	mov    %rax,%rbx
   140004f83:	48 39 f1             	cmp    %rsi,%rcx
   140004f86:	75 42                	jne    140004fca <_ZN13NaturalBinaryrmES_+0x23a>
   140004f88:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   140004f8c:	48 39 e9             	cmp    %rbp,%rcx
   140004f8f:	74 31                	je     140004fc2 <_ZN13NaturalBinaryrmES_+0x232>
   140004f91:	48 8b 31             	mov    (%rcx),%rsi
   140004f94:	ba 18 00 00 00       	mov    $0x18,%edx
   140004f99:	e8 02 24 00 00       	call   1400073a0 <_ZdlPvy>
   140004f9e:	48 89 f1             	mov    %rsi,%rcx
   140004fa1:	eb e9                	jmp    140004f8c <_ZN13NaturalBinaryrmES_+0x1fc>
   140004fa3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004fa8:	48 89 c3             	mov    %rax,%rbx
   140004fab:	48 39 f1             	cmp    %rsi,%rcx
   140004fae:	74 d8                	je     140004f88 <_ZN13NaturalBinaryrmES_+0x1f8>
   140004fb0:	48 8b 39             	mov    (%rcx),%rdi
   140004fb3:	ba 18 00 00 00       	mov    $0x18,%edx
   140004fb8:	e8 e3 23 00 00       	call   1400073a0 <_ZdlPvy>
   140004fbd:	48 89 f9             	mov    %rdi,%rcx
   140004fc0:	eb e9                	jmp    140004fab <_ZN13NaturalBinaryrmES_+0x21b>
   140004fc2:	48 89 d9             	mov    %rbx,%rcx
   140004fc5:	e8 16 35 00 00       	call   1400084e0 <_Unwind_Resume>
   140004fca:	48 8b 39             	mov    (%rcx),%rdi
   140004fcd:	ba 18 00 00 00       	mov    $0x18,%edx
   140004fd2:	e8 c9 23 00 00       	call   1400073a0 <_ZdlPvy>
   140004fd7:	48 89 f9             	mov    %rdi,%rcx
   140004fda:	eb a7                	jmp    140004f83 <_ZN13NaturalBinaryrmES_+0x1f3>
   140004fdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140004fe0 <_ZN13NaturalBinarydvES_>:
   140004fe0:	41 55                	push   %r13
   140004fe2:	41 54                	push   %r12
   140004fe4:	55                   	push   %rbp
   140004fe5:	57                   	push   %rdi
   140004fe6:	56                   	push   %rsi
   140004fe7:	53                   	push   %rbx
   140004fe8:	48 83 ec 68          	sub    $0x68,%rsp
   140004fec:	49 83 78 10 01       	cmpq   $0x1,0x10(%r8)
   140004ff1:	48 89 cd             	mov    %rcx,%rbp
   140004ff4:	49 89 d5             	mov    %rdx,%r13
   140004ff7:	4d 89 c4             	mov    %r8,%r12
   140004ffa:	0f 84 c8 00 00 00    	je     1400050c8 <_ZN13NaturalBinarydvES_+0xe8>
   140005000:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005005:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   14000500a:	48 89 f9             	mov    %rdi,%rcx
   14000500d:	e8 8e ce ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140005012:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140005017:	49 8b 1c 24          	mov    (%r12),%rbx
   14000501b:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140005022:	00 00 
   140005024:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005028:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   14000502d:	49 39 dc             	cmp    %rbx,%r12
   140005030:	74 30                	je     140005062 <_ZN13NaturalBinarydvES_+0x82>
   140005032:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005038:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000503d:	e8 56 23 00 00       	call   140007398 <_Znwy>
   140005042:	48 89 c1             	mov    %rax,%rcx
   140005045:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005049:	48 89 f2             	mov    %rsi,%rdx
   14000504c:	88 41 10             	mov    %al,0x10(%rcx)
   14000504f:	e8 a4 23 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005054:	48 8b 1b             	mov    (%rbx),%rbx
   140005057:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   14000505d:	49 39 dc             	cmp    %rbx,%r12
   140005060:	75 d6                	jne    140005038 <_ZN13NaturalBinarydvES_+0x58>
   140005062:	49 89 f9             	mov    %rdi,%r9
   140005065:	49 89 f0             	mov    %rsi,%r8
   140005068:	4c 89 ea             	mov    %r13,%rdx
   14000506b:	48 89 e9             	mov    %rbp,%rcx
   14000506e:	e8 2d f4 ff ff       	call   1400044a0 <_ZN13NaturalBinary12long_divsionES_PS_>
   140005073:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140005078:	48 39 f3             	cmp    %rsi,%rbx
   14000507b:	74 18                	je     140005095 <_ZN13NaturalBinarydvES_+0xb5>
   14000507d:	0f 1f 00             	nopl   (%rax)
   140005080:	48 89 d9             	mov    %rbx,%rcx
   140005083:	48 8b 1b             	mov    (%rbx),%rbx
   140005086:	ba 18 00 00 00       	mov    $0x18,%edx
   14000508b:	e8 10 23 00 00       	call   1400073a0 <_ZdlPvy>
   140005090:	48 39 f3             	cmp    %rsi,%rbx
   140005093:	75 eb                	jne    140005080 <_ZN13NaturalBinarydvES_+0xa0>
   140005095:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000509a:	48 39 fb             	cmp    %rdi,%rbx
   14000509d:	74 16                	je     1400050b5 <_ZN13NaturalBinarydvES_+0xd5>
   14000509f:	90                   	nop
   1400050a0:	48 89 d9             	mov    %rbx,%rcx
   1400050a3:	48 8b 1b             	mov    (%rbx),%rbx
   1400050a6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400050ab:	e8 f0 22 00 00       	call   1400073a0 <_ZdlPvy>
   1400050b0:	48 39 fb             	cmp    %rdi,%rbx
   1400050b3:	75 eb                	jne    1400050a0 <_ZN13NaturalBinarydvES_+0xc0>
   1400050b5:	48 89 e8             	mov    %rbp,%rax
   1400050b8:	48 83 c4 68          	add    $0x68,%rsp
   1400050bc:	5b                   	pop    %rbx
   1400050bd:	5e                   	pop    %rsi
   1400050be:	5f                   	pop    %rdi
   1400050bf:	5d                   	pop    %rbp
   1400050c0:	41 5c                	pop    %r12
   1400050c2:	41 5d                	pop    %r13
   1400050c4:	c3                   	ret
   1400050c5:	0f 1f 00             	nopl   (%rax)
   1400050c8:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   1400050cd:	48 8b 1a             	mov    (%rdx),%rbx
   1400050d0:	49 8b 38             	mov    (%r8),%rdi
   1400050d3:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400050da:	00 00 
   1400050dc:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400050e1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400050e5:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   1400050ea:	48 39 da             	cmp    %rbx,%rdx
   1400050ed:	74 2b                	je     14000511a <_ZN13NaturalBinarydvES_+0x13a>
   1400050ef:	90                   	nop
   1400050f0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400050f5:	e8 9e 22 00 00       	call   140007398 <_Znwy>
   1400050fa:	48 89 c1             	mov    %rax,%rcx
   1400050fd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005101:	48 89 f2             	mov    %rsi,%rdx
   140005104:	88 41 10             	mov    %al,0x10(%rcx)
   140005107:	e8 ec 22 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000510c:	48 8b 1b             	mov    (%rbx),%rbx
   14000510f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140005115:	49 39 dd             	cmp    %rbx,%r13
   140005118:	75 d6                	jne    1400050f0 <_ZN13NaturalBinarydvES_+0x110>
   14000511a:	44 0f b6 47 10       	movzbl 0x10(%rdi),%r8d
   14000511f:	45 31 c9             	xor    %r9d,%r9d
   140005122:	48 89 f2             	mov    %rsi,%rdx
   140005125:	48 89 e9             	mov    %rbp,%rcx
   140005128:	e8 13 d6 ff ff       	call   140002740 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_>
   14000512d:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140005132:	48 39 f3             	cmp    %rsi,%rbx
   140005135:	0f 84 7a ff ff ff    	je     1400050b5 <_ZN13NaturalBinarydvES_+0xd5>
   14000513b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005140:	48 89 d9             	mov    %rbx,%rcx
   140005143:	48 8b 1b             	mov    (%rbx),%rbx
   140005146:	ba 18 00 00 00       	mov    $0x18,%edx
   14000514b:	e8 50 22 00 00       	call   1400073a0 <_ZdlPvy>
   140005150:	48 39 f3             	cmp    %rsi,%rbx
   140005153:	75 eb                	jne    140005140 <_ZN13NaturalBinarydvES_+0x160>
   140005155:	48 89 e8             	mov    %rbp,%rax
   140005158:	48 83 c4 68          	add    $0x68,%rsp
   14000515c:	5b                   	pop    %rbx
   14000515d:	5e                   	pop    %rsi
   14000515e:	5f                   	pop    %rdi
   14000515f:	5d                   	pop    %rbp
   140005160:	41 5c                	pop    %r12
   140005162:	41 5d                	pop    %r13
   140005164:	c3                   	ret
   140005165:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000516a:	48 89 c3             	mov    %rax,%rbx
   14000516d:	48 39 f1             	cmp    %rsi,%rcx
   140005170:	74 48                	je     1400051ba <_ZN13NaturalBinarydvES_+0x1da>
   140005172:	48 8b 39             	mov    (%rcx),%rdi
   140005175:	ba 18 00 00 00       	mov    $0x18,%edx
   14000517a:	e8 21 22 00 00       	call   1400073a0 <_ZdlPvy>
   14000517f:	48 89 f9             	mov    %rdi,%rcx
   140005182:	eb e9                	jmp    14000516d <_ZN13NaturalBinarydvES_+0x18d>
   140005184:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140005189:	48 89 c3             	mov    %rax,%rbx
   14000518c:	48 39 f1             	cmp    %rsi,%rcx
   14000518f:	74 29                	je     1400051ba <_ZN13NaturalBinarydvES_+0x1da>
   140005191:	48 8b 39             	mov    (%rcx),%rdi
   140005194:	ba 18 00 00 00       	mov    $0x18,%edx
   140005199:	e8 02 22 00 00       	call   1400073a0 <_ZdlPvy>
   14000519e:	48 89 f9             	mov    %rdi,%rcx
   1400051a1:	eb e9                	jmp    14000518c <_ZN13NaturalBinarydvES_+0x1ac>
   1400051a3:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400051a8:	48 89 c3             	mov    %rax,%rbx
   1400051ab:	48 39 f1             	cmp    %rsi,%rcx
   1400051ae:	75 31                	jne    1400051e1 <_ZN13NaturalBinarydvES_+0x201>
   1400051b0:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400051b5:	48 39 f9             	cmp    %rdi,%rcx
   1400051b8:	75 39                	jne    1400051f3 <_ZN13NaturalBinarydvES_+0x213>
   1400051ba:	48 89 d9             	mov    %rbx,%rcx
   1400051bd:	e8 1e 33 00 00       	call   1400084e0 <_Unwind_Resume>
   1400051c2:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400051c7:	48 89 c3             	mov    %rax,%rbx
   1400051ca:	48 39 f1             	cmp    %rsi,%rcx
   1400051cd:	74 e1                	je     1400051b0 <_ZN13NaturalBinarydvES_+0x1d0>
   1400051cf:	48 8b 29             	mov    (%rcx),%rbp
   1400051d2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400051d7:	e8 c4 21 00 00       	call   1400073a0 <_ZdlPvy>
   1400051dc:	48 89 e9             	mov    %rbp,%rcx
   1400051df:	eb e9                	jmp    1400051ca <_ZN13NaturalBinarydvES_+0x1ea>
   1400051e1:	48 8b 29             	mov    (%rcx),%rbp
   1400051e4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400051e9:	e8 b2 21 00 00       	call   1400073a0 <_ZdlPvy>
   1400051ee:	48 89 e9             	mov    %rbp,%rcx
   1400051f1:	eb b8                	jmp    1400051ab <_ZN13NaturalBinarydvES_+0x1cb>
   1400051f3:	48 8b 31             	mov    (%rcx),%rsi
   1400051f6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400051fb:	e8 a0 21 00 00       	call   1400073a0 <_ZdlPvy>
   140005200:	48 89 f1             	mov    %rsi,%rcx
   140005203:	eb b0                	jmp    1400051b5 <_ZN13NaturalBinarydvES_+0x1d5>
   140005205:	90                   	nop
   140005206:	90                   	nop
   140005207:	90                   	nop
   140005208:	90                   	nop
   140005209:	90                   	nop
   14000520a:	90                   	nop
   14000520b:	90                   	nop
   14000520c:	90                   	nop
   14000520d:	90                   	nop
   14000520e:	90                   	nop
   14000520f:	90                   	nop

0000000140005210 <__tcf_0>:
   140005210:	48 8d 0d 59 7e 00 00 	lea    0x7e59(%rip),%rcx        # 14000d070 <_ZStL8__ioinit>
   140005217:	e9 c4 21 00 00       	jmp    1400073e0 <_ZNSt8ios_base4InitD1Ev>
   14000521c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>:
   140005220:	41 54                	push   %r12
   140005222:	55                   	push   %rbp
   140005223:	57                   	push   %rdi
   140005224:	56                   	push   %rsi
   140005225:	53                   	push   %rbx
   140005226:	48 83 ec 40          	sub    $0x40,%rsp
   14000522a:	48 8b 32             	mov    (%rdx),%rsi
   14000522d:	48 8b 19             	mov    (%rcx),%rbx
   140005230:	48 89 cf             	mov    %rcx,%rdi
   140005233:	48 89 d5             	mov    %rdx,%rbp
   140005236:	48 39 f2             	cmp    %rsi,%rdx
   140005239:	74 24                	je     14000525f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   14000523b:	48 39 cb             	cmp    %rcx,%rbx
   14000523e:	75 0d                	jne    14000524d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x2d>
   140005240:	eb 5e                	jmp    1400052a0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   140005242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005248:	48 39 df             	cmp    %rbx,%rdi
   14000524b:	74 53                	je     1400052a0 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x80>
   14000524d:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140005251:	48 8b 36             	mov    (%rsi),%rsi
   140005254:	88 43 10             	mov    %al,0x10(%rbx)
   140005257:	48 8b 1b             	mov    (%rbx),%rbx
   14000525a:	48 39 f5             	cmp    %rsi,%rbp
   14000525d:	75 e9                	jne    140005248 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x28>
   14000525f:	48 39 df             	cmp    %rbx,%rdi
   140005262:	74 29                	je     14000528d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140005264:	0f 1f 40 00          	nopl   0x0(%rax)
   140005268:	48 89 de             	mov    %rbx,%rsi
   14000526b:	48 8b 1b             	mov    (%rbx),%rbx
   14000526e:	48 83 6f 10 01       	subq   $0x1,0x10(%rdi)
   140005273:	48 89 f1             	mov    %rsi,%rcx
   140005276:	e8 75 21 00 00       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   14000527b:	ba 18 00 00 00       	mov    $0x18,%edx
   140005280:	48 89 f1             	mov    %rsi,%rcx
   140005283:	e8 18 21 00 00       	call   1400073a0 <_ZdlPvy>
   140005288:	48 39 df             	cmp    %rbx,%rdi
   14000528b:	75 db                	jne    140005268 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x48>
   14000528d:	48 83 c4 40          	add    $0x40,%rsp
   140005291:	5b                   	pop    %rbx
   140005292:	5e                   	pop    %rsi
   140005293:	5f                   	pop    %rdi
   140005294:	5d                   	pop    %rbp
   140005295:	41 5c                	pop    %r12
   140005297:	c3                   	ret
   140005298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000529f:	00 
   1400052a0:	48 39 f5             	cmp    %rsi,%rbp
   1400052a3:	74 ba                	je     14000525f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x3f>
   1400052a5:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400052ac:	00 00 
   1400052ae:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   1400052b3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400052b8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400052bc:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400052c1:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400052c6:	e8 cd 20 00 00       	call   140007398 <_Znwy>
   1400052cb:	48 89 c1             	mov    %rax,%rcx
   1400052ce:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   1400052d2:	4c 89 e2             	mov    %r12,%rdx
   1400052d5:	88 41 10             	mov    %al,0x10(%rcx)
   1400052d8:	e8 1b 21 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400052dd:	48 8b 36             	mov    (%rsi),%rsi
   1400052e0:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400052e6:	48 39 f5             	cmp    %rsi,%rbp
   1400052e9:	75 d6                	jne    1400052c1 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   1400052eb:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   1400052f0:	4c 39 e2             	cmp    %r12,%rdx
   1400052f3:	74 98                	je     14000528d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   1400052f5:	4d 89 e0             	mov    %r12,%r8
   1400052f8:	48 89 f9             	mov    %rdi,%rcx
   1400052fb:	e8 00 21 00 00       	call   140007400 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140005300:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140005305:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000530a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140005311:	00 00 
   140005313:	48 01 47 10          	add    %rax,0x10(%rdi)
   140005317:	4c 39 e3             	cmp    %r12,%rbx
   14000531a:	0f 84 6d ff ff ff    	je     14000528d <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140005320:	48 89 d9             	mov    %rbx,%rcx
   140005323:	48 8b 1b             	mov    (%rbx),%rbx
   140005326:	ba 18 00 00 00       	mov    $0x18,%edx
   14000532b:	e8 70 20 00 00       	call   1400073a0 <_ZdlPvy>
   140005330:	4c 39 e3             	cmp    %r12,%rbx
   140005333:	75 eb                	jne    140005320 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x100>
   140005335:	48 83 c4 40          	add    $0x40,%rsp
   140005339:	5b                   	pop    %rbx
   14000533a:	5e                   	pop    %rsi
   14000533b:	5f                   	pop    %rdi
   14000533c:	5d                   	pop    %rbp
   14000533d:	41 5c                	pop    %r12
   14000533f:	c3                   	ret
   140005340:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005345:	48 89 c3             	mov    %rax,%rbx
   140005348:	4c 39 e1             	cmp    %r12,%rcx
   14000534b:	74 12                	je     14000535f <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x13f>
   14000534d:	48 8b 31             	mov    (%rcx),%rsi
   140005350:	ba 18 00 00 00       	mov    $0x18,%edx
   140005355:	e8 46 20 00 00       	call   1400073a0 <_ZdlPvy>
   14000535a:	48 89 f1             	mov    %rsi,%rcx
   14000535d:	eb e9                	jmp    140005348 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   14000535f:	48 89 d9             	mov    %rbx,%rcx
   140005362:	e8 79 31 00 00       	call   1400084e0 <_Unwind_Resume>
   140005367:	90                   	nop
   140005368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000536f:	00 

0000000140005370 <_ZN15SignedMagnitudeC1Ex>:
   140005370:	57                   	push   %rdi
   140005371:	56                   	push   %rsi
   140005372:	53                   	push   %rbx
   140005373:	48 83 ec 40          	sub    $0x40,%rsp
   140005377:	48 89 d6             	mov    %rdx,%rsi
   14000537a:	48 89 cb             	mov    %rcx,%rbx
   14000537d:	e8 9e cb ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   140005382:	31 c0                	xor    %eax,%eax
   140005384:	48 85 f6             	test   %rsi,%rsi
   140005387:	79 08                	jns    140005391 <_ZN15SignedMagnitudeC1Ex+0x21>
   140005389:	48 f7 de             	neg    %rsi
   14000538c:	b8 01 00 00 00       	mov    $0x1,%eax
   140005391:	88 43 1c             	mov    %al,0x1c(%rbx)
   140005394:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005399:	48 89 f2             	mov    %rsi,%rdx
   14000539c:	48 89 f9             	mov    %rdi,%rcx
   14000539f:	e8 8c cb ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   1400053a4:	48 39 fb             	cmp    %rdi,%rbx
   1400053a7:	74 0b                	je     1400053b4 <_ZN15SignedMagnitudeC1Ex+0x44>
   1400053a9:	48 89 fa             	mov    %rdi,%rdx
   1400053ac:	48 89 d9             	mov    %rbx,%rcx
   1400053af:	e8 6c fe ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400053b4:	48 89 f9             	mov    %rdi,%rcx
   1400053b7:	e8 04 cd ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400053bc:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%rbx)
   1400053c3:	48 83 c4 40          	add    $0x40,%rsp
   1400053c7:	5b                   	pop    %rbx
   1400053c8:	5e                   	pop    %rsi
   1400053c9:	5f                   	pop    %rdi
   1400053ca:	c3                   	ret
   1400053cb:	48 89 c6             	mov    %rax,%rsi
   1400053ce:	eb 0b                	jmp    1400053db <_ZN15SignedMagnitudeC1Ex+0x6b>
   1400053d0:	48 89 f9             	mov    %rdi,%rcx
   1400053d3:	48 89 c6             	mov    %rax,%rsi
   1400053d6:	e8 e5 cc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400053db:	48 89 d9             	mov    %rbx,%rcx
   1400053de:	e8 dd cc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400053e3:	48 89 f1             	mov    %rsi,%rcx
   1400053e6:	e8 f5 30 00 00       	call   1400084e0 <_Unwind_Resume>
   1400053eb:	90                   	nop
   1400053ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400053f0 <_ZN15SignedMagnitudeC1Ev>:
   1400053f0:	57                   	push   %rdi
   1400053f1:	56                   	push   %rsi
   1400053f2:	53                   	push   %rbx
   1400053f3:	48 83 ec 40          	sub    $0x40,%rsp
   1400053f7:	48 89 cb             	mov    %rcx,%rbx
   1400053fa:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
   1400053ff:	e8 1c cb ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   140005404:	c6 43 1c 00          	movb   $0x0,0x1c(%rbx)
   140005408:	31 d2                	xor    %edx,%edx
   14000540a:	48 89 f1             	mov    %rsi,%rcx
   14000540d:	e8 1e cb ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140005412:	48 39 f3             	cmp    %rsi,%rbx
   140005415:	74 0b                	je     140005422 <_ZN15SignedMagnitudeC1Ev+0x32>
   140005417:	48 89 f2             	mov    %rsi,%rdx
   14000541a:	48 89 d9             	mov    %rbx,%rcx
   14000541d:	e8 fe fd ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005422:	48 89 f1             	mov    %rsi,%rcx
   140005425:	e8 96 cc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000542a:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%rbx)
   140005431:	48 83 c4 40          	add    $0x40,%rsp
   140005435:	5b                   	pop    %rbx
   140005436:	5e                   	pop    %rsi
   140005437:	5f                   	pop    %rdi
   140005438:	c3                   	ret
   140005439:	48 89 c7             	mov    %rax,%rdi
   14000543c:	eb 0b                	jmp    140005449 <_ZN15SignedMagnitudeC1Ev+0x59>
   14000543e:	48 89 f1             	mov    %rsi,%rcx
   140005441:	48 89 c7             	mov    %rax,%rdi
   140005444:	e8 77 cc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005449:	48 89 d9             	mov    %rbx,%rcx
   14000544c:	e8 6f cc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005451:	48 89 f9             	mov    %rdi,%rcx
   140005454:	e8 87 30 00 00       	call   1400084e0 <_Unwind_Resume>
   140005459:	90                   	nop
   14000545a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140005460 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb>:
   140005460:	55                   	push   %rbp
   140005461:	57                   	push   %rdi
   140005462:	56                   	push   %rsi
   140005463:	53                   	push   %rbx
   140005464:	48 83 ec 68          	sub    $0x68,%rsp
   140005468:	48 89 d7             	mov    %rdx,%rdi
   14000546b:	48 89 cd             	mov    %rcx,%rbp
   14000546e:	44 89 c3             	mov    %r8d,%ebx
   140005471:	44 89 ce             	mov    %r9d,%esi
   140005474:	e8 a7 ca ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   140005479:	48 83 7f 10 00       	cmpq   $0x0,0x10(%rdi)
   14000547e:	0f 84 ac 00 00 00    	je     140005530 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xd0>
   140005484:	40 88 75 1c          	mov    %sil,0x1c(%rbp)
   140005488:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   14000548d:	89 5d 18             	mov    %ebx,0x18(%rbp)
   140005490:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140005495:	48 8b 1f             	mov    (%rdi),%rbx
   140005498:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   14000549f:	00 00 
   1400054a1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400054a5:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   1400054aa:	48 39 df             	cmp    %rbx,%rdi
   1400054ad:	74 2b                	je     1400054da <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x7a>
   1400054af:	90                   	nop
   1400054b0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400054b5:	e8 de 1e 00 00       	call   140007398 <_Znwy>
   1400054ba:	48 89 c1             	mov    %rax,%rcx
   1400054bd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400054c1:	48 89 f2             	mov    %rsi,%rdx
   1400054c4:	88 41 10             	mov    %al,0x10(%rcx)
   1400054c7:	e8 2c 1f 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400054cc:	48 8b 1b             	mov    (%rbx),%rbx
   1400054cf:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   1400054d5:	48 39 df             	cmp    %rbx,%rdi
   1400054d8:	75 d6                	jne    1400054b0 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x50>
   1400054da:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   1400054df:	48 89 f2             	mov    %rsi,%rdx
   1400054e2:	48 89 d9             	mov    %rbx,%rcx
   1400054e5:	e8 36 cb ff ff       	call   140002020 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE>
   1400054ea:	48 39 dd             	cmp    %rbx,%rbp
   1400054ed:	74 0b                	je     1400054fa <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x9a>
   1400054ef:	48 89 da             	mov    %rbx,%rdx
   1400054f2:	48 89 e9             	mov    %rbp,%rcx
   1400054f5:	e8 26 fd ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400054fa:	48 89 d9             	mov    %rbx,%rcx
   1400054fd:	e8 be cb ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005502:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140005507:	48 39 f3             	cmp    %rsi,%rbx
   14000550a:	74 19                	je     140005525 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xc5>
   14000550c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005510:	48 89 d9             	mov    %rbx,%rcx
   140005513:	48 8b 1b             	mov    (%rbx),%rbx
   140005516:	ba 18 00 00 00       	mov    $0x18,%edx
   14000551b:	e8 80 1e 00 00       	call   1400073a0 <_ZdlPvy>
   140005520:	48 39 f3             	cmp    %rsi,%rbx
   140005523:	75 eb                	jne    140005510 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xb0>
   140005525:	48 83 c4 68          	add    $0x68,%rsp
   140005529:	5b                   	pop    %rbx
   14000552a:	5e                   	pop    %rsi
   14000552b:	5f                   	pop    %rdi
   14000552c:	5d                   	pop    %rbp
   14000552d:	c3                   	ret
   14000552e:	66 90                	xchg   %ax,%ax
   140005530:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140005535:	48 89 f1             	mov    %rsi,%rcx
   140005538:	e8 e3 c9 ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   14000553d:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140005542:	31 d2                	xor    %edx,%edx
   140005544:	c6 44 24 5c 00       	movb   $0x0,0x5c(%rsp)
   140005549:	48 89 d9             	mov    %rbx,%rcx
   14000554c:	e8 df c9 ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140005551:	48 89 da             	mov    %rbx,%rdx
   140005554:	48 89 f1             	mov    %rsi,%rcx
   140005557:	e8 c4 fc ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000555c:	48 89 d9             	mov    %rbx,%rcx
   14000555f:	e8 5c cb ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005564:	48 89 f1             	mov    %rsi,%rcx
   140005567:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
   14000556e:	00 
   14000556f:	e8 4c cb ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005574:	90                   	nop
   140005575:	48 83 c4 68          	add    $0x68,%rsp
   140005579:	5b                   	pop    %rbx
   14000557a:	5e                   	pop    %rsi
   14000557b:	5f                   	pop    %rdi
   14000557c:	5d                   	pop    %rbp
   14000557d:	c3                   	ret
   14000557e:	48 89 c7             	mov    %rax,%rdi
   140005581:	48 89 d9             	mov    %rbx,%rcx
   140005584:	e8 37 cb ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005589:	48 89 fb             	mov    %rdi,%rbx
   14000558c:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140005591:	48 39 f1             	cmp    %rsi,%rcx
   140005594:	74 15                	je     1400055ab <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x14b>
   140005596:	48 8b 39             	mov    (%rcx),%rdi
   140005599:	ba 18 00 00 00       	mov    $0x18,%edx
   14000559e:	e8 fd 1d 00 00       	call   1400073a0 <_ZdlPvy>
   1400055a3:	48 89 f9             	mov    %rdi,%rcx
   1400055a6:	eb e9                	jmp    140005591 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x131>
   1400055a8:	48 89 c3             	mov    %rax,%rbx
   1400055ab:	48 89 e9             	mov    %rbp,%rcx
   1400055ae:	e8 0d cb ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400055b3:	48 89 d9             	mov    %rbx,%rcx
   1400055b6:	e8 25 2f 00 00       	call   1400084e0 <_Unwind_Resume>
   1400055bb:	48 89 c3             	mov    %rax,%rbx
   1400055be:	48 89 f1             	mov    %rsi,%rcx
   1400055c1:	e8 fa ca ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400055c6:	eb e3                	jmp    1400055ab <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x14b>
   1400055c8:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400055cd:	48 89 c3             	mov    %rax,%rbx
   1400055d0:	48 39 f1             	cmp    %rsi,%rcx
   1400055d3:	74 d6                	je     1400055ab <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x14b>
   1400055d5:	48 8b 39             	mov    (%rcx),%rdi
   1400055d8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400055dd:	e8 be 1d 00 00       	call   1400073a0 <_ZdlPvy>
   1400055e2:	48 89 f9             	mov    %rdi,%rcx
   1400055e5:	eb e9                	jmp    1400055d0 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x170>
   1400055e7:	48 89 c7             	mov    %rax,%rdi
   1400055ea:	48 89 d9             	mov    %rbx,%rcx
   1400055ed:	e8 ce ca ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400055f2:	48 89 fb             	mov    %rdi,%rbx
   1400055f5:	eb c7                	jmp    1400055be <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x15e>
   1400055f7:	48 89 c3             	mov    %rax,%rbx
   1400055fa:	eb 90                	jmp    14000558c <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x12c>
   1400055fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005600 <_ZN15SignedMagnitudeD1Ev>:
   140005600:	e9 bb ca ff ff       	jmp    1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005605:	90                   	nop
   140005606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000560d:	00 00 00 

0000000140005610 <_ZN15SignedMagnitude10isNegativeEv>:
   140005610:	0f b6 41 1c          	movzbl 0x1c(%rcx),%eax
   140005614:	c3                   	ret
   140005615:	90                   	nop
   140005616:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000561d:	00 00 00 

0000000140005620 <_ZN15SignedMagnitude8toStringB5cxx11Ev>:
   140005620:	41 54                	push   %r12
   140005622:	55                   	push   %rbp
   140005623:	57                   	push   %rdi
   140005624:	56                   	push   %rsi
   140005625:	53                   	push   %rbx
   140005626:	48 83 ec 50          	sub    $0x50,%rsp
   14000562a:	48 89 d6             	mov    %rdx,%rsi
   14000562d:	48 89 cb             	mov    %rcx,%rbx
   140005630:	e8 ab dc ff ff       	call   1400032e0 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   140005635:	8b 46 18             	mov    0x18(%rsi),%eax
   140005638:	85 c0                	test   %eax,%eax
   14000563a:	0f 85 30 01 00 00    	jne    140005770 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x150>
   140005640:	80 7e 1c 01          	cmpb   $0x1,0x1c(%rsi)
   140005644:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   140005648:	4c 8d 25 23 4a 00 00 	lea    0x4a23(%rip),%r12        # 14000a072 <.rdata+0x2>
   14000564f:	48 8d 05 1a 4a 00 00 	lea    0x4a1a(%rip),%rax        # 14000a070 <.rdata>
   140005656:	48 19 ff             	sbb    %rdi,%rdi
   140005659:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000565e:	c6 44 24 40 00       	movb   $0x0,0x40(%rsp)
   140005663:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
   14000566a:	00 00 
   14000566c:	48 83 c7 01          	add    $0x1,%rdi
   140005670:	48 89 e9             	mov    %rbp,%rcx
   140005673:	80 7e 1c 00          	cmpb   $0x0,0x1c(%rsi)
   140005677:	4c 0f 45 e0          	cmovne %rax,%r12
   14000567b:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140005680:	48 01 fa             	add    %rdi,%rdx
   140005683:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
   140005688:	e8 9b 1d 00 00       	call   140007428 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   14000568d:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140005694:	ff ff 3f 
   140005697:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
   14000569c:	48 39 f8             	cmp    %rdi,%rax
   14000569f:	0f 82 58 01 00 00    	jb     1400057fd <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1dd>
   1400056a5:	49 89 f8             	mov    %rdi,%r8
   1400056a8:	4c 89 e2             	mov    %r12,%rdx
   1400056ab:	48 89 e9             	mov    %rbp,%rcx
   1400056ae:	e8 6d 1d 00 00       	call   140007420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   1400056b3:	4c 8b 43 08          	mov    0x8(%rbx),%r8
   1400056b7:	48 8b 13             	mov    (%rbx),%rdx
   1400056ba:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   1400056c1:	ff ff 3f 
   1400056c4:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
   1400056c9:	4c 39 c0             	cmp    %r8,%rax
   1400056cc:	0f 82 1f 01 00 00    	jb     1400057f1 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1d1>
   1400056d2:	48 89 e9             	mov    %rbp,%rcx
   1400056d5:	e8 46 1d 00 00       	call   140007420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   1400056da:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400056df:	48 8b 0b             	mov    (%rbx),%rcx
   1400056e2:	48 39 f0             	cmp    %rsi,%rax
   1400056e5:	0f 84 bd 00 00 00    	je     1400057a8 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x188>
   1400056eb:	48 8d 53 10          	lea    0x10(%rbx),%rdx
   1400056ef:	48 39 d1             	cmp    %rdx,%rcx
   1400056f2:	74 5c                	je     140005750 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x130>
   1400056f4:	f3 0f 6f 44 24 38    	movdqu 0x38(%rsp),%xmm0
   1400056fa:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   1400056fe:	48 89 03             	mov    %rax,(%rbx)
   140005701:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
   140005705:	48 85 c9             	test   %rcx,%rcx
   140005708:	74 53                	je     14000575d <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x13d>
   14000570a:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
   14000570f:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140005714:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
   14000571b:	00 00 
   14000571d:	c6 01 00             	movb   $0x0,(%rcx)
   140005720:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140005725:	48 39 f1             	cmp    %rsi,%rcx
   140005728:	74 0e                	je     140005738 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x118>
   14000572a:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   14000572f:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140005733:	e8 68 1c 00 00       	call   1400073a0 <_ZdlPvy>
   140005738:	48 89 d8             	mov    %rbx,%rax
   14000573b:	48 83 c4 50          	add    $0x50,%rsp
   14000573f:	5b                   	pop    %rbx
   140005740:	5e                   	pop    %rsi
   140005741:	5f                   	pop    %rdi
   140005742:	5d                   	pop    %rbp
   140005743:	41 5c                	pop    %r12
   140005745:	c3                   	ret
   140005746:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000574d:	00 00 00 
   140005750:	f3 0f 6f 4c 24 38    	movdqu 0x38(%rsp),%xmm1
   140005756:	48 89 03             	mov    %rax,(%rbx)
   140005759:	0f 11 4b 08          	movups %xmm1,0x8(%rbx)
   14000575d:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
   140005762:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140005767:	48 89 f1             	mov    %rsi,%rcx
   14000576a:	eb a8                	jmp    140005714 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xf4>
   14000576c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005770:	4c 8b 4b 08          	mov    0x8(%rbx),%r9
   140005774:	01 c0                	add    %eax,%eax
   140005776:	89 c0                	mov    %eax,%eax
   140005778:	4c 89 ca             	mov    %r9,%rdx
   14000577b:	48 29 c2             	sub    %rax,%rdx
   14000577e:	0f 82 85 00 00 00    	jb     140005809 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1e9>
   140005784:	48 c7 44 24 20 01 00 	movq   $0x1,0x20(%rsp)
   14000578b:	00 00 
   14000578d:	4c 8d 0d 33 49 00 00 	lea    0x4933(%rip),%r9        # 14000a0c7 <.rdata+0x57>
   140005794:	45 31 c0             	xor    %r8d,%r8d
   140005797:	48 89 d9             	mov    %rbx,%rcx
   14000579a:	e8 91 1c 00 00       	call   140007430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   14000579f:	e9 9c fe ff ff       	jmp    140005640 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x20>
   1400057a4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400057a8:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   1400057ad:	4d 85 c0             	test   %r8,%r8
   1400057b0:	74 16                	je     1400057c8 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1a8>
   1400057b2:	49 83 f8 01          	cmp    $0x1,%r8
   1400057b6:	74 28                	je     1400057e0 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1c0>
   1400057b8:	48 89 f2             	mov    %rsi,%rdx
   1400057bb:	e8 50 2e 00 00       	call   140008610 <memcpy>
   1400057c0:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   1400057c5:	48 8b 0b             	mov    (%rbx),%rcx
   1400057c8:	4c 89 43 08          	mov    %r8,0x8(%rbx)
   1400057cc:	42 c6 04 01 00       	movb   $0x0,(%rcx,%r8,1)
   1400057d1:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   1400057d6:	e9 39 ff ff ff       	jmp    140005714 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xf4>
   1400057db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400057e0:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
   1400057e5:	88 01                	mov    %al,(%rcx)
   1400057e7:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   1400057ec:	48 8b 0b             	mov    (%rbx),%rcx
   1400057ef:	eb d7                	jmp    1400057c8 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1a8>
   1400057f1:	48 8d 0d d1 48 00 00 	lea    0x48d1(%rip),%rcx        # 14000a0c9 <.rdata+0x59>
   1400057f8:	e8 b3 1b 00 00       	call   1400073b0 <_ZSt20__throw_length_errorPKc>
   1400057fd:	48 8d 0d c5 48 00 00 	lea    0x48c5(%rip),%rcx        # 14000a0c9 <.rdata+0x59>
   140005804:	e8 a7 1b 00 00       	call   1400073b0 <_ZSt20__throw_length_errorPKc>
   140005809:	49 89 d0             	mov    %rdx,%r8
   14000580c:	48 8d 0d 7d 48 00 00 	lea    0x487d(%rip),%rcx        # 14000a090 <.rdata+0x20>
   140005813:	48 8d 15 59 48 00 00 	lea    0x4859(%rip),%rdx        # 14000a073 <.rdata+0x3>
   14000581a:	e8 89 1b 00 00       	call   1400073a8 <_ZSt24__throw_out_of_range_fmtPKcz>
   14000581f:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140005824:	48 89 c7             	mov    %rax,%rdi
   140005827:	48 39 f1             	cmp    %rsi,%rcx
   14000582a:	74 0e                	je     14000583a <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x21a>
   14000582c:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140005831:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140005835:	e8 66 1b 00 00       	call   1400073a0 <_ZdlPvy>
   14000583a:	48 8b 0b             	mov    (%rbx),%rcx
   14000583d:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140005841:	48 39 c1             	cmp    %rax,%rcx
   140005844:	74 0d                	je     140005853 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x233>
   140005846:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   14000584a:	48 83 c2 01          	add    $0x1,%rdx
   14000584e:	e8 4d 1b 00 00       	call   1400073a0 <_ZdlPvy>
   140005853:	48 89 f9             	mov    %rdi,%rcx
   140005856:	e8 85 2c 00 00       	call   1400084e0 <_Unwind_Resume>
   14000585b:	48 89 c7             	mov    %rax,%rdi
   14000585e:	eb da                	jmp    14000583a <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x21a>

0000000140005860 <_ZN15SignedMagnitude15alignModuleWithES_>:
   140005860:	41 54                	push   %r12
   140005862:	55                   	push   %rbp
   140005863:	57                   	push   %rdi
   140005864:	56                   	push   %rsi
   140005865:	53                   	push   %rbx
   140005866:	48 83 ec 30          	sub    $0x30,%rsp
   14000586a:	48 89 cb             	mov    %rcx,%rbx
   14000586d:	48 89 d5             	mov    %rdx,%rbp
   140005870:	4d 89 c4             	mov    %r8,%r12
   140005873:	e8 a8 c6 ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   140005878:	48 39 dd             	cmp    %rbx,%rbp
   14000587b:	74 0b                	je     140005888 <_ZN15SignedMagnitude15alignModuleWithES_+0x28>
   14000587d:	48 89 ea             	mov    %rbp,%rdx
   140005880:	48 89 d9             	mov    %rbx,%rcx
   140005883:	e8 98 f9 ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140005888:	8b 55 18             	mov    0x18(%rbp),%edx
   14000588b:	41 8b 74 24 10       	mov    0x10(%r12),%esi
   140005890:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   140005895:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   14000589a:	01 d6                	add    %edx,%esi
   14000589c:	29 c6                	sub    %eax,%esi
   14000589e:	2b 73 10             	sub    0x10(%rbx),%esi
   1400058a1:	85 f6                	test   %esi,%esi
   1400058a3:	7e 3c                	jle    1400058e1 <_ZN15SignedMagnitude15alignModuleWithES_+0x81>
   1400058a5:	0f 1f 00             	nopl   (%rax)
   1400058a8:	31 d2                	xor    %edx,%edx
   1400058aa:	48 89 f9             	mov    %rdi,%rcx
   1400058ad:	e8 ce bd ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400058b2:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400058b7:	e8 dc 1a 00 00       	call   140007398 <_Znwy>
   1400058bc:	48 89 c1             	mov    %rax,%rcx
   1400058bf:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400058c4:	48 89 da             	mov    %rbx,%rdx
   1400058c7:	88 41 10             	mov    %al,0x10(%rcx)
   1400058ca:	e8 29 1b 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400058cf:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   1400058d4:	83 ee 01             	sub    $0x1,%esi
   1400058d7:	75 cf                	jne    1400058a8 <_ZN15SignedMagnitude15alignModuleWithES_+0x48>
   1400058d9:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   1400058de:	8b 55 18             	mov    0x18(%rbp),%edx
   1400058e1:	29 d0                	sub    %edx,%eax
   1400058e3:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   1400058e8:	89 c6                	mov    %eax,%esi
   1400058ea:	85 c0                	test   %eax,%eax
   1400058ec:	7e 36                	jle    140005924 <_ZN15SignedMagnitude15alignModuleWithES_+0xc4>
   1400058ee:	66 90                	xchg   %ax,%ax
   1400058f0:	31 d2                	xor    %edx,%edx
   1400058f2:	48 89 f9             	mov    %rdi,%rcx
   1400058f5:	e8 86 bd ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400058fa:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400058ff:	48 8b 2b             	mov    (%rbx),%rbp
   140005902:	e8 91 1a 00 00       	call   140007398 <_Znwy>
   140005907:	48 89 c1             	mov    %rax,%rcx
   14000590a:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   14000590f:	48 89 ea             	mov    %rbp,%rdx
   140005912:	88 41 10             	mov    %al,0x10(%rcx)
   140005915:	e8 de 1a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000591a:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   14000591f:	83 ee 01             	sub    $0x1,%esi
   140005922:	75 cc                	jne    1400058f0 <_ZN15SignedMagnitude15alignModuleWithES_+0x90>
   140005924:	48 89 d8             	mov    %rbx,%rax
   140005927:	48 83 c4 30          	add    $0x30,%rsp
   14000592b:	5b                   	pop    %rbx
   14000592c:	5e                   	pop    %rsi
   14000592d:	5f                   	pop    %rdi
   14000592e:	5d                   	pop    %rbp
   14000592f:	41 5c                	pop    %r12
   140005931:	c3                   	ret
   140005932:	48 89 c6             	mov    %rax,%rsi
   140005935:	48 89 d9             	mov    %rbx,%rcx
   140005938:	e8 83 c7 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000593d:	48 89 f1             	mov    %rsi,%rcx
   140005940:	e8 9b 2b 00 00       	call   1400084e0 <_Unwind_Resume>
   140005945:	90                   	nop
   140005946:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000594d:	00 00 00 

0000000140005950 <_ZN15SignedMagnitudeeqES_>:
   140005950:	41 55                	push   %r13
   140005952:	41 54                	push   %r12
   140005954:	55                   	push   %rbp
   140005955:	57                   	push   %rdi
   140005956:	56                   	push   %rsi
   140005957:	53                   	push   %rbx
   140005958:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   14000595f:	31 c0                	xor    %eax,%eax
   140005961:	48 89 d7             	mov    %rdx,%rdi
   140005964:	48 89 cb             	mov    %rcx,%rbx
   140005967:	0f b6 51 1c          	movzbl 0x1c(%rcx),%edx
   14000596b:	3a 57 1c             	cmp    0x1c(%rdi),%dl
   14000596e:	74 10                	je     140005980 <_ZN15SignedMagnitudeeqES_+0x30>
   140005970:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140005977:	5b                   	pop    %rbx
   140005978:	5e                   	pop    %rsi
   140005979:	5f                   	pop    %rdi
   14000597a:	5d                   	pop    %rbp
   14000597b:	41 5c                	pop    %r12
   14000597d:	41 5d                	pop    %r13
   14000597f:	c3                   	ret
   140005980:	48 8d ac 24 90 00 00 	lea    0x90(%rsp),%rbp
   140005987:	00 
   140005988:	48 8b 31             	mov    (%rcx),%rsi
   14000598b:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   140005992:	00 00 00 00 00 
   140005997:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   14000599c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400059a0:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   1400059a7:	00 
   1400059a8:	48 39 f1             	cmp    %rsi,%rcx
   1400059ab:	74 34                	je     1400059e1 <_ZN15SignedMagnitudeeqES_+0x91>
   1400059ad:	0f 1f 00             	nopl   (%rax)
   1400059b0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400059b5:	e8 de 19 00 00       	call   140007398 <_Znwy>
   1400059ba:	48 89 c1             	mov    %rax,%rcx
   1400059bd:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   1400059c1:	48 89 ea             	mov    %rbp,%rdx
   1400059c4:	88 41 10             	mov    %al,0x10(%rcx)
   1400059c7:	e8 2c 1a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400059cc:	48 8b 36             	mov    (%rsi),%rsi
   1400059cf:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   1400059d6:	00 01 
   1400059d8:	48 39 f3             	cmp    %rsi,%rbx
   1400059db:	75 d3                	jne    1400059b0 <_ZN15SignedMagnitudeeqES_+0x60>
   1400059dd:	0f b6 53 1c          	movzbl 0x1c(%rbx),%edx
   1400059e1:	8b 43 18             	mov    0x18(%rbx),%eax
   1400059e4:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
   1400059e9:	88 94 24 ac 00 00 00 	mov    %dl,0xac(%rsp)
   1400059f0:	49 89 e8             	mov    %rbp,%r8
   1400059f3:	48 89 fa             	mov    %rdi,%rdx
   1400059f6:	4c 89 e9             	mov    %r13,%rcx
   1400059f9:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
   140005a00:	e8 5b fe ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005a05:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   140005a0a:	48 8b 37             	mov    (%rdi),%rsi
   140005a0d:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140005a14:	00 00 00 00 00 
   140005a19:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005a1e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005a22:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140005a27:	48 39 f7             	cmp    %rsi,%rdi
   140005a2a:	74 31                	je     140005a5d <_ZN15SignedMagnitudeeqES_+0x10d>
   140005a2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005a30:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005a35:	e8 5e 19 00 00       	call   140007398 <_Znwy>
   140005a3a:	48 89 c1             	mov    %rax,%rcx
   140005a3d:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140005a41:	4c 89 e2             	mov    %r12,%rdx
   140005a44:	88 41 10             	mov    %al,0x10(%rcx)
   140005a47:	e8 ac 19 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005a4c:	48 8b 36             	mov    (%rsi),%rsi
   140005a4f:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140005a56:	00 01 
   140005a58:	48 39 f7             	cmp    %rsi,%rdi
   140005a5b:	75 d3                	jne    140005a30 <_ZN15SignedMagnitudeeqES_+0xe0>
   140005a5d:	8b 47 18             	mov    0x18(%rdi),%eax
   140005a60:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
   140005a65:	4d 89 e0             	mov    %r12,%r8
   140005a68:	48 89 da             	mov    %rbx,%rdx
   140005a6b:	48 89 f1             	mov    %rsi,%rcx
   140005a6e:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
   140005a75:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140005a79:	88 84 24 8c 00 00 00 	mov    %al,0x8c(%rsp)
   140005a80:	e8 db fd ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005a85:	4c 89 ea             	mov    %r13,%rdx
   140005a88:	48 89 f1             	mov    %rsi,%rcx
   140005a8b:	e8 b0 d3 ff ff       	call   140002e40 <_ZN13NaturalBinaryeqES_>
   140005a90:	48 89 f1             	mov    %rsi,%rcx
   140005a93:	88 44 24 2f          	mov    %al,0x2f(%rsp)
   140005a97:	e8 24 c6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005a9c:	4c 89 e1             	mov    %r12,%rcx
   140005a9f:	e8 1c c6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005aa4:	4c 89 e9             	mov    %r13,%rcx
   140005aa7:	e8 14 c6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005aac:	48 89 e9             	mov    %rbp,%rcx
   140005aaf:	e8 0c c6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005ab4:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140005ab9:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140005ac0:	5b                   	pop    %rbx
   140005ac1:	5e                   	pop    %rsi
   140005ac2:	5f                   	pop    %rdi
   140005ac3:	5d                   	pop    %rbp
   140005ac4:	41 5c                	pop    %r12
   140005ac6:	41 5d                	pop    %r13
   140005ac8:	c3                   	ret
   140005ac9:	48 89 c3             	mov    %rax,%rbx
   140005acc:	eb 42                	jmp    140005b10 <_ZN15SignedMagnitudeeqES_+0x1c0>
   140005ace:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   140005ad5:	00 
   140005ad6:	48 89 c3             	mov    %rax,%rbx
   140005ad9:	48 39 e9             	cmp    %rbp,%rcx
   140005adc:	74 3a                	je     140005b18 <_ZN15SignedMagnitudeeqES_+0x1c8>
   140005ade:	48 8b 31             	mov    (%rcx),%rsi
   140005ae1:	ba 18 00 00 00       	mov    $0x18,%edx
   140005ae6:	e8 b5 18 00 00       	call   1400073a0 <_ZdlPvy>
   140005aeb:	48 89 f1             	mov    %rsi,%rcx
   140005aee:	eb e9                	jmp    140005ad9 <_ZN15SignedMagnitudeeqES_+0x189>
   140005af0:	48 89 c3             	mov    %rax,%rbx
   140005af3:	eb 0b                	jmp    140005b00 <_ZN15SignedMagnitudeeqES_+0x1b0>
   140005af5:	48 89 f1             	mov    %rsi,%rcx
   140005af8:	48 89 c3             	mov    %rax,%rbx
   140005afb:	e8 c0 c5 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005b00:	4c 89 e1             	mov    %r12,%rcx
   140005b03:	e8 b8 c5 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005b08:	4c 89 e9             	mov    %r13,%rcx
   140005b0b:	e8 b0 c5 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005b10:	48 89 e9             	mov    %rbp,%rcx
   140005b13:	e8 a8 c5 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005b18:	48 89 d9             	mov    %rbx,%rcx
   140005b1b:	e8 c0 29 00 00       	call   1400084e0 <_Unwind_Resume>
   140005b20:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140005b25:	48 89 c3             	mov    %rax,%rbx
   140005b28:	4c 39 e1             	cmp    %r12,%rcx
   140005b2b:	74 db                	je     140005b08 <_ZN15SignedMagnitudeeqES_+0x1b8>
   140005b2d:	48 8b 31             	mov    (%rcx),%rsi
   140005b30:	ba 18 00 00 00       	mov    $0x18,%edx
   140005b35:	e8 66 18 00 00       	call   1400073a0 <_ZdlPvy>
   140005b3a:	48 89 f1             	mov    %rsi,%rcx
   140005b3d:	eb e9                	jmp    140005b28 <_ZN15SignedMagnitudeeqES_+0x1d8>
   140005b3f:	90                   	nop

0000000140005b40 <_ZN15SignedMagnitudeltES_>:
   140005b40:	41 55                	push   %r13
   140005b42:	41 54                	push   %r12
   140005b44:	55                   	push   %rbp
   140005b45:	57                   	push   %rdi
   140005b46:	56                   	push   %rsi
   140005b47:	53                   	push   %rbx
   140005b48:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
   140005b4f:	0f b6 59 1c          	movzbl 0x1c(%rcx),%ebx
   140005b53:	0f b6 42 1c          	movzbl 0x1c(%rdx),%eax
   140005b57:	48 89 ce             	mov    %rcx,%rsi
   140005b5a:	48 89 d7             	mov    %rdx,%rdi
   140005b5d:	84 db                	test   %bl,%bl
   140005b5f:	0f 84 4b 01 00 00    	je     140005cb0 <_ZN15SignedMagnitudeltES_+0x170>
   140005b65:	84 c0                	test   %al,%al
   140005b67:	0f 84 2c 01 00 00    	je     140005c99 <_ZN15SignedMagnitudeltES_+0x159>
   140005b6d:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140005b74:	00 
   140005b75:	48 8b 19             	mov    (%rcx),%rbx
   140005b78:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140005b7f:	00 00 00 00 00 
   140005b84:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140005b89:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005b8d:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140005b94:	00 
   140005b95:	48 39 d9             	cmp    %rbx,%rcx
   140005b98:	74 37                	je     140005bd1 <_ZN15SignedMagnitudeltES_+0x91>
   140005b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005ba0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005ba5:	e8 ee 17 00 00       	call   140007398 <_Znwy>
   140005baa:	48 89 c1             	mov    %rax,%rcx
   140005bad:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005bb1:	48 89 ea             	mov    %rbp,%rdx
   140005bb4:	88 41 10             	mov    %al,0x10(%rcx)
   140005bb7:	e8 3c 18 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005bbc:	48 8b 1b             	mov    (%rbx),%rbx
   140005bbf:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   140005bc6:	00 01 
   140005bc8:	48 39 de             	cmp    %rbx,%rsi
   140005bcb:	75 d3                	jne    140005ba0 <_ZN15SignedMagnitudeltES_+0x60>
   140005bcd:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005bd1:	8b 56 18             	mov    0x18(%rsi),%edx
   140005bd4:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140005bd9:	49 89 e8             	mov    %rbp,%r8
   140005bdc:	88 84 24 9c 00 00 00 	mov    %al,0x9c(%rsp)
   140005be3:	4c 89 e9             	mov    %r13,%rcx
   140005be6:	89 94 24 98 00 00 00 	mov    %edx,0x98(%rsp)
   140005bed:	48 89 fa             	mov    %rdi,%rdx
   140005bf0:	e8 6b fc ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005bf5:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   140005bfa:	48 8b 1f             	mov    (%rdi),%rbx
   140005bfd:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140005c04:	00 00 
   140005c06:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005c0b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005c0f:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140005c14:	48 39 df             	cmp    %rbx,%rdi
   140005c17:	74 31                	je     140005c4a <_ZN15SignedMagnitudeltES_+0x10a>
   140005c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005c20:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005c25:	e8 6e 17 00 00       	call   140007398 <_Znwy>
   140005c2a:	48 89 c1             	mov    %rax,%rcx
   140005c2d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005c31:	4c 89 e2             	mov    %r12,%rdx
   140005c34:	88 41 10             	mov    %al,0x10(%rcx)
   140005c37:	e8 bc 17 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005c3c:	48 8b 1b             	mov    (%rbx),%rbx
   140005c3f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140005c45:	48 39 df             	cmp    %rbx,%rdi
   140005c48:	75 d6                	jne    140005c20 <_ZN15SignedMagnitudeltES_+0xe0>
   140005c4a:	8b 47 18             	mov    0x18(%rdi),%eax
   140005c4d:	4d 89 e0             	mov    %r12,%r8
   140005c50:	48 89 f2             	mov    %rsi,%rdx
   140005c53:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140005c57:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140005c5b:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005c60:	48 89 f9             	mov    %rdi,%rcx
   140005c63:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   140005c67:	e8 f4 fb ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005c6c:	4c 89 ea             	mov    %r13,%rdx
   140005c6f:	48 89 f9             	mov    %rdi,%rcx
   140005c72:	e8 19 d0 ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   140005c77:	48 89 f9             	mov    %rdi,%rcx
   140005c7a:	89 c3                	mov    %eax,%ebx
   140005c7c:	e8 3f c4 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005c81:	4c 89 e1             	mov    %r12,%rcx
   140005c84:	e8 37 c4 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005c89:	4c 89 e9             	mov    %r13,%rcx
   140005c8c:	e8 2f c4 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005c91:	48 89 e9             	mov    %rbp,%rcx
   140005c94:	e8 27 c4 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005c99:	89 d8                	mov    %ebx,%eax
   140005c9b:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
   140005ca2:	5b                   	pop    %rbx
   140005ca3:	5e                   	pop    %rsi
   140005ca4:	5f                   	pop    %rdi
   140005ca5:	5d                   	pop    %rbp
   140005ca6:	41 5c                	pop    %r12
   140005ca8:	41 5d                	pop    %r13
   140005caa:	c3                   	ret
   140005cab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005cb0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140005cb7:	00 
   140005cb8:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140005cbd:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005cc1:	84 c0                	test   %al,%al
   140005cc3:	75 d4                	jne    140005c99 <_ZN15SignedMagnitudeltES_+0x159>
   140005cc5:	48 8b 19             	mov    (%rcx),%rbx
   140005cc8:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140005ccf:	00 
   140005cd0:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140005cd7:	00 00 00 00 00 
   140005cdc:	48 39 d9             	cmp    %rbx,%rcx
   140005cdf:	74 31                	je     140005d12 <_ZN15SignedMagnitudeltES_+0x1d2>
   140005ce1:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005ce6:	e8 ad 16 00 00       	call   140007398 <_Znwy>
   140005ceb:	48 89 c1             	mov    %rax,%rcx
   140005cee:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005cf2:	48 89 ea             	mov    %rbp,%rdx
   140005cf5:	88 41 10             	mov    %al,0x10(%rcx)
   140005cf8:	e8 fb 16 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005cfd:	48 8b 1b             	mov    (%rbx),%rbx
   140005d00:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   140005d07:	00 01 
   140005d09:	48 39 de             	cmp    %rbx,%rsi
   140005d0c:	75 d3                	jne    140005ce1 <_ZN15SignedMagnitudeltES_+0x1a1>
   140005d0e:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005d12:	8b 56 18             	mov    0x18(%rsi),%edx
   140005d15:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140005d1a:	49 89 e8             	mov    %rbp,%r8
   140005d1d:	88 84 24 9c 00 00 00 	mov    %al,0x9c(%rsp)
   140005d24:	4c 89 e9             	mov    %r13,%rcx
   140005d27:	89 94 24 98 00 00 00 	mov    %edx,0x98(%rsp)
   140005d2e:	48 89 fa             	mov    %rdi,%rdx
   140005d31:	e8 2a fb ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005d36:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   140005d3b:	48 8b 1f             	mov    (%rdi),%rbx
   140005d3e:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140005d45:	00 00 
   140005d47:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005d4c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005d50:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140005d55:	48 39 df             	cmp    %rbx,%rdi
   140005d58:	74 30                	je     140005d8a <_ZN15SignedMagnitudeltES_+0x24a>
   140005d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005d60:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005d65:	e8 2e 16 00 00       	call   140007398 <_Znwy>
   140005d6a:	48 89 c1             	mov    %rax,%rcx
   140005d6d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005d71:	4c 89 e2             	mov    %r12,%rdx
   140005d74:	88 41 10             	mov    %al,0x10(%rcx)
   140005d77:	e8 7c 16 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005d7c:	48 8b 1b             	mov    (%rbx),%rbx
   140005d7f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140005d85:	48 39 df             	cmp    %rbx,%rdi
   140005d88:	75 d6                	jne    140005d60 <_ZN15SignedMagnitudeltES_+0x220>
   140005d8a:	8b 47 18             	mov    0x18(%rdi),%eax
   140005d8d:	4d 89 e0             	mov    %r12,%r8
   140005d90:	48 89 f2             	mov    %rsi,%rdx
   140005d93:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140005d97:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140005d9b:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005da0:	48 89 f9             	mov    %rdi,%rcx
   140005da3:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   140005da7:	e8 b4 fa ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005dac:	4c 89 ea             	mov    %r13,%rdx
   140005daf:	48 89 f9             	mov    %rdi,%rcx
   140005db2:	e8 39 cd ff ff       	call   140002af0 <_ZN13NaturalBinaryltES_>
   140005db7:	e9 bb fe ff ff       	jmp    140005c77 <_ZN15SignedMagnitudeltES_+0x137>
   140005dbc:	48 89 c3             	mov    %rax,%rbx
   140005dbf:	eb 1b                	jmp    140005ddc <_ZN15SignedMagnitudeltES_+0x29c>
   140005dc1:	48 89 f9             	mov    %rdi,%rcx
   140005dc4:	48 89 c3             	mov    %rax,%rbx
   140005dc7:	e8 f4 c2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005dcc:	4c 89 e1             	mov    %r12,%rcx
   140005dcf:	e8 ec c2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005dd4:	4c 89 e9             	mov    %r13,%rcx
   140005dd7:	e8 e4 c2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005ddc:	48 89 e9             	mov    %rbp,%rcx
   140005ddf:	e8 dc c2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005de4:	48 89 d9             	mov    %rbx,%rcx
   140005de7:	e8 f4 26 00 00       	call   1400084e0 <_Unwind_Resume>
   140005dec:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140005df3:	00 
   140005df4:	48 89 c3             	mov    %rax,%rbx
   140005df7:	48 39 e9             	cmp    %rbp,%rcx
   140005dfa:	74 e8                	je     140005de4 <_ZN15SignedMagnitudeltES_+0x2a4>
   140005dfc:	48 8b 31             	mov    (%rcx),%rsi
   140005dff:	ba 18 00 00 00       	mov    $0x18,%edx
   140005e04:	e8 97 15 00 00       	call   1400073a0 <_ZdlPvy>
   140005e09:	48 89 f1             	mov    %rsi,%rcx
   140005e0c:	eb e9                	jmp    140005df7 <_ZN15SignedMagnitudeltES_+0x2b7>
   140005e0e:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140005e15:	00 
   140005e16:	48 89 c3             	mov    %rax,%rbx
   140005e19:	48 39 e9             	cmp    %rbp,%rcx
   140005e1c:	74 c6                	je     140005de4 <_ZN15SignedMagnitudeltES_+0x2a4>
   140005e1e:	48 8b 31             	mov    (%rcx),%rsi
   140005e21:	ba 18 00 00 00       	mov    $0x18,%edx
   140005e26:	e8 75 15 00 00       	call   1400073a0 <_ZdlPvy>
   140005e2b:	48 89 f1             	mov    %rsi,%rcx
   140005e2e:	eb e9                	jmp    140005e19 <_ZN15SignedMagnitudeltES_+0x2d9>
   140005e30:	eb 8a                	jmp    140005dbc <_ZN15SignedMagnitudeltES_+0x27c>
   140005e32:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140005e37:	48 89 c3             	mov    %rax,%rbx
   140005e3a:	4c 39 e1             	cmp    %r12,%rcx
   140005e3d:	74 95                	je     140005dd4 <_ZN15SignedMagnitudeltES_+0x294>
   140005e3f:	48 8b 31             	mov    (%rcx),%rsi
   140005e42:	ba 18 00 00 00       	mov    $0x18,%edx
   140005e47:	e8 54 15 00 00       	call   1400073a0 <_ZdlPvy>
   140005e4c:	48 89 f1             	mov    %rsi,%rcx
   140005e4f:	eb e9                	jmp    140005e3a <_ZN15SignedMagnitudeltES_+0x2fa>
   140005e51:	48 89 c3             	mov    %rax,%rbx
   140005e54:	e9 73 ff ff ff       	jmp    140005dcc <_ZN15SignedMagnitudeltES_+0x28c>
   140005e59:	e9 63 ff ff ff       	jmp    140005dc1 <_ZN15SignedMagnitudeltES_+0x281>
   140005e5e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140005e63:	48 89 c3             	mov    %rax,%rbx
   140005e66:	4c 39 e1             	cmp    %r12,%rcx
   140005e69:	0f 84 65 ff ff ff    	je     140005dd4 <_ZN15SignedMagnitudeltES_+0x294>
   140005e6f:	48 8b 31             	mov    (%rcx),%rsi
   140005e72:	ba 18 00 00 00       	mov    $0x18,%edx
   140005e77:	e8 24 15 00 00       	call   1400073a0 <_ZdlPvy>
   140005e7c:	48 89 f1             	mov    %rsi,%rcx
   140005e7f:	eb e5                	jmp    140005e66 <_ZN15SignedMagnitudeltES_+0x326>
   140005e81:	eb ce                	jmp    140005e51 <_ZN15SignedMagnitudeltES_+0x311>
   140005e83:	90                   	nop
   140005e84:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005e8b:	00 00 00 00 
   140005e8f:	90                   	nop

0000000140005e90 <_ZN15SignedMagnitudeleES_>:
   140005e90:	41 54                	push   %r12
   140005e92:	55                   	push   %rbp
   140005e93:	57                   	push   %rdi
   140005e94:	56                   	push   %rsi
   140005e95:	53                   	push   %rbx
   140005e96:	48 83 ec 60          	sub    $0x60,%rsp
   140005e9a:	48 8b 1a             	mov    (%rdx),%rbx
   140005e9d:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005ea2:	48 89 cd             	mov    %rcx,%rbp
   140005ea5:	48 89 d6             	mov    %rdx,%rsi
   140005ea8:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140005eaf:	00 00 
   140005eb1:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140005eb6:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005eba:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140005ebf:	48 39 da             	cmp    %rbx,%rdx
   140005ec2:	74 2e                	je     140005ef2 <_ZN15SignedMagnitudeleES_+0x62>
   140005ec4:	0f 1f 40 00          	nopl   0x0(%rax)
   140005ec8:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005ecd:	e8 c6 14 00 00       	call   140007398 <_Znwy>
   140005ed2:	48 89 c1             	mov    %rax,%rcx
   140005ed5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005ed9:	48 89 fa             	mov    %rdi,%rdx
   140005edc:	88 41 10             	mov    %al,0x10(%rcx)
   140005edf:	e8 14 15 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005ee4:	48 8b 1b             	mov    (%rbx),%rbx
   140005ee7:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005eed:	48 39 de             	cmp    %rbx,%rsi
   140005ef0:	75 d6                	jne    140005ec8 <_ZN15SignedMagnitudeleES_+0x38>
   140005ef2:	8b 46 18             	mov    0x18(%rsi),%eax
   140005ef5:	48 89 fa             	mov    %rdi,%rdx
   140005ef8:	48 89 e9             	mov    %rbp,%rcx
   140005efb:	89 44 24 38          	mov    %eax,0x38(%rsp)
   140005eff:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005f03:	88 44 24 3c          	mov    %al,0x3c(%rsp)
   140005f07:	e8 44 fa ff ff       	call   140005950 <_ZN15SignedMagnitudeeqES_>
   140005f0c:	89 c3                	mov    %eax,%ebx
   140005f0e:	84 c0                	test   %al,%al
   140005f10:	75 7c                	jne    140005f8e <_ZN15SignedMagnitudeleES_+0xfe>
   140005f12:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140005f17:	48 8b 1e             	mov    (%rsi),%rbx
   140005f1a:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140005f21:	00 00 
   140005f23:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005f28:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005f2c:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140005f31:	48 39 de             	cmp    %rbx,%rsi
   140005f34:	74 34                	je     140005f6a <_ZN15SignedMagnitudeleES_+0xda>
   140005f36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005f3d:	00 00 00 
   140005f40:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005f45:	e8 4e 14 00 00       	call   140007398 <_Znwy>
   140005f4a:	48 89 c1             	mov    %rax,%rcx
   140005f4d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005f51:	4c 89 e2             	mov    %r12,%rdx
   140005f54:	88 41 10             	mov    %al,0x10(%rcx)
   140005f57:	e8 9c 14 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005f5c:	48 8b 1b             	mov    (%rbx),%rbx
   140005f5f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140005f65:	48 39 de             	cmp    %rbx,%rsi
   140005f68:	75 d6                	jne    140005f40 <_ZN15SignedMagnitudeleES_+0xb0>
   140005f6a:	8b 46 18             	mov    0x18(%rsi),%eax
   140005f6d:	4c 89 e2             	mov    %r12,%rdx
   140005f70:	48 89 e9             	mov    %rbp,%rcx
   140005f73:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140005f77:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005f7b:	88 44 24 5c          	mov    %al,0x5c(%rsp)
   140005f7f:	e8 bc fb ff ff       	call   140005b40 <_ZN15SignedMagnitudeltES_>
   140005f84:	4c 89 e1             	mov    %r12,%rcx
   140005f87:	89 c3                	mov    %eax,%ebx
   140005f89:	e8 32 c1 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005f8e:	48 89 f9             	mov    %rdi,%rcx
   140005f91:	e8 2a c1 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005f96:	89 d8                	mov    %ebx,%eax
   140005f98:	48 83 c4 60          	add    $0x60,%rsp
   140005f9c:	5b                   	pop    %rbx
   140005f9d:	5e                   	pop    %rsi
   140005f9e:	5f                   	pop    %rdi
   140005f9f:	5d                   	pop    %rbp
   140005fa0:	41 5c                	pop    %r12
   140005fa2:	c3                   	ret
   140005fa3:	4c 89 e1             	mov    %r12,%rcx
   140005fa6:	48 89 c3             	mov    %rax,%rbx
   140005fa9:	e8 12 c1 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005fae:	48 89 f9             	mov    %rdi,%rcx
   140005fb1:	e8 0a c1 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140005fb6:	48 89 d9             	mov    %rbx,%rcx
   140005fb9:	e8 22 25 00 00       	call   1400084e0 <_Unwind_Resume>
   140005fbe:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140005fc3:	48 89 c3             	mov    %rax,%rbx
   140005fc6:	4c 39 e1             	cmp    %r12,%rcx
   140005fc9:	74 e3                	je     140005fae <_ZN15SignedMagnitudeleES_+0x11e>
   140005fcb:	48 8b 31             	mov    (%rcx),%rsi
   140005fce:	ba 18 00 00 00       	mov    $0x18,%edx
   140005fd3:	e8 c8 13 00 00       	call   1400073a0 <_ZdlPvy>
   140005fd8:	48 89 f1             	mov    %rsi,%rcx
   140005fdb:	eb e9                	jmp    140005fc6 <_ZN15SignedMagnitudeleES_+0x136>
   140005fdd:	48 89 c3             	mov    %rax,%rbx
   140005fe0:	eb cc                	jmp    140005fae <_ZN15SignedMagnitudeleES_+0x11e>
   140005fe2:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005fe7:	48 89 c3             	mov    %rax,%rbx
   140005fea:	48 39 f9             	cmp    %rdi,%rcx
   140005fed:	74 c7                	je     140005fb6 <_ZN15SignedMagnitudeleES_+0x126>
   140005fef:	48 8b 31             	mov    (%rcx),%rsi
   140005ff2:	ba 18 00 00 00       	mov    $0x18,%edx
   140005ff7:	e8 a4 13 00 00       	call   1400073a0 <_ZdlPvy>
   140005ffc:	48 89 f1             	mov    %rsi,%rcx
   140005fff:	eb e9                	jmp    140005fea <_ZN15SignedMagnitudeleES_+0x15a>
   140006001:	90                   	nop
   140006002:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006009:	00 00 00 00 
   14000600d:	0f 1f 00             	nopl   (%rax)

0000000140006010 <_ZN15SignedMagnitudegtES_>:
   140006010:	41 56                	push   %r14
   140006012:	41 55                	push   %r13
   140006014:	41 54                	push   %r12
   140006016:	55                   	push   %rbp
   140006017:	57                   	push   %rdi
   140006018:	56                   	push   %rsi
   140006019:	53                   	push   %rbx
   14000601a:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
   140006021:	80 79 1c 00          	cmpb   $0x0,0x1c(%rcx)
   140006025:	44 0f b6 72 1c       	movzbl 0x1c(%rdx),%r14d
   14000602a:	48 89 ce             	mov    %rcx,%rsi
   14000602d:	48 89 d7             	mov    %rdx,%rdi
   140006030:	0f 84 4a 01 00 00    	je     140006180 <_ZN15SignedMagnitudegtES_+0x170>
   140006036:	45 84 f6             	test   %r14b,%r14b
   140006039:	0f 84 2b 01 00 00    	je     14000616a <_ZN15SignedMagnitudegtES_+0x15a>
   14000603f:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140006046:	00 
   140006047:	48 8b 19             	mov    (%rcx),%rbx
   14000604a:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140006051:	00 00 00 00 00 
   140006056:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   14000605b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000605f:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140006066:	00 
   140006067:	48 39 d9             	cmp    %rbx,%rcx
   14000606a:	74 36                	je     1400060a2 <_ZN15SignedMagnitudegtES_+0x92>
   14000606c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006070:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006075:	e8 1e 13 00 00       	call   140007398 <_Znwy>
   14000607a:	48 89 c1             	mov    %rax,%rcx
   14000607d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006081:	48 89 ea             	mov    %rbp,%rdx
   140006084:	88 41 10             	mov    %al,0x10(%rcx)
   140006087:	e8 6c 13 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000608c:	48 8b 1b             	mov    (%rbx),%rbx
   14000608f:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   140006096:	00 01 
   140006098:	48 39 de             	cmp    %rbx,%rsi
   14000609b:	75 d3                	jne    140006070 <_ZN15SignedMagnitudegtES_+0x60>
   14000609d:	44 0f b6 76 1c       	movzbl 0x1c(%rsi),%r14d
   1400060a2:	8b 46 18             	mov    0x18(%rsi),%eax
   1400060a5:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   1400060aa:	49 89 e8             	mov    %rbp,%r8
   1400060ad:	48 89 fa             	mov    %rdi,%rdx
   1400060b0:	4c 89 e9             	mov    %r13,%rcx
   1400060b3:	44 88 b4 24 9c 00 00 	mov    %r14b,0x9c(%rsp)
   1400060ba:	00 
   1400060bb:	89 84 24 98 00 00 00 	mov    %eax,0x98(%rsp)
   1400060c2:	e8 99 f7 ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   1400060c7:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   1400060cc:	48 8b 1f             	mov    (%rdi),%rbx
   1400060cf:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   1400060d6:	00 00 
   1400060d8:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400060dd:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400060e1:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   1400060e6:	48 39 df             	cmp    %rbx,%rdi
   1400060e9:	74 2f                	je     14000611a <_ZN15SignedMagnitudegtES_+0x10a>
   1400060eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400060f0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400060f5:	e8 9e 12 00 00       	call   140007398 <_Znwy>
   1400060fa:	48 89 c1             	mov    %rax,%rcx
   1400060fd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006101:	4c 89 e2             	mov    %r12,%rdx
   140006104:	88 41 10             	mov    %al,0x10(%rcx)
   140006107:	e8 ec 12 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000610c:	48 8b 1b             	mov    (%rbx),%rbx
   14000610f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140006115:	48 39 df             	cmp    %rbx,%rdi
   140006118:	75 d6                	jne    1400060f0 <_ZN15SignedMagnitudegtES_+0xe0>
   14000611a:	8b 47 18             	mov    0x18(%rdi),%eax
   14000611d:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140006122:	4d 89 e0             	mov    %r12,%r8
   140006125:	48 89 f2             	mov    %rsi,%rdx
   140006128:	48 89 d9             	mov    %rbx,%rcx
   14000612b:	89 44 24 78          	mov    %eax,0x78(%rsp)
   14000612f:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140006133:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   140006137:	e8 24 f7 ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   14000613c:	4c 89 ea             	mov    %r13,%rdx
   14000613f:	48 89 d9             	mov    %rbx,%rcx
   140006142:	e8 a9 c9 ff ff       	call   140002af0 <_ZN13NaturalBinaryltES_>
   140006147:	48 89 d9             	mov    %rbx,%rcx
   14000614a:	41 89 c6             	mov    %eax,%r14d
   14000614d:	e8 6e bf ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006152:	4c 89 e1             	mov    %r12,%rcx
   140006155:	e8 66 bf ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000615a:	4c 89 e9             	mov    %r13,%rcx
   14000615d:	e8 5e bf ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006162:	48 89 e9             	mov    %rbp,%rcx
   140006165:	e8 56 bf ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000616a:	44 89 f0             	mov    %r14d,%eax
   14000616d:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
   140006174:	5b                   	pop    %rbx
   140006175:	5e                   	pop    %rsi
   140006176:	5f                   	pop    %rdi
   140006177:	5d                   	pop    %rbp
   140006178:	41 5c                	pop    %r12
   14000617a:	41 5d                	pop    %r13
   14000617c:	41 5e                	pop    %r14
   14000617e:	c3                   	ret
   14000617f:	90                   	nop
   140006180:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140006187:	00 
   140006188:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   14000618d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006191:	45 84 f6             	test   %r14b,%r14b
   140006194:	75 d4                	jne    14000616a <_ZN15SignedMagnitudegtES_+0x15a>
   140006196:	48 8b 19             	mov    (%rcx),%rbx
   140006199:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   1400061a0:	00 
   1400061a1:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   1400061a8:	00 00 00 00 00 
   1400061ad:	48 39 d9             	cmp    %rbx,%rcx
   1400061b0:	74 32                	je     1400061e4 <_ZN15SignedMagnitudegtES_+0x1d4>
   1400061b2:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400061b7:	e8 dc 11 00 00       	call   140007398 <_Znwy>
   1400061bc:	48 89 c1             	mov    %rax,%rcx
   1400061bf:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400061c3:	48 89 ea             	mov    %rbp,%rdx
   1400061c6:	88 41 10             	mov    %al,0x10(%rcx)
   1400061c9:	e8 2a 12 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400061ce:	48 8b 1b             	mov    (%rbx),%rbx
   1400061d1:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   1400061d8:	00 01 
   1400061da:	48 39 de             	cmp    %rbx,%rsi
   1400061dd:	75 d3                	jne    1400061b2 <_ZN15SignedMagnitudegtES_+0x1a2>
   1400061df:	44 0f b6 76 1c       	movzbl 0x1c(%rsi),%r14d
   1400061e4:	8b 46 18             	mov    0x18(%rsi),%eax
   1400061e7:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   1400061ec:	49 89 e8             	mov    %rbp,%r8
   1400061ef:	48 89 fa             	mov    %rdi,%rdx
   1400061f2:	4c 89 e9             	mov    %r13,%rcx
   1400061f5:	44 88 b4 24 9c 00 00 	mov    %r14b,0x9c(%rsp)
   1400061fc:	00 
   1400061fd:	89 84 24 98 00 00 00 	mov    %eax,0x98(%rsp)
   140006204:	e8 57 f6 ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140006209:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   14000620e:	48 8b 1f             	mov    (%rdi),%rbx
   140006211:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140006218:	00 00 
   14000621a:	66 49 0f 6e c4       	movq   %r12,%xmm0
   14000621f:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006223:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140006228:	48 39 df             	cmp    %rbx,%rdi
   14000622b:	74 2d                	je     14000625a <_ZN15SignedMagnitudegtES_+0x24a>
   14000622d:	0f 1f 00             	nopl   (%rax)
   140006230:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006235:	e8 5e 11 00 00       	call   140007398 <_Znwy>
   14000623a:	48 89 c1             	mov    %rax,%rcx
   14000623d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006241:	4c 89 e2             	mov    %r12,%rdx
   140006244:	88 41 10             	mov    %al,0x10(%rcx)
   140006247:	e8 ac 11 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000624c:	48 8b 1b             	mov    (%rbx),%rbx
   14000624f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140006255:	48 39 df             	cmp    %rbx,%rdi
   140006258:	75 d6                	jne    140006230 <_ZN15SignedMagnitudegtES_+0x220>
   14000625a:	8b 47 18             	mov    0x18(%rdi),%eax
   14000625d:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140006262:	4d 89 e0             	mov    %r12,%r8
   140006265:	48 89 f2             	mov    %rsi,%rdx
   140006268:	48 89 d9             	mov    %rbx,%rcx
   14000626b:	89 44 24 78          	mov    %eax,0x78(%rsp)
   14000626f:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140006273:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   140006277:	e8 e4 f5 ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   14000627c:	4c 89 ea             	mov    %r13,%rdx
   14000627f:	48 89 d9             	mov    %rbx,%rcx
   140006282:	e8 09 ca ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   140006287:	e9 bb fe ff ff       	jmp    140006147 <_ZN15SignedMagnitudegtES_+0x137>
   14000628c:	48 89 c3             	mov    %rax,%rbx
   14000628f:	48 89 e9             	mov    %rbp,%rcx
   140006292:	e8 29 be ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006297:	48 89 d9             	mov    %rbx,%rcx
   14000629a:	e8 41 22 00 00       	call   1400084e0 <_Unwind_Resume>
   14000629f:	48 89 c6             	mov    %rax,%rsi
   1400062a2:	48 89 d9             	mov    %rbx,%rcx
   1400062a5:	e8 16 be ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400062aa:	48 89 f3             	mov    %rsi,%rbx
   1400062ad:	4c 89 e1             	mov    %r12,%rcx
   1400062b0:	e8 0b be ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400062b5:	4c 89 e9             	mov    %r13,%rcx
   1400062b8:	e8 03 be ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400062bd:	eb d0                	jmp    14000628f <_ZN15SignedMagnitudegtES_+0x27f>
   1400062bf:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400062c6:	00 
   1400062c7:	48 89 c3             	mov    %rax,%rbx
   1400062ca:	48 39 e9             	cmp    %rbp,%rcx
   1400062cd:	74 c8                	je     140006297 <_ZN15SignedMagnitudegtES_+0x287>
   1400062cf:	48 8b 31             	mov    (%rcx),%rsi
   1400062d2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400062d7:	e8 c4 10 00 00       	call   1400073a0 <_ZdlPvy>
   1400062dc:	48 89 f1             	mov    %rsi,%rcx
   1400062df:	eb e9                	jmp    1400062ca <_ZN15SignedMagnitudegtES_+0x2ba>
   1400062e1:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400062e8:	00 
   1400062e9:	48 89 c3             	mov    %rax,%rbx
   1400062ec:	48 39 e9             	cmp    %rbp,%rcx
   1400062ef:	74 a6                	je     140006297 <_ZN15SignedMagnitudegtES_+0x287>
   1400062f1:	48 8b 31             	mov    (%rcx),%rsi
   1400062f4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400062f9:	e8 a2 10 00 00       	call   1400073a0 <_ZdlPvy>
   1400062fe:	48 89 f1             	mov    %rsi,%rcx
   140006301:	eb e9                	jmp    1400062ec <_ZN15SignedMagnitudegtES_+0x2dc>
   140006303:	eb 87                	jmp    14000628c <_ZN15SignedMagnitudegtES_+0x27c>
   140006305:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000630a:	48 89 c3             	mov    %rax,%rbx
   14000630d:	4c 39 e1             	cmp    %r12,%rcx
   140006310:	74 a3                	je     1400062b5 <_ZN15SignedMagnitudegtES_+0x2a5>
   140006312:	48 8b 31             	mov    (%rcx),%rsi
   140006315:	ba 18 00 00 00       	mov    $0x18,%edx
   14000631a:	e8 81 10 00 00       	call   1400073a0 <_ZdlPvy>
   14000631f:	48 89 f1             	mov    %rsi,%rcx
   140006322:	eb e9                	jmp    14000630d <_ZN15SignedMagnitudegtES_+0x2fd>
   140006324:	48 89 c3             	mov    %rax,%rbx
   140006327:	eb 84                	jmp    1400062ad <_ZN15SignedMagnitudegtES_+0x29d>
   140006329:	e9 71 ff ff ff       	jmp    14000629f <_ZN15SignedMagnitudegtES_+0x28f>
   14000632e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140006333:	48 89 c3             	mov    %rax,%rbx
   140006336:	4c 39 e1             	cmp    %r12,%rcx
   140006339:	0f 84 76 ff ff ff    	je     1400062b5 <_ZN15SignedMagnitudegtES_+0x2a5>
   14000633f:	48 8b 31             	mov    (%rcx),%rsi
   140006342:	ba 18 00 00 00       	mov    $0x18,%edx
   140006347:	e8 54 10 00 00       	call   1400073a0 <_ZdlPvy>
   14000634c:	48 89 f1             	mov    %rsi,%rcx
   14000634f:	eb e5                	jmp    140006336 <_ZN15SignedMagnitudegtES_+0x326>
   140006351:	eb d1                	jmp    140006324 <_ZN15SignedMagnitudegtES_+0x314>
   140006353:	90                   	nop
   140006354:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000635b:	00 00 00 00 
   14000635f:	90                   	nop

0000000140006360 <_ZN15SignedMagnitudegeES_>:
   140006360:	41 54                	push   %r12
   140006362:	55                   	push   %rbp
   140006363:	57                   	push   %rdi
   140006364:	56                   	push   %rsi
   140006365:	53                   	push   %rbx
   140006366:	48 83 ec 60          	sub    $0x60,%rsp
   14000636a:	48 8b 1a             	mov    (%rdx),%rbx
   14000636d:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140006372:	48 89 cd             	mov    %rcx,%rbp
   140006375:	48 89 d6             	mov    %rdx,%rsi
   140006378:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000637f:	00 00 
   140006381:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140006386:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000638a:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   14000638f:	48 39 da             	cmp    %rbx,%rdx
   140006392:	74 2e                	je     1400063c2 <_ZN15SignedMagnitudegeES_+0x62>
   140006394:	0f 1f 40 00          	nopl   0x0(%rax)
   140006398:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000639d:	e8 f6 0f 00 00       	call   140007398 <_Znwy>
   1400063a2:	48 89 c1             	mov    %rax,%rcx
   1400063a5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400063a9:	48 89 fa             	mov    %rdi,%rdx
   1400063ac:	88 41 10             	mov    %al,0x10(%rcx)
   1400063af:	e8 44 10 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400063b4:	48 8b 1b             	mov    (%rbx),%rbx
   1400063b7:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400063bd:	48 39 de             	cmp    %rbx,%rsi
   1400063c0:	75 d6                	jne    140006398 <_ZN15SignedMagnitudegeES_+0x38>
   1400063c2:	8b 46 18             	mov    0x18(%rsi),%eax
   1400063c5:	48 89 fa             	mov    %rdi,%rdx
   1400063c8:	48 89 e9             	mov    %rbp,%rcx
   1400063cb:	89 44 24 38          	mov    %eax,0x38(%rsp)
   1400063cf:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   1400063d3:	88 44 24 3c          	mov    %al,0x3c(%rsp)
   1400063d7:	e8 74 f5 ff ff       	call   140005950 <_ZN15SignedMagnitudeeqES_>
   1400063dc:	89 c3                	mov    %eax,%ebx
   1400063de:	84 c0                	test   %al,%al
   1400063e0:	75 7c                	jne    14000645e <_ZN15SignedMagnitudegeES_+0xfe>
   1400063e2:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   1400063e7:	48 8b 1e             	mov    (%rsi),%rbx
   1400063ea:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400063f1:	00 00 
   1400063f3:	66 49 0f 6e c4       	movq   %r12,%xmm0
   1400063f8:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400063fc:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140006401:	48 39 de             	cmp    %rbx,%rsi
   140006404:	74 34                	je     14000643a <_ZN15SignedMagnitudegeES_+0xda>
   140006406:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000640d:	00 00 00 
   140006410:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006415:	e8 7e 0f 00 00       	call   140007398 <_Znwy>
   14000641a:	48 89 c1             	mov    %rax,%rcx
   14000641d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006421:	4c 89 e2             	mov    %r12,%rdx
   140006424:	88 41 10             	mov    %al,0x10(%rcx)
   140006427:	e8 cc 0f 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000642c:	48 8b 1b             	mov    (%rbx),%rbx
   14000642f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140006435:	48 39 de             	cmp    %rbx,%rsi
   140006438:	75 d6                	jne    140006410 <_ZN15SignedMagnitudegeES_+0xb0>
   14000643a:	8b 46 18             	mov    0x18(%rsi),%eax
   14000643d:	4c 89 e2             	mov    %r12,%rdx
   140006440:	48 89 e9             	mov    %rbp,%rcx
   140006443:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140006447:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   14000644b:	88 44 24 5c          	mov    %al,0x5c(%rsp)
   14000644f:	e8 bc fb ff ff       	call   140006010 <_ZN15SignedMagnitudegtES_>
   140006454:	4c 89 e1             	mov    %r12,%rcx
   140006457:	89 c3                	mov    %eax,%ebx
   140006459:	e8 62 bc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000645e:	48 89 f9             	mov    %rdi,%rcx
   140006461:	e8 5a bc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006466:	89 d8                	mov    %ebx,%eax
   140006468:	48 83 c4 60          	add    $0x60,%rsp
   14000646c:	5b                   	pop    %rbx
   14000646d:	5e                   	pop    %rsi
   14000646e:	5f                   	pop    %rdi
   14000646f:	5d                   	pop    %rbp
   140006470:	41 5c                	pop    %r12
   140006472:	c3                   	ret
   140006473:	4c 89 e1             	mov    %r12,%rcx
   140006476:	48 89 c3             	mov    %rax,%rbx
   140006479:	e8 42 bc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000647e:	48 89 f9             	mov    %rdi,%rcx
   140006481:	e8 3a bc ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006486:	48 89 d9             	mov    %rbx,%rcx
   140006489:	e8 52 20 00 00       	call   1400084e0 <_Unwind_Resume>
   14000648e:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140006493:	48 89 c3             	mov    %rax,%rbx
   140006496:	4c 39 e1             	cmp    %r12,%rcx
   140006499:	74 e3                	je     14000647e <_ZN15SignedMagnitudegeES_+0x11e>
   14000649b:	48 8b 31             	mov    (%rcx),%rsi
   14000649e:	ba 18 00 00 00       	mov    $0x18,%edx
   1400064a3:	e8 f8 0e 00 00       	call   1400073a0 <_ZdlPvy>
   1400064a8:	48 89 f1             	mov    %rsi,%rcx
   1400064ab:	eb e9                	jmp    140006496 <_ZN15SignedMagnitudegeES_+0x136>
   1400064ad:	48 89 c3             	mov    %rax,%rbx
   1400064b0:	eb cc                	jmp    14000647e <_ZN15SignedMagnitudegeES_+0x11e>
   1400064b2:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400064b7:	48 89 c3             	mov    %rax,%rbx
   1400064ba:	48 39 f9             	cmp    %rdi,%rcx
   1400064bd:	74 c7                	je     140006486 <_ZN15SignedMagnitudegeES_+0x126>
   1400064bf:	48 8b 31             	mov    (%rcx),%rsi
   1400064c2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400064c7:	e8 d4 0e 00 00       	call   1400073a0 <_ZdlPvy>
   1400064cc:	48 89 f1             	mov    %rsi,%rcx
   1400064cf:	eb e9                	jmp    1400064ba <_ZN15SignedMagnitudegeES_+0x15a>
   1400064d1:	90                   	nop
   1400064d2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400064d9:	00 00 00 00 
   1400064dd:	0f 1f 00             	nopl   (%rax)

00000001400064e0 <_ZN15SignedMagnitudeplES_>:
   1400064e0:	41 57                	push   %r15
   1400064e2:	41 56                	push   %r14
   1400064e4:	41 55                	push   %r13
   1400064e6:	41 54                	push   %r12
   1400064e8:	55                   	push   %rbp
   1400064e9:	57                   	push   %rdi
   1400064ea:	56                   	push   %rsi
   1400064eb:	53                   	push   %rbx
   1400064ec:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
   1400064f3:	0f 11 b4 24 b0 00 00 	movups %xmm6,0xb0(%rsp)
   1400064fa:	00 
   1400064fb:	49 8b 28             	mov    (%r8),%rbp
   1400064fe:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
   140006503:	49 89 cc             	mov    %rcx,%r12
   140006506:	48 89 d7             	mov    %rdx,%rdi
   140006509:	4c 89 c3             	mov    %r8,%rbx
   14000650c:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140006511:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140006518:	00 00 00 00 00 
   14000651d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006521:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140006526:	49 39 e8             	cmp    %rbp,%r8
   140006529:	74 33                	je     14000655e <_ZN15SignedMagnitudeplES_+0x7e>
   14000652b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006530:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006535:	e8 5e 0e 00 00       	call   140007398 <_Znwy>
   14000653a:	48 89 c1             	mov    %rax,%rcx
   14000653d:	0f b6 45 10          	movzbl 0x10(%rbp),%eax
   140006541:	48 89 f2             	mov    %rsi,%rdx
   140006544:	88 41 10             	mov    %al,0x10(%rcx)
   140006547:	e8 ac 0e 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000654c:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140006550:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140006557:	00 01 
   140006559:	48 39 eb             	cmp    %rbp,%rbx
   14000655c:	75 d2                	jne    140006530 <_ZN15SignedMagnitudeplES_+0x50>
   14000655e:	8b 43 18             	mov    0x18(%rbx),%eax
   140006561:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
   140006566:	49 89 f0             	mov    %rsi,%r8
   140006569:	48 89 fa             	mov    %rdi,%rdx
   14000656c:	4c 89 f1             	mov    %r14,%rcx
   14000656f:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
   140006576:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   14000657a:	88 84 24 8c 00 00 00 	mov    %al,0x8c(%rsp)
   140006581:	e8 da f2 ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140006586:	48 8d ac 24 90 00 00 	lea    0x90(%rsp),%rbp
   14000658d:	00 
   14000658e:	48 89 f1             	mov    %rsi,%rcx
   140006591:	e8 2a bb ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006596:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   14000659b:	4c 8b 2f             	mov    (%rdi),%r13
   14000659e:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   1400065a5:	00 00 00 00 00 
   1400065aa:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400065ae:	0f 11 b4 24 90 00 00 	movups %xmm6,0x90(%rsp)
   1400065b5:	00 
   1400065b6:	4c 39 ef             	cmp    %r13,%rdi
   1400065b9:	74 34                	je     1400065ef <_ZN15SignedMagnitudeplES_+0x10f>
   1400065bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400065c0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400065c5:	e8 ce 0d 00 00       	call   140007398 <_Znwy>
   1400065ca:	48 89 c1             	mov    %rax,%rcx
   1400065cd:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   1400065d2:	48 89 ea             	mov    %rbp,%rdx
   1400065d5:	88 41 10             	mov    %al,0x10(%rcx)
   1400065d8:	e8 1b 0e 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400065dd:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   1400065e1:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   1400065e8:	00 01 
   1400065ea:	4c 39 ef             	cmp    %r13,%rdi
   1400065ed:	75 d1                	jne    1400065c0 <_ZN15SignedMagnitudeplES_+0xe0>
   1400065ef:	8b 47 18             	mov    0x18(%rdi),%eax
   1400065f2:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
   1400065f7:	49 89 e8             	mov    %rbp,%r8
   1400065fa:	48 89 da             	mov    %rbx,%rdx
   1400065fd:	4c 89 e9             	mov    %r13,%rcx
   140006600:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
   140006607:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   14000660b:	88 84 24 ac 00 00 00 	mov    %al,0xac(%rsp)
   140006612:	e8 49 f2 ff ff       	call   140005860 <_ZN15SignedMagnitude15alignModuleWithES_>
   140006617:	48 89 e9             	mov    %rbp,%rcx
   14000661a:	e8 a1 ba ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000661f:	4c 89 e1             	mov    %r12,%rcx
   140006622:	e8 f9 b8 ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   140006627:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   14000662d:	31 d2                	xor    %edx,%edx
   14000662f:	48 89 e9             	mov    %rbp,%rcx
   140006632:	e8 f9 b8 ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140006637:	48 89 ea             	mov    %rbp,%rdx
   14000663a:	4c 89 e1             	mov    %r12,%rcx
   14000663d:	e8 de eb ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140006642:	48 89 e9             	mov    %rbp,%rcx
   140006645:	e8 76 ba ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000664a:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   14000664e:	41 c7 44 24 18 00 00 	movl   $0x0,0x18(%r12)
   140006655:	00 00 
   140006657:	38 47 1c             	cmp    %al,0x1c(%rdi)
   14000665a:	0f 84 f8 00 00 00    	je     140006758 <_ZN15SignedMagnitudeplES_+0x278>
   140006660:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140006665:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   14000666a:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   140006671:	00 00 00 00 00 
   140006676:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000667a:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   140006681:	00 
   140006682:	4d 39 ef             	cmp    %r13,%r15
   140006685:	74 37                	je     1400066be <_ZN15SignedMagnitudeplES_+0x1de>
   140006687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000668e:	00 00 
   140006690:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006695:	e8 fe 0c 00 00       	call   140007398 <_Znwy>
   14000669a:	48 89 c1             	mov    %rax,%rcx
   14000669d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400066a2:	48 89 ea             	mov    %rbp,%rdx
   1400066a5:	88 41 10             	mov    %al,0x10(%rcx)
   1400066a8:	e8 4b 0d 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400066ad:	4d 8b 3f             	mov    (%r15),%r15
   1400066b0:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   1400066b7:	00 01 
   1400066b9:	4d 39 ef             	cmp    %r13,%r15
   1400066bc:	75 d2                	jne    140006690 <_ZN15SignedMagnitudeplES_+0x1b0>
   1400066be:	48 89 ea             	mov    %rbp,%rdx
   1400066c1:	4c 89 f1             	mov    %r14,%rcx
   1400066c4:	e8 57 ca ff ff       	call   140003120 <_ZN13NaturalBinarygeES_>
   1400066c9:	48 89 e9             	mov    %rbp,%rcx
   1400066cc:	41 89 c7             	mov    %eax,%r15d
   1400066cf:	e8 ec b9 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400066d4:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400066d9:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   1400066e0:	00 00 00 00 00 
   1400066e5:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400066e9:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   1400066ee:	45 84 ff             	test   %r15b,%r15b
   1400066f1:	0f 84 89 01 00 00    	je     140006880 <_ZN15SignedMagnitudeplES_+0x3a0>
   1400066f7:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   1400066fc:	4d 39 ef             	cmp    %r13,%r15
   1400066ff:	74 35                	je     140006736 <_ZN15SignedMagnitudeplES_+0x256>
   140006701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006708:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000670d:	e8 86 0c 00 00       	call   140007398 <_Znwy>
   140006712:	48 89 c1             	mov    %rax,%rcx
   140006715:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   14000671a:	48 89 f2             	mov    %rsi,%rdx
   14000671d:	88 41 10             	mov    %al,0x10(%rcx)
   140006720:	e8 d3 0c 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006725:	4d 8b 3f             	mov    (%r15),%r15
   140006728:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   14000672f:	00 01 
   140006731:	4d 39 ef             	cmp    %r13,%r15
   140006734:	75 d2                	jne    140006708 <_ZN15SignedMagnitudeplES_+0x228>
   140006736:	49 89 f0             	mov    %rsi,%r8
   140006739:	4c 89 f2             	mov    %r14,%rdx
   14000673c:	48 89 e9             	mov    %rbp,%rcx
   14000673f:	e8 dc bc ff ff       	call   140002420 <_ZN13NaturalBinarymiES_>
   140006744:	48 89 ea             	mov    %rbp,%rdx
   140006747:	4c 89 e1             	mov    %r12,%rcx
   14000674a:	e8 d1 ea ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000674f:	eb 76                	jmp    1400067c7 <_ZN15SignedMagnitudeplES_+0x2e7>
   140006751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006758:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000675d:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140006762:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140006769:	00 00 00 00 00 
   14000676e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006772:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140006777:	4d 39 ef             	cmp    %r13,%r15
   14000677a:	74 32                	je     1400067ae <_ZN15SignedMagnitudeplES_+0x2ce>
   14000677c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006780:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006785:	e8 0e 0c 00 00       	call   140007398 <_Znwy>
   14000678a:	48 89 c1             	mov    %rax,%rcx
   14000678d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   140006792:	48 89 f2             	mov    %rsi,%rdx
   140006795:	88 41 10             	mov    %al,0x10(%rcx)
   140006798:	e8 5b 0c 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000679d:	4d 8b 3f             	mov    (%r15),%r15
   1400067a0:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   1400067a7:	00 01 
   1400067a9:	4d 39 ef             	cmp    %r13,%r15
   1400067ac:	75 d2                	jne    140006780 <_ZN15SignedMagnitudeplES_+0x2a0>
   1400067ae:	49 89 f0             	mov    %rsi,%r8
   1400067b1:	4c 89 f2             	mov    %r14,%rdx
   1400067b4:	48 89 e9             	mov    %rbp,%rcx
   1400067b7:	e8 44 b9 ff ff       	call   140002100 <_ZN13NaturalBinaryplES_>
   1400067bc:	48 89 ea             	mov    %rbp,%rdx
   1400067bf:	4c 89 e1             	mov    %r12,%rcx
   1400067c2:	e8 59 ea ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400067c7:	48 89 e9             	mov    %rbp,%rcx
   1400067ca:	e8 f1 b8 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400067cf:	48 89 f1             	mov    %rsi,%rcx
   1400067d2:	e8 e9 b8 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400067d7:	0f b6 53 1c          	movzbl 0x1c(%rbx),%edx
   1400067db:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   1400067df:	88 54 24 2f          	mov    %dl,0x2f(%rsp)
   1400067e3:	84 d2                	test   %dl,%dl
   1400067e5:	74 19                	je     140006800 <_ZN15SignedMagnitudeplES_+0x320>
   1400067e7:	84 c0                	test   %al,%al
   1400067e9:	0f 84 77 01 00 00    	je     140006966 <_ZN15SignedMagnitudeplES_+0x486>
   1400067ef:	41 c6 44 24 1c 01    	movb   $0x1,0x1c(%r12)
   1400067f5:	eb 17                	jmp    14000680e <_ZN15SignedMagnitudeplES_+0x32e>
   1400067f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400067fe:	00 00 
   140006800:	84 c0                	test   %al,%al
   140006802:	0f 85 d4 00 00 00    	jne    1400068dc <_ZN15SignedMagnitudeplES_+0x3fc>
   140006808:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   14000680e:	4c 89 e1             	mov    %r12,%rcx
   140006811:	e8 2a c2 ff ff       	call   140002a40 <_ZN13NaturalBinary8optimizeEv>
   140006816:	31 d2                	xor    %edx,%edx
   140006818:	48 89 e9             	mov    %rbp,%rcx
   14000681b:	e8 10 b7 ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140006820:	48 89 ea             	mov    %rbp,%rdx
   140006823:	4c 89 e1             	mov    %r12,%rcx
   140006826:	e8 65 c4 ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   14000682b:	89 c6                	mov    %eax,%esi
   14000682d:	48 89 e9             	mov    %rbp,%rcx
   140006830:	e8 8b b8 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006835:	40 84 f6             	test   %sil,%sil
   140006838:	74 10                	je     14000684a <_ZN15SignedMagnitudeplES_+0x36a>
   14000683a:	8b 47 18             	mov    0x18(%rdi),%eax
   14000683d:	8b 53 18             	mov    0x18(%rbx),%edx
   140006840:	39 d0                	cmp    %edx,%eax
   140006842:	0f 42 c2             	cmovb  %edx,%eax
   140006845:	41 89 44 24 18       	mov    %eax,0x18(%r12)
   14000684a:	4c 89 e9             	mov    %r13,%rcx
   14000684d:	e8 6e b8 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006852:	4c 89 f1             	mov    %r14,%rcx
   140006855:	e8 66 b8 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000685a:	90                   	nop
   14000685b:	0f 10 b4 24 b0 00 00 	movups 0xb0(%rsp),%xmm6
   140006862:	00 
   140006863:	4c 89 e0             	mov    %r12,%rax
   140006866:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
   14000686d:	5b                   	pop    %rbx
   14000686e:	5e                   	pop    %rsi
   14000686f:	5f                   	pop    %rdi
   140006870:	5d                   	pop    %rbp
   140006871:	41 5c                	pop    %r12
   140006873:	41 5d                	pop    %r13
   140006875:	41 5e                	pop    %r14
   140006877:	41 5f                	pop    %r15
   140006879:	c3                   	ret
   14000687a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006880:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
   140006885:	4d 39 f7             	cmp    %r14,%r15
   140006888:	74 34                	je     1400068be <_ZN15SignedMagnitudeplES_+0x3de>
   14000688a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006890:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006895:	e8 fe 0a 00 00       	call   140007398 <_Znwy>
   14000689a:	48 89 c1             	mov    %rax,%rcx
   14000689d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400068a2:	48 89 f2             	mov    %rsi,%rdx
   1400068a5:	88 41 10             	mov    %al,0x10(%rcx)
   1400068a8:	e8 4b 0b 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400068ad:	4d 8b 3f             	mov    (%r15),%r15
   1400068b0:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   1400068b7:	00 01 
   1400068b9:	4d 39 f7             	cmp    %r14,%r15
   1400068bc:	75 d2                	jne    140006890 <_ZN15SignedMagnitudeplES_+0x3b0>
   1400068be:	49 89 f0             	mov    %rsi,%r8
   1400068c1:	4c 89 ea             	mov    %r13,%rdx
   1400068c4:	48 89 e9             	mov    %rbp,%rcx
   1400068c7:	e8 54 bb ff ff       	call   140002420 <_ZN13NaturalBinarymiES_>
   1400068cc:	48 89 ea             	mov    %rbp,%rdx
   1400068cf:	4c 89 e1             	mov    %r12,%rcx
   1400068d2:	e8 49 e9 ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400068d7:	e9 eb fe ff ff       	jmp    1400067c7 <_ZN15SignedMagnitudeplES_+0x2e7>
   1400068dc:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400068e1:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   1400068e6:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   1400068ed:	00 00 00 00 00 
   1400068f2:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400068f6:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   1400068fd:	00 
   1400068fe:	4d 39 ef             	cmp    %r13,%r15
   140006901:	74 33                	je     140006936 <_ZN15SignedMagnitudeplES_+0x456>
   140006903:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006908:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000690d:	e8 86 0a 00 00       	call   140007398 <_Znwy>
   140006912:	48 89 c1             	mov    %rax,%rcx
   140006915:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   14000691a:	48 89 ea             	mov    %rbp,%rdx
   14000691d:	88 41 10             	mov    %al,0x10(%rcx)
   140006920:	e8 d3 0a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006925:	4d 8b 3f             	mov    (%r15),%r15
   140006928:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   14000692f:	00 01 
   140006931:	4d 39 ef             	cmp    %r13,%r15
   140006934:	75 d2                	jne    140006908 <_ZN15SignedMagnitudeplES_+0x428>
   140006936:	48 89 ea             	mov    %rbp,%rdx
   140006939:	4c 89 f1             	mov    %r14,%rcx
   14000693c:	e8 4f c3 ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   140006941:	41 88 44 24 1c       	mov    %al,0x1c(%r12)
   140006946:	48 89 e9             	mov    %rbp,%rcx
   140006949:	e8 72 b7 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000694e:	80 7c 24 2f 00       	cmpb   $0x0,0x2f(%rsp)
   140006953:	0f 84 b5 fe ff ff    	je     14000680e <_ZN15SignedMagnitudeplES_+0x32e>
   140006959:	48 89 f1             	mov    %rsi,%rcx
   14000695c:	e8 5f b7 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006961:	e9 a8 fe ff ff       	jmp    14000680e <_ZN15SignedMagnitudeplES_+0x32e>
   140006966:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000696b:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140006970:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140006977:	00 00 00 00 00 
   14000697c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006980:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140006985:	4d 39 ef             	cmp    %r13,%r15
   140006988:	74 34                	je     1400069be <_ZN15SignedMagnitudeplES_+0x4de>
   14000698a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006990:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006995:	e8 fe 09 00 00       	call   140007398 <_Znwy>
   14000699a:	48 89 c1             	mov    %rax,%rcx
   14000699d:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400069a2:	48 89 f2             	mov    %rsi,%rdx
   1400069a5:	88 41 10             	mov    %al,0x10(%rcx)
   1400069a8:	e8 4b 0a 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400069ad:	4d 8b 3f             	mov    (%r15),%r15
   1400069b0:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   1400069b7:	00 01 
   1400069b9:	4d 39 ef             	cmp    %r13,%r15
   1400069bc:	75 d2                	jne    140006990 <_ZN15SignedMagnitudeplES_+0x4b0>
   1400069be:	48 89 f2             	mov    %rsi,%rdx
   1400069c1:	4c 89 f1             	mov    %r14,%rcx
   1400069c4:	e8 27 c1 ff ff       	call   140002af0 <_ZN13NaturalBinaryltES_>
   1400069c9:	84 c0                	test   %al,%al
   1400069cb:	74 08                	je     1400069d5 <_ZN15SignedMagnitudeplES_+0x4f5>
   1400069cd:	41 c6 44 24 1c 01    	movb   $0x1,0x1c(%r12)
   1400069d3:	eb 84                	jmp    140006959 <_ZN15SignedMagnitudeplES_+0x479>
   1400069d5:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   1400069d9:	88 44 24 2f          	mov    %al,0x2f(%rsp)
   1400069dd:	84 c0                	test   %al,%al
   1400069df:	0f 85 f7 fe ff ff    	jne    1400068dc <_ZN15SignedMagnitudeplES_+0x3fc>
   1400069e5:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   1400069eb:	e9 69 ff ff ff       	jmp    140006959 <_ZN15SignedMagnitudeplES_+0x479>
   1400069f0:	48 89 c3             	mov    %rax,%rbx
   1400069f3:	48 89 f1             	mov    %rsi,%rcx
   1400069f6:	e8 c5 b6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400069fb:	4c 89 e1             	mov    %r12,%rcx
   1400069fe:	e8 bd b6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006a03:	4c 89 e9             	mov    %r13,%rcx
   140006a06:	e8 b5 b6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006a0b:	4c 89 f1             	mov    %r14,%rcx
   140006a0e:	e8 ad b6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006a13:	48 89 d9             	mov    %rbx,%rcx
   140006a16:	e8 c5 1a 00 00       	call   1400084e0 <_Unwind_Resume>
   140006a1b:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   140006a22:	00 
   140006a23:	48 89 c3             	mov    %rax,%rbx
   140006a26:	48 39 e9             	cmp    %rbp,%rcx
   140006a29:	74 1d                	je     140006a48 <_ZN15SignedMagnitudeplES_+0x568>
   140006a2b:	48 8b 39             	mov    (%rcx),%rdi
   140006a2e:	ba 18 00 00 00       	mov    $0x18,%edx
   140006a33:	e8 68 09 00 00       	call   1400073a0 <_ZdlPvy>
   140006a38:	48 89 f9             	mov    %rdi,%rcx
   140006a3b:	eb e9                	jmp    140006a26 <_ZN15SignedMagnitudeplES_+0x546>
   140006a3d:	48 89 e9             	mov    %rbp,%rcx
   140006a40:	48 89 c3             	mov    %rax,%rbx
   140006a43:	e8 78 b6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006a48:	80 7c 24 2f 00       	cmpb   $0x0,0x2f(%rsp)
   140006a4d:	75 a4                	jne    1400069f3 <_ZN15SignedMagnitudeplES_+0x513>
   140006a4f:	eb aa                	jmp    1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006a51:	48 89 c3             	mov    %rax,%rbx
   140006a54:	eb a5                	jmp    1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006a56:	48 89 e9             	mov    %rbp,%rcx
   140006a59:	48 89 c3             	mov    %rax,%rbx
   140006a5c:	e8 5f b6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006a61:	eb 98                	jmp    1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006a63:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   140006a6a:	00 
   140006a6b:	48 89 c3             	mov    %rax,%rbx
   140006a6e:	48 39 e9             	cmp    %rbp,%rcx
   140006a71:	74 88                	je     1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006a73:	48 8b 31             	mov    (%rcx),%rsi
   140006a76:	ba 18 00 00 00       	mov    $0x18,%edx
   140006a7b:	e8 20 09 00 00       	call   1400073a0 <_ZdlPvy>
   140006a80:	48 89 f1             	mov    %rsi,%rcx
   140006a83:	eb e9                	jmp    140006a6e <_ZN15SignedMagnitudeplES_+0x58e>
   140006a85:	48 89 f1             	mov    %rsi,%rcx
   140006a88:	48 89 c3             	mov    %rax,%rbx
   140006a8b:	e8 30 b6 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006a90:	48 89 d9             	mov    %rbx,%rcx
   140006a93:	e8 48 1a 00 00       	call   1400084e0 <_Unwind_Resume>
   140006a98:	eb bc                	jmp    140006a56 <_ZN15SignedMagnitudeplES_+0x576>
   140006a9a:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140006a9f:	48 89 c3             	mov    %rax,%rbx
   140006aa2:	48 39 f1             	cmp    %rsi,%rcx
   140006aa5:	0f 84 50 ff ff ff    	je     1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006aab:	48 8b 39             	mov    (%rcx),%rdi
   140006aae:	ba 18 00 00 00       	mov    $0x18,%edx
   140006ab3:	e8 e8 08 00 00       	call   1400073a0 <_ZdlPvy>
   140006ab8:	48 89 f9             	mov    %rdi,%rcx
   140006abb:	eb e5                	jmp    140006aa2 <_ZN15SignedMagnitudeplES_+0x5c2>
   140006abd:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140006ac2:	48 89 c3             	mov    %rax,%rbx
   140006ac5:	48 39 f1             	cmp    %rsi,%rcx
   140006ac8:	74 c6                	je     140006a90 <_ZN15SignedMagnitudeplES_+0x5b0>
   140006aca:	48 8b 39             	mov    (%rcx),%rdi
   140006acd:	ba 18 00 00 00       	mov    $0x18,%edx
   140006ad2:	e8 c9 08 00 00       	call   1400073a0 <_ZdlPvy>
   140006ad7:	48 89 f9             	mov    %rdi,%rcx
   140006ada:	eb e9                	jmp    140006ac5 <_ZN15SignedMagnitudeplES_+0x5e5>
   140006adc:	48 89 e9             	mov    %rbp,%rcx
   140006adf:	48 89 c3             	mov    %rax,%rbx
   140006ae2:	e8 d9 b5 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006ae7:	e9 07 ff ff ff       	jmp    1400069f3 <_ZN15SignedMagnitudeplES_+0x513>
   140006aec:	e9 60 ff ff ff       	jmp    140006a51 <_ZN15SignedMagnitudeplES_+0x571>
   140006af1:	eb e9                	jmp    140006adc <_ZN15SignedMagnitudeplES_+0x5fc>
   140006af3:	e9 f8 fe ff ff       	jmp    1400069f0 <_ZN15SignedMagnitudeplES_+0x510>
   140006af8:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140006afd:	48 89 c3             	mov    %rax,%rbx
   140006b00:	48 39 f1             	cmp    %rsi,%rcx
   140006b03:	0f 84 f2 fe ff ff    	je     1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006b09:	48 8b 39             	mov    (%rcx),%rdi
   140006b0c:	ba 18 00 00 00       	mov    $0x18,%edx
   140006b11:	e8 8a 08 00 00       	call   1400073a0 <_ZdlPvy>
   140006b16:	48 89 f9             	mov    %rdi,%rcx
   140006b19:	eb e5                	jmp    140006b00 <_ZN15SignedMagnitudeplES_+0x620>
   140006b1b:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140006b20:	48 89 c3             	mov    %rax,%rbx
   140006b23:	48 39 f1             	cmp    %rsi,%rcx
   140006b26:	0f 84 cf fe ff ff    	je     1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006b2c:	48 8b 39             	mov    (%rcx),%rdi
   140006b2f:	ba 18 00 00 00       	mov    $0x18,%edx
   140006b34:	e8 67 08 00 00       	call   1400073a0 <_ZdlPvy>
   140006b39:	48 89 f9             	mov    %rdi,%rcx
   140006b3c:	eb e5                	jmp    140006b23 <_ZN15SignedMagnitudeplES_+0x643>
   140006b3e:	e9 ad fe ff ff       	jmp    1400069f0 <_ZN15SignedMagnitudeplES_+0x510>
   140006b43:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140006b48:	48 89 c3             	mov    %rax,%rbx
   140006b4b:	48 39 f1             	cmp    %rsi,%rcx
   140006b4e:	0f 84 a7 fe ff ff    	je     1400069fb <_ZN15SignedMagnitudeplES_+0x51b>
   140006b54:	48 8b 39             	mov    (%rcx),%rdi
   140006b57:	ba 18 00 00 00       	mov    $0x18,%edx
   140006b5c:	e8 3f 08 00 00       	call   1400073a0 <_ZdlPvy>
   140006b61:	48 89 f9             	mov    %rdi,%rcx
   140006b64:	eb e5                	jmp    140006b4b <_ZN15SignedMagnitudeplES_+0x66b>
   140006b66:	48 89 e9             	mov    %rbp,%rcx
   140006b69:	48 89 c3             	mov    %rax,%rbx
   140006b6c:	e8 4f b5 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006b71:	e9 95 fe ff ff       	jmp    140006a0b <_ZN15SignedMagnitudeplES_+0x52b>
   140006b76:	48 89 c3             	mov    %rax,%rbx
   140006b79:	e9 85 fe ff ff       	jmp    140006a03 <_ZN15SignedMagnitudeplES_+0x523>
   140006b7e:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   140006b85:	00 
   140006b86:	48 89 c3             	mov    %rax,%rbx
   140006b89:	48 39 e9             	cmp    %rbp,%rcx
   140006b8c:	0f 84 79 fe ff ff    	je     140006a0b <_ZN15SignedMagnitudeplES_+0x52b>
   140006b92:	48 8b 31             	mov    (%rcx),%rsi
   140006b95:	ba 18 00 00 00       	mov    $0x18,%edx
   140006b9a:	e8 01 08 00 00       	call   1400073a0 <_ZdlPvy>
   140006b9f:	48 89 f1             	mov    %rsi,%rcx
   140006ba2:	eb e5                	jmp    140006b89 <_ZN15SignedMagnitudeplES_+0x6a9>
   140006ba4:	e9 33 ff ff ff       	jmp    140006adc <_ZN15SignedMagnitudeplES_+0x5fc>
   140006ba9:	e9 a8 fe ff ff       	jmp    140006a56 <_ZN15SignedMagnitudeplES_+0x576>
   140006bae:	e9 3d fe ff ff       	jmp    1400069f0 <_ZN15SignedMagnitudeplES_+0x510>
   140006bb3:	90                   	nop
   140006bb4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006bbb:	00 00 00 00 
   140006bbf:	90                   	nop

0000000140006bc0 <_ZN15SignedMagnitudemiES_>:
   140006bc0:	41 54                	push   %r12
   140006bc2:	55                   	push   %rbp
   140006bc3:	57                   	push   %rdi
   140006bc4:	56                   	push   %rsi
   140006bc5:	53                   	push   %rbx
   140006bc6:	48 83 ec 40          	sub    $0x40,%rsp
   140006bca:	41 0f b6 40 1c       	movzbl 0x1c(%r8),%eax
   140006bcf:	49 8b 18             	mov    (%r8),%rbx
   140006bd2:	83 f0 01             	xor    $0x1,%eax
   140006bd5:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140006bda:	41 88 40 1c          	mov    %al,0x1c(%r8)
   140006bde:	48 89 cd             	mov    %rcx,%rbp
   140006be1:	49 89 d4             	mov    %rdx,%r12
   140006be4:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140006be9:	4c 89 c6             	mov    %r8,%rsi
   140006bec:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140006bf3:	00 00 
   140006bf5:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006bf9:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140006bfe:	49 39 d8             	cmp    %rbx,%r8
   140006c01:	74 33                	je     140006c36 <_ZN15SignedMagnitudemiES_+0x76>
   140006c03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006c08:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006c0d:	e8 86 07 00 00       	call   140007398 <_Znwy>
   140006c12:	48 89 c1             	mov    %rax,%rcx
   140006c15:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006c19:	48 89 fa             	mov    %rdi,%rdx
   140006c1c:	88 41 10             	mov    %al,0x10(%rcx)
   140006c1f:	e8 d4 07 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006c24:	48 8b 1b             	mov    (%rbx),%rbx
   140006c27:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140006c2d:	48 39 de             	cmp    %rbx,%rsi
   140006c30:	75 d6                	jne    140006c08 <_ZN15SignedMagnitudemiES_+0x48>
   140006c32:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140006c36:	8b 56 18             	mov    0x18(%rsi),%edx
   140006c39:	49 89 f8             	mov    %rdi,%r8
   140006c3c:	48 89 e9             	mov    %rbp,%rcx
   140006c3f:	88 44 24 3c          	mov    %al,0x3c(%rsp)
   140006c43:	89 54 24 38          	mov    %edx,0x38(%rsp)
   140006c47:	4c 89 e2             	mov    %r12,%rdx
   140006c4a:	e8 91 f8 ff ff       	call   1400064e0 <_ZN15SignedMagnitudeplES_>
   140006c4f:	48 89 f9             	mov    %rdi,%rcx
   140006c52:	e8 69 b4 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006c57:	48 89 e8             	mov    %rbp,%rax
   140006c5a:	48 83 c4 40          	add    $0x40,%rsp
   140006c5e:	5b                   	pop    %rbx
   140006c5f:	5e                   	pop    %rsi
   140006c60:	5f                   	pop    %rdi
   140006c61:	5d                   	pop    %rbp
   140006c62:	41 5c                	pop    %r12
   140006c64:	c3                   	ret
   140006c65:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006c6a:	48 89 c3             	mov    %rax,%rbx
   140006c6d:	48 39 f9             	cmp    %rdi,%rcx
   140006c70:	74 1d                	je     140006c8f <_ZN15SignedMagnitudemiES_+0xcf>
   140006c72:	48 8b 31             	mov    (%rcx),%rsi
   140006c75:	ba 18 00 00 00       	mov    $0x18,%edx
   140006c7a:	e8 21 07 00 00       	call   1400073a0 <_ZdlPvy>
   140006c7f:	48 89 f1             	mov    %rsi,%rcx
   140006c82:	eb e9                	jmp    140006c6d <_ZN15SignedMagnitudemiES_+0xad>
   140006c84:	48 89 f9             	mov    %rdi,%rcx
   140006c87:	48 89 c3             	mov    %rax,%rbx
   140006c8a:	e8 31 b4 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006c8f:	48 89 d9             	mov    %rbx,%rcx
   140006c92:	e8 49 18 00 00       	call   1400084e0 <_Unwind_Resume>
   140006c97:	90                   	nop
   140006c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006c9f:	00 

0000000140006ca0 <_ZN15SignedMagnitudemlES_>:
   140006ca0:	41 55                	push   %r13
   140006ca2:	41 54                	push   %r12
   140006ca4:	55                   	push   %rbp
   140006ca5:	57                   	push   %rdi
   140006ca6:	56                   	push   %rsi
   140006ca7:	53                   	push   %rbx
   140006ca8:	48 83 ec 78          	sub    $0x78,%rsp
   140006cac:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140006cb1:	48 89 cb             	mov    %rcx,%rbx
   140006cb4:	49 89 d5             	mov    %rdx,%r13
   140006cb7:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   140006cbc:	4c 89 c5             	mov    %r8,%rbp
   140006cbf:	e8 5c b2 ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   140006cc4:	c6 43 1c 00          	movb   $0x0,0x1c(%rbx)
   140006cc8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140006ccd:	31 d2                	xor    %edx,%edx
   140006ccf:	66 49 0f 6e f4       	movq   %r12,%xmm6
   140006cd4:	48 89 f9             	mov    %rdi,%rcx
   140006cd7:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140006cdb:	e8 50 b2 ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140006ce0:	48 89 fa             	mov    %rdi,%rdx
   140006ce3:	48 89 d9             	mov    %rbx,%rcx
   140006ce6:	e8 35 e5 ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140006ceb:	48 89 f9             	mov    %rdi,%rcx
   140006cee:	e8 cd b3 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006cf3:	48 8b 75 00          	mov    0x0(%rbp),%rsi
   140006cf7:	0f 11 74 24 20       	movups %xmm6,0x20(%rsp)
   140006cfc:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%rbx)
   140006d03:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140006d0a:	00 00 
   140006d0c:	48 39 f5             	cmp    %rsi,%rbp
   140006d0f:	74 31                	je     140006d42 <_ZN15SignedMagnitudemlES_+0xa2>
   140006d11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006d18:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006d1d:	e8 76 06 00 00       	call   140007398 <_Znwy>
   140006d22:	48 89 c1             	mov    %rax,%rcx
   140006d25:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140006d29:	4c 89 e2             	mov    %r12,%rdx
   140006d2c:	88 41 10             	mov    %al,0x10(%rcx)
   140006d2f:	e8 c4 06 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006d34:	48 8b 36             	mov    (%rsi),%rsi
   140006d37:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140006d3d:	48 39 f5             	cmp    %rsi,%rbp
   140006d40:	75 d6                	jne    140006d18 <_ZN15SignedMagnitudemlES_+0x78>
   140006d42:	4d 89 e0             	mov    %r12,%r8
   140006d45:	4c 89 ea             	mov    %r13,%rdx
   140006d48:	48 89 f9             	mov    %rdi,%rcx
   140006d4b:	e8 d0 ce ff ff       	call   140003c20 <_ZN13NaturalBinarymlES_>
   140006d50:	48 89 fa             	mov    %rdi,%rdx
   140006d53:	48 89 d9             	mov    %rbx,%rcx
   140006d56:	e8 c5 e4 ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140006d5b:	48 89 f9             	mov    %rdi,%rcx
   140006d5e:	e8 5d b3 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006d63:	4c 89 e1             	mov    %r12,%rcx
   140006d66:	e8 55 b3 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006d6b:	41 0f b6 45 1c       	movzbl 0x1c(%r13),%eax
   140006d70:	32 45 1c             	xor    0x1c(%rbp),%al
   140006d73:	48 89 d9             	mov    %rbx,%rcx
   140006d76:	88 43 1c             	mov    %al,0x1c(%rbx)
   140006d79:	8b 45 18             	mov    0x18(%rbp),%eax
   140006d7c:	41 03 45 18          	add    0x18(%r13),%eax
   140006d80:	89 43 18             	mov    %eax,0x18(%rbx)
   140006d83:	e8 b8 bc ff ff       	call   140002a40 <_ZN13NaturalBinary8optimizeEv>
   140006d88:	8b 43 18             	mov    0x18(%rbx),%eax
   140006d8b:	83 c0 01             	add    $0x1,%eax
   140006d8e:	48 39 43 10          	cmp    %rax,0x10(%rbx)
   140006d92:	73 42                	jae    140006dd6 <_ZN15SignedMagnitudemlES_+0x136>
   140006d94:	0f 1f 40 00          	nopl   0x0(%rax)
   140006d98:	31 d2                	xor    %edx,%edx
   140006d9a:	48 89 f9             	mov    %rdi,%rcx
   140006d9d:	e8 de a8 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140006da2:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006da7:	e8 ec 05 00 00       	call   140007398 <_Znwy>
   140006dac:	48 89 c1             	mov    %rax,%rcx
   140006daf:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
   140006db4:	48 89 da             	mov    %rbx,%rdx
   140006db7:	88 41 10             	mov    %al,0x10(%rcx)
   140006dba:	e8 39 06 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006dbf:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140006dc3:	8b 53 18             	mov    0x18(%rbx),%edx
   140006dc6:	48 83 c0 01          	add    $0x1,%rax
   140006dca:	83 c2 01             	add    $0x1,%edx
   140006dcd:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140006dd1:	48 39 d0             	cmp    %rdx,%rax
   140006dd4:	72 c2                	jb     140006d98 <_ZN15SignedMagnitudemlES_+0xf8>
   140006dd6:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140006ddb:	48 89 d8             	mov    %rbx,%rax
   140006dde:	48 83 c4 78          	add    $0x78,%rsp
   140006de2:	5b                   	pop    %rbx
   140006de3:	5e                   	pop    %rsi
   140006de4:	5f                   	pop    %rdi
   140006de5:	5d                   	pop    %rbp
   140006de6:	41 5c                	pop    %r12
   140006de8:	41 5d                	pop    %r13
   140006dea:	c3                   	ret
   140006deb:	48 89 c6             	mov    %rax,%rsi
   140006dee:	eb 13                	jmp    140006e03 <_ZN15SignedMagnitudemlES_+0x163>
   140006df0:	48 89 f9             	mov    %rdi,%rcx
   140006df3:	48 89 c6             	mov    %rax,%rsi
   140006df6:	e8 c5 b2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006dfb:	4c 89 e1             	mov    %r12,%rcx
   140006dfe:	e8 bd b2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006e03:	48 89 d9             	mov    %rbx,%rcx
   140006e06:	e8 b5 b2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006e0b:	48 89 f1             	mov    %rsi,%rcx
   140006e0e:	e8 cd 16 00 00       	call   1400084e0 <_Unwind_Resume>
   140006e13:	48 89 c6             	mov    %rax,%rsi
   140006e16:	eb e3                	jmp    140006dfb <_ZN15SignedMagnitudemlES_+0x15b>
   140006e18:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006e1d:	48 89 c6             	mov    %rax,%rsi
   140006e20:	4c 39 e1             	cmp    %r12,%rcx
   140006e23:	74 de                	je     140006e03 <_ZN15SignedMagnitudemlES_+0x163>
   140006e25:	48 8b 39             	mov    (%rcx),%rdi
   140006e28:	ba 18 00 00 00       	mov    $0x18,%edx
   140006e2d:	e8 6e 05 00 00       	call   1400073a0 <_ZdlPvy>
   140006e32:	48 89 f9             	mov    %rdi,%rcx
   140006e35:	eb e9                	jmp    140006e20 <_ZN15SignedMagnitudemlES_+0x180>
   140006e37:	48 89 f9             	mov    %rdi,%rcx
   140006e3a:	48 89 c6             	mov    %rax,%rsi
   140006e3d:	e8 7e b2 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006e42:	eb bf                	jmp    140006e03 <_ZN15SignedMagnitudemlES_+0x163>
   140006e44:	eb a5                	jmp    140006deb <_ZN15SignedMagnitudemlES_+0x14b>
   140006e46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006e4d:	00 00 00 

0000000140006e50 <_ZN15SignedMagnitudedvES_>:
   140006e50:	41 57                	push   %r15
   140006e52:	41 56                	push   %r14
   140006e54:	41 55                	push   %r13
   140006e56:	41 54                	push   %r12
   140006e58:	55                   	push   %rbp
   140006e59:	57                   	push   %rdi
   140006e5a:	56                   	push   %rsi
   140006e5b:	53                   	push   %rbx
   140006e5c:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   140006e63:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140006e6a:	00 
   140006e6b:	48 8b 1a             	mov    (%rdx),%rbx
   140006e6e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140006e73:	49 89 cc             	mov    %rcx,%r12
   140006e76:	48 89 d6             	mov    %rdx,%rsi
   140006e79:	4c 89 c7             	mov    %r8,%rdi
   140006e7c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140006e83:	00 00 
   140006e85:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140006e8a:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006e8e:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140006e93:	48 39 da             	cmp    %rbx,%rdx
   140006e96:	74 32                	je     140006eca <_ZN15SignedMagnitudedvES_+0x7a>
   140006e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006e9f:	00 
   140006ea0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006ea5:	e8 ee 04 00 00       	call   140007398 <_Znwy>
   140006eaa:	48 89 c1             	mov    %rax,%rcx
   140006ead:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006eb1:	48 89 ea             	mov    %rbp,%rdx
   140006eb4:	88 41 10             	mov    %al,0x10(%rcx)
   140006eb7:	e8 3c 05 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006ebc:	48 8b 1b             	mov    (%rbx),%rbx
   140006ebf:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140006ec5:	48 39 de             	cmp    %rbx,%rsi
   140006ec8:	75 d6                	jne    140006ea0 <_ZN15SignedMagnitudedvES_+0x50>
   140006eca:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140006ecf:	48 8b 1f             	mov    (%rdi),%rbx
   140006ed2:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140006ed9:	00 00 
   140006edb:	66 49 0f 6e c5       	movq   %r13,%xmm0
   140006ee0:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006ee4:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140006ee9:	48 39 df             	cmp    %rbx,%rdi
   140006eec:	74 2c                	je     140006f1a <_ZN15SignedMagnitudedvES_+0xca>
   140006eee:	66 90                	xchg   %ax,%ax
   140006ef0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006ef5:	e8 9e 04 00 00       	call   140007398 <_Znwy>
   140006efa:	48 89 c1             	mov    %rax,%rcx
   140006efd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006f01:	4c 89 ea             	mov    %r13,%rdx
   140006f04:	88 41 10             	mov    %al,0x10(%rcx)
   140006f07:	e8 ec 04 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006f0c:	48 8b 1b             	mov    (%rbx),%rbx
   140006f0f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140006f15:	48 39 df             	cmp    %rbx,%rdi
   140006f18:	75 d6                	jne    140006ef0 <_ZN15SignedMagnitudedvES_+0xa0>
   140006f1a:	8b 5e 18             	mov    0x18(%rsi),%ebx
   140006f1d:	89 d8                	mov    %ebx,%eax
   140006f1f:	2b 47 18             	sub    0x18(%rdi),%eax
   140006f22:	39 c3                	cmp    %eax,%ebx
   140006f24:	74 4c                	je     140006f72 <_ZN15SignedMagnitudedvES_+0x122>
   140006f26:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
   140006f2d:	00 
   140006f2e:	66 90                	xchg   %ax,%ax
   140006f30:	31 d2                	xor    %edx,%edx
   140006f32:	4c 89 f1             	mov    %r14,%rcx
   140006f35:	e8 46 a7 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140006f3a:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006f3f:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
   140006f44:	e8 4f 04 00 00       	call   140007398 <_Znwy>
   140006f49:	48 89 c1             	mov    %rax,%rcx
   140006f4c:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140006f53:	00 
   140006f54:	4c 89 fa             	mov    %r15,%rdx
   140006f57:	83 c3 01             	add    $0x1,%ebx
   140006f5a:	88 41 10             	mov    %al,0x10(%rcx)
   140006f5d:	e8 96 04 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006f62:	89 d8                	mov    %ebx,%eax
   140006f64:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140006f6a:	2b 47 18             	sub    0x18(%rdi),%eax
   140006f6d:	3b 46 18             	cmp    0x18(%rsi),%eax
   140006f70:	75 be                	jne    140006f30 <_ZN15SignedMagnitudedvES_+0xe0>
   140006f72:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
   140006f77:	4c 89 e1             	mov    %r12,%rcx
   140006f7a:	66 49 0f 6e f7       	movq   %r15,%xmm6
   140006f7f:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140006f83:	e8 98 af ff ff       	call   140001f20 <_ZN13NaturalBinaryC1Ev>
   140006f88:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   140006f8e:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
   140006f95:	00 
   140006f96:	31 d2                	xor    %edx,%edx
   140006f98:	4c 89 f1             	mov    %r14,%rcx
   140006f9b:	e8 90 af ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140006fa0:	4c 89 f2             	mov    %r14,%rdx
   140006fa3:	4c 89 e1             	mov    %r12,%rcx
   140006fa6:	e8 75 e2 ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140006fab:	4c 89 f1             	mov    %r14,%rcx
   140006fae:	e8 0d b1 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140006fb3:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140006fb8:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140006fbd:	41 c7 44 24 18 00 00 	movl   $0x0,0x18(%r12)
   140006fc4:	00 00 
   140006fc6:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140006fcd:	00 00 
   140006fcf:	4c 39 eb             	cmp    %r13,%rbx
   140006fd2:	74 2e                	je     140007002 <_ZN15SignedMagnitudedvES_+0x1b2>
   140006fd4:	0f 1f 40 00          	nopl   0x0(%rax)
   140006fd8:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006fdd:	e8 b6 03 00 00       	call   140007398 <_Znwy>
   140006fe2:	48 89 c1             	mov    %rax,%rcx
   140006fe5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006fe9:	4c 89 fa             	mov    %r15,%rdx
   140006fec:	88 41 10             	mov    %al,0x10(%rcx)
   140006fef:	e8 04 04 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006ff4:	48 8b 1b             	mov    (%rbx),%rbx
   140006ff7:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140006ffd:	4c 39 eb             	cmp    %r13,%rbx
   140007000:	75 d6                	jne    140006fd8 <_ZN15SignedMagnitudedvES_+0x188>
   140007002:	4d 89 f8             	mov    %r15,%r8
   140007005:	48 89 ea             	mov    %rbp,%rdx
   140007008:	4c 89 f1             	mov    %r14,%rcx
   14000700b:	e8 d0 df ff ff       	call   140004fe0 <_ZN13NaturalBinarydvES_>
   140007010:	4c 89 f2             	mov    %r14,%rdx
   140007013:	4c 89 e1             	mov    %r12,%rcx
   140007016:	e8 05 e2 ff ff       	call   140005220 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000701b:	4c 89 f1             	mov    %r14,%rcx
   14000701e:	e8 9d b0 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140007023:	4c 89 f9             	mov    %r15,%rcx
   140007026:	e8 95 b0 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000702b:	31 d2                	xor    %edx,%edx
   14000702d:	4c 89 f1             	mov    %r14,%rcx
   140007030:	e8 fb ae ff ff       	call   140001f30 <_ZN13NaturalBinaryC1Ex>
   140007035:	4c 89 f2             	mov    %r14,%rdx
   140007038:	4c 89 e1             	mov    %r12,%rcx
   14000703b:	e8 50 bc ff ff       	call   140002c90 <_ZN13NaturalBinarygtES_>
   140007040:	89 c3                	mov    %eax,%ebx
   140007042:	4c 89 f1             	mov    %r14,%rcx
   140007045:	e8 76 b0 ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   14000704a:	84 db                	test   %bl,%bl
   14000704c:	0f 85 9b 00 00 00    	jne    1400070ed <_ZN15SignedMagnitudedvES_+0x29d>
   140007052:	8b 46 18             	mov    0x18(%rsi),%eax
   140007055:	4c 89 e1             	mov    %r12,%rcx
   140007058:	41 89 44 24 18       	mov    %eax,0x18(%r12)
   14000705d:	e8 de b9 ff ff       	call   140002a40 <_ZN13NaturalBinary8optimizeEv>
   140007062:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   140007067:	83 c0 01             	add    $0x1,%eax
   14000706a:	49 39 44 24 10       	cmp    %rax,0x10(%r12)
   14000706f:	73 4c                	jae    1400070bd <_ZN15SignedMagnitudedvES_+0x26d>
   140007071:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007078:	31 d2                	xor    %edx,%edx
   14000707a:	4c 89 f1             	mov    %r14,%rcx
   14000707d:	e8 fe a5 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140007082:	b9 18 00 00 00       	mov    $0x18,%ecx
   140007087:	e8 0c 03 00 00       	call   140007398 <_Znwy>
   14000708c:	48 89 c1             	mov    %rax,%rcx
   14000708f:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140007096:	00 
   140007097:	4c 89 e2             	mov    %r12,%rdx
   14000709a:	88 41 10             	mov    %al,0x10(%rcx)
   14000709d:	e8 56 03 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400070a2:	49 8b 44 24 10       	mov    0x10(%r12),%rax
   1400070a7:	41 8b 54 24 18       	mov    0x18(%r12),%edx
   1400070ac:	48 83 c0 01          	add    $0x1,%rax
   1400070b0:	83 c2 01             	add    $0x1,%edx
   1400070b3:	49 89 44 24 10       	mov    %rax,0x10(%r12)
   1400070b8:	48 39 d0             	cmp    %rdx,%rax
   1400070bb:	72 bb                	jb     140007078 <_ZN15SignedMagnitudedvES_+0x228>
   1400070bd:	4c 89 e9             	mov    %r13,%rcx
   1400070c0:	e8 fb af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400070c5:	48 89 e9             	mov    %rbp,%rcx
   1400070c8:	e8 f3 af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   1400070cd:	90                   	nop
   1400070ce:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   1400070d5:	00 
   1400070d6:	4c 89 e0             	mov    %r12,%rax
   1400070d9:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   1400070e0:	5b                   	pop    %rbx
   1400070e1:	5e                   	pop    %rsi
   1400070e2:	5f                   	pop    %rdi
   1400070e3:	5d                   	pop    %rbp
   1400070e4:	41 5c                	pop    %r12
   1400070e6:	41 5d                	pop    %r13
   1400070e8:	41 5e                	pop    %r14
   1400070ea:	41 5f                	pop    %r15
   1400070ec:	c3                   	ret
   1400070ed:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   1400070f1:	32 47 1c             	xor    0x1c(%rdi),%al
   1400070f4:	41 88 44 24 1c       	mov    %al,0x1c(%r12)
   1400070f9:	e9 54 ff ff ff       	jmp    140007052 <_ZN15SignedMagnitudedvES_+0x202>
   1400070fe:	4c 89 f1             	mov    %r14,%rcx
   140007101:	48 89 c3             	mov    %rax,%rbx
   140007104:	e8 b7 af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140007109:	4c 89 e1             	mov    %r12,%rcx
   14000710c:	e8 af af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140007111:	4c 89 e9             	mov    %r13,%rcx
   140007114:	e8 a7 af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140007119:	48 89 e9             	mov    %rbp,%rcx
   14000711c:	e8 9f af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140007121:	48 89 d9             	mov    %rbx,%rcx
   140007124:	e8 b7 13 00 00       	call   1400084e0 <_Unwind_Resume>
   140007129:	48 89 c3             	mov    %rax,%rbx
   14000712c:	eb db                	jmp    140007109 <_ZN15SignedMagnitudedvES_+0x2b9>
   14000712e:	4c 89 f1             	mov    %r14,%rcx
   140007131:	48 89 c3             	mov    %rax,%rbx
   140007134:	e8 87 af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140007139:	4c 89 f9             	mov    %r15,%rcx
   14000713c:	e8 7f af ff ff       	call   1400020c0 <_ZN13NaturalBinaryD1Ev>
   140007141:	eb c6                	jmp    140007109 <_ZN15SignedMagnitudedvES_+0x2b9>
   140007143:	48 89 c3             	mov    %rax,%rbx
   140007146:	eb f1                	jmp    140007139 <_ZN15SignedMagnitudedvES_+0x2e9>
   140007148:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000714d:	48 89 c3             	mov    %rax,%rbx
   140007150:	4c 39 f9             	cmp    %r15,%rcx
   140007153:	74 b4                	je     140007109 <_ZN15SignedMagnitudedvES_+0x2b9>
   140007155:	48 8b 31             	mov    (%rcx),%rsi
   140007158:	ba 18 00 00 00       	mov    $0x18,%edx
   14000715d:	e8 3e 02 00 00       	call   1400073a0 <_ZdlPvy>
   140007162:	48 89 f1             	mov    %rsi,%rcx
   140007165:	eb e9                	jmp    140007150 <_ZN15SignedMagnitudedvES_+0x300>
   140007167:	eb 95                	jmp    1400070fe <_ZN15SignedMagnitudedvES_+0x2ae>
   140007169:	eb be                	jmp    140007129 <_ZN15SignedMagnitudedvES_+0x2d9>
   14000716b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140007170:	48 89 c3             	mov    %rax,%rbx
   140007173:	48 39 e9             	cmp    %rbp,%rcx
   140007176:	74 a9                	je     140007121 <_ZN15SignedMagnitudedvES_+0x2d1>
   140007178:	48 8b 31             	mov    (%rcx),%rsi
   14000717b:	ba 18 00 00 00       	mov    $0x18,%edx
   140007180:	e8 1b 02 00 00       	call   1400073a0 <_ZdlPvy>
   140007185:	48 89 f1             	mov    %rsi,%rcx
   140007188:	eb e9                	jmp    140007173 <_ZN15SignedMagnitudedvES_+0x323>
   14000718a:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000718f:	48 89 c3             	mov    %rax,%rbx
   140007192:	4c 39 e9             	cmp    %r13,%rcx
   140007195:	74 82                	je     140007119 <_ZN15SignedMagnitudedvES_+0x2c9>
   140007197:	48 8b 31             	mov    (%rcx),%rsi
   14000719a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000719f:	e8 fc 01 00 00       	call   1400073a0 <_ZdlPvy>
   1400071a4:	48 89 f1             	mov    %rsi,%rcx
   1400071a7:	eb e9                	jmp    140007192 <_ZN15SignedMagnitudedvES_+0x342>
   1400071a9:	48 89 c3             	mov    %rax,%rbx
   1400071ac:	e9 60 ff ff ff       	jmp    140007111 <_ZN15SignedMagnitudedvES_+0x2c1>
   1400071b1:	90                   	nop
   1400071b2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400071b9:	00 00 00 00 
   1400071bd:	0f 1f 00             	nopl   (%rax)

00000001400071c0 <_ZN15SignedMagnitude8optimizeEv>:
   1400071c0:	56                   	push   %rsi
   1400071c1:	53                   	push   %rbx
   1400071c2:	48 83 ec 38          	sub    $0x38,%rsp
   1400071c6:	48 89 cb             	mov    %rcx,%rbx
   1400071c9:	e8 72 b8 ff ff       	call   140002a40 <_ZN13NaturalBinary8optimizeEv>
   1400071ce:	8b 43 18             	mov    0x18(%rbx),%eax
   1400071d1:	83 c0 01             	add    $0x1,%eax
   1400071d4:	48 39 43 10          	cmp    %rax,0x10(%rbx)
   1400071d8:	73 44                	jae    14000721e <_ZN15SignedMagnitude8optimizeEv+0x5e>
   1400071da:	48 8d 74 24 2f       	lea    0x2f(%rsp),%rsi
   1400071df:	90                   	nop
   1400071e0:	31 d2                	xor    %edx,%edx
   1400071e2:	48 89 f1             	mov    %rsi,%rcx
   1400071e5:	e8 96 a4 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400071ea:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400071ef:	e8 a4 01 00 00       	call   140007398 <_Znwy>
   1400071f4:	48 89 da             	mov    %rbx,%rdx
   1400071f7:	48 89 c1             	mov    %rax,%rcx
   1400071fa:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400071ff:	88 41 10             	mov    %al,0x10(%rcx)
   140007202:	e8 f1 01 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140007207:	48 8b 43 10          	mov    0x10(%rbx),%rax
   14000720b:	8b 53 18             	mov    0x18(%rbx),%edx
   14000720e:	48 83 c0 01          	add    $0x1,%rax
   140007212:	83 c2 01             	add    $0x1,%edx
   140007215:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140007219:	48 39 d0             	cmp    %rdx,%rax
   14000721c:	72 c2                	jb     1400071e0 <_ZN15SignedMagnitude8optimizeEv+0x20>
   14000721e:	48 83 c4 38          	add    $0x38,%rsp
   140007222:	5b                   	pop    %rbx
   140007223:	5e                   	pop    %rsi
   140007224:	c3                   	ret
   140007225:	90                   	nop
   140007226:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000722d:	00 00 00 

0000000140007230 <_ZN15SignedMagnitude14set_precissionEj>:
   140007230:	55                   	push   %rbp
   140007231:	57                   	push   %rdi
   140007232:	56                   	push   %rsi
   140007233:	53                   	push   %rbx
   140007234:	48 83 ec 38          	sub    $0x38,%rsp
   140007238:	8b 41 18             	mov    0x18(%rcx),%eax
   14000723b:	89 d6                	mov    %edx,%esi
   14000723d:	29 c2                	sub    %eax,%edx
   14000723f:	48 89 cb             	mov    %rcx,%rbx
   140007242:	85 d2                	test   %edx,%edx
   140007244:	74 4e                	je     140007294 <_ZN15SignedMagnitude14set_precissionEj+0x64>
   140007246:	7e 7e                	jle    1400072c6 <_ZN15SignedMagnitude14set_precissionEj+0x96>
   140007248:	39 f0                	cmp    %esi,%eax
   14000724a:	73 48                	jae    140007294 <_ZN15SignedMagnitude14set_precissionEj+0x64>
   14000724c:	48 8d 6c 24 2f       	lea    0x2f(%rsp),%rbp
   140007251:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007258:	31 d2                	xor    %edx,%edx
   14000725a:	48 89 e9             	mov    %rbp,%rcx
   14000725d:	e8 1e a4 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140007262:	b9 18 00 00 00       	mov    $0x18,%ecx
   140007267:	48 8b 3b             	mov    (%rbx),%rdi
   14000726a:	e8 29 01 00 00       	call   140007398 <_Znwy>
   14000726f:	48 89 c1             	mov    %rax,%rcx
   140007272:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140007277:	48 89 fa             	mov    %rdi,%rdx
   14000727a:	88 41 10             	mov    %al,0x10(%rcx)
   14000727d:	e8 76 01 00 00       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140007282:	8b 43 18             	mov    0x18(%rbx),%eax
   140007285:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   14000728a:	83 c0 01             	add    $0x1,%eax
   14000728d:	89 43 18             	mov    %eax,0x18(%rbx)
   140007290:	39 f0                	cmp    %esi,%eax
   140007292:	72 c4                	jb     140007258 <_ZN15SignedMagnitude14set_precissionEj+0x28>
   140007294:	48 83 c4 38          	add    $0x38,%rsp
   140007298:	5b                   	pop    %rbx
   140007299:	5e                   	pop    %rsi
   14000729a:	5f                   	pop    %rdi
   14000729b:	5d                   	pop    %rbp
   14000729c:	c3                   	ret
   14000729d:	0f 1f 00             	nopl   (%rax)
   1400072a0:	48 83 6b 10 01       	subq   $0x1,0x10(%rbx)
   1400072a5:	48 8b 3b             	mov    (%rbx),%rdi
   1400072a8:	48 89 f9             	mov    %rdi,%rcx
   1400072ab:	e8 40 01 00 00       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400072b0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400072b5:	48 89 f9             	mov    %rdi,%rcx
   1400072b8:	e8 e3 00 00 00       	call   1400073a0 <_ZdlPvy>
   1400072bd:	8b 43 18             	mov    0x18(%rbx),%eax
   1400072c0:	83 e8 01             	sub    $0x1,%eax
   1400072c3:	89 43 18             	mov    %eax,0x18(%rbx)
   1400072c6:	39 c6                	cmp    %eax,%esi
   1400072c8:	72 d6                	jb     1400072a0 <_ZN15SignedMagnitude14set_precissionEj+0x70>
   1400072ca:	48 83 c4 38          	add    $0x38,%rsp
   1400072ce:	5b                   	pop    %rbx
   1400072cf:	5e                   	pop    %rsi
   1400072d0:	5f                   	pop    %rdi
   1400072d1:	5d                   	pop    %rbp
   1400072d2:	c3                   	ret
   1400072d3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400072da:	00 00 00 00 
   1400072de:	66 90                	xchg   %ax,%ax

00000001400072e0 <_ZlsRSo15SignedMagnitude>:
   1400072e0:	53                   	push   %rbx
   1400072e1:	48 83 ec 40          	sub    $0x40,%rsp
   1400072e5:	48 89 cb             	mov    %rcx,%rbx
   1400072e8:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   1400072ed:	e8 2e e3 ff ff       	call   140005620 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   1400072f2:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   1400072f7:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   1400072fc:	48 89 d9             	mov    %rbx,%rcx
   1400072ff:	e8 bc 00 00 00       	call   1400073c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140007304:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140007309:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   14000730e:	48 39 c1             	cmp    %rax,%rcx
   140007311:	74 0e                	je     140007321 <_ZlsRSo15SignedMagnitude+0x41>
   140007313:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140007318:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000731c:	e8 7f 00 00 00       	call   1400073a0 <_ZdlPvy>
   140007321:	48 89 d8             	mov    %rbx,%rax
   140007324:	48 83 c4 40          	add    $0x40,%rsp
   140007328:	5b                   	pop    %rbx
   140007329:	c3                   	ret
   14000732a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000732f:	48 89 c3             	mov    %rax,%rbx
   140007332:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140007337:	48 39 c1             	cmp    %rax,%rcx
   14000733a:	74 0e                	je     14000734a <_ZlsRSo15SignedMagnitude+0x6a>
   14000733c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140007341:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140007345:	e8 56 00 00 00       	call   1400073a0 <_ZdlPvy>
   14000734a:	48 89 d9             	mov    %rbx,%rcx
   14000734d:	e8 8e 11 00 00       	call   1400084e0 <_Unwind_Resume>
   140007352:	90                   	nop
   140007353:	90                   	nop
   140007354:	90                   	nop
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

0000000140007360 <__gxx_personality_seh0>:
   140007360:	ff 25 fe 71 00 00    	jmp    *0x71fe(%rip)        # 14000e564 <__imp___gxx_personality_seh0>
   140007366:	90                   	nop
   140007367:	90                   	nop

0000000140007368 <__cxa_throw>:
   140007368:	ff 25 ee 71 00 00    	jmp    *0x71ee(%rip)        # 14000e55c <__imp___cxa_throw>
   14000736e:	90                   	nop
   14000736f:	90                   	nop

0000000140007370 <__cxa_rethrow>:
   140007370:	ff 25 de 71 00 00    	jmp    *0x71de(%rip)        # 14000e554 <__imp___cxa_rethrow>
   140007376:	90                   	nop
   140007377:	90                   	nop

0000000140007378 <__cxa_free_exception>:
   140007378:	ff 25 ce 71 00 00    	jmp    *0x71ce(%rip)        # 14000e54c <__imp___cxa_free_exception>
   14000737e:	90                   	nop
   14000737f:	90                   	nop

0000000140007380 <__cxa_end_catch>:
   140007380:	ff 25 be 71 00 00    	jmp    *0x71be(%rip)        # 14000e544 <__imp___cxa_end_catch>
   140007386:	90                   	nop
   140007387:	90                   	nop

0000000140007388 <__cxa_begin_catch>:
   140007388:	ff 25 ae 71 00 00    	jmp    *0x71ae(%rip)        # 14000e53c <__imp___cxa_begin_catch>
   14000738e:	90                   	nop
   14000738f:	90                   	nop

0000000140007390 <__cxa_allocate_exception>:
   140007390:	ff 25 9e 71 00 00    	jmp    *0x719e(%rip)        # 14000e534 <__imp___cxa_allocate_exception>
   140007396:	90                   	nop
   140007397:	90                   	nop

0000000140007398 <_Znwy>:
   140007398:	ff 25 8e 71 00 00    	jmp    *0x718e(%rip)        # 14000e52c <__imp__Znwy>
   14000739e:	90                   	nop
   14000739f:	90                   	nop

00000001400073a0 <_ZdlPvy>:
   1400073a0:	ff 25 7e 71 00 00    	jmp    *0x717e(%rip)        # 14000e524 <__imp__ZdlPvy>
   1400073a6:	90                   	nop
   1400073a7:	90                   	nop

00000001400073a8 <_ZSt24__throw_out_of_range_fmtPKcz>:
   1400073a8:	ff 25 36 71 00 00    	jmp    *0x7136(%rip)        # 14000e4e4 <__imp__ZSt24__throw_out_of_range_fmtPKcz>
   1400073ae:	90                   	nop
   1400073af:	90                   	nop

00000001400073b0 <_ZSt20__throw_length_errorPKc>:
   1400073b0:	ff 25 26 71 00 00    	jmp    *0x7126(%rip)        # 14000e4dc <__imp__ZSt20__throw_length_errorPKc>
   1400073b6:	90                   	nop
   1400073b7:	90                   	nop

00000001400073b8 <_ZSt16__throw_bad_castv>:
   1400073b8:	ff 25 16 71 00 00    	jmp    *0x7116(%rip)        # 14000e4d4 <__imp__ZSt16__throw_bad_castv>
   1400073be:	90                   	nop
   1400073bf:	90                   	nop

00000001400073c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>:
   1400073c0:	ff 25 06 71 00 00    	jmp    *0x7106(%rip)        # 14000e4cc <__imp__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400073c6:	90                   	nop
   1400073c7:	90                   	nop

00000001400073c8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>:
   1400073c8:	ff 25 f6 70 00 00    	jmp    *0x70f6(%rip)        # 14000e4c4 <__imp__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   1400073ce:	90                   	nop
   1400073cf:	90                   	nop

00000001400073d0 <_ZNSt8ios_baseD2Ev>:
   1400073d0:	ff 25 e6 70 00 00    	jmp    *0x70e6(%rip)        # 14000e4bc <__imp__ZNSt8ios_baseD2Ev>
   1400073d6:	90                   	nop
   1400073d7:	90                   	nop

00000001400073d8 <_ZNSt8ios_baseC2Ev>:
   1400073d8:	ff 25 d6 70 00 00    	jmp    *0x70d6(%rip)        # 14000e4b4 <__imp__ZNSt8ios_baseC2Ev>
   1400073de:	90                   	nop
   1400073df:	90                   	nop

00000001400073e0 <_ZNSt8ios_base4InitD1Ev>:
   1400073e0:	ff 25 c6 70 00 00    	jmp    *0x70c6(%rip)        # 14000e4ac <__imp__ZNSt8ios_base4InitD1Ev>
   1400073e6:	90                   	nop
   1400073e7:	90                   	nop

00000001400073e8 <_ZNSt8ios_base4InitC1Ev>:
   1400073e8:	ff 25 b6 70 00 00    	jmp    *0x70b6(%rip)        # 14000e4a4 <__imp__ZNSt8ios_base4InitC1Ev>
   1400073ee:	90                   	nop
   1400073ef:	90                   	nop

00000001400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>:
   1400073f0:	ff 25 a6 70 00 00    	jmp    *0x70a6(%rip)        # 14000e49c <__imp__ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400073f6:	90                   	nop
   1400073f7:	90                   	nop

00000001400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>:
   1400073f8:	ff 25 96 70 00 00    	jmp    *0x7096(%rip)        # 14000e494 <__imp__ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400073fe:	90                   	nop
   1400073ff:	90                   	nop

0000000140007400 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>:
   140007400:	ff 25 86 70 00 00    	jmp    *0x7086(%rip)        # 14000e48c <__imp__ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140007406:	90                   	nop
   140007407:	90                   	nop

0000000140007408 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140007408:	ff 25 76 70 00 00    	jmp    *0x7076(%rip)        # 14000e484 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   14000740e:	90                   	nop
   14000740f:	90                   	nop

0000000140007410 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>:
   140007410:	ff 25 66 70 00 00    	jmp    *0x7066(%rip)        # 14000e47c <__imp__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   140007416:	90                   	nop
   140007417:	90                   	nop

0000000140007418 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>:
   140007418:	ff 25 56 70 00 00    	jmp    *0x7056(%rip)        # 14000e474 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   14000741e:	90                   	nop
   14000741f:	90                   	nop

0000000140007420 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>:
   140007420:	ff 25 46 70 00 00    	jmp    *0x7046(%rip)        # 14000e46c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140007426:	90                   	nop
   140007427:	90                   	nop

0000000140007428 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>:
   140007428:	ff 25 36 70 00 00    	jmp    *0x7036(%rip)        # 14000e464 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   14000742e:	90                   	nop
   14000742f:	90                   	nop

0000000140007430 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>:
   140007430:	ff 25 26 70 00 00    	jmp    *0x7026(%rip)        # 14000e45c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140007436:	90                   	nop
   140007437:	90                   	nop

0000000140007438 <_ZNSt6localeD1Ev>:
   140007438:	ff 25 16 70 00 00    	jmp    *0x7016(%rip)        # 14000e454 <__imp__ZNSt6localeD1Ev>
   14000743e:	90                   	nop
   14000743f:	90                   	nop

0000000140007440 <_ZNSt6localeC1Ev>:
   140007440:	ff 25 06 70 00 00    	jmp    *0x7006(%rip)        # 14000e44c <__imp__ZNSt6localeC1Ev>
   140007446:	90                   	nop
   140007447:	90                   	nop

0000000140007448 <_ZNSt16invalid_argumentD1Ev>:
   140007448:	ff 25 f6 6f 00 00    	jmp    *0x6ff6(%rip)        # 14000e444 <__imp__ZNSt16invalid_argumentD1Ev>
   14000744e:	90                   	nop
   14000744f:	90                   	nop

0000000140007450 <_ZNSt16invalid_argumentC1EPKc>:
   140007450:	ff 25 e6 6f 00 00    	jmp    *0x6fe6(%rip)        # 14000e43c <__imp__ZNSt16invalid_argumentC1EPKc>
   140007456:	90                   	nop
   140007457:	90                   	nop

0000000140007458 <_ZNSt13runtime_errorD1Ev>:
   140007458:	ff 25 d6 6f 00 00    	jmp    *0x6fd6(%rip)        # 14000e434 <__imp__ZNSt13runtime_errorD1Ev>
   14000745e:	90                   	nop
   14000745f:	90                   	nop

0000000140007460 <_ZNSt13runtime_errorC1EPKc>:
   140007460:	ff 25 c6 6f 00 00    	jmp    *0x6fc6(%rip)        # 14000e42c <__imp__ZNSt13runtime_errorC1EPKc>
   140007466:	90                   	nop
   140007467:	90                   	nop

0000000140007468 <_ZNSolsEi>:
   140007468:	ff 25 b6 6f 00 00    	jmp    *0x6fb6(%rip)        # 14000e424 <__imp__ZNSolsEi>
   14000746e:	90                   	nop
   14000746f:	90                   	nop

0000000140007470 <_ZNKSt5ctypeIcE13_M_widen_initEv>:
   140007470:	ff 25 a6 6f 00 00    	jmp    *0x6fa6(%rip)        # 14000e41c <__imp__ZNKSt5ctypeIcE13_M_widen_initEv>
   140007476:	90                   	nop
   140007477:	90                   	nop
   140007478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000747f:	00 

0000000140007480 <__do_global_dtors>:
   140007480:	48 83 ec 28          	sub    $0x28,%rsp
   140007484:	48 8b 05 75 1b 00 00 	mov    0x1b75(%rip),%rax        # 140009000 <__data_start__>
   14000748b:	48 8b 00             	mov    (%rax),%rax
   14000748e:	48 85 c0             	test   %rax,%rax
   140007491:	74 22                	je     1400074b5 <__do_global_dtors+0x35>
   140007493:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007498:	ff d0                	call   *%rax
   14000749a:	48 8b 05 5f 1b 00 00 	mov    0x1b5f(%rip),%rax        # 140009000 <__data_start__>
   1400074a1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400074a5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400074a9:	48 89 15 50 1b 00 00 	mov    %rdx,0x1b50(%rip)        # 140009000 <__data_start__>
   1400074b0:	48 85 c0             	test   %rax,%rax
   1400074b3:	75 e3                	jne    140007498 <__do_global_dtors+0x18>
   1400074b5:	48 83 c4 28          	add    $0x28,%rsp
   1400074b9:	c3                   	ret
   1400074ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400074c0 <__do_global_ctors>:
   1400074c0:	56                   	push   %rsi
   1400074c1:	53                   	push   %rbx
   1400074c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400074c6:	48 8b 15 e3 2f 00 00 	mov    0x2fe3(%rip),%rdx        # 14000a4b0 <.refptr.__CTOR_LIST__>
   1400074cd:	48 8b 02             	mov    (%rdx),%rax
   1400074d0:	89 c1                	mov    %eax,%ecx
   1400074d2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400074d5:	74 39                	je     140007510 <__do_global_ctors+0x50>
   1400074d7:	85 c9                	test   %ecx,%ecx
   1400074d9:	74 20                	je     1400074fb <__do_global_ctors+0x3b>
   1400074db:	89 c8                	mov    %ecx,%eax
   1400074dd:	83 e9 01             	sub    $0x1,%ecx
   1400074e0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400074e4:	48 29 c8             	sub    %rcx,%rax
   1400074e7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400074ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400074f0:	ff 13                	call   *(%rbx)
   1400074f2:	48 83 eb 08          	sub    $0x8,%rbx
   1400074f6:	48 39 f3             	cmp    %rsi,%rbx
   1400074f9:	75 f5                	jne    1400074f0 <__do_global_ctors+0x30>
   1400074fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140007480 <__do_global_dtors>
   140007502:	48 83 c4 28          	add    $0x28,%rsp
   140007506:	5b                   	pop    %rbx
   140007507:	5e                   	pop    %rsi
   140007508:	e9 03 9f ff ff       	jmp    140001410 <atexit>
   14000750d:	0f 1f 00             	nopl   (%rax)
   140007510:	31 c0                	xor    %eax,%eax
   140007512:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007518:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000751c:	89 c1                	mov    %eax,%ecx
   14000751e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140007523:	4c 89 c0             	mov    %r8,%rax
   140007526:	75 f0                	jne    140007518 <__do_global_ctors+0x58>
   140007528:	eb ad                	jmp    1400074d7 <__do_global_ctors+0x17>
   14000752a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140007530 <__main>:
   140007530:	8b 05 4a 5b 00 00    	mov    0x5b4a(%rip),%eax        # 14000d080 <initialized>
   140007536:	85 c0                	test   %eax,%eax
   140007538:	74 06                	je     140007540 <__main+0x10>
   14000753a:	c3                   	ret
   14000753b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007540:	c7 05 36 5b 00 00 01 	movl   $0x1,0x5b36(%rip)        # 14000d080 <initialized>
   140007547:	00 00 00 
   14000754a:	e9 71 ff ff ff       	jmp    1400074c0 <__do_global_ctors>
   14000754f:	90                   	nop

0000000140007550 <_setargv>:
   140007550:	31 c0                	xor    %eax,%eax
   140007552:	c3                   	ret
   140007553:	90                   	nop
   140007554:	90                   	nop
   140007555:	90                   	nop
   140007556:	90                   	nop
   140007557:	90                   	nop
   140007558:	90                   	nop
   140007559:	90                   	nop
   14000755a:	90                   	nop
   14000755b:	90                   	nop
   14000755c:	90                   	nop
   14000755d:	90                   	nop
   14000755e:	90                   	nop
   14000755f:	90                   	nop

0000000140007560 <__dyn_tls_dtor>:
   140007560:	48 83 ec 28          	sub    $0x28,%rsp
   140007564:	83 fa 03             	cmp    $0x3,%edx
   140007567:	74 17                	je     140007580 <__dyn_tls_dtor+0x20>
   140007569:	85 d2                	test   %edx,%edx
   14000756b:	74 13                	je     140007580 <__dyn_tls_dtor+0x20>
   14000756d:	b8 01 00 00 00       	mov    $0x1,%eax
   140007572:	48 83 c4 28          	add    $0x28,%rsp
   140007576:	c3                   	ret
   140007577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000757e:	00 00 
   140007580:	e8 5b 0a 00 00       	call   140007fe0 <__mingw_TLScallback>
   140007585:	b8 01 00 00 00       	mov    $0x1,%eax
   14000758a:	48 83 c4 28          	add    $0x28,%rsp
   14000758e:	c3                   	ret
   14000758f:	90                   	nop

0000000140007590 <__dyn_tls_init>:
   140007590:	56                   	push   %rsi
   140007591:	53                   	push   %rbx
   140007592:	48 83 ec 28          	sub    $0x28,%rsp
   140007596:	48 8b 05 83 2e 00 00 	mov    0x2e83(%rip),%rax        # 14000a420 <.refptr._CRT_MT>
   14000759d:	83 38 02             	cmpl   $0x2,(%rax)
   1400075a0:	74 06                	je     1400075a8 <__dyn_tls_init+0x18>
   1400075a2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400075a8:	83 fa 02             	cmp    $0x2,%edx
   1400075ab:	74 13                	je     1400075c0 <__dyn_tls_init+0x30>
   1400075ad:	83 fa 01             	cmp    $0x1,%edx
   1400075b0:	74 4e                	je     140007600 <__dyn_tls_init+0x70>
   1400075b2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400075b7:	48 83 c4 28          	add    $0x28,%rsp
   1400075bb:	5b                   	pop    %rbx
   1400075bc:	5e                   	pop    %rsi
   1400075bd:	c3                   	ret
   1400075be:	66 90                	xchg   %ax,%ax
   1400075c0:	48 8d 1d 91 7a 00 00 	lea    0x7a91(%rip),%rbx        # 14000f058 <__xd_z>
   1400075c7:	48 8d 35 8a 7a 00 00 	lea    0x7a8a(%rip),%rsi        # 14000f058 <__xd_z>
   1400075ce:	48 39 de             	cmp    %rbx,%rsi
   1400075d1:	74 df                	je     1400075b2 <__dyn_tls_init+0x22>
   1400075d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400075d8:	48 8b 03             	mov    (%rbx),%rax
   1400075db:	48 85 c0             	test   %rax,%rax
   1400075de:	74 02                	je     1400075e2 <__dyn_tls_init+0x52>
   1400075e0:	ff d0                	call   *%rax
   1400075e2:	48 83 c3 08          	add    $0x8,%rbx
   1400075e6:	48 39 de             	cmp    %rbx,%rsi
   1400075e9:	75 ed                	jne    1400075d8 <__dyn_tls_init+0x48>
   1400075eb:	b8 01 00 00 00       	mov    $0x1,%eax
   1400075f0:	48 83 c4 28          	add    $0x28,%rsp
   1400075f4:	5b                   	pop    %rbx
   1400075f5:	5e                   	pop    %rsi
   1400075f6:	c3                   	ret
   1400075f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400075fe:	00 00 
   140007600:	e8 db 09 00 00       	call   140007fe0 <__mingw_TLScallback>
   140007605:	b8 01 00 00 00       	mov    $0x1,%eax
   14000760a:	48 83 c4 28          	add    $0x28,%rsp
   14000760e:	5b                   	pop    %rbx
   14000760f:	5e                   	pop    %rsi
   140007610:	c3                   	ret
   140007611:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007618:	00 00 00 00 
   14000761c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140007620 <__tlregdtor>:
   140007620:	31 c0                	xor    %eax,%eax
   140007622:	c3                   	ret
   140007623:	90                   	nop
   140007624:	90                   	nop
   140007625:	90                   	nop
   140007626:	90                   	nop
   140007627:	90                   	nop
   140007628:	90                   	nop
   140007629:	90                   	nop
   14000762a:	90                   	nop
   14000762b:	90                   	nop
   14000762c:	90                   	nop
   14000762d:	90                   	nop
   14000762e:	90                   	nop
   14000762f:	90                   	nop

0000000140007630 <_matherr>:
   140007630:	56                   	push   %rsi
   140007631:	53                   	push   %rbx
   140007632:	48 83 ec 78          	sub    $0x78,%rsp
   140007636:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000763b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140007640:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140007646:	83 39 06             	cmpl   $0x6,(%rcx)
   140007649:	0f 87 cd 00 00 00    	ja     14000771c <_matherr+0xec>
   14000764f:	8b 01                	mov    (%rcx),%eax
   140007651:	48 8d 15 0c 2c 00 00 	lea    0x2c0c(%rip),%rdx        # 14000a264 <.rdata+0x124>
   140007658:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000765c:	48 01 d0             	add    %rdx,%rax
   14000765f:	ff e0                	jmp    *%rax
   140007661:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007668:	48 8d 1d f0 2a 00 00 	lea    0x2af0(%rip),%rbx        # 14000a15f <.rdata+0x1f>
   14000766f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140007675:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000767a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000767f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140007683:	b9 02 00 00 00       	mov    $0x2,%ecx
   140007688:	e8 e3 0e 00 00       	call   140008570 <__acrt_iob_func>
   14000768d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140007694:	49 89 d8             	mov    %rbx,%r8
   140007697:	48 8d 15 9a 2b 00 00 	lea    0x2b9a(%rip),%rdx        # 14000a238 <.rdata+0xf8>
   14000769e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400076a4:	48 89 c1             	mov    %rax,%rcx
   1400076a7:	49 89 f1             	mov    %rsi,%r9
   1400076aa:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400076b0:	e8 3b 0f 00 00       	call   1400085f0 <fprintf>
   1400076b5:	90                   	nop
   1400076b6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400076bb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400076c0:	31 c0                	xor    %eax,%eax
   1400076c2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400076c8:	48 83 c4 78          	add    $0x78,%rsp
   1400076cc:	5b                   	pop    %rbx
   1400076cd:	5e                   	pop    %rsi
   1400076ce:	c3                   	ret
   1400076cf:	90                   	nop
   1400076d0:	48 8d 1d 69 2a 00 00 	lea    0x2a69(%rip),%rbx        # 14000a140 <.rdata>
   1400076d7:	eb 96                	jmp    14000766f <_matherr+0x3f>
   1400076d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400076e0:	48 8d 1d b9 2a 00 00 	lea    0x2ab9(%rip),%rbx        # 14000a1a0 <.rdata+0x60>
   1400076e7:	eb 86                	jmp    14000766f <_matherr+0x3f>
   1400076e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400076f0:	48 8d 1d 89 2a 00 00 	lea    0x2a89(%rip),%rbx        # 14000a180 <.rdata+0x40>
   1400076f7:	e9 73 ff ff ff       	jmp    14000766f <_matherr+0x3f>
   1400076fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140007700:	48 8d 1d e9 2a 00 00 	lea    0x2ae9(%rip),%rbx        # 14000a1f0 <.rdata+0xb0>
   140007707:	e9 63 ff ff ff       	jmp    14000766f <_matherr+0x3f>
   14000770c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007710:	48 8d 1d b1 2a 00 00 	lea    0x2ab1(%rip),%rbx        # 14000a1c8 <.rdata+0x88>
   140007717:	e9 53 ff ff ff       	jmp    14000766f <_matherr+0x3f>
   14000771c:	48 8d 1d 03 2b 00 00 	lea    0x2b03(%rip),%rbx        # 14000a226 <.rdata+0xe6>
   140007723:	e9 47 ff ff ff       	jmp    14000766f <_matherr+0x3f>
   140007728:	90                   	nop
   140007729:	90                   	nop
   14000772a:	90                   	nop
   14000772b:	90                   	nop
   14000772c:	90                   	nop
   14000772d:	90                   	nop
   14000772e:	90                   	nop
   14000772f:	90                   	nop

0000000140007730 <_fpreset>:
   140007730:	db e3                	fninit
   140007732:	c3                   	ret
   140007733:	90                   	nop
   140007734:	90                   	nop
   140007735:	90                   	nop
   140007736:	90                   	nop
   140007737:	90                   	nop
   140007738:	90                   	nop
   140007739:	90                   	nop
   14000773a:	90                   	nop
   14000773b:	90                   	nop
   14000773c:	90                   	nop
   14000773d:	90                   	nop
   14000773e:	90                   	nop
   14000773f:	90                   	nop

0000000140007740 <__report_error>:
   140007740:	56                   	push   %rsi
   140007741:	53                   	push   %rbx
   140007742:	48 83 ec 38          	sub    $0x38,%rsp
   140007746:	48 89 cb             	mov    %rcx,%rbx
   140007749:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000774e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140007753:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140007758:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000775d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140007762:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140007767:	e8 04 0e 00 00       	call   140008570 <__acrt_iob_func>
   14000776c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140007772:	ba 01 00 00 00       	mov    $0x1,%edx
   140007777:	48 8d 0d 02 2b 00 00 	lea    0x2b02(%rip),%rcx        # 14000a280 <.rdata>
   14000777e:	49 89 c1             	mov    %rax,%r9
   140007781:	e8 7a 0e 00 00       	call   140008600 <fwrite>
   140007786:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   14000778b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140007790:	e8 db 0d 00 00       	call   140008570 <__acrt_iob_func>
   140007795:	48 89 da             	mov    %rbx,%rdx
   140007798:	48 89 c1             	mov    %rax,%rcx
   14000779b:	49 89 f0             	mov    %rsi,%r8
   14000779e:	e8 8d 0e 00 00       	call   140008630 <vfprintf>
   1400077a3:	e8 30 0e 00 00       	call   1400085d8 <abort>
   1400077a8:	90                   	nop
   1400077a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400077b0 <mark_section_writable>:
   1400077b0:	57                   	push   %rdi
   1400077b1:	56                   	push   %rsi
   1400077b2:	53                   	push   %rbx
   1400077b3:	48 83 ec 50          	sub    $0x50,%rsp
   1400077b7:	48 63 35 26 59 00 00 	movslq 0x5926(%rip),%rsi        # 14000d0e4 <maxSections>
   1400077be:	48 89 cb             	mov    %rcx,%rbx
   1400077c1:	85 f6                	test   %esi,%esi
   1400077c3:	0f 8e 17 01 00 00    	jle    1400078e0 <mark_section_writable+0x130>
   1400077c9:	48 8b 05 18 59 00 00 	mov    0x5918(%rip),%rax        # 14000d0e8 <the_secs>
   1400077d0:	45 31 c9             	xor    %r9d,%r9d
   1400077d3:	48 83 c0 18          	add    $0x18,%rax
   1400077d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400077de:	00 00 
   1400077e0:	4c 8b 00             	mov    (%rax),%r8
   1400077e3:	4c 39 c3             	cmp    %r8,%rbx
   1400077e6:	72 13                	jb     1400077fb <mark_section_writable+0x4b>
   1400077e8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400077ec:	8b 52 08             	mov    0x8(%rdx),%edx
   1400077ef:	49 01 d0             	add    %rdx,%r8
   1400077f2:	4c 39 c3             	cmp    %r8,%rbx
   1400077f5:	0f 82 8a 00 00 00    	jb     140007885 <mark_section_writable+0xd5>
   1400077fb:	41 83 c1 01          	add    $0x1,%r9d
   1400077ff:	48 83 c0 28          	add    $0x28,%rax
   140007803:	41 39 f1             	cmp    %esi,%r9d
   140007806:	75 d8                	jne    1400077e0 <mark_section_writable+0x30>
   140007808:	48 89 d9             	mov    %rbx,%rcx
   14000780b:	e8 f0 09 00 00       	call   140008200 <__mingw_GetSectionForAddress>
   140007810:	48 89 c7             	mov    %rax,%rdi
   140007813:	48 85 c0             	test   %rax,%rax
   140007816:	0f 84 e6 00 00 00    	je     140007902 <mark_section_writable+0x152>
   14000781c:	48 8b 05 c5 58 00 00 	mov    0x58c5(%rip),%rax        # 14000d0e8 <the_secs>
   140007823:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140007827:	48 c1 e3 03          	shl    $0x3,%rbx
   14000782b:	48 01 d8             	add    %rbx,%rax
   14000782e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140007832:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140007838:	e8 03 0b 00 00       	call   140008340 <_GetPEImageBase>
   14000783d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140007840:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140007846:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000784a:	48 8b 05 97 58 00 00 	mov    0x5897(%rip),%rax        # 14000d0e8 <the_secs>
   140007851:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140007856:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000785b:	ff 15 e3 6a 00 00    	call   *0x6ae3(%rip)        # 14000e344 <__imp_VirtualQuery>
   140007861:	48 85 c0             	test   %rax,%rax
   140007864:	0f 84 7d 00 00 00    	je     1400078e7 <mark_section_writable+0x137>
   14000786a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000786e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140007871:	83 e2 bf             	and    $0xffffffbf,%edx
   140007874:	74 08                	je     14000787e <mark_section_writable+0xce>
   140007876:	8d 50 fc             	lea    -0x4(%rax),%edx
   140007879:	83 e2 fb             	and    $0xfffffffb,%edx
   14000787c:	75 12                	jne    140007890 <mark_section_writable+0xe0>
   14000787e:	83 05 5f 58 00 00 01 	addl   $0x1,0x585f(%rip)        # 14000d0e4 <maxSections>
   140007885:	48 83 c4 50          	add    $0x50,%rsp
   140007889:	5b                   	pop    %rbx
   14000788a:	5e                   	pop    %rsi
   14000788b:	5f                   	pop    %rdi
   14000788c:	c3                   	ret
   14000788d:	0f 1f 00             	nopl   (%rax)
   140007890:	83 f8 02             	cmp    $0x2,%eax
   140007893:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140007898:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000789d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400078a3:	b8 04 00 00 00       	mov    $0x4,%eax
   1400078a8:	44 0f 44 c0          	cmove  %eax,%r8d
   1400078ac:	48 03 1d 35 58 00 00 	add    0x5835(%rip),%rbx        # 14000d0e8 <the_secs>
   1400078b3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400078b7:	49 89 d9             	mov    %rbx,%r9
   1400078ba:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400078be:	ff 15 78 6a 00 00    	call   *0x6a78(%rip)        # 14000e33c <__imp_VirtualProtect>
   1400078c4:	85 c0                	test   %eax,%eax
   1400078c6:	75 b6                	jne    14000787e <mark_section_writable+0xce>
   1400078c8:	ff 15 3e 6a 00 00    	call   *0x6a3e(%rip)        # 14000e30c <__imp_GetLastError>
   1400078ce:	48 8d 0d 23 2a 00 00 	lea    0x2a23(%rip),%rcx        # 14000a2f8 <.rdata+0x78>
   1400078d5:	89 c2                	mov    %eax,%edx
   1400078d7:	e8 64 fe ff ff       	call   140007740 <__report_error>
   1400078dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400078e0:	31 f6                	xor    %esi,%esi
   1400078e2:	e9 21 ff ff ff       	jmp    140007808 <mark_section_writable+0x58>
   1400078e7:	48 8b 05 fa 57 00 00 	mov    0x57fa(%rip),%rax        # 14000d0e8 <the_secs>
   1400078ee:	8b 57 08             	mov    0x8(%rdi),%edx
   1400078f1:	48 8d 0d c8 29 00 00 	lea    0x29c8(%rip),%rcx        # 14000a2c0 <.rdata+0x40>
   1400078f8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400078fd:	e8 3e fe ff ff       	call   140007740 <__report_error>
   140007902:	48 89 da             	mov    %rbx,%rdx
   140007905:	48 8d 0d 94 29 00 00 	lea    0x2994(%rip),%rcx        # 14000a2a0 <.rdata+0x20>
   14000790c:	e8 2f fe ff ff       	call   140007740 <__report_error>
   140007911:	90                   	nop
   140007912:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007919:	00 00 00 00 
   14000791d:	0f 1f 00             	nopl   (%rax)

0000000140007920 <_pei386_runtime_relocator>:
   140007920:	55                   	push   %rbp
   140007921:	41 57                	push   %r15
   140007923:	41 56                	push   %r14
   140007925:	41 55                	push   %r13
   140007927:	41 54                	push   %r12
   140007929:	57                   	push   %rdi
   14000792a:	56                   	push   %rsi
   14000792b:	53                   	push   %rbx
   14000792c:	48 83 ec 48          	sub    $0x48,%rsp
   140007930:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140007935:	44 8b 25 a4 57 00 00 	mov    0x57a4(%rip),%r12d        # 14000d0e0 <was_init.0>
   14000793c:	45 85 e4             	test   %r12d,%r12d
   14000793f:	74 17                	je     140007958 <_pei386_runtime_relocator+0x38>
   140007941:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140007945:	5b                   	pop    %rbx
   140007946:	5e                   	pop    %rsi
   140007947:	5f                   	pop    %rdi
   140007948:	41 5c                	pop    %r12
   14000794a:	41 5d                	pop    %r13
   14000794c:	41 5e                	pop    %r14
   14000794e:	41 5f                	pop    %r15
   140007950:	5d                   	pop    %rbp
   140007951:	c3                   	ret
   140007952:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007958:	c7 05 7e 57 00 00 01 	movl   $0x1,0x577e(%rip)        # 14000d0e0 <was_init.0>
   14000795f:	00 00 00 
   140007962:	e8 19 09 00 00       	call   140008280 <__mingw_GetSectionCount>
   140007967:	48 98                	cltq
   140007969:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   14000796d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140007974:	00 
   140007975:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140007979:	e8 72 0b 00 00       	call   1400084f0 <___chkstk_ms>
   14000797e:	4c 8b 2d 4b 2b 00 00 	mov    0x2b4b(%rip),%r13        # 14000a4d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140007985:	48 8b 1d 54 2b 00 00 	mov    0x2b54(%rip),%rbx        # 14000a4e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   14000798c:	c7 05 4e 57 00 00 00 	movl   $0x0,0x574e(%rip)        # 14000d0e4 <maxSections>
   140007993:	00 00 00 
   140007996:	48 29 c4             	sub    %rax,%rsp
   140007999:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   14000799e:	48 89 05 43 57 00 00 	mov    %rax,0x5743(%rip)        # 14000d0e8 <the_secs>
   1400079a5:	4c 89 e8             	mov    %r13,%rax
   1400079a8:	48 29 d8             	sub    %rbx,%rax
   1400079ab:	48 83 f8 07          	cmp    $0x7,%rax
   1400079af:	7e 90                	jle    140007941 <_pei386_runtime_relocator+0x21>
   1400079b1:	8b 13                	mov    (%rbx),%edx
   1400079b3:	48 83 f8 0b          	cmp    $0xb,%rax
   1400079b7:	0f 8f 7b 01 00 00    	jg     140007b38 <_pei386_runtime_relocator+0x218>
   1400079bd:	8b 03                	mov    (%rbx),%eax
   1400079bf:	85 c0                	test   %eax,%eax
   1400079c1:	0f 85 69 02 00 00    	jne    140007c30 <_pei386_runtime_relocator+0x310>
   1400079c7:	8b 43 04             	mov    0x4(%rbx),%eax
   1400079ca:	85 c0                	test   %eax,%eax
   1400079cc:	0f 85 5e 02 00 00    	jne    140007c30 <_pei386_runtime_relocator+0x310>
   1400079d2:	8b 53 08             	mov    0x8(%rbx),%edx
   1400079d5:	83 fa 01             	cmp    $0x1,%edx
   1400079d8:	0f 85 90 02 00 00    	jne    140007c6e <_pei386_runtime_relocator+0x34e>
   1400079de:	48 83 c3 0c          	add    $0xc,%rbx
   1400079e2:	4c 39 eb             	cmp    %r13,%rbx
   1400079e5:	0f 83 56 ff ff ff    	jae    140007941 <_pei386_runtime_relocator+0x21>
   1400079eb:	4c 8b 35 ce 2a 00 00 	mov    0x2ace(%rip),%r14        # 14000a4c0 <.refptr.__ImageBase>
   1400079f2:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   1400079f9:	ff ff ff 
   1400079fc:	eb 54                	jmp    140007a52 <_pei386_runtime_relocator+0x132>
   1400079fe:	66 90                	xchg   %ax,%ax
   140007a00:	0f b6 37             	movzbl (%rdi),%esi
   140007a03:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140007a09:	40 84 f6             	test   %sil,%sil
   140007a0c:	0f 89 06 02 00 00    	jns    140007c18 <_pei386_runtime_relocator+0x2f8>
   140007a12:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140007a19:	48 29 c6             	sub    %rax,%rsi
   140007a1c:	4c 01 ce             	add    %r9,%rsi
   140007a1f:	85 c9                	test   %ecx,%ecx
   140007a21:	75 17                	jne    140007a3a <_pei386_runtime_relocator+0x11a>
   140007a23:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140007a2a:	0f 8f 4f 01 00 00    	jg     140007b7f <_pei386_runtime_relocator+0x25f>
   140007a30:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140007a34:	0f 8c 45 01 00 00    	jl     140007b7f <_pei386_runtime_relocator+0x25f>
   140007a3a:	48 89 f9             	mov    %rdi,%rcx
   140007a3d:	e8 6e fd ff ff       	call   1400077b0 <mark_section_writable>
   140007a42:	40 88 37             	mov    %sil,(%rdi)
   140007a45:	48 83 c3 0c          	add    $0xc,%rbx
   140007a49:	4c 39 eb             	cmp    %r13,%rbx
   140007a4c:	0f 83 8e 00 00 00    	jae    140007ae0 <_pei386_runtime_relocator+0x1c0>
   140007a52:	8b 03                	mov    (%rbx),%eax
   140007a54:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140007a57:	8b 7b 04             	mov    0x4(%rbx),%edi
   140007a5a:	4c 01 f0             	add    %r14,%rax
   140007a5d:	0f b6 d1             	movzbl %cl,%edx
   140007a60:	4c 8b 08             	mov    (%rax),%r9
   140007a63:	4c 01 f7             	add    %r14,%rdi
   140007a66:	83 fa 20             	cmp    $0x20,%edx
   140007a69:	0f 84 29 01 00 00    	je     140007b98 <_pei386_runtime_relocator+0x278>
   140007a6f:	0f 87 eb 00 00 00    	ja     140007b60 <_pei386_runtime_relocator+0x240>
   140007a75:	83 fa 08             	cmp    $0x8,%edx
   140007a78:	74 86                	je     140007a00 <_pei386_runtime_relocator+0xe0>
   140007a7a:	83 fa 10             	cmp    $0x10,%edx
   140007a7d:	0f 85 df 01 00 00    	jne    140007c62 <_pei386_runtime_relocator+0x342>
   140007a83:	0f b7 37             	movzwl (%rdi),%esi
   140007a86:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140007a8c:	66 85 f6             	test   %si,%si
   140007a8f:	0f 89 6b 01 00 00    	jns    140007c00 <_pei386_runtime_relocator+0x2e0>
   140007a95:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140007a9c:	48 29 c6             	sub    %rax,%rsi
   140007a9f:	4c 01 ce             	add    %r9,%rsi
   140007aa2:	85 c9                	test   %ecx,%ecx
   140007aa4:	75 1a                	jne    140007ac0 <_pei386_runtime_relocator+0x1a0>
   140007aa6:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140007aad:	0f 8c cc 00 00 00    	jl     140007b7f <_pei386_runtime_relocator+0x25f>
   140007ab3:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140007aba:	0f 8f bf 00 00 00    	jg     140007b7f <_pei386_runtime_relocator+0x25f>
   140007ac0:	48 89 f9             	mov    %rdi,%rcx
   140007ac3:	48 83 c3 0c          	add    $0xc,%rbx
   140007ac7:	e8 e4 fc ff ff       	call   1400077b0 <mark_section_writable>
   140007acc:	66 89 37             	mov    %si,(%rdi)
   140007acf:	4c 39 eb             	cmp    %r13,%rbx
   140007ad2:	0f 82 7a ff ff ff    	jb     140007a52 <_pei386_runtime_relocator+0x132>
   140007ad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007adf:	00 
   140007ae0:	8b 15 fe 55 00 00    	mov    0x55fe(%rip),%edx        # 14000d0e4 <maxSections>
   140007ae6:	85 d2                	test   %edx,%edx
   140007ae8:	0f 8e 53 fe ff ff    	jle    140007941 <_pei386_runtime_relocator+0x21>
   140007aee:	48 8b 35 47 68 00 00 	mov    0x6847(%rip),%rsi        # 14000e33c <__imp_VirtualProtect>
   140007af5:	31 db                	xor    %ebx,%ebx
   140007af7:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140007afb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007b00:	48 8b 05 e1 55 00 00 	mov    0x55e1(%rip),%rax        # 14000d0e8 <the_secs>
   140007b07:	48 01 d8             	add    %rbx,%rax
   140007b0a:	44 8b 00             	mov    (%rax),%r8d
   140007b0d:	45 85 c0             	test   %r8d,%r8d
   140007b10:	74 0d                	je     140007b1f <_pei386_runtime_relocator+0x1ff>
   140007b12:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140007b16:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140007b1a:	49 89 f9             	mov    %rdi,%r9
   140007b1d:	ff d6                	call   *%rsi
   140007b1f:	41 83 c4 01          	add    $0x1,%r12d
   140007b23:	48 83 c3 28          	add    $0x28,%rbx
   140007b27:	44 3b 25 b6 55 00 00 	cmp    0x55b6(%rip),%r12d        # 14000d0e4 <maxSections>
   140007b2e:	7c d0                	jl     140007b00 <_pei386_runtime_relocator+0x1e0>
   140007b30:	e9 0c fe ff ff       	jmp    140007941 <_pei386_runtime_relocator+0x21>
   140007b35:	0f 1f 00             	nopl   (%rax)
   140007b38:	85 d2                	test   %edx,%edx
   140007b3a:	0f 85 f0 00 00 00    	jne    140007c30 <_pei386_runtime_relocator+0x310>
   140007b40:	8b 43 04             	mov    0x4(%rbx),%eax
   140007b43:	89 c2                	mov    %eax,%edx
   140007b45:	0b 53 08             	or     0x8(%rbx),%edx
   140007b48:	0f 85 7c fe ff ff    	jne    1400079ca <_pei386_runtime_relocator+0xaa>
   140007b4e:	48 83 c3 0c          	add    $0xc,%rbx
   140007b52:	e9 66 fe ff ff       	jmp    1400079bd <_pei386_runtime_relocator+0x9d>
   140007b57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007b5e:	00 00 
   140007b60:	83 fa 40             	cmp    $0x40,%edx
   140007b63:	0f 85 f9 00 00 00    	jne    140007c62 <_pei386_runtime_relocator+0x342>
   140007b69:	48 8b 37             	mov    (%rdi),%rsi
   140007b6c:	48 29 c6             	sub    %rax,%rsi
   140007b6f:	4c 01 ce             	add    %r9,%rsi
   140007b72:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140007b78:	75 66                	jne    140007be0 <_pei386_runtime_relocator+0x2c0>
   140007b7a:	48 85 f6             	test   %rsi,%rsi
   140007b7d:	78 61                	js     140007be0 <_pei386_runtime_relocator+0x2c0>
   140007b7f:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140007b84:	49 89 f8             	mov    %rdi,%r8
   140007b87:	48 8d 0d fa 27 00 00 	lea    0x27fa(%rip),%rcx        # 14000a388 <.rdata+0x108>
   140007b8e:	e8 ad fb ff ff       	call   140007740 <__report_error>
   140007b93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007b98:	8b 37                	mov    (%rdi),%esi
   140007b9a:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140007ba0:	85 f6                	test   %esi,%esi
   140007ba2:	79 4c                	jns    140007bf0 <_pei386_runtime_relocator+0x2d0>
   140007ba4:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140007bab:	ff ff ff 
   140007bae:	4c 09 de             	or     %r11,%rsi
   140007bb1:	48 29 c6             	sub    %rax,%rsi
   140007bb4:	4c 01 ce             	add    %r9,%rsi
   140007bb7:	85 c9                	test   %ecx,%ecx
   140007bb9:	75 0f                	jne    140007bca <_pei386_runtime_relocator+0x2aa>
   140007bbb:	4c 39 fe             	cmp    %r15,%rsi
   140007bbe:	7e bf                	jle    140007b7f <_pei386_runtime_relocator+0x25f>
   140007bc0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007bc5:	48 39 c6             	cmp    %rax,%rsi
   140007bc8:	7f b5                	jg     140007b7f <_pei386_runtime_relocator+0x25f>
   140007bca:	48 89 f9             	mov    %rdi,%rcx
   140007bcd:	e8 de fb ff ff       	call   1400077b0 <mark_section_writable>
   140007bd2:	89 37                	mov    %esi,(%rdi)
   140007bd4:	e9 6c fe ff ff       	jmp    140007a45 <_pei386_runtime_relocator+0x125>
   140007bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007be0:	48 89 f9             	mov    %rdi,%rcx
   140007be3:	e8 c8 fb ff ff       	call   1400077b0 <mark_section_writable>
   140007be8:	48 89 37             	mov    %rsi,(%rdi)
   140007beb:	e9 55 fe ff ff       	jmp    140007a45 <_pei386_runtime_relocator+0x125>
   140007bf0:	48 29 c6             	sub    %rax,%rsi
   140007bf3:	4c 01 ce             	add    %r9,%rsi
   140007bf6:	85 c9                	test   %ecx,%ecx
   140007bf8:	74 c1                	je     140007bbb <_pei386_runtime_relocator+0x29b>
   140007bfa:	eb ce                	jmp    140007bca <_pei386_runtime_relocator+0x2aa>
   140007bfc:	0f 1f 40 00          	nopl   0x0(%rax)
   140007c00:	48 29 c6             	sub    %rax,%rsi
   140007c03:	4c 01 ce             	add    %r9,%rsi
   140007c06:	85 c9                	test   %ecx,%ecx
   140007c08:	0f 84 98 fe ff ff    	je     140007aa6 <_pei386_runtime_relocator+0x186>
   140007c0e:	e9 ad fe ff ff       	jmp    140007ac0 <_pei386_runtime_relocator+0x1a0>
   140007c13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007c18:	48 29 c6             	sub    %rax,%rsi
   140007c1b:	4c 01 ce             	add    %r9,%rsi
   140007c1e:	85 c9                	test   %ecx,%ecx
   140007c20:	0f 84 fd fd ff ff    	je     140007a23 <_pei386_runtime_relocator+0x103>
   140007c26:	e9 0f fe ff ff       	jmp    140007a3a <_pei386_runtime_relocator+0x11a>
   140007c2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007c30:	4c 39 eb             	cmp    %r13,%rbx
   140007c33:	0f 83 08 fd ff ff    	jae    140007941 <_pei386_runtime_relocator+0x21>
   140007c39:	4c 8b 35 80 28 00 00 	mov    0x2880(%rip),%r14        # 14000a4c0 <.refptr.__ImageBase>
   140007c40:	8b 73 04             	mov    0x4(%rbx),%esi
   140007c43:	8b 3b                	mov    (%rbx),%edi
   140007c45:	48 83 c3 08          	add    $0x8,%rbx
   140007c49:	4c 01 f6             	add    %r14,%rsi
   140007c4c:	03 3e                	add    (%rsi),%edi
   140007c4e:	48 89 f1             	mov    %rsi,%rcx
   140007c51:	e8 5a fb ff ff       	call   1400077b0 <mark_section_writable>
   140007c56:	89 3e                	mov    %edi,(%rsi)
   140007c58:	4c 39 eb             	cmp    %r13,%rbx
   140007c5b:	72 e3                	jb     140007c40 <_pei386_runtime_relocator+0x320>
   140007c5d:	e9 7e fe ff ff       	jmp    140007ae0 <_pei386_runtime_relocator+0x1c0>
   140007c62:	48 8d 0d ef 26 00 00 	lea    0x26ef(%rip),%rcx        # 14000a358 <.rdata+0xd8>
   140007c69:	e8 d2 fa ff ff       	call   140007740 <__report_error>
   140007c6e:	48 8d 0d ab 26 00 00 	lea    0x26ab(%rip),%rcx        # 14000a320 <.rdata+0xa0>
   140007c75:	e8 c6 fa ff ff       	call   140007740 <__report_error>
   140007c7a:	90                   	nop
   140007c7b:	90                   	nop
   140007c7c:	90                   	nop
   140007c7d:	90                   	nop
   140007c7e:	90                   	nop
   140007c7f:	90                   	nop

0000000140007c80 <__mingw_raise_matherr>:
   140007c80:	48 83 ec 58          	sub    $0x58,%rsp
   140007c84:	48 8b 05 65 54 00 00 	mov    0x5465(%rip),%rax        # 14000d0f0 <stUserMathErr>
   140007c8b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140007c8f:	48 85 c0             	test   %rax,%rax
   140007c92:	74 25                	je     140007cb9 <__mingw_raise_matherr+0x39>
   140007c94:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140007c9b:	00 00 
   140007c9d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140007ca1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140007ca6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140007cab:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140007cb0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140007cb6:	ff d0                	call   *%rax
   140007cb8:	90                   	nop
   140007cb9:	48 83 c4 58          	add    $0x58,%rsp
   140007cbd:	c3                   	ret
   140007cbe:	66 90                	xchg   %ax,%ax

0000000140007cc0 <__mingw_setusermatherr>:
   140007cc0:	48 89 0d 29 54 00 00 	mov    %rcx,0x5429(%rip)        # 14000d0f0 <stUserMathErr>
   140007cc7:	e9 e4 08 00 00       	jmp    1400085b0 <__setusermatherr>
   140007ccc:	90                   	nop
   140007ccd:	90                   	nop
   140007cce:	90                   	nop
   140007ccf:	90                   	nop

0000000140007cd0 <_gnu_exception_handler>:
   140007cd0:	53                   	push   %rbx
   140007cd1:	48 83 ec 20          	sub    $0x20,%rsp
   140007cd5:	48 8b 11             	mov    (%rcx),%rdx
   140007cd8:	8b 02                	mov    (%rdx),%eax
   140007cda:	48 89 cb             	mov    %rcx,%rbx
   140007cdd:	89 c1                	mov    %eax,%ecx
   140007cdf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140007ce5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140007ceb:	0f 84 9f 00 00 00    	je     140007d90 <_gnu_exception_handler+0xc0>
   140007cf1:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140007cf6:	77 77                	ja     140007d6f <_gnu_exception_handler+0x9f>
   140007cf8:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140007cfd:	76 21                	jbe    140007d20 <_gnu_exception_handler+0x50>
   140007cff:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140007d04:	83 f8 09             	cmp    $0x9,%eax
   140007d07:	77 54                	ja     140007d5d <_gnu_exception_handler+0x8d>
   140007d09:	48 8d 15 d0 26 00 00 	lea    0x26d0(%rip),%rdx        # 14000a3e0 <.rdata>
   140007d10:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140007d14:	48 01 d0             	add    %rdx,%rax
   140007d17:	ff e0                	jmp    *%rax
   140007d19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007d20:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140007d25:	0f 84 d5 00 00 00    	je     140007e00 <_gnu_exception_handler+0x130>
   140007d2b:	76 3b                	jbe    140007d68 <_gnu_exception_handler+0x98>
   140007d2d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140007d32:	74 29                	je     140007d5d <_gnu_exception_handler+0x8d>
   140007d34:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140007d39:	75 34                	jne    140007d6f <_gnu_exception_handler+0x9f>
   140007d3b:	31 d2                	xor    %edx,%edx
   140007d3d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140007d42:	e8 d1 08 00 00       	call   140008618 <signal>
   140007d47:	48 83 f8 01          	cmp    $0x1,%rax
   140007d4b:	0f 84 d6 00 00 00    	je     140007e27 <_gnu_exception_handler+0x157>
   140007d51:	48 85 c0             	test   %rax,%rax
   140007d54:	74 19                	je     140007d6f <_gnu_exception_handler+0x9f>
   140007d56:	b9 04 00 00 00       	mov    $0x4,%ecx
   140007d5b:	ff d0                	call   *%rax
   140007d5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007d62:	48 83 c4 20          	add    $0x20,%rsp
   140007d66:	5b                   	pop    %rbx
   140007d67:	c3                   	ret
   140007d68:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140007d6d:	74 ee                	je     140007d5d <_gnu_exception_handler+0x8d>
   140007d6f:	48 8b 05 9a 53 00 00 	mov    0x539a(%rip),%rax        # 14000d110 <__mingw_oldexcpt_handler>
   140007d76:	48 85 c0             	test   %rax,%rax
   140007d79:	74 25                	je     140007da0 <_gnu_exception_handler+0xd0>
   140007d7b:	48 89 d9             	mov    %rbx,%rcx
   140007d7e:	48 83 c4 20          	add    $0x20,%rsp
   140007d82:	5b                   	pop    %rbx
   140007d83:	48 ff e0             	rex.W jmp *%rax
   140007d86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007d8d:	00 00 00 
   140007d90:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140007d94:	0f 85 57 ff ff ff    	jne    140007cf1 <_gnu_exception_handler+0x21>
   140007d9a:	eb c1                	jmp    140007d5d <_gnu_exception_handler+0x8d>
   140007d9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007da0:	31 c0                	xor    %eax,%eax
   140007da2:	48 83 c4 20          	add    $0x20,%rsp
   140007da6:	5b                   	pop    %rbx
   140007da7:	c3                   	ret
   140007da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007daf:	00 
   140007db0:	31 d2                	xor    %edx,%edx
   140007db2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007db7:	e8 5c 08 00 00       	call   140008618 <signal>
   140007dbc:	48 83 f8 01          	cmp    $0x1,%rax
   140007dc0:	0f 84 89 00 00 00    	je     140007e4f <_gnu_exception_handler+0x17f>
   140007dc6:	48 85 c0             	test   %rax,%rax
   140007dc9:	74 a4                	je     140007d6f <_gnu_exception_handler+0x9f>
   140007dcb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007dd0:	ff d0                	call   *%rax
   140007dd2:	eb 89                	jmp    140007d5d <_gnu_exception_handler+0x8d>
   140007dd4:	0f 1f 40 00          	nopl   0x0(%rax)
   140007dd8:	31 d2                	xor    %edx,%edx
   140007dda:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007ddf:	e8 34 08 00 00       	call   140008618 <signal>
   140007de4:	48 83 f8 01          	cmp    $0x1,%rax
   140007de8:	75 dc                	jne    140007dc6 <_gnu_exception_handler+0xf6>
   140007dea:	ba 01 00 00 00       	mov    $0x1,%edx
   140007def:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007df4:	e8 1f 08 00 00       	call   140008618 <signal>
   140007df9:	e9 5f ff ff ff       	jmp    140007d5d <_gnu_exception_handler+0x8d>
   140007dfe:	66 90                	xchg   %ax,%ax
   140007e00:	31 d2                	xor    %edx,%edx
   140007e02:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140007e07:	e8 0c 08 00 00       	call   140008618 <signal>
   140007e0c:	48 83 f8 01          	cmp    $0x1,%rax
   140007e10:	74 29                	je     140007e3b <_gnu_exception_handler+0x16b>
   140007e12:	48 85 c0             	test   %rax,%rax
   140007e15:	0f 84 54 ff ff ff    	je     140007d6f <_gnu_exception_handler+0x9f>
   140007e1b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140007e20:	ff d0                	call   *%rax
   140007e22:	e9 36 ff ff ff       	jmp    140007d5d <_gnu_exception_handler+0x8d>
   140007e27:	ba 01 00 00 00       	mov    $0x1,%edx
   140007e2c:	b9 04 00 00 00       	mov    $0x4,%ecx
   140007e31:	e8 e2 07 00 00       	call   140008618 <signal>
   140007e36:	e9 22 ff ff ff       	jmp    140007d5d <_gnu_exception_handler+0x8d>
   140007e3b:	ba 01 00 00 00       	mov    $0x1,%edx
   140007e40:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140007e45:	e8 ce 07 00 00       	call   140008618 <signal>
   140007e4a:	e9 0e ff ff ff       	jmp    140007d5d <_gnu_exception_handler+0x8d>
   140007e4f:	ba 01 00 00 00       	mov    $0x1,%edx
   140007e54:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007e59:	e8 ba 07 00 00       	call   140008618 <signal>
   140007e5e:	e8 cd f8 ff ff       	call   140007730 <_fpreset>
   140007e63:	e9 f5 fe ff ff       	jmp    140007d5d <_gnu_exception_handler+0x8d>
   140007e68:	90                   	nop
   140007e69:	90                   	nop
   140007e6a:	90                   	nop
   140007e6b:	90                   	nop
   140007e6c:	90                   	nop
   140007e6d:	90                   	nop
   140007e6e:	90                   	nop
   140007e6f:	90                   	nop

0000000140007e70 <__mingwthr_run_key_dtors.part.0>:
   140007e70:	41 54                	push   %r12
   140007e72:	55                   	push   %rbp
   140007e73:	57                   	push   %rdi
   140007e74:	56                   	push   %rsi
   140007e75:	53                   	push   %rbx
   140007e76:	48 83 ec 20          	sub    $0x20,%rsp
   140007e7a:	4c 8d 25 bf 52 00 00 	lea    0x52bf(%rip),%r12        # 14000d140 <__mingwthr_cs>
   140007e81:	4c 89 e1             	mov    %r12,%rcx
   140007e84:	ff 15 7a 64 00 00    	call   *0x647a(%rip)        # 14000e304 <__imp_EnterCriticalSection>
   140007e8a:	48 8b 1d 8f 52 00 00 	mov    0x528f(%rip),%rbx        # 14000d120 <key_dtor_list>
   140007e91:	48 85 db             	test   %rbx,%rbx
   140007e94:	74 36                	je     140007ecc <__mingwthr_run_key_dtors.part.0+0x5c>
   140007e96:	48 8b 2d 97 64 00 00 	mov    0x6497(%rip),%rbp        # 14000e334 <__imp_TlsGetValue>
   140007e9d:	48 8b 3d 68 64 00 00 	mov    0x6468(%rip),%rdi        # 14000e30c <__imp_GetLastError>
   140007ea4:	0f 1f 40 00          	nopl   0x0(%rax)
   140007ea8:	8b 0b                	mov    (%rbx),%ecx
   140007eaa:	ff d5                	call   *%rbp
   140007eac:	48 89 c6             	mov    %rax,%rsi
   140007eaf:	ff d7                	call   *%rdi
   140007eb1:	85 c0                	test   %eax,%eax
   140007eb3:	75 0e                	jne    140007ec3 <__mingwthr_run_key_dtors.part.0+0x53>
   140007eb5:	48 85 f6             	test   %rsi,%rsi
   140007eb8:	74 09                	je     140007ec3 <__mingwthr_run_key_dtors.part.0+0x53>
   140007eba:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140007ebe:	48 89 f1             	mov    %rsi,%rcx
   140007ec1:	ff d0                	call   *%rax
   140007ec3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140007ec7:	48 85 db             	test   %rbx,%rbx
   140007eca:	75 dc                	jne    140007ea8 <__mingwthr_run_key_dtors.part.0+0x38>
   140007ecc:	4c 89 e1             	mov    %r12,%rcx
   140007ecf:	48 83 c4 20          	add    $0x20,%rsp
   140007ed3:	5b                   	pop    %rbx
   140007ed4:	5e                   	pop    %rsi
   140007ed5:	5f                   	pop    %rdi
   140007ed6:	5d                   	pop    %rbp
   140007ed7:	41 5c                	pop    %r12
   140007ed9:	48 ff 25 3c 64 00 00 	rex.W jmp *0x643c(%rip)        # 14000e31c <__imp_LeaveCriticalSection>

0000000140007ee0 <___w64_mingwthr_add_key_dtor>:
   140007ee0:	57                   	push   %rdi
   140007ee1:	56                   	push   %rsi
   140007ee2:	53                   	push   %rbx
   140007ee3:	48 83 ec 20          	sub    $0x20,%rsp
   140007ee7:	8b 05 3b 52 00 00    	mov    0x523b(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140007eed:	89 cf                	mov    %ecx,%edi
   140007eef:	48 89 d6             	mov    %rdx,%rsi
   140007ef2:	85 c0                	test   %eax,%eax
   140007ef4:	75 0a                	jne    140007f00 <___w64_mingwthr_add_key_dtor+0x20>
   140007ef6:	31 c0                	xor    %eax,%eax
   140007ef8:	48 83 c4 20          	add    $0x20,%rsp
   140007efc:	5b                   	pop    %rbx
   140007efd:	5e                   	pop    %rsi
   140007efe:	5f                   	pop    %rdi
   140007eff:	c3                   	ret
   140007f00:	ba 18 00 00 00       	mov    $0x18,%edx
   140007f05:	b9 01 00 00 00       	mov    $0x1,%ecx
   140007f0a:	e8 d1 06 00 00       	call   1400085e0 <calloc>
   140007f0f:	48 89 c3             	mov    %rax,%rbx
   140007f12:	48 85 c0             	test   %rax,%rax
   140007f15:	74 33                	je     140007f4a <___w64_mingwthr_add_key_dtor+0x6a>
   140007f17:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140007f1b:	48 8d 35 1e 52 00 00 	lea    0x521e(%rip),%rsi        # 14000d140 <__mingwthr_cs>
   140007f22:	89 38                	mov    %edi,(%rax)
   140007f24:	48 89 f1             	mov    %rsi,%rcx
   140007f27:	ff 15 d7 63 00 00    	call   *0x63d7(%rip)        # 14000e304 <__imp_EnterCriticalSection>
   140007f2d:	48 8b 05 ec 51 00 00 	mov    0x51ec(%rip),%rax        # 14000d120 <key_dtor_list>
   140007f34:	48 89 f1             	mov    %rsi,%rcx
   140007f37:	48 89 1d e2 51 00 00 	mov    %rbx,0x51e2(%rip)        # 14000d120 <key_dtor_list>
   140007f3e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140007f42:	ff 15 d4 63 00 00    	call   *0x63d4(%rip)        # 14000e31c <__imp_LeaveCriticalSection>
   140007f48:	eb ac                	jmp    140007ef6 <___w64_mingwthr_add_key_dtor+0x16>
   140007f4a:	83 c8 ff             	or     $0xffffffff,%eax
   140007f4d:	eb a9                	jmp    140007ef8 <___w64_mingwthr_add_key_dtor+0x18>
   140007f4f:	90                   	nop

0000000140007f50 <___w64_mingwthr_remove_key_dtor>:
   140007f50:	56                   	push   %rsi
   140007f51:	53                   	push   %rbx
   140007f52:	48 83 ec 28          	sub    $0x28,%rsp
   140007f56:	8b 05 cc 51 00 00    	mov    0x51cc(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140007f5c:	89 cb                	mov    %ecx,%ebx
   140007f5e:	85 c0                	test   %eax,%eax
   140007f60:	75 0e                	jne    140007f70 <___w64_mingwthr_remove_key_dtor+0x20>
   140007f62:	31 c0                	xor    %eax,%eax
   140007f64:	48 83 c4 28          	add    $0x28,%rsp
   140007f68:	5b                   	pop    %rbx
   140007f69:	5e                   	pop    %rsi
   140007f6a:	c3                   	ret
   140007f6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007f70:	48 8d 35 c9 51 00 00 	lea    0x51c9(%rip),%rsi        # 14000d140 <__mingwthr_cs>
   140007f77:	48 89 f1             	mov    %rsi,%rcx
   140007f7a:	ff 15 84 63 00 00    	call   *0x6384(%rip)        # 14000e304 <__imp_EnterCriticalSection>
   140007f80:	48 8b 0d 99 51 00 00 	mov    0x5199(%rip),%rcx        # 14000d120 <key_dtor_list>
   140007f87:	48 85 c9             	test   %rcx,%rcx
   140007f8a:	74 27                	je     140007fb3 <___w64_mingwthr_remove_key_dtor+0x63>
   140007f8c:	31 d2                	xor    %edx,%edx
   140007f8e:	eb 0b                	jmp    140007f9b <___w64_mingwthr_remove_key_dtor+0x4b>
   140007f90:	48 89 ca             	mov    %rcx,%rdx
   140007f93:	48 85 c0             	test   %rax,%rax
   140007f96:	74 1b                	je     140007fb3 <___w64_mingwthr_remove_key_dtor+0x63>
   140007f98:	48 89 c1             	mov    %rax,%rcx
   140007f9b:	8b 01                	mov    (%rcx),%eax
   140007f9d:	39 d8                	cmp    %ebx,%eax
   140007f9f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140007fa3:	75 eb                	jne    140007f90 <___w64_mingwthr_remove_key_dtor+0x40>
   140007fa5:	48 85 d2             	test   %rdx,%rdx
   140007fa8:	74 1e                	je     140007fc8 <___w64_mingwthr_remove_key_dtor+0x78>
   140007faa:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140007fae:	e8 45 06 00 00       	call   1400085f8 <free>
   140007fb3:	48 89 f1             	mov    %rsi,%rcx
   140007fb6:	ff 15 60 63 00 00    	call   *0x6360(%rip)        # 14000e31c <__imp_LeaveCriticalSection>
   140007fbc:	31 c0                	xor    %eax,%eax
   140007fbe:	48 83 c4 28          	add    $0x28,%rsp
   140007fc2:	5b                   	pop    %rbx
   140007fc3:	5e                   	pop    %rsi
   140007fc4:	c3                   	ret
   140007fc5:	0f 1f 00             	nopl   (%rax)
   140007fc8:	48 89 05 51 51 00 00 	mov    %rax,0x5151(%rip)        # 14000d120 <key_dtor_list>
   140007fcf:	eb dd                	jmp    140007fae <___w64_mingwthr_remove_key_dtor+0x5e>
   140007fd1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007fd8:	00 00 00 00 
   140007fdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140007fe0 <__mingw_TLScallback>:
   140007fe0:	53                   	push   %rbx
   140007fe1:	48 83 ec 20          	sub    $0x20,%rsp
   140007fe5:	83 fa 02             	cmp    $0x2,%edx
   140007fe8:	0f 84 b2 00 00 00    	je     1400080a0 <__mingw_TLScallback+0xc0>
   140007fee:	77 30                	ja     140008020 <__mingw_TLScallback+0x40>
   140007ff0:	85 d2                	test   %edx,%edx
   140007ff2:	74 4c                	je     140008040 <__mingw_TLScallback+0x60>
   140007ff4:	8b 05 2e 51 00 00    	mov    0x512e(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140007ffa:	85 c0                	test   %eax,%eax
   140007ffc:	0f 84 be 00 00 00    	je     1400080c0 <__mingw_TLScallback+0xe0>
   140008002:	c7 05 1c 51 00 00 01 	movl   $0x1,0x511c(%rip)        # 14000d128 <__mingwthr_cs_init>
   140008009:	00 00 00 
   14000800c:	b8 01 00 00 00       	mov    $0x1,%eax
   140008011:	48 83 c4 20          	add    $0x20,%rsp
   140008015:	5b                   	pop    %rbx
   140008016:	c3                   	ret
   140008017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000801e:	00 00 
   140008020:	83 fa 03             	cmp    $0x3,%edx
   140008023:	75 e7                	jne    14000800c <__mingw_TLScallback+0x2c>
   140008025:	8b 05 fd 50 00 00    	mov    0x50fd(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   14000802b:	85 c0                	test   %eax,%eax
   14000802d:	74 dd                	je     14000800c <__mingw_TLScallback+0x2c>
   14000802f:	e8 3c fe ff ff       	call   140007e70 <__mingwthr_run_key_dtors.part.0>
   140008034:	eb d6                	jmp    14000800c <__mingw_TLScallback+0x2c>
   140008036:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000803d:	00 00 00 
   140008040:	8b 05 e2 50 00 00    	mov    0x50e2(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140008046:	85 c0                	test   %eax,%eax
   140008048:	75 66                	jne    1400080b0 <__mingw_TLScallback+0xd0>
   14000804a:	8b 05 d8 50 00 00    	mov    0x50d8(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140008050:	83 f8 01             	cmp    $0x1,%eax
   140008053:	75 b7                	jne    14000800c <__mingw_TLScallback+0x2c>
   140008055:	48 8b 1d c4 50 00 00 	mov    0x50c4(%rip),%rbx        # 14000d120 <key_dtor_list>
   14000805c:	48 85 db             	test   %rbx,%rbx
   14000805f:	74 18                	je     140008079 <__mingw_TLScallback+0x99>
   140008061:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008068:	48 89 d9             	mov    %rbx,%rcx
   14000806b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000806f:	e8 84 05 00 00       	call   1400085f8 <free>
   140008074:	48 85 db             	test   %rbx,%rbx
   140008077:	75 ef                	jne    140008068 <__mingw_TLScallback+0x88>
   140008079:	48 8d 0d c0 50 00 00 	lea    0x50c0(%rip),%rcx        # 14000d140 <__mingwthr_cs>
   140008080:	48 c7 05 95 50 00 00 	movq   $0x0,0x5095(%rip)        # 14000d120 <key_dtor_list>
   140008087:	00 00 00 00 
   14000808b:	c7 05 93 50 00 00 00 	movl   $0x0,0x5093(%rip)        # 14000d128 <__mingwthr_cs_init>
   140008092:	00 00 00 
   140008095:	ff 15 61 62 00 00    	call   *0x6261(%rip)        # 14000e2fc <__imp_DeleteCriticalSection>
   14000809b:	e9 6c ff ff ff       	jmp    14000800c <__mingw_TLScallback+0x2c>
   1400080a0:	e8 8b f6 ff ff       	call   140007730 <_fpreset>
   1400080a5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400080aa:	48 83 c4 20          	add    $0x20,%rsp
   1400080ae:	5b                   	pop    %rbx
   1400080af:	c3                   	ret
   1400080b0:	e8 bb fd ff ff       	call   140007e70 <__mingwthr_run_key_dtors.part.0>
   1400080b5:	eb 93                	jmp    14000804a <__mingw_TLScallback+0x6a>
   1400080b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400080be:	00 00 
   1400080c0:	48 8d 0d 79 50 00 00 	lea    0x5079(%rip),%rcx        # 14000d140 <__mingwthr_cs>
   1400080c7:	ff 15 47 62 00 00    	call   *0x6247(%rip)        # 14000e314 <__imp_InitializeCriticalSection>
   1400080cd:	e9 30 ff ff ff       	jmp    140008002 <__mingw_TLScallback+0x22>
   1400080d2:	90                   	nop
   1400080d3:	90                   	nop
   1400080d4:	90                   	nop
   1400080d5:	90                   	nop
   1400080d6:	90                   	nop
   1400080d7:	90                   	nop
   1400080d8:	90                   	nop
   1400080d9:	90                   	nop
   1400080da:	90                   	nop
   1400080db:	90                   	nop
   1400080dc:	90                   	nop
   1400080dd:	90                   	nop
   1400080de:	90                   	nop
   1400080df:	90                   	nop

00000001400080e0 <_ValidateImageBase>:
   1400080e0:	31 c0                	xor    %eax,%eax
   1400080e2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400080e7:	75 0f                	jne    1400080f8 <_ValidateImageBase+0x18>
   1400080e9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   1400080ed:	48 01 d1             	add    %rdx,%rcx
   1400080f0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400080f6:	74 08                	je     140008100 <_ValidateImageBase+0x20>
   1400080f8:	c3                   	ret
   1400080f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008100:	31 c0                	xor    %eax,%eax
   140008102:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140008108:	0f 94 c0             	sete   %al
   14000810b:	c3                   	ret
   14000810c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140008110 <_FindPESection>:
   140008110:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140008114:	48 01 c1             	add    %rax,%rcx
   140008117:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000811b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140008120:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140008125:	66 45 85 c0          	test   %r8w,%r8w
   140008129:	74 32                	je     14000815d <_FindPESection+0x4d>
   14000812b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000812f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140008133:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140008138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000813f:	00 
   140008140:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140008144:	4c 89 c1             	mov    %r8,%rcx
   140008147:	4c 39 c2             	cmp    %r8,%rdx
   14000814a:	72 08                	jb     140008154 <_FindPESection+0x44>
   14000814c:	03 48 08             	add    0x8(%rax),%ecx
   14000814f:	48 39 ca             	cmp    %rcx,%rdx
   140008152:	72 0b                	jb     14000815f <_FindPESection+0x4f>
   140008154:	48 83 c0 28          	add    $0x28,%rax
   140008158:	4c 39 c8             	cmp    %r9,%rax
   14000815b:	75 e3                	jne    140008140 <_FindPESection+0x30>
   14000815d:	31 c0                	xor    %eax,%eax
   14000815f:	c3                   	ret

0000000140008160 <_FindPESectionByName>:
   140008160:	57                   	push   %rdi
   140008161:	56                   	push   %rsi
   140008162:	53                   	push   %rbx
   140008163:	48 83 ec 20          	sub    $0x20,%rsp
   140008167:	48 89 ce             	mov    %rcx,%rsi
   14000816a:	e8 b1 04 00 00       	call   140008620 <strlen>
   14000816f:	48 83 f8 08          	cmp    $0x8,%rax
   140008173:	77 7b                	ja     1400081f0 <_FindPESectionByName+0x90>
   140008175:	48 8b 15 44 23 00 00 	mov    0x2344(%rip),%rdx        # 14000a4c0 <.refptr.__ImageBase>
   14000817c:	31 db                	xor    %ebx,%ebx
   14000817e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140008183:	75 59                	jne    1400081de <_FindPESectionByName+0x7e>
   140008185:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140008189:	48 01 d0             	add    %rdx,%rax
   14000818c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140008192:	75 4a                	jne    1400081de <_FindPESectionByName+0x7e>
   140008194:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000819a:	75 42                	jne    1400081de <_FindPESectionByName+0x7e>
   14000819c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400081a0:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   1400081a5:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   1400081a9:	66 85 d2             	test   %dx,%dx
   1400081ac:	74 42                	je     1400081f0 <_FindPESectionByName+0x90>
   1400081ae:	8d 42 ff             	lea    -0x1(%rdx),%eax
   1400081b1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400081b5:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   1400081ba:	eb 0d                	jmp    1400081c9 <_FindPESectionByName+0x69>
   1400081bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400081c0:	48 83 c3 28          	add    $0x28,%rbx
   1400081c4:	48 39 fb             	cmp    %rdi,%rbx
   1400081c7:	74 27                	je     1400081f0 <_FindPESectionByName+0x90>
   1400081c9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400081cf:	48 89 f2             	mov    %rsi,%rdx
   1400081d2:	48 89 d9             	mov    %rbx,%rcx
   1400081d5:	e8 4e 04 00 00       	call   140008628 <strncmp>
   1400081da:	85 c0                	test   %eax,%eax
   1400081dc:	75 e2                	jne    1400081c0 <_FindPESectionByName+0x60>
   1400081de:	48 89 d8             	mov    %rbx,%rax
   1400081e1:	48 83 c4 20          	add    $0x20,%rsp
   1400081e5:	5b                   	pop    %rbx
   1400081e6:	5e                   	pop    %rsi
   1400081e7:	5f                   	pop    %rdi
   1400081e8:	c3                   	ret
   1400081e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400081f0:	31 db                	xor    %ebx,%ebx
   1400081f2:	48 89 d8             	mov    %rbx,%rax
   1400081f5:	48 83 c4 20          	add    $0x20,%rsp
   1400081f9:	5b                   	pop    %rbx
   1400081fa:	5e                   	pop    %rsi
   1400081fb:	5f                   	pop    %rdi
   1400081fc:	c3                   	ret
   1400081fd:	0f 1f 00             	nopl   (%rax)

0000000140008200 <__mingw_GetSectionForAddress>:
   140008200:	48 8b 15 b9 22 00 00 	mov    0x22b9(%rip),%rdx        # 14000a4c0 <.refptr.__ImageBase>
   140008207:	31 c0                	xor    %eax,%eax
   140008209:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000820e:	75 10                	jne    140008220 <__mingw_GetSectionForAddress+0x20>
   140008210:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140008214:	49 01 d0             	add    %rdx,%r8
   140008217:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000821e:	74 08                	je     140008228 <__mingw_GetSectionForAddress+0x28>
   140008220:	c3                   	ret
   140008221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008228:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000822f:	75 ef                	jne    140008220 <__mingw_GetSectionForAddress+0x20>
   140008231:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140008236:	48 29 d1             	sub    %rdx,%rcx
   140008239:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   14000823e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140008243:	66 45 85 c0          	test   %r8w,%r8w
   140008247:	74 34                	je     14000827d <__mingw_GetSectionForAddress+0x7d>
   140008249:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   14000824d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140008251:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140008256:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000825d:	00 00 00 
   140008260:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140008264:	4c 89 c2             	mov    %r8,%rdx
   140008267:	4c 39 c1             	cmp    %r8,%rcx
   14000826a:	72 08                	jb     140008274 <__mingw_GetSectionForAddress+0x74>
   14000826c:	03 50 08             	add    0x8(%rax),%edx
   14000826f:	48 39 d1             	cmp    %rdx,%rcx
   140008272:	72 ac                	jb     140008220 <__mingw_GetSectionForAddress+0x20>
   140008274:	48 83 c0 28          	add    $0x28,%rax
   140008278:	4c 39 c8             	cmp    %r9,%rax
   14000827b:	75 e3                	jne    140008260 <__mingw_GetSectionForAddress+0x60>
   14000827d:	31 c0                	xor    %eax,%eax
   14000827f:	c3                   	ret

0000000140008280 <__mingw_GetSectionCount>:
   140008280:	48 8b 05 39 22 00 00 	mov    0x2239(%rip),%rax        # 14000a4c0 <.refptr.__ImageBase>
   140008287:	31 c9                	xor    %ecx,%ecx
   140008289:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000828e:	75 0f                	jne    14000829f <__mingw_GetSectionCount+0x1f>
   140008290:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140008294:	48 01 d0             	add    %rdx,%rax
   140008297:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000829d:	74 09                	je     1400082a8 <__mingw_GetSectionCount+0x28>
   14000829f:	89 c8                	mov    %ecx,%eax
   1400082a1:	c3                   	ret
   1400082a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400082a8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400082ae:	75 ef                	jne    14000829f <__mingw_GetSectionCount+0x1f>
   1400082b0:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   1400082b4:	89 c8                	mov    %ecx,%eax
   1400082b6:	c3                   	ret
   1400082b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400082be:	00 00 

00000001400082c0 <_FindPESectionExec>:
   1400082c0:	4c 8b 05 f9 21 00 00 	mov    0x21f9(%rip),%r8        # 14000a4c0 <.refptr.__ImageBase>
   1400082c7:	31 c0                	xor    %eax,%eax
   1400082c9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400082cf:	75 0f                	jne    1400082e0 <_FindPESectionExec+0x20>
   1400082d1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   1400082d5:	4c 01 c2             	add    %r8,%rdx
   1400082d8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400082de:	74 08                	je     1400082e8 <_FindPESectionExec+0x28>
   1400082e0:	c3                   	ret
   1400082e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400082e8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400082ee:	75 f0                	jne    1400082e0 <_FindPESectionExec+0x20>
   1400082f0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   1400082f4:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   1400082f9:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   1400082fe:	66 45 85 c0          	test   %r8w,%r8w
   140008302:	74 2c                	je     140008330 <_FindPESectionExec+0x70>
   140008304:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140008308:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000830c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140008311:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008318:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000831c:	74 09                	je     140008327 <_FindPESectionExec+0x67>
   14000831e:	48 85 c9             	test   %rcx,%rcx
   140008321:	74 bd                	je     1400082e0 <_FindPESectionExec+0x20>
   140008323:	48 83 e9 01          	sub    $0x1,%rcx
   140008327:	48 83 c0 28          	add    $0x28,%rax
   14000832b:	48 39 d0             	cmp    %rdx,%rax
   14000832e:	75 e8                	jne    140008318 <_FindPESectionExec+0x58>
   140008330:	31 c0                	xor    %eax,%eax
   140008332:	c3                   	ret
   140008333:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000833a:	00 00 00 00 
   14000833e:	66 90                	xchg   %ax,%ax

0000000140008340 <_GetPEImageBase>:
   140008340:	48 8b 05 79 21 00 00 	mov    0x2179(%rip),%rax        # 14000a4c0 <.refptr.__ImageBase>
   140008347:	31 d2                	xor    %edx,%edx
   140008349:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000834e:	75 0f                	jne    14000835f <_GetPEImageBase+0x1f>
   140008350:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140008354:	48 01 c1             	add    %rax,%rcx
   140008357:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000835d:	74 09                	je     140008368 <_GetPEImageBase+0x28>
   14000835f:	48 89 d0             	mov    %rdx,%rax
   140008362:	c3                   	ret
   140008363:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008368:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000836e:	48 0f 44 d0          	cmove  %rax,%rdx
   140008372:	48 89 d0             	mov    %rdx,%rax
   140008375:	c3                   	ret
   140008376:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000837d:	00 00 00 

0000000140008380 <_IsNonwritableInCurrentImage>:
   140008380:	48 8b 15 39 21 00 00 	mov    0x2139(%rip),%rdx        # 14000a4c0 <.refptr.__ImageBase>
   140008387:	31 c0                	xor    %eax,%eax
   140008389:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000838e:	75 10                	jne    1400083a0 <_IsNonwritableInCurrentImage+0x20>
   140008390:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140008394:	49 01 d0             	add    %rdx,%r8
   140008397:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000839e:	74 08                	je     1400083a8 <_IsNonwritableInCurrentImage+0x28>
   1400083a0:	c3                   	ret
   1400083a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400083a8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400083af:	75 ef                	jne    1400083a0 <_IsNonwritableInCurrentImage+0x20>
   1400083b1:	48 29 d1             	sub    %rdx,%rcx
   1400083b4:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   1400083b9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400083be:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400083c3:	66 45 85 c9          	test   %r9w,%r9w
   1400083c7:	74 d7                	je     1400083a0 <_IsNonwritableInCurrentImage+0x20>
   1400083c9:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   1400083cd:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400083d1:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   1400083d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400083dd:	00 00 00 
   1400083e0:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   1400083e4:	4c 89 c0             	mov    %r8,%rax
   1400083e7:	4c 39 c1             	cmp    %r8,%rcx
   1400083ea:	72 08                	jb     1400083f4 <_IsNonwritableInCurrentImage+0x74>
   1400083ec:	03 42 08             	add    0x8(%rdx),%eax
   1400083ef:	48 39 c1             	cmp    %rax,%rcx
   1400083f2:	72 0c                	jb     140008400 <_IsNonwritableInCurrentImage+0x80>
   1400083f4:	48 83 c2 28          	add    $0x28,%rdx
   1400083f8:	49 39 d1             	cmp    %rdx,%r9
   1400083fb:	75 e3                	jne    1400083e0 <_IsNonwritableInCurrentImage+0x60>
   1400083fd:	31 c0                	xor    %eax,%eax
   1400083ff:	c3                   	ret
   140008400:	8b 42 24             	mov    0x24(%rdx),%eax
   140008403:	f7 d0                	not    %eax
   140008405:	c1 e8 1f             	shr    $0x1f,%eax
   140008408:	c3                   	ret
   140008409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140008410 <__mingw_enum_import_library_names>:
   140008410:	4c 8b 1d a9 20 00 00 	mov    0x20a9(%rip),%r11        # 14000a4c0 <.refptr.__ImageBase>
   140008417:	45 31 c9             	xor    %r9d,%r9d
   14000841a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140008420:	75 10                	jne    140008432 <__mingw_enum_import_library_names+0x22>
   140008422:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140008426:	4d 01 d8             	add    %r11,%r8
   140008429:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140008430:	74 0e                	je     140008440 <__mingw_enum_import_library_names+0x30>
   140008432:	4c 89 c8             	mov    %r9,%rax
   140008435:	c3                   	ret
   140008436:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000843d:	00 00 00 
   140008440:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140008447:	75 e9                	jne    140008432 <__mingw_enum_import_library_names+0x22>
   140008449:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140008450:	85 c0                	test   %eax,%eax
   140008452:	74 de                	je     140008432 <__mingw_enum_import_library_names+0x22>
   140008454:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140008459:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   14000845e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140008463:	66 45 85 d2          	test   %r10w,%r10w
   140008467:	74 c9                	je     140008432 <__mingw_enum_import_library_names+0x22>
   140008469:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000846d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140008471:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140008476:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000847d:	00 00 00 
   140008480:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140008484:	4d 89 c8             	mov    %r9,%r8
   140008487:	4c 39 c8             	cmp    %r9,%rax
   14000848a:	72 09                	jb     140008495 <__mingw_enum_import_library_names+0x85>
   14000848c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140008490:	4c 39 c0             	cmp    %r8,%rax
   140008493:	72 13                	jb     1400084a8 <__mingw_enum_import_library_names+0x98>
   140008495:	48 83 c2 28          	add    $0x28,%rdx
   140008499:	4c 39 d2             	cmp    %r10,%rdx
   14000849c:	75 e2                	jne    140008480 <__mingw_enum_import_library_names+0x70>
   14000849e:	45 31 c9             	xor    %r9d,%r9d
   1400084a1:	4c 89 c8             	mov    %r9,%rax
   1400084a4:	c3                   	ret
   1400084a5:	0f 1f 00             	nopl   (%rax)
   1400084a8:	4c 01 d8             	add    %r11,%rax
   1400084ab:	eb 0a                	jmp    1400084b7 <__mingw_enum_import_library_names+0xa7>
   1400084ad:	0f 1f 00             	nopl   (%rax)
   1400084b0:	83 e9 01             	sub    $0x1,%ecx
   1400084b3:	48 83 c0 14          	add    $0x14,%rax
   1400084b7:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400084bb:	45 85 c0             	test   %r8d,%r8d
   1400084be:	75 07                	jne    1400084c7 <__mingw_enum_import_library_names+0xb7>
   1400084c0:	8b 50 0c             	mov    0xc(%rax),%edx
   1400084c3:	85 d2                	test   %edx,%edx
   1400084c5:	74 d7                	je     14000849e <__mingw_enum_import_library_names+0x8e>
   1400084c7:	85 c9                	test   %ecx,%ecx
   1400084c9:	7f e5                	jg     1400084b0 <__mingw_enum_import_library_names+0xa0>
   1400084cb:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400084cf:	4d 01 d9             	add    %r11,%r9
   1400084d2:	4c 89 c8             	mov    %r9,%rax
   1400084d5:	c3                   	ret
   1400084d6:	90                   	nop
   1400084d7:	90                   	nop
   1400084d8:	90                   	nop
   1400084d9:	90                   	nop
   1400084da:	90                   	nop
   1400084db:	90                   	nop
   1400084dc:	90                   	nop
   1400084dd:	90                   	nop
   1400084de:	90                   	nop
   1400084df:	90                   	nop

00000001400084e0 <_Unwind_Resume>:
   1400084e0:	ff 25 06 5e 00 00    	jmp    *0x5e06(%rip)        # 14000e2ec <__IAT_start__>
   1400084e6:	90                   	nop
   1400084e7:	90                   	nop
   1400084e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400084ef:	00 

00000001400084f0 <___chkstk_ms>:
   1400084f0:	51                   	push   %rcx
   1400084f1:	50                   	push   %rax
   1400084f2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400084f8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400084fd:	72 19                	jb     140008518 <___chkstk_ms+0x28>
   1400084ff:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140008506:	48 83 09 00          	orq    $0x0,(%rcx)
   14000850a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140008510:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140008516:	77 e7                	ja     1400084ff <___chkstk_ms+0xf>
   140008518:	48 29 c1             	sub    %rax,%rcx
   14000851b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000851f:	58                   	pop    %rax
   140008520:	59                   	pop    %rcx
   140008521:	c3                   	ret
   140008522:	90                   	nop
   140008523:	90                   	nop
   140008524:	90                   	nop
   140008525:	90                   	nop
   140008526:	90                   	nop
   140008527:	90                   	nop
   140008528:	90                   	nop
   140008529:	90                   	nop
   14000852a:	90                   	nop
   14000852b:	90                   	nop
   14000852c:	90                   	nop
   14000852d:	90                   	nop
   14000852e:	90                   	nop
   14000852f:	90                   	nop

0000000140008530 <__p__fmode>:
   140008530:	48 8b 05 e9 1f 00 00 	mov    0x1fe9(%rip),%rax        # 14000a520 <.refptr.__imp__fmode>
   140008537:	48 8b 00             	mov    (%rax),%rax
   14000853a:	c3                   	ret
   14000853b:	90                   	nop
   14000853c:	90                   	nop
   14000853d:	90                   	nop
   14000853e:	90                   	nop
   14000853f:	90                   	nop

0000000140008540 <__p__commode>:
   140008540:	48 8b 05 c9 1f 00 00 	mov    0x1fc9(%rip),%rax        # 14000a510 <.refptr.__imp__commode>
   140008547:	48 8b 00             	mov    (%rax),%rax
   14000854a:	c3                   	ret
   14000854b:	90                   	nop
   14000854c:	90                   	nop
   14000854d:	90                   	nop
   14000854e:	90                   	nop
   14000854f:	90                   	nop

0000000140008550 <_get_invalid_parameter_handler>:
   140008550:	48 8b 05 59 4c 00 00 	mov    0x4c59(%rip),%rax        # 14000d1b0 <handler>
   140008557:	c3                   	ret
   140008558:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000855f:	00 

0000000140008560 <_set_invalid_parameter_handler>:
   140008560:	48 89 c8             	mov    %rcx,%rax
   140008563:	48 87 05 46 4c 00 00 	xchg   %rax,0x4c46(%rip)        # 14000d1b0 <handler>
   14000856a:	c3                   	ret
   14000856b:	90                   	nop
   14000856c:	90                   	nop
   14000856d:	90                   	nop
   14000856e:	90                   	nop
   14000856f:	90                   	nop

0000000140008570 <__acrt_iob_func>:
   140008570:	53                   	push   %rbx
   140008571:	48 83 ec 20          	sub    $0x20,%rsp
   140008575:	89 cb                	mov    %ecx,%ebx
   140008577:	e8 24 00 00 00       	call   1400085a0 <__iob_func>
   14000857c:	89 d9                	mov    %ebx,%ecx
   14000857e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140008582:	48 c1 e2 04          	shl    $0x4,%rdx
   140008586:	48 01 d0             	add    %rdx,%rax
   140008589:	48 83 c4 20          	add    $0x20,%rsp
   14000858d:	5b                   	pop    %rbx
   14000858e:	c3                   	ret
   14000858f:	90                   	nop

0000000140008590 <__C_specific_handler>:
   140008590:	ff 25 be 5d 00 00    	jmp    *0x5dbe(%rip)        # 14000e354 <__imp___C_specific_handler>
   140008596:	90                   	nop
   140008597:	90                   	nop

0000000140008598 <__getmainargs>:
   140008598:	ff 25 be 5d 00 00    	jmp    *0x5dbe(%rip)        # 14000e35c <__imp___getmainargs>
   14000859e:	90                   	nop
   14000859f:	90                   	nop

00000001400085a0 <__iob_func>:
   1400085a0:	ff 25 c6 5d 00 00    	jmp    *0x5dc6(%rip)        # 14000e36c <__imp___iob_func>
   1400085a6:	90                   	nop
   1400085a7:	90                   	nop

00000001400085a8 <__set_app_type>:
   1400085a8:	ff 25 c6 5d 00 00    	jmp    *0x5dc6(%rip)        # 14000e374 <__imp___set_app_type>
   1400085ae:	90                   	nop
   1400085af:	90                   	nop

00000001400085b0 <__setusermatherr>:
   1400085b0:	ff 25 c6 5d 00 00    	jmp    *0x5dc6(%rip)        # 14000e37c <__imp___setusermatherr>
   1400085b6:	90                   	nop
   1400085b7:	90                   	nop

00000001400085b8 <_amsg_exit>:
   1400085b8:	ff 25 c6 5d 00 00    	jmp    *0x5dc6(%rip)        # 14000e384 <__imp__amsg_exit>
   1400085be:	90                   	nop
   1400085bf:	90                   	nop

00000001400085c0 <_cexit>:
   1400085c0:	ff 25 c6 5d 00 00    	jmp    *0x5dc6(%rip)        # 14000e38c <__imp__cexit>
   1400085c6:	90                   	nop
   1400085c7:	90                   	nop

00000001400085c8 <_initterm>:
   1400085c8:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3a4 <__imp__initterm>
   1400085ce:	90                   	nop
   1400085cf:	90                   	nop

00000001400085d0 <_onexit>:
   1400085d0:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3ac <__imp__onexit>
   1400085d6:	90                   	nop
   1400085d7:	90                   	nop

00000001400085d8 <abort>:
   1400085d8:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3b4 <__imp_abort>
   1400085de:	90                   	nop
   1400085df:	90                   	nop

00000001400085e0 <calloc>:
   1400085e0:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3bc <__imp_calloc>
   1400085e6:	90                   	nop
   1400085e7:	90                   	nop

00000001400085e8 <exit>:
   1400085e8:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3c4 <__imp_exit>
   1400085ee:	90                   	nop
   1400085ef:	90                   	nop

00000001400085f0 <fprintf>:
   1400085f0:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3cc <__imp_fprintf>
   1400085f6:	90                   	nop
   1400085f7:	90                   	nop

00000001400085f8 <free>:
   1400085f8:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3d4 <__imp_free>
   1400085fe:	90                   	nop
   1400085ff:	90                   	nop

0000000140008600 <fwrite>:
   140008600:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3dc <__imp_fwrite>
   140008606:	90                   	nop
   140008607:	90                   	nop

0000000140008608 <malloc>:
   140008608:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3e4 <__imp_malloc>
   14000860e:	90                   	nop
   14000860f:	90                   	nop

0000000140008610 <memcpy>:
   140008610:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3ec <__imp_memcpy>
   140008616:	90                   	nop
   140008617:	90                   	nop

0000000140008618 <signal>:
   140008618:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3f4 <__imp_signal>
   14000861e:	90                   	nop
   14000861f:	90                   	nop

0000000140008620 <strlen>:
   140008620:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e3fc <__imp_strlen>
   140008626:	90                   	nop
   140008627:	90                   	nop

0000000140008628 <strncmp>:
   140008628:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e404 <__imp_strncmp>
   14000862e:	90                   	nop
   14000862f:	90                   	nop

0000000140008630 <vfprintf>:
   140008630:	ff 25 d6 5d 00 00    	jmp    *0x5dd6(%rip)        # 14000e40c <__imp_vfprintf>
   140008636:	90                   	nop
   140008637:	90                   	nop
   140008638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000863f:	00 

0000000140008640 <VirtualQuery>:
   140008640:	ff 25 fe 5c 00 00    	jmp    *0x5cfe(%rip)        # 14000e344 <__imp_VirtualQuery>
   140008646:	90                   	nop
   140008647:	90                   	nop

0000000140008648 <VirtualProtect>:
   140008648:	ff 25 ee 5c 00 00    	jmp    *0x5cee(%rip)        # 14000e33c <__imp_VirtualProtect>
   14000864e:	90                   	nop
   14000864f:	90                   	nop

0000000140008650 <TlsGetValue>:
   140008650:	ff 25 de 5c 00 00    	jmp    *0x5cde(%rip)        # 14000e334 <__imp_TlsGetValue>
   140008656:	90                   	nop
   140008657:	90                   	nop

0000000140008658 <Sleep>:
   140008658:	ff 25 ce 5c 00 00    	jmp    *0x5cce(%rip)        # 14000e32c <__imp_Sleep>
   14000865e:	90                   	nop
   14000865f:	90                   	nop

0000000140008660 <SetUnhandledExceptionFilter>:
   140008660:	ff 25 be 5c 00 00    	jmp    *0x5cbe(%rip)        # 14000e324 <__imp_SetUnhandledExceptionFilter>
   140008666:	90                   	nop
   140008667:	90                   	nop

0000000140008668 <LeaveCriticalSection>:
   140008668:	ff 25 ae 5c 00 00    	jmp    *0x5cae(%rip)        # 14000e31c <__imp_LeaveCriticalSection>
   14000866e:	90                   	nop
   14000866f:	90                   	nop

0000000140008670 <InitializeCriticalSection>:
   140008670:	ff 25 9e 5c 00 00    	jmp    *0x5c9e(%rip)        # 14000e314 <__imp_InitializeCriticalSection>
   140008676:	90                   	nop
   140008677:	90                   	nop

0000000140008678 <GetLastError>:
   140008678:	ff 25 8e 5c 00 00    	jmp    *0x5c8e(%rip)        # 14000e30c <__imp_GetLastError>
   14000867e:	90                   	nop
   14000867f:	90                   	nop

0000000140008680 <EnterCriticalSection>:
   140008680:	ff 25 7e 5c 00 00    	jmp    *0x5c7e(%rip)        # 14000e304 <__imp_EnterCriticalSection>
   140008686:	90                   	nop
   140008687:	90                   	nop

0000000140008688 <DeleteCriticalSection>:
   140008688:	ff 25 6e 5c 00 00    	jmp    *0x5c6e(%rip)        # 14000e2fc <__imp_DeleteCriticalSection>
   14000868e:	90                   	nop
   14000868f:	90                   	nop

0000000140008690 <_ZNKSt5ctypeIcE8do_widenEc>:
   140008690:	89 d0                	mov    %edx,%eax
   140008692:	c3                   	ret
   140008693:	90                   	nop
   140008694:	90                   	nop
   140008695:	90                   	nop
   140008696:	90                   	nop
   140008697:	90                   	nop
   140008698:	90                   	nop
   140008699:	90                   	nop
   14000869a:	90                   	nop
   14000869b:	90                   	nop
   14000869c:	90                   	nop
   14000869d:	90                   	nop
   14000869e:	90                   	nop
   14000869f:	90                   	nop

00000001400086a0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>:
   1400086a0:	41 57                	push   %r15
   1400086a2:	41 56                	push   %r14
   1400086a4:	41 55                	push   %r13
   1400086a6:	41 54                	push   %r12
   1400086a8:	55                   	push   %rbp
   1400086a9:	57                   	push   %rdi
   1400086aa:	56                   	push   %rsi
   1400086ab:	53                   	push   %rbx
   1400086ac:	48 83 ec 38          	sub    $0x38,%rsp
   1400086b0:	49 89 cc             	mov    %rcx,%r12
   1400086b3:	48 89 d3             	mov    %rdx,%rbx
   1400086b6:	48 85 d2             	test   %rdx,%rdx
   1400086b9:	74 64                	je     14000871f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   1400086bb:	48 b8 55 55 55 55 55 	movabs $0x555555555555555,%rax
   1400086c2:	55 55 05 
   1400086c5:	48 8b 79 08          	mov    0x8(%rcx),%rdi
   1400086c9:	48 89 fe             	mov    %rdi,%rsi
   1400086cc:	48 2b 31             	sub    (%rcx),%rsi
   1400086cf:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
   1400086d6:	aa aa aa 
   1400086d9:	49 89 f5             	mov    %rsi,%r13
   1400086dc:	49 c1 fd 03          	sar    $0x3,%r13
   1400086e0:	4c 0f af e9          	imul   %rcx,%r13
   1400086e4:	4c 29 e8             	sub    %r13,%rax
   1400086e7:	48 89 c2             	mov    %rax,%rdx
   1400086ea:	49 8b 44 24 10       	mov    0x10(%r12),%rax
   1400086ef:	48 29 f8             	sub    %rdi,%rax
   1400086f2:	48 c1 f8 03          	sar    $0x3,%rax
   1400086f6:	48 0f af c1          	imul   %rcx,%rax
   1400086fa:	48 39 d8             	cmp    %rbx,%rax
   1400086fd:	72 31                	jb     140008730 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x90>
   1400086ff:	48 89 fe             	mov    %rdi,%rsi
   140008702:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140008708:	48 89 f1             	mov    %rsi,%rcx
   14000870b:	e8 90 97 ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140008710:	48 83 c6 18          	add    $0x18,%rsi
   140008714:	48 83 eb 01          	sub    $0x1,%rbx
   140008718:	75 ee                	jne    140008708 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x68>
   14000871a:	49 89 74 24 08       	mov    %rsi,0x8(%r12)
   14000871f:	48 83 c4 38          	add    $0x38,%rsp
   140008723:	5b                   	pop    %rbx
   140008724:	5e                   	pop    %rsi
   140008725:	5f                   	pop    %rdi
   140008726:	5d                   	pop    %rbp
   140008727:	41 5c                	pop    %r12
   140008729:	41 5d                	pop    %r13
   14000872b:	41 5e                	pop    %r14
   14000872d:	41 5f                	pop    %r15
   14000872f:	c3                   	ret
   140008730:	48 39 da             	cmp    %rbx,%rdx
   140008733:	0f 82 8d 01 00 00    	jb     1400088c6 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x226>
   140008739:	49 39 dd             	cmp    %rbx,%r13
   14000873c:	0f 82 3e 01 00 00    	jb     140008880 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1e0>
   140008742:	48 ba f8 ff ff ff ff 	movabs $0x7ffffffffffffff8,%rdx
   140008749:	ff ff 7f 
   14000874c:	4b 8d 44 2d 00       	lea    0x0(%r13,%r13,1),%rax
   140008751:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140008756:	4c 39 e8             	cmp    %r13,%rax
   140008759:	0f 83 48 01 00 00    	jae    1400088a7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x207>
   14000875f:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140008764:	48 89 df             	mov    %rbx,%rdi
   140008767:	e8 2c ec ff ff       	call   140007398 <_Znwy>
   14000876c:	49 89 c6             	mov    %rax,%r14
   14000876f:	48 8d 04 30          	lea    (%rax,%rsi,1),%rax
   140008773:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140008778:	48 89 c6             	mov    %rax,%rsi
   14000877b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140008780:	48 89 f1             	mov    %rsi,%rcx
   140008783:	e8 18 97 ff ff       	call   140001ea0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140008788:	48 83 c6 18          	add    $0x18,%rsi
   14000878c:	48 83 ef 01          	sub    $0x1,%rdi
   140008790:	75 ee                	jne    140008780 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xe0>
   140008792:	4d 8b 7c 24 08       	mov    0x8(%r12),%r15
   140008797:	49 8b 34 24          	mov    (%r12),%rsi
   14000879b:	4c 89 f5             	mov    %r14,%rbp
   14000879e:	49 39 f7             	cmp    %rsi,%r15
   1400087a1:	0f 84 9b 00 00 00    	je     140008842 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   1400087a7:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400087ac:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   1400087b3:	00 
   1400087b4:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400087b8:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   1400087bc:	48 8b 3e             	mov    (%rsi),%rdi
   1400087bf:	48 39 fe             	cmp    %rdi,%rsi
   1400087c2:	74 2d                	je     1400087f1 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x151>
   1400087c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400087c8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400087cd:	e8 c6 eb ff ff       	call   140007398 <_Znwy>
   1400087d2:	48 89 c1             	mov    %rax,%rcx
   1400087d5:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   1400087d9:	48 89 ea             	mov    %rbp,%rdx
   1400087dc:	88 41 10             	mov    %al,0x10(%rcx)
   1400087df:	e8 14 ec ff ff       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400087e4:	48 8b 3f             	mov    (%rdi),%rdi
   1400087e7:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   1400087ec:	48 39 fe             	cmp    %rdi,%rsi
   1400087ef:	75 d7                	jne    1400087c8 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x128>
   1400087f1:	48 83 c6 18          	add    $0x18,%rsi
   1400087f5:	48 83 c5 18          	add    $0x18,%rbp
   1400087f9:	49 39 f7             	cmp    %rsi,%r15
   1400087fc:	75 a9                	jne    1400087a7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x107>
   1400087fe:	49 8b 6c 24 08       	mov    0x8(%r12),%rbp
   140008803:	49 8b 34 24          	mov    (%r12),%rsi
   140008807:	48 39 f5             	cmp    %rsi,%rbp
   14000880a:	74 36                	je     140008842 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   14000880c:	0f 1f 40 00          	nopl   0x0(%rax)
   140008810:	48 8b 3e             	mov    (%rsi),%rdi
   140008813:	48 39 fe             	cmp    %rdi,%rsi
   140008816:	74 1d                	je     140008835 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x195>
   140008818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000881f:	00 
   140008820:	48 89 f9             	mov    %rdi,%rcx
   140008823:	48 8b 3f             	mov    (%rdi),%rdi
   140008826:	ba 18 00 00 00       	mov    $0x18,%edx
   14000882b:	e8 70 eb ff ff       	call   1400073a0 <_ZdlPvy>
   140008830:	48 39 fe             	cmp    %rdi,%rsi
   140008833:	75 eb                	jne    140008820 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x180>
   140008835:	48 83 c6 18          	add    $0x18,%rsi
   140008839:	48 39 f5             	cmp    %rsi,%rbp
   14000883c:	75 d2                	jne    140008810 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x170>
   14000883e:	49 8b 34 24          	mov    (%r12),%rsi
   140008842:	48 85 f6             	test   %rsi,%rsi
   140008845:	74 10                	je     140008857 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1b7>
   140008847:	49 8b 54 24 10       	mov    0x10(%r12),%rdx
   14000884c:	48 89 f1             	mov    %rsi,%rcx
   14000884f:	48 29 f2             	sub    %rsi,%rdx
   140008852:	e8 49 eb ff ff       	call   1400073a0 <_ZdlPvy>
   140008857:	4c 01 eb             	add    %r13,%rbx
   14000885a:	4d 89 34 24          	mov    %r14,(%r12)
   14000885e:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   140008862:	49 8d 04 c6          	lea    (%r14,%rax,8),%rax
   140008866:	49 89 44 24 08       	mov    %rax,0x8(%r12)
   14000886b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   140008870:	49 01 c6             	add    %rax,%r14
   140008873:	4d 89 74 24 10       	mov    %r14,0x10(%r12)
   140008878:	e9 a2 fe ff ff       	jmp    14000871f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   14000887d:	0f 1f 00             	nopl   (%rax)
   140008880:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   140008887:	55 55 05 
   14000888a:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
   14000888e:	48 39 d0             	cmp    %rdx,%rax
   140008891:	48 0f 47 c2          	cmova  %rdx,%rax
   140008895:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   140008899:	48 c1 e0 03          	shl    $0x3,%rax
   14000889d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400088a2:	e9 b8 fe ff ff       	jmp    14000875f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   1400088a7:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   1400088ae:	55 55 05 
   1400088b1:	48 39 d0             	cmp    %rdx,%rax
   1400088b4:	48 0f 47 c2          	cmova  %rdx,%rax
   1400088b8:	48 6b c0 18          	imul   $0x18,%rax,%rax
   1400088bc:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400088c1:	e9 99 fe ff ff       	jmp    14000875f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   1400088c6:	48 8d 0d 7b 17 00 00 	lea    0x177b(%rip),%rcx        # 14000a048 <.rdata+0x18>
   1400088cd:	e8 de ea ff ff       	call   1400073b0 <_ZSt20__throw_length_errorPKc>
   1400088d2:	48 89 c1             	mov    %rax,%rcx
   1400088d5:	e8 ae ea ff ff       	call   140007388 <__cxa_begin_catch>
   1400088da:	48 39 fe             	cmp    %rdi,%rsi
   1400088dd:	0f 84 af 00 00 00    	je     140008992 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2f2>
   1400088e3:	48 8b 0f             	mov    (%rdi),%rcx
   1400088e6:	48 39 cf             	cmp    %rcx,%rdi
   1400088e9:	0f 84 e2 00 00 00    	je     1400089d1 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x331>
   1400088ef:	48 8b 19             	mov    (%rcx),%rbx
   1400088f2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400088f7:	e8 a4 ea ff ff       	call   1400073a0 <_ZdlPvy>
   1400088fc:	48 89 d9             	mov    %rbx,%rcx
   1400088ff:	eb e5                	jmp    1400088e6 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x246>
   140008901:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   140008905:	48 89 c6             	mov    %rax,%rsi
   140008908:	48 39 cd             	cmp    %rcx,%rbp
   14000890b:	0f 84 96 00 00 00    	je     1400089a7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x307>
   140008911:	48 8b 39             	mov    (%rcx),%rdi
   140008914:	ba 18 00 00 00       	mov    $0x18,%edx
   140008919:	e8 82 ea ff ff       	call   1400073a0 <_ZdlPvy>
   14000891e:	48 89 f9             	mov    %rdi,%rcx
   140008921:	eb e5                	jmp    140008908 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x268>
   140008923:	48 89 c1             	mov    %rax,%rcx
   140008926:	e8 5d ea ff ff       	call   140007388 <__cxa_begin_catch>
   14000892b:	48 39 74 24 28       	cmp    %rsi,0x28(%rsp)
   140008930:	74 21                	je     140008953 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2b3>
   140008932:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008937:	48 8b 08             	mov    (%rax),%rcx
   14000893a:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   14000893f:	74 49                	je     14000898a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2ea>
   140008941:	48 8b 19             	mov    (%rcx),%rbx
   140008944:	ba 18 00 00 00       	mov    $0x18,%edx
   140008949:	e8 52 ea ff ff       	call   1400073a0 <_ZdlPvy>
   14000894e:	48 89 d9             	mov    %rbx,%rcx
   140008951:	eb e7                	jmp    14000893a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x29a>
   140008953:	e8 18 ea ff ff       	call   140007370 <__cxa_rethrow>
   140008958:	48 89 c3             	mov    %rax,%rbx
   14000895b:	e8 20 ea ff ff       	call   140007380 <__cxa_end_catch>
   140008960:	48 89 d9             	mov    %rbx,%rcx
   140008963:	e8 20 ea ff ff       	call   140007388 <__cxa_begin_catch>
   140008968:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   14000896d:	4c 89 f1             	mov    %r14,%rcx
   140008970:	e8 2b ea ff ff       	call   1400073a0 <_ZdlPvy>
   140008975:	e8 f6 e9 ff ff       	call   140007370 <__cxa_rethrow>
   14000897a:	48 89 c3             	mov    %rax,%rbx
   14000897d:	e8 fe e9 ff ff       	call   140007380 <__cxa_end_catch>
   140008982:	48 89 d9             	mov    %rbx,%rcx
   140008985:	e8 56 fb ff ff       	call   1400084e0 <_Unwind_Resume>
   14000898a:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   140008990:	eb 99                	jmp    14000892b <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x28b>
   140008992:	e8 d9 e9 ff ff       	call   140007370 <__cxa_rethrow>
   140008997:	48 89 c3             	mov    %rax,%rbx
   14000899a:	e8 e1 e9 ff ff       	call   140007380 <__cxa_end_catch>
   14000899f:	48 89 d9             	mov    %rbx,%rcx
   1400089a2:	e8 39 fb ff ff       	call   1400084e0 <_Unwind_Resume>
   1400089a7:	48 89 f1             	mov    %rsi,%rcx
   1400089aa:	4c 89 f6             	mov    %r14,%rsi
   1400089ad:	e8 d6 e9 ff ff       	call   140007388 <__cxa_begin_catch>
   1400089b2:	48 39 f5             	cmp    %rsi,%rbp
   1400089b5:	74 23                	je     1400089da <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x33a>
   1400089b7:	48 8b 0e             	mov    (%rsi),%rcx
   1400089ba:	48 39 ce             	cmp    %rcx,%rsi
   1400089bd:	74 6b                	je     140008a2a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x38a>
   1400089bf:	48 8b 39             	mov    (%rcx),%rdi
   1400089c2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400089c7:	e8 d4 e9 ff ff       	call   1400073a0 <_ZdlPvy>
   1400089cc:	48 89 f9             	mov    %rdi,%rcx
   1400089cf:	eb e9                	jmp    1400089ba <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x31a>
   1400089d1:	48 83 c7 18          	add    $0x18,%rdi
   1400089d5:	e9 00 ff ff ff       	jmp    1400088da <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x23a>
   1400089da:	e8 91 e9 ff ff       	call   140007370 <__cxa_rethrow>
   1400089df:	48 89 c6             	mov    %rax,%rsi
   1400089e2:	48 6b db 18          	imul   $0x18,%rbx,%rbx
   1400089e6:	e8 95 e9 ff ff       	call   140007380 <__cxa_end_catch>
   1400089eb:	48 89 f1             	mov    %rsi,%rcx
   1400089ee:	e8 95 e9 ff ff       	call   140007388 <__cxa_begin_catch>
   1400089f3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   1400089f8:	48 01 c3             	add    %rax,%rbx
   1400089fb:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008a00:	48 39 c3             	cmp    %rax,%rbx
   140008a03:	0f 84 5f ff ff ff    	je     140008968 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2c8>
   140008a09:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008a0e:	48 8b 08             	mov    (%rax),%rcx
   140008a11:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   140008a16:	74 18                	je     140008a30 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x390>
   140008a18:	48 8b 31             	mov    (%rcx),%rsi
   140008a1b:	ba 18 00 00 00       	mov    $0x18,%edx
   140008a20:	e8 7b e9 ff ff       	call   1400073a0 <_ZdlPvy>
   140008a25:	48 89 f1             	mov    %rsi,%rcx
   140008a28:	eb e7                	jmp    140008a11 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x371>
   140008a2a:	48 83 c6 18          	add    $0x18,%rsi
   140008a2e:	eb 82                	jmp    1400089b2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x312>
   140008a30:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   140008a36:	eb c3                	jmp    1400089fb <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x35b>
   140008a38:	90                   	nop
   140008a39:	90                   	nop
   140008a3a:	90                   	nop
   140008a3b:	90                   	nop
   140008a3c:	90                   	nop
   140008a3d:	90                   	nop
   140008a3e:	90                   	nop
   140008a3f:	90                   	nop

0000000140008a40 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy>:
   140008a40:	57                   	push   %rdi
   140008a41:	56                   	push   %rsi
   140008a42:	53                   	push   %rbx
   140008a43:	48 83 ec 20          	sub    $0x20,%rsp
   140008a47:	31 f6                	xor    %esi,%esi
   140008a49:	48 89 cb             	mov    %rcx,%rbx
   140008a4c:	48 89 d7             	mov    %rdx,%rdi
   140008a4f:	48 85 d2             	test   %rdx,%rdx
   140008a52:	74 2b                	je     140008a7f <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x3f>
   140008a54:	0f 1f 40 00          	nopl   0x0(%rax)
   140008a58:	b9 18 00 00 00       	mov    $0x18,%ecx
   140008a5d:	e8 36 e9 ff ff       	call   140007398 <_Znwy>
   140008a62:	c6 40 10 00          	movb   $0x0,0x10(%rax)
   140008a66:	48 89 c1             	mov    %rax,%rcx
   140008a69:	48 89 da             	mov    %rbx,%rdx
   140008a6c:	48 83 c6 01          	add    $0x1,%rsi
   140008a70:	e8 83 e9 ff ff       	call   1400073f8 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140008a75:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   140008a7a:	48 39 f7             	cmp    %rsi,%rdi
   140008a7d:	75 d9                	jne    140008a58 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x18>
   140008a7f:	48 83 c4 20          	add    $0x20,%rsp
   140008a83:	5b                   	pop    %rbx
   140008a84:	5e                   	pop    %rsi
   140008a85:	5f                   	pop    %rdi
   140008a86:	c3                   	ret
   140008a87:	48 89 c1             	mov    %rax,%rcx
   140008a8a:	e8 f9 e8 ff ff       	call   140007388 <__cxa_begin_catch>
   140008a8f:	48 85 f6             	test   %rsi,%rsi
   140008a92:	74 24                	je     140008ab8 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x78>
   140008a94:	48 83 6b 10 01       	subq   $0x1,0x10(%rbx)
   140008a99:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
   140008a9d:	48 83 ee 01          	sub    $0x1,%rsi
   140008aa1:	48 89 f9             	mov    %rdi,%rcx
   140008aa4:	e8 47 e9 ff ff       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140008aa9:	ba 18 00 00 00       	mov    $0x18,%edx
   140008aae:	48 89 f9             	mov    %rdi,%rcx
   140008ab1:	e8 ea e8 ff ff       	call   1400073a0 <_ZdlPvy>
   140008ab6:	eb d7                	jmp    140008a8f <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x4f>
   140008ab8:	e8 b3 e8 ff ff       	call   140007370 <__cxa_rethrow>
   140008abd:	48 89 c3             	mov    %rax,%rbx
   140008ac0:	e8 bb e8 ff ff       	call   140007380 <__cxa_end_catch>
   140008ac5:	48 89 d9             	mov    %rbx,%rcx
   140008ac8:	e8 13 fa ff ff       	call   1400084e0 <_Unwind_Resume>
   140008acd:	90                   	nop
   140008ace:	90                   	nop
   140008acf:	90                   	nop

0000000140008ad0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>:
   140008ad0:	57                   	push   %rdi
   140008ad1:	56                   	push   %rsi
   140008ad2:	53                   	push   %rbx
   140008ad3:	48 83 ec 20          	sub    $0x20,%rsp
   140008ad7:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140008adb:	48 89 ce             	mov    %rcx,%rsi
   140008ade:	48 39 c2             	cmp    %rax,%rdx
   140008ae1:	73 65                	jae    140008b48 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x78>
   140008ae3:	48 89 c1             	mov    %rax,%rcx
   140008ae6:	48 d1 e9             	shr    %rcx
   140008ae9:	48 39 d1             	cmp    %rdx,%rcx
   140008aec:	72 72                	jb     140008b60 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x90>
   140008aee:	48 8b 1e             	mov    (%rsi),%rbx
   140008af1:	48 85 d2             	test   %rdx,%rdx
   140008af4:	74 13                	je     140008b09 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140008af6:	48 83 ea 01          	sub    $0x1,%rdx
   140008afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140008b00:	48 8b 1b             	mov    (%rbx),%rbx
   140008b03:	48 83 ea 01          	sub    $0x1,%rdx
   140008b07:	73 f7                	jae    140008b00 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x30>
   140008b09:	48 39 de             	cmp    %rbx,%rsi
   140008b0c:	75 09                	jne    140008b17 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x47>
   140008b0e:	eb 2c                	jmp    140008b3c <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x6c>
   140008b10:	48 8b 46 10          	mov    0x10(%rsi),%rax
   140008b14:	48 89 fb             	mov    %rdi,%rbx
   140008b17:	48 83 e8 01          	sub    $0x1,%rax
   140008b1b:	48 8b 3b             	mov    (%rbx),%rdi
   140008b1e:	48 89 d9             	mov    %rbx,%rcx
   140008b21:	48 89 46 10          	mov    %rax,0x10(%rsi)
   140008b25:	e8 c6 e8 ff ff       	call   1400073f0 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140008b2a:	ba 18 00 00 00       	mov    $0x18,%edx
   140008b2f:	48 89 d9             	mov    %rbx,%rcx
   140008b32:	e8 69 e8 ff ff       	call   1400073a0 <_ZdlPvy>
   140008b37:	48 39 fe             	cmp    %rdi,%rsi
   140008b3a:	75 d4                	jne    140008b10 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x40>
   140008b3c:	48 83 c4 20          	add    $0x20,%rsp
   140008b40:	5b                   	pop    %rbx
   140008b41:	5e                   	pop    %rsi
   140008b42:	5f                   	pop    %rdi
   140008b43:	c3                   	ret
   140008b44:	0f 1f 40 00          	nopl   0x0(%rax)
   140008b48:	48 29 c2             	sub    %rax,%rdx
   140008b4b:	74 ef                	je     140008b3c <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x6c>
   140008b4d:	48 83 c4 20          	add    $0x20,%rsp
   140008b51:	5b                   	pop    %rbx
   140008b52:	5e                   	pop    %rsi
   140008b53:	5f                   	pop    %rdi
   140008b54:	e9 e7 fe ff ff       	jmp    140008a40 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy>
   140008b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008b60:	48 89 c1             	mov    %rax,%rcx
   140008b63:	48 89 f3             	mov    %rsi,%rbx
   140008b66:	48 29 d1             	sub    %rdx,%rcx
   140008b69:	48 89 ca             	mov    %rcx,%rdx
   140008b6c:	48 f7 d2             	not    %rdx
   140008b6f:	79 1f                	jns    140008b90 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xc0>
   140008b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008b78:	48 8b 1b             	mov    (%rbx),%rbx
   140008b7b:	48 83 ea 01          	sub    $0x1,%rdx
   140008b7f:	72 88                	jb     140008b09 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140008b81:	48 8b 1b             	mov    (%rbx),%rbx
   140008b84:	48 83 ea 01          	sub    $0x1,%rdx
   140008b88:	73 ee                	jae    140008b78 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xa8>
   140008b8a:	e9 7a ff ff ff       	jmp    140008b09 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140008b8f:	90                   	nop
   140008b90:	ba 01 00 00 00       	mov    $0x1,%edx
   140008b95:	48 29 ca             	sub    %rcx,%rdx
   140008b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140008b9f:	00 
   140008ba0:	48 83 c2 01          	add    $0x1,%rdx
   140008ba4:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   140008ba8:	48 83 fa 01          	cmp    $0x1,%rdx
   140008bac:	75 f2                	jne    140008ba0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xd0>
   140008bae:	e9 56 ff ff ff       	jmp    140008b09 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140008bb3:	90                   	nop
   140008bb4:	90                   	nop
   140008bb5:	90                   	nop
   140008bb6:	90                   	nop
   140008bb7:	90                   	nop
   140008bb8:	90                   	nop
   140008bb9:	90                   	nop
   140008bba:	90                   	nop
   140008bbb:	90                   	nop
   140008bbc:	90                   	nop
   140008bbd:	90                   	nop
   140008bbe:	90                   	nop
   140008bbf:	90                   	nop

0000000140008bc0 <_GLOBAL__sub_I__ZN10Arithmetic10carry_flagE>:
   140008bc0:	48 83 ec 28          	sub    $0x28,%rsp
   140008bc4:	48 8d 0d 66 44 00 00 	lea    0x4466(%rip),%rcx        # 14000d031 <_ZStL8__ioinit>
   140008bcb:	e8 18 e8 ff ff       	call   1400073e8 <_ZNSt8ios_base4InitC1Ev>
   140008bd0:	48 8d 0d 79 88 ff ff 	lea    -0x7787(%rip),%rcx        # 140001450 <__tcf_0>
   140008bd7:	48 83 c4 28          	add    $0x28,%rsp
   140008bdb:	e9 30 88 ff ff       	jmp    140001410 <atexit>

0000000140008be0 <_GLOBAL__sub_I__ZN4ByteC2Ey>:
   140008be0:	48 83 ec 28          	sub    $0x28,%rsp
   140008be4:	48 8d 0d 55 44 00 00 	lea    0x4455(%rip),%rcx        # 14000d040 <_ZStL8__ioinit>
   140008beb:	e8 f8 e7 ff ff       	call   1400073e8 <_ZNSt8ios_base4InitC1Ev>
   140008bf0:	48 8d 0d 79 8a ff ff 	lea    -0x7587(%rip),%rcx        # 140001670 <__tcf_0>
   140008bf7:	48 83 c4 28          	add    $0x28,%rsp
   140008bfb:	e9 10 88 ff ff       	jmp    140001410 <atexit>

0000000140008c00 <main>:
   140008c00:	56                   	push   %rsi
   140008c01:	53                   	push   %rbx
   140008c02:	48 83 ec 68          	sub    $0x68,%rsp
   140008c06:	e8 25 e9 ff ff       	call   140007530 <__main>
   140008c0b:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140008c10:	ba a0 86 01 00       	mov    $0x186a0,%edx
   140008c15:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140008c1a:	48 89 d9             	mov    %rbx,%rcx
   140008c1d:	e8 4e c7 ff ff       	call   140005370 <_ZN15SignedMagnitudeC1Ex>
   140008c22:	48 89 da             	mov    %rbx,%rdx
   140008c25:	48 89 f1             	mov    %rsi,%rcx
   140008c28:	e8 83 8c ff ff       	call   1400018b0 <_Z10fibbonacci15SignedMagnitude>
   140008c2d:	48 89 f1             	mov    %rsi,%rcx
   140008c30:	e8 cb c9 ff ff       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140008c35:	48 89 d9             	mov    %rbx,%rcx
   140008c38:	e8 c3 c9 ff ff       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140008c3d:	31 c0                	xor    %eax,%eax
   140008c3f:	48 83 c4 68          	add    $0x68,%rsp
   140008c43:	5b                   	pop    %rbx
   140008c44:	5e                   	pop    %rsi
   140008c45:	c3                   	ret
   140008c46:	48 89 c6             	mov    %rax,%rsi
   140008c49:	48 89 d9             	mov    %rbx,%rcx
   140008c4c:	e8 af c9 ff ff       	call   140005600 <_ZN15SignedMagnitudeD1Ev>
   140008c51:	48 89 f1             	mov    %rsi,%rcx
   140008c54:	e8 87 f8 ff ff       	call   1400084e0 <_Unwind_Resume>
   140008c59:	90                   	nop
   140008c5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140008c60 <_GLOBAL__sub_I__Z10fibbonacci15SignedMagnitude>:
   140008c60:	48 83 ec 28          	sub    $0x28,%rsp
   140008c64:	48 8d 0d e5 43 00 00 	lea    0x43e5(%rip),%rcx        # 14000d050 <_ZStL8__ioinit>
   140008c6b:	e8 78 e7 ff ff       	call   1400073e8 <_ZNSt8ios_base4InitC1Ev>
   140008c70:	48 8d 0d d9 8a ff ff 	lea    -0x7527(%rip),%rcx        # 140001750 <__tcf_0>
   140008c77:	48 83 c4 28          	add    $0x28,%rsp
   140008c7b:	e9 90 87 ff ff       	jmp    140001410 <atexit>

0000000140008c80 <_GLOBAL__sub_I__ZN13NaturalBinaryC2Ev>:
   140008c80:	48 83 ec 28          	sub    $0x28,%rsp
   140008c84:	48 8d 0d d5 43 00 00 	lea    0x43d5(%rip),%rcx        # 14000d060 <_ZStL8__ioinit>
   140008c8b:	e8 58 e7 ff ff       	call   1400073e8 <_ZNSt8ios_base4InitC1Ev>
   140008c90:	48 8d 0d a9 90 ff ff 	lea    -0x6f57(%rip),%rcx        # 140001d40 <__tcf_0>
   140008c97:	48 83 c4 28          	add    $0x28,%rsp
   140008c9b:	e9 70 87 ff ff       	jmp    140001410 <atexit>

0000000140008ca0 <_GLOBAL__sub_I__ZN15SignedMagnitudeC2Ex>:
   140008ca0:	48 83 ec 28          	sub    $0x28,%rsp
   140008ca4:	48 8d 0d c5 43 00 00 	lea    0x43c5(%rip),%rcx        # 14000d070 <_ZStL8__ioinit>
   140008cab:	e8 38 e7 ff ff       	call   1400073e8 <_ZNSt8ios_base4InitC1Ev>
   140008cb0:	48 8d 0d 59 c5 ff ff 	lea    -0x3aa7(%rip),%rcx        # 140005210 <__tcf_0>
   140008cb7:	48 83 c4 28          	add    $0x28,%rsp
   140008cbb:	e9 50 87 ff ff       	jmp    140001410 <atexit>

0000000140008cc0 <register_frame_ctor>:
   140008cc0:	e9 6b 87 ff ff       	jmp    140001430 <__gcc_register_frame>
   140008cc5:	90                   	nop
   140008cc6:	90                   	nop
   140008cc7:	90                   	nop
   140008cc8:	90                   	nop
   140008cc9:	90                   	nop
   140008cca:	90                   	nop
   140008ccb:	90                   	nop
   140008ccc:	90                   	nop
   140008ccd:	90                   	nop
   140008cce:	90                   	nop
   140008ccf:	90                   	nop

0000000140008cd0 <__CTOR_LIST__>:
   140008cd0:	ff                   	(bad)
   140008cd1:	ff                   	(bad)
   140008cd2:	ff                   	(bad)
   140008cd3:	ff                   	(bad)
   140008cd4:	ff                   	(bad)
   140008cd5:	ff                   	(bad)
   140008cd6:	ff                   	(bad)
   140008cd7:	ff                   	.byte 0xff

0000000140008cd8 <.ctors>:
   140008cd8:	c0 8b 00 40 01 00 00 	rorb   $0x0,0x14000(%rbx)
	...

0000000140008ce0 <.ctors>:
   140008ce0:	e0 8b                	loopne 140008c6d <_GLOBAL__sub_I__Z10fibbonacci15SignedMagnitude+0xd>
   140008ce2:	00 40 01             	add    %al,0x1(%rax)
   140008ce5:	00 00                	add    %al,(%rax)
	...

0000000140008ce8 <.ctors>:
   140008ce8:	60                   	(bad)
   140008ce9:	8c 00                	mov    %es,(%rax)
   140008ceb:	40 01 00             	rex add %eax,(%rax)
	...

0000000140008cf0 <.ctors>:
   140008cf0:	80 8c 00 40 01 00 00 	orb    $0x0,0x140(%rax,%rax,1)
   140008cf7:	00 

0000000140008cf8 <.ctors>:
   140008cf8:	a0                   	.byte 0xa0
   140008cf9:	8c 00                	mov    %es,(%rax)
   140008cfb:	40 01 00             	rex add %eax,(%rax)
	...

0000000140008d00 <.ctors.65535>:
   140008d00:	c0 8c 00 40 01 00 00 	rorb   $0x0,0x140(%rax,%rax,1)
   140008d07:	00 
	...

0000000140008d10 <__DTOR_LIST__>:
   140008d10:	ff                   	(bad)
   140008d11:	ff                   	(bad)
   140008d12:	ff                   	(bad)
   140008d13:	ff                   	(bad)
   140008d14:	ff                   	(bad)
   140008d15:	ff                   	(bad)
   140008d16:	ff                   	(bad)
   140008d17:	ff 00                	incl   (%rax)
   140008d19:	00 00                	add    %al,(%rax)
   140008d1b:	00 00                	add    %al,(%rax)
   140008d1d:	00 00                	add    %al,(%rax)
	...
