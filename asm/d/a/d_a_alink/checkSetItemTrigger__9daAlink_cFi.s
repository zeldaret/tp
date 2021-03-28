lbl_800C0164:
/* 800C0164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0168  7C 08 02 A6 */	mflr r0
/* 800C016C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C0170  39 61 00 20 */	addi r11, r1, 0x20
/* 800C0174  48 2A 20 61 */	bl _savegpr_27
/* 800C0178  7C 7B 1B 78 */	mr r27, r3
/* 800C017C  7C 9C 23 78 */	mr r28, r4
/* 800C0180  3B A0 00 00 */	li r29, 0
/* 800C0184  3B E0 00 01 */	li r31, 1
/* 800C0188  48 00 00 58 */	b lbl_800C01E0
lbl_800C018C:
/* 800C018C  57 BE 06 3E */	clrlwi r30, r29, 0x18
/* 800C0190  7F C3 F3 78 */	mr r3, r30
/* 800C0194  4B F6 DD 89 */	bl dComIfGp_getSelectItem__Fi
/* 800C0198  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 800C019C  7F 63 DB 78 */	mr r3, r27
/* 800C01A0  7F 84 E3 78 */	mr r4, r28
/* 800C01A4  4B FF FF 71 */	bl checkGroupItem__9daAlink_cCFii
/* 800C01A8  2C 03 00 00 */	cmpwi r3, 0
/* 800C01AC  41 82 00 30 */	beq lbl_800C01DC
/* 800C01B0  7F 63 DB 78 */	mr r3, r27
/* 800C01B4  7F E0 F0 30 */	slw r0, r31, r30
/* 800C01B8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800C01BC  4B FF 24 11 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800C01C0  2C 03 00 00 */	cmpwi r3, 0
/* 800C01C4  41 82 00 18 */	beq lbl_800C01DC
/* 800C01C8  2C 1C 00 45 */	cmpwi r28, 0x45
/* 800C01CC  41 82 00 08 */	beq lbl_800C01D4
/* 800C01D0  9B BB 2F 9C */	stb r29, 0x2f9c(r27)
lbl_800C01D4:
/* 800C01D4  38 60 00 01 */	li r3, 1
/* 800C01D8  48 00 00 18 */	b lbl_800C01F0
lbl_800C01DC:
/* 800C01DC  3B BD 00 01 */	addi r29, r29, 1
lbl_800C01E0:
/* 800C01E0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800C01E4  28 00 00 02 */	cmplwi r0, 2
/* 800C01E8  41 80 FF A4 */	blt lbl_800C018C
/* 800C01EC  38 60 00 00 */	li r3, 0
lbl_800C01F0:
/* 800C01F0  39 61 00 20 */	addi r11, r1, 0x20
/* 800C01F4  48 2A 20 2D */	bl _restgpr_27
/* 800C01F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C01FC  7C 08 03 A6 */	mtlr r0
/* 800C0200  38 21 00 20 */	addi r1, r1, 0x20
/* 800C0204  4E 80 00 20 */	blr 
