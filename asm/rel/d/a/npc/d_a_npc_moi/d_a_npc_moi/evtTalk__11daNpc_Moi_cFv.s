lbl_80A75664:
/* 80A75664  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A75668  7C 08 02 A6 */	mflr r0
/* 80A7566C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A75670  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A75674  7C 7F 1B 78 */	mr r31, r3
/* 80A75678  3C 80 80 A8 */	lis r4, lit_4883@ha
/* 80A7567C  38 A4 BD 50 */	addi r5, r4, lit_4883@l
/* 80A75680  80 85 00 00 */	lwz r4, 0(r5)
/* 80A75684  80 05 00 04 */	lwz r0, 4(r5)
/* 80A75688  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A7568C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A75690  80 05 00 08 */	lwz r0, 8(r5)
/* 80A75694  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A75698  38 81 00 14 */	addi r4, r1, 0x14
/* 80A7569C  48 00 0F 31 */	bl chkAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i
/* 80A756A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A756A4  41 82 00 1C */	beq lbl_80A756C0
/* 80A756A8  7F E3 FB 78 */	mr r3, r31
/* 80A756AC  38 80 00 00 */	li r4, 0
/* 80A756B0  39 9F 16 1C */	addi r12, r31, 0x161c
/* 80A756B4  4B 8E C9 D0 */	b __ptmf_scall
/* 80A756B8  60 00 00 00 */	nop 
/* 80A756BC  48 00 00 30 */	b lbl_80A756EC
lbl_80A756C0:
/* 80A756C0  3C 60 80 A8 */	lis r3, lit_4888@ha
/* 80A756C4  38 83 BD 5C */	addi r4, r3, lit_4888@l
/* 80A756C8  80 64 00 00 */	lwz r3, 0(r4)
/* 80A756CC  80 04 00 04 */	lwz r0, 4(r4)
/* 80A756D0  90 61 00 08 */	stw r3, 8(r1)
/* 80A756D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A756D8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A756DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A756E0  7F E3 FB 78 */	mr r3, r31
/* 80A756E4  38 81 00 08 */	addi r4, r1, 8
/* 80A756E8  48 00 0F 11 */	bl setAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i
lbl_80A756EC:
/* 80A756EC  38 60 00 01 */	li r3, 1
/* 80A756F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A756F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A756F8  7C 08 03 A6 */	mtlr r0
/* 80A756FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A75700  4E 80 00 20 */	blr 
