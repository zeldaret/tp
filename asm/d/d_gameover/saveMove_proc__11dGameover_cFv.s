lbl_8019B5A8:
/* 8019B5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019B5AC  7C 08 02 A6 */	mflr r0
/* 8019B5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019B5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019B5B8  7C 7F 1B 78 */	mr r31, r3
/* 8019B5BC  80 63 00 FC */	lwz r3, 0xfc(r3)
/* 8019B5C0  48 05 5A 89 */	bl _move__12dMenu_save_cFv
/* 8019B5C4  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8019B5C8  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 8019B5CC  28 00 00 03 */	cmplwi r0, 3
/* 8019B5D0  40 82 00 0C */	bne lbl_8019B5DC
/* 8019B5D4  38 00 00 07 */	li r0, 7
/* 8019B5D8  98 1F 01 18 */	stb r0, 0x118(r31)
lbl_8019B5DC:
/* 8019B5DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019B5E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019B5E4  7C 08 03 A6 */	mtlr r0
/* 8019B5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019B5EC  4E 80 00 20 */	blr 
