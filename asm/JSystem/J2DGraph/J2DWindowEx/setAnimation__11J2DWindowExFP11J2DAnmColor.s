lbl_80302FFC:
/* 80302FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80303000  7C 08 02 A6 */	mflr r0
/* 80303004  90 01 00 24 */	stw r0, 0x24(r1)
/* 80303008  39 61 00 20 */	addi r11, r1, 0x20
/* 8030300C  48 05 F1 D1 */	bl _savegpr_29
/* 80303010  7C 7D 1B 78 */	mr r29, r3
/* 80303014  7C 9E 23 78 */	mr r30, r4
/* 80303018  3B E0 00 00 */	li r31, 0
/* 8030301C  48 00 00 30 */	b lbl_8030304C
lbl_80303020:
/* 80303020  7F A3 EB 78 */	mr r3, r29
/* 80303024  7F E4 FB 78 */	mr r4, r31
/* 80303028  48 00 01 F5 */	bl isNeedSetAnm__11J2DWindowExFUc
/* 8030302C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80303030  41 82 00 18 */	beq lbl_80303048
/* 80303034  57 E3 15 BA */	rlwinm r3, r31, 2, 0x16, 0x1d
/* 80303038  38 03 01 48 */	addi r0, r3, 0x148
/* 8030303C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80303040  7F C4 F3 78 */	mr r4, r30
/* 80303044  4B FE 78 59 */	bl setAnimation__11J2DMaterialFP11J2DAnmColor
lbl_80303048:
/* 80303048  3B FF 00 01 */	addi r31, r31, 1
lbl_8030304C:
/* 8030304C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80303050  28 00 00 04 */	cmplwi r0, 4
/* 80303054  41 80 FF CC */	blt lbl_80303020
/* 80303058  80 7D 01 60 */	lwz r3, 0x160(r29)
/* 8030305C  28 03 00 00 */	cmplwi r3, 0
/* 80303060  41 82 00 0C */	beq lbl_8030306C
/* 80303064  7F C4 F3 78 */	mr r4, r30
/* 80303068  4B FE 78 35 */	bl setAnimation__11J2DMaterialFP11J2DAnmColor
lbl_8030306C:
/* 8030306C  39 61 00 20 */	addi r11, r1, 0x20
/* 80303070  48 05 F1 B9 */	bl _restgpr_29
/* 80303074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80303078  7C 08 03 A6 */	mtlr r0
/* 8030307C  38 21 00 20 */	addi r1, r1, 0x20
/* 80303080  4E 80 00 20 */	blr 
