lbl_8030310C:
/* 8030310C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80303110  7C 08 02 A6 */	mflr r0
/* 80303114  90 01 00 24 */	stw r0, 0x24(r1)
/* 80303118  39 61 00 20 */	addi r11, r1, 0x20
/* 8030311C  48 05 F0 C1 */	bl _savegpr_29
/* 80303120  7C 7D 1B 78 */	mr r29, r3
/* 80303124  7C 9E 23 78 */	mr r30, r4
/* 80303128  3B E0 00 00 */	li r31, 0
/* 8030312C  48 00 00 30 */	b lbl_8030315C
lbl_80303130:
/* 80303130  7F A3 EB 78 */	mr r3, r29
/* 80303134  7F E4 FB 78 */	mr r4, r31
/* 80303138  48 00 00 E5 */	bl isNeedSetAnm__11J2DWindowExFUc
/* 8030313C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80303140  41 82 00 18 */	beq lbl_80303158
/* 80303144  57 E3 15 BA */	rlwinm r3, r31, 2, 0x16, 0x1d
/* 80303148  38 03 01 48 */	addi r0, r3, 0x148
/* 8030314C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80303150  7F C4 F3 78 */	mr r4, r30
/* 80303154  4B FE 78 D9 */	bl setAnimation__11J2DMaterialFP16J2DAnmTexPattern
lbl_80303158:
/* 80303158  3B FF 00 01 */	addi r31, r31, 1
lbl_8030315C:
/* 8030315C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80303160  28 00 00 04 */	cmplwi r0, 4
/* 80303164  41 80 FF CC */	blt lbl_80303130
/* 80303168  80 7D 01 60 */	lwz r3, 0x160(r29)
/* 8030316C  28 03 00 00 */	cmplwi r3, 0
/* 80303170  41 82 00 0C */	beq lbl_8030317C
/* 80303174  7F C4 F3 78 */	mr r4, r30
/* 80303178  4B FE 78 B5 */	bl setAnimation__11J2DMaterialFP16J2DAnmTexPattern
lbl_8030317C:
/* 8030317C  39 61 00 20 */	addi r11, r1, 0x20
/* 80303180  48 05 F0 A9 */	bl _restgpr_29
/* 80303184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80303188  7C 08 03 A6 */	mtlr r0
/* 8030318C  38 21 00 20 */	addi r1, r1, 0x20
/* 80303190  4E 80 00 20 */	blr 
