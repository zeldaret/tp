lbl_801BF4A4:
/* 801BF4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BF4A8  7C 08 02 A6 */	mflr r0
/* 801BF4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF4B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BF4B4  7C 7F 1B 78 */	mr r31, r3
/* 801BF4B8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801BF4BC  48 09 61 4D */	bl hide__13CPaneMgrAlphaFv
/* 801BF4C0  7F E3 FB 78 */	mr r3, r31
/* 801BF4C4  4B FF DD 11 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF4C8  7C 60 07 74 */	extsb r0, r3
/* 801BF4CC  54 00 10 3A */	slwi r0, r0, 2
/* 801BF4D0  7C 7F 02 14 */	add r3, r31, r0
/* 801BF4D4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF4D8  38 00 00 00 */	li r0, 0
/* 801BF4DC  B0 03 00 64 */	sth r0, 0x64(r3)
/* 801BF4E0  7F E3 FB 78 */	mr r3, r31
/* 801BF4E4  4B FF DC F1 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF4E8  7C 60 07 74 */	extsb r0, r3
/* 801BF4EC  54 00 10 3A */	slwi r0, r0, 2
/* 801BF4F0  7C 7F 02 14 */	add r3, r31, r0
/* 801BF4F4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF4F8  38 80 00 00 */	li r4, 0
/* 801BF4FC  B0 83 00 16 */	sth r4, 0x16(r3)
/* 801BF500  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF504  54 00 10 3A */	slwi r0, r0, 2
/* 801BF508  7C 7F 02 14 */	add r3, r31, r0
/* 801BF50C  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF510  B0 83 00 64 */	sth r4, 0x64(r3)
/* 801BF514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BF518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BF51C  7C 08 03 A6 */	mtlr r0
/* 801BF520  38 21 00 10 */	addi r1, r1, 0x10
/* 801BF524  4E 80 00 20 */	blr 
