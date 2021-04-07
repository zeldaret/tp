lbl_803711F0:
/* 803711F0  3C 40 80 44 */	lis r2, gTRKCPUState@h /* 0x8044F338@h */
/* 803711F4  60 42 F3 38 */	ori r2, r2, gTRKCPUState@l /* 0x8044F338@l */
/* 803711F8  7E 00 04 A6 */	mfsr r16, 0
/* 803711FC  7E 21 04 A6 */	mfsr r17, 1
/* 80371200  7E 42 04 A6 */	mfsr r18, 2
/* 80371204  7E 63 04 A6 */	mfsr r19, 3
/* 80371208  7E 84 04 A6 */	mfsr r20, 4
/* 8037120C  7E A5 04 A6 */	mfsr r21, 5
/* 80371210  7E C6 04 A6 */	mfsr r22, 6
/* 80371214  7E E7 04 A6 */	mfsr r23, 7
/* 80371218  7F 08 04 A6 */	mfsr r24, 8
/* 8037121C  7F 29 04 A6 */	mfsr r25, 9
/* 80371220  7F 4A 04 A6 */	mfsr r26, 0xa
/* 80371224  7F 6B 04 A6 */	mfsr r27, 0xb
/* 80371228  7F 8C 04 A6 */	mfsr r28, 0xc
/* 8037122C  7F AD 04 A6 */	mfsr r29, 0xd
/* 80371230  7F CE 04 A6 */	mfsr r30, 0xe
/* 80371234  7F EF 04 A6 */	mfsr r31, 0xf
/* 80371238  BE 02 01 A8 */	stmw r16, 0x1a8(r2)
/* 8037123C  7D 4C 42 E6 */	mftb r10, 0x10c
/* 80371240  7D 6D 42 E6 */	mftbu r11
/* 80371244  7D 90 FA A6 */	mfspr r12, 0x3f0
/* 80371248  7D B1 FA A6 */	mfspr r13, 0x3f1
/* 8037124C  7D DB 02 A6 */	mfspr r14, 0x1b
/* 80371250  7D FF 42 A6 */	mfpvr r15
/* 80371254  7E 10 82 A6 */	mfibatu r16, 0
/* 80371258  7E 31 82 A6 */	mfibatl r17, 0
/* 8037125C  7E 52 82 A6 */	mfibatu r18, 1
/* 80371260  7E 73 82 A6 */	mfibatl r19, 1
/* 80371264  7E 94 82 A6 */	mfibatu r20, 2
/* 80371268  7E B5 82 A6 */	mfibatl r21, 2
/* 8037126C  7E D6 82 A6 */	mfibatu r22, 3
/* 80371270  7E F7 82 A6 */	mfibatl r23, 3
/* 80371274  7F 18 82 A6 */	mfdbatu r24, 0
/* 80371278  7F 39 82 A6 */	mfdbatl r25, 0
/* 8037127C  7F 5A 82 A6 */	mfdbatu r26, 1
/* 80371280  7F 7B 82 A6 */	mfdbatl r27, 1
/* 80371284  7F 9C 82 A6 */	mfdbatu r28, 2
/* 80371288  7F BD 82 A6 */	mfdbatl r29, 2
/* 8037128C  7F DE 82 A6 */	mfdbatu r30, 3
/* 80371290  7F FF 82 A6 */	mfdbatl r31, 3
/* 80371294  BD 42 01 E8 */	stmw r10, 0x1e8(r2)
/* 80371298  7E D9 02 A6 */	mfspr r22, 0x19
/* 8037129C  7E F3 02 A6 */	mfdar r23
/* 803712A0  7F 12 02 A6 */	mfdsisr r24
/* 803712A4  7F 30 42 A6 */	mfspr r25, 0x110
/* 803712A8  7F 51 42 A6 */	mfspr r26, 0x111
/* 803712AC  7F 72 42 A6 */	mfspr r27, 0x112
/* 803712B0  7F 93 42 A6 */	mfspr r28, 0x113
/* 803712B4  3B A0 00 00 */	li r29, 0
/* 803712B8  7F D2 FA A6 */	mfspr r30, 0x3f2
/* 803712BC  7F FA 42 A6 */	mfspr r31, 0x11a
/* 803712C0  BE C2 02 5C */	stmw r22, 0x25c(r2)
/* 803712C4  7E 90 E2 A6 */	mfspr r20, 0x390
/* 803712C8  7E B1 E2 A6 */	mfspr r21, 0x391
/* 803712CC  7E D2 E2 A6 */	mfspr r22, 0x392
/* 803712D0  7E F3 E2 A6 */	mfspr r23, 0x393
/* 803712D4  7F 14 E2 A6 */	mfspr r24, 0x394
/* 803712D8  7F 35 E2 A6 */	mfspr r25, 0x395
/* 803712DC  7F 56 E2 A6 */	mfspr r26, 0x396
/* 803712E0  7F 77 E2 A6 */	mfspr r27, 0x397
/* 803712E4  7F 98 E2 A6 */	mfspr r28, 0x398
/* 803712E8  7F B9 E2 A6 */	mfspr r29, 0x399
/* 803712EC  7F DA E2 A6 */	mfspr r30, 0x39a
/* 803712F0  7F FB E2 A6 */	mfspr r31, 0x39b
/* 803712F4  BE 82 02 FC */	stmw r20, 0x2fc(r2)
/* 803712F8  48 00 00 48 */	b lbl_80371340
/* 803712FC  7E 00 EA A6 */	mfspr r16, 0x3a0
/* 80371300  7E 27 EA A6 */	mfspr r17, 0x3a7
/* 80371304  7E 48 EA A6 */	mfspr r18, 0x3a8
/* 80371308  7E 69 EA A6 */	mfspr r19, 0x3a9
/* 8037130C  7E 8A EA A6 */	mfspr r20, 0x3aa
/* 80371310  7E AB EA A6 */	mfspr r21, 0x3ab
/* 80371314  7E CC EA A6 */	mfspr r22, 0x3ac
/* 80371318  7E ED EA A6 */	mfspr r23, 0x3ad
/* 8037131C  7F 0E EA A6 */	mfspr r24, 0x3ae
/* 80371320  7F 2F EA A6 */	mfspr r25, 0x3af
/* 80371324  7F 50 EA A6 */	mfspr r26, 0x3b0
/* 80371328  7F 77 EA A6 */	mfspr r27, 0x3b7
/* 8037132C  7F 9F EA A6 */	mfspr r28, 0x3bf
/* 80371330  7F B6 FA A6 */	mfspr r29, 0x3f6
/* 80371334  7F D7 FA A6 */	mfspr r30, 0x3f7
/* 80371338  7F FF FA A6 */	mfspr r31, 0x3ff
/* 8037133C  BE 02 02 B8 */	stmw r16, 0x2b8(r2)
lbl_80371340:
/* 80371340  7E 75 FA A6 */	mfspr r19, 0x3f5
/* 80371344  7E 99 EA A6 */	mfspr r20, 0x3b9
/* 80371348  7E BA EA A6 */	mfspr r21, 0x3ba
/* 8037134C  7E DD EA A6 */	mfspr r22, 0x3bd
/* 80371350  7E FE EA A6 */	mfspr r23, 0x3be
/* 80371354  7F 1B EA A6 */	mfspr r24, 0x3bb
/* 80371358  7F 38 EA A6 */	mfspr r25, 0x3b8
/* 8037135C  7F 5C EA A6 */	mfspr r26, 0x3bc
/* 80371360  7F 7C FA A6 */	mfspr r27, 0x3fc
/* 80371364  7F 9D FA A6 */	mfspr r28, 0x3fd
/* 80371368  7F BE FA A6 */	mfspr r29, 0x3fe
/* 8037136C  7F DB FA A6 */	mfspr r30, 0x3FB
/* 80371370  7F F9 FA A6 */	mfspr r31, 0x3f9
/* 80371374  BE 62 02 84 */	stmw r19, 0x284(r2)
/* 80371378  4E 80 00 20 */	blr 
/* 8037137C  7F 30 F2 A6 */	mfspr r25, 0x3d0
/* 80371380  7F 51 F2 A6 */	mfspr r26, 0x3d1
/* 80371384  7F 72 F2 A6 */	mfspr r27, 0x3d2
/* 80371388  7F 93 F2 A6 */	mfspr r28, 0x3d3
/* 8037138C  7F B4 F2 A6 */	mfspr r29, 0x3D4
/* 80371390  7F D5 F2 A6 */	mfspr r30, 0x3D5
/* 80371394  7F F6 F2 A6 */	mfspr r31, 0x3d6
/* 80371398  BF 22 02 40 */	stmw r25, 0x240(r2)
/* 8037139C  7F F6 02 A6 */	mfspr r31, 0x16
/* 803713A0  93 E2 02 78 */	stw r31, 0x278(r2)
/* 803713A4  4E 80 00 20 */	blr 
