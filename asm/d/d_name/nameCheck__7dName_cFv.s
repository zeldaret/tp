lbl_8024EC10:
/* 8024EC10  38 A0 00 07 */	li r5, 7
/* 8024EC14  38 80 00 38 */	li r4, 0x38
/* 8024EC18  38 00 00 08 */	li r0, 8
/* 8024EC1C  7C 09 03 A6 */	mtctr r0
lbl_8024EC20:
/* 8024EC20  38 04 02 D0 */	addi r0, r4, 0x2d0
/* 8024EC24  7C 03 00 2E */	lwzx r0, r3, r0
/* 8024EC28  2C 00 00 20 */	cmpwi r0, 0x20
/* 8024EC2C  41 82 00 0C */	beq lbl_8024EC38
/* 8024EC30  38 65 00 01 */	addi r3, r5, 1
/* 8024EC34  4E 80 00 20 */	blr 
lbl_8024EC38:
/* 8024EC38  38 A5 FF FF */	addi r5, r5, -1
/* 8024EC3C  38 84 FF F8 */	addi r4, r4, -8
/* 8024EC40  42 00 FF E0 */	bdnz lbl_8024EC20
/* 8024EC44  38 60 00 00 */	li r3, 0
/* 8024EC48  4E 80 00 20 */	blr 
