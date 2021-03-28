lbl_8023C4F4:
/* 8023C4F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C4F8  7C 08 02 A6 */	mflr r0
/* 8023C4FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C500  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8023C504  39 61 00 18 */	addi r11, r1, 0x18
/* 8023C508  48 12 5C D1 */	bl _savegpr_28
/* 8023C50C  7C 7C 1B 78 */	mr r28, r3
/* 8023C510  FF E0 08 90 */	fmr f31, f1
/* 8023C514  3B A0 00 00 */	li r29, 0
/* 8023C518  3B E0 00 00 */	li r31, 0
lbl_8023C51C:
/* 8023C51C  7F DC FA 14 */	add r30, r28, r31
/* 8023C520  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C524  28 03 00 00 */	cmplwi r3, 0
/* 8023C528  41 82 00 0C */	beq lbl_8023C534
/* 8023C52C  FC 20 F8 90 */	fmr f1, f31
/* 8023C530  48 01 92 A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8023C534:
/* 8023C534  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8023C538  28 03 00 00 */	cmplwi r3, 0
/* 8023C53C  41 82 00 0C */	beq lbl_8023C548
/* 8023C540  FC 20 F8 90 */	fmr f1, f31
/* 8023C544  48 01 92 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8023C548:
/* 8023C548  3B BD 00 01 */	addi r29, r29, 1
/* 8023C54C  2C 1D 00 07 */	cmpwi r29, 7
/* 8023C550  3B FF 00 04 */	addi r31, r31, 4
/* 8023C554  41 80 FF C8 */	blt lbl_8023C51C
/* 8023C558  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8023C55C  39 61 00 18 */	addi r11, r1, 0x18
/* 8023C560  48 12 5C C5 */	bl _restgpr_28
/* 8023C564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C568  7C 08 03 A6 */	mtlr r0
/* 8023C56C  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C570  4E 80 00 20 */	blr 
