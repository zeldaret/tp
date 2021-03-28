lbl_8065DE70:
/* 8065DE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065DE74  7C 08 02 A6 */	mflr r0
/* 8065DE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065DE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065DE80  93 C1 00 08 */	stw r30, 8(r1)
/* 8065DE84  7C 7E 1B 78 */	mr r30, r3
/* 8065DE88  3C 60 80 66 */	lis r3, lit_3987@ha
/* 8065DE8C  3B E3 2D B0 */	addi r31, r3, lit_3987@l
/* 8065DE90  A0 7E 05 68 */	lhz r3, 0x568(r30)
/* 8065DE94  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8065DE98  41 82 00 0C */	beq lbl_8065DEA4
/* 8065DE9C  54 60 06 F2 */	rlwinm r0, r3, 0, 0x1b, 0x19
/* 8065DEA0  B0 1E 05 68 */	sth r0, 0x568(r30)
lbl_8065DEA4:
/* 8065DEA4  A0 1E 05 68 */	lhz r0, 0x568(r30)
/* 8065DEA8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8065DEAC  41 82 00 18 */	beq lbl_8065DEC4
/* 8065DEB0  38 00 00 00 */	li r0, 0
/* 8065DEB4  98 1E 0C A6 */	stb r0, 0xca6(r30)
/* 8065DEB8  A0 1E 05 68 */	lhz r0, 0x568(r30)
/* 8065DEBC  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 8065DEC0  B0 1E 05 68 */	sth r0, 0x568(r30)
lbl_8065DEC4:
/* 8065DEC4  A0 1E 05 68 */	lhz r0, 0x568(r30)
/* 8065DEC8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8065DECC  41 82 00 5C */	beq lbl_8065DF28
/* 8065DED0  38 00 00 01 */	li r0, 1
/* 8065DED4  98 1E 0C 9F */	stb r0, 0xc9f(r30)
/* 8065DED8  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8065DEDC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065DEE0  7F C3 F3 78 */	mr r3, r30
/* 8065DEE4  38 80 00 14 */	li r4, 0x14
/* 8065DEE8  38 A0 00 02 */	li r5, 2
/* 8065DEEC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065DEF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065DEF4  4B FF A8 3D */	bl setBck__7daCow_cFiUcff
/* 8065DEF8  38 00 00 00 */	li r0, 0
/* 8065DEFC  98 1E 0C A6 */	stb r0, 0xca6(r30)
/* 8065DF00  B0 1E 05 68 */	sth r0, 0x568(r30)
/* 8065DF04  38 7E 08 20 */	addi r3, r30, 0x820
/* 8065DF08  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8065DF0C  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 8065DF10  4B A1 80 48 */	b SetWall__12dBgS_AcchCirFff
/* 8065DF14  38 00 00 1E */	li r0, 0x1e
/* 8065DF18  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 8065DF1C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8065DF20  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 8065DF24  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_8065DF28:
/* 8065DF28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065DF2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8065DF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065DF34  7C 08 03 A6 */	mtlr r0
/* 8065DF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8065DF3C  4E 80 00 20 */	blr 
