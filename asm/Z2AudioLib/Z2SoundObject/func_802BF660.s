lbl_802BF660:
/* 802BF660  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802BF664  7C 08 02 A6 */	mflr r0
/* 802BF668  90 01 00 64 */	stw r0, 0x64(r1)
/* 802BF66C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802BF670  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 802BF674  39 61 00 50 */	addi r11, r1, 0x50
/* 802BF678  48 0A 2B 4D */	bl _savegpr_23
/* 802BF67C  7C 78 1B 78 */	mr r24, r3
/* 802BF680  7C 99 23 78 */	mr r25, r4
/* 802BF684  FF E0 08 90 */	fmr f31, f1
/* 802BF688  7C BA 2B 78 */	mr r26, r5
/* 802BF68C  7C DB 33 78 */	mr r27, r6
/* 802BF690  7C FC 3B 78 */	mr r28, r7
/* 802BF694  80 A3 00 40 */	lwz r5, 0x40(r3)
/* 802BF698  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802BF69C  80 64 00 04 */	lwz r3, 4(r4)
/* 802BF6A0  28 03 00 00 */	cmplwi r3, 0
/* 802BF6A4  41 82 00 18 */	beq lbl_802BF6BC
/* 802BF6A8  81 83 00 00 */	lwz r12, 0(r3)
/* 802BF6AC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802BF6B0  7D 89 03 A6 */	mtctr r12
/* 802BF6B4  4E 80 04 21 */	bctrl 
/* 802BF6B8  48 00 00 10 */	b lbl_802BF6C8
lbl_802BF6BC:
/* 802BF6BC  54 A3 28 34 */	slwi r3, r5, 5
/* 802BF6C0  38 63 00 08 */	addi r3, r3, 8
/* 802BF6C4  7C 64 1A 14 */	add r3, r4, r3
lbl_802BF6C8:
/* 802BF6C8  7C 7F 1B 78 */	mr r31, r3
/* 802BF6CC  7C 7E 1B 78 */	mr r30, r3
/* 802BF6D0  88 18 00 44 */	lbz r0, 0x44(r24)
/* 802BF6D4  28 00 00 00 */	cmplwi r0, 0
/* 802BF6D8  41 82 00 14 */	beq lbl_802BF6EC
/* 802BF6DC  80 78 00 40 */	lwz r3, 0x40(r24)
/* 802BF6E0  38 03 FF FF */	addi r0, r3, -1
/* 802BF6E4  90 18 00 40 */	stw r0, 0x40(r24)
/* 802BF6E8  48 00 00 10 */	b lbl_802BF6F8
lbl_802BF6EC:
/* 802BF6EC  80 78 00 40 */	lwz r3, 0x40(r24)
/* 802BF6F0  38 03 00 01 */	addi r0, r3, 1
/* 802BF6F4  90 18 00 40 */	stw r0, 0x40(r24)
lbl_802BF6F8:
/* 802BF6F8  88 7F 00 1A */	lbz r3, 0x1a(r31)
/* 802BF6FC  7C 60 07 75 */	extsb. r0, r3
/* 802BF700  40 81 00 08 */	ble lbl_802BF708
/* 802BF704  7C 7B 07 74 */	extsb r27, r3
lbl_802BF708:
/* 802BF708  7F 03 C3 78 */	mr r3, r24
/* 802BF70C  7F E4 FB 78 */	mr r4, r31
/* 802BF710  7F 25 CB 78 */	mr r5, r25
/* 802BF714  FC 20 F8 90 */	fmr f1, f31
/* 802BF718  48 00 01 81 */	bl func_802BF898
/* 802BF71C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BF720  41 82 01 50 */	beq lbl_802BF870
/* 802BF724  7F 03 C3 78 */	mr r3, r24
/* 802BF728  7F E4 FB 78 */	mr r4, r31
/* 802BF72C  7F 25 CB 78 */	mr r5, r25
/* 802BF730  FC 20 F8 90 */	fmr f1, f31
/* 802BF734  48 00 01 5D */	bl func_802BF890
/* 802BF738  7C 77 1B 78 */	mr r23, r3
/* 802BF73C  92 E1 00 0C */	stw r23, 0xc(r1)
/* 802BF740  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802BF744  38 81 00 0C */	addi r4, r1, 0xc
/* 802BF748  4B FE EE 69 */	bl isSoundCulling__7Z2SeMgrF10JAISoundID
/* 802BF74C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BF750  40 82 01 20 */	bne lbl_802BF870
/* 802BF754  7F 03 C3 78 */	mr r3, r24
/* 802BF758  7F C4 F3 78 */	mr r4, r30
/* 802BF75C  4B FE BB 45 */	bl getHandleUserData__14Z2SoundHandlesFUl
/* 802BF760  7C 7D 1B 79 */	or. r29, r3, r3
/* 802BF764  41 82 00 24 */	beq lbl_802BF788
/* 802BF768  80 7D 00 00 */	lwz r3, 0(r29)
/* 802BF76C  28 03 00 00 */	cmplwi r3, 0
/* 802BF770  41 82 00 18 */	beq lbl_802BF788
/* 802BF774  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802BF778  54 00 E7 BE */	rlwinm r0, r0, 0x1c, 0x1e, 0x1f
/* 802BF77C  28 00 00 01 */	cmplwi r0, 1
/* 802BF780  41 82 00 08 */	beq lbl_802BF788
/* 802BF784  3B A0 00 00 */	li r29, 0
lbl_802BF788:
/* 802BF788  28 1D 00 00 */	cmplwi r29, 0
/* 802BF78C  40 82 00 10 */	bne lbl_802BF79C
/* 802BF790  7F 03 C3 78 */	mr r3, r24
/* 802BF794  4B FE BB 45 */	bl getFreeHandle__14Z2SoundHandlesFv
/* 802BF798  7C 7D 1B 78 */	mr r29, r3
lbl_802BF79C:
/* 802BF79C  28 1D 00 00 */	cmplwi r29, 0
/* 802BF7A0  41 82 00 D0 */	beq lbl_802BF870
/* 802BF7A4  92 E1 00 08 */	stw r23, 8(r1)
/* 802BF7A8  7F 43 D3 78 */	mr r3, r26
/* 802BF7AC  38 81 00 08 */	addi r4, r1, 8
/* 802BF7B0  7F A5 EB 78 */	mr r5, r29
/* 802BF7B4  7F 26 CB 78 */	mr r6, r25
/* 802BF7B8  7F 67 DB 78 */	mr r7, r27
/* 802BF7BC  7F 80 07 74 */	extsb r0, r28
/* 802BF7C0  C8 22 C1 48 */	lfd f1, lit_3564(r2)
/* 802BF7C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BF7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BF7CC  3D 00 43 30 */	lis r8, 0x4330
/* 802BF7D0  91 01 00 10 */	stw r8, 0x10(r1)
/* 802BF7D4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802BF7D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BF7DC  C0 82 C1 38 */	lfs f4, lit_3559(r2)
/* 802BF7E0  EC 20 20 24 */	fdivs f1, f0, f4
/* 802BF7E4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 802BF7E8  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 802BF7EC  C8 62 C1 68 */	lfd f3, lit_3828(r2)
/* 802BF7F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802BF7F4  91 01 00 18 */	stw r8, 0x18(r1)
/* 802BF7F8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802BF7FC  EC 00 18 28 */	fsubs f0, f0, f3
/* 802BF800  EC 60 20 24 */	fdivs f3, f0, f4
/* 802BF804  C0 82 C1 40 */	lfs f4, lit_3561(r2)
/* 802BF808  FC A0 20 90 */	fmr f5, f4
/* 802BF80C  39 00 00 00 */	li r8, 0
/* 802BF810  81 9A 00 00 */	lwz r12, 0(r26)
/* 802BF814  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BF818  7D 89 03 A6 */	mtctr r12
/* 802BF81C  4E 80 04 21 */	bctrl 
/* 802BF820  80 9D 00 00 */	lwz r4, 0(r29)
/* 802BF824  28 04 00 00 */	cmplwi r4, 0
/* 802BF828  41 82 00 48 */	beq lbl_802BF870
/* 802BF82C  38 60 00 01 */	li r3, 1
/* 802BF830  88 04 00 1F */	lbz r0, 0x1f(r4)
/* 802BF834  50 60 26 B6 */	rlwimi r0, r3, 4, 0x1a, 0x1b
/* 802BF838  98 04 00 1F */	stb r0, 0x1f(r4)
/* 802BF83C  80 9D 00 00 */	lwz r4, 0(r29)
/* 802BF840  93 C4 00 20 */	stw r30, 0x20(r4)
/* 802BF844  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 802BF848  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 802BF84C  41 82 00 24 */	beq lbl_802BF870
/* 802BF850  80 9D 00 00 */	lwz r4, 0(r29)
/* 802BF854  90 64 00 10 */	stw r3, 0x10(r4)
/* 802BF858  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802BF85C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BF860  98 04 00 1D */	stb r0, 0x1d(r4)
/* 802BF864  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802BF868  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BF86C  98 04 00 1D */	stb r0, 0x1d(r4)
lbl_802BF870:
/* 802BF870  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802BF874  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802BF878  39 61 00 50 */	addi r11, r1, 0x50
/* 802BF87C  48 0A 29 95 */	bl _restgpr_23
/* 802BF880  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802BF884  7C 08 03 A6 */	mtlr r0
/* 802BF888  38 21 00 60 */	addi r1, r1, 0x60
/* 802BF88C  4E 80 00 20 */	blr 
