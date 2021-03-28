lbl_8007A774:
/* 8007A774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007A778  7C 08 02 A6 */	mflr r0
/* 8007A77C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A780  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A784  48 2E 7A 51 */	bl _savegpr_27
/* 8007A788  7C 7B 1B 78 */	mr r27, r3
/* 8007A78C  7C BC 2B 78 */	mr r28, r5
/* 8007A790  3B A0 00 00 */	li r29, 0
lbl_8007A794:
/* 8007A794  83 DB 00 98 */	lwz r30, 0x98(r27)
/* 8007A798  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 8007A79C  54 9F 1B 78 */	rlwinm r31, r4, 3, 0xd, 0x1c
/* 8007A7A0  80 7B 00 94 */	lwz r3, 0x94(r27)
/* 8007A7A4  1C 05 00 18 */	mulli r0, r5, 0x18
/* 8007A7A8  7C 63 02 14 */	add r3, r3, r0
/* 8007A7AC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8007A7B0  FC 20 00 50 */	fneg f1, f0
/* 8007A7B4  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8007A7B8  EC 41 00 32 */	fmuls f2, f1, f0
/* 8007A7BC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8007A7C0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8007A7C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007A7C8  EC 22 00 28 */	fsubs f1, f2, f0
/* 8007A7CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8007A7D0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8007A7D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007A7D8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8007A7DC  7F 63 DB 78 */	mr r3, r27
/* 8007A7E0  7C A4 2B 78 */	mr r4, r5
/* 8007A7E4  7F 85 E3 78 */	mr r5, r28
/* 8007A7E8  4B FF FE 99 */	bl RwgGroundCheckCommon__4cBgWFfUsP11cBgS_GndChk
/* 8007A7EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A7F0  41 82 00 08 */	beq lbl_8007A7F8
/* 8007A7F4  3B A0 00 01 */	li r29, 1
lbl_8007A7F8:
/* 8007A7F8  7C 9E FA 2E */	lhzx r4, r30, r31
/* 8007A7FC  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007A800  41 82 00 08 */	beq lbl_8007A808
/* 8007A804  4B FF FF 90 */	b lbl_8007A794
lbl_8007A808:
/* 8007A808  7F A3 EB 78 */	mr r3, r29
/* 8007A80C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A810  48 2E 7A 11 */	bl _restgpr_27
/* 8007A814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007A818  7C 08 03 A6 */	mtlr r0
/* 8007A81C  38 21 00 20 */	addi r1, r1, 0x20
/* 8007A820  4E 80 00 20 */	blr 
