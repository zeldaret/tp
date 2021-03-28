lbl_80A76A20:
/* 80A76A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A76A24  7C 08 02 A6 */	mflr r0
/* 80A76A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A76A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A76A30  93 C1 00 08 */	stw r30, 8(r1)
/* 80A76A34  7C 7E 1B 78 */	mr r30, r3
/* 80A76A38  3C 80 80 A8 */	lis r4, m__17daNpc_Moi_Param_c@ha
/* 80A76A3C  3B E4 AE F0 */	addi r31, r4, m__17daNpc_Moi_Param_c@l
/* 80A76A40  38 00 00 00 */	li r0, 0
/* 80A76A44  98 03 16 6A */	stb r0, 0x166a(r3)
/* 80A76A48  88 03 15 C4 */	lbz r0, 0x15c4(r3)
/* 80A76A4C  28 00 00 02 */	cmplwi r0, 2
/* 80A76A50  40 82 00 94 */	bne lbl_80A76AE4
/* 80A76A54  3C 80 80 A8 */	lis r4, l_motionAnmData@ha
/* 80A76A58  38 A4 B4 58 */	addi r5, r4, l_motionAnmData@l
/* 80A76A5C  80 05 02 A8 */	lwz r0, 0x2a8(r5)
/* 80A76A60  54 00 10 3A */	slwi r0, r0, 2
/* 80A76A64  3C 80 80 A8 */	lis r4, l_resNameList@ha
/* 80A76A68  38 84 B1 DC */	addi r4, r4, l_resNameList@l
/* 80A76A6C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A76A70  80 A5 02 A0 */	lwz r5, 0x2a0(r5)
/* 80A76A74  4B 6D 15 E4 */	b getTrnsfrmAnmP__8daNpcT_cFPCci
/* 80A76A78  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A76A7C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A76A80  7C 03 00 40 */	cmplw r3, r0
/* 80A76A84  40 82 00 60 */	bne lbl_80A76AE4
/* 80A76A88  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A76A8C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80A76A90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A76A94  4C 40 13 82 */	cror 2, 0, 2
/* 80A76A98  40 82 00 1C */	bne lbl_80A76AB4
/* 80A76A9C  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A76AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A76AA4  4C 40 13 82 */	cror 2, 0, 2
/* 80A76AA8  40 82 00 0C */	bne lbl_80A76AB4
/* 80A76AAC  38 00 00 01 */	li r0, 1
/* 80A76AB0  98 1E 16 6A */	stb r0, 0x166a(r30)
lbl_80A76AB4:
/* 80A76AB4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A76AB8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A76ABC  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80A76AC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A76AC4  4C 40 13 82 */	cror 2, 0, 2
/* 80A76AC8  40 82 00 1C */	bne lbl_80A76AE4
/* 80A76ACC  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80A76AD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A76AD4  4C 40 13 82 */	cror 2, 0, 2
/* 80A76AD8  40 82 00 0C */	bne lbl_80A76AE4
/* 80A76ADC  38 00 00 01 */	li r0, 1
/* 80A76AE0  98 1E 16 6A */	stb r0, 0x166a(r30)
lbl_80A76AE4:
/* 80A76AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A76AE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A76AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A76AF0  7C 08 03 A6 */	mtlr r0
/* 80A76AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A76AF8  4E 80 00 20 */	blr 
