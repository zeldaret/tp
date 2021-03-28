lbl_80255E98:
/* 80255E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255E9C  7C 08 02 A6 */	mflr r0
/* 80255EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255EA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80255EAC  7C 7E 1B 78 */	mr r30, r3
/* 80255EB0  7C 9F 23 79 */	or. r31, r4, r4
/* 80255EB4  41 82 00 5C */	beq lbl_80255F10
/* 80255EB8  88 1F 00 B2 */	lbz r0, 0xb2(r31)
/* 80255EBC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80255EC0  98 03 00 00 */	stb r0, 0(r3)
/* 80255EC4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80255EC8  38 03 00 01 */	addi r0, r3, 1
/* 80255ECC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80255ED0  88 1F 00 B2 */	lbz r0, 0xb2(r31)
/* 80255ED4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80255ED8  98 03 00 00 */	stb r0, 0(r3)
/* 80255EDC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80255EE0  38 03 00 01 */	addi r0, r3, 1
/* 80255EE4  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80255EE8  7F E3 FB 78 */	mr r3, r31
/* 80255EEC  48 0A 1B A1 */	bl getFirstChildPane__7J2DPaneFv
/* 80255EF0  7C 64 1B 78 */	mr r4, r3
/* 80255EF4  7F C3 F3 78 */	mr r3, r30
/* 80255EF8  4B FF FF A1 */	bl childPaneBackupAlpha__17CPaneMgrAlphaMorfFP7J2DPane
/* 80255EFC  7F E3 FB 78 */	mr r3, r31
/* 80255F00  48 0A 1B C5 */	bl getNextChildPane__7J2DPaneFv
/* 80255F04  7C 64 1B 78 */	mr r4, r3
/* 80255F08  7F C3 F3 78 */	mr r3, r30
/* 80255F0C  4B FF FF 8D */	bl childPaneBackupAlpha__17CPaneMgrAlphaMorfFP7J2DPane
lbl_80255F10:
/* 80255F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255F14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80255F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255F1C  7C 08 03 A6 */	mtlr r0
/* 80255F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80255F24  4E 80 00 20 */	blr 
