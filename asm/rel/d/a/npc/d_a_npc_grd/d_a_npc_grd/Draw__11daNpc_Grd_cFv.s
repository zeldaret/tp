lbl_809D08AC:
/* 809D08AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D08B0  7C 08 02 A6 */	mflr r0
/* 809D08B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D08B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D08BC  7C 7F 1B 78 */	mr r31, r3
/* 809D08C0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 809D08C4  80 84 00 04 */	lwz r4, 4(r4)
/* 809D08C8  80 84 00 04 */	lwz r4, 4(r4)
/* 809D08CC  80 84 00 60 */	lwz r4, 0x60(r4)
/* 809D08D0  80 84 00 04 */	lwz r4, 4(r4)
/* 809D08D4  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809D08D8  90 04 00 3C */	stw r0, 0x3c(r4)
/* 809D08DC  3C 80 80 9D */	lis r4, lit_4482@ha
/* 809D08E0  38 A4 3D 38 */	addi r5, r4, lit_4482@l
/* 809D08E4  80 85 00 00 */	lwz r4, 0(r5)
/* 809D08E8  80 05 00 04 */	lwz r0, 4(r5)
/* 809D08EC  90 81 00 08 */	stw r4, 8(r1)
/* 809D08F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D08F4  80 05 00 08 */	lwz r0, 8(r5)
/* 809D08F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D08FC  38 81 00 08 */	addi r4, r1, 8
/* 809D0900  48 00 16 51 */	bl chkAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i
/* 809D0904  7C 64 1B 78 */	mr r4, r3
/* 809D0908  7F E3 FB 78 */	mr r3, r31
/* 809D090C  38 A0 00 00 */	li r5, 0
/* 809D0910  3C C0 80 9D */	lis r6, m__17daNpc_Grd_Param_c@ha
/* 809D0914  38 C6 3A 04 */	addi r6, r6, m__17daNpc_Grd_Param_c@l
/* 809D0918  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809D091C  38 C0 00 00 */	li r6, 0
/* 809D0920  38 E0 00 00 */	li r7, 0
/* 809D0924  4B 78 19 88 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 809D0928  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D092C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D0930  7C 08 03 A6 */	mtlr r0
/* 809D0934  38 21 00 20 */	addi r1, r1, 0x20
/* 809D0938  4E 80 00 20 */	blr 
