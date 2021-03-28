lbl_800DEE1C:
/* 800DEE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DEE20  7C 08 02 A6 */	mflr r0
/* 800DEE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DEE28  39 61 00 20 */	addi r11, r1, 0x20
/* 800DEE2C  48 28 33 B1 */	bl _savegpr_29
/* 800DEE30  7C 7D 1B 78 */	mr r29, r3
/* 800DEE34  80 03 27 EC */	lwz r0, 0x27ec(r3)
/* 800DEE38  28 00 00 00 */	cmplwi r0, 0
/* 800DEE3C  40 82 00 84 */	bne lbl_800DEEC0
/* 800DEE40  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 800DEE44  3B C0 00 01 */	li r30, 1
/* 800DEE48  7F E3 FB 78 */	mr r3, r31
/* 800DEE4C  4B F9 49 99 */	bl LockonTruth__12dAttention_cFv
/* 800DEE50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DEE54  40 82 00 14 */	bne lbl_800DEE68
/* 800DEE58  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800DEE5C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DEE60  40 82 00 08 */	bne lbl_800DEE68
/* 800DEE64  3B C0 00 00 */	li r30, 0
lbl_800DEE68:
/* 800DEE68  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800DEE6C  40 82 00 54 */	bne lbl_800DEEC0
/* 800DEE70  A8 1D 30 8E */	lha r0, 0x308e(r29)
/* 800DEE74  2C 00 00 00 */	cmpwi r0, 0
/* 800DEE78  40 82 00 48 */	bne lbl_800DEEC0
/* 800DEE7C  7F A3 EB 78 */	mr r3, r29
/* 800DEE80  4B FF FB 39 */	bl checkBowReadyAnime__9daAlink_cCFv
/* 800DEE84  2C 03 00 00 */	cmpwi r3, 0
/* 800DEE88  40 82 00 38 */	bne lbl_800DEEC0
/* 800DEE8C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800DEE90  28 00 00 0C */	cmplwi r0, 0xc
/* 800DEE94  40 82 00 14 */	bne lbl_800DEEA8
/* 800DEE98  38 7D 20 48 */	addi r3, r29, 0x2048
/* 800DEE9C  48 07 F6 31 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DEEA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DEEA4  41 82 00 1C */	beq lbl_800DEEC0
lbl_800DEEA8:
/* 800DEEA8  7F A3 EB 78 */	mr r3, r29
/* 800DEEAC  38 80 00 02 */	li r4, 2
/* 800DEEB0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DEEB4  4B FC E8 71 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800DEEB8  38 60 00 01 */	li r3, 1
/* 800DEEBC  48 00 00 08 */	b lbl_800DEEC4
lbl_800DEEC0:
/* 800DEEC0  38 60 00 00 */	li r3, 0
lbl_800DEEC4:
/* 800DEEC4  39 61 00 20 */	addi r11, r1, 0x20
/* 800DEEC8  48 28 33 61 */	bl _restgpr_29
/* 800DEECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DEED0  7C 08 03 A6 */	mtlr r0
/* 800DEED4  38 21 00 20 */	addi r1, r1, 0x20
/* 800DEED8  4E 80 00 20 */	blr 
