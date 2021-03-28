lbl_8029A4C0:
/* 8029A4C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029A4C4  7C 08 02 A6 */	mflr r0
/* 8029A4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029A4CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029A4D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029A4D4  7C 7E 1B 78 */	mr r30, r3
/* 8029A4D8  7C 9F 23 78 */	mr r31, r4
/* 8029A4DC  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8029A4E0  2C 00 00 00 */	cmpwi r0, 0
/* 8029A4E4  40 80 00 0C */	bge lbl_8029A4F0
/* 8029A4E8  38 60 00 00 */	li r3, 0
/* 8029A4EC  48 00 00 7C */	b lbl_8029A568
lbl_8029A4F0:
/* 8029A4F0  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8029A4F4  90 61 00 08 */	stw r3, 8(r1)
/* 8029A4F8  48 0A 4B 49 */	bl OSLockMutex
/* 8029A4FC  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 8029A500  2C 00 00 00 */	cmpwi r0, 0
/* 8029A504  41 82 00 14 */	beq lbl_8029A518
/* 8029A508  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A50C  48 0A 4C 11 */	bl OSUnlockMutex
/* 8029A510  38 60 00 00 */	li r3, 0
/* 8029A514  48 00 00 54 */	b lbl_8029A568
lbl_8029A518:
/* 8029A518  28 1F 00 00 */	cmplwi r31, 0
/* 8029A51C  40 82 00 0C */	bne lbl_8029A528
/* 8029A520  4B FF FB 81 */	bl getRootHeap__16JASWaveArcLoaderFv
/* 8029A524  7C 7F 1B 78 */	mr r31, r3
lbl_8029A528:
/* 8029A528  38 7E 00 04 */	addi r3, r30, 4
/* 8029A52C  7F E4 FB 78 */	mr r4, r31
/* 8029A530  80 BE 00 54 */	lwz r5, 0x54(r30)
/* 8029A534  4B FF 5C E9 */	bl alloc__7JASHeapFP7JASHeapUl
/* 8029A538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029A53C  40 82 00 14 */	bne lbl_8029A550
/* 8029A540  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A544  48 0A 4B D9 */	bl OSUnlockMutex
/* 8029A548  38 60 00 00 */	li r3, 0
/* 8029A54C  48 00 00 1C */	b lbl_8029A568
lbl_8029A550:
/* 8029A550  7F C3 F3 78 */	mr r3, r30
/* 8029A554  4B FF FE B1 */	bl sendLoadCmd__10JASWaveArcFv
/* 8029A558  7C 7F 1B 78 */	mr r31, r3
/* 8029A55C  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A560  48 0A 4B BD */	bl OSUnlockMutex
/* 8029A564  7F E3 FB 78 */	mr r3, r31
lbl_8029A568:
/* 8029A568  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029A56C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029A570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029A574  7C 08 03 A6 */	mtlr r0
/* 8029A578  38 21 00 20 */	addi r1, r1, 0x20
/* 8029A57C  4E 80 00 20 */	blr 
