lbl_8024FEB4:
/* 8024FEB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024FEB8  7C 08 02 A6 */	mflr r0
/* 8024FEBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024FEC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8024FEC4  48 11 23 19 */	bl _savegpr_29
/* 8024FEC8  7C 7D 1B 78 */	mr r29, r3
/* 8024FECC  88 83 02 B0 */	lbz r4, 0x2b0(r3)
/* 8024FED0  48 00 11 79 */	bl getMenuPosIdx__7dName_cFUc
/* 8024FED4  7C 7E 1B 78 */	mr r30, r3
/* 8024FED8  7F A3 EB 78 */	mr r3, r29
/* 8024FEDC  88 9D 02 A9 */	lbz r4, 0x2a9(r29)
/* 8024FEE0  48 00 11 69 */	bl getMenuPosIdx__7dName_cFUc
/* 8024FEE4  7C 7F 1B 78 */	mr r31, r3
/* 8024FEE8  38 60 00 01 */	li r3, 1
/* 8024FEEC  7C 1E F8 00 */	cmpw r30, r31
/* 8024FEF0  41 82 00 2C */	beq lbl_8024FF1C
/* 8024FEF4  57 C0 10 3A */	slwi r0, r30, 2
/* 8024FEF8  7C 7D 02 14 */	add r3, r29, r0
/* 8024FEFC  80 63 02 84 */	lwz r3, 0x284(r3)
/* 8024FF00  88 9D 02 A4 */	lbz r4, 0x2a4(r29)
/* 8024FF04  3C A0 80 43 */	lis r5, g_nmHIO@ha
/* 8024FF08  38 A5 07 34 */	addi r5, r5, g_nmHIO@l
/* 8024FF0C  C0 25 00 08 */	lfs f1, 8(r5)
/* 8024FF10  C0 42 B3 C0 */	lfs f2, lit_3820(r2)
/* 8024FF14  38 A0 00 00 */	li r5, 0
/* 8024FF18  48 00 48 B5 */	bl scaleAnime__8CPaneMgrFsffUc
lbl_8024FF1C:
/* 8024FF1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024FF20  28 00 00 01 */	cmplwi r0, 1
/* 8024FF24  40 82 00 64 */	bne lbl_8024FF88
/* 8024FF28  7C 1E F8 00 */	cmpw r30, r31
/* 8024FF2C  41 82 00 44 */	beq lbl_8024FF70
/* 8024FF30  38 00 00 96 */	li r0, 0x96
/* 8024FF34  98 01 00 08 */	stb r0, 8(r1)
/* 8024FF38  98 01 00 09 */	stb r0, 9(r1)
/* 8024FF3C  98 01 00 0A */	stb r0, 0xa(r1)
/* 8024FF40  38 00 00 FF */	li r0, 0xff
/* 8024FF44  98 01 00 0B */	stb r0, 0xb(r1)
/* 8024FF48  80 01 00 08 */	lwz r0, 8(r1)
/* 8024FF4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024FF50  57 C0 10 3A */	slwi r0, r30, 2
/* 8024FF54  7C 7D 02 14 */	add r3, r29, r0
/* 8024FF58  80 63 02 94 */	lwz r3, 0x294(r3)
/* 8024FF5C  38 81 00 0C */	addi r4, r1, 0xc
/* 8024FF60  81 83 00 00 */	lwz r12, 0(r3)
/* 8024FF64  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8024FF68  7D 89 03 A6 */	mtctr r12
/* 8024FF6C  4E 80 04 21 */	bctrl 
lbl_8024FF70:
/* 8024FF70  7F A3 EB 78 */	mr r3, r29
/* 8024FF74  4B FF FA 21 */	bl selectCursorMove__7dName_cFv
/* 8024FF78  38 00 00 00 */	li r0, 0
/* 8024FF7C  98 1D 02 AB */	stb r0, 0x2ab(r29)
/* 8024FF80  88 1D 02 AB */	lbz r0, 0x2ab(r29)
/* 8024FF84  98 1D 02 AD */	stb r0, 0x2ad(r29)
lbl_8024FF88:
/* 8024FF88  39 61 00 20 */	addi r11, r1, 0x20
/* 8024FF8C  48 11 22 9D */	bl _restgpr_29
/* 8024FF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024FF94  7C 08 03 A6 */	mtlr r0
/* 8024FF98  38 21 00 20 */	addi r1, r1, 0x20
/* 8024FF9C  4E 80 00 20 */	blr 
