lbl_8029A580:
/* 8029A580  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029A584  7C 08 02 A6 */	mflr r0
/* 8029A588  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029A58C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029A590  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029A594  7C 7E 1B 78 */	mr r30, r3
/* 8029A598  7C 9F 23 78 */	mr r31, r4
/* 8029A59C  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8029A5A0  2C 00 00 00 */	cmpwi r0, 0
/* 8029A5A4  40 80 00 0C */	bge lbl_8029A5B0
/* 8029A5A8  38 60 00 00 */	li r3, 0
/* 8029A5AC  48 00 00 7C */	b lbl_8029A628
lbl_8029A5B0:
/* 8029A5B0  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8029A5B4  90 61 00 08 */	stw r3, 8(r1)
/* 8029A5B8  48 0A 4A 89 */	bl OSLockMutex
/* 8029A5BC  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 8029A5C0  2C 00 00 00 */	cmpwi r0, 0
/* 8029A5C4  41 82 00 14 */	beq lbl_8029A5D8
/* 8029A5C8  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A5CC  48 0A 4B 51 */	bl OSUnlockMutex
/* 8029A5D0  38 60 00 00 */	li r3, 0
/* 8029A5D4  48 00 00 54 */	b lbl_8029A628
lbl_8029A5D8:
/* 8029A5D8  28 1F 00 00 */	cmplwi r31, 0
/* 8029A5DC  40 82 00 0C */	bne lbl_8029A5E8
/* 8029A5E0  4B FF FA C1 */	bl getRootHeap__16JASWaveArcLoaderFv
/* 8029A5E4  7C 7F 1B 78 */	mr r31, r3
lbl_8029A5E8:
/* 8029A5E8  38 7E 00 04 */	addi r3, r30, 4
/* 8029A5EC  7F E4 FB 78 */	mr r4, r31
/* 8029A5F0  80 BE 00 54 */	lwz r5, 0x54(r30)
/* 8029A5F4  4B FF 5E 01 */	bl allocTail__7JASHeapFP7JASHeapUl
/* 8029A5F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029A5FC  40 82 00 14 */	bne lbl_8029A610
/* 8029A600  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A604  48 0A 4B 19 */	bl OSUnlockMutex
/* 8029A608  38 60 00 00 */	li r3, 0
/* 8029A60C  48 00 00 1C */	b lbl_8029A628
lbl_8029A610:
/* 8029A610  7F C3 F3 78 */	mr r3, r30
/* 8029A614  4B FF FD F1 */	bl sendLoadCmd__10JASWaveArcFv
/* 8029A618  7C 7F 1B 78 */	mr r31, r3
/* 8029A61C  80 61 00 08 */	lwz r3, 8(r1)
/* 8029A620  48 0A 4A FD */	bl OSUnlockMutex
/* 8029A624  7F E3 FB 78 */	mr r3, r31
lbl_8029A628:
/* 8029A628  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029A62C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029A630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029A634  7C 08 03 A6 */	mtlr r0
/* 8029A638  38 21 00 20 */	addi r1, r1, 0x20
/* 8029A63C  4E 80 00 20 */	blr 
