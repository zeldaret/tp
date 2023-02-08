lbl_801CAD54:
/* 801CAD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CAD58  7C 08 02 A6 */	mflr r0
/* 801CAD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CAD60  A8 83 02 14 */	lha r4, 0x214(r3)
/* 801CAD64  38 04 00 01 */	addi r0, r4, 1
/* 801CAD68  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801CAD6C  A8 03 02 14 */	lha r0, 0x214(r3)
/* 801CAD70  2C 00 00 00 */	cmpwi r0, 0
/* 801CAD74  40 81 00 18 */	ble lbl_801CAD8C
/* 801CAD78  38 00 00 01 */	li r0, 1
/* 801CAD7C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CAD80  98 04 12 3A */	stb r0, 0x123a(r4)
/* 801CAD84  38 80 00 0D */	li r4, 0xd
/* 801CAD88  48 00 09 49 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CAD8C:
/* 801CAD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CAD90  7C 08 03 A6 */	mtlr r0
/* 801CAD94  38 21 00 10 */	addi r1, r1, 0x10
/* 801CAD98  4E 80 00 20 */	blr 
