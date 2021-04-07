lbl_80C60D40:
/* 80C60D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60D44  7C 08 02 A6 */	mflr r0
/* 80C60D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C60D50  7C 7F 1B 78 */	mr r31, r3
/* 80C60D54  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C60D58  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C61BDC@ha */
/* 80C60D5C  38 84 1B DC */	addi r4, r4, l_arcName@l /* 0x80C61BDC@l */
/* 80C60D60  80 84 00 00 */	lwz r4, 0(r4)
/* 80C60D64  4B 3C C1 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C60D68  7C 60 1B 78 */	mr r0, r3
/* 80C60D6C  2C 00 00 04 */	cmpwi r0, 4
/* 80C60D70  40 82 00 3C */	bne lbl_80C60DAC
/* 80C60D74  7F E3 FB 78 */	mr r3, r31
/* 80C60D78  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C61BDC@ha */
/* 80C60D7C  38 84 1B DC */	addi r4, r4, l_arcName@l /* 0x80C61BDC@l */
/* 80C60D80  80 84 00 00 */	lwz r4, 0(r4)
/* 80C60D84  38 A0 00 07 */	li r5, 7
/* 80C60D88  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C60D8C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C60D90  38 E0 73 50 */	li r7, 0x7350
/* 80C60D94  39 00 00 00 */	li r8, 0
/* 80C60D98  4B 41 7A 25 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C60D9C  7C 60 1B 78 */	mr r0, r3
/* 80C60DA0  2C 00 00 05 */	cmpwi r0, 5
/* 80C60DA4  40 82 00 08 */	bne lbl_80C60DAC
/* 80C60DA8  48 00 00 08 */	b lbl_80C60DB0
lbl_80C60DAC:
/* 80C60DAC  7C 03 03 78 */	mr r3, r0
lbl_80C60DB0:
/* 80C60DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C60DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60DB8  7C 08 03 A6 */	mtlr r0
/* 80C60DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60DC0  4E 80 00 20 */	blr 
