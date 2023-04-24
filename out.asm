
ak2-projekt.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 35 95 00 00 	mov    0x9535(%rip),%rax        # 14000a550 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 36 95 00 00 	mov    0x9536(%rip),%rax        # 14000a560 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 39 95 00 00 	mov    0x9539(%rip),%rax        # 14000a570 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 8c 94 00 00 	mov    0x948c(%rip),%rax        # 14000a4d0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 df 94 00 00 	mov    0x94df(%rip),%rax        # 14000a540 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 bf 00 00    	mov    %ecx,0xbfa5(%rip)        # 14000d00c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 61 6f 00 00       	call   140007fd8 <__set_app_type>
   140001077:	e8 e4 6e 00 00       	call   140007f60 <__p__fmode>
   14000107c:	48 8b 15 8d 95 00 00 	mov    0x958d(%rip),%rdx        # 14000a610 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 e4 6e 00 00       	call   140007f70 <__p__commode>
   14000108c:	48 8b 15 5d 95 00 00 	mov    0x955d(%rip),%rdx        # 14000a5f0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 e4 5e 00 00       	call   140006f80 <_setargv>
   14000109c:	48 8b 05 8d 93 00 00 	mov    0x938d(%rip),%rax        # 14000a430 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 1e 6f 00 00       	call   140007fd8 <__set_app_type>
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
   1400010f8:	48 8b 0d 31 95 00 00 	mov    0x9531(%rip),%rcx        # 14000a630 <.refptr._matherr>
   1400010ff:	e8 ec 65 00 00       	call   1400076f0 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 05 95 00 00 	mov    0x9505(%rip),%rax        # 14000a640 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 be 00 00 	lea    0xbed6(%rip),%r8        # 14000d018 <envp>
   140001142:	48 8d 15 d7 be 00 00 	lea    0xbed7(%rip),%rdx        # 14000d020 <argv>
   140001149:	48 8d 0d d8 be 00 00 	lea    0xbed8(%rip),%rcx        # 14000d028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac be 00 00    	mov    %eax,0xbeac(%rip)        # 14000d004 <startinfo>
   140001158:	48 8b 05 a1 94 00 00 	mov    0x94a1(%rip),%rax        # 14000a600 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b be 00 00 	lea    0xbe9b(%rip),%rax        # 14000d004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 55 6e 00 00       	call   140007fc8 <__getmainargs>
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
   14000118a:	48 8b 1d ff 93 00 00 	mov    0x93ff(%rip),%rbx        # 14000a590 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d ac d1 00 00 	mov    0xd1ac(%rip),%rbp        # 14000e344 <__imp_Sleep>
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
   1400011cd:	48 8b 35 cc 93 00 00 	mov    0x93cc(%rip),%rsi        # 14000a5a0 <.refptr.__native_startup_state>
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
   140001208:	48 8b 05 f1 92 00 00 	mov    0x92f1(%rip),%rax        # 14000a500 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 28 61 00 00       	call   140007350 <_pei386_runtime_relocator>
   140001228:	48 8b 0d f1 93 00 00 	mov    0x93f1(%rip),%rcx        # 14000a620 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 07 d1 00 00    	call   *0xd107(%rip)        # 14000e33c <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 44 93 00 00 	mov    0x9344(%rip),%rdx        # 14000a580 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 45 6d 00 00       	call   140007f90 <_set_invalid_parameter_handler>
   14000124b:	e8 10 5f 00 00       	call   140007160 <_fpreset>
   140001250:	8b 1d d2 bd 00 00    	mov    0xbdd2(%rip),%ebx        # 14000d028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 d0 6d 00 00       	call   140008038 <malloc>
   140001268:	4c 8b 25 b1 bd 00 00 	mov    0xbdb1(%rip),%r12        # 14000d020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 c7 6d 00 00       	call   140008050 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 a3 6d 00 00       	call   140008038 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 93 6d 00 00       	call   140008040 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d bd 00 00 	mov    %rbp,0xbd5d(%rip)        # 14000d020 <argv>
   1400012c3:	e8 98 5c 00 00       	call   140006f60 <__main>
   1400012c8:	48 8b 05 41 92 00 00 	mov    0x9241(%rip),%rax        # 14000a510 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 bd 00 00 	mov    0xbd42(%rip),%r8        # 14000d018 <envp>
   1400012d6:	8b 0d 4c bd 00 00    	mov    0xbd4c(%rip),%ecx        # 14000d028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 bd 00 00 	mov    0xbd37(%rip),%rdx        # 14000d020 <argv>
   1400012e9:	e8 42 73 00 00       	call   140008630 <main>
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
   140001320:	48 8b 35 79 92 00 00 	mov    0x9279(%rip),%rsi        # 14000a5a0 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 a7 6c 00 00       	call   140007fe8 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 6d 92 00 00 	mov    0x926d(%rip),%rdx        # 14000a5c0 <.refptr.__xc_z>
   140001353:	48 8b 0d 56 92 00 00 	mov    0x9256(%rip),%rcx        # 14000a5b0 <.refptr.__xc_a>
   14000135a:	e8 99 6c 00 00       	call   140007ff8 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 6b 6c 00 00       	call   140007ff0 <_cexit>
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
   1400013a0:	48 8b 15 39 92 00 00 	mov    0x9239(%rip),%rdx        # 14000a5e0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 22 92 00 00 	mov    0x9222(%rip),%rcx        # 14000a5d0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 3f 6c 00 00       	call   140007ff8 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 49 6c 00 00       	call   140008018 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 65 91 00 00 	mov    0x9165(%rip),%rax        # 14000a540 <.refptr.__mingw_app_type>
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
   1400013f4:	48 8b 05 45 91 00 00 	mov    0x9145(%rip),%rax        # 14000a540 <.refptr.__mingw_app_type>
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
   140001414:	e8 e7 6b 00 00       	call   140008000 <_onexit>
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
   140001457:	e9 a4 59 00 00       	jmp    140006e00 <_ZNSt8ios_base4InitD1Ev>
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
   14000162c:	e8 7f 57 00 00       	call   140006db0 <__cxa_allocate_exception>
   140001631:	48 8d 15 c8 89 00 00 	lea    0x89c8(%rip),%rdx        # 14000a000 <.rdata>
   140001638:	48 89 c1             	mov    %rax,%rcx
   14000163b:	48 89 c3             	mov    %rax,%rbx
   14000163e:	e8 3d 58 00 00       	call   140006e80 <_ZNSt13runtime_errorC1EPKc>
   140001643:	4c 8d 05 2e 58 00 00 	lea    0x582e(%rip),%r8        # 140006e78 <_ZNSt13runtime_errorD1Ev>
   14000164a:	48 8d 15 1f 90 00 00 	lea    0x901f(%rip),%rdx        # 14000a670 <_ZTISt13runtime_error>
   140001651:	48 89 d9             	mov    %rbx,%rcx
   140001654:	e8 2f 57 00 00       	call   140006d88 <__cxa_throw>
   140001659:	48 89 c6             	mov    %rax,%rsi
   14000165c:	48 89 d9             	mov    %rbx,%rcx
   14000165f:	e8 34 57 00 00       	call   140006d98 <__cxa_free_exception>
   140001664:	48 89 f1             	mov    %rsi,%rcx
   140001667:	e8 a4 68 00 00       	call   140007f10 <_Unwind_Resume>
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <__tcf_0>:
   140001670:	48 8d 0d c9 b9 00 00 	lea    0xb9c9(%rip),%rcx        # 14000d040 <_ZStL8__ioinit>
   140001677:	e9 84 57 00 00       	jmp    140006e00 <_ZNSt8ios_base4InitD1Ev>
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
   14000169d:	e8 0e 57 00 00       	call   140006db0 <__cxa_allocate_exception>
   1400016a2:	48 8d 15 67 89 00 00 	lea    0x8967(%rip),%rdx        # 14000a010 <.rdata>
   1400016a9:	48 89 c1             	mov    %rax,%rcx
   1400016ac:	48 89 c3             	mov    %rax,%rbx
   1400016af:	e8 bc 57 00 00       	call   140006e70 <_ZNSt16invalid_argumentC1EPKc>
   1400016b4:	4c 8d 05 ad 57 00 00 	lea    0x57ad(%rip),%r8        # 140006e68 <_ZNSt16invalid_argumentD1Ev>
   1400016bb:	48 8d 15 ce 8f 00 00 	lea    0x8fce(%rip),%rdx        # 14000a690 <_ZTISt16invalid_argument>
   1400016c2:	48 89 d9             	mov    %rbx,%rcx
   1400016c5:	e8 be 56 00 00       	call   140006d88 <__cxa_throw>
   1400016ca:	48 89 c6             	mov    %rax,%rsi
   1400016cd:	48 89 d9             	mov    %rbx,%rcx
   1400016d0:	e8 c3 56 00 00       	call   140006d98 <__cxa_free_exception>
   1400016d5:	48 89 f1             	mov    %rsi,%rcx
   1400016d8:	e8 33 68 00 00       	call   140007f10 <_Unwind_Resume>
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
   140001703:	e8 a8 56 00 00       	call   140006db0 <__cxa_allocate_exception>
   140001708:	48 8d 15 01 89 00 00 	lea    0x8901(%rip),%rdx        # 14000a010 <.rdata>
   14000170f:	48 89 c1             	mov    %rax,%rcx
   140001712:	48 89 c3             	mov    %rax,%rbx
   140001715:	e8 56 57 00 00       	call   140006e70 <_ZNSt16invalid_argumentC1EPKc>
   14000171a:	4c 8d 05 47 57 00 00 	lea    0x5747(%rip),%r8        # 140006e68 <_ZNSt16invalid_argumentD1Ev>
   140001721:	48 8d 15 68 8f 00 00 	lea    0x8f68(%rip),%rdx        # 14000a690 <_ZTISt16invalid_argument>
   140001728:	48 89 d9             	mov    %rbx,%rcx
   14000172b:	e8 58 56 00 00       	call   140006d88 <__cxa_throw>
   140001730:	48 89 c6             	mov    %rax,%rsi
   140001733:	48 89 d9             	mov    %rbx,%rcx
   140001736:	e8 5d 56 00 00       	call   140006d98 <__cxa_free_exception>
   14000173b:	48 89 f1             	mov    %rsi,%rcx
   14000173e:	e8 cd 67 00 00       	call   140007f10 <_Unwind_Resume>
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
   140001757:	e9 a4 56 00 00       	jmp    140006e00 <_ZNSt8ios_base4InitD1Ev>
   14000175c:	90                   	nop
   14000175d:	90                   	nop
   14000175e:	90                   	nop
   14000175f:	90                   	nop

0000000140001760 <__tcf_0>:
   140001760:	48 8d 0d f9 b8 00 00 	lea    0xb8f9(%rip),%rcx        # 14000d060 <_ZStL8__ioinit>
   140001767:	e9 94 56 00 00       	jmp    140006e00 <_ZNSt8ios_base4InitD1Ev>
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
   1400017c6:	e8 45 56 00 00       	call   140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400017cb:	ba 18 00 00 00       	mov    $0x18,%edx
   1400017d0:	48 89 f1             	mov    %rsi,%rcx
   1400017d3:	e8 e8 55 00 00       	call   140006dc0 <_ZdlPvy>
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
   140001816:	e8 9d 55 00 00       	call   140006db8 <_Znwy>
   14000181b:	48 89 c1             	mov    %rax,%rcx
   14000181e:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140001822:	4c 89 e2             	mov    %r12,%rdx
   140001825:	88 41 10             	mov    %al,0x10(%rcx)
   140001828:	e8 eb 55 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000182d:	48 8b 36             	mov    (%rsi),%rsi
   140001830:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140001836:	48 39 f5             	cmp    %rsi,%rbp
   140001839:	75 d6                	jne    140001811 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   14000183b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140001840:	4c 39 e2             	cmp    %r12,%rdx
   140001843:	74 98                	je     1400017dd <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140001845:	4d 89 e0             	mov    %r12,%r8
   140001848:	48 89 f9             	mov    %rdi,%rcx
   14000184b:	e8 d0 55 00 00       	call   140006e20 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
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
   14000187b:	e8 40 55 00 00       	call   140006dc0 <_ZdlPvy>
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
   1400018a5:	e8 16 55 00 00       	call   140006dc0 <_ZdlPvy>
   1400018aa:	48 89 f1             	mov    %rsi,%rcx
   1400018ad:	eb e9                	jmp    140001898 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   1400018af:	48 89 d9             	mov    %rbx,%rcx
   1400018b2:	e8 59 66 00 00       	call   140007f10 <_Unwind_Resume>
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
   1400018ef:	e8 c4 54 00 00       	call   140006db8 <_Znwy>
   1400018f4:	48 89 c1             	mov    %rax,%rcx
   1400018f7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400018fc:	48 89 da             	mov    %rbx,%rdx
   1400018ff:	88 41 10             	mov    %al,0x10(%rcx)
   140001902:	e8 11 55 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001927:	e8 94 54 00 00       	call   140006dc0 <_ZdlPvy>
   14000192c:	48 89 f1             	mov    %rsi,%rcx
   14000192f:	eb e9                	jmp    14000191a <_ZN13NaturalBinaryC2Ex.constprop.0+0x5a>
   140001931:	48 89 f9             	mov    %rdi,%rcx
   140001934:	e8 d7 65 00 00       	call   140007f10 <_Unwind_Resume>
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
   1400019a2:	e8 11 54 00 00       	call   140006db8 <_Znwy>
   1400019a7:	48 89 c1             	mov    %rax,%rcx
   1400019aa:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400019af:	48 89 f2             	mov    %rsi,%rdx
   1400019b2:	88 41 10             	mov    %al,0x10(%rcx)
   1400019b5:	e8 5e 54 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400019ef:	e8 c4 53 00 00       	call   140006db8 <_Znwy>
   1400019f4:	48 89 c1             	mov    %rax,%rcx
   1400019f7:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400019fc:	48 89 f2             	mov    %rsi,%rdx
   1400019ff:	88 41 10             	mov    %al,0x10(%rcx)
   140001a02:	e8 11 54 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001a27:	e8 94 53 00 00       	call   140006dc0 <_ZdlPvy>
   140001a2c:	48 89 f9             	mov    %rdi,%rcx
   140001a2f:	eb e9                	jmp    140001a1a <_ZN13NaturalBinaryC1Ex+0xca>
   140001a31:	48 89 d9             	mov    %rbx,%rcx
   140001a34:	e8 d7 64 00 00       	call   140007f10 <_Unwind_Resume>
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
   140001a84:	e8 2f 53 00 00       	call   140006db8 <_Znwy>
   140001a89:	40 88 68 10          	mov    %bpl,0x10(%rax)
   140001a8d:	48 89 c1             	mov    %rax,%rcx
   140001a90:	4c 89 e2             	mov    %r12,%rdx
   140001a93:	e8 80 53 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001ac3:	e8 f8 52 00 00       	call   140006dc0 <_ZdlPvy>
   140001ac8:	48 89 f9             	mov    %rdi,%rcx
   140001acb:	eb e9                	jmp    140001ab6 <_ZN13NaturalBinaryC1ENSt7__cxx114listI4ByteSaIS2_EEE+0x76>
   140001acd:	48 89 d9             	mov    %rbx,%rcx
   140001ad0:	e8 3b 64 00 00       	call   140007f10 <_Unwind_Resume>
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
   140001b03:	e8 b8 52 00 00       	call   140006dc0 <_ZdlPvy>
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
   140001b75:	e8 3e 52 00 00       	call   140006db8 <_Znwy>
   140001b7a:	48 89 c1             	mov    %rax,%rcx
   140001b7d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001b81:	48 89 ea             	mov    %rbp,%rdx
   140001b84:	88 41 10             	mov    %al,0x10(%rcx)
   140001b87:	e8 8c 52 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001bea:	e8 c9 51 00 00       	call   140006db8 <_Znwy>
   140001bef:	40 88 70 10          	mov    %sil,0x10(%rax)
   140001bf3:	48 89 c1             	mov    %rax,%rcx
   140001bf6:	4c 89 f2             	mov    %r14,%rdx
   140001bf9:	e8 1a 52 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001c95:	e8 1e 51 00 00       	call   140006db8 <_Znwy>
   140001c9a:	44 88 60 10          	mov    %r12b,0x10(%rax)
   140001c9e:	48 89 c1             	mov    %rax,%rcx
   140001ca1:	4c 89 ea             	mov    %r13,%rdx
   140001ca4:	e8 6f 51 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001ccc:	e8 ef 50 00 00       	call   140006dc0 <_ZdlPvy>
   140001cd1:	49 39 f4             	cmp    %rsi,%r12
   140001cd4:	75 ea                	jne    140001cc0 <_ZN13NaturalBinaryplES_+0x1a0>
   140001cd6:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001cdb:	eb 13                	jmp    140001cf0 <_ZN13NaturalBinaryplES_+0x1d0>
   140001cdd:	0f 1f 00             	nopl   (%rax)
   140001ce0:	48 89 d9             	mov    %rbx,%rcx
   140001ce3:	ba 18 00 00 00       	mov    $0x18,%edx
   140001ce8:	48 8b 1b             	mov    (%rbx),%rbx
   140001ceb:	e8 d0 50 00 00       	call   140006dc0 <_ZdlPvy>
   140001cf0:	4c 39 fb             	cmp    %r15,%rbx
   140001cf3:	75 eb                	jne    140001ce0 <_ZN13NaturalBinaryplES_+0x1c0>
   140001cf5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140001cfa:	48 39 eb             	cmp    %rbp,%rbx
   140001cfd:	74 16                	je     140001d15 <_ZN13NaturalBinaryplES_+0x1f5>
   140001cff:	90                   	nop
   140001d00:	48 89 d9             	mov    %rbx,%rcx
   140001d03:	48 8b 1b             	mov    (%rbx),%rbx
   140001d06:	ba 18 00 00 00       	mov    $0x18,%edx
   140001d0b:	e8 b0 50 00 00       	call   140006dc0 <_ZdlPvy>
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
   140001d59:	e8 5a 50 00 00       	call   140006db8 <_Znwy>
   140001d5e:	48 89 c1             	mov    %rax,%rcx
   140001d61:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   140001d66:	48 89 da             	mov    %rbx,%rdx
   140001d69:	88 41 10             	mov    %al,0x10(%rcx)
   140001d6c:	e8 a7 50 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001db4:	e8 07 50 00 00       	call   140006dc0 <_ZdlPvy>
   140001db9:	4c 89 e1             	mov    %r12,%rcx
   140001dbc:	eb e9                	jmp    140001da7 <_ZN13NaturalBinaryplES_+0x287>
   140001dbe:	48 89 c3             	mov    %rax,%rbx
   140001dc1:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140001dc6:	4c 39 f9             	cmp    %r15,%rcx
   140001dc9:	74 31                	je     140001dfc <_ZN13NaturalBinaryplES_+0x2dc>
   140001dcb:	48 8b 31             	mov    (%rcx),%rsi
   140001dce:	ba 18 00 00 00       	mov    $0x18,%edx
   140001dd3:	e8 e8 4f 00 00       	call   140006dc0 <_ZdlPvy>
   140001dd8:	48 89 f1             	mov    %rsi,%rcx
   140001ddb:	eb e9                	jmp    140001dc6 <_ZN13NaturalBinaryplES_+0x2a6>
   140001ddd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001de2:	48 89 c3             	mov    %rax,%rbx
   140001de5:	48 39 e9             	cmp    %rbp,%rcx
   140001de8:	74 1c                	je     140001e06 <_ZN13NaturalBinaryplES_+0x2e6>
   140001dea:	48 8b 31             	mov    (%rcx),%rsi
   140001ded:	ba 18 00 00 00       	mov    $0x18,%edx
   140001df2:	e8 c9 4f 00 00       	call   140006dc0 <_ZdlPvy>
   140001df7:	48 89 f1             	mov    %rsi,%rcx
   140001dfa:	eb e9                	jmp    140001de5 <_ZN13NaturalBinaryplES_+0x2c5>
   140001dfc:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001e01:	48 39 e9             	cmp    %rbp,%rcx
   140001e04:	75 24                	jne    140001e2a <_ZN13NaturalBinaryplES_+0x30a>
   140001e06:	48 89 d9             	mov    %rbx,%rcx
   140001e09:	e8 02 61 00 00       	call   140007f10 <_Unwind_Resume>
   140001e0e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140001e13:	48 39 f1             	cmp    %rsi,%rcx
   140001e16:	74 a9                	je     140001dc1 <_ZN13NaturalBinaryplES_+0x2a1>
   140001e18:	48 8b 39             	mov    (%rcx),%rdi
   140001e1b:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e20:	e8 9b 4f 00 00       	call   140006dc0 <_ZdlPvy>
   140001e25:	48 89 f9             	mov    %rdi,%rcx
   140001e28:	eb e9                	jmp    140001e13 <_ZN13NaturalBinaryplES_+0x2f3>
   140001e2a:	48 8b 31             	mov    (%rcx),%rsi
   140001e2d:	ba 18 00 00 00       	mov    $0x18,%edx
   140001e32:	e8 89 4f 00 00       	call   140006dc0 <_ZdlPvy>
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
   140001e95:	e8 1e 4f 00 00       	call   140006db8 <_Znwy>
   140001e9a:	48 89 c1             	mov    %rax,%rcx
   140001e9d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140001ea1:	4c 89 e2             	mov    %r12,%rdx
   140001ea4:	88 41 10             	mov    %al,0x10(%rcx)
   140001ea7:	e8 6c 4f 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001f09:	e8 aa 4e 00 00       	call   140006db8 <_Znwy>
   140001f0e:	40 88 78 10          	mov    %dil,0x10(%rax)
   140001f12:	48 89 c1             	mov    %rax,%rcx
   140001f15:	4c 89 f2             	mov    %r14,%rdx
   140001f18:	e8 fb 4e 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001fb5:	e8 fe 4d 00 00       	call   140006db8 <_Znwy>
   140001fba:	40 88 78 10          	mov    %dil,0x10(%rax)
   140001fbe:	48 89 c1             	mov    %rax,%rcx
   140001fc1:	4c 89 ea             	mov    %r13,%rdx
   140001fc4:	e8 4f 4e 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140001feb:	e8 d0 4d 00 00       	call   140006dc0 <_ZdlPvy>
   140001ff0:	48 39 f7             	cmp    %rsi,%rdi
   140001ff3:	75 eb                	jne    140001fe0 <_ZN13NaturalBinarymiES_+0x1a0>
   140001ff5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140001ffa:	eb 14                	jmp    140002010 <_ZN13NaturalBinarymiES_+0x1d0>
   140001ffc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002000:	48 89 d9             	mov    %rbx,%rcx
   140002003:	ba 18 00 00 00       	mov    $0x18,%edx
   140002008:	48 8b 1b             	mov    (%rbx),%rbx
   14000200b:	e8 b0 4d 00 00       	call   140006dc0 <_ZdlPvy>
   140002010:	4c 39 fb             	cmp    %r15,%rbx
   140002013:	75 eb                	jne    140002000 <_ZN13NaturalBinarymiES_+0x1c0>
   140002015:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000201a:	4c 39 e3             	cmp    %r12,%rbx
   14000201d:	74 16                	je     140002035 <_ZN13NaturalBinarymiES_+0x1f5>
   14000201f:	90                   	nop
   140002020:	48 89 d9             	mov    %rbx,%rcx
   140002023:	48 8b 1b             	mov    (%rbx),%rbx
   140002026:	ba 18 00 00 00       	mov    $0x18,%edx
   14000202b:	e8 90 4d 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002071:	e8 42 4d 00 00       	call   140006db8 <_Znwy>
   140002076:	48 89 c1             	mov    %rax,%rcx
   140002079:	0f b6 44 24 60       	movzbl 0x60(%rsp),%eax
   14000207e:	48 89 da             	mov    %rbx,%rdx
   140002081:	88 41 10             	mov    %al,0x10(%rcx)
   140002084:	e8 8f 4d 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400020ce:	e8 ed 4c 00 00       	call   140006dc0 <_ZdlPvy>
   1400020d3:	48 89 f9             	mov    %rdi,%rcx
   1400020d6:	eb e9                	jmp    1400020c1 <_ZN13NaturalBinarymiES_+0x281>
   1400020d8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400020dd:	48 89 c3             	mov    %rax,%rbx
   1400020e0:	4c 39 e1             	cmp    %r12,%rcx
   1400020e3:	74 3b                	je     140002120 <_ZN13NaturalBinarymiES_+0x2e0>
   1400020e5:	48 8b 31             	mov    (%rcx),%rsi
   1400020e8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400020ed:	e8 ce 4c 00 00       	call   140006dc0 <_ZdlPvy>
   1400020f2:	48 89 f1             	mov    %rsi,%rcx
   1400020f5:	eb e9                	jmp    1400020e0 <_ZN13NaturalBinarymiES_+0x2a0>
   1400020f7:	48 89 c3             	mov    %rax,%rbx
   1400020fa:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400020ff:	4c 39 f9             	cmp    %r15,%rcx
   140002102:	74 12                	je     140002116 <_ZN13NaturalBinarymiES_+0x2d6>
   140002104:	48 8b 31             	mov    (%rcx),%rsi
   140002107:	ba 18 00 00 00       	mov    $0x18,%edx
   14000210c:	e8 af 4c 00 00       	call   140006dc0 <_ZdlPvy>
   140002111:	48 89 f1             	mov    %rsi,%rcx
   140002114:	eb e9                	jmp    1400020ff <_ZN13NaturalBinarymiES_+0x2bf>
   140002116:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000211b:	4c 39 e1             	cmp    %r12,%rcx
   14000211e:	75 24                	jne    140002144 <_ZN13NaturalBinarymiES_+0x304>
   140002120:	48 89 d9             	mov    %rbx,%rcx
   140002123:	e8 e8 5d 00 00       	call   140007f10 <_Unwind_Resume>
   140002128:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000212d:	48 39 f1             	cmp    %rsi,%rcx
   140002130:	74 c8                	je     1400020fa <_ZN13NaturalBinarymiES_+0x2ba>
   140002132:	48 8b 39             	mov    (%rcx),%rdi
   140002135:	ba 18 00 00 00       	mov    $0x18,%edx
   14000213a:	e8 81 4c 00 00       	call   140006dc0 <_ZdlPvy>
   14000213f:	48 89 f9             	mov    %rdi,%rcx
   140002142:	eb e9                	jmp    14000212d <_ZN13NaturalBinarymiES_+0x2ed>
   140002144:	48 8b 31             	mov    (%rcx),%rsi
   140002147:	ba 18 00 00 00       	mov    $0x18,%edx
   14000214c:	e8 6f 4c 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002208:	e8 ab 4b 00 00       	call   140006db8 <_Znwy>
   14000220d:	48 89 c1             	mov    %rax,%rcx
   140002210:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   140002215:	4c 89 e2             	mov    %r12,%rdx
   140002218:	88 41 10             	mov    %al,0x10(%rcx)
   14000221b:	e8 f8 4b 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   14000228b:	e8 30 4b 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002305:	e8 ae 4a 00 00       	call   140006db8 <_Znwy>
   14000230a:	44 88 68 10          	mov    %r13b,0x10(%rax)
   14000230e:	48 89 c1             	mov    %rax,%rcx
   140002311:	48 89 ea             	mov    %rbp,%rdx
   140002314:	e8 ff 4a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   14000233c:	e8 7f 4a 00 00       	call   140006dc0 <_ZdlPvy>
   140002341:	48 39 f5             	cmp    %rsi,%rbp
   140002344:	75 ea                	jne    140002330 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x1d0>
   140002346:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
   14000234b:	4c 39 e3             	cmp    %r12,%rbx
   14000234e:	74 15                	je     140002365 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x205>
   140002350:	48 89 d9             	mov    %rbx,%rcx
   140002353:	48 8b 1b             	mov    (%rbx),%rbx
   140002356:	ba 18 00 00 00       	mov    $0x18,%edx
   14000235b:	e8 60 4a 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002399:	e8 1a 4a 00 00       	call   140006db8 <_Znwy>
   14000239e:	48 89 ea             	mov    %rbp,%rdx
   1400023a1:	48 89 c1             	mov    %rax,%rcx
   1400023a4:	0f b6 44 24 50       	movzbl 0x50(%rsp),%eax
   1400023a9:	88 41 10             	mov    %al,0x10(%rcx)
   1400023ac:	e8 67 4a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400023f3:	e8 c8 49 00 00       	call   140006dc0 <_ZdlPvy>
   1400023f8:	48 89 f9             	mov    %rdi,%rcx
   1400023fb:	eb e9                	jmp    1400023e6 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x286>
   1400023fd:	48 8b 0f             	mov    (%rdi),%rcx
   140002400:	48 89 c3             	mov    %rax,%rbx
   140002403:	48 39 cf             	cmp    %rcx,%rdi
   140002406:	74 31                	je     140002439 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2d9>
   140002408:	48 8b 29             	mov    (%rcx),%rbp
   14000240b:	ba 18 00 00 00       	mov    $0x18,%edx
   140002410:	e8 ab 49 00 00       	call   140006dc0 <_ZdlPvy>
   140002415:	48 89 e9             	mov    %rbp,%rcx
   140002418:	eb e9                	jmp    140002403 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2a3>
   14000241a:	48 89 c3             	mov    %rax,%rbx
   14000241d:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140002422:	4c 39 e1             	cmp    %r12,%rcx
   140002425:	74 2e                	je     140002455 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2f5>
   140002427:	48 8b 31             	mov    (%rcx),%rsi
   14000242a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000242f:	e8 8c 49 00 00       	call   140006dc0 <_ZdlPvy>
   140002434:	48 89 f1             	mov    %rsi,%rcx
   140002437:	eb e9                	jmp    140002422 <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2c2>
   140002439:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
   14000243e:	48 39 f1             	cmp    %rsi,%rcx
   140002441:	74 da                	je     14000241d <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2bd>
   140002443:	48 8b 39             	mov    (%rcx),%rdi
   140002446:	ba 18 00 00 00       	mov    $0x18,%edx
   14000244b:	e8 70 49 00 00       	call   140006dc0 <_ZdlPvy>
   140002450:	48 89 f9             	mov    %rdi,%rcx
   140002453:	eb e9                	jmp    14000243e <_ZN13NaturalBinary14divide_by_byteES_4BytePS_+0x2de>
   140002455:	48 89 d9             	mov    %rbx,%rcx
   140002458:	e8 b3 5a 00 00       	call   140007f10 <_Unwind_Resume>
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
   14000248b:	e8 80 49 00 00       	call   140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140002490:	ba 18 00 00 00       	mov    $0x18,%edx
   140002495:	48 89 d9             	mov    %rbx,%rcx
   140002498:	e8 23 49 00 00       	call   140006dc0 <_ZdlPvy>
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
   1400029c5:	e8 ee 43 00 00       	call   140006db8 <_Znwy>
   1400029ca:	48 89 c1             	mov    %rax,%rcx
   1400029cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400029d1:	48 89 f2             	mov    %rsi,%rdx
   1400029d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400029d7:	e8 3c 44 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140002a1b:	e8 a0 43 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002a65:	e8 4e 43 00 00       	call   140006db8 <_Znwy>
   140002a6a:	48 89 c1             	mov    %rax,%rcx
   140002a6d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002a71:	4c 89 e2             	mov    %r12,%rdx
   140002a74:	88 41 10             	mov    %al,0x10(%rcx)
   140002a77:	e8 9c 43 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140002abb:	e8 00 43 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002af2:	e8 c9 42 00 00       	call   140006dc0 <_ZdlPvy>
   140002af7:	48 89 f9             	mov    %rdi,%rcx
   140002afa:	eb e9                	jmp    140002ae5 <_ZN13NaturalBinaryleES_+0x165>
   140002afc:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140002b01:	48 89 c3             	mov    %rax,%rbx
   140002b04:	4c 39 e1             	cmp    %r12,%rcx
   140002b07:	74 12                	je     140002b1b <_ZN13NaturalBinaryleES_+0x19b>
   140002b09:	48 8b 39             	mov    (%rcx),%rdi
   140002b0c:	ba 18 00 00 00       	mov    $0x18,%edx
   140002b11:	e8 aa 42 00 00       	call   140006dc0 <_ZdlPvy>
   140002b16:	48 89 f9             	mov    %rdi,%rcx
   140002b19:	eb e9                	jmp    140002b04 <_ZN13NaturalBinaryleES_+0x184>
   140002b1b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002b20:	48 39 f1             	cmp    %rsi,%rcx
   140002b23:	75 08                	jne    140002b2d <_ZN13NaturalBinaryleES_+0x1ad>
   140002b25:	48 89 d9             	mov    %rbx,%rcx
   140002b28:	e8 e3 53 00 00       	call   140007f10 <_Unwind_Resume>
   140002b2d:	48 8b 39             	mov    (%rcx),%rdi
   140002b30:	ba 18 00 00 00       	mov    $0x18,%edx
   140002b35:	e8 86 42 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002b85:	e8 2e 42 00 00       	call   140006db8 <_Znwy>
   140002b8a:	48 89 c1             	mov    %rax,%rcx
   140002b8d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002b91:	48 89 f2             	mov    %rsi,%rdx
   140002b94:	88 41 10             	mov    %al,0x10(%rcx)
   140002b97:	e8 7c 42 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140002bdb:	e8 e0 41 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002c25:	e8 8e 41 00 00       	call   140006db8 <_Znwy>
   140002c2a:	48 89 c1             	mov    %rax,%rcx
   140002c2d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140002c31:	4c 89 e2             	mov    %r12,%rdx
   140002c34:	88 41 10             	mov    %al,0x10(%rcx)
   140002c37:	e8 dc 41 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140002c7b:	e8 40 41 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002cb2:	e8 09 41 00 00       	call   140006dc0 <_ZdlPvy>
   140002cb7:	48 89 f9             	mov    %rdi,%rcx
   140002cba:	eb e9                	jmp    140002ca5 <_ZN13NaturalBinarygeES_+0x165>
   140002cbc:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140002cc1:	48 89 c3             	mov    %rax,%rbx
   140002cc4:	4c 39 e1             	cmp    %r12,%rcx
   140002cc7:	74 12                	je     140002cdb <_ZN13NaturalBinarygeES_+0x19b>
   140002cc9:	48 8b 39             	mov    (%rcx),%rdi
   140002ccc:	ba 18 00 00 00       	mov    $0x18,%edx
   140002cd1:	e8 ea 40 00 00       	call   140006dc0 <_ZdlPvy>
   140002cd6:	48 89 f9             	mov    %rdi,%rcx
   140002cd9:	eb e9                	jmp    140002cc4 <_ZN13NaturalBinarygeES_+0x184>
   140002cdb:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002ce0:	48 39 f1             	cmp    %rsi,%rcx
   140002ce3:	75 08                	jne    140002ced <_ZN13NaturalBinarygeES_+0x1ad>
   140002ce5:	48 89 d9             	mov    %rbx,%rcx
   140002ce8:	e8 23 52 00 00       	call   140007f10 <_Unwind_Resume>
   140002ced:	48 8b 39             	mov    (%rcx),%rdi
   140002cf0:	ba 18 00 00 00       	mov    $0x18,%edx
   140002cf5:	e8 c6 40 00 00       	call   140006dc0 <_ZdlPvy>
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
   140002d23:	48 8b 05 66 77 00 00 	mov    0x7766(%rip),%rax        # 14000a490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002d2a:	48 8b 1d 4f 77 00 00 	mov    0x774f(%rip),%rbx        # 14000a480 <__fu8__ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE>
   140002d31:	48 83 c0 40          	add    $0x40,%rax
   140002d35:	66 48 0f 6e f0       	movq   %rax,%xmm6
   140002d3a:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140002d3e:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140002d43:	48 8b 05 56 77 00 00 	mov    0x7756(%rip),%rax        # 14000a4a0 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
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
   140002da3:	e8 50 40 00 00       	call   140006df8 <_ZNSt8ios_baseC2Ev>
   140002da8:	48 8b 35 c1 76 00 00 	mov    0x76c1(%rip),%rsi        # 14000a470 <__fu5__ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002daf:	31 d2                	xor    %edx,%edx
   140002db1:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002db5:	48 8b 05 f4 76 00 00 	mov    0x76f4(%rip),%rax        # 14000a4b0 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
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
   140002e27:	e8 bc 3f 00 00       	call   140006de8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
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
   140002e5a:	e8 89 3f 00 00       	call   140006de8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002e5f:	48 8b 46 08          	mov    0x8(%rsi),%rax
   140002e63:	48 8b 76 30          	mov    0x30(%rsi),%rsi
   140002e67:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140002e6b:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
   140002e70:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140002e74:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
   140002e79:	48 89 b4 04 c0 00 00 	mov    %rsi,0xc0(%rsp,%rax,1)
   140002e80:	00 
   140002e81:	48 8b 05 08 76 00 00 	mov    0x7608(%rip),%rax        # 14000a490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140002e88:	0f 11 b4 24 d0 00 00 	movups %xmm6,0xd0(%rsp)
   140002e8f:	00 
   140002e90:	48 83 c0 18          	add    $0x18,%rax
   140002e94:	0f 11 84 24 e0 00 00 	movups %xmm0,0xe0(%rsp)
   140002e9b:	00 
   140002e9c:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   140002ea3:	00 
   140002ea4:	48 8b 05 e5 75 00 00 	mov    0x75e5(%rip),%rax        # 14000a490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
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
   140002ed7:	e8 84 3f 00 00       	call   140006e60 <_ZNSt6localeC1Ev>
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
   140002f32:	e8 b1 3e 00 00       	call   140006de8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140002f37:	48 8d 05 82 51 00 00 	lea    0x5182(%rip),%rax        # 1400080c0 <_ZNKSt5ctypeIcE8do_widenEc>
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
   140002fb5:	e8 ce 3e 00 00       	call   140006e88 <_ZNSolsEi>
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
   140003024:	e8 27 3e 00 00       	call   140006e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140003029:	4c 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%r8
   140003030:	00 
   140003031:	4c 89 f0             	mov    %r14,%rax
   140003034:	48 2b 47 08          	sub    0x8(%rdi),%rax
   140003038:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
   14000303f:	00 
   140003040:	4c 39 c0             	cmp    %r8,%rax
   140003043:	0f 82 0e 04 00 00    	jb     140003457 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x757>
   140003049:	48 89 f9             	mov    %rdi,%rcx
   14000304c:	e8 ef 3d 00 00       	call   140006e40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140003051:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003058:	00 
   140003059:	48 39 d9             	cmp    %rbx,%rcx
   14000305c:	74 11                	je     14000306f <_ZN13NaturalBinary8toStringB5cxx11Ev+0x36f>
   14000305e:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003065:	00 
   140003066:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000306a:	e8 51 3d 00 00       	call   140006dc0 <_ZdlPvy>
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
   1400030a9:	e8 a2 3d 00 00       	call   140006e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
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
   1400030d3:	e8 58 3d 00 00       	call   140006e30 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   1400030d8:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   1400030df:	00 
   1400030e0:	48 39 d9             	cmp    %rbx,%rcx
   1400030e3:	0f 84 3f 02 00 00    	je     140003328 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x628>
   1400030e9:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   1400030f0:	00 
   1400030f1:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400030f5:	e8 c6 3c 00 00       	call   140006dc0 <_ZdlPvy>
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
   14000312f:	e8 14 3d 00 00       	call   140006e48 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   140003134:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   14000313b:	ff ff 3f 
   14000313e:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   140003145:	00 
   140003146:	48 83 f8 01          	cmp    $0x1,%rax
   14000314a:	0f 86 18 03 00 00    	jbe    140003468 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x768>
   140003150:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140003156:	48 8d 15 e8 6e 00 00 	lea    0x6ee8(%rip),%rdx        # 14000a045 <.rdata+0x15>
   14000315d:	4c 89 f9             	mov    %r15,%rcx
   140003160:	e8 db 3c 00 00       	call   140006e40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140003165:	4c 8b 47 08          	mov    0x8(%rdi),%r8
   140003169:	48 8b 17             	mov    (%rdi),%rdx
   14000316c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   140003173:	ff ff 3f 
   140003176:	48 2b 84 24 a8 00 00 	sub    0xa8(%rsp),%rax
   14000317d:	00 
   14000317e:	4c 39 c0             	cmp    %r8,%rax
   140003181:	0f 82 ed 02 00 00    	jb     140003474 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x774>
   140003187:	4c 89 f9             	mov    %r15,%rcx
   14000318a:	e8 b1 3c 00 00       	call   140006e40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
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
   140003206:	e8 b5 3b 00 00       	call   140006dc0 <_ZdlPvy>
   14000320b:	48 8b 05 7e 72 00 00 	mov    0x727e(%rip),%rax        # 14000a490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
   140003212:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
   140003219:	00 
   14000321a:	0f 11 bc 24 d0 00 00 	movups %xmm7,0xd0(%rsp)
   140003221:	00 
   140003222:	48 83 c0 18          	add    $0x18,%rax
   140003226:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
   14000322d:	00 
   14000322e:	48 8b 05 5b 72 00 00 	mov    0x725b(%rip),%rax        # 14000a490 <__fu9__ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE>
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
   14000325a:	e8 61 3b 00 00       	call   140006dc0 <_ZdlPvy>
   14000325f:	48 8b 05 3a 72 00 00 	mov    0x723a(%rip),%rax        # 14000a4a0 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   140003266:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   14000326b:	48 83 c0 10          	add    $0x10,%rax
   14000326f:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   140003276:	00 
   140003277:	e8 dc 3b 00 00       	call   140006e58 <_ZNSt6localeD1Ev>
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
   1400032d6:	48 8b 05 d3 71 00 00 	mov    0x71d3(%rip),%rax        # 14000a4b0 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   1400032dd:	48 c7 84 24 c8 00 00 	movq   $0x0,0xc8(%rsp)
   1400032e4:	00 00 00 00 00 
   1400032e9:	48 83 c0 10          	add    $0x10,%rax
   1400032ed:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400032f4:	00 
   1400032f5:	e8 f6 3a 00 00       	call   140006df0 <_ZNSt8ios_baseD2Ev>
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
   14000336a:	e8 31 3b 00 00       	call   140006ea0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
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
   1400033ab:	e8 88 3a 00 00       	call   140006e38 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
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
   1400033f6:	e8 45 4c 00 00       	call   140008040 <memcpy>
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
   140003457:	48 8d 0d d2 6b 00 00 	lea    0x6bd2(%rip),%rcx        # 14000a030 <.rdata>
   14000345e:	e8 6d 39 00 00       	call   140006dd0 <_ZSt20__throw_length_errorPKc>
   140003463:	e8 70 39 00 00       	call   140006dd8 <_ZSt16__throw_bad_castv>
   140003468:	48 8d 0d c1 6b 00 00 	lea    0x6bc1(%rip),%rcx        # 14000a030 <.rdata>
   14000346f:	e8 5c 39 00 00       	call   140006dd0 <_ZSt20__throw_length_errorPKc>
   140003474:	48 8d 0d b5 6b 00 00 	lea    0x6bb5(%rip),%rcx        # 14000a030 <.rdata>
   14000347b:	e8 50 39 00 00       	call   140006dd0 <_ZSt20__throw_length_errorPKc>
   140003480:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003487:	00 
   140003488:	48 89 c6             	mov    %rax,%rsi
   14000348b:	48 39 d9             	cmp    %rbx,%rcx
   14000348e:	74 11                	je     1400034a1 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7a1>
   140003490:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
   140003497:	00 
   140003498:	48 8d 50 01          	lea    0x1(%rax),%rdx
   14000349c:	e8 1f 39 00 00       	call   140006dc0 <_ZdlPvy>
   1400034a1:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
   1400034a8:	00 
   1400034a9:	e8 7a 39 00 00       	call   140006e28 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   1400034ae:	eb 23                	jmp    1400034d3 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7d3>
   1400034b0:	48 89 c6             	mov    %rax,%rsi
   1400034b3:	48 8b 05 f6 6f 00 00 	mov    0x6ff6(%rip),%rax        # 14000a4b0 <__fu6__ZTVSt9basic_iosIcSt11char_traitsIcEE>
   1400034ba:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
   1400034c1:	00 
   1400034c2:	48 83 c0 10          	add    $0x10,%rax
   1400034c6:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
   1400034cd:	00 
   1400034ce:	e8 1d 39 00 00       	call   140006df0 <_ZNSt8ios_baseD2Ev>
   1400034d3:	48 8b 0f             	mov    (%rdi),%rcx
   1400034d6:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
   1400034dd:	00 
   1400034de:	48 39 c1             	cmp    %rax,%rcx
   1400034e1:	74 0d                	je     1400034f0 <_ZN13NaturalBinary8toStringB5cxx11Ev+0x7f0>
   1400034e3:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   1400034e7:	48 83 c2 01          	add    $0x1,%rdx
   1400034eb:	e8 d0 38 00 00       	call   140006dc0 <_ZdlPvy>
   1400034f0:	48 89 f1             	mov    %rsi,%rcx
   1400034f3:	e8 18 4a 00 00       	call   140007f10 <_Unwind_Resume>
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
   140003563:	e8 58 38 00 00       	call   140006dc0 <_ZdlPvy>
   140003568:	48 8b 05 31 6f 00 00 	mov    0x6f31(%rip),%rax        # 14000a4a0 <__fu7__ZTVSt15basic_streambufIcSt11char_traitsIcEE>
   14000356f:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
   140003574:	48 83 c0 10          	add    $0x10,%rax
   140003578:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
   14000357f:	00 
   140003580:	e8 d3 38 00 00       	call   140006e58 <_ZNSt6localeD1Ev>
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
   1400035df:	e8 fc 37 00 00       	call   140006de0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   1400035e4:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400035e9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400035ee:	48 39 c1             	cmp    %rax,%rcx
   1400035f1:	74 0e                	je     140003601 <_ZlsRSo13NaturalBinary+0x41>
   1400035f3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400035f8:	48 8d 50 01          	lea    0x1(%rax),%rdx
   1400035fc:	e8 bf 37 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003625:	e8 96 37 00 00       	call   140006dc0 <_ZdlPvy>
   14000362a:	48 89 d9             	mov    %rbx,%rcx
   14000362d:	e8 de 48 00 00       	call   140007f10 <_Unwind_Resume>
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
   14000369d:	e8 16 37 00 00       	call   140006db8 <_Znwy>
   1400036a2:	48 89 c1             	mov    %rax,%rcx
   1400036a5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400036a9:	48 89 f2             	mov    %rsi,%rdx
   1400036ac:	88 41 10             	mov    %al,0x10(%rcx)
   1400036af:	e8 64 37 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400037ba:	e8 f9 35 00 00       	call   140006db8 <_Znwy>
   1400037bf:	48 89 c1             	mov    %rax,%rcx
   1400037c2:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
   1400037c6:	48 89 da             	mov    %rbx,%rdx
   1400037c9:	48 83 c5 01          	add    $0x1,%rbp
   1400037cd:	88 41 10             	mov    %al,0x10(%rcx)
   1400037d0:	e8 43 36 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140003837:	e8 7c 35 00 00       	call   140006db8 <_Znwy>
   14000383c:	44 88 70 10          	mov    %r14b,0x10(%rax)
   140003840:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
   140003845:	48 89 c1             	mov    %rax,%rcx
   140003848:	e8 cb 35 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   14000388c:	e8 2f 35 00 00       	call   140006dc0 <_ZdlPvy>
   140003891:	4c 39 e5             	cmp    %r12,%rbp
   140003894:	75 ea                	jne    140003880 <_ZN13NaturalBinarymlES_+0x240>
   140003896:	48 8b ac 24 c0 00 00 	mov    0xc0(%rsp),%rbp
   14000389d:	00 
   14000389e:	eb 11                	jmp    1400038b1 <_ZN13NaturalBinarymlES_+0x271>
   1400038a0:	48 89 e9             	mov    %rbp,%rcx
   1400038a3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400038a8:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   1400038ac:	e8 0f 35 00 00       	call   140006dc0 <_ZdlPvy>
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
   1400038e3:	e8 d0 34 00 00       	call   140006db8 <_Znwy>
   1400038e8:	48 89 c1             	mov    %rax,%rcx
   1400038eb:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   1400038f2:	00 
   1400038f3:	4c 89 f2             	mov    %r14,%rdx
   1400038f6:	48 83 c5 01          	add    $0x1,%rbp
   1400038fa:	88 41 10             	mov    %al,0x10(%rcx)
   1400038fd:	e8 16 35 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140003958:	e8 73 47 00 00       	call   1400080d0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>
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
   140003a25:	e8 8e 33 00 00       	call   140006db8 <_Znwy>
   140003a2a:	48 89 c1             	mov    %rax,%rcx
   140003a2d:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   140003a32:	48 89 ea             	mov    %rbp,%rdx
   140003a35:	88 41 10             	mov    %al,0x10(%rcx)
   140003a38:	e8 db 33 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140003a7f:	e8 34 33 00 00       	call   140006db8 <_Znwy>
   140003a84:	48 89 c1             	mov    %rax,%rcx
   140003a87:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003a8e:	00 
   140003a8f:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
   140003a96:	00 
   140003a97:	41 83 c5 01          	add    $0x1,%r13d
   140003a9b:	88 41 10             	mov    %al,0x10(%rcx)
   140003a9e:	e8 75 33 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140003ae4:	e8 cf 32 00 00       	call   140006db8 <_Znwy>
   140003ae9:	48 89 c1             	mov    %rax,%rcx
   140003aec:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140003af0:	48 89 da             	mov    %rbx,%rdx
   140003af3:	88 41 10             	mov    %al,0x10(%rcx)
   140003af6:	e8 1d 33 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140003b47:	e8 74 32 00 00       	call   140006dc0 <_ZdlPvy>
   140003b4c:	4c 39 e7             	cmp    %r12,%rdi
   140003b4f:	75 eb                	jne    140003b3c <_ZN13NaturalBinarymlES_+0x4fc>
   140003b51:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
   140003b58:	00 
   140003b59:	48 39 df             	cmp    %rbx,%rdi
   140003b5c:	74 15                	je     140003b73 <_ZN13NaturalBinarymlES_+0x533>
   140003b5e:	48 89 f9             	mov    %rdi,%rcx
   140003b61:	48 8b 3f             	mov    (%rdi),%rdi
   140003b64:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b69:	e8 52 32 00 00       	call   140006dc0 <_ZdlPvy>
   140003b6e:	48 39 df             	cmp    %rbx,%rdi
   140003b71:	75 eb                	jne    140003b5e <_ZN13NaturalBinarymlES_+0x51e>
   140003b73:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
   140003b7a:	00 
   140003b7b:	48 39 ef             	cmp    %rbp,%rdi
   140003b7e:	74 15                	je     140003b95 <_ZN13NaturalBinarymlES_+0x555>
   140003b80:	48 89 f9             	mov    %rdi,%rcx
   140003b83:	48 8b 3f             	mov    (%rdi),%rdi
   140003b86:	ba 18 00 00 00       	mov    $0x18,%edx
   140003b8b:	e8 30 32 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003bcb:	e8 f0 31 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003bf3:	e8 c8 31 00 00       	call   140006dc0 <_ZdlPvy>
   140003bf8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003bfd:	48 39 f3             	cmp    %rsi,%rbx
   140003c00:	74 1b                	je     140003c1d <_ZN13NaturalBinarymlES_+0x5dd>
   140003c02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003c08:	48 89 d9             	mov    %rbx,%rcx
   140003c0b:	48 8b 1b             	mov    (%rbx),%rbx
   140003c0e:	ba 18 00 00 00       	mov    $0x18,%edx
   140003c13:	e8 a8 31 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003c6f:	e8 44 31 00 00       	call   140006db8 <_Znwy>
   140003c74:	48 89 c1             	mov    %rax,%rcx
   140003c77:	0f b6 84 24 e0 00 00 	movzbl 0xe0(%rsp),%eax
   140003c7e:	00 
   140003c7f:	48 89 ea             	mov    %rbp,%rdx
   140003c82:	83 c7 01             	add    $0x1,%edi
   140003c85:	88 41 10             	mov    %al,0x10(%rcx)
   140003c88:	e8 8b 31 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140003cd6:	e8 e5 30 00 00       	call   140006dc0 <_ZdlPvy>
   140003cdb:	4c 89 e9             	mov    %r13,%rcx
   140003cde:	eb e5                	jmp    140003cc5 <_ZN13NaturalBinarymlES_+0x685>
   140003ce0:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003ce7:	00 
   140003ce8:	48 89 c7             	mov    %rax,%rdi
   140003ceb:	4c 39 e1             	cmp    %r12,%rcx
   140003cee:	74 26                	je     140003d16 <_ZN13NaturalBinarymlES_+0x6d6>
   140003cf0:	48 8b 29             	mov    (%rcx),%rbp
   140003cf3:	ba 18 00 00 00       	mov    $0x18,%edx
   140003cf8:	e8 c3 30 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003d2b:	e8 90 30 00 00       	call   140006dc0 <_ZdlPvy>
   140003d30:	48 89 e9             	mov    %rbp,%rcx
   140003d33:	eb e9                	jmp    140003d1e <_ZN13NaturalBinarymlES_+0x6de>
   140003d35:	48 8b 94 24 90 00 00 	mov    0x90(%rsp),%rdx
   140003d3c:	00 
   140003d3d:	48 29 ea             	sub    %rbp,%rdx
   140003d40:	48 85 ed             	test   %rbp,%rbp
   140003d43:	74 08                	je     140003d4d <_ZN13NaturalBinarymlES_+0x70d>
   140003d45:	48 89 e9             	mov    %rbp,%rcx
   140003d48:	e8 73 30 00 00       	call   140006dc0 <_ZdlPvy>
   140003d4d:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140003d52:	48 39 f1             	cmp    %rsi,%rcx
   140003d55:	74 48                	je     140003d9f <_ZN13NaturalBinarymlES_+0x75f>
   140003d57:	48 8b 39             	mov    (%rcx),%rdi
   140003d5a:	ba 18 00 00 00       	mov    $0x18,%edx
   140003d5f:	e8 5c 30 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003da2:	e8 69 41 00 00       	call   140007f10 <_Unwind_Resume>
   140003da7:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
   140003dae:	00 
   140003daf:	48 89 c7             	mov    %rax,%rdi
   140003db2:	4c 39 e1             	cmp    %r12,%rcx
   140003db5:	74 2a                	je     140003de1 <_ZN13NaturalBinarymlES_+0x7a1>
   140003db7:	4c 8b 29             	mov    (%rcx),%r13
   140003dba:	ba 18 00 00 00       	mov    $0x18,%edx
   140003dbf:	e8 fc 2f 00 00       	call   140006dc0 <_ZdlPvy>
   140003dc4:	4c 89 e9             	mov    %r13,%rcx
   140003dc7:	eb e9                	jmp    140003db2 <_ZN13NaturalBinarymlES_+0x772>
   140003dc9:	48 8b 29             	mov    (%rcx),%rbp
   140003dcc:	ba 18 00 00 00       	mov    $0x18,%edx
   140003dd1:	e8 ea 2f 00 00       	call   140006dc0 <_ZdlPvy>
   140003dd6:	48 89 e9             	mov    %rbp,%rcx
   140003dd9:	e9 2f ff ff ff       	jmp    140003d0d <_ZN13NaturalBinarymlES_+0x6cd>
   140003dde:	48 89 c7             	mov    %rax,%rdi
   140003de1:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003de8:	00 
   140003de9:	48 39 d9             	cmp    %rbx,%rcx
   140003dec:	74 34                	je     140003e22 <_ZN13NaturalBinarymlES_+0x7e2>
   140003dee:	4c 8b 21             	mov    (%rcx),%r12
   140003df1:	ba 18 00 00 00       	mov    $0x18,%edx
   140003df6:	e8 c5 2f 00 00       	call   140006dc0 <_ZdlPvy>
   140003dfb:	4c 89 e1             	mov    %r12,%rcx
   140003dfe:	eb e9                	jmp    140003de9 <_ZN13NaturalBinarymlES_+0x7a9>
   140003e00:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
   140003e07:	00 
   140003e08:	48 89 c7             	mov    %rax,%rdi
   140003e0b:	48 39 d9             	cmp    %rbx,%rcx
   140003e0e:	74 12                	je     140003e22 <_ZN13NaturalBinarymlES_+0x7e2>
   140003e10:	4c 8b 21             	mov    (%rcx),%r12
   140003e13:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e18:	e8 a3 2f 00 00       	call   140006dc0 <_ZdlPvy>
   140003e1d:	4c 89 e1             	mov    %r12,%rcx
   140003e20:	eb e9                	jmp    140003e0b <_ZN13NaturalBinarymlES_+0x7cb>
   140003e22:	48 89 fb             	mov    %rdi,%rbx
   140003e25:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
   140003e2c:	00 
   140003e2d:	48 39 e9             	cmp    %rbp,%rcx
   140003e30:	74 39                	je     140003e6b <_ZN13NaturalBinarymlES_+0x82b>
   140003e32:	48 8b 39             	mov    (%rcx),%rdi
   140003e35:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e3a:	e8 81 2f 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003e61:	e8 5a 2f 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003e8c:	e8 2f 2f 00 00       	call   140006dc0 <_ZdlPvy>
   140003e91:	48 89 f9             	mov    %rdi,%rcx
   140003e94:	eb e0                	jmp    140003e76 <_ZN13NaturalBinarymlES_+0x836>
   140003e96:	48 8b 29             	mov    (%rcx),%rbp
   140003e99:	ba 18 00 00 00       	mov    $0x18,%edx
   140003e9e:	e8 1d 2f 00 00       	call   140006dc0 <_ZdlPvy>
   140003ea3:	48 89 e9             	mov    %rbp,%rcx
   140003ea6:	e9 c9 fe ff ff       	jmp    140003d74 <_ZN13NaturalBinarymlES_+0x734>
   140003eab:	48 8b 39             	mov    (%rcx),%rdi
   140003eae:	ba 18 00 00 00       	mov    $0x18,%edx
   140003eb3:	e8 08 2f 00 00       	call   140006dc0 <_ZdlPvy>
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
   140003f5d:	e8 56 2e 00 00       	call   140006db8 <_Znwy>
   140003f62:	48 89 c1             	mov    %rax,%rcx
   140003f65:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140003f69:	48 89 f2             	mov    %rsi,%rdx
   140003f6c:	88 41 10             	mov    %al,0x10(%rcx)
   140003f6f:	e8 a4 2e 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140003fcb:	e8 f0 2d 00 00       	call   140006dc0 <_ZdlPvy>
   140003fd0:	4c 39 fb             	cmp    %r15,%rbx
   140003fd3:	75 eb                	jne    140003fc0 <_ZN13NaturalBinary12long_divsionES_PS_+0x100>
   140003fd5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   140003fda:	48 39 f3             	cmp    %rsi,%rbx
   140003fdd:	74 16                	je     140003ff5 <_ZN13NaturalBinary12long_divsionES_PS_+0x135>
   140003fdf:	90                   	nop
   140003fe0:	48 89 d9             	mov    %rbx,%rcx
   140003fe3:	48 8b 1b             	mov    (%rbx),%rbx
   140003fe6:	ba 18 00 00 00       	mov    $0x18,%edx
   140003feb:	e8 d0 2d 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004012:	e8 f9 2d 00 00       	call   140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140004017:	ba 18 00 00 00       	mov    $0x18,%edx
   14000401c:	4c 89 e9             	mov    %r13,%rcx
   14000401f:	e8 9c 2d 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004063:	e8 98 44 00 00       	call   140008500 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>
   140004068:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
   14000406f:	00 
   140004070:	4c 89 e1             	mov    %r12,%rcx
   140004073:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140004077:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   14000407c:	48 39 c2             	cmp    %rax,%rdx
   14000407f:	48 0f 42 d0          	cmovb  %rax,%rdx
   140004083:	e8 78 44 00 00       	call   140008500 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>
   140004088:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000408d:	0f 11 7c 24 60       	movups %xmm7,0x60(%rsp)
   140004092:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140004099:	00 00 
   14000409b:	4c 39 e3             	cmp    %r12,%rbx
   14000409e:	74 2a                	je     1400040ca <_ZN13NaturalBinary12long_divsionES_PS_+0x20a>
   1400040a0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400040a5:	e8 0e 2d 00 00       	call   140006db8 <_Znwy>
   1400040aa:	48 89 c1             	mov    %rax,%rcx
   1400040ad:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400040b1:	48 89 f2             	mov    %rsi,%rdx
   1400040b4:	88 41 10             	mov    %al,0x10(%rcx)
   1400040b7:	e8 5c 2d 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140004113:	e8 a8 2c 00 00       	call   140006dc0 <_ZdlPvy>
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
   14000413b:	e8 80 2c 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004165:	e8 4e 2c 00 00       	call   140006db8 <_Znwy>
   14000416a:	48 89 c1             	mov    %rax,%rcx
   14000416d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004171:	4c 89 f2             	mov    %r14,%rdx
   140004174:	88 41 10             	mov    %al,0x10(%rcx)
   140004177:	e8 9c 2c 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400041cb:	e8 f0 2b 00 00       	call   140006dc0 <_ZdlPvy>
   1400041d0:	4c 39 fb             	cmp    %r15,%rbx
   1400041d3:	75 eb                	jne    1400041c0 <_ZN13NaturalBinary12long_divsionES_PS_+0x300>
   1400041d5:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400041da:	48 39 f3             	cmp    %rsi,%rbx
   1400041dd:	74 16                	je     1400041f5 <_ZN13NaturalBinary12long_divsionES_PS_+0x335>
   1400041df:	90                   	nop
   1400041e0:	48 89 d9             	mov    %rbx,%rcx
   1400041e3:	48 8b 1b             	mov    (%rbx),%rbx
   1400041e6:	ba 18 00 00 00       	mov    $0x18,%edx
   1400041eb:	e8 d0 2b 00 00       	call   140006dc0 <_ZdlPvy>
   1400041f0:	48 39 f3             	cmp    %rsi,%rbx
   1400041f3:	75 eb                	jne    1400041e0 <_ZN13NaturalBinary12long_divsionES_PS_+0x320>
   1400041f5:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400041fa:	4c 39 f3             	cmp    %r14,%rbx
   1400041fd:	74 16                	je     140004215 <_ZN13NaturalBinary12long_divsionES_PS_+0x355>
   1400041ff:	90                   	nop
   140004200:	48 89 d9             	mov    %rbx,%rcx
   140004203:	48 8b 1b             	mov    (%rbx),%rbx
   140004206:	ba 18 00 00 00       	mov    $0x18,%edx
   14000420b:	e8 b0 2b 00 00       	call   140006dc0 <_ZdlPvy>
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
   14000424b:	e8 70 2b 00 00       	call   140006dc0 <_ZdlPvy>
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
   14000428d:	e8 26 2b 00 00       	call   140006db8 <_Znwy>
   140004292:	48 89 c1             	mov    %rax,%rcx
   140004295:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004299:	4c 89 fa             	mov    %r15,%rdx
   14000429c:	88 41 10             	mov    %al,0x10(%rcx)
   14000429f:	e8 74 2b 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400042db:	e8 e0 2a 00 00       	call   140006dc0 <_ZdlPvy>
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
   14000430b:	e8 b0 2a 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004357:	e8 5c 2a 00 00       	call   140006db8 <_Znwy>
   14000435c:	48 89 c1             	mov    %rax,%rcx
   14000435f:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140004366:	00 
   140004367:	4c 89 e2             	mov    %r12,%rdx
   14000436a:	88 41 10             	mov    %al,0x10(%rcx)
   14000436d:	e8 a6 2a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400043aa:	e8 09 2a 00 00       	call   140006db8 <_Znwy>
   1400043af:	48 89 c1             	mov    %rax,%rcx
   1400043b2:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400043b6:	4c 89 f2             	mov    %r14,%rdx
   1400043b9:	88 41 10             	mov    %al,0x10(%rcx)
   1400043bc:	e8 57 2a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140004409:	e8 b2 29 00 00       	call   140006dc0 <_ZdlPvy>
   14000440e:	4c 39 fb             	cmp    %r15,%rbx
   140004411:	75 eb                	jne    1400043fe <_ZN13NaturalBinary12long_divsionES_PS_+0x53e>
   140004413:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140004418:	4c 39 f3             	cmp    %r14,%rbx
   14000441b:	74 15                	je     140004432 <_ZN13NaturalBinary12long_divsionES_PS_+0x572>
   14000441d:	48 89 d9             	mov    %rbx,%rcx
   140004420:	48 8b 1b             	mov    (%rbx),%rbx
   140004423:	ba 18 00 00 00       	mov    $0x18,%edx
   140004428:	e8 93 29 00 00       	call   140006dc0 <_ZdlPvy>
   14000442d:	4c 39 f3             	cmp    %r14,%rbx
   140004430:	75 eb                	jne    14000441d <_ZN13NaturalBinary12long_divsionES_PS_+0x55d>
   140004432:	ba 01 00 00 00       	mov    $0x1,%edx
   140004437:	4c 89 f9             	mov    %r15,%rcx
   14000443a:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   14000443f:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140004446:	00 00 
   140004448:	e8 33 d2 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000444d:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004452:	e8 61 29 00 00       	call   140006db8 <_Znwy>
   140004457:	48 89 c1             	mov    %rax,%rcx
   14000445a:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140004461:	00 
   140004462:	48 89 f2             	mov    %rsi,%rdx
   140004465:	88 41 10             	mov    %al,0x10(%rcx)
   140004468:	e8 ab 29 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   1400044ae:	e8 0d 29 00 00       	call   140006dc0 <_ZdlPvy>
   1400044b3:	4c 39 fb             	cmp    %r15,%rbx
   1400044b6:	75 eb                	jne    1400044a3 <_ZN13NaturalBinary12long_divsionES_PS_+0x5e3>
   1400044b8:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
   1400044bd:	48 39 f3             	cmp    %rsi,%rbx
   1400044c0:	0f 84 28 fe ff ff    	je     1400042ee <_ZN13NaturalBinary12long_divsionES_PS_+0x42e>
   1400044c6:	48 89 d9             	mov    %rbx,%rcx
   1400044c9:	48 8b 1b             	mov    (%rbx),%rbx
   1400044cc:	ba 18 00 00 00       	mov    $0x18,%edx
   1400044d1:	e8 ea 28 00 00       	call   140006dc0 <_ZdlPvy>
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
   1400044f8:	e8 c3 28 00 00       	call   140006dc0 <_ZdlPvy>
   1400044fd:	48 89 f9             	mov    %rdi,%rcx
   140004500:	eb e9                	jmp    1400044eb <_ZN13NaturalBinary12long_divsionES_PS_+0x62b>
   140004502:	48 89 c3             	mov    %rax,%rbx
   140004505:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000450a:	48 39 f1             	cmp    %rsi,%rcx
   14000450d:	74 75                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000450f:	48 8b 39             	mov    (%rcx),%rdi
   140004512:	ba 18 00 00 00       	mov    $0x18,%edx
   140004517:	e8 a4 28 00 00       	call   140006dc0 <_ZdlPvy>
   14000451c:	48 89 f9             	mov    %rdi,%rcx
   14000451f:	eb e9                	jmp    14000450a <_ZN13NaturalBinary12long_divsionES_PS_+0x64a>
   140004521:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004526:	48 89 c3             	mov    %rax,%rbx
   140004529:	48 39 f1             	cmp    %rsi,%rcx
   14000452c:	74 56                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000452e:	48 8b 39             	mov    (%rcx),%rdi
   140004531:	ba 18 00 00 00       	mov    $0x18,%edx
   140004536:	e8 85 28 00 00       	call   140006dc0 <_ZdlPvy>
   14000453b:	48 89 f9             	mov    %rdi,%rcx
   14000453e:	eb e9                	jmp    140004529 <_ZN13NaturalBinary12long_divsionES_PS_+0x669>
   140004540:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004547:	00 
   140004548:	48 89 c3             	mov    %rax,%rbx
   14000454b:	4c 39 f9             	cmp    %r15,%rcx
   14000454e:	74 15                	je     140004565 <_ZN13NaturalBinary12long_divsionES_PS_+0x6a5>
   140004550:	48 8b 31             	mov    (%rcx),%rsi
   140004553:	ba 18 00 00 00       	mov    $0x18,%edx
   140004558:	e8 63 28 00 00       	call   140006dc0 <_ZdlPvy>
   14000455d:	48 89 f1             	mov    %rsi,%rcx
   140004560:	eb e9                	jmp    14000454b <_ZN13NaturalBinary12long_divsionES_PS_+0x68b>
   140004562:	48 89 c3             	mov    %rax,%rbx
   140004565:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   14000456a:	4c 39 f1             	cmp    %r14,%rcx
   14000456d:	74 15                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000456f:	48 8b 31             	mov    (%rcx),%rsi
   140004572:	ba 18 00 00 00       	mov    $0x18,%edx
   140004577:	e8 44 28 00 00       	call   140006dc0 <_ZdlPvy>
   14000457c:	48 89 f1             	mov    %rsi,%rcx
   14000457f:	eb e9                	jmp    14000456a <_ZN13NaturalBinary12long_divsionES_PS_+0x6aa>
   140004581:	48 89 c3             	mov    %rax,%rbx
   140004584:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004589:	4c 39 e1             	cmp    %r12,%rcx
   14000458c:	0f 84 80 00 00 00    	je     140004612 <_ZN13NaturalBinary12long_divsionES_PS_+0x752>
   140004592:	48 8b 31             	mov    (%rcx),%rsi
   140004595:	ba 18 00 00 00       	mov    $0x18,%edx
   14000459a:	e8 21 28 00 00       	call   140006dc0 <_ZdlPvy>
   14000459f:	48 89 f1             	mov    %rsi,%rcx
   1400045a2:	eb e5                	jmp    140004589 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c9>
   1400045a4:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400045a9:	48 89 c3             	mov    %rax,%rbx
   1400045ac:	4c 39 f1             	cmp    %r14,%rcx
   1400045af:	74 d3                	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   1400045b1:	48 8b 31             	mov    (%rcx),%rsi
   1400045b4:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045b9:	e8 02 28 00 00       	call   140006dc0 <_ZdlPvy>
   1400045be:	48 89 f1             	mov    %rsi,%rcx
   1400045c1:	eb e9                	jmp    1400045ac <_ZN13NaturalBinary12long_divsionES_PS_+0x6ec>
   1400045c3:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400045ca:	00 
   1400045cb:	48 89 c3             	mov    %rax,%rbx
   1400045ce:	4c 39 f9             	cmp    %r15,%rcx
   1400045d1:	0f 84 1a 01 00 00    	je     1400046f1 <_ZN13NaturalBinary12long_divsionES_PS_+0x831>
   1400045d7:	48 8b 39             	mov    (%rcx),%rdi
   1400045da:	ba 18 00 00 00       	mov    $0x18,%edx
   1400045df:	e8 dc 27 00 00       	call   140006dc0 <_ZdlPvy>
   1400045e4:	48 89 f9             	mov    %rdi,%rcx
   1400045e7:	eb e5                	jmp    1400045ce <_ZN13NaturalBinary12long_divsionES_PS_+0x70e>
   1400045e9:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   1400045f0:	00 
   1400045f1:	48 89 c3             	mov    %rax,%rbx
   1400045f4:	4c 39 f9             	cmp    %r15,%rcx
   1400045f7:	0f 84 d5 00 00 00    	je     1400046d2 <_ZN13NaturalBinary12long_divsionES_PS_+0x812>
   1400045fd:	48 8b 39             	mov    (%rcx),%rdi
   140004600:	ba 18 00 00 00       	mov    $0x18,%edx
   140004605:	e8 b6 27 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004633:	e8 88 27 00 00       	call   140006dc0 <_ZdlPvy>
   140004638:	48 89 f1             	mov    %rsi,%rcx
   14000463b:	eb e0                	jmp    14000461d <_ZN13NaturalBinary12long_divsionES_PS_+0x75d>
   14000463d:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004644:	00 
   140004645:	48 89 c3             	mov    %rax,%rbx
   140004648:	4c 39 f9             	cmp    %r15,%rcx
   14000464b:	0f 84 33 ff ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004651:	48 8b 31             	mov    (%rcx),%rsi
   140004654:	ba 18 00 00 00       	mov    $0x18,%edx
   140004659:	e8 62 27 00 00       	call   140006dc0 <_ZdlPvy>
   14000465e:	48 89 f1             	mov    %rsi,%rcx
   140004661:	eb e5                	jmp    140004648 <_ZN13NaturalBinary12long_divsionES_PS_+0x788>
   140004663:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   14000466a:	00 
   14000466b:	48 89 c3             	mov    %rax,%rbx
   14000466e:	4c 39 f9             	cmp    %r15,%rcx
   140004671:	0f 84 0d ff ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004677:	48 8b 31             	mov    (%rcx),%rsi
   14000467a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000467f:	e8 3c 27 00 00       	call   140006dc0 <_ZdlPvy>
   140004684:	48 89 f1             	mov    %rsi,%rcx
   140004687:	eb e5                	jmp    14000466e <_ZN13NaturalBinary12long_divsionES_PS_+0x7ae>
   140004689:	48 89 c3             	mov    %rax,%rbx
   14000468c:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004691:	4c 39 f1             	cmp    %r14,%rcx
   140004694:	0f 84 ea fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000469a:	48 8b 31             	mov    (%rcx),%rsi
   14000469d:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046a2:	e8 19 27 00 00       	call   140006dc0 <_ZdlPvy>
   1400046a7:	48 89 f1             	mov    %rsi,%rcx
   1400046aa:	eb e5                	jmp    140004691 <_ZN13NaturalBinary12long_divsionES_PS_+0x7d1>
   1400046ac:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400046b1:	48 89 c3             	mov    %rax,%rbx
   1400046b4:	4c 39 f1             	cmp    %r14,%rcx
   1400046b7:	0f 84 c7 fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   1400046bd:	48 8b 31             	mov    (%rcx),%rsi
   1400046c0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046c5:	e8 f6 26 00 00       	call   140006dc0 <_ZdlPvy>
   1400046ca:	48 89 f1             	mov    %rsi,%rcx
   1400046cd:	eb e5                	jmp    1400046b4 <_ZN13NaturalBinary12long_divsionES_PS_+0x7f4>
   1400046cf:	48 89 c3             	mov    %rax,%rbx
   1400046d2:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400046d7:	48 39 f1             	cmp    %rsi,%rcx
   1400046da:	74 b0                	je     14000468c <_ZN13NaturalBinary12long_divsionES_PS_+0x7cc>
   1400046dc:	48 8b 39             	mov    (%rcx),%rdi
   1400046df:	ba 18 00 00 00       	mov    $0x18,%edx
   1400046e4:	e8 d7 26 00 00       	call   140006dc0 <_ZdlPvy>
   1400046e9:	48 89 f9             	mov    %rdi,%rcx
   1400046ec:	eb e9                	jmp    1400046d7 <_ZN13NaturalBinary12long_divsionES_PS_+0x817>
   1400046ee:	48 89 c3             	mov    %rax,%rbx
   1400046f1:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400046f6:	48 39 f1             	cmp    %rsi,%rcx
   1400046f9:	0f 84 85 fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   1400046ff:	48 8b 39             	mov    (%rcx),%rdi
   140004702:	ba 18 00 00 00       	mov    $0x18,%edx
   140004707:	e8 b4 26 00 00       	call   140006dc0 <_ZdlPvy>
   14000470c:	48 89 f9             	mov    %rdi,%rcx
   14000470f:	eb e5                	jmp    1400046f6 <_ZN13NaturalBinary12long_divsionES_PS_+0x836>
   140004711:	48 89 d9             	mov    %rbx,%rcx
   140004714:	e8 f7 37 00 00       	call   140007f10 <_Unwind_Resume>
   140004719:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   14000471e:	48 89 c3             	mov    %rax,%rbx
   140004721:	48 39 f1             	cmp    %rsi,%rcx
   140004724:	0f 84 5a fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000472a:	48 8b 39             	mov    (%rcx),%rdi
   14000472d:	ba 18 00 00 00       	mov    $0x18,%edx
   140004732:	e8 89 26 00 00       	call   140006dc0 <_ZdlPvy>
   140004737:	48 89 f9             	mov    %rdi,%rcx
   14000473a:	eb e5                	jmp    140004721 <_ZN13NaturalBinary12long_divsionES_PS_+0x861>
   14000473c:	48 89 c3             	mov    %rax,%rbx
   14000473f:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004744:	48 39 f1             	cmp    %rsi,%rcx
   140004747:	0f 84 37 fe ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   14000474d:	48 8b 39             	mov    (%rcx),%rdi
   140004750:	ba 18 00 00 00       	mov    $0x18,%edx
   140004755:	e8 66 26 00 00       	call   140006dc0 <_ZdlPvy>
   14000475a:	48 89 f9             	mov    %rdi,%rcx
   14000475d:	eb e5                	jmp    140004744 <_ZN13NaturalBinary12long_divsionES_PS_+0x884>
   14000475f:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140004766:	00 
   140004767:	48 89 c3             	mov    %rax,%rbx
   14000476a:	4c 39 f9             	cmp    %r15,%rcx
   14000476d:	74 d0                	je     14000473f <_ZN13NaturalBinary12long_divsionES_PS_+0x87f>
   14000476f:	48 8b 39             	mov    (%rcx),%rdi
   140004772:	ba 18 00 00 00       	mov    $0x18,%edx
   140004777:	e8 44 26 00 00       	call   140006dc0 <_ZdlPvy>
   14000477c:	48 89 f9             	mov    %rdi,%rcx
   14000477f:	eb e9                	jmp    14000476a <_ZN13NaturalBinary12long_divsionES_PS_+0x8aa>
   140004781:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140004786:	48 89 c3             	mov    %rax,%rbx
   140004789:	48 39 f1             	cmp    %rsi,%rcx
   14000478c:	0f 84 f2 fd ff ff    	je     140004584 <_ZN13NaturalBinary12long_divsionES_PS_+0x6c4>
   140004792:	48 8b 39             	mov    (%rcx),%rdi
   140004795:	ba 18 00 00 00       	mov    $0x18,%edx
   14000479a:	e8 21 26 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004805:	e8 ae 25 00 00       	call   140006db8 <_Znwy>
   14000480a:	48 89 c1             	mov    %rax,%rcx
   14000480d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004811:	48 89 f2             	mov    %rsi,%rdx
   140004814:	88 41 10             	mov    %al,0x10(%rcx)
   140004817:	e8 fc 25 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   14000485b:	e8 60 25 00 00       	call   140006dc0 <_ZdlPvy>
   140004860:	48 39 fb             	cmp    %rdi,%rbx
   140004863:	75 eb                	jne    140004850 <_ZN13NaturalBinaryrmES_+0xa0>
   140004865:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000486a:	48 39 f3             	cmp    %rsi,%rbx
   14000486d:	74 16                	je     140004885 <_ZN13NaturalBinaryrmES_+0xd5>
   14000486f:	90                   	nop
   140004870:	48 89 d9             	mov    %rbx,%rcx
   140004873:	48 8b 1b             	mov    (%rbx),%rbx
   140004876:	ba 18 00 00 00       	mov    $0x18,%edx
   14000487b:	e8 40 25 00 00       	call   140006dc0 <_ZdlPvy>
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
   1400048c5:	e8 ee 24 00 00       	call   140006db8 <_Znwy>
   1400048ca:	48 89 c1             	mov    %rax,%rcx
   1400048cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400048d1:	48 89 f2             	mov    %rsi,%rdx
   1400048d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400048d7:	e8 3c 25 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   14000491b:	e8 a0 24 00 00       	call   140006dc0 <_ZdlPvy>
   140004920:	48 39 fb             	cmp    %rdi,%rbx
   140004923:	75 eb                	jne    140004910 <_ZN13NaturalBinaryrmES_+0x160>
   140004925:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   14000492a:	48 39 f3             	cmp    %rsi,%rbx
   14000492d:	0f 84 52 ff ff ff    	je     140004885 <_ZN13NaturalBinaryrmES_+0xd5>
   140004933:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004938:	48 89 d9             	mov    %rbx,%rcx
   14000493b:	48 8b 1b             	mov    (%rbx),%rbx
   14000493e:	ba 18 00 00 00       	mov    $0x18,%edx
   140004943:	e8 78 24 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004972:	e8 49 24 00 00       	call   140006dc0 <_ZdlPvy>
   140004977:	48 89 f9             	mov    %rdi,%rcx
   14000497a:	eb e9                	jmp    140004965 <_ZN13NaturalBinaryrmES_+0x1b5>
   14000497c:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140004981:	48 89 c3             	mov    %rax,%rbx
   140004984:	48 39 f1             	cmp    %rsi,%rcx
   140004987:	74 1f                	je     1400049a8 <_ZN13NaturalBinaryrmES_+0x1f8>
   140004989:	48 8b 39             	mov    (%rcx),%rdi
   14000498c:	ba 18 00 00 00       	mov    $0x18,%edx
   140004991:	e8 2a 24 00 00       	call   140006dc0 <_ZdlPvy>
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
   1400049b9:	e8 02 24 00 00       	call   140006dc0 <_ZdlPvy>
   1400049be:	48 89 f1             	mov    %rsi,%rcx
   1400049c1:	eb e9                	jmp    1400049ac <_ZN13NaturalBinaryrmES_+0x1fc>
   1400049c3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400049c8:	48 89 c3             	mov    %rax,%rbx
   1400049cb:	48 39 f1             	cmp    %rsi,%rcx
   1400049ce:	74 d8                	je     1400049a8 <_ZN13NaturalBinaryrmES_+0x1f8>
   1400049d0:	48 8b 39             	mov    (%rcx),%rdi
   1400049d3:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049d8:	e8 e3 23 00 00       	call   140006dc0 <_ZdlPvy>
   1400049dd:	48 89 f9             	mov    %rdi,%rcx
   1400049e0:	eb e9                	jmp    1400049cb <_ZN13NaturalBinaryrmES_+0x21b>
   1400049e2:	48 89 d9             	mov    %rbx,%rcx
   1400049e5:	e8 26 35 00 00       	call   140007f10 <_Unwind_Resume>
   1400049ea:	48 8b 39             	mov    (%rcx),%rdi
   1400049ed:	ba 18 00 00 00       	mov    $0x18,%edx
   1400049f2:	e8 c9 23 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004a5d:	e8 56 23 00 00       	call   140006db8 <_Znwy>
   140004a62:	48 89 c1             	mov    %rax,%rcx
   140004a65:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004a69:	48 89 f2             	mov    %rsi,%rdx
   140004a6c:	88 41 10             	mov    %al,0x10(%rcx)
   140004a6f:	e8 a4 23 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140004aab:	e8 10 23 00 00       	call   140006dc0 <_ZdlPvy>
   140004ab0:	48 39 f3             	cmp    %rsi,%rbx
   140004ab3:	75 eb                	jne    140004aa0 <_ZN13NaturalBinarydvES_+0xa0>
   140004ab5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
   140004aba:	48 39 fb             	cmp    %rdi,%rbx
   140004abd:	74 16                	je     140004ad5 <_ZN13NaturalBinarydvES_+0xd5>
   140004abf:	90                   	nop
   140004ac0:	48 89 d9             	mov    %rbx,%rcx
   140004ac3:	48 8b 1b             	mov    (%rbx),%rbx
   140004ac6:	ba 18 00 00 00       	mov    $0x18,%edx
   140004acb:	e8 f0 22 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004b15:	e8 9e 22 00 00       	call   140006db8 <_Znwy>
   140004b1a:	48 89 c1             	mov    %rax,%rcx
   140004b1d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004b21:	48 89 f2             	mov    %rsi,%rdx
   140004b24:	88 41 10             	mov    %al,0x10(%rcx)
   140004b27:	e8 ec 22 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140004b6b:	e8 50 22 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004b9a:	e8 21 22 00 00       	call   140006dc0 <_ZdlPvy>
   140004b9f:	48 89 f9             	mov    %rdi,%rcx
   140004ba2:	eb e9                	jmp    140004b8d <_ZN13NaturalBinarydvES_+0x18d>
   140004ba4:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004ba9:	48 89 c3             	mov    %rax,%rbx
   140004bac:	48 39 f1             	cmp    %rsi,%rcx
   140004baf:	74 29                	je     140004bda <_ZN13NaturalBinarydvES_+0x1da>
   140004bb1:	48 8b 39             	mov    (%rcx),%rdi
   140004bb4:	ba 18 00 00 00       	mov    $0x18,%edx
   140004bb9:	e8 02 22 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004bdd:	e8 2e 33 00 00       	call   140007f10 <_Unwind_Resume>
   140004be2:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004be7:	48 89 c3             	mov    %rax,%rbx
   140004bea:	48 39 f1             	cmp    %rsi,%rcx
   140004bed:	74 e1                	je     140004bd0 <_ZN13NaturalBinarydvES_+0x1d0>
   140004bef:	48 8b 29             	mov    (%rcx),%rbp
   140004bf2:	ba 18 00 00 00       	mov    $0x18,%edx
   140004bf7:	e8 c4 21 00 00       	call   140006dc0 <_ZdlPvy>
   140004bfc:	48 89 e9             	mov    %rbp,%rcx
   140004bff:	eb e9                	jmp    140004bea <_ZN13NaturalBinarydvES_+0x1ea>
   140004c01:	48 8b 29             	mov    (%rcx),%rbp
   140004c04:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c09:	e8 b2 21 00 00       	call   140006dc0 <_ZdlPvy>
   140004c0e:	48 89 e9             	mov    %rbp,%rcx
   140004c11:	eb b8                	jmp    140004bcb <_ZN13NaturalBinarydvES_+0x1cb>
   140004c13:	48 8b 31             	mov    (%rcx),%rsi
   140004c16:	ba 18 00 00 00       	mov    $0x18,%edx
   140004c1b:	e8 a0 21 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004c30:	48 8d 0d 39 84 00 00 	lea    0x8439(%rip),%rcx        # 14000d070 <_ZStL8__ioinit>
   140004c37:	e9 c4 21 00 00       	jmp    140006e00 <_ZNSt8ios_base4InitD1Ev>
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
   140004c96:	e8 75 21 00 00       	call   140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140004c9b:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ca0:	48 89 f1             	mov    %rsi,%rcx
   140004ca3:	e8 18 21 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004ce6:	e8 cd 20 00 00       	call   140006db8 <_Znwy>
   140004ceb:	48 89 c1             	mov    %rax,%rcx
   140004cee:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140004cf2:	4c 89 e2             	mov    %r12,%rdx
   140004cf5:	88 41 10             	mov    %al,0x10(%rcx)
   140004cf8:	e8 1b 21 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140004cfd:	48 8b 36             	mov    (%rsi),%rsi
   140004d00:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140004d06:	48 39 f5             	cmp    %rsi,%rbp
   140004d09:	75 d6                	jne    140004ce1 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0xa1>
   140004d0b:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140004d10:	4c 39 e2             	cmp    %r12,%rdx
   140004d13:	74 98                	je     140004cad <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x6d>
   140004d15:	4d 89 e0             	mov    %r12,%r8
   140004d18:	48 89 f9             	mov    %rdi,%rcx
   140004d1b:	e8 00 21 00 00       	call   140006e20 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
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
   140004d4b:	e8 70 20 00 00       	call   140006dc0 <_ZdlPvy>
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
   140004d75:	e8 46 20 00 00       	call   140006dc0 <_ZdlPvy>
   140004d7a:	48 89 f1             	mov    %rsi,%rcx
   140004d7d:	eb e9                	jmp    140004d68 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0+0x128>
   140004d7f:	48 89 d9             	mov    %rbx,%rcx
   140004d82:	e8 89 31 00 00       	call   140007f10 <_Unwind_Resume>
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
   140004e06:	e8 05 31 00 00       	call   140007f10 <_Unwind_Resume>
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
   140004e74:	e8 97 30 00 00       	call   140007f10 <_Unwind_Resume>
   140004e79:	90                   	nop
   140004e7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140004e80 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb>:
   140004e80:	55                   	push   %rbp
   140004e81:	57                   	push   %rdi
   140004e82:	56                   	push   %rsi
   140004e83:	53                   	push   %rbx
   140004e84:	48 83 ec 68          	sub    $0x68,%rsp
   140004e88:	48 89 d7             	mov    %rdx,%rdi
   140004e8b:	48 89 cd             	mov    %rcx,%rbp
   140004e8e:	44 89 c3             	mov    %r8d,%ebx
   140004e91:	44 89 ce             	mov    %r9d,%esi
   140004e94:	e8 a7 ca ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140004e99:	48 83 7f 10 00       	cmpq   $0x0,0x10(%rdi)
   140004e9e:	0f 84 ac 00 00 00    	je     140004f50 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xd0>
   140004ea4:	40 88 75 1c          	mov    %sil,0x1c(%rbp)
   140004ea8:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140004ead:	89 5d 18             	mov    %ebx,0x18(%rbp)
   140004eb0:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140004eb5:	48 8b 1f             	mov    (%rdi),%rbx
   140004eb8:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140004ebf:	00 00 
   140004ec1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140004ec5:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140004eca:	48 39 df             	cmp    %rbx,%rdi
   140004ecd:	74 2b                	je     140004efa <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x7a>
   140004ecf:	90                   	nop
   140004ed0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140004ed5:	e8 de 1e 00 00       	call   140006db8 <_Znwy>
   140004eda:	48 89 c1             	mov    %rax,%rcx
   140004edd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140004ee1:	48 89 f2             	mov    %rsi,%rdx
   140004ee4:	88 41 10             	mov    %al,0x10(%rcx)
   140004ee7:	e8 2c 1f 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
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
   140004f3b:	e8 80 1e 00 00       	call   140006dc0 <_ZdlPvy>
   140004f40:	48 39 f3             	cmp    %rsi,%rbx
   140004f43:	75 eb                	jne    140004f30 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0xb0>
   140004f45:	48 83 c4 68          	add    $0x68,%rsp
   140004f49:	5b                   	pop    %rbx
   140004f4a:	5e                   	pop    %rsi
   140004f4b:	5f                   	pop    %rdi
   140004f4c:	5d                   	pop    %rbp
   140004f4d:	c3                   	ret
   140004f4e:	66 90                	xchg   %ax,%ax
   140004f50:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140004f55:	48 89 f1             	mov    %rsi,%rcx
   140004f58:	e8 e3 c9 ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140004f5d:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140004f62:	31 d2                	xor    %edx,%edx
   140004f64:	c6 44 24 5c 00       	movb   $0x0,0x5c(%rsp)
   140004f69:	48 89 d9             	mov    %rbx,%rcx
   140004f6c:	e8 df c9 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140004f71:	48 89 da             	mov    %rbx,%rdx
   140004f74:	48 89 f1             	mov    %rsi,%rcx
   140004f77:	e8 c4 fc ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140004f7c:	48 89 d9             	mov    %rbx,%rcx
   140004f7f:	e8 5c cb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004f84:	48 89 f1             	mov    %rsi,%rcx
   140004f87:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
   140004f8e:	00 
   140004f8f:	e8 4c cb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004f94:	90                   	nop
   140004f95:	48 83 c4 68          	add    $0x68,%rsp
   140004f99:	5b                   	pop    %rbx
   140004f9a:	5e                   	pop    %rsi
   140004f9b:	5f                   	pop    %rdi
   140004f9c:	5d                   	pop    %rbp
   140004f9d:	c3                   	ret
   140004f9e:	48 89 c7             	mov    %rax,%rdi
   140004fa1:	48 89 d9             	mov    %rbx,%rcx
   140004fa4:	e8 37 cb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004fa9:	48 89 fb             	mov    %rdi,%rbx
   140004fac:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004fb1:	48 39 f1             	cmp    %rsi,%rcx
   140004fb4:	74 15                	je     140004fcb <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x14b>
   140004fb6:	48 8b 39             	mov    (%rcx),%rdi
   140004fb9:	ba 18 00 00 00       	mov    $0x18,%edx
   140004fbe:	e8 fd 1d 00 00       	call   140006dc0 <_ZdlPvy>
   140004fc3:	48 89 f9             	mov    %rdi,%rcx
   140004fc6:	eb e9                	jmp    140004fb1 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x131>
   140004fc8:	48 89 c3             	mov    %rax,%rbx
   140004fcb:	48 89 e9             	mov    %rbp,%rcx
   140004fce:	e8 0d cb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004fd3:	48 89 d9             	mov    %rbx,%rcx
   140004fd6:	e8 35 2f 00 00       	call   140007f10 <_Unwind_Resume>
   140004fdb:	48 89 c3             	mov    %rax,%rbx
   140004fde:	48 89 f1             	mov    %rsi,%rcx
   140004fe1:	e8 fa ca ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140004fe6:	eb e3                	jmp    140004fcb <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x14b>
   140004fe8:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140004fed:	48 89 c3             	mov    %rax,%rbx
   140004ff0:	48 39 f1             	cmp    %rsi,%rcx
   140004ff3:	74 d6                	je     140004fcb <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x14b>
   140004ff5:	48 8b 39             	mov    (%rcx),%rdi
   140004ff8:	ba 18 00 00 00       	mov    $0x18,%edx
   140004ffd:	e8 be 1d 00 00       	call   140006dc0 <_ZdlPvy>
   140005002:	48 89 f9             	mov    %rdi,%rcx
   140005005:	eb e9                	jmp    140004ff0 <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x170>
   140005007:	48 89 c7             	mov    %rax,%rdi
   14000500a:	48 89 d9             	mov    %rbx,%rcx
   14000500d:	e8 ce ca ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005012:	48 89 fb             	mov    %rdi,%rbx
   140005015:	eb c7                	jmp    140004fde <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x15e>
   140005017:	48 89 c3             	mov    %rax,%rbx
   14000501a:	eb 90                	jmp    140004fac <_ZN15SignedMagnitudeC1ENSt7__cxx114listI4ByteSaIS2_EEEjb+0x12c>
   14000501c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140005020 <_ZN15SignedMagnitudeD1Ev>:
   140005020:	e9 bb ca ff ff       	jmp    140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005025:	90                   	nop
   140005026:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000502d:	00 00 00 

0000000140005030 <_ZN15SignedMagnitude10isNegativeEv>:
   140005030:	0f b6 41 1c          	movzbl 0x1c(%rcx),%eax
   140005034:	c3                   	ret
   140005035:	90                   	nop
   140005036:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000503d:	00 00 00 

0000000140005040 <_ZN15SignedMagnitude8toStringB5cxx11Ev>:
   140005040:	41 54                	push   %r12
   140005042:	55                   	push   %rbp
   140005043:	57                   	push   %rdi
   140005044:	56                   	push   %rsi
   140005045:	53                   	push   %rbx
   140005046:	48 83 ec 50          	sub    $0x50,%rsp
   14000504a:	48 89 d6             	mov    %rdx,%rsi
   14000504d:	48 89 cb             	mov    %rcx,%rbx
   140005050:	e8 ab dc ff ff       	call   140002d00 <_ZN13NaturalBinary8toStringB5cxx11Ev>
   140005055:	8b 46 18             	mov    0x18(%rsi),%eax
   140005058:	85 c0                	test   %eax,%eax
   14000505a:	0f 85 30 01 00 00    	jne    140005190 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x150>
   140005060:	80 7e 1c 01          	cmpb   $0x1,0x1c(%rsi)
   140005064:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   140005068:	4c 8d 25 03 50 00 00 	lea    0x5003(%rip),%r12        # 14000a072 <.rdata+0x2>
   14000506f:	48 8d 05 fa 4f 00 00 	lea    0x4ffa(%rip),%rax        # 14000a070 <.rdata>
   140005076:	48 19 ff             	sbb    %rdi,%rdi
   140005079:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   14000507e:	c6 44 24 40 00       	movb   $0x0,0x40(%rsp)
   140005083:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
   14000508a:	00 00 
   14000508c:	48 83 c7 01          	add    $0x1,%rdi
   140005090:	48 89 e9             	mov    %rbp,%rcx
   140005093:	80 7e 1c 00          	cmpb   $0x0,0x1c(%rsi)
   140005097:	4c 0f 45 e0          	cmovne %rax,%r12
   14000509b:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   1400050a0:	48 01 fa             	add    %rdi,%rdx
   1400050a3:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
   1400050a8:	e8 9b 1d 00 00       	call   140006e48 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   1400050ad:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   1400050b4:	ff ff 3f 
   1400050b7:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
   1400050bc:	48 39 f8             	cmp    %rdi,%rax
   1400050bf:	0f 82 58 01 00 00    	jb     14000521d <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1dd>
   1400050c5:	49 89 f8             	mov    %rdi,%r8
   1400050c8:	4c 89 e2             	mov    %r12,%rdx
   1400050cb:	48 89 e9             	mov    %rbp,%rcx
   1400050ce:	e8 6d 1d 00 00       	call   140006e40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   1400050d3:	4c 8b 43 08          	mov    0x8(%rbx),%r8
   1400050d7:	48 8b 13             	mov    (%rbx),%rdx
   1400050da:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
   1400050e1:	ff ff 3f 
   1400050e4:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
   1400050e9:	4c 39 c0             	cmp    %r8,%rax
   1400050ec:	0f 82 1f 01 00 00    	jb     140005211 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1d1>
   1400050f2:	48 89 e9             	mov    %rbp,%rcx
   1400050f5:	e8 46 1d 00 00       	call   140006e40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   1400050fa:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   1400050ff:	48 8b 0b             	mov    (%rbx),%rcx
   140005102:	48 39 f0             	cmp    %rsi,%rax
   140005105:	0f 84 bd 00 00 00    	je     1400051c8 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x188>
   14000510b:	48 8d 53 10          	lea    0x10(%rbx),%rdx
   14000510f:	48 39 d1             	cmp    %rdx,%rcx
   140005112:	74 5c                	je     140005170 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x130>
   140005114:	f3 0f 6f 44 24 38    	movdqu 0x38(%rsp),%xmm0
   14000511a:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   14000511e:	48 89 03             	mov    %rax,(%rbx)
   140005121:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
   140005125:	48 85 c9             	test   %rcx,%rcx
   140005128:	74 53                	je     14000517d <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x13d>
   14000512a:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
   14000512f:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
   140005134:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
   14000513b:	00 00 
   14000513d:	c6 01 00             	movb   $0x0,(%rcx)
   140005140:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140005145:	48 39 f1             	cmp    %rsi,%rcx
   140005148:	74 0e                	je     140005158 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x118>
   14000514a:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   14000514f:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140005153:	e8 68 1c 00 00       	call   140006dc0 <_ZdlPvy>
   140005158:	48 89 d8             	mov    %rbx,%rax
   14000515b:	48 83 c4 50          	add    $0x50,%rsp
   14000515f:	5b                   	pop    %rbx
   140005160:	5e                   	pop    %rsi
   140005161:	5f                   	pop    %rdi
   140005162:	5d                   	pop    %rbp
   140005163:	41 5c                	pop    %r12
   140005165:	c3                   	ret
   140005166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000516d:	00 00 00 
   140005170:	f3 0f 6f 4c 24 38    	movdqu 0x38(%rsp),%xmm1
   140005176:	48 89 03             	mov    %rax,(%rbx)
   140005179:	0f 11 4b 08          	movups %xmm1,0x8(%rbx)
   14000517d:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
   140005182:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   140005187:	48 89 f1             	mov    %rsi,%rcx
   14000518a:	eb a8                	jmp    140005134 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xf4>
   14000518c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005190:	4c 8b 4b 08          	mov    0x8(%rbx),%r9
   140005194:	01 c0                	add    %eax,%eax
   140005196:	89 c0                	mov    %eax,%eax
   140005198:	4c 89 ca             	mov    %r9,%rdx
   14000519b:	48 29 c2             	sub    %rax,%rdx
   14000519e:	0f 82 85 00 00 00    	jb     140005229 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1e9>
   1400051a4:	48 c7 44 24 20 01 00 	movq   $0x1,0x20(%rsp)
   1400051ab:	00 00 
   1400051ad:	4c 8d 0d 13 4f 00 00 	lea    0x4f13(%rip),%r9        # 14000a0c7 <.rdata+0x57>
   1400051b4:	45 31 c0             	xor    %r8d,%r8d
   1400051b7:	48 89 d9             	mov    %rbx,%rcx
   1400051ba:	e8 91 1c 00 00       	call   140006e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   1400051bf:	e9 9c fe ff ff       	jmp    140005060 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x20>
   1400051c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400051c8:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   1400051cd:	4d 85 c0             	test   %r8,%r8
   1400051d0:	74 16                	je     1400051e8 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1a8>
   1400051d2:	49 83 f8 01          	cmp    $0x1,%r8
   1400051d6:	74 28                	je     140005200 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1c0>
   1400051d8:	48 89 f2             	mov    %rsi,%rdx
   1400051db:	e8 60 2e 00 00       	call   140008040 <memcpy>
   1400051e0:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   1400051e5:	48 8b 0b             	mov    (%rbx),%rcx
   1400051e8:	4c 89 43 08          	mov    %r8,0x8(%rbx)
   1400051ec:	42 c6 04 01 00       	movb   $0x0,(%rcx,%r8,1)
   1400051f1:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   1400051f6:	e9 39 ff ff ff       	jmp    140005134 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0xf4>
   1400051fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005200:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
   140005205:	88 01                	mov    %al,(%rcx)
   140005207:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
   14000520c:	48 8b 0b             	mov    (%rbx),%rcx
   14000520f:	eb d7                	jmp    1400051e8 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x1a8>
   140005211:	48 8d 0d b1 4e 00 00 	lea    0x4eb1(%rip),%rcx        # 14000a0c9 <.rdata+0x59>
   140005218:	e8 b3 1b 00 00       	call   140006dd0 <_ZSt20__throw_length_errorPKc>
   14000521d:	48 8d 0d a5 4e 00 00 	lea    0x4ea5(%rip),%rcx        # 14000a0c9 <.rdata+0x59>
   140005224:	e8 a7 1b 00 00       	call   140006dd0 <_ZSt20__throw_length_errorPKc>
   140005229:	49 89 d0             	mov    %rdx,%r8
   14000522c:	48 8d 0d 5d 4e 00 00 	lea    0x4e5d(%rip),%rcx        # 14000a090 <.rdata+0x20>
   140005233:	48 8d 15 39 4e 00 00 	lea    0x4e39(%rip),%rdx        # 14000a073 <.rdata+0x3>
   14000523a:	e8 89 1b 00 00       	call   140006dc8 <_ZSt24__throw_out_of_range_fmtPKcz>
   14000523f:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
   140005244:	48 89 c7             	mov    %rax,%rdi
   140005247:	48 39 f1             	cmp    %rsi,%rcx
   14000524a:	74 0e                	je     14000525a <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x21a>
   14000524c:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
   140005251:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140005255:	e8 66 1b 00 00       	call   140006dc0 <_ZdlPvy>
   14000525a:	48 8b 0b             	mov    (%rbx),%rcx
   14000525d:	48 8d 43 10          	lea    0x10(%rbx),%rax
   140005261:	48 39 c1             	cmp    %rax,%rcx
   140005264:	74 0d                	je     140005273 <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x233>
   140005266:	48 8b 53 10          	mov    0x10(%rbx),%rdx
   14000526a:	48 83 c2 01          	add    $0x1,%rdx
   14000526e:	e8 4d 1b 00 00       	call   140006dc0 <_ZdlPvy>
   140005273:	48 89 f9             	mov    %rdi,%rcx
   140005276:	e8 95 2c 00 00       	call   140007f10 <_Unwind_Resume>
   14000527b:	48 89 c7             	mov    %rax,%rdi
   14000527e:	eb da                	jmp    14000525a <_ZN15SignedMagnitude8toStringB5cxx11Ev+0x21a>

0000000140005280 <_ZN15SignedMagnitude15alignModuleWithES_>:
   140005280:	41 54                	push   %r12
   140005282:	55                   	push   %rbp
   140005283:	57                   	push   %rdi
   140005284:	56                   	push   %rsi
   140005285:	53                   	push   %rbx
   140005286:	48 83 ec 30          	sub    $0x30,%rsp
   14000528a:	48 89 cb             	mov    %rcx,%rbx
   14000528d:	48 89 d5             	mov    %rdx,%rbp
   140005290:	4d 89 c4             	mov    %r8,%r12
   140005293:	e8 a8 c6 ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140005298:	48 39 dd             	cmp    %rbx,%rbp
   14000529b:	74 0b                	je     1400052a8 <_ZN15SignedMagnitude15alignModuleWithES_+0x28>
   14000529d:	48 89 ea             	mov    %rbp,%rdx
   1400052a0:	48 89 d9             	mov    %rbx,%rcx
   1400052a3:	e8 98 f9 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400052a8:	8b 55 18             	mov    0x18(%rbp),%edx
   1400052ab:	41 8b 74 24 10       	mov    0x10(%r12),%esi
   1400052b0:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   1400052b5:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   1400052ba:	01 d6                	add    %edx,%esi
   1400052bc:	29 c6                	sub    %eax,%esi
   1400052be:	2b 73 10             	sub    0x10(%rbx),%esi
   1400052c1:	85 f6                	test   %esi,%esi
   1400052c3:	7e 3c                	jle    140005301 <_ZN15SignedMagnitude15alignModuleWithES_+0x81>
   1400052c5:	0f 1f 00             	nopl   (%rax)
   1400052c8:	31 d2                	xor    %edx,%edx
   1400052ca:	48 89 f9             	mov    %rdi,%rcx
   1400052cd:	e8 ae c3 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400052d2:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400052d7:	e8 dc 1a 00 00       	call   140006db8 <_Znwy>
   1400052dc:	48 89 c1             	mov    %rax,%rcx
   1400052df:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400052e4:	48 89 da             	mov    %rbx,%rdx
   1400052e7:	88 41 10             	mov    %al,0x10(%rcx)
   1400052ea:	e8 29 1b 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400052ef:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   1400052f4:	83 ee 01             	sub    $0x1,%esi
   1400052f7:	75 cf                	jne    1400052c8 <_ZN15SignedMagnitude15alignModuleWithES_+0x48>
   1400052f9:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   1400052fe:	8b 55 18             	mov    0x18(%rbp),%edx
   140005301:	29 d0                	sub    %edx,%eax
   140005303:	48 8d 7c 24 2f       	lea    0x2f(%rsp),%rdi
   140005308:	89 c6                	mov    %eax,%esi
   14000530a:	85 c0                	test   %eax,%eax
   14000530c:	7e 36                	jle    140005344 <_ZN15SignedMagnitude15alignModuleWithES_+0xc4>
   14000530e:	66 90                	xchg   %ax,%ax
   140005310:	31 d2                	xor    %edx,%edx
   140005312:	48 89 f9             	mov    %rdi,%rcx
   140005315:	e8 66 c3 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000531a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000531f:	48 8b 2b             	mov    (%rbx),%rbp
   140005322:	e8 91 1a 00 00       	call   140006db8 <_Znwy>
   140005327:	48 89 c1             	mov    %rax,%rcx
   14000532a:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   14000532f:	48 89 ea             	mov    %rbp,%rdx
   140005332:	88 41 10             	mov    %al,0x10(%rcx)
   140005335:	e8 de 1a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000533a:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   14000533f:	83 ee 01             	sub    $0x1,%esi
   140005342:	75 cc                	jne    140005310 <_ZN15SignedMagnitude15alignModuleWithES_+0x90>
   140005344:	48 89 d8             	mov    %rbx,%rax
   140005347:	48 83 c4 30          	add    $0x30,%rsp
   14000534b:	5b                   	pop    %rbx
   14000534c:	5e                   	pop    %rsi
   14000534d:	5f                   	pop    %rdi
   14000534e:	5d                   	pop    %rbp
   14000534f:	41 5c                	pop    %r12
   140005351:	c3                   	ret
   140005352:	48 89 c6             	mov    %rax,%rsi
   140005355:	48 89 d9             	mov    %rbx,%rcx
   140005358:	e8 83 c7 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000535d:	48 89 f1             	mov    %rsi,%rcx
   140005360:	e8 ab 2b 00 00       	call   140007f10 <_Unwind_Resume>
   140005365:	90                   	nop
   140005366:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000536d:	00 00 00 

0000000140005370 <_ZN15SignedMagnitudeeqES_>:
   140005370:	41 55                	push   %r13
   140005372:	41 54                	push   %r12
   140005374:	55                   	push   %rbp
   140005375:	57                   	push   %rdi
   140005376:	56                   	push   %rsi
   140005377:	53                   	push   %rbx
   140005378:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   14000537f:	31 c0                	xor    %eax,%eax
   140005381:	48 89 d7             	mov    %rdx,%rdi
   140005384:	48 89 cb             	mov    %rcx,%rbx
   140005387:	0f b6 51 1c          	movzbl 0x1c(%rcx),%edx
   14000538b:	3a 57 1c             	cmp    0x1c(%rdi),%dl
   14000538e:	74 10                	je     1400053a0 <_ZN15SignedMagnitudeeqES_+0x30>
   140005390:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140005397:	5b                   	pop    %rbx
   140005398:	5e                   	pop    %rsi
   140005399:	5f                   	pop    %rdi
   14000539a:	5d                   	pop    %rbp
   14000539b:	41 5c                	pop    %r12
   14000539d:	41 5d                	pop    %r13
   14000539f:	c3                   	ret
   1400053a0:	48 8d ac 24 90 00 00 	lea    0x90(%rsp),%rbp
   1400053a7:	00 
   1400053a8:	48 8b 31             	mov    (%rcx),%rsi
   1400053ab:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   1400053b2:	00 00 00 00 00 
   1400053b7:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400053bc:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400053c0:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   1400053c7:	00 
   1400053c8:	48 39 f1             	cmp    %rsi,%rcx
   1400053cb:	74 34                	je     140005401 <_ZN15SignedMagnitudeeqES_+0x91>
   1400053cd:	0f 1f 00             	nopl   (%rax)
   1400053d0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400053d5:	e8 de 19 00 00       	call   140006db8 <_Znwy>
   1400053da:	48 89 c1             	mov    %rax,%rcx
   1400053dd:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   1400053e1:	48 89 ea             	mov    %rbp,%rdx
   1400053e4:	88 41 10             	mov    %al,0x10(%rcx)
   1400053e7:	e8 2c 1a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400053ec:	48 8b 36             	mov    (%rsi),%rsi
   1400053ef:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   1400053f6:	00 01 
   1400053f8:	48 39 f3             	cmp    %rsi,%rbx
   1400053fb:	75 d3                	jne    1400053d0 <_ZN15SignedMagnitudeeqES_+0x60>
   1400053fd:	0f b6 53 1c          	movzbl 0x1c(%rbx),%edx
   140005401:	8b 43 18             	mov    0x18(%rbx),%eax
   140005404:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
   140005409:	88 94 24 ac 00 00 00 	mov    %dl,0xac(%rsp)
   140005410:	49 89 e8             	mov    %rbp,%r8
   140005413:	48 89 fa             	mov    %rdi,%rdx
   140005416:	4c 89 e9             	mov    %r13,%rcx
   140005419:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
   140005420:	e8 5b fe ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005425:	4c 8d 64 24 70       	lea    0x70(%rsp),%r12
   14000542a:	48 8b 37             	mov    (%rdi),%rsi
   14000542d:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140005434:	00 00 00 00 00 
   140005439:	66 49 0f 6e c4       	movq   %r12,%xmm0
   14000543e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005442:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140005447:	48 39 f7             	cmp    %rsi,%rdi
   14000544a:	74 31                	je     14000547d <_ZN15SignedMagnitudeeqES_+0x10d>
   14000544c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005450:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005455:	e8 5e 19 00 00       	call   140006db8 <_Znwy>
   14000545a:	48 89 c1             	mov    %rax,%rcx
   14000545d:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140005461:	4c 89 e2             	mov    %r12,%rdx
   140005464:	88 41 10             	mov    %al,0x10(%rcx)
   140005467:	e8 ac 19 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000546c:	48 8b 36             	mov    (%rsi),%rsi
   14000546f:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140005476:	00 01 
   140005478:	48 39 f7             	cmp    %rsi,%rdi
   14000547b:	75 d3                	jne    140005450 <_ZN15SignedMagnitudeeqES_+0xe0>
   14000547d:	8b 47 18             	mov    0x18(%rdi),%eax
   140005480:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
   140005485:	4d 89 e0             	mov    %r12,%r8
   140005488:	48 89 da             	mov    %rbx,%rdx
   14000548b:	48 89 f1             	mov    %rsi,%rcx
   14000548e:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
   140005495:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140005499:	88 84 24 8c 00 00 00 	mov    %al,0x8c(%rsp)
   1400054a0:	e8 db fd ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   1400054a5:	4c 89 ea             	mov    %r13,%rdx
   1400054a8:	48 89 f1             	mov    %rsi,%rcx
   1400054ab:	e8 b0 d3 ff ff       	call   140002860 <_ZN13NaturalBinaryeqES_>
   1400054b0:	48 89 f1             	mov    %rsi,%rcx
   1400054b3:	88 44 24 2f          	mov    %al,0x2f(%rsp)
   1400054b7:	e8 24 c6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400054bc:	4c 89 e1             	mov    %r12,%rcx
   1400054bf:	e8 1c c6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400054c4:	4c 89 e9             	mov    %r13,%rcx
   1400054c7:	e8 14 c6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400054cc:	48 89 e9             	mov    %rbp,%rcx
   1400054cf:	e8 0c c6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400054d4:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   1400054d9:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   1400054e0:	5b                   	pop    %rbx
   1400054e1:	5e                   	pop    %rsi
   1400054e2:	5f                   	pop    %rdi
   1400054e3:	5d                   	pop    %rbp
   1400054e4:	41 5c                	pop    %r12
   1400054e6:	41 5d                	pop    %r13
   1400054e8:	c3                   	ret
   1400054e9:	48 89 c3             	mov    %rax,%rbx
   1400054ec:	eb 42                	jmp    140005530 <_ZN15SignedMagnitudeeqES_+0x1c0>
   1400054ee:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   1400054f5:	00 
   1400054f6:	48 89 c3             	mov    %rax,%rbx
   1400054f9:	48 39 e9             	cmp    %rbp,%rcx
   1400054fc:	74 3a                	je     140005538 <_ZN15SignedMagnitudeeqES_+0x1c8>
   1400054fe:	48 8b 31             	mov    (%rcx),%rsi
   140005501:	ba 18 00 00 00       	mov    $0x18,%edx
   140005506:	e8 b5 18 00 00       	call   140006dc0 <_ZdlPvy>
   14000550b:	48 89 f1             	mov    %rsi,%rcx
   14000550e:	eb e9                	jmp    1400054f9 <_ZN15SignedMagnitudeeqES_+0x189>
   140005510:	48 89 c3             	mov    %rax,%rbx
   140005513:	eb 0b                	jmp    140005520 <_ZN15SignedMagnitudeeqES_+0x1b0>
   140005515:	48 89 f1             	mov    %rsi,%rcx
   140005518:	48 89 c3             	mov    %rax,%rbx
   14000551b:	e8 c0 c5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005520:	4c 89 e1             	mov    %r12,%rcx
   140005523:	e8 b8 c5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005528:	4c 89 e9             	mov    %r13,%rcx
   14000552b:	e8 b0 c5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005530:	48 89 e9             	mov    %rbp,%rcx
   140005533:	e8 a8 c5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005538:	48 89 d9             	mov    %rbx,%rcx
   14000553b:	e8 d0 29 00 00       	call   140007f10 <_Unwind_Resume>
   140005540:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140005545:	48 89 c3             	mov    %rax,%rbx
   140005548:	4c 39 e1             	cmp    %r12,%rcx
   14000554b:	74 db                	je     140005528 <_ZN15SignedMagnitudeeqES_+0x1b8>
   14000554d:	48 8b 31             	mov    (%rcx),%rsi
   140005550:	ba 18 00 00 00       	mov    $0x18,%edx
   140005555:	e8 66 18 00 00       	call   140006dc0 <_ZdlPvy>
   14000555a:	48 89 f1             	mov    %rsi,%rcx
   14000555d:	eb e9                	jmp    140005548 <_ZN15SignedMagnitudeeqES_+0x1d8>
   14000555f:	90                   	nop

0000000140005560 <_ZN15SignedMagnitudeltES_>:
   140005560:	41 55                	push   %r13
   140005562:	41 54                	push   %r12
   140005564:	55                   	push   %rbp
   140005565:	57                   	push   %rdi
   140005566:	56                   	push   %rsi
   140005567:	53                   	push   %rbx
   140005568:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
   14000556f:	0f b6 59 1c          	movzbl 0x1c(%rcx),%ebx
   140005573:	0f b6 42 1c          	movzbl 0x1c(%rdx),%eax
   140005577:	48 89 ce             	mov    %rcx,%rsi
   14000557a:	48 89 d7             	mov    %rdx,%rdi
   14000557d:	84 db                	test   %bl,%bl
   14000557f:	0f 84 4b 01 00 00    	je     1400056d0 <_ZN15SignedMagnitudeltES_+0x170>
   140005585:	84 c0                	test   %al,%al
   140005587:	0f 84 2c 01 00 00    	je     1400056b9 <_ZN15SignedMagnitudeltES_+0x159>
   14000558d:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140005594:	00 
   140005595:	48 8b 19             	mov    (%rcx),%rbx
   140005598:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   14000559f:	00 00 00 00 00 
   1400055a4:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400055a9:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400055ad:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   1400055b4:	00 
   1400055b5:	48 39 d9             	cmp    %rbx,%rcx
   1400055b8:	74 37                	je     1400055f1 <_ZN15SignedMagnitudeltES_+0x91>
   1400055ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400055c0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400055c5:	e8 ee 17 00 00       	call   140006db8 <_Znwy>
   1400055ca:	48 89 c1             	mov    %rax,%rcx
   1400055cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400055d1:	48 89 ea             	mov    %rbp,%rdx
   1400055d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400055d7:	e8 3c 18 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400055dc:	48 8b 1b             	mov    (%rbx),%rbx
   1400055df:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   1400055e6:	00 01 
   1400055e8:	48 39 de             	cmp    %rbx,%rsi
   1400055eb:	75 d3                	jne    1400055c0 <_ZN15SignedMagnitudeltES_+0x60>
   1400055ed:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   1400055f1:	8b 56 18             	mov    0x18(%rsi),%edx
   1400055f4:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   1400055f9:	49 89 e8             	mov    %rbp,%r8
   1400055fc:	88 84 24 9c 00 00 00 	mov    %al,0x9c(%rsp)
   140005603:	4c 89 e9             	mov    %r13,%rcx
   140005606:	89 94 24 98 00 00 00 	mov    %edx,0x98(%rsp)
   14000560d:	48 89 fa             	mov    %rdi,%rdx
   140005610:	e8 6b fc ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005615:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   14000561a:	48 8b 1f             	mov    (%rdi),%rbx
   14000561d:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140005624:	00 00 
   140005626:	66 49 0f 6e c4       	movq   %r12,%xmm0
   14000562b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000562f:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140005634:	48 39 df             	cmp    %rbx,%rdi
   140005637:	74 31                	je     14000566a <_ZN15SignedMagnitudeltES_+0x10a>
   140005639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140005640:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005645:	e8 6e 17 00 00       	call   140006db8 <_Znwy>
   14000564a:	48 89 c1             	mov    %rax,%rcx
   14000564d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005651:	4c 89 e2             	mov    %r12,%rdx
   140005654:	88 41 10             	mov    %al,0x10(%rcx)
   140005657:	e8 bc 17 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000565c:	48 8b 1b             	mov    (%rbx),%rbx
   14000565f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140005665:	48 39 df             	cmp    %rbx,%rdi
   140005668:	75 d6                	jne    140005640 <_ZN15SignedMagnitudeltES_+0xe0>
   14000566a:	8b 47 18             	mov    0x18(%rdi),%eax
   14000566d:	4d 89 e0             	mov    %r12,%r8
   140005670:	48 89 f2             	mov    %rsi,%rdx
   140005673:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140005677:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   14000567b:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005680:	48 89 f9             	mov    %rdi,%rcx
   140005683:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   140005687:	e8 f4 fb ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   14000568c:	4c 89 ea             	mov    %r13,%rdx
   14000568f:	48 89 f9             	mov    %rdi,%rcx
   140005692:	e8 19 d0 ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140005697:	48 89 f9             	mov    %rdi,%rcx
   14000569a:	89 c3                	mov    %eax,%ebx
   14000569c:	e8 3f c4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400056a1:	4c 89 e1             	mov    %r12,%rcx
   1400056a4:	e8 37 c4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400056a9:	4c 89 e9             	mov    %r13,%rcx
   1400056ac:	e8 2f c4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400056b1:	48 89 e9             	mov    %rbp,%rcx
   1400056b4:	e8 27 c4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400056b9:	89 d8                	mov    %ebx,%eax
   1400056bb:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
   1400056c2:	5b                   	pop    %rbx
   1400056c3:	5e                   	pop    %rsi
   1400056c4:	5f                   	pop    %rdi
   1400056c5:	5d                   	pop    %rbp
   1400056c6:	41 5c                	pop    %r12
   1400056c8:	41 5d                	pop    %r13
   1400056ca:	c3                   	ret
   1400056cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400056d0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   1400056d7:	00 
   1400056d8:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400056dd:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400056e1:	84 c0                	test   %al,%al
   1400056e3:	75 d4                	jne    1400056b9 <_ZN15SignedMagnitudeltES_+0x159>
   1400056e5:	48 8b 19             	mov    (%rcx),%rbx
   1400056e8:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   1400056ef:	00 
   1400056f0:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   1400056f7:	00 00 00 00 00 
   1400056fc:	48 39 d9             	cmp    %rbx,%rcx
   1400056ff:	74 31                	je     140005732 <_ZN15SignedMagnitudeltES_+0x1d2>
   140005701:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005706:	e8 ad 16 00 00       	call   140006db8 <_Znwy>
   14000570b:	48 89 c1             	mov    %rax,%rcx
   14000570e:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005712:	48 89 ea             	mov    %rbp,%rdx
   140005715:	88 41 10             	mov    %al,0x10(%rcx)
   140005718:	e8 fb 16 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000571d:	48 8b 1b             	mov    (%rbx),%rbx
   140005720:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   140005727:	00 01 
   140005729:	48 39 de             	cmp    %rbx,%rsi
   14000572c:	75 d3                	jne    140005701 <_ZN15SignedMagnitudeltES_+0x1a1>
   14000572e:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005732:	8b 56 18             	mov    0x18(%rsi),%edx
   140005735:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   14000573a:	49 89 e8             	mov    %rbp,%r8
   14000573d:	88 84 24 9c 00 00 00 	mov    %al,0x9c(%rsp)
   140005744:	4c 89 e9             	mov    %r13,%rcx
   140005747:	89 94 24 98 00 00 00 	mov    %edx,0x98(%rsp)
   14000574e:	48 89 fa             	mov    %rdi,%rdx
   140005751:	e8 2a fb ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005756:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   14000575b:	48 8b 1f             	mov    (%rdi),%rbx
   14000575e:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140005765:	00 00 
   140005767:	66 49 0f 6e c4       	movq   %r12,%xmm0
   14000576c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005770:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140005775:	48 39 df             	cmp    %rbx,%rdi
   140005778:	74 30                	je     1400057aa <_ZN15SignedMagnitudeltES_+0x24a>
   14000577a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140005780:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005785:	e8 2e 16 00 00       	call   140006db8 <_Znwy>
   14000578a:	48 89 c1             	mov    %rax,%rcx
   14000578d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005791:	4c 89 e2             	mov    %r12,%rdx
   140005794:	88 41 10             	mov    %al,0x10(%rcx)
   140005797:	e8 7c 16 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000579c:	48 8b 1b             	mov    (%rbx),%rbx
   14000579f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   1400057a5:	48 39 df             	cmp    %rbx,%rdi
   1400057a8:	75 d6                	jne    140005780 <_ZN15SignedMagnitudeltES_+0x220>
   1400057aa:	8b 47 18             	mov    0x18(%rdi),%eax
   1400057ad:	4d 89 e0             	mov    %r12,%r8
   1400057b0:	48 89 f2             	mov    %rsi,%rdx
   1400057b3:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400057b7:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   1400057bb:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   1400057c0:	48 89 f9             	mov    %rdi,%rcx
   1400057c3:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   1400057c7:	e8 b4 fa ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   1400057cc:	4c 89 ea             	mov    %r13,%rdx
   1400057cf:	48 89 f9             	mov    %rdi,%rcx
   1400057d2:	e8 39 cd ff ff       	call   140002510 <_ZN13NaturalBinaryltES_>
   1400057d7:	e9 bb fe ff ff       	jmp    140005697 <_ZN15SignedMagnitudeltES_+0x137>
   1400057dc:	48 89 c3             	mov    %rax,%rbx
   1400057df:	eb 1b                	jmp    1400057fc <_ZN15SignedMagnitudeltES_+0x29c>
   1400057e1:	48 89 f9             	mov    %rdi,%rcx
   1400057e4:	48 89 c3             	mov    %rax,%rbx
   1400057e7:	e8 f4 c2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400057ec:	4c 89 e1             	mov    %r12,%rcx
   1400057ef:	e8 ec c2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400057f4:	4c 89 e9             	mov    %r13,%rcx
   1400057f7:	e8 e4 c2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400057fc:	48 89 e9             	mov    %rbp,%rcx
   1400057ff:	e8 dc c2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005804:	48 89 d9             	mov    %rbx,%rcx
   140005807:	e8 04 27 00 00       	call   140007f10 <_Unwind_Resume>
   14000580c:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140005813:	00 
   140005814:	48 89 c3             	mov    %rax,%rbx
   140005817:	48 39 e9             	cmp    %rbp,%rcx
   14000581a:	74 e8                	je     140005804 <_ZN15SignedMagnitudeltES_+0x2a4>
   14000581c:	48 8b 31             	mov    (%rcx),%rsi
   14000581f:	ba 18 00 00 00       	mov    $0x18,%edx
   140005824:	e8 97 15 00 00       	call   140006dc0 <_ZdlPvy>
   140005829:	48 89 f1             	mov    %rsi,%rcx
   14000582c:	eb e9                	jmp    140005817 <_ZN15SignedMagnitudeltES_+0x2b7>
   14000582e:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140005835:	00 
   140005836:	48 89 c3             	mov    %rax,%rbx
   140005839:	48 39 e9             	cmp    %rbp,%rcx
   14000583c:	74 c6                	je     140005804 <_ZN15SignedMagnitudeltES_+0x2a4>
   14000583e:	48 8b 31             	mov    (%rcx),%rsi
   140005841:	ba 18 00 00 00       	mov    $0x18,%edx
   140005846:	e8 75 15 00 00       	call   140006dc0 <_ZdlPvy>
   14000584b:	48 89 f1             	mov    %rsi,%rcx
   14000584e:	eb e9                	jmp    140005839 <_ZN15SignedMagnitudeltES_+0x2d9>
   140005850:	eb 8a                	jmp    1400057dc <_ZN15SignedMagnitudeltES_+0x27c>
   140005852:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140005857:	48 89 c3             	mov    %rax,%rbx
   14000585a:	4c 39 e1             	cmp    %r12,%rcx
   14000585d:	74 95                	je     1400057f4 <_ZN15SignedMagnitudeltES_+0x294>
   14000585f:	48 8b 31             	mov    (%rcx),%rsi
   140005862:	ba 18 00 00 00       	mov    $0x18,%edx
   140005867:	e8 54 15 00 00       	call   140006dc0 <_ZdlPvy>
   14000586c:	48 89 f1             	mov    %rsi,%rcx
   14000586f:	eb e9                	jmp    14000585a <_ZN15SignedMagnitudeltES_+0x2fa>
   140005871:	48 89 c3             	mov    %rax,%rbx
   140005874:	e9 73 ff ff ff       	jmp    1400057ec <_ZN15SignedMagnitudeltES_+0x28c>
   140005879:	e9 63 ff ff ff       	jmp    1400057e1 <_ZN15SignedMagnitudeltES_+0x281>
   14000587e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140005883:	48 89 c3             	mov    %rax,%rbx
   140005886:	4c 39 e1             	cmp    %r12,%rcx
   140005889:	0f 84 65 ff ff ff    	je     1400057f4 <_ZN15SignedMagnitudeltES_+0x294>
   14000588f:	48 8b 31             	mov    (%rcx),%rsi
   140005892:	ba 18 00 00 00       	mov    $0x18,%edx
   140005897:	e8 24 15 00 00       	call   140006dc0 <_ZdlPvy>
   14000589c:	48 89 f1             	mov    %rsi,%rcx
   14000589f:	eb e5                	jmp    140005886 <_ZN15SignedMagnitudeltES_+0x326>
   1400058a1:	eb ce                	jmp    140005871 <_ZN15SignedMagnitudeltES_+0x311>
   1400058a3:	90                   	nop
   1400058a4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400058ab:	00 00 00 00 
   1400058af:	90                   	nop

00000001400058b0 <_ZN15SignedMagnitudeleES_>:
   1400058b0:	41 54                	push   %r12
   1400058b2:	55                   	push   %rbp
   1400058b3:	57                   	push   %rdi
   1400058b4:	56                   	push   %rsi
   1400058b5:	53                   	push   %rbx
   1400058b6:	48 83 ec 60          	sub    $0x60,%rsp
   1400058ba:	48 8b 1a             	mov    (%rdx),%rbx
   1400058bd:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   1400058c2:	48 89 cd             	mov    %rcx,%rbp
   1400058c5:	48 89 d6             	mov    %rdx,%rsi
   1400058c8:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400058cf:	00 00 
   1400058d1:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   1400058d6:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400058da:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400058df:	48 39 da             	cmp    %rbx,%rdx
   1400058e2:	74 2e                	je     140005912 <_ZN15SignedMagnitudeleES_+0x62>
   1400058e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400058e8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400058ed:	e8 c6 14 00 00       	call   140006db8 <_Znwy>
   1400058f2:	48 89 c1             	mov    %rax,%rcx
   1400058f5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400058f9:	48 89 fa             	mov    %rdi,%rdx
   1400058fc:	88 41 10             	mov    %al,0x10(%rcx)
   1400058ff:	e8 14 15 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005904:	48 8b 1b             	mov    (%rbx),%rbx
   140005907:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   14000590d:	48 39 de             	cmp    %rbx,%rsi
   140005910:	75 d6                	jne    1400058e8 <_ZN15SignedMagnitudeleES_+0x38>
   140005912:	8b 46 18             	mov    0x18(%rsi),%eax
   140005915:	48 89 fa             	mov    %rdi,%rdx
   140005918:	48 89 e9             	mov    %rbp,%rcx
   14000591b:	89 44 24 38          	mov    %eax,0x38(%rsp)
   14000591f:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005923:	88 44 24 3c          	mov    %al,0x3c(%rsp)
   140005927:	e8 44 fa ff ff       	call   140005370 <_ZN15SignedMagnitudeeqES_>
   14000592c:	89 c3                	mov    %eax,%ebx
   14000592e:	84 c0                	test   %al,%al
   140005930:	75 7c                	jne    1400059ae <_ZN15SignedMagnitudeleES_+0xfe>
   140005932:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140005937:	48 8b 1e             	mov    (%rsi),%rbx
   14000593a:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140005941:	00 00 
   140005943:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005948:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000594c:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140005951:	48 39 de             	cmp    %rbx,%rsi
   140005954:	74 34                	je     14000598a <_ZN15SignedMagnitudeleES_+0xda>
   140005956:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000595d:	00 00 00 
   140005960:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005965:	e8 4e 14 00 00       	call   140006db8 <_Znwy>
   14000596a:	48 89 c1             	mov    %rax,%rcx
   14000596d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005971:	4c 89 e2             	mov    %r12,%rdx
   140005974:	88 41 10             	mov    %al,0x10(%rcx)
   140005977:	e8 9c 14 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000597c:	48 8b 1b             	mov    (%rbx),%rbx
   14000597f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140005985:	48 39 de             	cmp    %rbx,%rsi
   140005988:	75 d6                	jne    140005960 <_ZN15SignedMagnitudeleES_+0xb0>
   14000598a:	8b 46 18             	mov    0x18(%rsi),%eax
   14000598d:	4c 89 e2             	mov    %r12,%rdx
   140005990:	48 89 e9             	mov    %rbp,%rcx
   140005993:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140005997:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   14000599b:	88 44 24 5c          	mov    %al,0x5c(%rsp)
   14000599f:	e8 bc fb ff ff       	call   140005560 <_ZN15SignedMagnitudeltES_>
   1400059a4:	4c 89 e1             	mov    %r12,%rcx
   1400059a7:	89 c3                	mov    %eax,%ebx
   1400059a9:	e8 32 c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059ae:	48 89 f9             	mov    %rdi,%rcx
   1400059b1:	e8 2a c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059b6:	89 d8                	mov    %ebx,%eax
   1400059b8:	48 83 c4 60          	add    $0x60,%rsp
   1400059bc:	5b                   	pop    %rbx
   1400059bd:	5e                   	pop    %rsi
   1400059be:	5f                   	pop    %rdi
   1400059bf:	5d                   	pop    %rbp
   1400059c0:	41 5c                	pop    %r12
   1400059c2:	c3                   	ret
   1400059c3:	4c 89 e1             	mov    %r12,%rcx
   1400059c6:	48 89 c3             	mov    %rax,%rbx
   1400059c9:	e8 12 c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059ce:	48 89 f9             	mov    %rdi,%rcx
   1400059d1:	e8 0a c1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400059d6:	48 89 d9             	mov    %rbx,%rcx
   1400059d9:	e8 32 25 00 00       	call   140007f10 <_Unwind_Resume>
   1400059de:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   1400059e3:	48 89 c3             	mov    %rax,%rbx
   1400059e6:	4c 39 e1             	cmp    %r12,%rcx
   1400059e9:	74 e3                	je     1400059ce <_ZN15SignedMagnitudeleES_+0x11e>
   1400059eb:	48 8b 31             	mov    (%rcx),%rsi
   1400059ee:	ba 18 00 00 00       	mov    $0x18,%edx
   1400059f3:	e8 c8 13 00 00       	call   140006dc0 <_ZdlPvy>
   1400059f8:	48 89 f1             	mov    %rsi,%rcx
   1400059fb:	eb e9                	jmp    1400059e6 <_ZN15SignedMagnitudeleES_+0x136>
   1400059fd:	48 89 c3             	mov    %rax,%rbx
   140005a00:	eb cc                	jmp    1400059ce <_ZN15SignedMagnitudeleES_+0x11e>
   140005a02:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005a07:	48 89 c3             	mov    %rax,%rbx
   140005a0a:	48 39 f9             	cmp    %rdi,%rcx
   140005a0d:	74 c7                	je     1400059d6 <_ZN15SignedMagnitudeleES_+0x126>
   140005a0f:	48 8b 31             	mov    (%rcx),%rsi
   140005a12:	ba 18 00 00 00       	mov    $0x18,%edx
   140005a17:	e8 a4 13 00 00       	call   140006dc0 <_ZdlPvy>
   140005a1c:	48 89 f1             	mov    %rsi,%rcx
   140005a1f:	eb e9                	jmp    140005a0a <_ZN15SignedMagnitudeleES_+0x15a>
   140005a21:	90                   	nop
   140005a22:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005a29:	00 00 00 00 
   140005a2d:	0f 1f 00             	nopl   (%rax)

0000000140005a30 <_ZN15SignedMagnitudegtES_>:
   140005a30:	41 56                	push   %r14
   140005a32:	41 55                	push   %r13
   140005a34:	41 54                	push   %r12
   140005a36:	55                   	push   %rbp
   140005a37:	57                   	push   %rdi
   140005a38:	56                   	push   %rsi
   140005a39:	53                   	push   %rbx
   140005a3a:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
   140005a41:	80 79 1c 00          	cmpb   $0x0,0x1c(%rcx)
   140005a45:	44 0f b6 72 1c       	movzbl 0x1c(%rdx),%r14d
   140005a4a:	48 89 ce             	mov    %rcx,%rsi
   140005a4d:	48 89 d7             	mov    %rdx,%rdi
   140005a50:	0f 84 4a 01 00 00    	je     140005ba0 <_ZN15SignedMagnitudegtES_+0x170>
   140005a56:	45 84 f6             	test   %r14b,%r14b
   140005a59:	0f 84 2b 01 00 00    	je     140005b8a <_ZN15SignedMagnitudegtES_+0x15a>
   140005a5f:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140005a66:	00 
   140005a67:	48 8b 19             	mov    (%rcx),%rbx
   140005a6a:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140005a71:	00 00 00 00 00 
   140005a76:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140005a7b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005a7f:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140005a86:	00 
   140005a87:	48 39 d9             	cmp    %rbx,%rcx
   140005a8a:	74 36                	je     140005ac2 <_ZN15SignedMagnitudegtES_+0x92>
   140005a8c:	0f 1f 40 00          	nopl   0x0(%rax)
   140005a90:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005a95:	e8 1e 13 00 00       	call   140006db8 <_Znwy>
   140005a9a:	48 89 c1             	mov    %rax,%rcx
   140005a9d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005aa1:	48 89 ea             	mov    %rbp,%rdx
   140005aa4:	88 41 10             	mov    %al,0x10(%rcx)
   140005aa7:	e8 6c 13 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005aac:	48 8b 1b             	mov    (%rbx),%rbx
   140005aaf:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   140005ab6:	00 01 
   140005ab8:	48 39 de             	cmp    %rbx,%rsi
   140005abb:	75 d3                	jne    140005a90 <_ZN15SignedMagnitudegtES_+0x60>
   140005abd:	44 0f b6 76 1c       	movzbl 0x1c(%rsi),%r14d
   140005ac2:	8b 46 18             	mov    0x18(%rsi),%eax
   140005ac5:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140005aca:	49 89 e8             	mov    %rbp,%r8
   140005acd:	48 89 fa             	mov    %rdi,%rdx
   140005ad0:	4c 89 e9             	mov    %r13,%rcx
   140005ad3:	44 88 b4 24 9c 00 00 	mov    %r14b,0x9c(%rsp)
   140005ada:	00 
   140005adb:	89 84 24 98 00 00 00 	mov    %eax,0x98(%rsp)
   140005ae2:	e8 99 f7 ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005ae7:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   140005aec:	48 8b 1f             	mov    (%rdi),%rbx
   140005aef:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140005af6:	00 00 
   140005af8:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005afd:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005b01:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140005b06:	48 39 df             	cmp    %rbx,%rdi
   140005b09:	74 2f                	je     140005b3a <_ZN15SignedMagnitudegtES_+0x10a>
   140005b0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005b10:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005b15:	e8 9e 12 00 00       	call   140006db8 <_Znwy>
   140005b1a:	48 89 c1             	mov    %rax,%rcx
   140005b1d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005b21:	4c 89 e2             	mov    %r12,%rdx
   140005b24:	88 41 10             	mov    %al,0x10(%rcx)
   140005b27:	e8 ec 12 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005b2c:	48 8b 1b             	mov    (%rbx),%rbx
   140005b2f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140005b35:	48 39 df             	cmp    %rbx,%rdi
   140005b38:	75 d6                	jne    140005b10 <_ZN15SignedMagnitudegtES_+0xe0>
   140005b3a:	8b 47 18             	mov    0x18(%rdi),%eax
   140005b3d:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140005b42:	4d 89 e0             	mov    %r12,%r8
   140005b45:	48 89 f2             	mov    %rsi,%rdx
   140005b48:	48 89 d9             	mov    %rbx,%rcx
   140005b4b:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140005b4f:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140005b53:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   140005b57:	e8 24 f7 ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005b5c:	4c 89 ea             	mov    %r13,%rdx
   140005b5f:	48 89 d9             	mov    %rbx,%rcx
   140005b62:	e8 a9 c9 ff ff       	call   140002510 <_ZN13NaturalBinaryltES_>
   140005b67:	48 89 d9             	mov    %rbx,%rcx
   140005b6a:	41 89 c6             	mov    %eax,%r14d
   140005b6d:	e8 6e bf ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005b72:	4c 89 e1             	mov    %r12,%rcx
   140005b75:	e8 66 bf ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005b7a:	4c 89 e9             	mov    %r13,%rcx
   140005b7d:	e8 5e bf ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005b82:	48 89 e9             	mov    %rbp,%rcx
   140005b85:	e8 56 bf ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005b8a:	44 89 f0             	mov    %r14d,%eax
   140005b8d:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
   140005b94:	5b                   	pop    %rbx
   140005b95:	5e                   	pop    %rsi
   140005b96:	5f                   	pop    %rdi
   140005b97:	5d                   	pop    %rbp
   140005b98:	41 5c                	pop    %r12
   140005b9a:	41 5d                	pop    %r13
   140005b9c:	41 5e                	pop    %r14
   140005b9e:	c3                   	ret
   140005b9f:	90                   	nop
   140005ba0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140005ba7:	00 
   140005ba8:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140005bad:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005bb1:	45 84 f6             	test   %r14b,%r14b
   140005bb4:	75 d4                	jne    140005b8a <_ZN15SignedMagnitudegtES_+0x15a>
   140005bb6:	48 8b 19             	mov    (%rcx),%rbx
   140005bb9:	0f 11 84 24 80 00 00 	movups %xmm0,0x80(%rsp)
   140005bc0:	00 
   140005bc1:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
   140005bc8:	00 00 00 00 00 
   140005bcd:	48 39 d9             	cmp    %rbx,%rcx
   140005bd0:	74 32                	je     140005c04 <_ZN15SignedMagnitudegtES_+0x1d4>
   140005bd2:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005bd7:	e8 dc 11 00 00       	call   140006db8 <_Znwy>
   140005bdc:	48 89 c1             	mov    %rax,%rcx
   140005bdf:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005be3:	48 89 ea             	mov    %rbp,%rdx
   140005be6:	88 41 10             	mov    %al,0x10(%rcx)
   140005be9:	e8 2a 12 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005bee:	48 8b 1b             	mov    (%rbx),%rbx
   140005bf1:	48 83 84 24 90 00 00 	addq   $0x1,0x90(%rsp)
   140005bf8:	00 01 
   140005bfa:	48 39 de             	cmp    %rbx,%rsi
   140005bfd:	75 d3                	jne    140005bd2 <_ZN15SignedMagnitudegtES_+0x1a2>
   140005bff:	44 0f b6 76 1c       	movzbl 0x1c(%rsi),%r14d
   140005c04:	8b 46 18             	mov    0x18(%rsi),%eax
   140005c07:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   140005c0c:	49 89 e8             	mov    %rbp,%r8
   140005c0f:	48 89 fa             	mov    %rdi,%rdx
   140005c12:	4c 89 e9             	mov    %r13,%rcx
   140005c15:	44 88 b4 24 9c 00 00 	mov    %r14b,0x9c(%rsp)
   140005c1c:	00 
   140005c1d:	89 84 24 98 00 00 00 	mov    %eax,0x98(%rsp)
   140005c24:	e8 57 f6 ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005c29:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
   140005c2e:	48 8b 1f             	mov    (%rdi),%rbx
   140005c31:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   140005c38:	00 00 
   140005c3a:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005c3f:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005c43:	0f 11 44 24 60       	movups %xmm0,0x60(%rsp)
   140005c48:	48 39 df             	cmp    %rbx,%rdi
   140005c4b:	74 2d                	je     140005c7a <_ZN15SignedMagnitudegtES_+0x24a>
   140005c4d:	0f 1f 00             	nopl   (%rax)
   140005c50:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005c55:	e8 5e 11 00 00       	call   140006db8 <_Znwy>
   140005c5a:	48 89 c1             	mov    %rax,%rcx
   140005c5d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005c61:	4c 89 e2             	mov    %r12,%rdx
   140005c64:	88 41 10             	mov    %al,0x10(%rcx)
   140005c67:	e8 ac 11 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005c6c:	48 8b 1b             	mov    (%rbx),%rbx
   140005c6f:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140005c75:	48 39 df             	cmp    %rbx,%rdi
   140005c78:	75 d6                	jne    140005c50 <_ZN15SignedMagnitudegtES_+0x220>
   140005c7a:	8b 47 18             	mov    0x18(%rdi),%eax
   140005c7d:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
   140005c82:	4d 89 e0             	mov    %r12,%r8
   140005c85:	48 89 f2             	mov    %rsi,%rdx
   140005c88:	48 89 d9             	mov    %rbx,%rcx
   140005c8b:	89 44 24 78          	mov    %eax,0x78(%rsp)
   140005c8f:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   140005c93:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   140005c97:	e8 e4 f5 ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005c9c:	4c 89 ea             	mov    %r13,%rdx
   140005c9f:	48 89 d9             	mov    %rbx,%rcx
   140005ca2:	e8 09 ca ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140005ca7:	e9 bb fe ff ff       	jmp    140005b67 <_ZN15SignedMagnitudegtES_+0x137>
   140005cac:	48 89 c3             	mov    %rax,%rbx
   140005caf:	48 89 e9             	mov    %rbp,%rcx
   140005cb2:	e8 29 be ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005cb7:	48 89 d9             	mov    %rbx,%rcx
   140005cba:	e8 51 22 00 00       	call   140007f10 <_Unwind_Resume>
   140005cbf:	48 89 c6             	mov    %rax,%rsi
   140005cc2:	48 89 d9             	mov    %rbx,%rcx
   140005cc5:	e8 16 be ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005cca:	48 89 f3             	mov    %rsi,%rbx
   140005ccd:	4c 89 e1             	mov    %r12,%rcx
   140005cd0:	e8 0b be ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005cd5:	4c 89 e9             	mov    %r13,%rcx
   140005cd8:	e8 03 be ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005cdd:	eb d0                	jmp    140005caf <_ZN15SignedMagnitudegtES_+0x27f>
   140005cdf:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140005ce6:	00 
   140005ce7:	48 89 c3             	mov    %rax,%rbx
   140005cea:	48 39 e9             	cmp    %rbp,%rcx
   140005ced:	74 c8                	je     140005cb7 <_ZN15SignedMagnitudegtES_+0x287>
   140005cef:	48 8b 31             	mov    (%rcx),%rsi
   140005cf2:	ba 18 00 00 00       	mov    $0x18,%edx
   140005cf7:	e8 c4 10 00 00       	call   140006dc0 <_ZdlPvy>
   140005cfc:	48 89 f1             	mov    %rsi,%rcx
   140005cff:	eb e9                	jmp    140005cea <_ZN15SignedMagnitudegtES_+0x2ba>
   140005d01:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
   140005d08:	00 
   140005d09:	48 89 c3             	mov    %rax,%rbx
   140005d0c:	48 39 e9             	cmp    %rbp,%rcx
   140005d0f:	74 a6                	je     140005cb7 <_ZN15SignedMagnitudegtES_+0x287>
   140005d11:	48 8b 31             	mov    (%rcx),%rsi
   140005d14:	ba 18 00 00 00       	mov    $0x18,%edx
   140005d19:	e8 a2 10 00 00       	call   140006dc0 <_ZdlPvy>
   140005d1e:	48 89 f1             	mov    %rsi,%rcx
   140005d21:	eb e9                	jmp    140005d0c <_ZN15SignedMagnitudegtES_+0x2dc>
   140005d23:	eb 87                	jmp    140005cac <_ZN15SignedMagnitudegtES_+0x27c>
   140005d25:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140005d2a:	48 89 c3             	mov    %rax,%rbx
   140005d2d:	4c 39 e1             	cmp    %r12,%rcx
   140005d30:	74 a3                	je     140005cd5 <_ZN15SignedMagnitudegtES_+0x2a5>
   140005d32:	48 8b 31             	mov    (%rcx),%rsi
   140005d35:	ba 18 00 00 00       	mov    $0x18,%edx
   140005d3a:	e8 81 10 00 00       	call   140006dc0 <_ZdlPvy>
   140005d3f:	48 89 f1             	mov    %rsi,%rcx
   140005d42:	eb e9                	jmp    140005d2d <_ZN15SignedMagnitudegtES_+0x2fd>
   140005d44:	48 89 c3             	mov    %rax,%rbx
   140005d47:	eb 84                	jmp    140005ccd <_ZN15SignedMagnitudegtES_+0x29d>
   140005d49:	e9 71 ff ff ff       	jmp    140005cbf <_ZN15SignedMagnitudegtES_+0x28f>
   140005d4e:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140005d53:	48 89 c3             	mov    %rax,%rbx
   140005d56:	4c 39 e1             	cmp    %r12,%rcx
   140005d59:	0f 84 76 ff ff ff    	je     140005cd5 <_ZN15SignedMagnitudegtES_+0x2a5>
   140005d5f:	48 8b 31             	mov    (%rcx),%rsi
   140005d62:	ba 18 00 00 00       	mov    $0x18,%edx
   140005d67:	e8 54 10 00 00       	call   140006dc0 <_ZdlPvy>
   140005d6c:	48 89 f1             	mov    %rsi,%rcx
   140005d6f:	eb e5                	jmp    140005d56 <_ZN15SignedMagnitudegtES_+0x326>
   140005d71:	eb d1                	jmp    140005d44 <_ZN15SignedMagnitudegtES_+0x314>
   140005d73:	90                   	nop
   140005d74:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005d7b:	00 00 00 00 
   140005d7f:	90                   	nop

0000000140005d80 <_ZN15SignedMagnitudegeES_>:
   140005d80:	41 54                	push   %r12
   140005d82:	55                   	push   %rbp
   140005d83:	57                   	push   %rdi
   140005d84:	56                   	push   %rsi
   140005d85:	53                   	push   %rbx
   140005d86:	48 83 ec 60          	sub    $0x60,%rsp
   140005d8a:	48 8b 1a             	mov    (%rdx),%rbx
   140005d8d:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   140005d92:	48 89 cd             	mov    %rcx,%rbp
   140005d95:	48 89 d6             	mov    %rdx,%rsi
   140005d98:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140005d9f:	00 00 
   140005da1:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140005da6:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005daa:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   140005daf:	48 39 da             	cmp    %rbx,%rdx
   140005db2:	74 2e                	je     140005de2 <_ZN15SignedMagnitudegeES_+0x62>
   140005db4:	0f 1f 40 00          	nopl   0x0(%rax)
   140005db8:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005dbd:	e8 f6 0f 00 00       	call   140006db8 <_Znwy>
   140005dc2:	48 89 c1             	mov    %rax,%rcx
   140005dc5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005dc9:	48 89 fa             	mov    %rdi,%rdx
   140005dcc:	88 41 10             	mov    %al,0x10(%rcx)
   140005dcf:	e8 44 10 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005dd4:	48 8b 1b             	mov    (%rbx),%rbx
   140005dd7:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   140005ddd:	48 39 de             	cmp    %rbx,%rsi
   140005de0:	75 d6                	jne    140005db8 <_ZN15SignedMagnitudegeES_+0x38>
   140005de2:	8b 46 18             	mov    0x18(%rsi),%eax
   140005de5:	48 89 fa             	mov    %rdi,%rdx
   140005de8:	48 89 e9             	mov    %rbp,%rcx
   140005deb:	89 44 24 38          	mov    %eax,0x38(%rsp)
   140005def:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005df3:	88 44 24 3c          	mov    %al,0x3c(%rsp)
   140005df7:	e8 74 f5 ff ff       	call   140005370 <_ZN15SignedMagnitudeeqES_>
   140005dfc:	89 c3                	mov    %eax,%ebx
   140005dfe:	84 c0                	test   %al,%al
   140005e00:	75 7c                	jne    140005e7e <_ZN15SignedMagnitudegeES_+0xfe>
   140005e02:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140005e07:	48 8b 1e             	mov    (%rsi),%rbx
   140005e0a:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   140005e11:	00 00 
   140005e13:	66 49 0f 6e c4       	movq   %r12,%xmm0
   140005e18:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005e1c:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140005e21:	48 39 de             	cmp    %rbx,%rsi
   140005e24:	74 34                	je     140005e5a <_ZN15SignedMagnitudegeES_+0xda>
   140005e26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140005e2d:	00 00 00 
   140005e30:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005e35:	e8 7e 0f 00 00       	call   140006db8 <_Znwy>
   140005e3a:	48 89 c1             	mov    %rax,%rcx
   140005e3d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140005e41:	4c 89 e2             	mov    %r12,%rdx
   140005e44:	88 41 10             	mov    %al,0x10(%rcx)
   140005e47:	e8 cc 0f 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005e4c:	48 8b 1b             	mov    (%rbx),%rbx
   140005e4f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140005e55:	48 39 de             	cmp    %rbx,%rsi
   140005e58:	75 d6                	jne    140005e30 <_ZN15SignedMagnitudegeES_+0xb0>
   140005e5a:	8b 46 18             	mov    0x18(%rsi),%eax
   140005e5d:	4c 89 e2             	mov    %r12,%rdx
   140005e60:	48 89 e9             	mov    %rbp,%rcx
   140005e63:	89 44 24 58          	mov    %eax,0x58(%rsp)
   140005e67:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140005e6b:	88 44 24 5c          	mov    %al,0x5c(%rsp)
   140005e6f:	e8 bc fb ff ff       	call   140005a30 <_ZN15SignedMagnitudegtES_>
   140005e74:	4c 89 e1             	mov    %r12,%rcx
   140005e77:	89 c3                	mov    %eax,%ebx
   140005e79:	e8 62 bc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005e7e:	48 89 f9             	mov    %rdi,%rcx
   140005e81:	e8 5a bc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005e86:	89 d8                	mov    %ebx,%eax
   140005e88:	48 83 c4 60          	add    $0x60,%rsp
   140005e8c:	5b                   	pop    %rbx
   140005e8d:	5e                   	pop    %rsi
   140005e8e:	5f                   	pop    %rdi
   140005e8f:	5d                   	pop    %rbp
   140005e90:	41 5c                	pop    %r12
   140005e92:	c3                   	ret
   140005e93:	4c 89 e1             	mov    %r12,%rcx
   140005e96:	48 89 c3             	mov    %rax,%rbx
   140005e99:	e8 42 bc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005e9e:	48 89 f9             	mov    %rdi,%rcx
   140005ea1:	e8 3a bc ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005ea6:	48 89 d9             	mov    %rbx,%rcx
   140005ea9:	e8 62 20 00 00       	call   140007f10 <_Unwind_Resume>
   140005eae:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140005eb3:	48 89 c3             	mov    %rax,%rbx
   140005eb6:	4c 39 e1             	cmp    %r12,%rcx
   140005eb9:	74 e3                	je     140005e9e <_ZN15SignedMagnitudegeES_+0x11e>
   140005ebb:	48 8b 31             	mov    (%rcx),%rsi
   140005ebe:	ba 18 00 00 00       	mov    $0x18,%edx
   140005ec3:	e8 f8 0e 00 00       	call   140006dc0 <_ZdlPvy>
   140005ec8:	48 89 f1             	mov    %rsi,%rcx
   140005ecb:	eb e9                	jmp    140005eb6 <_ZN15SignedMagnitudegeES_+0x136>
   140005ecd:	48 89 c3             	mov    %rax,%rbx
   140005ed0:	eb cc                	jmp    140005e9e <_ZN15SignedMagnitudegeES_+0x11e>
   140005ed2:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140005ed7:	48 89 c3             	mov    %rax,%rbx
   140005eda:	48 39 f9             	cmp    %rdi,%rcx
   140005edd:	74 c7                	je     140005ea6 <_ZN15SignedMagnitudegeES_+0x126>
   140005edf:	48 8b 31             	mov    (%rcx),%rsi
   140005ee2:	ba 18 00 00 00       	mov    $0x18,%edx
   140005ee7:	e8 d4 0e 00 00       	call   140006dc0 <_ZdlPvy>
   140005eec:	48 89 f1             	mov    %rsi,%rcx
   140005eef:	eb e9                	jmp    140005eda <_ZN15SignedMagnitudegeES_+0x15a>
   140005ef1:	90                   	nop
   140005ef2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140005ef9:	00 00 00 00 
   140005efd:	0f 1f 00             	nopl   (%rax)

0000000140005f00 <_ZN15SignedMagnitudeplES_>:
   140005f00:	41 57                	push   %r15
   140005f02:	41 56                	push   %r14
   140005f04:	41 55                	push   %r13
   140005f06:	41 54                	push   %r12
   140005f08:	55                   	push   %rbp
   140005f09:	57                   	push   %rdi
   140005f0a:	56                   	push   %rsi
   140005f0b:	53                   	push   %rbx
   140005f0c:	48 81 ec c8 00 00 00 	sub    $0xc8,%rsp
   140005f13:	0f 11 b4 24 b0 00 00 	movups %xmm6,0xb0(%rsp)
   140005f1a:	00 
   140005f1b:	49 8b 28             	mov    (%r8),%rbp
   140005f1e:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
   140005f23:	49 89 cc             	mov    %rcx,%r12
   140005f26:	48 89 d7             	mov    %rdx,%rdi
   140005f29:	4c 89 c3             	mov    %r8,%rbx
   140005f2c:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   140005f31:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140005f38:	00 00 00 00 00 
   140005f3d:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140005f41:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140005f46:	49 39 e8             	cmp    %rbp,%r8
   140005f49:	74 33                	je     140005f7e <_ZN15SignedMagnitudeplES_+0x7e>
   140005f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005f50:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005f55:	e8 5e 0e 00 00       	call   140006db8 <_Znwy>
   140005f5a:	48 89 c1             	mov    %rax,%rcx
   140005f5d:	0f b6 45 10          	movzbl 0x10(%rbp),%eax
   140005f61:	48 89 f2             	mov    %rsi,%rdx
   140005f64:	88 41 10             	mov    %al,0x10(%rcx)
   140005f67:	e8 ac 0e 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005f6c:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
   140005f70:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   140005f77:	00 01 
   140005f79:	48 39 eb             	cmp    %rbp,%rbx
   140005f7c:	75 d2                	jne    140005f50 <_ZN15SignedMagnitudeplES_+0x50>
   140005f7e:	8b 43 18             	mov    0x18(%rbx),%eax
   140005f81:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
   140005f86:	49 89 f0             	mov    %rsi,%r8
   140005f89:	48 89 fa             	mov    %rdi,%rdx
   140005f8c:	4c 89 f1             	mov    %r14,%rcx
   140005f8f:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
   140005f96:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   140005f9a:	88 84 24 8c 00 00 00 	mov    %al,0x8c(%rsp)
   140005fa1:	e8 da f2 ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140005fa6:	48 8d ac 24 90 00 00 	lea    0x90(%rsp),%rbp
   140005fad:	00 
   140005fae:	48 89 f1             	mov    %rsi,%rcx
   140005fb1:	e8 2a bb ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140005fb6:	66 48 0f 6e f5       	movq   %rbp,%xmm6
   140005fbb:	4c 8b 2f             	mov    (%rdi),%r13
   140005fbe:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   140005fc5:	00 00 00 00 00 
   140005fca:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140005fce:	0f 11 b4 24 90 00 00 	movups %xmm6,0x90(%rsp)
   140005fd5:	00 
   140005fd6:	4c 39 ef             	cmp    %r13,%rdi
   140005fd9:	74 34                	je     14000600f <_ZN15SignedMagnitudeplES_+0x10f>
   140005fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140005fe0:	b9 18 00 00 00       	mov    $0x18,%ecx
   140005fe5:	e8 ce 0d 00 00       	call   140006db8 <_Znwy>
   140005fea:	48 89 c1             	mov    %rax,%rcx
   140005fed:	41 0f b6 45 10       	movzbl 0x10(%r13),%eax
   140005ff2:	48 89 ea             	mov    %rbp,%rdx
   140005ff5:	88 41 10             	mov    %al,0x10(%rcx)
   140005ff8:	e8 1b 0e 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140005ffd:	4d 8b 6d 00          	mov    0x0(%r13),%r13
   140006001:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   140006008:	00 01 
   14000600a:	4c 39 ef             	cmp    %r13,%rdi
   14000600d:	75 d1                	jne    140005fe0 <_ZN15SignedMagnitudeplES_+0xe0>
   14000600f:	8b 47 18             	mov    0x18(%rdi),%eax
   140006012:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
   140006017:	49 89 e8             	mov    %rbp,%r8
   14000601a:	48 89 da             	mov    %rbx,%rdx
   14000601d:	4c 89 e9             	mov    %r13,%rcx
   140006020:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
   140006027:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   14000602b:	88 84 24 ac 00 00 00 	mov    %al,0xac(%rsp)
   140006032:	e8 49 f2 ff ff       	call   140005280 <_ZN15SignedMagnitude15alignModuleWithES_>
   140006037:	48 89 e9             	mov    %rbp,%rcx
   14000603a:	e8 a1 ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000603f:	4c 89 e1             	mov    %r12,%rcx
   140006042:	e8 f9 b8 ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   140006047:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   14000604d:	31 d2                	xor    %edx,%edx
   14000604f:	48 89 e9             	mov    %rbp,%rcx
   140006052:	e8 f9 b8 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140006057:	48 89 ea             	mov    %rbp,%rdx
   14000605a:	4c 89 e1             	mov    %r12,%rcx
   14000605d:	e8 de eb ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140006062:	48 89 e9             	mov    %rbp,%rcx
   140006065:	e8 76 ba ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000606a:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
   14000606e:	41 c7 44 24 18 00 00 	movl   $0x0,0x18(%r12)
   140006075:	00 00 
   140006077:	38 47 1c             	cmp    %al,0x1c(%rdi)
   14000607a:	0f 84 f8 00 00 00    	je     140006178 <_ZN15SignedMagnitudeplES_+0x278>
   140006080:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140006085:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   14000608a:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   140006091:	00 00 00 00 00 
   140006096:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   14000609a:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   1400060a1:	00 
   1400060a2:	4d 39 ef             	cmp    %r13,%r15
   1400060a5:	74 37                	je     1400060de <_ZN15SignedMagnitudeplES_+0x1de>
   1400060a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400060ae:	00 00 
   1400060b0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400060b5:	e8 fe 0c 00 00       	call   140006db8 <_Znwy>
   1400060ba:	48 89 c1             	mov    %rax,%rcx
   1400060bd:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400060c2:	48 89 ea             	mov    %rbp,%rdx
   1400060c5:	88 41 10             	mov    %al,0x10(%rcx)
   1400060c8:	e8 4b 0d 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400060cd:	4d 8b 3f             	mov    (%r15),%r15
   1400060d0:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   1400060d7:	00 01 
   1400060d9:	4d 39 ef             	cmp    %r13,%r15
   1400060dc:	75 d2                	jne    1400060b0 <_ZN15SignedMagnitudeplES_+0x1b0>
   1400060de:	48 89 ea             	mov    %rbp,%rdx
   1400060e1:	4c 89 f1             	mov    %r14,%rcx
   1400060e4:	e8 57 ca ff ff       	call   140002b40 <_ZN13NaturalBinarygeES_>
   1400060e9:	48 89 e9             	mov    %rbp,%rcx
   1400060ec:	41 89 c7             	mov    %eax,%r15d
   1400060ef:	e8 ec b9 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400060f4:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   1400060f9:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140006100:	00 00 00 00 00 
   140006105:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006109:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   14000610e:	45 84 ff             	test   %r15b,%r15b
   140006111:	0f 84 89 01 00 00    	je     1400062a0 <_ZN15SignedMagnitudeplES_+0x3a0>
   140006117:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   14000611c:	4d 39 ef             	cmp    %r13,%r15
   14000611f:	74 35                	je     140006156 <_ZN15SignedMagnitudeplES_+0x256>
   140006121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006128:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000612d:	e8 86 0c 00 00       	call   140006db8 <_Znwy>
   140006132:	48 89 c1             	mov    %rax,%rcx
   140006135:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   14000613a:	48 89 f2             	mov    %rsi,%rdx
   14000613d:	88 41 10             	mov    %al,0x10(%rcx)
   140006140:	e8 d3 0c 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006145:	4d 8b 3f             	mov    (%r15),%r15
   140006148:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   14000614f:	00 01 
   140006151:	4d 39 ef             	cmp    %r13,%r15
   140006154:	75 d2                	jne    140006128 <_ZN15SignedMagnitudeplES_+0x228>
   140006156:	49 89 f0             	mov    %rsi,%r8
   140006159:	4c 89 f2             	mov    %r14,%rdx
   14000615c:	48 89 e9             	mov    %rbp,%rcx
   14000615f:	e8 dc bc ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   140006164:	48 89 ea             	mov    %rbp,%rdx
   140006167:	4c 89 e1             	mov    %r12,%rcx
   14000616a:	e8 d1 ea ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000616f:	eb 76                	jmp    1400061e7 <_ZN15SignedMagnitudeplES_+0x2e7>
   140006171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006178:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000617d:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140006182:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140006189:	00 00 00 00 00 
   14000618e:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006192:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   140006197:	4d 39 ef             	cmp    %r13,%r15
   14000619a:	74 32                	je     1400061ce <_ZN15SignedMagnitudeplES_+0x2ce>
   14000619c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400061a0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400061a5:	e8 0e 0c 00 00       	call   140006db8 <_Znwy>
   1400061aa:	48 89 c1             	mov    %rax,%rcx
   1400061ad:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400061b2:	48 89 f2             	mov    %rsi,%rdx
   1400061b5:	88 41 10             	mov    %al,0x10(%rcx)
   1400061b8:	e8 5b 0c 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400061bd:	4d 8b 3f             	mov    (%r15),%r15
   1400061c0:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   1400061c7:	00 01 
   1400061c9:	4d 39 ef             	cmp    %r13,%r15
   1400061cc:	75 d2                	jne    1400061a0 <_ZN15SignedMagnitudeplES_+0x2a0>
   1400061ce:	49 89 f0             	mov    %rsi,%r8
   1400061d1:	4c 89 f2             	mov    %r14,%rdx
   1400061d4:	48 89 e9             	mov    %rbp,%rcx
   1400061d7:	e8 44 b9 ff ff       	call   140001b20 <_ZN13NaturalBinaryplES_>
   1400061dc:	48 89 ea             	mov    %rbp,%rdx
   1400061df:	4c 89 e1             	mov    %r12,%rcx
   1400061e2:	e8 59 ea ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400061e7:	48 89 e9             	mov    %rbp,%rcx
   1400061ea:	e8 f1 b8 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400061ef:	48 89 f1             	mov    %rsi,%rcx
   1400061f2:	e8 e9 b8 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400061f7:	0f b6 53 1c          	movzbl 0x1c(%rbx),%edx
   1400061fb:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   1400061ff:	88 54 24 2f          	mov    %dl,0x2f(%rsp)
   140006203:	84 d2                	test   %dl,%dl
   140006205:	74 19                	je     140006220 <_ZN15SignedMagnitudeplES_+0x320>
   140006207:	84 c0                	test   %al,%al
   140006209:	0f 84 77 01 00 00    	je     140006386 <_ZN15SignedMagnitudeplES_+0x486>
   14000620f:	41 c6 44 24 1c 01    	movb   $0x1,0x1c(%r12)
   140006215:	eb 17                	jmp    14000622e <_ZN15SignedMagnitudeplES_+0x32e>
   140006217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000621e:	00 00 
   140006220:	84 c0                	test   %al,%al
   140006222:	0f 85 d4 00 00 00    	jne    1400062fc <_ZN15SignedMagnitudeplES_+0x3fc>
   140006228:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   14000622e:	4c 89 e1             	mov    %r12,%rcx
   140006231:	e8 2a c2 ff ff       	call   140002460 <_ZN13NaturalBinary8optimizeEv>
   140006236:	31 d2                	xor    %edx,%edx
   140006238:	48 89 e9             	mov    %rbp,%rcx
   14000623b:	e8 10 b7 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140006240:	48 89 ea             	mov    %rbp,%rdx
   140006243:	4c 89 e1             	mov    %r12,%rcx
   140006246:	e8 65 c4 ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   14000624b:	89 c6                	mov    %eax,%esi
   14000624d:	48 89 e9             	mov    %rbp,%rcx
   140006250:	e8 8b b8 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006255:	40 84 f6             	test   %sil,%sil
   140006258:	74 10                	je     14000626a <_ZN15SignedMagnitudeplES_+0x36a>
   14000625a:	8b 47 18             	mov    0x18(%rdi),%eax
   14000625d:	8b 53 18             	mov    0x18(%rbx),%edx
   140006260:	39 d0                	cmp    %edx,%eax
   140006262:	0f 42 c2             	cmovb  %edx,%eax
   140006265:	41 89 44 24 18       	mov    %eax,0x18(%r12)
   14000626a:	4c 89 e9             	mov    %r13,%rcx
   14000626d:	e8 6e b8 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006272:	4c 89 f1             	mov    %r14,%rcx
   140006275:	e8 66 b8 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000627a:	90                   	nop
   14000627b:	0f 10 b4 24 b0 00 00 	movups 0xb0(%rsp),%xmm6
   140006282:	00 
   140006283:	4c 89 e0             	mov    %r12,%rax
   140006286:	48 81 c4 c8 00 00 00 	add    $0xc8,%rsp
   14000628d:	5b                   	pop    %rbx
   14000628e:	5e                   	pop    %rsi
   14000628f:	5f                   	pop    %rdi
   140006290:	5d                   	pop    %rbp
   140006291:	41 5c                	pop    %r12
   140006293:	41 5d                	pop    %r13
   140006295:	41 5e                	pop    %r14
   140006297:	41 5f                	pop    %r15
   140006299:	c3                   	ret
   14000629a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400062a0:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
   1400062a5:	4d 39 f7             	cmp    %r14,%r15
   1400062a8:	74 34                	je     1400062de <_ZN15SignedMagnitudeplES_+0x3de>
   1400062aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400062b0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400062b5:	e8 fe 0a 00 00       	call   140006db8 <_Znwy>
   1400062ba:	48 89 c1             	mov    %rax,%rcx
   1400062bd:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400062c2:	48 89 f2             	mov    %rsi,%rdx
   1400062c5:	88 41 10             	mov    %al,0x10(%rcx)
   1400062c8:	e8 4b 0b 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400062cd:	4d 8b 3f             	mov    (%r15),%r15
   1400062d0:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   1400062d7:	00 01 
   1400062d9:	4d 39 f7             	cmp    %r14,%r15
   1400062dc:	75 d2                	jne    1400062b0 <_ZN15SignedMagnitudeplES_+0x3b0>
   1400062de:	49 89 f0             	mov    %rsi,%r8
   1400062e1:	4c 89 ea             	mov    %r13,%rdx
   1400062e4:	48 89 e9             	mov    %rbp,%rcx
   1400062e7:	e8 54 bb ff ff       	call   140001e40 <_ZN13NaturalBinarymiES_>
   1400062ec:	48 89 ea             	mov    %rbp,%rdx
   1400062ef:	4c 89 e1             	mov    %r12,%rcx
   1400062f2:	e8 49 e9 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400062f7:	e9 eb fe ff ff       	jmp    1400061e7 <_ZN15SignedMagnitudeplES_+0x2e7>
   1400062fc:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   140006301:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140006306:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
   14000630d:	00 00 00 00 00 
   140006312:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006316:	0f 11 84 24 90 00 00 	movups %xmm0,0x90(%rsp)
   14000631d:	00 
   14000631e:	4d 39 ef             	cmp    %r13,%r15
   140006321:	74 33                	je     140006356 <_ZN15SignedMagnitudeplES_+0x456>
   140006323:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006328:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000632d:	e8 86 0a 00 00       	call   140006db8 <_Znwy>
   140006332:	48 89 c1             	mov    %rax,%rcx
   140006335:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   14000633a:	48 89 ea             	mov    %rbp,%rdx
   14000633d:	88 41 10             	mov    %al,0x10(%rcx)
   140006340:	e8 d3 0a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006345:	4d 8b 3f             	mov    (%r15),%r15
   140006348:	48 83 84 24 a0 00 00 	addq   $0x1,0xa0(%rsp)
   14000634f:	00 01 
   140006351:	4d 39 ef             	cmp    %r13,%r15
   140006354:	75 d2                	jne    140006328 <_ZN15SignedMagnitudeplES_+0x428>
   140006356:	48 89 ea             	mov    %rbp,%rdx
   140006359:	4c 89 f1             	mov    %r14,%rcx
   14000635c:	e8 4f c3 ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140006361:	41 88 44 24 1c       	mov    %al,0x1c(%r12)
   140006366:	48 89 e9             	mov    %rbp,%rcx
   140006369:	e8 72 b7 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000636e:	80 7c 24 2f 00       	cmpb   $0x0,0x2f(%rsp)
   140006373:	0f 84 b5 fe ff ff    	je     14000622e <_ZN15SignedMagnitudeplES_+0x32e>
   140006379:	48 89 f1             	mov    %rsi,%rcx
   14000637c:	e8 5f b7 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006381:	e9 a8 fe ff ff       	jmp    14000622e <_ZN15SignedMagnitudeplES_+0x32e>
   140006386:	66 48 0f 6e c6       	movq   %rsi,%xmm0
   14000638b:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
   140006390:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
   140006397:	00 00 00 00 00 
   14000639c:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400063a0:	0f 11 44 24 70       	movups %xmm0,0x70(%rsp)
   1400063a5:	4d 39 ef             	cmp    %r13,%r15
   1400063a8:	74 34                	je     1400063de <_ZN15SignedMagnitudeplES_+0x4de>
   1400063aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400063b0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400063b5:	e8 fe 09 00 00       	call   140006db8 <_Znwy>
   1400063ba:	48 89 c1             	mov    %rax,%rcx
   1400063bd:	41 0f b6 47 10       	movzbl 0x10(%r15),%eax
   1400063c2:	48 89 f2             	mov    %rsi,%rdx
   1400063c5:	88 41 10             	mov    %al,0x10(%rcx)
   1400063c8:	e8 4b 0a 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400063cd:	4d 8b 3f             	mov    (%r15),%r15
   1400063d0:	48 83 84 24 80 00 00 	addq   $0x1,0x80(%rsp)
   1400063d7:	00 01 
   1400063d9:	4d 39 ef             	cmp    %r13,%r15
   1400063dc:	75 d2                	jne    1400063b0 <_ZN15SignedMagnitudeplES_+0x4b0>
   1400063de:	48 89 f2             	mov    %rsi,%rdx
   1400063e1:	4c 89 f1             	mov    %r14,%rcx
   1400063e4:	e8 27 c1 ff ff       	call   140002510 <_ZN13NaturalBinaryltES_>
   1400063e9:	84 c0                	test   %al,%al
   1400063eb:	74 08                	je     1400063f5 <_ZN15SignedMagnitudeplES_+0x4f5>
   1400063ed:	41 c6 44 24 1c 01    	movb   $0x1,0x1c(%r12)
   1400063f3:	eb 84                	jmp    140006379 <_ZN15SignedMagnitudeplES_+0x479>
   1400063f5:	0f b6 47 1c          	movzbl 0x1c(%rdi),%eax
   1400063f9:	88 44 24 2f          	mov    %al,0x2f(%rsp)
   1400063fd:	84 c0                	test   %al,%al
   1400063ff:	0f 85 f7 fe ff ff    	jne    1400062fc <_ZN15SignedMagnitudeplES_+0x3fc>
   140006405:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   14000640b:	e9 69 ff ff ff       	jmp    140006379 <_ZN15SignedMagnitudeplES_+0x479>
   140006410:	48 89 c3             	mov    %rax,%rbx
   140006413:	48 89 f1             	mov    %rsi,%rcx
   140006416:	e8 c5 b6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000641b:	4c 89 e1             	mov    %r12,%rcx
   14000641e:	e8 bd b6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006423:	4c 89 e9             	mov    %r13,%rcx
   140006426:	e8 b5 b6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000642b:	4c 89 f1             	mov    %r14,%rcx
   14000642e:	e8 ad b6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006433:	48 89 d9             	mov    %rbx,%rcx
   140006436:	e8 d5 1a 00 00       	call   140007f10 <_Unwind_Resume>
   14000643b:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   140006442:	00 
   140006443:	48 89 c3             	mov    %rax,%rbx
   140006446:	48 39 e9             	cmp    %rbp,%rcx
   140006449:	74 1d                	je     140006468 <_ZN15SignedMagnitudeplES_+0x568>
   14000644b:	48 8b 39             	mov    (%rcx),%rdi
   14000644e:	ba 18 00 00 00       	mov    $0x18,%edx
   140006453:	e8 68 09 00 00       	call   140006dc0 <_ZdlPvy>
   140006458:	48 89 f9             	mov    %rdi,%rcx
   14000645b:	eb e9                	jmp    140006446 <_ZN15SignedMagnitudeplES_+0x546>
   14000645d:	48 89 e9             	mov    %rbp,%rcx
   140006460:	48 89 c3             	mov    %rax,%rbx
   140006463:	e8 78 b6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006468:	80 7c 24 2f 00       	cmpb   $0x0,0x2f(%rsp)
   14000646d:	75 a4                	jne    140006413 <_ZN15SignedMagnitudeplES_+0x513>
   14000646f:	eb aa                	jmp    14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   140006471:	48 89 c3             	mov    %rax,%rbx
   140006474:	eb a5                	jmp    14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   140006476:	48 89 e9             	mov    %rbp,%rcx
   140006479:	48 89 c3             	mov    %rax,%rbx
   14000647c:	e8 5f b6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006481:	eb 98                	jmp    14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   140006483:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   14000648a:	00 
   14000648b:	48 89 c3             	mov    %rax,%rbx
   14000648e:	48 39 e9             	cmp    %rbp,%rcx
   140006491:	74 88                	je     14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   140006493:	48 8b 31             	mov    (%rcx),%rsi
   140006496:	ba 18 00 00 00       	mov    $0x18,%edx
   14000649b:	e8 20 09 00 00       	call   140006dc0 <_ZdlPvy>
   1400064a0:	48 89 f1             	mov    %rsi,%rcx
   1400064a3:	eb e9                	jmp    14000648e <_ZN15SignedMagnitudeplES_+0x58e>
   1400064a5:	48 89 f1             	mov    %rsi,%rcx
   1400064a8:	48 89 c3             	mov    %rax,%rbx
   1400064ab:	e8 30 b6 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400064b0:	48 89 d9             	mov    %rbx,%rcx
   1400064b3:	e8 58 1a 00 00       	call   140007f10 <_Unwind_Resume>
   1400064b8:	eb bc                	jmp    140006476 <_ZN15SignedMagnitudeplES_+0x576>
   1400064ba:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   1400064bf:	48 89 c3             	mov    %rax,%rbx
   1400064c2:	48 39 f1             	cmp    %rsi,%rcx
   1400064c5:	0f 84 50 ff ff ff    	je     14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   1400064cb:	48 8b 39             	mov    (%rcx),%rdi
   1400064ce:	ba 18 00 00 00       	mov    $0x18,%edx
   1400064d3:	e8 e8 08 00 00       	call   140006dc0 <_ZdlPvy>
   1400064d8:	48 89 f9             	mov    %rdi,%rcx
   1400064db:	eb e5                	jmp    1400064c2 <_ZN15SignedMagnitudeplES_+0x5c2>
   1400064dd:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   1400064e2:	48 89 c3             	mov    %rax,%rbx
   1400064e5:	48 39 f1             	cmp    %rsi,%rcx
   1400064e8:	74 c6                	je     1400064b0 <_ZN15SignedMagnitudeplES_+0x5b0>
   1400064ea:	48 8b 39             	mov    (%rcx),%rdi
   1400064ed:	ba 18 00 00 00       	mov    $0x18,%edx
   1400064f2:	e8 c9 08 00 00       	call   140006dc0 <_ZdlPvy>
   1400064f7:	48 89 f9             	mov    %rdi,%rcx
   1400064fa:	eb e9                	jmp    1400064e5 <_ZN15SignedMagnitudeplES_+0x5e5>
   1400064fc:	48 89 e9             	mov    %rbp,%rcx
   1400064ff:	48 89 c3             	mov    %rax,%rbx
   140006502:	e8 d9 b5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006507:	e9 07 ff ff ff       	jmp    140006413 <_ZN15SignedMagnitudeplES_+0x513>
   14000650c:	e9 60 ff ff ff       	jmp    140006471 <_ZN15SignedMagnitudeplES_+0x571>
   140006511:	eb e9                	jmp    1400064fc <_ZN15SignedMagnitudeplES_+0x5fc>
   140006513:	e9 f8 fe ff ff       	jmp    140006410 <_ZN15SignedMagnitudeplES_+0x510>
   140006518:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   14000651d:	48 89 c3             	mov    %rax,%rbx
   140006520:	48 39 f1             	cmp    %rsi,%rcx
   140006523:	0f 84 f2 fe ff ff    	je     14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   140006529:	48 8b 39             	mov    (%rcx),%rdi
   14000652c:	ba 18 00 00 00       	mov    $0x18,%edx
   140006531:	e8 8a 08 00 00       	call   140006dc0 <_ZdlPvy>
   140006536:	48 89 f9             	mov    %rdi,%rcx
   140006539:	eb e5                	jmp    140006520 <_ZN15SignedMagnitudeplES_+0x620>
   14000653b:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140006540:	48 89 c3             	mov    %rax,%rbx
   140006543:	48 39 f1             	cmp    %rsi,%rcx
   140006546:	0f 84 cf fe ff ff    	je     14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   14000654c:	48 8b 39             	mov    (%rcx),%rdi
   14000654f:	ba 18 00 00 00       	mov    $0x18,%edx
   140006554:	e8 67 08 00 00       	call   140006dc0 <_ZdlPvy>
   140006559:	48 89 f9             	mov    %rdi,%rcx
   14000655c:	eb e5                	jmp    140006543 <_ZN15SignedMagnitudeplES_+0x643>
   14000655e:	e9 ad fe ff ff       	jmp    140006410 <_ZN15SignedMagnitudeplES_+0x510>
   140006563:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
   140006568:	48 89 c3             	mov    %rax,%rbx
   14000656b:	48 39 f1             	cmp    %rsi,%rcx
   14000656e:	0f 84 a7 fe ff ff    	je     14000641b <_ZN15SignedMagnitudeplES_+0x51b>
   140006574:	48 8b 39             	mov    (%rcx),%rdi
   140006577:	ba 18 00 00 00       	mov    $0x18,%edx
   14000657c:	e8 3f 08 00 00       	call   140006dc0 <_ZdlPvy>
   140006581:	48 89 f9             	mov    %rdi,%rcx
   140006584:	eb e5                	jmp    14000656b <_ZN15SignedMagnitudeplES_+0x66b>
   140006586:	48 89 e9             	mov    %rbp,%rcx
   140006589:	48 89 c3             	mov    %rax,%rbx
   14000658c:	e8 4f b5 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006591:	e9 95 fe ff ff       	jmp    14000642b <_ZN15SignedMagnitudeplES_+0x52b>
   140006596:	48 89 c3             	mov    %rax,%rbx
   140006599:	e9 85 fe ff ff       	jmp    140006423 <_ZN15SignedMagnitudeplES_+0x523>
   14000659e:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
   1400065a5:	00 
   1400065a6:	48 89 c3             	mov    %rax,%rbx
   1400065a9:	48 39 e9             	cmp    %rbp,%rcx
   1400065ac:	0f 84 79 fe ff ff    	je     14000642b <_ZN15SignedMagnitudeplES_+0x52b>
   1400065b2:	48 8b 31             	mov    (%rcx),%rsi
   1400065b5:	ba 18 00 00 00       	mov    $0x18,%edx
   1400065ba:	e8 01 08 00 00       	call   140006dc0 <_ZdlPvy>
   1400065bf:	48 89 f1             	mov    %rsi,%rcx
   1400065c2:	eb e5                	jmp    1400065a9 <_ZN15SignedMagnitudeplES_+0x6a9>
   1400065c4:	e9 33 ff ff ff       	jmp    1400064fc <_ZN15SignedMagnitudeplES_+0x5fc>
   1400065c9:	e9 a8 fe ff ff       	jmp    140006476 <_ZN15SignedMagnitudeplES_+0x576>
   1400065ce:	e9 3d fe ff ff       	jmp    140006410 <_ZN15SignedMagnitudeplES_+0x510>
   1400065d3:	90                   	nop
   1400065d4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400065db:	00 00 00 00 
   1400065df:	90                   	nop

00000001400065e0 <_ZN15SignedMagnitudemiES_>:
   1400065e0:	41 54                	push   %r12
   1400065e2:	55                   	push   %rbp
   1400065e3:	57                   	push   %rdi
   1400065e4:	56                   	push   %rsi
   1400065e5:	53                   	push   %rbx
   1400065e6:	48 83 ec 40          	sub    $0x40,%rsp
   1400065ea:	41 0f b6 40 1c       	movzbl 0x1c(%r8),%eax
   1400065ef:	49 8b 18             	mov    (%r8),%rbx
   1400065f2:	83 f0 01             	xor    $0x1,%eax
   1400065f5:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
   1400065fa:	41 88 40 1c          	mov    %al,0x1c(%r8)
   1400065fe:	48 89 cd             	mov    %rcx,%rbp
   140006601:	49 89 d4             	mov    %rdx,%r12
   140006604:	66 48 0f 6e c7       	movq   %rdi,%xmm0
   140006609:	4c 89 c6             	mov    %r8,%rsi
   14000660c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   140006613:	00 00 
   140006615:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006619:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   14000661e:	49 39 d8             	cmp    %rbx,%r8
   140006621:	74 33                	je     140006656 <_ZN15SignedMagnitudemiES_+0x76>
   140006623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006628:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000662d:	e8 86 07 00 00       	call   140006db8 <_Znwy>
   140006632:	48 89 c1             	mov    %rax,%rcx
   140006635:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006639:	48 89 fa             	mov    %rdi,%rdx
   14000663c:	88 41 10             	mov    %al,0x10(%rcx)
   14000663f:	e8 d4 07 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006644:	48 8b 1b             	mov    (%rbx),%rbx
   140006647:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   14000664d:	48 39 de             	cmp    %rbx,%rsi
   140006650:	75 d6                	jne    140006628 <_ZN15SignedMagnitudemiES_+0x48>
   140006652:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140006656:	8b 56 18             	mov    0x18(%rsi),%edx
   140006659:	49 89 f8             	mov    %rdi,%r8
   14000665c:	48 89 e9             	mov    %rbp,%rcx
   14000665f:	88 44 24 3c          	mov    %al,0x3c(%rsp)
   140006663:	89 54 24 38          	mov    %edx,0x38(%rsp)
   140006667:	4c 89 e2             	mov    %r12,%rdx
   14000666a:	e8 91 f8 ff ff       	call   140005f00 <_ZN15SignedMagnitudeplES_>
   14000666f:	48 89 f9             	mov    %rdi,%rcx
   140006672:	e8 69 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006677:	48 89 e8             	mov    %rbp,%rax
   14000667a:	48 83 c4 40          	add    $0x40,%rsp
   14000667e:	5b                   	pop    %rbx
   14000667f:	5e                   	pop    %rsi
   140006680:	5f                   	pop    %rdi
   140006681:	5d                   	pop    %rbp
   140006682:	41 5c                	pop    %r12
   140006684:	c3                   	ret
   140006685:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000668a:	48 89 c3             	mov    %rax,%rbx
   14000668d:	48 39 f9             	cmp    %rdi,%rcx
   140006690:	74 1d                	je     1400066af <_ZN15SignedMagnitudemiES_+0xcf>
   140006692:	48 8b 31             	mov    (%rcx),%rsi
   140006695:	ba 18 00 00 00       	mov    $0x18,%edx
   14000669a:	e8 21 07 00 00       	call   140006dc0 <_ZdlPvy>
   14000669f:	48 89 f1             	mov    %rsi,%rcx
   1400066a2:	eb e9                	jmp    14000668d <_ZN15SignedMagnitudemiES_+0xad>
   1400066a4:	48 89 f9             	mov    %rdi,%rcx
   1400066a7:	48 89 c3             	mov    %rax,%rbx
   1400066aa:	e8 31 b4 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400066af:	48 89 d9             	mov    %rbx,%rcx
   1400066b2:	e8 59 18 00 00       	call   140007f10 <_Unwind_Resume>
   1400066b7:	90                   	nop
   1400066b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400066bf:	00 

00000001400066c0 <_ZN15SignedMagnitudemlES_>:
   1400066c0:	41 55                	push   %r13
   1400066c2:	41 54                	push   %r12
   1400066c4:	55                   	push   %rbp
   1400066c5:	57                   	push   %rdi
   1400066c6:	56                   	push   %rsi
   1400066c7:	53                   	push   %rbx
   1400066c8:	48 83 ec 78          	sub    $0x78,%rsp
   1400066cc:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   1400066d1:	48 89 cb             	mov    %rcx,%rbx
   1400066d4:	49 89 d5             	mov    %rdx,%r13
   1400066d7:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
   1400066dc:	4c 89 c5             	mov    %r8,%rbp
   1400066df:	e8 5c b2 ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   1400066e4:	c6 43 1c 00          	movb   $0x0,0x1c(%rbx)
   1400066e8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   1400066ed:	31 d2                	xor    %edx,%edx
   1400066ef:	66 49 0f 6e f4       	movq   %r12,%xmm6
   1400066f4:	48 89 f9             	mov    %rdi,%rcx
   1400066f7:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400066fb:	e8 50 b2 ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140006700:	48 89 fa             	mov    %rdi,%rdx
   140006703:	48 89 d9             	mov    %rbx,%rcx
   140006706:	e8 35 e5 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000670b:	48 89 f9             	mov    %rdi,%rcx
   14000670e:	e8 cd b3 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006713:	48 8b 75 00          	mov    0x0(%rbp),%rsi
   140006717:	0f 11 74 24 20       	movups %xmm6,0x20(%rsp)
   14000671c:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%rbx)
   140006723:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   14000672a:	00 00 
   14000672c:	48 39 f5             	cmp    %rsi,%rbp
   14000672f:	74 31                	je     140006762 <_ZN15SignedMagnitudemlES_+0xa2>
   140006731:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006738:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000673d:	e8 76 06 00 00       	call   140006db8 <_Znwy>
   140006742:	48 89 c1             	mov    %rax,%rcx
   140006745:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
   140006749:	4c 89 e2             	mov    %r12,%rdx
   14000674c:	88 41 10             	mov    %al,0x10(%rcx)
   14000674f:	e8 c4 06 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006754:	48 8b 36             	mov    (%rsi),%rsi
   140006757:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   14000675d:	48 39 f5             	cmp    %rsi,%rbp
   140006760:	75 d6                	jne    140006738 <_ZN15SignedMagnitudemlES_+0x78>
   140006762:	4d 89 e0             	mov    %r12,%r8
   140006765:	4c 89 ea             	mov    %r13,%rdx
   140006768:	48 89 f9             	mov    %rdi,%rcx
   14000676b:	e8 d0 ce ff ff       	call   140003640 <_ZN13NaturalBinarymlES_>
   140006770:	48 89 fa             	mov    %rdi,%rdx
   140006773:	48 89 d9             	mov    %rbx,%rcx
   140006776:	e8 c5 e4 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   14000677b:	48 89 f9             	mov    %rdi,%rcx
   14000677e:	e8 5d b3 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006783:	4c 89 e1             	mov    %r12,%rcx
   140006786:	e8 55 b3 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000678b:	41 0f b6 45 1c       	movzbl 0x1c(%r13),%eax
   140006790:	32 45 1c             	xor    0x1c(%rbp),%al
   140006793:	48 89 d9             	mov    %rbx,%rcx
   140006796:	88 43 1c             	mov    %al,0x1c(%rbx)
   140006799:	8b 45 18             	mov    0x18(%rbp),%eax
   14000679c:	41 03 45 18          	add    0x18(%r13),%eax
   1400067a0:	89 43 18             	mov    %eax,0x18(%rbx)
   1400067a3:	e8 b8 bc ff ff       	call   140002460 <_ZN13NaturalBinary8optimizeEv>
   1400067a8:	8b 43 18             	mov    0x18(%rbx),%eax
   1400067ab:	83 c0 01             	add    $0x1,%eax
   1400067ae:	48 39 43 10          	cmp    %rax,0x10(%rbx)
   1400067b2:	73 42                	jae    1400067f6 <_ZN15SignedMagnitudemlES_+0x136>
   1400067b4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400067b8:	31 d2                	xor    %edx,%edx
   1400067ba:	48 89 f9             	mov    %rdi,%rcx
   1400067bd:	e8 be ae ff ff       	call   140001680 <_ZN4ByteC1Ey>
   1400067c2:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400067c7:	e8 ec 05 00 00       	call   140006db8 <_Znwy>
   1400067cc:	48 89 c1             	mov    %rax,%rcx
   1400067cf:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
   1400067d4:	48 89 da             	mov    %rbx,%rdx
   1400067d7:	88 41 10             	mov    %al,0x10(%rcx)
   1400067da:	e8 39 06 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400067df:	48 8b 43 10          	mov    0x10(%rbx),%rax
   1400067e3:	8b 53 18             	mov    0x18(%rbx),%edx
   1400067e6:	48 83 c0 01          	add    $0x1,%rax
   1400067ea:	83 c2 01             	add    $0x1,%edx
   1400067ed:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400067f1:	48 39 d0             	cmp    %rdx,%rax
   1400067f4:	72 c2                	jb     1400067b8 <_ZN15SignedMagnitudemlES_+0xf8>
   1400067f6:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   1400067fb:	48 89 d8             	mov    %rbx,%rax
   1400067fe:	48 83 c4 78          	add    $0x78,%rsp
   140006802:	5b                   	pop    %rbx
   140006803:	5e                   	pop    %rsi
   140006804:	5f                   	pop    %rdi
   140006805:	5d                   	pop    %rbp
   140006806:	41 5c                	pop    %r12
   140006808:	41 5d                	pop    %r13
   14000680a:	c3                   	ret
   14000680b:	48 89 c6             	mov    %rax,%rsi
   14000680e:	eb 13                	jmp    140006823 <_ZN15SignedMagnitudemlES_+0x163>
   140006810:	48 89 f9             	mov    %rdi,%rcx
   140006813:	48 89 c6             	mov    %rax,%rsi
   140006816:	e8 c5 b2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000681b:	4c 89 e1             	mov    %r12,%rcx
   14000681e:	e8 bd b2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006823:	48 89 d9             	mov    %rbx,%rcx
   140006826:	e8 b5 b2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   14000682b:	48 89 f1             	mov    %rsi,%rcx
   14000682e:	e8 dd 16 00 00       	call   140007f10 <_Unwind_Resume>
   140006833:	48 89 c6             	mov    %rax,%rsi
   140006836:	eb e3                	jmp    14000681b <_ZN15SignedMagnitudemlES_+0x15b>
   140006838:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   14000683d:	48 89 c6             	mov    %rax,%rsi
   140006840:	4c 39 e1             	cmp    %r12,%rcx
   140006843:	74 de                	je     140006823 <_ZN15SignedMagnitudemlES_+0x163>
   140006845:	48 8b 39             	mov    (%rcx),%rdi
   140006848:	ba 18 00 00 00       	mov    $0x18,%edx
   14000684d:	e8 6e 05 00 00       	call   140006dc0 <_ZdlPvy>
   140006852:	48 89 f9             	mov    %rdi,%rcx
   140006855:	eb e9                	jmp    140006840 <_ZN15SignedMagnitudemlES_+0x180>
   140006857:	48 89 f9             	mov    %rdi,%rcx
   14000685a:	48 89 c6             	mov    %rax,%rsi
   14000685d:	e8 7e b2 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006862:	eb bf                	jmp    140006823 <_ZN15SignedMagnitudemlES_+0x163>
   140006864:	eb a5                	jmp    14000680b <_ZN15SignedMagnitudemlES_+0x14b>
   140006866:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000686d:	00 00 00 

0000000140006870 <_ZN15SignedMagnitudedvES_>:
   140006870:	41 57                	push   %r15
   140006872:	41 56                	push   %r14
   140006874:	41 55                	push   %r13
   140006876:	41 54                	push   %r12
   140006878:	55                   	push   %rbp
   140006879:	57                   	push   %rdi
   14000687a:	56                   	push   %rsi
   14000687b:	53                   	push   %rbx
   14000687c:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   140006883:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   14000688a:	00 
   14000688b:	48 8b 1a             	mov    (%rdx),%rbx
   14000688e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140006893:	49 89 cc             	mov    %rcx,%r12
   140006896:	48 89 d6             	mov    %rdx,%rsi
   140006899:	4c 89 c7             	mov    %r8,%rdi
   14000689c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
   1400068a3:	00 00 
   1400068a5:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400068aa:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400068ae:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
   1400068b3:	48 39 da             	cmp    %rbx,%rdx
   1400068b6:	74 32                	je     1400068ea <_ZN15SignedMagnitudedvES_+0x7a>
   1400068b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400068bf:	00 
   1400068c0:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400068c5:	e8 ee 04 00 00       	call   140006db8 <_Znwy>
   1400068ca:	48 89 c1             	mov    %rax,%rcx
   1400068cd:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400068d1:	48 89 ea             	mov    %rbp,%rdx
   1400068d4:	88 41 10             	mov    %al,0x10(%rcx)
   1400068d7:	e8 3c 05 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400068dc:	48 8b 1b             	mov    (%rbx),%rbx
   1400068df:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   1400068e5:	48 39 de             	cmp    %rbx,%rsi
   1400068e8:	75 d6                	jne    1400068c0 <_ZN15SignedMagnitudedvES_+0x50>
   1400068ea:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
   1400068ef:	48 8b 1f             	mov    (%rdi),%rbx
   1400068f2:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
   1400068f9:	00 00 
   1400068fb:	66 49 0f 6e c5       	movq   %r13,%xmm0
   140006900:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   140006904:	0f 11 44 24 40       	movups %xmm0,0x40(%rsp)
   140006909:	48 39 df             	cmp    %rbx,%rdi
   14000690c:	74 2c                	je     14000693a <_ZN15SignedMagnitudedvES_+0xca>
   14000690e:	66 90                	xchg   %ax,%ax
   140006910:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006915:	e8 9e 04 00 00       	call   140006db8 <_Znwy>
   14000691a:	48 89 c1             	mov    %rax,%rcx
   14000691d:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006921:	4c 89 ea             	mov    %r13,%rdx
   140006924:	88 41 10             	mov    %al,0x10(%rcx)
   140006927:	e8 ec 04 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   14000692c:	48 8b 1b             	mov    (%rbx),%rbx
   14000692f:	48 83 44 24 50 01    	addq   $0x1,0x50(%rsp)
   140006935:	48 39 df             	cmp    %rbx,%rdi
   140006938:	75 d6                	jne    140006910 <_ZN15SignedMagnitudedvES_+0xa0>
   14000693a:	8b 5e 18             	mov    0x18(%rsi),%ebx
   14000693d:	89 d8                	mov    %ebx,%eax
   14000693f:	2b 47 18             	sub    0x18(%rdi),%eax
   140006942:	39 c3                	cmp    %eax,%ebx
   140006944:	74 4c                	je     140006992 <_ZN15SignedMagnitudedvES_+0x122>
   140006946:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
   14000694d:	00 
   14000694e:	66 90                	xchg   %ax,%ax
   140006950:	31 d2                	xor    %edx,%edx
   140006952:	4c 89 f1             	mov    %r14,%rcx
   140006955:	e8 26 ad ff ff       	call   140001680 <_ZN4ByteC1Ey>
   14000695a:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000695f:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
   140006964:	e8 4f 04 00 00       	call   140006db8 <_Znwy>
   140006969:	48 89 c1             	mov    %rax,%rcx
   14000696c:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140006973:	00 
   140006974:	4c 89 fa             	mov    %r15,%rdx
   140006977:	83 c3 01             	add    $0x1,%ebx
   14000697a:	88 41 10             	mov    %al,0x10(%rcx)
   14000697d:	e8 96 04 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006982:	89 d8                	mov    %ebx,%eax
   140006984:	48 83 44 24 30 01    	addq   $0x1,0x30(%rsp)
   14000698a:	2b 47 18             	sub    0x18(%rdi),%eax
   14000698d:	3b 46 18             	cmp    0x18(%rsi),%eax
   140006990:	75 be                	jne    140006950 <_ZN15SignedMagnitudedvES_+0xe0>
   140006992:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
   140006997:	4c 89 e1             	mov    %r12,%rcx
   14000699a:	66 49 0f 6e f7       	movq   %r15,%xmm6
   14000699f:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   1400069a3:	e8 98 af ff ff       	call   140001940 <_ZN13NaturalBinaryC1Ev>
   1400069a8:	41 c6 44 24 1c 00    	movb   $0x0,0x1c(%r12)
   1400069ae:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
   1400069b5:	00 
   1400069b6:	31 d2                	xor    %edx,%edx
   1400069b8:	4c 89 f1             	mov    %r14,%rcx
   1400069bb:	e8 90 af ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   1400069c0:	4c 89 f2             	mov    %r14,%rdx
   1400069c3:	4c 89 e1             	mov    %r12,%rcx
   1400069c6:	e8 75 e2 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   1400069cb:	4c 89 f1             	mov    %r14,%rcx
   1400069ce:	e8 0d b1 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   1400069d3:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   1400069d8:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   1400069dd:	41 c7 44 24 18 00 00 	movl   $0x0,0x18(%r12)
   1400069e4:	00 00 
   1400069e6:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   1400069ed:	00 00 
   1400069ef:	4c 39 eb             	cmp    %r13,%rbx
   1400069f2:	74 2e                	je     140006a22 <_ZN15SignedMagnitudedvES_+0x1b2>
   1400069f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400069f8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400069fd:	e8 b6 03 00 00       	call   140006db8 <_Znwy>
   140006a02:	48 89 c1             	mov    %rax,%rcx
   140006a05:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   140006a09:	4c 89 fa             	mov    %r15,%rdx
   140006a0c:	88 41 10             	mov    %al,0x10(%rcx)
   140006a0f:	e8 04 04 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006a14:	48 8b 1b             	mov    (%rbx),%rbx
   140006a17:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   140006a1d:	4c 39 eb             	cmp    %r13,%rbx
   140006a20:	75 d6                	jne    1400069f8 <_ZN15SignedMagnitudedvES_+0x188>
   140006a22:	4d 89 f8             	mov    %r15,%r8
   140006a25:	48 89 ea             	mov    %rbp,%rdx
   140006a28:	4c 89 f1             	mov    %r14,%rcx
   140006a2b:	e8 d0 df ff ff       	call   140004a00 <_ZN13NaturalBinarydvES_>
   140006a30:	4c 89 f2             	mov    %r14,%rdx
   140006a33:	4c 89 e1             	mov    %r12,%rcx
   140006a36:	e8 05 e2 ff ff       	call   140004c40 <_ZNSt7__cxx114listI4ByteSaIS1_EEaSERKS3_.part.0>
   140006a3b:	4c 89 f1             	mov    %r14,%rcx
   140006a3e:	e8 9d b0 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006a43:	4c 89 f9             	mov    %r15,%rcx
   140006a46:	e8 95 b0 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006a4b:	31 d2                	xor    %edx,%edx
   140006a4d:	4c 89 f1             	mov    %r14,%rcx
   140006a50:	e8 fb ae ff ff       	call   140001950 <_ZN13NaturalBinaryC1Ex>
   140006a55:	4c 89 f2             	mov    %r14,%rdx
   140006a58:	4c 89 e1             	mov    %r12,%rcx
   140006a5b:	e8 50 bc ff ff       	call   1400026b0 <_ZN13NaturalBinarygtES_>
   140006a60:	89 c3                	mov    %eax,%ebx
   140006a62:	4c 89 f1             	mov    %r14,%rcx
   140006a65:	e8 76 b0 ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006a6a:	84 db                	test   %bl,%bl
   140006a6c:	0f 85 9b 00 00 00    	jne    140006b0d <_ZN15SignedMagnitudedvES_+0x29d>
   140006a72:	8b 46 18             	mov    0x18(%rsi),%eax
   140006a75:	4c 89 e1             	mov    %r12,%rcx
   140006a78:	41 89 44 24 18       	mov    %eax,0x18(%r12)
   140006a7d:	e8 de b9 ff ff       	call   140002460 <_ZN13NaturalBinary8optimizeEv>
   140006a82:	41 8b 44 24 18       	mov    0x18(%r12),%eax
   140006a87:	83 c0 01             	add    $0x1,%eax
   140006a8a:	49 39 44 24 10       	cmp    %rax,0x10(%r12)
   140006a8f:	73 4c                	jae    140006add <_ZN15SignedMagnitudedvES_+0x26d>
   140006a91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006a98:	31 d2                	xor    %edx,%edx
   140006a9a:	4c 89 f1             	mov    %r14,%rcx
   140006a9d:	e8 de ab ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140006aa2:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006aa7:	e8 0c 03 00 00       	call   140006db8 <_Znwy>
   140006aac:	48 89 c1             	mov    %rax,%rcx
   140006aaf:	0f b6 84 24 80 00 00 	movzbl 0x80(%rsp),%eax
   140006ab6:	00 
   140006ab7:	4c 89 e2             	mov    %r12,%rdx
   140006aba:	88 41 10             	mov    %al,0x10(%rcx)
   140006abd:	e8 56 03 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006ac2:	49 8b 44 24 10       	mov    0x10(%r12),%rax
   140006ac7:	41 8b 54 24 18       	mov    0x18(%r12),%edx
   140006acc:	48 83 c0 01          	add    $0x1,%rax
   140006ad0:	83 c2 01             	add    $0x1,%edx
   140006ad3:	49 89 44 24 10       	mov    %rax,0x10(%r12)
   140006ad8:	48 39 d0             	cmp    %rdx,%rax
   140006adb:	72 bb                	jb     140006a98 <_ZN15SignedMagnitudedvES_+0x228>
   140006add:	4c 89 e9             	mov    %r13,%rcx
   140006ae0:	e8 fb af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006ae5:	48 89 e9             	mov    %rbp,%rcx
   140006ae8:	e8 f3 af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006aed:	90                   	nop
   140006aee:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   140006af5:	00 
   140006af6:	4c 89 e0             	mov    %r12,%rax
   140006af9:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   140006b00:	5b                   	pop    %rbx
   140006b01:	5e                   	pop    %rsi
   140006b02:	5f                   	pop    %rdi
   140006b03:	5d                   	pop    %rbp
   140006b04:	41 5c                	pop    %r12
   140006b06:	41 5d                	pop    %r13
   140006b08:	41 5e                	pop    %r14
   140006b0a:	41 5f                	pop    %r15
   140006b0c:	c3                   	ret
   140006b0d:	0f b6 46 1c          	movzbl 0x1c(%rsi),%eax
   140006b11:	32 47 1c             	xor    0x1c(%rdi),%al
   140006b14:	41 88 44 24 1c       	mov    %al,0x1c(%r12)
   140006b19:	e9 54 ff ff ff       	jmp    140006a72 <_ZN15SignedMagnitudedvES_+0x202>
   140006b1e:	4c 89 f1             	mov    %r14,%rcx
   140006b21:	48 89 c3             	mov    %rax,%rbx
   140006b24:	e8 b7 af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006b29:	4c 89 e1             	mov    %r12,%rcx
   140006b2c:	e8 af af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006b31:	4c 89 e9             	mov    %r13,%rcx
   140006b34:	e8 a7 af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006b39:	48 89 e9             	mov    %rbp,%rcx
   140006b3c:	e8 9f af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006b41:	48 89 d9             	mov    %rbx,%rcx
   140006b44:	e8 c7 13 00 00       	call   140007f10 <_Unwind_Resume>
   140006b49:	48 89 c3             	mov    %rax,%rbx
   140006b4c:	eb db                	jmp    140006b29 <_ZN15SignedMagnitudedvES_+0x2b9>
   140006b4e:	4c 89 f1             	mov    %r14,%rcx
   140006b51:	48 89 c3             	mov    %rax,%rbx
   140006b54:	e8 87 af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006b59:	4c 89 f9             	mov    %r15,%rcx
   140006b5c:	e8 7f af ff ff       	call   140001ae0 <_ZN13NaturalBinaryD1Ev>
   140006b61:	eb c6                	jmp    140006b29 <_ZN15SignedMagnitudedvES_+0x2b9>
   140006b63:	48 89 c3             	mov    %rax,%rbx
   140006b66:	eb f1                	jmp    140006b59 <_ZN15SignedMagnitudedvES_+0x2e9>
   140006b68:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   140006b6d:	48 89 c3             	mov    %rax,%rbx
   140006b70:	4c 39 f9             	cmp    %r15,%rcx
   140006b73:	74 b4                	je     140006b29 <_ZN15SignedMagnitudedvES_+0x2b9>
   140006b75:	48 8b 31             	mov    (%rcx),%rsi
   140006b78:	ba 18 00 00 00       	mov    $0x18,%edx
   140006b7d:	e8 3e 02 00 00       	call   140006dc0 <_ZdlPvy>
   140006b82:	48 89 f1             	mov    %rsi,%rcx
   140006b85:	eb e9                	jmp    140006b70 <_ZN15SignedMagnitudedvES_+0x300>
   140006b87:	eb 95                	jmp    140006b1e <_ZN15SignedMagnitudedvES_+0x2ae>
   140006b89:	eb be                	jmp    140006b49 <_ZN15SignedMagnitudedvES_+0x2d9>
   140006b8b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006b90:	48 89 c3             	mov    %rax,%rbx
   140006b93:	48 39 e9             	cmp    %rbp,%rcx
   140006b96:	74 a9                	je     140006b41 <_ZN15SignedMagnitudedvES_+0x2d1>
   140006b98:	48 8b 31             	mov    (%rcx),%rsi
   140006b9b:	ba 18 00 00 00       	mov    $0x18,%edx
   140006ba0:	e8 1b 02 00 00       	call   140006dc0 <_ZdlPvy>
   140006ba5:	48 89 f1             	mov    %rsi,%rcx
   140006ba8:	eb e9                	jmp    140006b93 <_ZN15SignedMagnitudedvES_+0x323>
   140006baa:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
   140006baf:	48 89 c3             	mov    %rax,%rbx
   140006bb2:	4c 39 e9             	cmp    %r13,%rcx
   140006bb5:	74 82                	je     140006b39 <_ZN15SignedMagnitudedvES_+0x2c9>
   140006bb7:	48 8b 31             	mov    (%rcx),%rsi
   140006bba:	ba 18 00 00 00       	mov    $0x18,%edx
   140006bbf:	e8 fc 01 00 00       	call   140006dc0 <_ZdlPvy>
   140006bc4:	48 89 f1             	mov    %rsi,%rcx
   140006bc7:	eb e9                	jmp    140006bb2 <_ZN15SignedMagnitudedvES_+0x342>
   140006bc9:	48 89 c3             	mov    %rax,%rbx
   140006bcc:	e9 60 ff ff ff       	jmp    140006b31 <_ZN15SignedMagnitudedvES_+0x2c1>
   140006bd1:	90                   	nop
   140006bd2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006bd9:	00 00 00 00 
   140006bdd:	0f 1f 00             	nopl   (%rax)

0000000140006be0 <_ZN15SignedMagnitude8optimizeEv>:
   140006be0:	56                   	push   %rsi
   140006be1:	53                   	push   %rbx
   140006be2:	48 83 ec 38          	sub    $0x38,%rsp
   140006be6:	48 89 cb             	mov    %rcx,%rbx
   140006be9:	e8 72 b8 ff ff       	call   140002460 <_ZN13NaturalBinary8optimizeEv>
   140006bee:	8b 43 18             	mov    0x18(%rbx),%eax
   140006bf1:	83 c0 01             	add    $0x1,%eax
   140006bf4:	48 39 43 10          	cmp    %rax,0x10(%rbx)
   140006bf8:	73 44                	jae    140006c3e <_ZN15SignedMagnitude8optimizeEv+0x5e>
   140006bfa:	48 8d 74 24 2f       	lea    0x2f(%rsp),%rsi
   140006bff:	90                   	nop
   140006c00:	31 d2                	xor    %edx,%edx
   140006c02:	48 89 f1             	mov    %rsi,%rcx
   140006c05:	e8 76 aa ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140006c0a:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006c0f:	e8 a4 01 00 00       	call   140006db8 <_Znwy>
   140006c14:	48 89 da             	mov    %rbx,%rdx
   140006c17:	48 89 c1             	mov    %rax,%rcx
   140006c1a:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140006c1f:	88 41 10             	mov    %al,0x10(%rcx)
   140006c22:	e8 f1 01 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006c27:	48 8b 43 10          	mov    0x10(%rbx),%rax
   140006c2b:	8b 53 18             	mov    0x18(%rbx),%edx
   140006c2e:	48 83 c0 01          	add    $0x1,%rax
   140006c32:	83 c2 01             	add    $0x1,%edx
   140006c35:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140006c39:	48 39 d0             	cmp    %rdx,%rax
   140006c3c:	72 c2                	jb     140006c00 <_ZN15SignedMagnitude8optimizeEv+0x20>
   140006c3e:	48 83 c4 38          	add    $0x38,%rsp
   140006c42:	5b                   	pop    %rbx
   140006c43:	5e                   	pop    %rsi
   140006c44:	c3                   	ret
   140006c45:	90                   	nop
   140006c46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140006c4d:	00 00 00 

0000000140006c50 <_ZN15SignedMagnitude14set_precissionEj>:
   140006c50:	55                   	push   %rbp
   140006c51:	57                   	push   %rdi
   140006c52:	56                   	push   %rsi
   140006c53:	53                   	push   %rbx
   140006c54:	48 83 ec 38          	sub    $0x38,%rsp
   140006c58:	8b 41 18             	mov    0x18(%rcx),%eax
   140006c5b:	89 d6                	mov    %edx,%esi
   140006c5d:	29 c2                	sub    %eax,%edx
   140006c5f:	48 89 cb             	mov    %rcx,%rbx
   140006c62:	85 d2                	test   %edx,%edx
   140006c64:	74 4e                	je     140006cb4 <_ZN15SignedMagnitude14set_precissionEj+0x64>
   140006c66:	7e 7e                	jle    140006ce6 <_ZN15SignedMagnitude14set_precissionEj+0x96>
   140006c68:	39 f0                	cmp    %esi,%eax
   140006c6a:	73 48                	jae    140006cb4 <_ZN15SignedMagnitude14set_precissionEj+0x64>
   140006c6c:	48 8d 6c 24 2f       	lea    0x2f(%rsp),%rbp
   140006c71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140006c78:	31 d2                	xor    %edx,%edx
   140006c7a:	48 89 e9             	mov    %rbp,%rcx
   140006c7d:	e8 fe a9 ff ff       	call   140001680 <_ZN4ByteC1Ey>
   140006c82:	b9 18 00 00 00       	mov    $0x18,%ecx
   140006c87:	48 8b 3b             	mov    (%rbx),%rdi
   140006c8a:	e8 29 01 00 00       	call   140006db8 <_Znwy>
   140006c8f:	48 89 c1             	mov    %rax,%rcx
   140006c92:	0f b6 44 24 2f       	movzbl 0x2f(%rsp),%eax
   140006c97:	48 89 fa             	mov    %rdi,%rdx
   140006c9a:	88 41 10             	mov    %al,0x10(%rcx)
   140006c9d:	e8 76 01 00 00       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006ca2:	8b 43 18             	mov    0x18(%rbx),%eax
   140006ca5:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   140006caa:	83 c0 01             	add    $0x1,%eax
   140006cad:	89 43 18             	mov    %eax,0x18(%rbx)
   140006cb0:	39 f0                	cmp    %esi,%eax
   140006cb2:	72 c4                	jb     140006c78 <_ZN15SignedMagnitude14set_precissionEj+0x28>
   140006cb4:	48 83 c4 38          	add    $0x38,%rsp
   140006cb8:	5b                   	pop    %rbx
   140006cb9:	5e                   	pop    %rsi
   140006cba:	5f                   	pop    %rdi
   140006cbb:	5d                   	pop    %rbp
   140006cbc:	c3                   	ret
   140006cbd:	0f 1f 00             	nopl   (%rax)
   140006cc0:	48 83 6b 10 01       	subq   $0x1,0x10(%rbx)
   140006cc5:	48 8b 3b             	mov    (%rbx),%rdi
   140006cc8:	48 89 f9             	mov    %rdi,%rcx
   140006ccb:	e8 40 01 00 00       	call   140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   140006cd0:	ba 18 00 00 00       	mov    $0x18,%edx
   140006cd5:	48 89 f9             	mov    %rdi,%rcx
   140006cd8:	e8 e3 00 00 00       	call   140006dc0 <_ZdlPvy>
   140006cdd:	8b 43 18             	mov    0x18(%rbx),%eax
   140006ce0:	83 e8 01             	sub    $0x1,%eax
   140006ce3:	89 43 18             	mov    %eax,0x18(%rbx)
   140006ce6:	39 c6                	cmp    %eax,%esi
   140006ce8:	72 d6                	jb     140006cc0 <_ZN15SignedMagnitude14set_precissionEj+0x70>
   140006cea:	48 83 c4 38          	add    $0x38,%rsp
   140006cee:	5b                   	pop    %rbx
   140006cef:	5e                   	pop    %rsi
   140006cf0:	5f                   	pop    %rdi
   140006cf1:	5d                   	pop    %rbp
   140006cf2:	c3                   	ret
   140006cf3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140006cfa:	00 00 00 00 
   140006cfe:	66 90                	xchg   %ax,%ax

0000000140006d00 <_ZlsRSo15SignedMagnitude>:
   140006d00:	53                   	push   %rbx
   140006d01:	48 83 ec 40          	sub    $0x40,%rsp
   140006d05:	48 89 cb             	mov    %rcx,%rbx
   140006d08:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140006d0d:	e8 2e e3 ff ff       	call   140005040 <_ZN15SignedMagnitude8toStringB5cxx11Ev>
   140006d12:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
   140006d17:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   140006d1c:	48 89 d9             	mov    %rbx,%rcx
   140006d1f:	e8 bc 00 00 00       	call   140006de0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006d24:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006d29:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140006d2e:	48 39 c1             	cmp    %rax,%rcx
   140006d31:	74 0e                	je     140006d41 <_ZlsRSo15SignedMagnitude+0x41>
   140006d33:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140006d38:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006d3c:	e8 7f 00 00 00       	call   140006dc0 <_ZdlPvy>
   140006d41:	48 89 d8             	mov    %rbx,%rax
   140006d44:	48 83 c4 40          	add    $0x40,%rsp
   140006d48:	5b                   	pop    %rbx
   140006d49:	c3                   	ret
   140006d4a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140006d4f:	48 89 c3             	mov    %rax,%rbx
   140006d52:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140006d57:	48 39 c1             	cmp    %rax,%rcx
   140006d5a:	74 0e                	je     140006d6a <_ZlsRSo15SignedMagnitude+0x6a>
   140006d5c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
   140006d61:	48 8d 50 01          	lea    0x1(%rax),%rdx
   140006d65:	e8 56 00 00 00       	call   140006dc0 <_ZdlPvy>
   140006d6a:	48 89 d9             	mov    %rbx,%rcx
   140006d6d:	e8 9e 11 00 00       	call   140007f10 <_Unwind_Resume>
   140006d72:	90                   	nop
   140006d73:	90                   	nop
   140006d74:	90                   	nop
   140006d75:	90                   	nop
   140006d76:	90                   	nop
   140006d77:	90                   	nop
   140006d78:	90                   	nop
   140006d79:	90                   	nop
   140006d7a:	90                   	nop
   140006d7b:	90                   	nop
   140006d7c:	90                   	nop
   140006d7d:	90                   	nop
   140006d7e:	90                   	nop
   140006d7f:	90                   	nop

0000000140006d80 <__gxx_personality_seh0>:
   140006d80:	ff 25 0e 78 00 00    	jmp    *0x780e(%rip)        # 14000e594 <__imp___gxx_personality_seh0>
   140006d86:	90                   	nop
   140006d87:	90                   	nop

0000000140006d88 <__cxa_throw>:
   140006d88:	ff 25 fe 77 00 00    	jmp    *0x77fe(%rip)        # 14000e58c <__imp___cxa_throw>
   140006d8e:	90                   	nop
   140006d8f:	90                   	nop

0000000140006d90 <__cxa_rethrow>:
   140006d90:	ff 25 ee 77 00 00    	jmp    *0x77ee(%rip)        # 14000e584 <__imp___cxa_rethrow>
   140006d96:	90                   	nop
   140006d97:	90                   	nop

0000000140006d98 <__cxa_free_exception>:
   140006d98:	ff 25 de 77 00 00    	jmp    *0x77de(%rip)        # 14000e57c <__imp___cxa_free_exception>
   140006d9e:	90                   	nop
   140006d9f:	90                   	nop

0000000140006da0 <__cxa_end_catch>:
   140006da0:	ff 25 ce 77 00 00    	jmp    *0x77ce(%rip)        # 14000e574 <__imp___cxa_end_catch>
   140006da6:	90                   	nop
   140006da7:	90                   	nop

0000000140006da8 <__cxa_begin_catch>:
   140006da8:	ff 25 be 77 00 00    	jmp    *0x77be(%rip)        # 14000e56c <__imp___cxa_begin_catch>
   140006dae:	90                   	nop
   140006daf:	90                   	nop

0000000140006db0 <__cxa_allocate_exception>:
   140006db0:	ff 25 ae 77 00 00    	jmp    *0x77ae(%rip)        # 14000e564 <__imp___cxa_allocate_exception>
   140006db6:	90                   	nop
   140006db7:	90                   	nop

0000000140006db8 <_Znwy>:
   140006db8:	ff 25 9e 77 00 00    	jmp    *0x779e(%rip)        # 14000e55c <__imp__Znwy>
   140006dbe:	90                   	nop
   140006dbf:	90                   	nop

0000000140006dc0 <_ZdlPvy>:
   140006dc0:	ff 25 8e 77 00 00    	jmp    *0x778e(%rip)        # 14000e554 <__imp__ZdlPvy>
   140006dc6:	90                   	nop
   140006dc7:	90                   	nop

0000000140006dc8 <_ZSt24__throw_out_of_range_fmtPKcz>:
   140006dc8:	ff 25 3e 77 00 00    	jmp    *0x773e(%rip)        # 14000e50c <__imp__ZSt24__throw_out_of_range_fmtPKcz>
   140006dce:	90                   	nop
   140006dcf:	90                   	nop

0000000140006dd0 <_ZSt20__throw_length_errorPKc>:
   140006dd0:	ff 25 2e 77 00 00    	jmp    *0x772e(%rip)        # 14000e504 <__imp__ZSt20__throw_length_errorPKc>
   140006dd6:	90                   	nop
   140006dd7:	90                   	nop

0000000140006dd8 <_ZSt16__throw_bad_castv>:
   140006dd8:	ff 25 1e 77 00 00    	jmp    *0x771e(%rip)        # 14000e4fc <__imp__ZSt16__throw_bad_castv>
   140006dde:	90                   	nop
   140006ddf:	90                   	nop

0000000140006de0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>:
   140006de0:	ff 25 0e 77 00 00    	jmp    *0x770e(%rip)        # 14000e4f4 <__imp__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x>
   140006de6:	90                   	nop
   140006de7:	90                   	nop

0000000140006de8 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>:
   140006de8:	ff 25 fe 76 00 00    	jmp    *0x76fe(%rip)        # 14000e4ec <__imp__ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E>
   140006dee:	90                   	nop
   140006def:	90                   	nop

0000000140006df0 <_ZNSt8ios_baseD2Ev>:
   140006df0:	ff 25 ee 76 00 00    	jmp    *0x76ee(%rip)        # 14000e4e4 <__imp__ZNSt8ios_baseD2Ev>
   140006df6:	90                   	nop
   140006df7:	90                   	nop

0000000140006df8 <_ZNSt8ios_baseC2Ev>:
   140006df8:	ff 25 de 76 00 00    	jmp    *0x76de(%rip)        # 14000e4dc <__imp__ZNSt8ios_baseC2Ev>
   140006dfe:	90                   	nop
   140006dff:	90                   	nop

0000000140006e00 <_ZNSt8ios_base4InitD1Ev>:
   140006e00:	ff 25 ce 76 00 00    	jmp    *0x76ce(%rip)        # 14000e4d4 <__imp__ZNSt8ios_base4InitD1Ev>
   140006e06:	90                   	nop
   140006e07:	90                   	nop

0000000140006e08 <_ZNSt8ios_base4InitC1Ev>:
   140006e08:	ff 25 be 76 00 00    	jmp    *0x76be(%rip)        # 14000e4cc <__imp__ZNSt8ios_base4InitC1Ev>
   140006e0e:	90                   	nop
   140006e0f:	90                   	nop

0000000140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>:
   140006e10:	ff 25 ae 76 00 00    	jmp    *0x76ae(%rip)        # 14000e4c4 <__imp__ZNSt8__detail15_List_node_base9_M_unhookEv>
   140006e16:	90                   	nop
   140006e17:	90                   	nop

0000000140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>:
   140006e18:	ff 25 9e 76 00 00    	jmp    *0x769e(%rip)        # 14000e4bc <__imp__ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140006e1e:	90                   	nop
   140006e1f:	90                   	nop

0000000140006e20 <_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>:
   140006e20:	ff 25 8e 76 00 00    	jmp    *0x768e(%rip)        # 14000e4b4 <__imp__ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_>
   140006e26:	90                   	nop
   140006e27:	90                   	nop

0000000140006e28 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140006e28:	ff 25 7e 76 00 00    	jmp    *0x767e(%rip)        # 14000e4ac <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140006e2e:	90                   	nop
   140006e2f:	90                   	nop

0000000140006e30 <_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>:
   140006e30:	ff 25 6e 76 00 00    	jmp    *0x766e(%rip)        # 14000e4a4 <__imp__ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcyy>
   140006e36:	90                   	nop
   140006e37:	90                   	nop

0000000140006e38 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>:
   140006e38:	ff 25 5e 76 00 00    	jmp    *0x765e(%rip)        # 14000e49c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_>
   140006e3e:	90                   	nop
   140006e3f:	90                   	nop

0000000140006e40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>:
   140006e40:	ff 25 4e 76 00 00    	jmp    *0x764e(%rip)        # 14000e494 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy>
   140006e46:	90                   	nop
   140006e47:	90                   	nop

0000000140006e48 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>:
   140006e48:	ff 25 3e 76 00 00    	jmp    *0x763e(%rip)        # 14000e48c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy>
   140006e4e:	90                   	nop
   140006e4f:	90                   	nop

0000000140006e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>:
   140006e50:	ff 25 2e 76 00 00    	jmp    *0x762e(%rip)        # 14000e484 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy>
   140006e56:	90                   	nop
   140006e57:	90                   	nop

0000000140006e58 <_ZNSt6localeD1Ev>:
   140006e58:	ff 25 1e 76 00 00    	jmp    *0x761e(%rip)        # 14000e47c <__imp__ZNSt6localeD1Ev>
   140006e5e:	90                   	nop
   140006e5f:	90                   	nop

0000000140006e60 <_ZNSt6localeC1Ev>:
   140006e60:	ff 25 0e 76 00 00    	jmp    *0x760e(%rip)        # 14000e474 <__imp__ZNSt6localeC1Ev>
   140006e66:	90                   	nop
   140006e67:	90                   	nop

0000000140006e68 <_ZNSt16invalid_argumentD1Ev>:
   140006e68:	ff 25 fe 75 00 00    	jmp    *0x75fe(%rip)        # 14000e46c <__imp__ZNSt16invalid_argumentD1Ev>
   140006e6e:	90                   	nop
   140006e6f:	90                   	nop

0000000140006e70 <_ZNSt16invalid_argumentC1EPKc>:
   140006e70:	ff 25 ee 75 00 00    	jmp    *0x75ee(%rip)        # 14000e464 <__imp__ZNSt16invalid_argumentC1EPKc>
   140006e76:	90                   	nop
   140006e77:	90                   	nop

0000000140006e78 <_ZNSt13runtime_errorD1Ev>:
   140006e78:	ff 25 de 75 00 00    	jmp    *0x75de(%rip)        # 14000e45c <__imp__ZNSt13runtime_errorD1Ev>
   140006e7e:	90                   	nop
   140006e7f:	90                   	nop

0000000140006e80 <_ZNSt13runtime_errorC1EPKc>:
   140006e80:	ff 25 ce 75 00 00    	jmp    *0x75ce(%rip)        # 14000e454 <__imp__ZNSt13runtime_errorC1EPKc>
   140006e86:	90                   	nop
   140006e87:	90                   	nop

0000000140006e88 <_ZNSolsEi>:
   140006e88:	ff 25 be 75 00 00    	jmp    *0x75be(%rip)        # 14000e44c <__imp__ZNSolsEi>
   140006e8e:	90                   	nop
   140006e8f:	90                   	nop

0000000140006e90 <_ZNSo5flushEv>:
   140006e90:	ff 25 ae 75 00 00    	jmp    *0x75ae(%rip)        # 14000e444 <__imp__ZNSo5flushEv>
   140006e96:	90                   	nop
   140006e97:	90                   	nop

0000000140006e98 <_ZNSo3putEc>:
   140006e98:	ff 25 9e 75 00 00    	jmp    *0x759e(%rip)        # 14000e43c <__imp__ZNSo3putEc>
   140006e9e:	90                   	nop
   140006e9f:	90                   	nop

0000000140006ea0 <_ZNKSt5ctypeIcE13_M_widen_initEv>:
   140006ea0:	ff 25 8e 75 00 00    	jmp    *0x758e(%rip)        # 14000e434 <__imp__ZNKSt5ctypeIcE13_M_widen_initEv>
   140006ea6:	90                   	nop
   140006ea7:	90                   	nop
   140006ea8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140006eaf:	00 

0000000140006eb0 <__do_global_dtors>:
   140006eb0:	48 83 ec 28          	sub    $0x28,%rsp
   140006eb4:	48 8b 05 45 21 00 00 	mov    0x2145(%rip),%rax        # 140009000 <__data_start__>
   140006ebb:	48 8b 00             	mov    (%rax),%rax
   140006ebe:	48 85 c0             	test   %rax,%rax
   140006ec1:	74 22                	je     140006ee5 <__do_global_dtors+0x35>
   140006ec3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006ec8:	ff d0                	call   *%rax
   140006eca:	48 8b 05 2f 21 00 00 	mov    0x212f(%rip),%rax        # 140009000 <__data_start__>
   140006ed1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140006ed5:	48 8b 40 08          	mov    0x8(%rax),%rax
   140006ed9:	48 89 15 20 21 00 00 	mov    %rdx,0x2120(%rip)        # 140009000 <__data_start__>
   140006ee0:	48 85 c0             	test   %rax,%rax
   140006ee3:	75 e3                	jne    140006ec8 <__do_global_dtors+0x18>
   140006ee5:	48 83 c4 28          	add    $0x28,%rsp
   140006ee9:	c3                   	ret
   140006eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140006ef0 <__do_global_ctors>:
   140006ef0:	56                   	push   %rsi
   140006ef1:	53                   	push   %rbx
   140006ef2:	48 83 ec 28          	sub    $0x28,%rsp
   140006ef6:	48 8b 15 c3 35 00 00 	mov    0x35c3(%rip),%rdx        # 14000a4c0 <.refptr.__CTOR_LIST__>
   140006efd:	48 8b 02             	mov    (%rdx),%rax
   140006f00:	89 c1                	mov    %eax,%ecx
   140006f02:	83 f8 ff             	cmp    $0xffffffff,%eax
   140006f05:	74 39                	je     140006f40 <__do_global_ctors+0x50>
   140006f07:	85 c9                	test   %ecx,%ecx
   140006f09:	74 20                	je     140006f2b <__do_global_ctors+0x3b>
   140006f0b:	89 c8                	mov    %ecx,%eax
   140006f0d:	83 e9 01             	sub    $0x1,%ecx
   140006f10:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140006f14:	48 29 c8             	sub    %rcx,%rax
   140006f17:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   140006f1c:	0f 1f 40 00          	nopl   0x0(%rax)
   140006f20:	ff 13                	call   *(%rbx)
   140006f22:	48 83 eb 08          	sub    $0x8,%rbx
   140006f26:	48 39 f3             	cmp    %rsi,%rbx
   140006f29:	75 f5                	jne    140006f20 <__do_global_ctors+0x30>
   140006f2b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140006eb0 <__do_global_dtors>
   140006f32:	48 83 c4 28          	add    $0x28,%rsp
   140006f36:	5b                   	pop    %rbx
   140006f37:	5e                   	pop    %rsi
   140006f38:	e9 d3 a4 ff ff       	jmp    140001410 <atexit>
   140006f3d:	0f 1f 00             	nopl   (%rax)
   140006f40:	31 c0                	xor    %eax,%eax
   140006f42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140006f48:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140006f4c:	89 c1                	mov    %eax,%ecx
   140006f4e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140006f53:	4c 89 c0             	mov    %r8,%rax
   140006f56:	75 f0                	jne    140006f48 <__do_global_ctors+0x58>
   140006f58:	eb ad                	jmp    140006f07 <__do_global_ctors+0x17>
   140006f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140006f60 <__main>:
   140006f60:	8b 05 1a 61 00 00    	mov    0x611a(%rip),%eax        # 14000d080 <initialized>
   140006f66:	85 c0                	test   %eax,%eax
   140006f68:	74 06                	je     140006f70 <__main+0x10>
   140006f6a:	c3                   	ret
   140006f6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140006f70:	c7 05 06 61 00 00 01 	movl   $0x1,0x6106(%rip)        # 14000d080 <initialized>
   140006f77:	00 00 00 
   140006f7a:	e9 71 ff ff ff       	jmp    140006ef0 <__do_global_ctors>
   140006f7f:	90                   	nop

0000000140006f80 <_setargv>:
   140006f80:	31 c0                	xor    %eax,%eax
   140006f82:	c3                   	ret
   140006f83:	90                   	nop
   140006f84:	90                   	nop
   140006f85:	90                   	nop
   140006f86:	90                   	nop
   140006f87:	90                   	nop
   140006f88:	90                   	nop
   140006f89:	90                   	nop
   140006f8a:	90                   	nop
   140006f8b:	90                   	nop
   140006f8c:	90                   	nop
   140006f8d:	90                   	nop
   140006f8e:	90                   	nop
   140006f8f:	90                   	nop

0000000140006f90 <__dyn_tls_dtor>:
   140006f90:	48 83 ec 28          	sub    $0x28,%rsp
   140006f94:	83 fa 03             	cmp    $0x3,%edx
   140006f97:	74 17                	je     140006fb0 <__dyn_tls_dtor+0x20>
   140006f99:	85 d2                	test   %edx,%edx
   140006f9b:	74 13                	je     140006fb0 <__dyn_tls_dtor+0x20>
   140006f9d:	b8 01 00 00 00       	mov    $0x1,%eax
   140006fa2:	48 83 c4 28          	add    $0x28,%rsp
   140006fa6:	c3                   	ret
   140006fa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140006fae:	00 00 
   140006fb0:	e8 5b 0a 00 00       	call   140007a10 <__mingw_TLScallback>
   140006fb5:	b8 01 00 00 00       	mov    $0x1,%eax
   140006fba:	48 83 c4 28          	add    $0x28,%rsp
   140006fbe:	c3                   	ret
   140006fbf:	90                   	nop

0000000140006fc0 <__dyn_tls_init>:
   140006fc0:	56                   	push   %rsi
   140006fc1:	53                   	push   %rbx
   140006fc2:	48 83 ec 28          	sub    $0x28,%rsp
   140006fc6:	48 8b 05 53 34 00 00 	mov    0x3453(%rip),%rax        # 14000a420 <.refptr._CRT_MT>
   140006fcd:	83 38 02             	cmpl   $0x2,(%rax)
   140006fd0:	74 06                	je     140006fd8 <__dyn_tls_init+0x18>
   140006fd2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140006fd8:	83 fa 02             	cmp    $0x2,%edx
   140006fdb:	74 13                	je     140006ff0 <__dyn_tls_init+0x30>
   140006fdd:	83 fa 01             	cmp    $0x1,%edx
   140006fe0:	74 4e                	je     140007030 <__dyn_tls_init+0x70>
   140006fe2:	b8 01 00 00 00       	mov    $0x1,%eax
   140006fe7:	48 83 c4 28          	add    $0x28,%rsp
   140006feb:	5b                   	pop    %rbx
   140006fec:	5e                   	pop    %rsi
   140006fed:	c3                   	ret
   140006fee:	66 90                	xchg   %ax,%ax
   140006ff0:	48 8d 1d 61 80 00 00 	lea    0x8061(%rip),%rbx        # 14000f058 <__xd_z>
   140006ff7:	48 8d 35 5a 80 00 00 	lea    0x805a(%rip),%rsi        # 14000f058 <__xd_z>
   140006ffe:	48 39 de             	cmp    %rbx,%rsi
   140007001:	74 df                	je     140006fe2 <__dyn_tls_init+0x22>
   140007003:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007008:	48 8b 03             	mov    (%rbx),%rax
   14000700b:	48 85 c0             	test   %rax,%rax
   14000700e:	74 02                	je     140007012 <__dyn_tls_init+0x52>
   140007010:	ff d0                	call   *%rax
   140007012:	48 83 c3 08          	add    $0x8,%rbx
   140007016:	48 39 de             	cmp    %rbx,%rsi
   140007019:	75 ed                	jne    140007008 <__dyn_tls_init+0x48>
   14000701b:	b8 01 00 00 00       	mov    $0x1,%eax
   140007020:	48 83 c4 28          	add    $0x28,%rsp
   140007024:	5b                   	pop    %rbx
   140007025:	5e                   	pop    %rsi
   140007026:	c3                   	ret
   140007027:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000702e:	00 00 
   140007030:	e8 db 09 00 00       	call   140007a10 <__mingw_TLScallback>
   140007035:	b8 01 00 00 00       	mov    $0x1,%eax
   14000703a:	48 83 c4 28          	add    $0x28,%rsp
   14000703e:	5b                   	pop    %rbx
   14000703f:	5e                   	pop    %rsi
   140007040:	c3                   	ret
   140007041:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007048:	00 00 00 00 
   14000704c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140007050 <__tlregdtor>:
   140007050:	31 c0                	xor    %eax,%eax
   140007052:	c3                   	ret
   140007053:	90                   	nop
   140007054:	90                   	nop
   140007055:	90                   	nop
   140007056:	90                   	nop
   140007057:	90                   	nop
   140007058:	90                   	nop
   140007059:	90                   	nop
   14000705a:	90                   	nop
   14000705b:	90                   	nop
   14000705c:	90                   	nop
   14000705d:	90                   	nop
   14000705e:	90                   	nop
   14000705f:	90                   	nop

0000000140007060 <_matherr>:
   140007060:	56                   	push   %rsi
   140007061:	53                   	push   %rbx
   140007062:	48 83 ec 78          	sub    $0x78,%rsp
   140007066:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000706b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140007070:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140007076:	83 39 06             	cmpl   $0x6,(%rcx)
   140007079:	0f 87 cd 00 00 00    	ja     14000714c <_matherr+0xec>
   14000707f:	8b 01                	mov    (%rcx),%eax
   140007081:	48 8d 15 dc 31 00 00 	lea    0x31dc(%rip),%rdx        # 14000a264 <.rdata+0x124>
   140007088:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000708c:	48 01 d0             	add    %rdx,%rax
   14000708f:	ff e0                	jmp    *%rax
   140007091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007098:	48 8d 1d c0 30 00 00 	lea    0x30c0(%rip),%rbx        # 14000a15f <.rdata+0x1f>
   14000709f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400070a5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400070aa:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400070af:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400070b3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400070b8:	e8 e3 0e 00 00       	call   140007fa0 <__acrt_iob_func>
   1400070bd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400070c4:	49 89 d8             	mov    %rbx,%r8
   1400070c7:	48 8d 15 6a 31 00 00 	lea    0x316a(%rip),%rdx        # 14000a238 <.rdata+0xf8>
   1400070ce:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400070d4:	48 89 c1             	mov    %rax,%rcx
   1400070d7:	49 89 f1             	mov    %rsi,%r9
   1400070da:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400070e0:	e8 3b 0f 00 00       	call   140008020 <fprintf>
   1400070e5:	90                   	nop
   1400070e6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400070eb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400070f0:	31 c0                	xor    %eax,%eax
   1400070f2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400070f8:	48 83 c4 78          	add    $0x78,%rsp
   1400070fc:	5b                   	pop    %rbx
   1400070fd:	5e                   	pop    %rsi
   1400070fe:	c3                   	ret
   1400070ff:	90                   	nop
   140007100:	48 8d 1d 39 30 00 00 	lea    0x3039(%rip),%rbx        # 14000a140 <.rdata>
   140007107:	eb 96                	jmp    14000709f <_matherr+0x3f>
   140007109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007110:	48 8d 1d 89 30 00 00 	lea    0x3089(%rip),%rbx        # 14000a1a0 <.rdata+0x60>
   140007117:	eb 86                	jmp    14000709f <_matherr+0x3f>
   140007119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007120:	48 8d 1d 59 30 00 00 	lea    0x3059(%rip),%rbx        # 14000a180 <.rdata+0x40>
   140007127:	e9 73 ff ff ff       	jmp    14000709f <_matherr+0x3f>
   14000712c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007130:	48 8d 1d b9 30 00 00 	lea    0x30b9(%rip),%rbx        # 14000a1f0 <.rdata+0xb0>
   140007137:	e9 63 ff ff ff       	jmp    14000709f <_matherr+0x3f>
   14000713c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007140:	48 8d 1d 81 30 00 00 	lea    0x3081(%rip),%rbx        # 14000a1c8 <.rdata+0x88>
   140007147:	e9 53 ff ff ff       	jmp    14000709f <_matherr+0x3f>
   14000714c:	48 8d 1d d3 30 00 00 	lea    0x30d3(%rip),%rbx        # 14000a226 <.rdata+0xe6>
   140007153:	e9 47 ff ff ff       	jmp    14000709f <_matherr+0x3f>
   140007158:	90                   	nop
   140007159:	90                   	nop
   14000715a:	90                   	nop
   14000715b:	90                   	nop
   14000715c:	90                   	nop
   14000715d:	90                   	nop
   14000715e:	90                   	nop
   14000715f:	90                   	nop

0000000140007160 <_fpreset>:
   140007160:	db e3                	fninit
   140007162:	c3                   	ret
   140007163:	90                   	nop
   140007164:	90                   	nop
   140007165:	90                   	nop
   140007166:	90                   	nop
   140007167:	90                   	nop
   140007168:	90                   	nop
   140007169:	90                   	nop
   14000716a:	90                   	nop
   14000716b:	90                   	nop
   14000716c:	90                   	nop
   14000716d:	90                   	nop
   14000716e:	90                   	nop
   14000716f:	90                   	nop

0000000140007170 <__report_error>:
   140007170:	56                   	push   %rsi
   140007171:	53                   	push   %rbx
   140007172:	48 83 ec 38          	sub    $0x38,%rsp
   140007176:	48 89 cb             	mov    %rcx,%rbx
   140007179:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000717e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140007183:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140007188:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000718d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140007192:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140007197:	e8 04 0e 00 00       	call   140007fa0 <__acrt_iob_func>
   14000719c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400071a2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400071a7:	48 8d 0d d2 30 00 00 	lea    0x30d2(%rip),%rcx        # 14000a280 <.rdata>
   1400071ae:	49 89 c1             	mov    %rax,%r9
   1400071b1:	e8 7a 0e 00 00       	call   140008030 <fwrite>
   1400071b6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   1400071bb:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400071c0:	e8 db 0d 00 00       	call   140007fa0 <__acrt_iob_func>
   1400071c5:	48 89 da             	mov    %rbx,%rdx
   1400071c8:	48 89 c1             	mov    %rax,%rcx
   1400071cb:	49 89 f0             	mov    %rsi,%r8
   1400071ce:	e8 8d 0e 00 00       	call   140008060 <vfprintf>
   1400071d3:	e8 30 0e 00 00       	call   140008008 <abort>
   1400071d8:	90                   	nop
   1400071d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400071e0 <mark_section_writable>:
   1400071e0:	57                   	push   %rdi
   1400071e1:	56                   	push   %rsi
   1400071e2:	53                   	push   %rbx
   1400071e3:	48 83 ec 50          	sub    $0x50,%rsp
   1400071e7:	48 63 35 f6 5e 00 00 	movslq 0x5ef6(%rip),%rsi        # 14000d0e4 <maxSections>
   1400071ee:	48 89 cb             	mov    %rcx,%rbx
   1400071f1:	85 f6                	test   %esi,%esi
   1400071f3:	0f 8e 17 01 00 00    	jle    140007310 <mark_section_writable+0x130>
   1400071f9:	48 8b 05 e8 5e 00 00 	mov    0x5ee8(%rip),%rax        # 14000d0e8 <the_secs>
   140007200:	45 31 c9             	xor    %r9d,%r9d
   140007203:	48 83 c0 18          	add    $0x18,%rax
   140007207:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000720e:	00 00 
   140007210:	4c 8b 00             	mov    (%rax),%r8
   140007213:	4c 39 c3             	cmp    %r8,%rbx
   140007216:	72 13                	jb     14000722b <mark_section_writable+0x4b>
   140007218:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000721c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000721f:	49 01 d0             	add    %rdx,%r8
   140007222:	4c 39 c3             	cmp    %r8,%rbx
   140007225:	0f 82 8a 00 00 00    	jb     1400072b5 <mark_section_writable+0xd5>
   14000722b:	41 83 c1 01          	add    $0x1,%r9d
   14000722f:	48 83 c0 28          	add    $0x28,%rax
   140007233:	41 39 f1             	cmp    %esi,%r9d
   140007236:	75 d8                	jne    140007210 <mark_section_writable+0x30>
   140007238:	48 89 d9             	mov    %rbx,%rcx
   14000723b:	e8 f0 09 00 00       	call   140007c30 <__mingw_GetSectionForAddress>
   140007240:	48 89 c7             	mov    %rax,%rdi
   140007243:	48 85 c0             	test   %rax,%rax
   140007246:	0f 84 e6 00 00 00    	je     140007332 <mark_section_writable+0x152>
   14000724c:	48 8b 05 95 5e 00 00 	mov    0x5e95(%rip),%rax        # 14000d0e8 <the_secs>
   140007253:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140007257:	48 c1 e3 03          	shl    $0x3,%rbx
   14000725b:	48 01 d8             	add    %rbx,%rax
   14000725e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140007262:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140007268:	e8 03 0b 00 00       	call   140007d70 <_GetPEImageBase>
   14000726d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140007270:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140007276:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000727a:	48 8b 05 67 5e 00 00 	mov    0x5e67(%rip),%rax        # 14000d0e8 <the_secs>
   140007281:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140007286:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000728b:	ff 15 cb 70 00 00    	call   *0x70cb(%rip)        # 14000e35c <__imp_VirtualQuery>
   140007291:	48 85 c0             	test   %rax,%rax
   140007294:	0f 84 7d 00 00 00    	je     140007317 <mark_section_writable+0x137>
   14000729a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000729e:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400072a1:	83 e2 bf             	and    $0xffffffbf,%edx
   1400072a4:	74 08                	je     1400072ae <mark_section_writable+0xce>
   1400072a6:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400072a9:	83 e2 fb             	and    $0xfffffffb,%edx
   1400072ac:	75 12                	jne    1400072c0 <mark_section_writable+0xe0>
   1400072ae:	83 05 2f 5e 00 00 01 	addl   $0x1,0x5e2f(%rip)        # 14000d0e4 <maxSections>
   1400072b5:	48 83 c4 50          	add    $0x50,%rsp
   1400072b9:	5b                   	pop    %rbx
   1400072ba:	5e                   	pop    %rsi
   1400072bb:	5f                   	pop    %rdi
   1400072bc:	c3                   	ret
   1400072bd:	0f 1f 00             	nopl   (%rax)
   1400072c0:	83 f8 02             	cmp    $0x2,%eax
   1400072c3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400072c8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400072cd:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400072d3:	b8 04 00 00 00       	mov    $0x4,%eax
   1400072d8:	44 0f 44 c0          	cmove  %eax,%r8d
   1400072dc:	48 03 1d 05 5e 00 00 	add    0x5e05(%rip),%rbx        # 14000d0e8 <the_secs>
   1400072e3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400072e7:	49 89 d9             	mov    %rbx,%r9
   1400072ea:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400072ee:	ff 15 60 70 00 00    	call   *0x7060(%rip)        # 14000e354 <__imp_VirtualProtect>
   1400072f4:	85 c0                	test   %eax,%eax
   1400072f6:	75 b6                	jne    1400072ae <mark_section_writable+0xce>
   1400072f8:	ff 15 26 70 00 00    	call   *0x7026(%rip)        # 14000e324 <__imp_GetLastError>
   1400072fe:	48 8d 0d f3 2f 00 00 	lea    0x2ff3(%rip),%rcx        # 14000a2f8 <.rdata+0x78>
   140007305:	89 c2                	mov    %eax,%edx
   140007307:	e8 64 fe ff ff       	call   140007170 <__report_error>
   14000730c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007310:	31 f6                	xor    %esi,%esi
   140007312:	e9 21 ff ff ff       	jmp    140007238 <mark_section_writable+0x58>
   140007317:	48 8b 05 ca 5d 00 00 	mov    0x5dca(%rip),%rax        # 14000d0e8 <the_secs>
   14000731e:	8b 57 08             	mov    0x8(%rdi),%edx
   140007321:	48 8d 0d 98 2f 00 00 	lea    0x2f98(%rip),%rcx        # 14000a2c0 <.rdata+0x40>
   140007328:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000732d:	e8 3e fe ff ff       	call   140007170 <__report_error>
   140007332:	48 89 da             	mov    %rbx,%rdx
   140007335:	48 8d 0d 64 2f 00 00 	lea    0x2f64(%rip),%rcx        # 14000a2a0 <.rdata+0x20>
   14000733c:	e8 2f fe ff ff       	call   140007170 <__report_error>
   140007341:	90                   	nop
   140007342:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007349:	00 00 00 00 
   14000734d:	0f 1f 00             	nopl   (%rax)

0000000140007350 <_pei386_runtime_relocator>:
   140007350:	55                   	push   %rbp
   140007351:	41 57                	push   %r15
   140007353:	41 56                	push   %r14
   140007355:	41 55                	push   %r13
   140007357:	41 54                	push   %r12
   140007359:	57                   	push   %rdi
   14000735a:	56                   	push   %rsi
   14000735b:	53                   	push   %rbx
   14000735c:	48 83 ec 48          	sub    $0x48,%rsp
   140007360:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140007365:	44 8b 25 74 5d 00 00 	mov    0x5d74(%rip),%r12d        # 14000d0e0 <was_init.0>
   14000736c:	45 85 e4             	test   %r12d,%r12d
   14000736f:	74 17                	je     140007388 <_pei386_runtime_relocator+0x38>
   140007371:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140007375:	5b                   	pop    %rbx
   140007376:	5e                   	pop    %rsi
   140007377:	5f                   	pop    %rdi
   140007378:	41 5c                	pop    %r12
   14000737a:	41 5d                	pop    %r13
   14000737c:	41 5e                	pop    %r14
   14000737e:	41 5f                	pop    %r15
   140007380:	5d                   	pop    %rbp
   140007381:	c3                   	ret
   140007382:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007388:	c7 05 4e 5d 00 00 01 	movl   $0x1,0x5d4e(%rip)        # 14000d0e0 <was_init.0>
   14000738f:	00 00 00 
   140007392:	e8 19 09 00 00       	call   140007cb0 <__mingw_GetSectionCount>
   140007397:	48 98                	cltq
   140007399:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   14000739d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400073a4:	00 
   1400073a5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400073a9:	e8 72 0b 00 00       	call   140007f20 <___chkstk_ms>
   1400073ae:	4c 8b 2d 2b 31 00 00 	mov    0x312b(%rip),%r13        # 14000a4e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400073b5:	48 8b 1d 34 31 00 00 	mov    0x3134(%rip),%rbx        # 14000a4f0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400073bc:	c7 05 1e 5d 00 00 00 	movl   $0x0,0x5d1e(%rip)        # 14000d0e4 <maxSections>
   1400073c3:	00 00 00 
   1400073c6:	48 29 c4             	sub    %rax,%rsp
   1400073c9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400073ce:	48 89 05 13 5d 00 00 	mov    %rax,0x5d13(%rip)        # 14000d0e8 <the_secs>
   1400073d5:	4c 89 e8             	mov    %r13,%rax
   1400073d8:	48 29 d8             	sub    %rbx,%rax
   1400073db:	48 83 f8 07          	cmp    $0x7,%rax
   1400073df:	7e 90                	jle    140007371 <_pei386_runtime_relocator+0x21>
   1400073e1:	8b 13                	mov    (%rbx),%edx
   1400073e3:	48 83 f8 0b          	cmp    $0xb,%rax
   1400073e7:	0f 8f 7b 01 00 00    	jg     140007568 <_pei386_runtime_relocator+0x218>
   1400073ed:	8b 03                	mov    (%rbx),%eax
   1400073ef:	85 c0                	test   %eax,%eax
   1400073f1:	0f 85 69 02 00 00    	jne    140007660 <_pei386_runtime_relocator+0x310>
   1400073f7:	8b 43 04             	mov    0x4(%rbx),%eax
   1400073fa:	85 c0                	test   %eax,%eax
   1400073fc:	0f 85 5e 02 00 00    	jne    140007660 <_pei386_runtime_relocator+0x310>
   140007402:	8b 53 08             	mov    0x8(%rbx),%edx
   140007405:	83 fa 01             	cmp    $0x1,%edx
   140007408:	0f 85 90 02 00 00    	jne    14000769e <_pei386_runtime_relocator+0x34e>
   14000740e:	48 83 c3 0c          	add    $0xc,%rbx
   140007412:	4c 39 eb             	cmp    %r13,%rbx
   140007415:	0f 83 56 ff ff ff    	jae    140007371 <_pei386_runtime_relocator+0x21>
   14000741b:	4c 8b 35 ae 30 00 00 	mov    0x30ae(%rip),%r14        # 14000a4d0 <.refptr.__ImageBase>
   140007422:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140007429:	ff ff ff 
   14000742c:	eb 54                	jmp    140007482 <_pei386_runtime_relocator+0x132>
   14000742e:	66 90                	xchg   %ax,%ax
   140007430:	0f b6 37             	movzbl (%rdi),%esi
   140007433:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140007439:	40 84 f6             	test   %sil,%sil
   14000743c:	0f 89 06 02 00 00    	jns    140007648 <_pei386_runtime_relocator+0x2f8>
   140007442:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140007449:	48 29 c6             	sub    %rax,%rsi
   14000744c:	4c 01 ce             	add    %r9,%rsi
   14000744f:	85 c9                	test   %ecx,%ecx
   140007451:	75 17                	jne    14000746a <_pei386_runtime_relocator+0x11a>
   140007453:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   14000745a:	0f 8f 4f 01 00 00    	jg     1400075af <_pei386_runtime_relocator+0x25f>
   140007460:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140007464:	0f 8c 45 01 00 00    	jl     1400075af <_pei386_runtime_relocator+0x25f>
   14000746a:	48 89 f9             	mov    %rdi,%rcx
   14000746d:	e8 6e fd ff ff       	call   1400071e0 <mark_section_writable>
   140007472:	40 88 37             	mov    %sil,(%rdi)
   140007475:	48 83 c3 0c          	add    $0xc,%rbx
   140007479:	4c 39 eb             	cmp    %r13,%rbx
   14000747c:	0f 83 8e 00 00 00    	jae    140007510 <_pei386_runtime_relocator+0x1c0>
   140007482:	8b 03                	mov    (%rbx),%eax
   140007484:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140007487:	8b 7b 04             	mov    0x4(%rbx),%edi
   14000748a:	4c 01 f0             	add    %r14,%rax
   14000748d:	0f b6 d1             	movzbl %cl,%edx
   140007490:	4c 8b 08             	mov    (%rax),%r9
   140007493:	4c 01 f7             	add    %r14,%rdi
   140007496:	83 fa 20             	cmp    $0x20,%edx
   140007499:	0f 84 29 01 00 00    	je     1400075c8 <_pei386_runtime_relocator+0x278>
   14000749f:	0f 87 eb 00 00 00    	ja     140007590 <_pei386_runtime_relocator+0x240>
   1400074a5:	83 fa 08             	cmp    $0x8,%edx
   1400074a8:	74 86                	je     140007430 <_pei386_runtime_relocator+0xe0>
   1400074aa:	83 fa 10             	cmp    $0x10,%edx
   1400074ad:	0f 85 df 01 00 00    	jne    140007692 <_pei386_runtime_relocator+0x342>
   1400074b3:	0f b7 37             	movzwl (%rdi),%esi
   1400074b6:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400074bc:	66 85 f6             	test   %si,%si
   1400074bf:	0f 89 6b 01 00 00    	jns    140007630 <_pei386_runtime_relocator+0x2e0>
   1400074c5:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   1400074cc:	48 29 c6             	sub    %rax,%rsi
   1400074cf:	4c 01 ce             	add    %r9,%rsi
   1400074d2:	85 c9                	test   %ecx,%ecx
   1400074d4:	75 1a                	jne    1400074f0 <_pei386_runtime_relocator+0x1a0>
   1400074d6:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   1400074dd:	0f 8c cc 00 00 00    	jl     1400075af <_pei386_runtime_relocator+0x25f>
   1400074e3:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   1400074ea:	0f 8f bf 00 00 00    	jg     1400075af <_pei386_runtime_relocator+0x25f>
   1400074f0:	48 89 f9             	mov    %rdi,%rcx
   1400074f3:	48 83 c3 0c          	add    $0xc,%rbx
   1400074f7:	e8 e4 fc ff ff       	call   1400071e0 <mark_section_writable>
   1400074fc:	66 89 37             	mov    %si,(%rdi)
   1400074ff:	4c 39 eb             	cmp    %r13,%rbx
   140007502:	0f 82 7a ff ff ff    	jb     140007482 <_pei386_runtime_relocator+0x132>
   140007508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000750f:	00 
   140007510:	8b 15 ce 5b 00 00    	mov    0x5bce(%rip),%edx        # 14000d0e4 <maxSections>
   140007516:	85 d2                	test   %edx,%edx
   140007518:	0f 8e 53 fe ff ff    	jle    140007371 <_pei386_runtime_relocator+0x21>
   14000751e:	48 8b 35 2f 6e 00 00 	mov    0x6e2f(%rip),%rsi        # 14000e354 <__imp_VirtualProtect>
   140007525:	31 db                	xor    %ebx,%ebx
   140007527:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   14000752b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007530:	48 8b 05 b1 5b 00 00 	mov    0x5bb1(%rip),%rax        # 14000d0e8 <the_secs>
   140007537:	48 01 d8             	add    %rbx,%rax
   14000753a:	44 8b 00             	mov    (%rax),%r8d
   14000753d:	45 85 c0             	test   %r8d,%r8d
   140007540:	74 0d                	je     14000754f <_pei386_runtime_relocator+0x1ff>
   140007542:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140007546:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000754a:	49 89 f9             	mov    %rdi,%r9
   14000754d:	ff d6                	call   *%rsi
   14000754f:	41 83 c4 01          	add    $0x1,%r12d
   140007553:	48 83 c3 28          	add    $0x28,%rbx
   140007557:	44 3b 25 86 5b 00 00 	cmp    0x5b86(%rip),%r12d        # 14000d0e4 <maxSections>
   14000755e:	7c d0                	jl     140007530 <_pei386_runtime_relocator+0x1e0>
   140007560:	e9 0c fe ff ff       	jmp    140007371 <_pei386_runtime_relocator+0x21>
   140007565:	0f 1f 00             	nopl   (%rax)
   140007568:	85 d2                	test   %edx,%edx
   14000756a:	0f 85 f0 00 00 00    	jne    140007660 <_pei386_runtime_relocator+0x310>
   140007570:	8b 43 04             	mov    0x4(%rbx),%eax
   140007573:	89 c2                	mov    %eax,%edx
   140007575:	0b 53 08             	or     0x8(%rbx),%edx
   140007578:	0f 85 7c fe ff ff    	jne    1400073fa <_pei386_runtime_relocator+0xaa>
   14000757e:	48 83 c3 0c          	add    $0xc,%rbx
   140007582:	e9 66 fe ff ff       	jmp    1400073ed <_pei386_runtime_relocator+0x9d>
   140007587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000758e:	00 00 
   140007590:	83 fa 40             	cmp    $0x40,%edx
   140007593:	0f 85 f9 00 00 00    	jne    140007692 <_pei386_runtime_relocator+0x342>
   140007599:	48 8b 37             	mov    (%rdi),%rsi
   14000759c:	48 29 c6             	sub    %rax,%rsi
   14000759f:	4c 01 ce             	add    %r9,%rsi
   1400075a2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400075a8:	75 66                	jne    140007610 <_pei386_runtime_relocator+0x2c0>
   1400075aa:	48 85 f6             	test   %rsi,%rsi
   1400075ad:	78 61                	js     140007610 <_pei386_runtime_relocator+0x2c0>
   1400075af:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   1400075b4:	49 89 f8             	mov    %rdi,%r8
   1400075b7:	48 8d 0d ca 2d 00 00 	lea    0x2dca(%rip),%rcx        # 14000a388 <.rdata+0x108>
   1400075be:	e8 ad fb ff ff       	call   140007170 <__report_error>
   1400075c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400075c8:	8b 37                	mov    (%rdi),%esi
   1400075ca:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   1400075d0:	85 f6                	test   %esi,%esi
   1400075d2:	79 4c                	jns    140007620 <_pei386_runtime_relocator+0x2d0>
   1400075d4:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   1400075db:	ff ff ff 
   1400075de:	4c 09 de             	or     %r11,%rsi
   1400075e1:	48 29 c6             	sub    %rax,%rsi
   1400075e4:	4c 01 ce             	add    %r9,%rsi
   1400075e7:	85 c9                	test   %ecx,%ecx
   1400075e9:	75 0f                	jne    1400075fa <_pei386_runtime_relocator+0x2aa>
   1400075eb:	4c 39 fe             	cmp    %r15,%rsi
   1400075ee:	7e bf                	jle    1400075af <_pei386_runtime_relocator+0x25f>
   1400075f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400075f5:	48 39 c6             	cmp    %rax,%rsi
   1400075f8:	7f b5                	jg     1400075af <_pei386_runtime_relocator+0x25f>
   1400075fa:	48 89 f9             	mov    %rdi,%rcx
   1400075fd:	e8 de fb ff ff       	call   1400071e0 <mark_section_writable>
   140007602:	89 37                	mov    %esi,(%rdi)
   140007604:	e9 6c fe ff ff       	jmp    140007475 <_pei386_runtime_relocator+0x125>
   140007609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007610:	48 89 f9             	mov    %rdi,%rcx
   140007613:	e8 c8 fb ff ff       	call   1400071e0 <mark_section_writable>
   140007618:	48 89 37             	mov    %rsi,(%rdi)
   14000761b:	e9 55 fe ff ff       	jmp    140007475 <_pei386_runtime_relocator+0x125>
   140007620:	48 29 c6             	sub    %rax,%rsi
   140007623:	4c 01 ce             	add    %r9,%rsi
   140007626:	85 c9                	test   %ecx,%ecx
   140007628:	74 c1                	je     1400075eb <_pei386_runtime_relocator+0x29b>
   14000762a:	eb ce                	jmp    1400075fa <_pei386_runtime_relocator+0x2aa>
   14000762c:	0f 1f 40 00          	nopl   0x0(%rax)
   140007630:	48 29 c6             	sub    %rax,%rsi
   140007633:	4c 01 ce             	add    %r9,%rsi
   140007636:	85 c9                	test   %ecx,%ecx
   140007638:	0f 84 98 fe ff ff    	je     1400074d6 <_pei386_runtime_relocator+0x186>
   14000763e:	e9 ad fe ff ff       	jmp    1400074f0 <_pei386_runtime_relocator+0x1a0>
   140007643:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007648:	48 29 c6             	sub    %rax,%rsi
   14000764b:	4c 01 ce             	add    %r9,%rsi
   14000764e:	85 c9                	test   %ecx,%ecx
   140007650:	0f 84 fd fd ff ff    	je     140007453 <_pei386_runtime_relocator+0x103>
   140007656:	e9 0f fe ff ff       	jmp    14000746a <_pei386_runtime_relocator+0x11a>
   14000765b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007660:	4c 39 eb             	cmp    %r13,%rbx
   140007663:	0f 83 08 fd ff ff    	jae    140007371 <_pei386_runtime_relocator+0x21>
   140007669:	4c 8b 35 60 2e 00 00 	mov    0x2e60(%rip),%r14        # 14000a4d0 <.refptr.__ImageBase>
   140007670:	8b 73 04             	mov    0x4(%rbx),%esi
   140007673:	8b 3b                	mov    (%rbx),%edi
   140007675:	48 83 c3 08          	add    $0x8,%rbx
   140007679:	4c 01 f6             	add    %r14,%rsi
   14000767c:	03 3e                	add    (%rsi),%edi
   14000767e:	48 89 f1             	mov    %rsi,%rcx
   140007681:	e8 5a fb ff ff       	call   1400071e0 <mark_section_writable>
   140007686:	89 3e                	mov    %edi,(%rsi)
   140007688:	4c 39 eb             	cmp    %r13,%rbx
   14000768b:	72 e3                	jb     140007670 <_pei386_runtime_relocator+0x320>
   14000768d:	e9 7e fe ff ff       	jmp    140007510 <_pei386_runtime_relocator+0x1c0>
   140007692:	48 8d 0d bf 2c 00 00 	lea    0x2cbf(%rip),%rcx        # 14000a358 <.rdata+0xd8>
   140007699:	e8 d2 fa ff ff       	call   140007170 <__report_error>
   14000769e:	48 8d 0d 7b 2c 00 00 	lea    0x2c7b(%rip),%rcx        # 14000a320 <.rdata+0xa0>
   1400076a5:	e8 c6 fa ff ff       	call   140007170 <__report_error>
   1400076aa:	90                   	nop
   1400076ab:	90                   	nop
   1400076ac:	90                   	nop
   1400076ad:	90                   	nop
   1400076ae:	90                   	nop
   1400076af:	90                   	nop

00000001400076b0 <__mingw_raise_matherr>:
   1400076b0:	48 83 ec 58          	sub    $0x58,%rsp
   1400076b4:	48 8b 05 35 5a 00 00 	mov    0x5a35(%rip),%rax        # 14000d0f0 <stUserMathErr>
   1400076bb:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   1400076bf:	48 85 c0             	test   %rax,%rax
   1400076c2:	74 25                	je     1400076e9 <__mingw_raise_matherr+0x39>
   1400076c4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   1400076cb:	00 00 
   1400076cd:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   1400076d1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   1400076d6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   1400076db:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   1400076e0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   1400076e6:	ff d0                	call   *%rax
   1400076e8:	90                   	nop
   1400076e9:	48 83 c4 58          	add    $0x58,%rsp
   1400076ed:	c3                   	ret
   1400076ee:	66 90                	xchg   %ax,%ax

00000001400076f0 <__mingw_setusermatherr>:
   1400076f0:	48 89 0d f9 59 00 00 	mov    %rcx,0x59f9(%rip)        # 14000d0f0 <stUserMathErr>
   1400076f7:	e9 e4 08 00 00       	jmp    140007fe0 <__setusermatherr>
   1400076fc:	90                   	nop
   1400076fd:	90                   	nop
   1400076fe:	90                   	nop
   1400076ff:	90                   	nop

0000000140007700 <_gnu_exception_handler>:
   140007700:	53                   	push   %rbx
   140007701:	48 83 ec 20          	sub    $0x20,%rsp
   140007705:	48 8b 11             	mov    (%rcx),%rdx
   140007708:	8b 02                	mov    (%rdx),%eax
   14000770a:	48 89 cb             	mov    %rcx,%rbx
   14000770d:	89 c1                	mov    %eax,%ecx
   14000770f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140007715:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   14000771b:	0f 84 9f 00 00 00    	je     1400077c0 <_gnu_exception_handler+0xc0>
   140007721:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140007726:	77 77                	ja     14000779f <_gnu_exception_handler+0x9f>
   140007728:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   14000772d:	76 21                	jbe    140007750 <_gnu_exception_handler+0x50>
   14000772f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140007734:	83 f8 09             	cmp    $0x9,%eax
   140007737:	77 54                	ja     14000778d <_gnu_exception_handler+0x8d>
   140007739:	48 8d 15 a0 2c 00 00 	lea    0x2ca0(%rip),%rdx        # 14000a3e0 <.rdata>
   140007740:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140007744:	48 01 d0             	add    %rdx,%rax
   140007747:	ff e0                	jmp    *%rax
   140007749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007750:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140007755:	0f 84 d5 00 00 00    	je     140007830 <_gnu_exception_handler+0x130>
   14000775b:	76 3b                	jbe    140007798 <_gnu_exception_handler+0x98>
   14000775d:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140007762:	74 29                	je     14000778d <_gnu_exception_handler+0x8d>
   140007764:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140007769:	75 34                	jne    14000779f <_gnu_exception_handler+0x9f>
   14000776b:	31 d2                	xor    %edx,%edx
   14000776d:	b9 04 00 00 00       	mov    $0x4,%ecx
   140007772:	e8 d1 08 00 00       	call   140008048 <signal>
   140007777:	48 83 f8 01          	cmp    $0x1,%rax
   14000777b:	0f 84 d6 00 00 00    	je     140007857 <_gnu_exception_handler+0x157>
   140007781:	48 85 c0             	test   %rax,%rax
   140007784:	74 19                	je     14000779f <_gnu_exception_handler+0x9f>
   140007786:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000778b:	ff d0                	call   *%rax
   14000778d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140007792:	48 83 c4 20          	add    $0x20,%rsp
   140007796:	5b                   	pop    %rbx
   140007797:	c3                   	ret
   140007798:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   14000779d:	74 ee                	je     14000778d <_gnu_exception_handler+0x8d>
   14000779f:	48 8b 05 6a 59 00 00 	mov    0x596a(%rip),%rax        # 14000d110 <__mingw_oldexcpt_handler>
   1400077a6:	48 85 c0             	test   %rax,%rax
   1400077a9:	74 25                	je     1400077d0 <_gnu_exception_handler+0xd0>
   1400077ab:	48 89 d9             	mov    %rbx,%rcx
   1400077ae:	48 83 c4 20          	add    $0x20,%rsp
   1400077b2:	5b                   	pop    %rbx
   1400077b3:	48 ff e0             	rex.W jmp *%rax
   1400077b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400077bd:	00 00 00 
   1400077c0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   1400077c4:	0f 85 57 ff ff ff    	jne    140007721 <_gnu_exception_handler+0x21>
   1400077ca:	eb c1                	jmp    14000778d <_gnu_exception_handler+0x8d>
   1400077cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400077d0:	31 c0                	xor    %eax,%eax
   1400077d2:	48 83 c4 20          	add    $0x20,%rsp
   1400077d6:	5b                   	pop    %rbx
   1400077d7:	c3                   	ret
   1400077d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400077df:	00 
   1400077e0:	31 d2                	xor    %edx,%edx
   1400077e2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400077e7:	e8 5c 08 00 00       	call   140008048 <signal>
   1400077ec:	48 83 f8 01          	cmp    $0x1,%rax
   1400077f0:	0f 84 89 00 00 00    	je     14000787f <_gnu_exception_handler+0x17f>
   1400077f6:	48 85 c0             	test   %rax,%rax
   1400077f9:	74 a4                	je     14000779f <_gnu_exception_handler+0x9f>
   1400077fb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007800:	ff d0                	call   *%rax
   140007802:	eb 89                	jmp    14000778d <_gnu_exception_handler+0x8d>
   140007804:	0f 1f 40 00          	nopl   0x0(%rax)
   140007808:	31 d2                	xor    %edx,%edx
   14000780a:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000780f:	e8 34 08 00 00       	call   140008048 <signal>
   140007814:	48 83 f8 01          	cmp    $0x1,%rax
   140007818:	75 dc                	jne    1400077f6 <_gnu_exception_handler+0xf6>
   14000781a:	ba 01 00 00 00       	mov    $0x1,%edx
   14000781f:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007824:	e8 1f 08 00 00       	call   140008048 <signal>
   140007829:	e9 5f ff ff ff       	jmp    14000778d <_gnu_exception_handler+0x8d>
   14000782e:	66 90                	xchg   %ax,%ax
   140007830:	31 d2                	xor    %edx,%edx
   140007832:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140007837:	e8 0c 08 00 00       	call   140008048 <signal>
   14000783c:	48 83 f8 01          	cmp    $0x1,%rax
   140007840:	74 29                	je     14000786b <_gnu_exception_handler+0x16b>
   140007842:	48 85 c0             	test   %rax,%rax
   140007845:	0f 84 54 ff ff ff    	je     14000779f <_gnu_exception_handler+0x9f>
   14000784b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140007850:	ff d0                	call   *%rax
   140007852:	e9 36 ff ff ff       	jmp    14000778d <_gnu_exception_handler+0x8d>
   140007857:	ba 01 00 00 00       	mov    $0x1,%edx
   14000785c:	b9 04 00 00 00       	mov    $0x4,%ecx
   140007861:	e8 e2 07 00 00       	call   140008048 <signal>
   140007866:	e9 22 ff ff ff       	jmp    14000778d <_gnu_exception_handler+0x8d>
   14000786b:	ba 01 00 00 00       	mov    $0x1,%edx
   140007870:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140007875:	e8 ce 07 00 00       	call   140008048 <signal>
   14000787a:	e9 0e ff ff ff       	jmp    14000778d <_gnu_exception_handler+0x8d>
   14000787f:	ba 01 00 00 00       	mov    $0x1,%edx
   140007884:	b9 08 00 00 00       	mov    $0x8,%ecx
   140007889:	e8 ba 07 00 00       	call   140008048 <signal>
   14000788e:	e8 cd f8 ff ff       	call   140007160 <_fpreset>
   140007893:	e9 f5 fe ff ff       	jmp    14000778d <_gnu_exception_handler+0x8d>
   140007898:	90                   	nop
   140007899:	90                   	nop
   14000789a:	90                   	nop
   14000789b:	90                   	nop
   14000789c:	90                   	nop
   14000789d:	90                   	nop
   14000789e:	90                   	nop
   14000789f:	90                   	nop

00000001400078a0 <__mingwthr_run_key_dtors.part.0>:
   1400078a0:	41 54                	push   %r12
   1400078a2:	55                   	push   %rbp
   1400078a3:	57                   	push   %rdi
   1400078a4:	56                   	push   %rsi
   1400078a5:	53                   	push   %rbx
   1400078a6:	48 83 ec 20          	sub    $0x20,%rsp
   1400078aa:	4c 8d 25 8f 58 00 00 	lea    0x588f(%rip),%r12        # 14000d140 <__mingwthr_cs>
   1400078b1:	4c 89 e1             	mov    %r12,%rcx
   1400078b4:	ff 15 62 6a 00 00    	call   *0x6a62(%rip)        # 14000e31c <__imp_EnterCriticalSection>
   1400078ba:	48 8b 1d 5f 58 00 00 	mov    0x585f(%rip),%rbx        # 14000d120 <key_dtor_list>
   1400078c1:	48 85 db             	test   %rbx,%rbx
   1400078c4:	74 36                	je     1400078fc <__mingwthr_run_key_dtors.part.0+0x5c>
   1400078c6:	48 8b 2d 7f 6a 00 00 	mov    0x6a7f(%rip),%rbp        # 14000e34c <__imp_TlsGetValue>
   1400078cd:	48 8b 3d 50 6a 00 00 	mov    0x6a50(%rip),%rdi        # 14000e324 <__imp_GetLastError>
   1400078d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400078d8:	8b 0b                	mov    (%rbx),%ecx
   1400078da:	ff d5                	call   *%rbp
   1400078dc:	48 89 c6             	mov    %rax,%rsi
   1400078df:	ff d7                	call   *%rdi
   1400078e1:	85 c0                	test   %eax,%eax
   1400078e3:	75 0e                	jne    1400078f3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400078e5:	48 85 f6             	test   %rsi,%rsi
   1400078e8:	74 09                	je     1400078f3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400078ea:	48 8b 43 08          	mov    0x8(%rbx),%rax
   1400078ee:	48 89 f1             	mov    %rsi,%rcx
   1400078f1:	ff d0                	call   *%rax
   1400078f3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400078f7:	48 85 db             	test   %rbx,%rbx
   1400078fa:	75 dc                	jne    1400078d8 <__mingwthr_run_key_dtors.part.0+0x38>
   1400078fc:	4c 89 e1             	mov    %r12,%rcx
   1400078ff:	48 83 c4 20          	add    $0x20,%rsp
   140007903:	5b                   	pop    %rbx
   140007904:	5e                   	pop    %rsi
   140007905:	5f                   	pop    %rdi
   140007906:	5d                   	pop    %rbp
   140007907:	41 5c                	pop    %r12
   140007909:	48 ff 25 24 6a 00 00 	rex.W jmp *0x6a24(%rip)        # 14000e334 <__imp_LeaveCriticalSection>

0000000140007910 <___w64_mingwthr_add_key_dtor>:
   140007910:	57                   	push   %rdi
   140007911:	56                   	push   %rsi
   140007912:	53                   	push   %rbx
   140007913:	48 83 ec 20          	sub    $0x20,%rsp
   140007917:	8b 05 0b 58 00 00    	mov    0x580b(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   14000791d:	89 cf                	mov    %ecx,%edi
   14000791f:	48 89 d6             	mov    %rdx,%rsi
   140007922:	85 c0                	test   %eax,%eax
   140007924:	75 0a                	jne    140007930 <___w64_mingwthr_add_key_dtor+0x20>
   140007926:	31 c0                	xor    %eax,%eax
   140007928:	48 83 c4 20          	add    $0x20,%rsp
   14000792c:	5b                   	pop    %rbx
   14000792d:	5e                   	pop    %rsi
   14000792e:	5f                   	pop    %rdi
   14000792f:	c3                   	ret
   140007930:	ba 18 00 00 00       	mov    $0x18,%edx
   140007935:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000793a:	e8 d1 06 00 00       	call   140008010 <calloc>
   14000793f:	48 89 c3             	mov    %rax,%rbx
   140007942:	48 85 c0             	test   %rax,%rax
   140007945:	74 33                	je     14000797a <___w64_mingwthr_add_key_dtor+0x6a>
   140007947:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000794b:	48 8d 35 ee 57 00 00 	lea    0x57ee(%rip),%rsi        # 14000d140 <__mingwthr_cs>
   140007952:	89 38                	mov    %edi,(%rax)
   140007954:	48 89 f1             	mov    %rsi,%rcx
   140007957:	ff 15 bf 69 00 00    	call   *0x69bf(%rip)        # 14000e31c <__imp_EnterCriticalSection>
   14000795d:	48 8b 05 bc 57 00 00 	mov    0x57bc(%rip),%rax        # 14000d120 <key_dtor_list>
   140007964:	48 89 f1             	mov    %rsi,%rcx
   140007967:	48 89 1d b2 57 00 00 	mov    %rbx,0x57b2(%rip)        # 14000d120 <key_dtor_list>
   14000796e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140007972:	ff 15 bc 69 00 00    	call   *0x69bc(%rip)        # 14000e334 <__imp_LeaveCriticalSection>
   140007978:	eb ac                	jmp    140007926 <___w64_mingwthr_add_key_dtor+0x16>
   14000797a:	83 c8 ff             	or     $0xffffffff,%eax
   14000797d:	eb a9                	jmp    140007928 <___w64_mingwthr_add_key_dtor+0x18>
   14000797f:	90                   	nop

0000000140007980 <___w64_mingwthr_remove_key_dtor>:
   140007980:	56                   	push   %rsi
   140007981:	53                   	push   %rbx
   140007982:	48 83 ec 28          	sub    $0x28,%rsp
   140007986:	8b 05 9c 57 00 00    	mov    0x579c(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   14000798c:	89 cb                	mov    %ecx,%ebx
   14000798e:	85 c0                	test   %eax,%eax
   140007990:	75 0e                	jne    1400079a0 <___w64_mingwthr_remove_key_dtor+0x20>
   140007992:	31 c0                	xor    %eax,%eax
   140007994:	48 83 c4 28          	add    $0x28,%rsp
   140007998:	5b                   	pop    %rbx
   140007999:	5e                   	pop    %rsi
   14000799a:	c3                   	ret
   14000799b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400079a0:	48 8d 35 99 57 00 00 	lea    0x5799(%rip),%rsi        # 14000d140 <__mingwthr_cs>
   1400079a7:	48 89 f1             	mov    %rsi,%rcx
   1400079aa:	ff 15 6c 69 00 00    	call   *0x696c(%rip)        # 14000e31c <__imp_EnterCriticalSection>
   1400079b0:	48 8b 0d 69 57 00 00 	mov    0x5769(%rip),%rcx        # 14000d120 <key_dtor_list>
   1400079b7:	48 85 c9             	test   %rcx,%rcx
   1400079ba:	74 27                	je     1400079e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400079bc:	31 d2                	xor    %edx,%edx
   1400079be:	eb 0b                	jmp    1400079cb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400079c0:	48 89 ca             	mov    %rcx,%rdx
   1400079c3:	48 85 c0             	test   %rax,%rax
   1400079c6:	74 1b                	je     1400079e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400079c8:	48 89 c1             	mov    %rax,%rcx
   1400079cb:	8b 01                	mov    (%rcx),%eax
   1400079cd:	39 d8                	cmp    %ebx,%eax
   1400079cf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400079d3:	75 eb                	jne    1400079c0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400079d5:	48 85 d2             	test   %rdx,%rdx
   1400079d8:	74 1e                	je     1400079f8 <___w64_mingwthr_remove_key_dtor+0x78>
   1400079da:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400079de:	e8 45 06 00 00       	call   140008028 <free>
   1400079e3:	48 89 f1             	mov    %rsi,%rcx
   1400079e6:	ff 15 48 69 00 00    	call   *0x6948(%rip)        # 14000e334 <__imp_LeaveCriticalSection>
   1400079ec:	31 c0                	xor    %eax,%eax
   1400079ee:	48 83 c4 28          	add    $0x28,%rsp
   1400079f2:	5b                   	pop    %rbx
   1400079f3:	5e                   	pop    %rsi
   1400079f4:	c3                   	ret
   1400079f5:	0f 1f 00             	nopl   (%rax)
   1400079f8:	48 89 05 21 57 00 00 	mov    %rax,0x5721(%rip)        # 14000d120 <key_dtor_list>
   1400079ff:	eb dd                	jmp    1400079de <___w64_mingwthr_remove_key_dtor+0x5e>
   140007a01:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007a08:	00 00 00 00 
   140007a0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140007a10 <__mingw_TLScallback>:
   140007a10:	53                   	push   %rbx
   140007a11:	48 83 ec 20          	sub    $0x20,%rsp
   140007a15:	83 fa 02             	cmp    $0x2,%edx
   140007a18:	0f 84 b2 00 00 00    	je     140007ad0 <__mingw_TLScallback+0xc0>
   140007a1e:	77 30                	ja     140007a50 <__mingw_TLScallback+0x40>
   140007a20:	85 d2                	test   %edx,%edx
   140007a22:	74 4c                	je     140007a70 <__mingw_TLScallback+0x60>
   140007a24:	8b 05 fe 56 00 00    	mov    0x56fe(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140007a2a:	85 c0                	test   %eax,%eax
   140007a2c:	0f 84 be 00 00 00    	je     140007af0 <__mingw_TLScallback+0xe0>
   140007a32:	c7 05 ec 56 00 00 01 	movl   $0x1,0x56ec(%rip)        # 14000d128 <__mingwthr_cs_init>
   140007a39:	00 00 00 
   140007a3c:	b8 01 00 00 00       	mov    $0x1,%eax
   140007a41:	48 83 c4 20          	add    $0x20,%rsp
   140007a45:	5b                   	pop    %rbx
   140007a46:	c3                   	ret
   140007a47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007a4e:	00 00 
   140007a50:	83 fa 03             	cmp    $0x3,%edx
   140007a53:	75 e7                	jne    140007a3c <__mingw_TLScallback+0x2c>
   140007a55:	8b 05 cd 56 00 00    	mov    0x56cd(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140007a5b:	85 c0                	test   %eax,%eax
   140007a5d:	74 dd                	je     140007a3c <__mingw_TLScallback+0x2c>
   140007a5f:	e8 3c fe ff ff       	call   1400078a0 <__mingwthr_run_key_dtors.part.0>
   140007a64:	eb d6                	jmp    140007a3c <__mingw_TLScallback+0x2c>
   140007a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007a6d:	00 00 00 
   140007a70:	8b 05 b2 56 00 00    	mov    0x56b2(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140007a76:	85 c0                	test   %eax,%eax
   140007a78:	75 66                	jne    140007ae0 <__mingw_TLScallback+0xd0>
   140007a7a:	8b 05 a8 56 00 00    	mov    0x56a8(%rip),%eax        # 14000d128 <__mingwthr_cs_init>
   140007a80:	83 f8 01             	cmp    $0x1,%eax
   140007a83:	75 b7                	jne    140007a3c <__mingw_TLScallback+0x2c>
   140007a85:	48 8b 1d 94 56 00 00 	mov    0x5694(%rip),%rbx        # 14000d120 <key_dtor_list>
   140007a8c:	48 85 db             	test   %rbx,%rbx
   140007a8f:	74 18                	je     140007aa9 <__mingw_TLScallback+0x99>
   140007a91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007a98:	48 89 d9             	mov    %rbx,%rcx
   140007a9b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140007a9f:	e8 84 05 00 00       	call   140008028 <free>
   140007aa4:	48 85 db             	test   %rbx,%rbx
   140007aa7:	75 ef                	jne    140007a98 <__mingw_TLScallback+0x88>
   140007aa9:	48 8d 0d 90 56 00 00 	lea    0x5690(%rip),%rcx        # 14000d140 <__mingwthr_cs>
   140007ab0:	48 c7 05 65 56 00 00 	movq   $0x0,0x5665(%rip)        # 14000d120 <key_dtor_list>
   140007ab7:	00 00 00 00 
   140007abb:	c7 05 63 56 00 00 00 	movl   $0x0,0x5663(%rip)        # 14000d128 <__mingwthr_cs_init>
   140007ac2:	00 00 00 
   140007ac5:	ff 15 49 68 00 00    	call   *0x6849(%rip)        # 14000e314 <__imp_DeleteCriticalSection>
   140007acb:	e9 6c ff ff ff       	jmp    140007a3c <__mingw_TLScallback+0x2c>
   140007ad0:	e8 8b f6 ff ff       	call   140007160 <_fpreset>
   140007ad5:	b8 01 00 00 00       	mov    $0x1,%eax
   140007ada:	48 83 c4 20          	add    $0x20,%rsp
   140007ade:	5b                   	pop    %rbx
   140007adf:	c3                   	ret
   140007ae0:	e8 bb fd ff ff       	call   1400078a0 <__mingwthr_run_key_dtors.part.0>
   140007ae5:	eb 93                	jmp    140007a7a <__mingw_TLScallback+0x6a>
   140007ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007aee:	00 00 
   140007af0:	48 8d 0d 49 56 00 00 	lea    0x5649(%rip),%rcx        # 14000d140 <__mingwthr_cs>
   140007af7:	ff 15 2f 68 00 00    	call   *0x682f(%rip)        # 14000e32c <__imp_InitializeCriticalSection>
   140007afd:	e9 30 ff ff ff       	jmp    140007a32 <__mingw_TLScallback+0x22>
   140007b02:	90                   	nop
   140007b03:	90                   	nop
   140007b04:	90                   	nop
   140007b05:	90                   	nop
   140007b06:	90                   	nop
   140007b07:	90                   	nop
   140007b08:	90                   	nop
   140007b09:	90                   	nop
   140007b0a:	90                   	nop
   140007b0b:	90                   	nop
   140007b0c:	90                   	nop
   140007b0d:	90                   	nop
   140007b0e:	90                   	nop
   140007b0f:	90                   	nop

0000000140007b10 <_ValidateImageBase>:
   140007b10:	31 c0                	xor    %eax,%eax
   140007b12:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140007b17:	75 0f                	jne    140007b28 <_ValidateImageBase+0x18>
   140007b19:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140007b1d:	48 01 d1             	add    %rdx,%rcx
   140007b20:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140007b26:	74 08                	je     140007b30 <_ValidateImageBase+0x20>
   140007b28:	c3                   	ret
   140007b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007b30:	31 c0                	xor    %eax,%eax
   140007b32:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140007b38:	0f 94 c0             	sete   %al
   140007b3b:	c3                   	ret
   140007b3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140007b40 <_FindPESection>:
   140007b40:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140007b44:	48 01 c1             	add    %rax,%rcx
   140007b47:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140007b4b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140007b50:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140007b55:	66 45 85 c0          	test   %r8w,%r8w
   140007b59:	74 32                	je     140007b8d <_FindPESection+0x4d>
   140007b5b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   140007b5f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140007b63:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140007b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007b6f:	00 
   140007b70:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140007b74:	4c 89 c1             	mov    %r8,%rcx
   140007b77:	4c 39 c2             	cmp    %r8,%rdx
   140007b7a:	72 08                	jb     140007b84 <_FindPESection+0x44>
   140007b7c:	03 48 08             	add    0x8(%rax),%ecx
   140007b7f:	48 39 ca             	cmp    %rcx,%rdx
   140007b82:	72 0b                	jb     140007b8f <_FindPESection+0x4f>
   140007b84:	48 83 c0 28          	add    $0x28,%rax
   140007b88:	4c 39 c8             	cmp    %r9,%rax
   140007b8b:	75 e3                	jne    140007b70 <_FindPESection+0x30>
   140007b8d:	31 c0                	xor    %eax,%eax
   140007b8f:	c3                   	ret

0000000140007b90 <_FindPESectionByName>:
   140007b90:	57                   	push   %rdi
   140007b91:	56                   	push   %rsi
   140007b92:	53                   	push   %rbx
   140007b93:	48 83 ec 20          	sub    $0x20,%rsp
   140007b97:	48 89 ce             	mov    %rcx,%rsi
   140007b9a:	e8 b1 04 00 00       	call   140008050 <strlen>
   140007b9f:	48 83 f8 08          	cmp    $0x8,%rax
   140007ba3:	77 7b                	ja     140007c20 <_FindPESectionByName+0x90>
   140007ba5:	48 8b 15 24 29 00 00 	mov    0x2924(%rip),%rdx        # 14000a4d0 <.refptr.__ImageBase>
   140007bac:	31 db                	xor    %ebx,%ebx
   140007bae:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140007bb3:	75 59                	jne    140007c0e <_FindPESectionByName+0x7e>
   140007bb5:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140007bb9:	48 01 d0             	add    %rdx,%rax
   140007bbc:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140007bc2:	75 4a                	jne    140007c0e <_FindPESectionByName+0x7e>
   140007bc4:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140007bca:	75 42                	jne    140007c0e <_FindPESectionByName+0x7e>
   140007bcc:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140007bd0:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140007bd5:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140007bd9:	66 85 d2             	test   %dx,%dx
   140007bdc:	74 42                	je     140007c20 <_FindPESectionByName+0x90>
   140007bde:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140007be1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140007be5:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   140007bea:	eb 0d                	jmp    140007bf9 <_FindPESectionByName+0x69>
   140007bec:	0f 1f 40 00          	nopl   0x0(%rax)
   140007bf0:	48 83 c3 28          	add    $0x28,%rbx
   140007bf4:	48 39 fb             	cmp    %rdi,%rbx
   140007bf7:	74 27                	je     140007c20 <_FindPESectionByName+0x90>
   140007bf9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140007bff:	48 89 f2             	mov    %rsi,%rdx
   140007c02:	48 89 d9             	mov    %rbx,%rcx
   140007c05:	e8 4e 04 00 00       	call   140008058 <strncmp>
   140007c0a:	85 c0                	test   %eax,%eax
   140007c0c:	75 e2                	jne    140007bf0 <_FindPESectionByName+0x60>
   140007c0e:	48 89 d8             	mov    %rbx,%rax
   140007c11:	48 83 c4 20          	add    $0x20,%rsp
   140007c15:	5b                   	pop    %rbx
   140007c16:	5e                   	pop    %rsi
   140007c17:	5f                   	pop    %rdi
   140007c18:	c3                   	ret
   140007c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007c20:	31 db                	xor    %ebx,%ebx
   140007c22:	48 89 d8             	mov    %rbx,%rax
   140007c25:	48 83 c4 20          	add    $0x20,%rsp
   140007c29:	5b                   	pop    %rbx
   140007c2a:	5e                   	pop    %rsi
   140007c2b:	5f                   	pop    %rdi
   140007c2c:	c3                   	ret
   140007c2d:	0f 1f 00             	nopl   (%rax)

0000000140007c30 <__mingw_GetSectionForAddress>:
   140007c30:	48 8b 15 99 28 00 00 	mov    0x2899(%rip),%rdx        # 14000a4d0 <.refptr.__ImageBase>
   140007c37:	31 c0                	xor    %eax,%eax
   140007c39:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140007c3e:	75 10                	jne    140007c50 <__mingw_GetSectionForAddress+0x20>
   140007c40:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140007c44:	49 01 d0             	add    %rdx,%r8
   140007c47:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140007c4e:	74 08                	je     140007c58 <__mingw_GetSectionForAddress+0x28>
   140007c50:	c3                   	ret
   140007c51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007c58:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140007c5f:	75 ef                	jne    140007c50 <__mingw_GetSectionForAddress+0x20>
   140007c61:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140007c66:	48 29 d1             	sub    %rdx,%rcx
   140007c69:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140007c6e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140007c73:	66 45 85 c0          	test   %r8w,%r8w
   140007c77:	74 34                	je     140007cad <__mingw_GetSectionForAddress+0x7d>
   140007c79:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140007c7d:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140007c81:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140007c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007c8d:	00 00 00 
   140007c90:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140007c94:	4c 89 c2             	mov    %r8,%rdx
   140007c97:	4c 39 c1             	cmp    %r8,%rcx
   140007c9a:	72 08                	jb     140007ca4 <__mingw_GetSectionForAddress+0x74>
   140007c9c:	03 50 08             	add    0x8(%rax),%edx
   140007c9f:	48 39 d1             	cmp    %rdx,%rcx
   140007ca2:	72 ac                	jb     140007c50 <__mingw_GetSectionForAddress+0x20>
   140007ca4:	48 83 c0 28          	add    $0x28,%rax
   140007ca8:	4c 39 c8             	cmp    %r9,%rax
   140007cab:	75 e3                	jne    140007c90 <__mingw_GetSectionForAddress+0x60>
   140007cad:	31 c0                	xor    %eax,%eax
   140007caf:	c3                   	ret

0000000140007cb0 <__mingw_GetSectionCount>:
   140007cb0:	48 8b 05 19 28 00 00 	mov    0x2819(%rip),%rax        # 14000a4d0 <.refptr.__ImageBase>
   140007cb7:	31 c9                	xor    %ecx,%ecx
   140007cb9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140007cbe:	75 0f                	jne    140007ccf <__mingw_GetSectionCount+0x1f>
   140007cc0:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140007cc4:	48 01 d0             	add    %rdx,%rax
   140007cc7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140007ccd:	74 09                	je     140007cd8 <__mingw_GetSectionCount+0x28>
   140007ccf:	89 c8                	mov    %ecx,%eax
   140007cd1:	c3                   	ret
   140007cd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140007cd8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140007cde:	75 ef                	jne    140007ccf <__mingw_GetSectionCount+0x1f>
   140007ce0:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140007ce4:	89 c8                	mov    %ecx,%eax
   140007ce6:	c3                   	ret
   140007ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140007cee:	00 00 

0000000140007cf0 <_FindPESectionExec>:
   140007cf0:	4c 8b 05 d9 27 00 00 	mov    0x27d9(%rip),%r8        # 14000a4d0 <.refptr.__ImageBase>
   140007cf7:	31 c0                	xor    %eax,%eax
   140007cf9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   140007cff:	75 0f                	jne    140007d10 <_FindPESectionExec+0x20>
   140007d01:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140007d05:	4c 01 c2             	add    %r8,%rdx
   140007d08:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140007d0e:	74 08                	je     140007d18 <_FindPESectionExec+0x28>
   140007d10:	c3                   	ret
   140007d11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007d18:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140007d1e:	75 f0                	jne    140007d10 <_FindPESectionExec+0x20>
   140007d20:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140007d24:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140007d29:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140007d2e:	66 45 85 c0          	test   %r8w,%r8w
   140007d32:	74 2c                	je     140007d60 <_FindPESectionExec+0x70>
   140007d34:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140007d38:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140007d3c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140007d41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007d48:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140007d4c:	74 09                	je     140007d57 <_FindPESectionExec+0x67>
   140007d4e:	48 85 c9             	test   %rcx,%rcx
   140007d51:	74 bd                	je     140007d10 <_FindPESectionExec+0x20>
   140007d53:	48 83 e9 01          	sub    $0x1,%rcx
   140007d57:	48 83 c0 28          	add    $0x28,%rax
   140007d5b:	48 39 d0             	cmp    %rdx,%rax
   140007d5e:	75 e8                	jne    140007d48 <_FindPESectionExec+0x58>
   140007d60:	31 c0                	xor    %eax,%eax
   140007d62:	c3                   	ret
   140007d63:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140007d6a:	00 00 00 00 
   140007d6e:	66 90                	xchg   %ax,%ax

0000000140007d70 <_GetPEImageBase>:
   140007d70:	48 8b 05 59 27 00 00 	mov    0x2759(%rip),%rax        # 14000a4d0 <.refptr.__ImageBase>
   140007d77:	31 d2                	xor    %edx,%edx
   140007d79:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140007d7e:	75 0f                	jne    140007d8f <_GetPEImageBase+0x1f>
   140007d80:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140007d84:	48 01 c1             	add    %rax,%rcx
   140007d87:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140007d8d:	74 09                	je     140007d98 <_GetPEImageBase+0x28>
   140007d8f:	48 89 d0             	mov    %rdx,%rax
   140007d92:	c3                   	ret
   140007d93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140007d98:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140007d9e:	48 0f 44 d0          	cmove  %rax,%rdx
   140007da2:	48 89 d0             	mov    %rdx,%rax
   140007da5:	c3                   	ret
   140007da6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007dad:	00 00 00 

0000000140007db0 <_IsNonwritableInCurrentImage>:
   140007db0:	48 8b 15 19 27 00 00 	mov    0x2719(%rip),%rdx        # 14000a4d0 <.refptr.__ImageBase>
   140007db7:	31 c0                	xor    %eax,%eax
   140007db9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140007dbe:	75 10                	jne    140007dd0 <_IsNonwritableInCurrentImage+0x20>
   140007dc0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140007dc4:	49 01 d0             	add    %rdx,%r8
   140007dc7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140007dce:	74 08                	je     140007dd8 <_IsNonwritableInCurrentImage+0x28>
   140007dd0:	c3                   	ret
   140007dd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140007dd8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140007ddf:	75 ef                	jne    140007dd0 <_IsNonwritableInCurrentImage+0x20>
   140007de1:	48 29 d1             	sub    %rdx,%rcx
   140007de4:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140007de9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140007dee:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140007df3:	66 45 85 c9          	test   %r9w,%r9w
   140007df7:	74 d7                	je     140007dd0 <_IsNonwritableInCurrentImage+0x20>
   140007df9:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   140007dfd:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140007e01:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140007e06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007e0d:	00 00 00 
   140007e10:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140007e14:	4c 89 c0             	mov    %r8,%rax
   140007e17:	4c 39 c1             	cmp    %r8,%rcx
   140007e1a:	72 08                	jb     140007e24 <_IsNonwritableInCurrentImage+0x74>
   140007e1c:	03 42 08             	add    0x8(%rdx),%eax
   140007e1f:	48 39 c1             	cmp    %rax,%rcx
   140007e22:	72 0c                	jb     140007e30 <_IsNonwritableInCurrentImage+0x80>
   140007e24:	48 83 c2 28          	add    $0x28,%rdx
   140007e28:	49 39 d1             	cmp    %rdx,%r9
   140007e2b:	75 e3                	jne    140007e10 <_IsNonwritableInCurrentImage+0x60>
   140007e2d:	31 c0                	xor    %eax,%eax
   140007e2f:	c3                   	ret
   140007e30:	8b 42 24             	mov    0x24(%rdx),%eax
   140007e33:	f7 d0                	not    %eax
   140007e35:	c1 e8 1f             	shr    $0x1f,%eax
   140007e38:	c3                   	ret
   140007e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140007e40 <__mingw_enum_import_library_names>:
   140007e40:	4c 8b 1d 89 26 00 00 	mov    0x2689(%rip),%r11        # 14000a4d0 <.refptr.__ImageBase>
   140007e47:	45 31 c9             	xor    %r9d,%r9d
   140007e4a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140007e50:	75 10                	jne    140007e62 <__mingw_enum_import_library_names+0x22>
   140007e52:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140007e56:	4d 01 d8             	add    %r11,%r8
   140007e59:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140007e60:	74 0e                	je     140007e70 <__mingw_enum_import_library_names+0x30>
   140007e62:	4c 89 c8             	mov    %r9,%rax
   140007e65:	c3                   	ret
   140007e66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007e6d:	00 00 00 
   140007e70:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140007e77:	75 e9                	jne    140007e62 <__mingw_enum_import_library_names+0x22>
   140007e79:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140007e80:	85 c0                	test   %eax,%eax
   140007e82:	74 de                	je     140007e62 <__mingw_enum_import_library_names+0x22>
   140007e84:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140007e89:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   140007e8e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140007e93:	66 45 85 d2          	test   %r10w,%r10w
   140007e97:	74 c9                	je     140007e62 <__mingw_enum_import_library_names+0x22>
   140007e99:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   140007e9d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140007ea1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140007ea6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140007ead:	00 00 00 
   140007eb0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140007eb4:	4d 89 c8             	mov    %r9,%r8
   140007eb7:	4c 39 c8             	cmp    %r9,%rax
   140007eba:	72 09                	jb     140007ec5 <__mingw_enum_import_library_names+0x85>
   140007ebc:	44 03 42 08          	add    0x8(%rdx),%r8d
   140007ec0:	4c 39 c0             	cmp    %r8,%rax
   140007ec3:	72 13                	jb     140007ed8 <__mingw_enum_import_library_names+0x98>
   140007ec5:	48 83 c2 28          	add    $0x28,%rdx
   140007ec9:	4c 39 d2             	cmp    %r10,%rdx
   140007ecc:	75 e2                	jne    140007eb0 <__mingw_enum_import_library_names+0x70>
   140007ece:	45 31 c9             	xor    %r9d,%r9d
   140007ed1:	4c 89 c8             	mov    %r9,%rax
   140007ed4:	c3                   	ret
   140007ed5:	0f 1f 00             	nopl   (%rax)
   140007ed8:	4c 01 d8             	add    %r11,%rax
   140007edb:	eb 0a                	jmp    140007ee7 <__mingw_enum_import_library_names+0xa7>
   140007edd:	0f 1f 00             	nopl   (%rax)
   140007ee0:	83 e9 01             	sub    $0x1,%ecx
   140007ee3:	48 83 c0 14          	add    $0x14,%rax
   140007ee7:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140007eeb:	45 85 c0             	test   %r8d,%r8d
   140007eee:	75 07                	jne    140007ef7 <__mingw_enum_import_library_names+0xb7>
   140007ef0:	8b 50 0c             	mov    0xc(%rax),%edx
   140007ef3:	85 d2                	test   %edx,%edx
   140007ef5:	74 d7                	je     140007ece <__mingw_enum_import_library_names+0x8e>
   140007ef7:	85 c9                	test   %ecx,%ecx
   140007ef9:	7f e5                	jg     140007ee0 <__mingw_enum_import_library_names+0xa0>
   140007efb:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140007eff:	4d 01 d9             	add    %r11,%r9
   140007f02:	4c 89 c8             	mov    %r9,%rax
   140007f05:	c3                   	ret
   140007f06:	90                   	nop
   140007f07:	90                   	nop
   140007f08:	90                   	nop
   140007f09:	90                   	nop
   140007f0a:	90                   	nop
   140007f0b:	90                   	nop
   140007f0c:	90                   	nop
   140007f0d:	90                   	nop
   140007f0e:	90                   	nop
   140007f0f:	90                   	nop

0000000140007f10 <_Unwind_Resume>:
   140007f10:	ff 25 ee 63 00 00    	jmp    *0x63ee(%rip)        # 14000e304 <__IAT_start__>
   140007f16:	90                   	nop
   140007f17:	90                   	nop
   140007f18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007f1f:	00 

0000000140007f20 <___chkstk_ms>:
   140007f20:	51                   	push   %rcx
   140007f21:	50                   	push   %rax
   140007f22:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140007f28:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140007f2d:	72 19                	jb     140007f48 <___chkstk_ms+0x28>
   140007f2f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140007f36:	48 83 09 00          	orq    $0x0,(%rcx)
   140007f3a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140007f40:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140007f46:	77 e7                	ja     140007f2f <___chkstk_ms+0xf>
   140007f48:	48 29 c1             	sub    %rax,%rcx
   140007f4b:	48 83 09 00          	orq    $0x0,(%rcx)
   140007f4f:	58                   	pop    %rax
   140007f50:	59                   	pop    %rcx
   140007f51:	c3                   	ret
   140007f52:	90                   	nop
   140007f53:	90                   	nop
   140007f54:	90                   	nop
   140007f55:	90                   	nop
   140007f56:	90                   	nop
   140007f57:	90                   	nop
   140007f58:	90                   	nop
   140007f59:	90                   	nop
   140007f5a:	90                   	nop
   140007f5b:	90                   	nop
   140007f5c:	90                   	nop
   140007f5d:	90                   	nop
   140007f5e:	90                   	nop
   140007f5f:	90                   	nop

0000000140007f60 <__p__fmode>:
   140007f60:	48 8b 05 c9 25 00 00 	mov    0x25c9(%rip),%rax        # 14000a530 <.refptr.__imp__fmode>
   140007f67:	48 8b 00             	mov    (%rax),%rax
   140007f6a:	c3                   	ret
   140007f6b:	90                   	nop
   140007f6c:	90                   	nop
   140007f6d:	90                   	nop
   140007f6e:	90                   	nop
   140007f6f:	90                   	nop

0000000140007f70 <__p__commode>:
   140007f70:	48 8b 05 a9 25 00 00 	mov    0x25a9(%rip),%rax        # 14000a520 <.refptr.__imp__commode>
   140007f77:	48 8b 00             	mov    (%rax),%rax
   140007f7a:	c3                   	ret
   140007f7b:	90                   	nop
   140007f7c:	90                   	nop
   140007f7d:	90                   	nop
   140007f7e:	90                   	nop
   140007f7f:	90                   	nop

0000000140007f80 <_get_invalid_parameter_handler>:
   140007f80:	48 8b 05 29 52 00 00 	mov    0x5229(%rip),%rax        # 14000d1b0 <handler>
   140007f87:	c3                   	ret
   140007f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140007f8f:	00 

0000000140007f90 <_set_invalid_parameter_handler>:
   140007f90:	48 89 c8             	mov    %rcx,%rax
   140007f93:	48 87 05 16 52 00 00 	xchg   %rax,0x5216(%rip)        # 14000d1b0 <handler>
   140007f9a:	c3                   	ret
   140007f9b:	90                   	nop
   140007f9c:	90                   	nop
   140007f9d:	90                   	nop
   140007f9e:	90                   	nop
   140007f9f:	90                   	nop

0000000140007fa0 <__acrt_iob_func>:
   140007fa0:	53                   	push   %rbx
   140007fa1:	48 83 ec 20          	sub    $0x20,%rsp
   140007fa5:	89 cb                	mov    %ecx,%ebx
   140007fa7:	e8 24 00 00 00       	call   140007fd0 <__iob_func>
   140007fac:	89 d9                	mov    %ebx,%ecx
   140007fae:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140007fb2:	48 c1 e2 04          	shl    $0x4,%rdx
   140007fb6:	48 01 d0             	add    %rdx,%rax
   140007fb9:	48 83 c4 20          	add    $0x20,%rsp
   140007fbd:	5b                   	pop    %rbx
   140007fbe:	c3                   	ret
   140007fbf:	90                   	nop

0000000140007fc0 <__C_specific_handler>:
   140007fc0:	ff 25 a6 63 00 00    	jmp    *0x63a6(%rip)        # 14000e36c <__imp___C_specific_handler>
   140007fc6:	90                   	nop
   140007fc7:	90                   	nop

0000000140007fc8 <__getmainargs>:
   140007fc8:	ff 25 a6 63 00 00    	jmp    *0x63a6(%rip)        # 14000e374 <__imp___getmainargs>
   140007fce:	90                   	nop
   140007fcf:	90                   	nop

0000000140007fd0 <__iob_func>:
   140007fd0:	ff 25 ae 63 00 00    	jmp    *0x63ae(%rip)        # 14000e384 <__imp___iob_func>
   140007fd6:	90                   	nop
   140007fd7:	90                   	nop

0000000140007fd8 <__set_app_type>:
   140007fd8:	ff 25 ae 63 00 00    	jmp    *0x63ae(%rip)        # 14000e38c <__imp___set_app_type>
   140007fde:	90                   	nop
   140007fdf:	90                   	nop

0000000140007fe0 <__setusermatherr>:
   140007fe0:	ff 25 ae 63 00 00    	jmp    *0x63ae(%rip)        # 14000e394 <__imp___setusermatherr>
   140007fe6:	90                   	nop
   140007fe7:	90                   	nop

0000000140007fe8 <_amsg_exit>:
   140007fe8:	ff 25 ae 63 00 00    	jmp    *0x63ae(%rip)        # 14000e39c <__imp__amsg_exit>
   140007fee:	90                   	nop
   140007fef:	90                   	nop

0000000140007ff0 <_cexit>:
   140007ff0:	ff 25 ae 63 00 00    	jmp    *0x63ae(%rip)        # 14000e3a4 <__imp__cexit>
   140007ff6:	90                   	nop
   140007ff7:	90                   	nop

0000000140007ff8 <_initterm>:
   140007ff8:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3bc <__imp__initterm>
   140007ffe:	90                   	nop
   140007fff:	90                   	nop

0000000140008000 <_onexit>:
   140008000:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3c4 <__imp__onexit>
   140008006:	90                   	nop
   140008007:	90                   	nop

0000000140008008 <abort>:
   140008008:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3cc <__imp_abort>
   14000800e:	90                   	nop
   14000800f:	90                   	nop

0000000140008010 <calloc>:
   140008010:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3d4 <__imp_calloc>
   140008016:	90                   	nop
   140008017:	90                   	nop

0000000140008018 <exit>:
   140008018:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3dc <__imp_exit>
   14000801e:	90                   	nop
   14000801f:	90                   	nop

0000000140008020 <fprintf>:
   140008020:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3e4 <__imp_fprintf>
   140008026:	90                   	nop
   140008027:	90                   	nop

0000000140008028 <free>:
   140008028:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3ec <__imp_free>
   14000802e:	90                   	nop
   14000802f:	90                   	nop

0000000140008030 <fwrite>:
   140008030:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3f4 <__imp_fwrite>
   140008036:	90                   	nop
   140008037:	90                   	nop

0000000140008038 <malloc>:
   140008038:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e3fc <__imp_malloc>
   14000803e:	90                   	nop
   14000803f:	90                   	nop

0000000140008040 <memcpy>:
   140008040:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e404 <__imp_memcpy>
   140008046:	90                   	nop
   140008047:	90                   	nop

0000000140008048 <signal>:
   140008048:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e40c <__imp_signal>
   14000804e:	90                   	nop
   14000804f:	90                   	nop

0000000140008050 <strlen>:
   140008050:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e414 <__imp_strlen>
   140008056:	90                   	nop
   140008057:	90                   	nop

0000000140008058 <strncmp>:
   140008058:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e41c <__imp_strncmp>
   14000805e:	90                   	nop
   14000805f:	90                   	nop

0000000140008060 <vfprintf>:
   140008060:	ff 25 be 63 00 00    	jmp    *0x63be(%rip)        # 14000e424 <__imp_vfprintf>
   140008066:	90                   	nop
   140008067:	90                   	nop
   140008068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000806f:	00 

0000000140008070 <VirtualQuery>:
   140008070:	ff 25 e6 62 00 00    	jmp    *0x62e6(%rip)        # 14000e35c <__imp_VirtualQuery>
   140008076:	90                   	nop
   140008077:	90                   	nop

0000000140008078 <VirtualProtect>:
   140008078:	ff 25 d6 62 00 00    	jmp    *0x62d6(%rip)        # 14000e354 <__imp_VirtualProtect>
   14000807e:	90                   	nop
   14000807f:	90                   	nop

0000000140008080 <TlsGetValue>:
   140008080:	ff 25 c6 62 00 00    	jmp    *0x62c6(%rip)        # 14000e34c <__imp_TlsGetValue>
   140008086:	90                   	nop
   140008087:	90                   	nop

0000000140008088 <Sleep>:
   140008088:	ff 25 b6 62 00 00    	jmp    *0x62b6(%rip)        # 14000e344 <__imp_Sleep>
   14000808e:	90                   	nop
   14000808f:	90                   	nop

0000000140008090 <SetUnhandledExceptionFilter>:
   140008090:	ff 25 a6 62 00 00    	jmp    *0x62a6(%rip)        # 14000e33c <__imp_SetUnhandledExceptionFilter>
   140008096:	90                   	nop
   140008097:	90                   	nop

0000000140008098 <LeaveCriticalSection>:
   140008098:	ff 25 96 62 00 00    	jmp    *0x6296(%rip)        # 14000e334 <__imp_LeaveCriticalSection>
   14000809e:	90                   	nop
   14000809f:	90                   	nop

00000001400080a0 <InitializeCriticalSection>:
   1400080a0:	ff 25 86 62 00 00    	jmp    *0x6286(%rip)        # 14000e32c <__imp_InitializeCriticalSection>
   1400080a6:	90                   	nop
   1400080a7:	90                   	nop

00000001400080a8 <GetLastError>:
   1400080a8:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000e324 <__imp_GetLastError>
   1400080ae:	90                   	nop
   1400080af:	90                   	nop

00000001400080b0 <EnterCriticalSection>:
   1400080b0:	ff 25 66 62 00 00    	jmp    *0x6266(%rip)        # 14000e31c <__imp_EnterCriticalSection>
   1400080b6:	90                   	nop
   1400080b7:	90                   	nop

00000001400080b8 <DeleteCriticalSection>:
   1400080b8:	ff 25 56 62 00 00    	jmp    *0x6256(%rip)        # 14000e314 <__imp_DeleteCriticalSection>
   1400080be:	90                   	nop
   1400080bf:	90                   	nop

00000001400080c0 <_ZNKSt5ctypeIcE8do_widenEc>:
   1400080c0:	89 d0                	mov    %edx,%eax
   1400080c2:	c3                   	ret
   1400080c3:	90                   	nop
   1400080c4:	90                   	nop
   1400080c5:	90                   	nop
   1400080c6:	90                   	nop
   1400080c7:	90                   	nop
   1400080c8:	90                   	nop
   1400080c9:	90                   	nop
   1400080ca:	90                   	nop
   1400080cb:	90                   	nop
   1400080cc:	90                   	nop
   1400080cd:	90                   	nop
   1400080ce:	90                   	nop
   1400080cf:	90                   	nop

00000001400080d0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy>:
   1400080d0:	41 57                	push   %r15
   1400080d2:	41 56                	push   %r14
   1400080d4:	41 55                	push   %r13
   1400080d6:	41 54                	push   %r12
   1400080d8:	55                   	push   %rbp
   1400080d9:	57                   	push   %rdi
   1400080da:	56                   	push   %rsi
   1400080db:	53                   	push   %rbx
   1400080dc:	48 83 ec 38          	sub    $0x38,%rsp
   1400080e0:	49 89 cc             	mov    %rcx,%r12
   1400080e3:	48 89 d3             	mov    %rdx,%rbx
   1400080e6:	48 85 d2             	test   %rdx,%rdx
   1400080e9:	74 64                	je     14000814f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   1400080eb:	48 b8 55 55 55 55 55 	movabs $0x555555555555555,%rax
   1400080f2:	55 55 05 
   1400080f5:	48 8b 79 08          	mov    0x8(%rcx),%rdi
   1400080f9:	48 89 fe             	mov    %rdi,%rsi
   1400080fc:	48 2b 31             	sub    (%rcx),%rsi
   1400080ff:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
   140008106:	aa aa aa 
   140008109:	49 89 f5             	mov    %rsi,%r13
   14000810c:	49 c1 fd 03          	sar    $0x3,%r13
   140008110:	4c 0f af e9          	imul   %rcx,%r13
   140008114:	4c 29 e8             	sub    %r13,%rax
   140008117:	48 89 c2             	mov    %rax,%rdx
   14000811a:	49 8b 44 24 10       	mov    0x10(%r12),%rax
   14000811f:	48 29 f8             	sub    %rdi,%rax
   140008122:	48 c1 f8 03          	sar    $0x3,%rax
   140008126:	48 0f af c1          	imul   %rcx,%rax
   14000812a:	48 39 d8             	cmp    %rbx,%rax
   14000812d:	72 31                	jb     140008160 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x90>
   14000812f:	48 89 fe             	mov    %rdi,%rsi
   140008132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140008138:	48 89 f1             	mov    %rsi,%rcx
   14000813b:	e8 80 97 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   140008140:	48 83 c6 18          	add    $0x18,%rsi
   140008144:	48 83 eb 01          	sub    $0x1,%rbx
   140008148:	75 ee                	jne    140008138 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x68>
   14000814a:	49 89 74 24 08       	mov    %rsi,0x8(%r12)
   14000814f:	48 83 c4 38          	add    $0x38,%rsp
   140008153:	5b                   	pop    %rbx
   140008154:	5e                   	pop    %rsi
   140008155:	5f                   	pop    %rdi
   140008156:	5d                   	pop    %rbp
   140008157:	41 5c                	pop    %r12
   140008159:	41 5d                	pop    %r13
   14000815b:	41 5e                	pop    %r14
   14000815d:	41 5f                	pop    %r15
   14000815f:	c3                   	ret
   140008160:	48 39 da             	cmp    %rbx,%rdx
   140008163:	0f 82 8d 01 00 00    	jb     1400082f6 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x226>
   140008169:	49 39 dd             	cmp    %rbx,%r13
   14000816c:	0f 82 3e 01 00 00    	jb     1400082b0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1e0>
   140008172:	48 ba f8 ff ff ff ff 	movabs $0x7ffffffffffffff8,%rdx
   140008179:	ff ff 7f 
   14000817c:	4b 8d 44 2d 00       	lea    0x0(%r13,%r13,1),%rax
   140008181:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
   140008186:	4c 39 e8             	cmp    %r13,%rax
   140008189:	0f 83 48 01 00 00    	jae    1400082d7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x207>
   14000818f:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140008194:	48 89 df             	mov    %rbx,%rdi
   140008197:	e8 1c ec ff ff       	call   140006db8 <_Znwy>
   14000819c:	49 89 c6             	mov    %rax,%r14
   14000819f:	48 8d 04 30          	lea    (%rax,%rsi,1),%rax
   1400081a3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400081a8:	48 89 c6             	mov    %rax,%rsi
   1400081ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400081b0:	48 89 f1             	mov    %rsi,%rcx
   1400081b3:	e8 08 97 ff ff       	call   1400018c0 <_ZN13NaturalBinaryC2Ex.constprop.0>
   1400081b8:	48 83 c6 18          	add    $0x18,%rsi
   1400081bc:	48 83 ef 01          	sub    $0x1,%rdi
   1400081c0:	75 ee                	jne    1400081b0 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xe0>
   1400081c2:	4d 8b 7c 24 08       	mov    0x8(%r12),%r15
   1400081c7:	49 8b 34 24          	mov    (%r12),%rsi
   1400081cb:	4c 89 f5             	mov    %r14,%rbp
   1400081ce:	49 39 f7             	cmp    %rsi,%r15
   1400081d1:	0f 84 9b 00 00 00    	je     140008272 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   1400081d7:	66 48 0f 6e c5       	movq   %rbp,%xmm0
   1400081dc:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
   1400081e3:	00 
   1400081e4:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
   1400081e8:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
   1400081ec:	48 8b 3e             	mov    (%rsi),%rdi
   1400081ef:	48 39 fe             	cmp    %rdi,%rsi
   1400081f2:	74 2d                	je     140008221 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x151>
   1400081f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400081f8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400081fd:	e8 b6 eb ff ff       	call   140006db8 <_Znwy>
   140008202:	48 89 c1             	mov    %rax,%rcx
   140008205:	0f b6 47 10          	movzbl 0x10(%rdi),%eax
   140008209:	48 89 ea             	mov    %rbp,%rdx
   14000820c:	88 41 10             	mov    %al,0x10(%rcx)
   14000820f:	e8 04 ec ff ff       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   140008214:	48 8b 3f             	mov    (%rdi),%rdi
   140008217:	48 83 45 10 01       	addq   $0x1,0x10(%rbp)
   14000821c:	48 39 fe             	cmp    %rdi,%rsi
   14000821f:	75 d7                	jne    1400081f8 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x128>
   140008221:	48 83 c6 18          	add    $0x18,%rsi
   140008225:	48 83 c5 18          	add    $0x18,%rbp
   140008229:	49 39 f7             	cmp    %rsi,%r15
   14000822c:	75 a9                	jne    1400081d7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x107>
   14000822e:	49 8b 6c 24 08       	mov    0x8(%r12),%rbp
   140008233:	49 8b 34 24          	mov    (%r12),%rsi
   140008237:	48 39 f5             	cmp    %rsi,%rbp
   14000823a:	74 36                	je     140008272 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1a2>
   14000823c:	0f 1f 40 00          	nopl   0x0(%rax)
   140008240:	48 8b 3e             	mov    (%rsi),%rdi
   140008243:	48 39 fe             	cmp    %rdi,%rsi
   140008246:	74 1d                	je     140008265 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x195>
   140008248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000824f:	00 
   140008250:	48 89 f9             	mov    %rdi,%rcx
   140008253:	48 8b 3f             	mov    (%rdi),%rdi
   140008256:	ba 18 00 00 00       	mov    $0x18,%edx
   14000825b:	e8 60 eb ff ff       	call   140006dc0 <_ZdlPvy>
   140008260:	48 39 fe             	cmp    %rdi,%rsi
   140008263:	75 eb                	jne    140008250 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x180>
   140008265:	48 83 c6 18          	add    $0x18,%rsi
   140008269:	48 39 f5             	cmp    %rsi,%rbp
   14000826c:	75 d2                	jne    140008240 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x170>
   14000826e:	49 8b 34 24          	mov    (%r12),%rsi
   140008272:	48 85 f6             	test   %rsi,%rsi
   140008275:	74 10                	je     140008287 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x1b7>
   140008277:	49 8b 54 24 10       	mov    0x10(%r12),%rdx
   14000827c:	48 89 f1             	mov    %rsi,%rcx
   14000827f:	48 29 f2             	sub    %rsi,%rdx
   140008282:	e8 39 eb ff ff       	call   140006dc0 <_ZdlPvy>
   140008287:	4c 01 eb             	add    %r13,%rbx
   14000828a:	4d 89 34 24          	mov    %r14,(%r12)
   14000828e:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   140008292:	49 8d 04 c6          	lea    (%r14,%rax,8),%rax
   140008296:	49 89 44 24 08       	mov    %rax,0x8(%r12)
   14000829b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   1400082a0:	49 01 c6             	add    %rax,%r14
   1400082a3:	4d 89 74 24 10       	mov    %r14,0x10(%r12)
   1400082a8:	e9 a2 fe ff ff       	jmp    14000814f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x7f>
   1400082ad:	0f 1f 00             	nopl   (%rax)
   1400082b0:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   1400082b7:	55 55 05 
   1400082ba:	4a 8d 04 2b          	lea    (%rbx,%r13,1),%rax
   1400082be:	48 39 d0             	cmp    %rdx,%rax
   1400082c1:	48 0f 47 c2          	cmova  %rdx,%rax
   1400082c5:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
   1400082c9:	48 c1 e0 03          	shl    $0x3,%rax
   1400082cd:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400082d2:	e9 b8 fe ff ff       	jmp    14000818f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   1400082d7:	48 ba 55 55 55 55 55 	movabs $0x555555555555555,%rdx
   1400082de:	55 55 05 
   1400082e1:	48 39 d0             	cmp    %rdx,%rax
   1400082e4:	48 0f 47 c2          	cmova  %rdx,%rax
   1400082e8:	48 6b c0 18          	imul   $0x18,%rax,%rax
   1400082ec:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400082f1:	e9 99 fe ff ff       	jmp    14000818f <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0xbf>
   1400082f6:	48 8d 0d 4b 1d 00 00 	lea    0x1d4b(%rip),%rcx        # 14000a048 <.rdata+0x18>
   1400082fd:	e8 ce ea ff ff       	call   140006dd0 <_ZSt20__throw_length_errorPKc>
   140008302:	48 89 c1             	mov    %rax,%rcx
   140008305:	e8 9e ea ff ff       	call   140006da8 <__cxa_begin_catch>
   14000830a:	48 39 fe             	cmp    %rdi,%rsi
   14000830d:	0f 84 af 00 00 00    	je     1400083c2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2f2>
   140008313:	48 8b 0f             	mov    (%rdi),%rcx
   140008316:	48 39 cf             	cmp    %rcx,%rdi
   140008319:	0f 84 e2 00 00 00    	je     140008401 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x331>
   14000831f:	48 8b 19             	mov    (%rcx),%rbx
   140008322:	ba 18 00 00 00       	mov    $0x18,%edx
   140008327:	e8 94 ea ff ff       	call   140006dc0 <_ZdlPvy>
   14000832c:	48 89 d9             	mov    %rbx,%rcx
   14000832f:	eb e5                	jmp    140008316 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x246>
   140008331:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
   140008335:	48 89 c6             	mov    %rax,%rsi
   140008338:	48 39 cd             	cmp    %rcx,%rbp
   14000833b:	0f 84 96 00 00 00    	je     1400083d7 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x307>
   140008341:	48 8b 39             	mov    (%rcx),%rdi
   140008344:	ba 18 00 00 00       	mov    $0x18,%edx
   140008349:	e8 72 ea ff ff       	call   140006dc0 <_ZdlPvy>
   14000834e:	48 89 f9             	mov    %rdi,%rcx
   140008351:	eb e5                	jmp    140008338 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x268>
   140008353:	48 89 c1             	mov    %rax,%rcx
   140008356:	e8 4d ea ff ff       	call   140006da8 <__cxa_begin_catch>
   14000835b:	48 39 74 24 28       	cmp    %rsi,0x28(%rsp)
   140008360:	74 21                	je     140008383 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2b3>
   140008362:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008367:	48 8b 08             	mov    (%rax),%rcx
   14000836a:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   14000836f:	74 49                	je     1400083ba <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2ea>
   140008371:	48 8b 19             	mov    (%rcx),%rbx
   140008374:	ba 18 00 00 00       	mov    $0x18,%edx
   140008379:	e8 42 ea ff ff       	call   140006dc0 <_ZdlPvy>
   14000837e:	48 89 d9             	mov    %rbx,%rcx
   140008381:	eb e7                	jmp    14000836a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x29a>
   140008383:	e8 08 ea ff ff       	call   140006d90 <__cxa_rethrow>
   140008388:	48 89 c3             	mov    %rax,%rbx
   14000838b:	e8 10 ea ff ff       	call   140006da0 <__cxa_end_catch>
   140008390:	48 89 d9             	mov    %rbx,%rcx
   140008393:	e8 10 ea ff ff       	call   140006da8 <__cxa_begin_catch>
   140008398:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   14000839d:	4c 89 f1             	mov    %r14,%rcx
   1400083a0:	e8 1b ea ff ff       	call   140006dc0 <_ZdlPvy>
   1400083a5:	e8 e6 e9 ff ff       	call   140006d90 <__cxa_rethrow>
   1400083aa:	48 89 c3             	mov    %rax,%rbx
   1400083ad:	e8 ee e9 ff ff       	call   140006da0 <__cxa_end_catch>
   1400083b2:	48 89 d9             	mov    %rbx,%rcx
   1400083b5:	e8 56 fb ff ff       	call   140007f10 <_Unwind_Resume>
   1400083ba:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   1400083c0:	eb 99                	jmp    14000835b <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x28b>
   1400083c2:	e8 c9 e9 ff ff       	call   140006d90 <__cxa_rethrow>
   1400083c7:	48 89 c3             	mov    %rax,%rbx
   1400083ca:	e8 d1 e9 ff ff       	call   140006da0 <__cxa_end_catch>
   1400083cf:	48 89 d9             	mov    %rbx,%rcx
   1400083d2:	e8 39 fb ff ff       	call   140007f10 <_Unwind_Resume>
   1400083d7:	48 89 f1             	mov    %rsi,%rcx
   1400083da:	4c 89 f6             	mov    %r14,%rsi
   1400083dd:	e8 c6 e9 ff ff       	call   140006da8 <__cxa_begin_catch>
   1400083e2:	48 39 f5             	cmp    %rsi,%rbp
   1400083e5:	74 23                	je     14000840a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x33a>
   1400083e7:	48 8b 0e             	mov    (%rsi),%rcx
   1400083ea:	48 39 ce             	cmp    %rcx,%rsi
   1400083ed:	74 6b                	je     14000845a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x38a>
   1400083ef:	48 8b 39             	mov    (%rcx),%rdi
   1400083f2:	ba 18 00 00 00       	mov    $0x18,%edx
   1400083f7:	e8 c4 e9 ff ff       	call   140006dc0 <_ZdlPvy>
   1400083fc:	48 89 f9             	mov    %rdi,%rcx
   1400083ff:	eb e9                	jmp    1400083ea <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x31a>
   140008401:	48 83 c7 18          	add    $0x18,%rdi
   140008405:	e9 00 ff ff ff       	jmp    14000830a <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x23a>
   14000840a:	e8 81 e9 ff ff       	call   140006d90 <__cxa_rethrow>
   14000840f:	48 89 c6             	mov    %rax,%rsi
   140008412:	48 6b db 18          	imul   $0x18,%rbx,%rbx
   140008416:	e8 85 e9 ff ff       	call   140006da0 <__cxa_end_catch>
   14000841b:	48 89 f1             	mov    %rsi,%rcx
   14000841e:	e8 85 e9 ff ff       	call   140006da8 <__cxa_begin_catch>
   140008423:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008428:	48 01 c3             	add    %rax,%rbx
   14000842b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   140008430:	48 39 c3             	cmp    %rax,%rbx
   140008433:	0f 84 5f ff ff ff    	je     140008398 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x2c8>
   140008439:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
   14000843e:	48 8b 08             	mov    (%rax),%rcx
   140008441:	48 39 4c 24 28       	cmp    %rcx,0x28(%rsp)
   140008446:	74 18                	je     140008460 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x390>
   140008448:	48 8b 31             	mov    (%rcx),%rsi
   14000844b:	ba 18 00 00 00       	mov    $0x18,%edx
   140008450:	e8 6b e9 ff ff       	call   140006dc0 <_ZdlPvy>
   140008455:	48 89 f1             	mov    %rsi,%rcx
   140008458:	eb e7                	jmp    140008441 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x371>
   14000845a:	48 83 c6 18          	add    $0x18,%rsi
   14000845e:	eb 82                	jmp    1400083e2 <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x312>
   140008460:	48 83 44 24 28 18    	addq   $0x18,0x28(%rsp)
   140008466:	eb c3                	jmp    14000842b <_ZNSt6vectorI13NaturalBinarySaIS0_EE17_M_default_appendEy+0x35b>
   140008468:	90                   	nop
   140008469:	90                   	nop
   14000846a:	90                   	nop
   14000846b:	90                   	nop
   14000846c:	90                   	nop
   14000846d:	90                   	nop
   14000846e:	90                   	nop
   14000846f:	90                   	nop

0000000140008470 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy>:
   140008470:	57                   	push   %rdi
   140008471:	56                   	push   %rsi
   140008472:	53                   	push   %rbx
   140008473:	48 83 ec 20          	sub    $0x20,%rsp
   140008477:	31 f6                	xor    %esi,%esi
   140008479:	48 89 cb             	mov    %rcx,%rbx
   14000847c:	48 89 d7             	mov    %rdx,%rdi
   14000847f:	48 85 d2             	test   %rdx,%rdx
   140008482:	74 2b                	je     1400084af <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x3f>
   140008484:	0f 1f 40 00          	nopl   0x0(%rax)
   140008488:	b9 18 00 00 00       	mov    $0x18,%ecx
   14000848d:	e8 26 e9 ff ff       	call   140006db8 <_Znwy>
   140008492:	c6 40 10 00          	movb   $0x0,0x10(%rax)
   140008496:	48 89 c1             	mov    %rax,%rcx
   140008499:	48 89 da             	mov    %rbx,%rdx
   14000849c:	48 83 c6 01          	add    $0x1,%rsi
   1400084a0:	e8 73 e9 ff ff       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400084a5:	48 83 43 10 01       	addq   $0x1,0x10(%rbx)
   1400084aa:	48 39 f7             	cmp    %rsi,%rdi
   1400084ad:	75 d9                	jne    140008488 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x18>
   1400084af:	48 83 c4 20          	add    $0x20,%rsp
   1400084b3:	5b                   	pop    %rbx
   1400084b4:	5e                   	pop    %rsi
   1400084b5:	5f                   	pop    %rdi
   1400084b6:	c3                   	ret
   1400084b7:	48 89 c1             	mov    %rax,%rcx
   1400084ba:	e8 e9 e8 ff ff       	call   140006da8 <__cxa_begin_catch>
   1400084bf:	48 85 f6             	test   %rsi,%rsi
   1400084c2:	74 24                	je     1400084e8 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x78>
   1400084c4:	48 83 6b 10 01       	subq   $0x1,0x10(%rbx)
   1400084c9:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
   1400084cd:	48 83 ee 01          	sub    $0x1,%rsi
   1400084d1:	48 89 f9             	mov    %rdi,%rcx
   1400084d4:	e8 37 e9 ff ff       	call   140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   1400084d9:	ba 18 00 00 00       	mov    $0x18,%edx
   1400084de:	48 89 f9             	mov    %rdi,%rcx
   1400084e1:	e8 da e8 ff ff       	call   140006dc0 <_ZdlPvy>
   1400084e6:	eb d7                	jmp    1400084bf <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy+0x4f>
   1400084e8:	e8 a3 e8 ff ff       	call   140006d90 <__cxa_rethrow>
   1400084ed:	48 89 c3             	mov    %rax,%rbx
   1400084f0:	e8 ab e8 ff ff       	call   140006da0 <__cxa_end_catch>
   1400084f5:	48 89 d9             	mov    %rbx,%rcx
   1400084f8:	e8 13 fa ff ff       	call   140007f10 <_Unwind_Resume>
   1400084fd:	90                   	nop
   1400084fe:	90                   	nop
   1400084ff:	90                   	nop

0000000140008500 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy>:
   140008500:	57                   	push   %rdi
   140008501:	56                   	push   %rsi
   140008502:	53                   	push   %rbx
   140008503:	48 83 ec 20          	sub    $0x20,%rsp
   140008507:	48 8b 41 10          	mov    0x10(%rcx),%rax
   14000850b:	48 89 ce             	mov    %rcx,%rsi
   14000850e:	48 39 c2             	cmp    %rax,%rdx
   140008511:	73 65                	jae    140008578 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x78>
   140008513:	48 89 c1             	mov    %rax,%rcx
   140008516:	48 d1 e9             	shr    %rcx
   140008519:	48 39 d1             	cmp    %rdx,%rcx
   14000851c:	72 72                	jb     140008590 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x90>
   14000851e:	48 8b 1e             	mov    (%rsi),%rbx
   140008521:	48 85 d2             	test   %rdx,%rdx
   140008524:	74 13                	je     140008539 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   140008526:	48 83 ea 01          	sub    $0x1,%rdx
   14000852a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140008530:	48 8b 1b             	mov    (%rbx),%rbx
   140008533:	48 83 ea 01          	sub    $0x1,%rdx
   140008537:	73 f7                	jae    140008530 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x30>
   140008539:	48 39 de             	cmp    %rbx,%rsi
   14000853c:	75 09                	jne    140008547 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x47>
   14000853e:	eb 2c                	jmp    14000856c <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x6c>
   140008540:	48 8b 46 10          	mov    0x10(%rsi),%rax
   140008544:	48 89 fb             	mov    %rdi,%rbx
   140008547:	48 83 e8 01          	sub    $0x1,%rax
   14000854b:	48 8b 3b             	mov    (%rbx),%rdi
   14000854e:	48 89 d9             	mov    %rbx,%rcx
   140008551:	48 89 46 10          	mov    %rax,0x10(%rsi)
   140008555:	e8 b6 e8 ff ff       	call   140006e10 <_ZNSt8__detail15_List_node_base9_M_unhookEv>
   14000855a:	ba 18 00 00 00       	mov    $0x18,%edx
   14000855f:	48 89 d9             	mov    %rbx,%rcx
   140008562:	e8 59 e8 ff ff       	call   140006dc0 <_ZdlPvy>
   140008567:	48 39 fe             	cmp    %rdi,%rsi
   14000856a:	75 d4                	jne    140008540 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x40>
   14000856c:	48 83 c4 20          	add    $0x20,%rsp
   140008570:	5b                   	pop    %rbx
   140008571:	5e                   	pop    %rsi
   140008572:	5f                   	pop    %rdi
   140008573:	c3                   	ret
   140008574:	0f 1f 40 00          	nopl   0x0(%rax)
   140008578:	48 29 c2             	sub    %rax,%rdx
   14000857b:	74 ef                	je     14000856c <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x6c>
   14000857d:	48 83 c4 20          	add    $0x20,%rsp
   140008581:	5b                   	pop    %rbx
   140008582:	5e                   	pop    %rsi
   140008583:	5f                   	pop    %rdi
   140008584:	e9 e7 fe ff ff       	jmp    140008470 <_ZNSt7__cxx114listI4ByteSaIS1_EE17_M_default_appendEy>
   140008589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140008590:	48 89 c1             	mov    %rax,%rcx
   140008593:	48 89 f3             	mov    %rsi,%rbx
   140008596:	48 29 d1             	sub    %rdx,%rcx
   140008599:	48 89 ca             	mov    %rcx,%rdx
   14000859c:	48 f7 d2             	not    %rdx
   14000859f:	79 1f                	jns    1400085c0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xc0>
   1400085a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400085a8:	48 8b 1b             	mov    (%rbx),%rbx
   1400085ab:	48 83 ea 01          	sub    $0x1,%rdx
   1400085af:	72 88                	jb     140008539 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   1400085b1:	48 8b 1b             	mov    (%rbx),%rbx
   1400085b4:	48 83 ea 01          	sub    $0x1,%rdx
   1400085b8:	73 ee                	jae    1400085a8 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xa8>
   1400085ba:	e9 7a ff ff ff       	jmp    140008539 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   1400085bf:	90                   	nop
   1400085c0:	ba 01 00 00 00       	mov    $0x1,%edx
   1400085c5:	48 29 ca             	sub    %rcx,%rdx
   1400085c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400085cf:	00 
   1400085d0:	48 83 c2 01          	add    $0x1,%rdx
   1400085d4:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
   1400085d8:	48 83 fa 01          	cmp    $0x1,%rdx
   1400085dc:	75 f2                	jne    1400085d0 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0xd0>
   1400085de:	e9 56 ff ff ff       	jmp    140008539 <_ZNSt7__cxx114listI4ByteSaIS1_EE6resizeEy+0x39>
   1400085e3:	90                   	nop
   1400085e4:	90                   	nop
   1400085e5:	90                   	nop
   1400085e6:	90                   	nop
   1400085e7:	90                   	nop
   1400085e8:	90                   	nop
   1400085e9:	90                   	nop
   1400085ea:	90                   	nop
   1400085eb:	90                   	nop
   1400085ec:	90                   	nop
   1400085ed:	90                   	nop
   1400085ee:	90                   	nop
   1400085ef:	90                   	nop

00000001400085f0 <_GLOBAL__sub_I__ZN10Arithmetic10carry_flagE>:
   1400085f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400085f4:	48 8d 0d 36 4a 00 00 	lea    0x4a36(%rip),%rcx        # 14000d031 <_ZStL8__ioinit>
   1400085fb:	e8 08 e8 ff ff       	call   140006e08 <_ZNSt8ios_base4InitC1Ev>
   140008600:	48 8d 0d 49 8e ff ff 	lea    -0x71b7(%rip),%rcx        # 140001450 <__tcf_0>
   140008607:	48 83 c4 28          	add    $0x28,%rsp
   14000860b:	e9 00 8e ff ff       	jmp    140001410 <atexit>

0000000140008610 <_GLOBAL__sub_I__ZN4ByteC2Ey>:
   140008610:	48 83 ec 28          	sub    $0x28,%rsp
   140008614:	48 8d 0d 25 4a 00 00 	lea    0x4a25(%rip),%rcx        # 14000d040 <_ZStL8__ioinit>
   14000861b:	e8 e8 e7 ff ff       	call   140006e08 <_ZNSt8ios_base4InitC1Ev>
   140008620:	48 8d 0d 49 90 ff ff 	lea    -0x6fb7(%rip),%rcx        # 140001670 <__tcf_0>
   140008627:	48 83 c4 28          	add    $0x28,%rsp
   14000862b:	e9 e0 8d ff ff       	jmp    140001410 <atexit>

0000000140008630 <main>:
   140008630:	41 55                	push   %r13
   140008632:	41 54                	push   %r12
   140008634:	55                   	push   %rbp
   140008635:	57                   	push   %rdi
   140008636:	56                   	push   %rsi
   140008637:	53                   	push   %rbx
   140008638:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   14000863f:	0f 11 b4 24 a0 00 00 	movups %xmm6,0xa0(%rsp)
   140008646:	00 
   140008647:	e8 14 e9 ff ff       	call   140006f60 <__main>
   14000864c:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140008651:	ba 38 00 00 00       	mov    $0x38,%edx
   140008656:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
   14000865b:	48 89 e9             	mov    %rbp,%rcx
   14000865e:	66 48 0f 6e f7       	movq   %rdi,%xmm6
   140008663:	e8 28 c7 ff ff       	call   140004d90 <_ZN15SignedMagnitudeC1Ex>
   140008668:	ba 01 00 00 00       	mov    $0x1,%edx
   14000866d:	48 89 e9             	mov    %rbp,%rcx
   140008670:	66 0f 6c f6          	punpcklqdq %xmm6,%xmm6
   140008674:	e8 d7 e5 ff ff       	call   140006c50 <_ZN15SignedMagnitude14set_precissionEj>
   140008679:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
   14000867e:	ba 05 00 00 00       	mov    $0x5,%edx
   140008683:	48 89 f1             	mov    %rsi,%rcx
   140008686:	e8 05 c7 ff ff       	call   140004d90 <_ZN15SignedMagnitudeC1Ex>
   14000868b:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
   140008690:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   140008695:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
   14000869c:	00 00 
   14000869e:	48 39 f3             	cmp    %rsi,%rbx
   1400086a1:	74 2f                	je     1400086d2 <main+0xa2>
   1400086a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400086a8:	b9 18 00 00 00       	mov    $0x18,%ecx
   1400086ad:	e8 06 e7 ff ff       	call   140006db8 <_Znwy>
   1400086b2:	48 89 c1             	mov    %rax,%rcx
   1400086b5:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
   1400086b9:	48 89 fa             	mov    %rdi,%rdx
   1400086bc:	88 41 10             	mov    %al,0x10(%rcx)
   1400086bf:	e8 54 e7 ff ff       	call   140006e18 <_ZNSt8__detail15_List_node_base7_M_hookEPS0_>
   1400086c4:	48 8b 1b             	mov    (%rbx),%rbx
   1400086c7:	48 83 44 24 70 01    	addq   $0x1,0x70(%rsp)
   1400086cd:	48 39 f3             	cmp    %rsi,%rbx
   1400086d0:	75 d6                	jne    1400086a8 <main+0x78>
   1400086d2:	8b 44 24 58          	mov    0x58(%rsp),%eax
   1400086d6:	4c 8d a4 24 80 00 00 	lea    0x80(%rsp),%r12
   1400086dd:	00 
   1400086de:	49 89 f8             	mov    %rdi,%r8
   1400086e1:	48 89 ea             	mov    %rbp,%rdx
   1400086e4:	4c 89 e1             	mov    %r12,%rcx
   1400086e7:	89 44 24 78          	mov    %eax,0x78(%rsp)
   1400086eb:	0f b6 44 24 5c       	movzbl 0x5c(%rsp),%eax
   1400086f0:	88 44 24 7c          	mov    %al,0x7c(%rsp)
   1400086f4:	e8 77 e1 ff ff       	call   140006870 <_ZN15SignedMagnitudedvES_>
   1400086f9:	48 8b 0d 60 1d 00 00 	mov    0x1d60(%rip),%rcx        # 14000a460 <__fu4__ZSt4cout>
   140008700:	4c 89 e2             	mov    %r12,%rdx
   140008703:	e8 f8 e5 ff ff       	call   140006d00 <_ZlsRSo15SignedMagnitude>
   140008708:	48 89 c3             	mov    %rax,%rbx
   14000870b:	48 8b 00             	mov    (%rax),%rax
   14000870e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
   140008712:	4c 8b ac 03 f0 00 00 	mov    0xf0(%rbx,%rax,1),%r13
   140008719:	00 
   14000871a:	4d 85 ed             	test   %r13,%r13
   14000871d:	74 73                	je     140008792 <main+0x162>
   14000871f:	41 80 7d 38 00       	cmpb   $0x0,0x38(%r13)
   140008724:	74 50                	je     140008776 <main+0x146>
   140008726:	41 0f be 55 43       	movsbl 0x43(%r13),%edx
   14000872b:	48 89 d9             	mov    %rbx,%rcx
   14000872e:	e8 65 e7 ff ff       	call   140006e98 <_ZNSo3putEc>
   140008733:	48 89 c1             	mov    %rax,%rcx
   140008736:	e8 55 e7 ff ff       	call   140006e90 <_ZNSo5flushEv>
   14000873b:	4c 89 e1             	mov    %r12,%rcx
   14000873e:	e8 dd c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   140008743:	48 89 f9             	mov    %rdi,%rcx
   140008746:	e8 d5 c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   14000874b:	48 89 f1             	mov    %rsi,%rcx
   14000874e:	e8 cd c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   140008753:	48 89 e9             	mov    %rbp,%rcx
   140008756:	e8 c5 c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   14000875b:	90                   	nop
   14000875c:	0f 10 b4 24 a0 00 00 	movups 0xa0(%rsp),%xmm6
   140008763:	00 
   140008764:	31 c0                	xor    %eax,%eax
   140008766:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   14000876d:	5b                   	pop    %rbx
   14000876e:	5e                   	pop    %rsi
   14000876f:	5f                   	pop    %rdi
   140008770:	5d                   	pop    %rbp
   140008771:	41 5c                	pop    %r12
   140008773:	41 5d                	pop    %r13
   140008775:	c3                   	ret
   140008776:	4c 89 e9             	mov    %r13,%rcx
   140008779:	e8 22 e7 ff ff       	call   140006ea0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
   14000877e:	49 8b 45 00          	mov    0x0(%r13),%rax
   140008782:	ba 0a 00 00 00       	mov    $0xa,%edx
   140008787:	4c 89 e9             	mov    %r13,%rcx
   14000878a:	ff 50 30             	call   *0x30(%rax)
   14000878d:	0f be d0             	movsbl %al,%edx
   140008790:	eb 99                	jmp    14000872b <main+0xfb>
   140008792:	e8 41 e6 ff ff       	call   140006dd8 <_ZSt16__throw_bad_castv>
   140008797:	48 89 c3             	mov    %rax,%rbx
   14000879a:	eb 1b                	jmp    1400087b7 <main+0x187>
   14000879c:	4c 89 e1             	mov    %r12,%rcx
   14000879f:	48 89 c3             	mov    %rax,%rbx
   1400087a2:	e8 79 c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   1400087a7:	48 89 f9             	mov    %rdi,%rcx
   1400087aa:	e8 71 c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   1400087af:	48 89 f1             	mov    %rsi,%rcx
   1400087b2:	e8 69 c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   1400087b7:	48 89 e9             	mov    %rbp,%rcx
   1400087ba:	e8 61 c8 ff ff       	call   140005020 <_ZN15SignedMagnitudeD1Ev>
   1400087bf:	48 89 d9             	mov    %rbx,%rcx
   1400087c2:	e8 49 f7 ff ff       	call   140007f10 <_Unwind_Resume>
   1400087c7:	48 89 c3             	mov    %rax,%rbx
   1400087ca:	eb db                	jmp    1400087a7 <main+0x177>
   1400087cc:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
   1400087d1:	48 89 c3             	mov    %rax,%rbx
   1400087d4:	48 39 f9             	cmp    %rdi,%rcx
   1400087d7:	74 d6                	je     1400087af <main+0x17f>
   1400087d9:	4c 8b 21             	mov    (%rcx),%r12
   1400087dc:	ba 18 00 00 00       	mov    $0x18,%edx
   1400087e1:	e8 da e5 ff ff       	call   140006dc0 <_ZdlPvy>
   1400087e6:	4c 89 e1             	mov    %r12,%rcx
   1400087e9:	eb e9                	jmp    1400087d4 <main+0x1a4>
   1400087eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000001400087f0 <_GLOBAL__sub_I_main>:
   1400087f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400087f4:	48 8d 0d 55 48 00 00 	lea    0x4855(%rip),%rcx        # 14000d050 <_ZStL8__ioinit>
   1400087fb:	e8 08 e6 ff ff       	call   140006e08 <_ZNSt8ios_base4InitC1Ev>
   140008800:	48 8d 0d 49 8f ff ff 	lea    -0x70b7(%rip),%rcx        # 140001750 <__tcf_0>
   140008807:	48 83 c4 28          	add    $0x28,%rsp
   14000880b:	e9 00 8c ff ff       	jmp    140001410 <atexit>

0000000140008810 <_GLOBAL__sub_I__ZN13NaturalBinaryC2Ev>:
   140008810:	48 83 ec 28          	sub    $0x28,%rsp
   140008814:	48 8d 0d 45 48 00 00 	lea    0x4845(%rip),%rcx        # 14000d060 <_ZStL8__ioinit>
   14000881b:	e8 e8 e5 ff ff       	call   140006e08 <_ZNSt8ios_base4InitC1Ev>
   140008820:	48 8d 0d 39 8f ff ff 	lea    -0x70c7(%rip),%rcx        # 140001760 <__tcf_0>
   140008827:	48 83 c4 28          	add    $0x28,%rsp
   14000882b:	e9 e0 8b ff ff       	jmp    140001410 <atexit>

0000000140008830 <_GLOBAL__sub_I__ZN15SignedMagnitudeC2Ex>:
   140008830:	48 83 ec 28          	sub    $0x28,%rsp
   140008834:	48 8d 0d 35 48 00 00 	lea    0x4835(%rip),%rcx        # 14000d070 <_ZStL8__ioinit>
   14000883b:	e8 c8 e5 ff ff       	call   140006e08 <_ZNSt8ios_base4InitC1Ev>
   140008840:	48 8d 0d e9 c3 ff ff 	lea    -0x3c17(%rip),%rcx        # 140004c30 <__tcf_0>
   140008847:	48 83 c4 28          	add    $0x28,%rsp
   14000884b:	e9 c0 8b ff ff       	jmp    140001410 <atexit>

0000000140008850 <register_frame_ctor>:
   140008850:	e9 db 8b ff ff       	jmp    140001430 <__gcc_register_frame>
   140008855:	90                   	nop
   140008856:	90                   	nop
   140008857:	90                   	nop
   140008858:	90                   	nop
   140008859:	90                   	nop
   14000885a:	90                   	nop
   14000885b:	90                   	nop
   14000885c:	90                   	nop
   14000885d:	90                   	nop
   14000885e:	90                   	nop
   14000885f:	90                   	nop

0000000140008860 <__CTOR_LIST__>:
   140008860:	ff                   	(bad)
   140008861:	ff                   	(bad)
   140008862:	ff                   	(bad)
   140008863:	ff                   	(bad)
   140008864:	ff                   	(bad)
   140008865:	ff                   	(bad)
   140008866:	ff                   	(bad)
   140008867:	ff                   	.byte 0xff

0000000140008868 <.ctors>:
   140008868:	f0 85 00             	lock test %eax,(%rax)
   14000886b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140008870 <.ctors>:
   140008870:	10 86 00 40 01 00    	adc    %al,0x14000(%rsi)
	...

0000000140008878 <.ctors>:
   140008878:	f0 87 00             	lock xchg %eax,(%rax)
   14000887b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140008880 <.ctors>:
   140008880:	10 88 00 40 01 00    	adc    %cl,0x14000(%rax)
	...

0000000140008888 <.ctors>:
   140008888:	30 88 00 40 01 00    	xor    %cl,0x14000(%rax)
	...

0000000140008890 <.ctors.65535>:
   140008890:	50                   	push   %rax
   140008891:	88 00                	mov    %al,(%rax)
   140008893:	40 01 00             	rex add %eax,(%rax)
	...

00000001400088a0 <__DTOR_LIST__>:
   1400088a0:	ff                   	(bad)
   1400088a1:	ff                   	(bad)
   1400088a2:	ff                   	(bad)
   1400088a3:	ff                   	(bad)
   1400088a4:	ff                   	(bad)
   1400088a5:	ff                   	(bad)
   1400088a6:	ff                   	(bad)
   1400088a7:	ff 00                	incl   (%rax)
   1400088a9:	00 00                	add    %al,(%rax)
   1400088ab:	00 00                	add    %al,(%rax)
   1400088ad:	00 00                	add    %al,(%rax)
	...
