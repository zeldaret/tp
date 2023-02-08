lbl_804DFC98:
/* 804DFC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFC9C  7C 08 02 A6 */	mflr r0
/* 804DFCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFCA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DFCA8  7C 7F 1B 78 */	mr r31, r3
/* 804DFCAC  88 03 09 68 */	lbz r0, 0x968(r3)
/* 804DFCB0  2C 00 00 02 */	cmpwi r0, 2
/* 804DFCB4  41 82 00 34 */	beq lbl_804DFCE8
/* 804DFCB8  40 80 00 14 */	bge lbl_804DFCCC
/* 804DFCBC  2C 00 00 00 */	cmpwi r0, 0
/* 804DFCC0  41 82 00 18 */	beq lbl_804DFCD8
/* 804DFCC4  40 80 00 1C */	bge lbl_804DFCE0
/* 804DFCC8  48 00 00 2C */	b lbl_804DFCF4
lbl_804DFCCC:
/* 804DFCCC  2C 00 00 04 */	cmpwi r0, 4
/* 804DFCD0  40 80 00 24 */	bge lbl_804DFCF4
/* 804DFCD4  48 00 00 1C */	b lbl_804DFCF0
lbl_804DFCD8:
/* 804DFCD8  48 00 00 39 */	bl actionStart__9daDitem_cFv
/* 804DFCDC  48 00 00 18 */	b lbl_804DFCF4
lbl_804DFCE0:
/* 804DFCE0  48 00 03 FD */	bl actionEvent__9daDitem_cFv
/* 804DFCE4  48 00 00 10 */	b lbl_804DFCF4
lbl_804DFCE8:
/* 804DFCE8  48 00 0D 69 */	bl actionWaitLightEnd__9daDitem_cFv
/* 804DFCEC  48 00 00 08 */	b lbl_804DFCF4
lbl_804DFCF0:
/* 804DFCF0  48 00 0E 51 */	bl actionEnd__9daDitem_cFv
lbl_804DFCF4:
/* 804DFCF4  7F E3 FB 78 */	mr r3, r31
/* 804DFCF8  48 00 0F 4D */	bl followInsectEffect__9daDitem_cFv
/* 804DFCFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DFD00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFD04  7C 08 03 A6 */	mtlr r0
/* 804DFD08  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFD0C  4E 80 00 20 */	blr 
