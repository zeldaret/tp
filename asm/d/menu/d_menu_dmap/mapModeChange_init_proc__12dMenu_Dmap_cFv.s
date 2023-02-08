lbl_801BF688:
/* 801BF688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BF68C  7C 08 02 A6 */	mflr r0
/* 801BF690  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BF698  7C 7F 1B 78 */	mr r31, r3
/* 801BF69C  80 63 00 94 */	lwz r3, 0x94(r3)
/* 801BF6A0  48 09 5F 69 */	bl hide__13CPaneMgrAlphaFv
/* 801BF6A4  7F E3 FB 78 */	mr r3, r31
/* 801BF6A8  4B FF DB 2D */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF6AC  7C 60 07 74 */	extsb r0, r3
/* 801BF6B0  54 00 10 3A */	slwi r0, r0, 2
/* 801BF6B4  7C 7F 02 14 */	add r3, r31, r0
/* 801BF6B8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF6BC  38 00 00 00 */	li r0, 0
/* 801BF6C0  B0 03 00 64 */	sth r0, 0x64(r3)
/* 801BF6C4  7F E3 FB 78 */	mr r3, r31
/* 801BF6C8  4B FF DB 0D */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF6CC  7C 60 07 74 */	extsb r0, r3
/* 801BF6D0  54 00 10 3A */	slwi r0, r0, 2
/* 801BF6D4  7C 7F 02 14 */	add r3, r31, r0
/* 801BF6D8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF6DC  38 80 00 00 */	li r4, 0
/* 801BF6E0  B0 83 00 16 */	sth r4, 0x16(r3)
/* 801BF6E4  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF6E8  54 00 10 3A */	slwi r0, r0, 2
/* 801BF6EC  7C 7F 02 14 */	add r3, r31, r0
/* 801BF6F0  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF6F4  B0 83 00 64 */	sth r4, 0x64(r3)
/* 801BF6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BF6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BF700  7C 08 03 A6 */	mtlr r0
/* 801BF704  38 21 00 10 */	addi r1, r1, 0x10
/* 801BF708  4E 80 00 20 */	blr 
