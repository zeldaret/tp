lbl_8031F940:
/* 8031F940  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031F944  7C 08 02 A6 */	mflr r0
/* 8031F948  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031F94C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031F950  7C 7F 1B 78 */	mr r31, r3
/* 8031F954  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F958  80 64 00 08 */	lwz r3, 8(r4)
/* 8031F95C  38 63 00 37 */	addi r3, r3, 0x37
/* 8031F960  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8031F964  7C 03 00 40 */	cmplw r3, r0
/* 8031F968  40 81 00 08 */	ble lbl_8031F970
/* 8031F96C  48 04 17 69 */	bl GDOverflowed
lbl_8031F970:
/* 8031F970  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8031F974  90 01 00 08 */	stw r0, 8(r1)
/* 8031F978  88 7F 00 04 */	lbz r3, 4(r31)
/* 8031F97C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8031F980  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8031F984  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8031F988  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 8031F98C  38 81 00 08 */	addi r4, r1, 8
/* 8031F990  4B FE FC A1 */	bl J3DGDSetFog__F10_GXFogTypeffff8_GXColor
/* 8031F994  88 7F 00 05 */	lbz r3, 5(r31)
/* 8031F998  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8031F99C  38 BF 00 1C */	addi r5, r31, 0x1c
/* 8031F9A0  4B FE FF F5 */	bl J3DGDSetFogRangeAdj__FUcUsP14_GXFogAdjTable
/* 8031F9A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031F9A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031F9AC  7C 08 03 A6 */	mtlr r0
/* 8031F9B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8031F9B4  4E 80 00 20 */	blr 
