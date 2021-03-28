lbl_80B9FDE8:
/* 80B9FDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FDEC  7C 08 02 A6 */	mflr r0
/* 80B9FDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9FDF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9FDFC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9FE00  41 82 00 08 */	beq lbl_80B9FE08
/* 80B9FE04  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80B9FE08:
/* 80B9FE08  3C 80 80 BA */	lis r4, l_arcName@ha
/* 80B9FE0C  38 84 11 E0 */	addi r4, r4, l_arcName@l
/* 80B9FE10  80 84 00 00 */	lwz r4, 0(r4)
/* 80B9FE14  4B 48 D0 A8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B9FE18  7C 7F 1B 78 */	mr r31, r3
/* 80B9FE1C  2C 1F 00 04 */	cmpwi r31, 4
/* 80B9FE20  40 82 00 74 */	bne lbl_80B9FE94
/* 80B9FE24  7F C3 F3 78 */	mr r3, r30
/* 80B9FE28  48 00 02 5D */	bl setMtx__14daObjYtaihou_cFv
/* 80B9FE2C  7F C3 F3 78 */	mr r3, r30
/* 80B9FE30  3C 80 80 BA */	lis r4, l_arcName@ha
/* 80B9FE34  38 84 11 E0 */	addi r4, r4, l_arcName@l
/* 80B9FE38  80 84 00 00 */	lwz r4, 0(r4)
/* 80B9FE3C  38 A0 00 07 */	li r5, 7
/* 80B9FE40  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80B9FE44  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80B9FE48  38 E0 45 50 */	li r7, 0x4550
/* 80B9FE4C  39 1E 05 B8 */	addi r8, r30, 0x5b8
/* 80B9FE50  4B 4D 89 6C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80B9FE54  7C 7F 1B 78 */	mr r31, r3
/* 80B9FE58  2C 1F 00 05 */	cmpwi r31, 5
/* 80B9FE5C  40 82 00 08 */	bne lbl_80B9FE64
/* 80B9FE60  48 00 00 38 */	b lbl_80B9FE98
lbl_80B9FE64:
/* 80B9FE64  7F C3 F3 78 */	mr r3, r30
/* 80B9FE68  48 00 00 B5 */	bl loadAngle__14daObjYtaihou_cFv
/* 80B9FE6C  7F C3 F3 78 */	mr r3, r30
/* 80B9FE70  48 00 01 F1 */	bl setNextAngle__14daObjYtaihou_cFv
/* 80B9FE74  38 00 00 00 */	li r0, 0
/* 80B9FE78  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B9FE7C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80B9FE80  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B9FE84  3C 60 80 BA */	lis r3, searchIronBallCallback__FPvPv@ha
/* 80B9FE88  38 63 FD 5C */	addi r3, r3, searchIronBallCallback__FPvPv@l
/* 80B9FE8C  7F C4 F3 78 */	mr r4, r30
/* 80B9FE90  4B 47 99 68 */	b fopAcIt_Judge__FPFPvPv_PvPv
lbl_80B9FE94:
/* 80B9FE94  7F E3 FB 78 */	mr r3, r31
lbl_80B9FE98:
/* 80B9FE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9FE9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9FEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FEA4  7C 08 03 A6 */	mtlr r0
/* 80B9FEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FEAC  4E 80 00 20 */	blr 
