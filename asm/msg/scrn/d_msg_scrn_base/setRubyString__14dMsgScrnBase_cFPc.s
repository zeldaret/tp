lbl_8023C3EC:
/* 8023C3EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C3F0  7C 08 02 A6 */	mflr r0
/* 8023C3F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C3F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C3FC  48 12 5D DD */	bl _savegpr_28
/* 8023C400  7C 7C 1B 78 */	mr r28, r3
/* 8023C404  7C 9D 23 78 */	mr r29, r4
/* 8023C408  3B C0 00 00 */	li r30, 0
/* 8023C40C  3B E0 00 00 */	li r31, 0
lbl_8023C410:
/* 8023C410  38 1F 00 28 */	addi r0, r31, 0x28
/* 8023C414  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8023C418  28 03 00 00 */	cmplwi r3, 0
/* 8023C41C  41 82 00 14 */	beq lbl_8023C430
/* 8023C420  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C424  48 0C 42 35 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023C428  7F A4 EB 78 */	mr r4, r29
/* 8023C42C  48 12 C7 01 */	bl strcpy
lbl_8023C430:
/* 8023C430  3B DE 00 01 */	addi r30, r30, 1
/* 8023C434  2C 1E 00 03 */	cmpwi r30, 3
/* 8023C438  3B FF 00 04 */	addi r31, r31, 4
/* 8023C43C  41 80 FF D4 */	blt lbl_8023C410
/* 8023C440  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C444  48 12 5D E1 */	bl _restgpr_28
/* 8023C448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C44C  7C 08 03 A6 */	mtlr r0
/* 8023C450  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C454  4E 80 00 20 */	blr 
