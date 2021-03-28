lbl_801C9D60:
/* 801C9D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C9D64  7C 08 02 A6 */	mflr r0
/* 801C9D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C9D70  7C 7F 1B 78 */	mr r31, r3
/* 801C9D74  A0 83 02 16 */	lhz r4, 0x216(r3)
/* 801C9D78  48 00 2A E5 */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C9D7C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9D80  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801C9D84  7F E3 FB 78 */	mr r3, r31
/* 801C9D88  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C9D8C  7C 9F 02 14 */	add r4, r31, r0
/* 801C9D90  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C9D94  48 00 2A ED */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801C9D98  38 00 00 00 */	li r0, 0
/* 801C9D9C  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C9DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C9DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C9DA8  7C 08 03 A6 */	mtlr r0
/* 801C9DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9DB0  4E 80 00 20 */	blr 
