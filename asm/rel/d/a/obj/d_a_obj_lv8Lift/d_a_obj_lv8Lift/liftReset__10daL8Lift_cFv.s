lbl_80C89A78:
/* 80C89A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89A7C  7C 08 02 A6 */	mflr r0
/* 80C89A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C89A88  7C 7F 1B 78 */	mr r31, r3
/* 80C89A8C  88 63 05 C6 */	lbz r3, 0x5c6(r3)
/* 80C89A90  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C89A94  7C 04 07 74 */	extsb r4, r0
/* 80C89A98  4B 3C 7D 55 */	bl dPath_GetRoomPath__Fii
/* 80C89A9C  80 63 00 08 */	lwz r3, 8(r3)
/* 80C89AA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C89AA4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C89AA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C89AAC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C89AB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C89AB4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C89AB8  38 00 00 01 */	li r0, 1
/* 80C89ABC  98 1F 05 C7 */	stb r0, 0x5c7(r31)
/* 80C89AC0  38 00 00 00 */	li r0, 0
/* 80C89AC4  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 80C89AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C89ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89AD0  7C 08 03 A6 */	mtlr r0
/* 80C89AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89AD8  4E 80 00 20 */	blr 
