lbl_8007A824:
/* 8007A824  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007A828  7C 08 02 A6 */	mflr r0
/* 8007A82C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007A830  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8007A834  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8007A838  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A83C  48 2E 79 99 */	bl _savegpr_27
/* 8007A840  7C 7B 1B 78 */	mr r27, r3
/* 8007A844  7C BC 2B 78 */	mr r28, r5
/* 8007A848  3B A0 00 00 */	li r29, 0
/* 8007A84C  C3 E2 8D 0C */	lfs f31, lit_4271(r2)
lbl_8007A850:
/* 8007A850  80 7B 00 94 */	lwz r3, 0x94(r27)
/* 8007A854  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 8007A858  1C 05 00 18 */	mulli r0, r5, 0x18
/* 8007A85C  7C 63 02 14 */	add r3, r3, r0
/* 8007A860  83 DB 00 98 */	lwz r30, 0x98(r27)
/* 8007A864  54 9F 1B 78 */	rlwinm r31, r4, 3, 0xd, 0x1c
/* 8007A868  C0 63 00 04 */	lfs f3, 4(r3)
/* 8007A86C  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 8007A870  4C 41 13 82 */	cror 2, 1, 2
/* 8007A874  40 82 00 4C */	bne lbl_8007A8C0
/* 8007A878  C0 03 00 00 */	lfs f0, 0(r3)
/* 8007A87C  FC 20 00 50 */	fneg f1, f0
/* 8007A880  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8007A884  EC 41 00 32 */	fmuls f2, f1, f0
/* 8007A888  C0 23 00 08 */	lfs f1, 8(r3)
/* 8007A88C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8007A890  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007A894  EC 22 00 28 */	fsubs f1, f2, f0
/* 8007A898  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8007A89C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007A8A0  EC 20 18 24 */	fdivs f1, f0, f3
/* 8007A8A4  7F 63 DB 78 */	mr r3, r27
/* 8007A8A8  7C A4 2B 78 */	mr r4, r5
/* 8007A8AC  7F 85 E3 78 */	mr r5, r28
/* 8007A8B0  4B FF FD D1 */	bl RwgGroundCheckCommon__4cBgWFfUsP11cBgS_GndChk
/* 8007A8B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A8B8  41 82 00 08 */	beq lbl_8007A8C0
/* 8007A8BC  3B A0 00 01 */	li r29, 1
lbl_8007A8C0:
/* 8007A8C0  7C 9E FA 2E */	lhzx r4, r30, r31
/* 8007A8C4  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007A8C8  41 82 00 08 */	beq lbl_8007A8D0
/* 8007A8CC  4B FF FF 84 */	b lbl_8007A850
lbl_8007A8D0:
/* 8007A8D0  7F A3 EB 78 */	mr r3, r29
/* 8007A8D4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8007A8D8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8007A8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A8E0  48 2E 79 41 */	bl _restgpr_27
/* 8007A8E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007A8E8  7C 08 03 A6 */	mtlr r0
/* 8007A8EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8007A8F0  4E 80 00 20 */	blr 
