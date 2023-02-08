lbl_80CCAC48:
/* 80CCAC48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCAC4C  7C 08 02 A6 */	mflr r0
/* 80CCAC50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCAC54  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCAC58  4B 69 75 7D */	bl _savegpr_27
/* 80CCAC5C  7C BB 2B 78 */	mr r27, r5
/* 80CCAC60  7C DC 33 78 */	mr r28, r6
/* 80CCAC64  80 63 06 00 */	lwz r3, 0x600(r3)
/* 80CCAC68  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CCAC6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CCAC70  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80CCAC74  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80CCAC78  7F C3 02 15 */	add. r30, r3, r0
/* 80CCAC7C  41 82 00 3C */	beq lbl_80CCACB8
/* 80CCAC80  3B A0 00 00 */	li r29, 0
/* 80CCAC84  3B E0 00 00 */	li r31, 0
/* 80CCAC88  48 00 00 28 */	b lbl_80CCACB0
lbl_80CCAC8C:
/* 80CCAC8C  7C BC F8 2E */	lwzx r5, r28, r31
/* 80CCAC90  28 05 00 00 */	cmplwi r5, 0
/* 80CCAC94  41 82 00 14 */	beq lbl_80CCACA8
/* 80CCAC98  7F C3 F3 78 */	mr r3, r30
/* 80CCAC9C  38 85 00 68 */	addi r4, r5, 0x68
/* 80CCACA0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80CCACA4  4B 5B 5B 3D */	bl func_802807E0
lbl_80CCACA8:
/* 80CCACA8  3B BD 00 01 */	addi r29, r29, 1
/* 80CCACAC  3B FF 00 04 */	addi r31, r31, 4
lbl_80CCACB0:
/* 80CCACB0  7C 1D D8 00 */	cmpw r29, r27
/* 80CCACB4  41 80 FF D8 */	blt lbl_80CCAC8C
lbl_80CCACB8:
/* 80CCACB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCACBC  4B 69 75 65 */	bl _restgpr_27
/* 80CCACC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCACC4  7C 08 03 A6 */	mtlr r0
/* 80CCACC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCACCC  4E 80 00 20 */	blr 
