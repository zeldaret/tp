lbl_80C8B4D8:
/* 80C8B4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B4DC  7C 08 02 A6 */	mflr r0
/* 80C8B4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B4E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B4E8  7C 7F 1B 78 */	mr r31, r3
/* 80C8B4EC  88 63 05 C8 */	lbz r3, 0x5c8(r3)
/* 80C8B4F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C8B4F4  7C 04 07 74 */	extsb r4, r0
/* 80C8B4F8  4B 3C 62 F4 */	b dPath_GetRoomPath__Fii
/* 80C8B4FC  80 63 00 08 */	lwz r3, 8(r3)
/* 80C8B500  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C8B504  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C8B508  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C8B50C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C8B510  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C8B514  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C8B518  38 00 00 01 */	li r0, 1
/* 80C8B51C  98 1F 05 C9 */	stb r0, 0x5c9(r31)
/* 80C8B520  38 00 00 00 */	li r0, 0
/* 80C8B524  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 80C8B528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B530  7C 08 03 A6 */	mtlr r0
/* 80C8B534  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B538  4E 80 00 20 */	blr 
