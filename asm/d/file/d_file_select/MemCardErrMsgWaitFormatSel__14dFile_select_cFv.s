lbl_8018F128:
/* 8018F128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F12C  7C 08 02 A6 */	mflr r0
/* 8018F130  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F138  7C 7F 1B 78 */	mr r31, r3
/* 8018F13C  48 00 08 F1 */	bl errYesNoSelect__14dFile_select_cFv
/* 8018F140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018F144  41 82 00 24 */	beq lbl_8018F168
/* 8018F148  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 8018F14C  28 00 00 00 */	cmplwi r0, 0
/* 8018F150  41 82 00 10 */	beq lbl_8018F160
/* 8018F154  7F E3 FB 78 */	mr r3, r31
/* 8018F158  4B FF FE 05 */	bl formatYesSelDispInitSet__14dFile_select_cFv
/* 8018F15C  48 00 00 0C */	b lbl_8018F168
lbl_8018F160:
/* 8018F160  7F E3 FB 78 */	mr r3, r31
/* 8018F164  4B FF FE 49 */	bl formatNoSelDispInitSet__14dFile_select_cFv
lbl_8018F168:
/* 8018F168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F170  7C 08 03 A6 */	mtlr r0
/* 8018F174  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F178  4E 80 00 20 */	blr 
