lbl_804A61F0:
/* 804A61F0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804A61F4  7C 08 02 A6 */	mflr r0
/* 804A61F8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804A61FC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 804A6200  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 804A6204  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 804A6208  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 804A620C  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 804A6210  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 804A6214  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 804A6218  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 804A621C  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 804A6220  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 804A6224  39 61 00 90 */	addi r11, r1, 0x90
/* 804A6228  4B EB BF A4 */	b _savegpr_25
/* 804A622C  7C 7D 1B 78 */	mr r29, r3
/* 804A6230  7C 80 23 78 */	mr r0, r4
/* 804A6234  7C BE 2B 78 */	mr r30, r5
/* 804A6238  7C DB 33 78 */	mr r27, r6
/* 804A623C  7C F9 3B 78 */	mr r25, r7
/* 804A6240  3C 60 80 4B */	lis r3, lit_3727@ha
/* 804A6244  3B 43 88 60 */	addi r26, r3, lit_3727@l
/* 804A6248  38 61 00 2C */	addi r3, r1, 0x2c
/* 804A624C  7F A4 EB 78 */	mr r4, r29
/* 804A6250  7C 05 03 78 */	mr r5, r0
/* 804A6254  4B DC 08 E0 */	b __mi__4cXyzCFRC3Vec
/* 804A6258  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804A625C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A6260  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804A6264  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804A6268  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804A626C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804A6270  C3 FA 00 70 */	lfs f31, 0x70(r26)
/* 804A6274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A6278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A627C  7F 64 DB 78 */	mr r4, r27
/* 804A6280  4B B6 61 5C */	b mDoMtx_YrotS__FPA4_fs
/* 804A6284  2C 19 00 01 */	cmpwi r25, 1
/* 804A6288  40 82 00 24 */	bne lbl_804A62AC
/* 804A628C  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 804A6290  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A6294  C0 1A 00 74 */	lfs f0, 0x74(r26)
/* 804A6298  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A629C  C0 1A 00 78 */	lfs f0, 0x78(r26)
/* 804A62A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804A62A4  C3 FA 00 4C */	lfs f31, 0x4c(r26)
/* 804A62A8  48 00 00 40 */	b lbl_804A62E8
lbl_804A62AC:
/* 804A62AC  2C 19 00 05 */	cmpwi r25, 5
/* 804A62B0  40 82 00 20 */	bne lbl_804A62D0
/* 804A62B4  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 804A62B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A62BC  C0 1A 00 7C */	lfs f0, 0x7c(r26)
/* 804A62C0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A62C4  C0 1A 00 80 */	lfs f0, 0x80(r26)
/* 804A62C8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804A62CC  48 00 00 1C */	b lbl_804A62E8
lbl_804A62D0:
/* 804A62D0  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 804A62D4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A62D8  C0 1A 00 7C */	lfs f0, 0x7c(r26)
/* 804A62DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A62E0  C0 1A 00 84 */	lfs f0, 0x84(r26)
/* 804A62E4  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_804A62E8:
/* 804A62E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A62EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A62F0  38 81 00 44 */	addi r4, r1, 0x44
/* 804A62F4  38 A1 00 38 */	addi r5, r1, 0x38
/* 804A62F8  4B EA 0A 74 */	b PSMTXMultVec
/* 804A62FC  3B E0 00 00 */	li r31, 0
/* 804A6300  3B 80 00 00 */	li r28, 0
/* 804A6304  CB 9A 00 58 */	lfd f28, 0x58(r26)
/* 804A6308  3F 20 43 30 */	lis r25, 0x4330
/* 804A630C  C3 BA 00 88 */	lfs f29, 0x88(r26)
/* 804A6310  C3 DA 00 8C */	lfs f30, 0x8c(r26)
/* 804A6314  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804A6318  3B 43 9A 20 */	addi r26, r3, sincosTable___5JMath@l
/* 804A631C  3C 60 80 43 */	lis r3, g_Counter@ha
/* 804A6320  3B 63 0C D8 */	addi r27, r3, g_Counter@l
lbl_804A6324:
/* 804A6324  38 61 00 20 */	addi r3, r1, 0x20
/* 804A6328  38 81 00 50 */	addi r4, r1, 0x50
/* 804A632C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 804A6330  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A6334  93 21 00 60 */	stw r25, 0x60(r1)
/* 804A6338  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 804A633C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 804A6340  EF 60 E8 24 */	fdivs f27, f0, f29
/* 804A6344  FC 20 D8 90 */	fmr f1, f27
/* 804A6348  4B DC 08 3C */	b __ml__4cXyzCFf
/* 804A634C  38 61 00 14 */	addi r3, r1, 0x14
/* 804A6350  7F A4 EB 78 */	mr r4, r29
/* 804A6354  38 A1 00 20 */	addi r5, r1, 0x20
/* 804A6358  4B DC 07 DC */	b __mi__4cXyzCFRC3Vec
/* 804A635C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A6360  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804A6364  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804A6368  D0 1E 00 04 */	stfs f0, 4(r30)
/* 804A636C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A6370  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804A6374  EC 1E 06 F2 */	fmuls f0, f30, f27
/* 804A6378  FC 00 00 1E */	fctiwz f0, f0
/* 804A637C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 804A6380  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 804A6384  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A6388  7F 7A 04 2E */	lfsx f27, r26, r0
/* 804A638C  38 61 00 08 */	addi r3, r1, 8
/* 804A6390  38 81 00 38 */	addi r4, r1, 0x38
/* 804A6394  FC 20 D8 90 */	fmr f1, f27
/* 804A6398  4B DC 07 EC */	b __ml__4cXyzCFf
/* 804A639C  7F C3 F3 78 */	mr r3, r30
/* 804A63A0  38 81 00 08 */	addi r4, r1, 8
/* 804A63A4  7F C5 F3 78 */	mr r5, r30
/* 804A63A8  4B EA 0C E8 */	b PSVECAdd
/* 804A63AC  80 1B 00 00 */	lwz r0, 0(r27)
/* 804A63B0  1C 00 09 C4 */	mulli r0, r0, 0x9c4
/* 804A63B4  7C 00 E2 14 */	add r0, r0, r28
/* 804A63B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A63BC  7C 1A 04 2E */	lfsx f0, r26, r0
/* 804A63C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804A63C4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804A63C8  EC 1B 00 32 */	fmuls f0, f27, f0
/* 804A63CC  EC 01 00 2A */	fadds f0, f1, f0
/* 804A63D0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 804A63D4  3B FF 00 01 */	addi r31, r31, 1
/* 804A63D8  2C 1F 00 10 */	cmpwi r31, 0x10
/* 804A63DC  3B 9C 06 40 */	addi r28, r28, 0x640
/* 804A63E0  3B DE 00 0C */	addi r30, r30, 0xc
/* 804A63E4  41 80 FF 40 */	blt lbl_804A6324
/* 804A63E8  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 804A63EC  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 804A63F0  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 804A63F4  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 804A63F8  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 804A63FC  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 804A6400  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 804A6404  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 804A6408  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 804A640C  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 804A6410  39 61 00 90 */	addi r11, r1, 0x90
/* 804A6414  4B EB BE 04 */	b _restgpr_25
/* 804A6418  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804A641C  7C 08 03 A6 */	mtlr r0
/* 804A6420  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804A6424  4E 80 00 20 */	blr 
