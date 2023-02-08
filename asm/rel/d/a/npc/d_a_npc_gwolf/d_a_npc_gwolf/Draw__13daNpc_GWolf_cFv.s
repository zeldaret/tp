lbl_809F3C2C:
/* 809F3C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F3C30  7C 08 02 A6 */	mflr r0
/* 809F3C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F3C38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809F3C3C  7C 7F 1B 78 */	mr r31, r3
/* 809F3C40  80 83 05 68 */	lwz r4, 0x568(r3)
/* 809F3C44  80 84 00 04 */	lwz r4, 4(r4)
/* 809F3C48  80 84 00 04 */	lwz r4, 4(r4)
/* 809F3C4C  80 84 00 60 */	lwz r4, 0x60(r4)
/* 809F3C50  80 84 00 08 */	lwz r4, 8(r4)
/* 809F3C54  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809F3C58  90 04 00 3C */	stw r0, 0x3c(r4)
/* 809F3C5C  3C 80 80 A0 */	lis r4, lit_4488@ha /* 0x809F8A10@ha */
/* 809F3C60  38 A4 8A 10 */	addi r5, r4, lit_4488@l /* 0x809F8A10@l */
/* 809F3C64  80 85 00 00 */	lwz r4, 0(r5)
/* 809F3C68  80 05 00 04 */	lwz r0, 4(r5)
/* 809F3C6C  90 81 00 08 */	stw r4, 8(r1)
/* 809F3C70  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F3C74  80 05 00 08 */	lwz r0, 8(r5)
/* 809F3C78  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F3C7C  38 81 00 08 */	addi r4, r1, 8
/* 809F3C80  48 00 19 51 */	bl chkAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i
/* 809F3C84  7C 64 1B 78 */	mr r4, r3
/* 809F3C88  7F E3 FB 78 */	mr r3, r31
/* 809F3C8C  38 A0 00 00 */	li r5, 0
/* 809F3C90  3C C0 80 A0 */	lis r6, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F3C94  38 C6 84 F4 */	addi r6, r6, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F3C98  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809F3C9C  38 C0 00 00 */	li r6, 0
/* 809F3CA0  38 E0 00 00 */	li r7, 0
/* 809F3CA4  48 00 00 19 */	bl draw__13daNpc_GWolf_cFiifP11_GXColorS10i
/* 809F3CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809F3CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F3CB0  7C 08 03 A6 */	mtlr r0
/* 809F3CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 809F3CB8  4E 80 00 20 */	blr 
