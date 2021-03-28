lbl_80303084:
/* 80303084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80303088  7C 08 02 A6 */	mflr r0
/* 8030308C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80303090  39 61 00 20 */	addi r11, r1, 0x20
/* 80303094  48 05 F1 49 */	bl _savegpr_29
/* 80303098  7C 7D 1B 78 */	mr r29, r3
/* 8030309C  7C 9E 23 78 */	mr r30, r4
/* 803030A0  3B E0 00 00 */	li r31, 0
/* 803030A4  48 00 00 30 */	b lbl_803030D4
lbl_803030A8:
/* 803030A8  7F A3 EB 78 */	mr r3, r29
/* 803030AC  7F E4 FB 78 */	mr r4, r31
/* 803030B0  48 00 01 6D */	bl isNeedSetAnm__11J2DWindowExFUc
/* 803030B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803030B8  41 82 00 18 */	beq lbl_803030D0
/* 803030BC  57 E3 15 BA */	rlwinm r3, r31, 2, 0x16, 0x1d
/* 803030C0  38 03 01 48 */	addi r0, r3, 0x148
/* 803030C4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 803030C8  7F C4 F3 78 */	mr r4, r30
/* 803030CC  4B FE 78 81 */	bl setAnimation__11J2DMaterialFP19J2DAnmTextureSRTKey
lbl_803030D0:
/* 803030D0  3B FF 00 01 */	addi r31, r31, 1
lbl_803030D4:
/* 803030D4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803030D8  28 00 00 04 */	cmplwi r0, 4
/* 803030DC  41 80 FF CC */	blt lbl_803030A8
/* 803030E0  80 7D 01 60 */	lwz r3, 0x160(r29)
/* 803030E4  28 03 00 00 */	cmplwi r3, 0
/* 803030E8  41 82 00 0C */	beq lbl_803030F4
/* 803030EC  7F C4 F3 78 */	mr r4, r30
/* 803030F0  4B FE 78 5D */	bl setAnimation__11J2DMaterialFP19J2DAnmTextureSRTKey
lbl_803030F4:
/* 803030F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803030F8  48 05 F1 31 */	bl _restgpr_29
/* 803030FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80303100  7C 08 03 A6 */	mtlr r0
/* 80303104  38 21 00 20 */	addi r1, r1, 0x20
/* 80303108  4E 80 00 20 */	blr 
