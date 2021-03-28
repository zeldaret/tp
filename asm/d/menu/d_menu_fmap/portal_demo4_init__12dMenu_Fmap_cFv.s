lbl_801C9EB8:
/* 801C9EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C9EBC  7C 08 02 A6 */	mflr r0
/* 801C9EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C9EC8  7C 7F 1B 78 */	mr r31, r3
/* 801C9ECC  38 00 00 FF */	li r0, 0xff
/* 801C9ED0  98 03 03 08 */	stb r0, 0x308(r3)
/* 801C9ED4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801C9ED8  88 04 12 27 */	lbz r0, 0x1227(r4)
/* 801C9EDC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C9EE0  7C 9F 02 14 */	add r4, r31, r0
/* 801C9EE4  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C9EE8  48 00 29 75 */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C9EEC  88 1F 03 08 */	lbz r0, 0x308(r31)
/* 801C9EF0  28 00 00 FF */	cmplwi r0, 0xff
/* 801C9EF4  40 82 00 0C */	bne lbl_801C9F00
/* 801C9EF8  7F E3 FB 78 */	mr r3, r31
/* 801C9EFC  48 00 29 B1 */	bl setAreaNameZero__12dMenu_Fmap_cFv
lbl_801C9F00:
/* 801C9F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C9F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C9F08  7C 08 03 A6 */	mtlr r0
/* 801C9F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9F10  4E 80 00 20 */	blr 
