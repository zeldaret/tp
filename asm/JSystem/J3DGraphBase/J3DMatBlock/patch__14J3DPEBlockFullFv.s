lbl_8031F890:
/* 8031F890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031F894  7C 08 02 A6 */	mflr r0
/* 8031F898  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031F89C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031F8A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031F8A4  7C 7E 1B 78 */	mr r30, r3
/* 8031F8A8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F8AC  80 64 00 00 */	lwz r3, 0(r4)
/* 8031F8B0  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8031F8B4  7C 03 02 14 */	add r0, r3, r0
/* 8031F8B8  90 04 00 08 */	stw r0, 8(r4)
/* 8031F8BC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F8C0  80 64 00 08 */	lwz r3, 8(r4)
/* 8031F8C4  38 63 00 37 */	addi r3, r3, 0x37
/* 8031F8C8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8031F8CC  7C 03 00 40 */	cmplw r3, r0
/* 8031F8D0  40 81 00 08 */	ble lbl_8031F8D8
/* 8031F8D4  48 04 18 01 */	bl GDOverflowed
lbl_8031F8D8:
/* 8031F8D8  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031F8DC  83 E3 00 08 */	lwz r31, 8(r3)
/* 8031F8E0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8031F8E4  90 01 00 08 */	stw r0, 8(r1)
/* 8031F8E8  88 7E 00 04 */	lbz r3, 4(r30)
/* 8031F8EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8031F8F0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8031F8F4  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 8031F8F8  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 8031F8FC  38 81 00 08 */	addi r4, r1, 8
/* 8031F900  4B FE FD 31 */	bl J3DGDSetFog__F10_GXFogTypeffff8_GXColor
/* 8031F904  88 7E 00 05 */	lbz r3, 5(r30)
/* 8031F908  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8031F90C  38 BE 00 1C */	addi r5, r30, 0x1c
/* 8031F910  4B FF 00 85 */	bl J3DGDSetFogRangeAdj__FUcUsP14_GXFogAdjTable
/* 8031F914  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031F918  80 03 00 08 */	lwz r0, 8(r3)
/* 8031F91C  7F E3 FB 78 */	mr r3, r31
/* 8031F920  7C 9F 00 50 */	subf r4, r31, r0
/* 8031F924  48 01 BC B9 */	bl DCStoreRange
/* 8031F928  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031F92C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031F930  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031F934  7C 08 03 A6 */	mtlr r0
/* 8031F938  38 21 00 20 */	addi r1, r1, 0x20
/* 8031F93C  4E 80 00 20 */	blr 
