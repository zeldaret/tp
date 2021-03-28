lbl_8021DCE0:
/* 8021DCE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021DCE4  7C 08 02 A6 */	mflr r0
/* 8021DCE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021DCEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8021DCF0  48 14 44 ED */	bl _savegpr_29
/* 8021DCF4  7C 7D 1B 78 */	mr r29, r3
/* 8021DCF8  3B C0 00 00 */	li r30, 0
/* 8021DCFC  3B E0 00 00 */	li r31, 0
lbl_8021DD00:
/* 8021DD00  38 9F 00 9A */	addi r4, r31, 0x9a
/* 8021DD04  7C 7D 22 2E */	lhzx r3, r29, r4
/* 8021DD08  28 03 00 00 */	cmplwi r3, 0
/* 8021DD0C  41 82 00 28 */	beq lbl_8021DD34
/* 8021DD10  38 03 FF FF */	addi r0, r3, -1
/* 8021DD14  7C 1D 23 2E */	sthx r0, r29, r4
/* 8021DD18  7C 1D 22 2E */	lhzx r0, r29, r4
/* 8021DD1C  28 00 00 00 */	cmplwi r0, 0
/* 8021DD20  40 82 00 14 */	bne lbl_8021DD34
/* 8021DD24  7F A3 EB 78 */	mr r3, r29
/* 8021DD28  38 1E 00 0B */	addi r0, r30, 0xb
/* 8021DD2C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021DD30  48 00 00 2D */	bl changeWater__13dMeter2Info_cFUc
lbl_8021DD34:
/* 8021DD34  3B DE 00 01 */	addi r30, r30, 1
/* 8021DD38  2C 1E 00 04 */	cmpwi r30, 4
/* 8021DD3C  3B FF 00 02 */	addi r31, r31, 2
/* 8021DD40  41 80 FF C0 */	blt lbl_8021DD00
/* 8021DD44  39 61 00 20 */	addi r11, r1, 0x20
/* 8021DD48  48 14 44 E1 */	bl _restgpr_29
/* 8021DD4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021DD50  7C 08 03 A6 */	mtlr r0
/* 8021DD54  38 21 00 20 */	addi r1, r1, 0x20
/* 8021DD58  4E 80 00 20 */	blr 
