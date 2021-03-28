lbl_80255DD0:
/* 80255DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255DD4  7C 08 02 A6 */	mflr r0
/* 80255DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255DE0  7C 7F 1B 78 */	mr r31, r3
/* 80255DE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80255DE8  28 00 00 00 */	cmplwi r0, 0
/* 80255DEC  41 82 00 28 */	beq lbl_80255E14
/* 80255DF0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80255DF4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80255DF8  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80255DFC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80255E00  80 7F 00 04 */	lwz r3, 4(r31)
/* 80255E04  48 0A 1C 89 */	bl getFirstChildPane__7J2DPaneFv
/* 80255E08  7C 64 1B 78 */	mr r4, r3
/* 80255E0C  7F E3 FB 78 */	mr r3, r31
/* 80255E10  48 00 00 89 */	bl childPaneBackupAlpha__17CPaneMgrAlphaMorfFP7J2DPane
lbl_80255E14:
/* 80255E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255E1C  7C 08 03 A6 */	mtlr r0
/* 80255E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80255E24  4E 80 00 20 */	blr 
