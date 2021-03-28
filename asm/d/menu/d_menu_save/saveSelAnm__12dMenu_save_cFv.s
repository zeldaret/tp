lbl_801F1100:
/* 801F1100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1104  7C 08 02 A6 */	mflr r0
/* 801F1108  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F110C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1110  7C 7F 1B 78 */	mr r31, r3
/* 801F1114  88 03 01 B0 */	lbz r0, 0x1b0(r3)
/* 801F1118  28 00 00 00 */	cmplwi r0, 0
/* 801F111C  41 82 00 18 */	beq lbl_801F1134
/* 801F1120  48 00 00 29 */	bl selFileWakuAnm__12dMenu_save_cFv
/* 801F1124  7F E3 FB 78 */	mr r3, r31
/* 801F1128  48 00 00 CD */	bl bookIconAnm__12dMenu_save_cFv
/* 801F112C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F1130  48 10 85 61 */	bl animation__9J2DScreenFv
lbl_801F1134:
/* 801F1134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F113C  7C 08 03 A6 */	mtlr r0
/* 801F1140  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1144  4E 80 00 20 */	blr 
