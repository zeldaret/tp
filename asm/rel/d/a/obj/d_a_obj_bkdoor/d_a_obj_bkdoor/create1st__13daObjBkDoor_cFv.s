lbl_80578F20:
/* 80578F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578F24  7C 08 02 A6 */	mflr r0
/* 80578F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80578F30  7C 7F 1B 78 */	mr r31, r3
/* 80578F34  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80578F38  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80578F3C  98 03 05 BC */	stb r0, 0x5bc(r3)
/* 80578F40  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80578F44  3C 80 80 58 */	lis r4, l_arcName@ha
/* 80578F48  38 84 95 44 */	addi r4, r4, l_arcName@l
/* 80578F4C  80 84 00 00 */	lwz r4, 0(r4)
/* 80578F50  4B AB 3F 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80578F54  7C 60 1B 78 */	mr r0, r3
/* 80578F58  2C 00 00 04 */	cmpwi r0, 4
/* 80578F5C  40 82 00 4C */	bne lbl_80578FA8
/* 80578F60  7F E3 FB 78 */	mr r3, r31
/* 80578F64  3C 80 80 58 */	lis r4, l_arcName@ha
/* 80578F68  38 84 95 44 */	addi r4, r4, l_arcName@l
/* 80578F6C  80 84 00 00 */	lwz r4, 0(r4)
/* 80578F70  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80578F74  54 00 10 3A */	slwi r0, r0, 2
/* 80578F78  3C A0 80 58 */	lis r5, l_dzb@ha
/* 80578F7C  38 A5 94 98 */	addi r5, r5, l_dzb@l
/* 80578F80  7C A5 00 2E */	lwzx r5, r5, r0
/* 80578F84  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80578F88  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80578F8C  38 E0 0B D0 */	li r7, 0xbd0
/* 80578F90  39 00 00 00 */	li r8, 0
/* 80578F94  4B AF F8 28 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80578F98  7C 60 1B 78 */	mr r0, r3
/* 80578F9C  2C 00 00 05 */	cmpwi r0, 5
/* 80578FA0  40 82 00 08 */	bne lbl_80578FA8
/* 80578FA4  48 00 00 08 */	b lbl_80578FAC
lbl_80578FA8:
/* 80578FA8  7C 03 03 78 */	mr r3, r0
lbl_80578FAC:
/* 80578FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80578FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578FB4  7C 08 03 A6 */	mtlr r0
/* 80578FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80578FBC  4E 80 00 20 */	blr 
