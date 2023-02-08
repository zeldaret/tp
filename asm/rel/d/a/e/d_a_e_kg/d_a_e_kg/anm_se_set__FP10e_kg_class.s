lbl_806F9400:
/* 806F9400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F9404  7C 08 02 A6 */	mflr r0
/* 806F9408  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F940C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806F9410  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806F9414  7C 7E 1B 78 */	mr r30, r3
/* 806F9418  3C 60 80 70 */	lis r3, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F941C  3B E3 A3 A4 */	addi r31, r3, lit_3788@l /* 0x806FA3A4@l */
/* 806F9420  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 806F9424  2C 00 00 0F */	cmpwi r0, 0xf
/* 806F9428  40 82 00 90 */	bne lbl_806F94B8
/* 806F942C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806F9430  38 63 00 0C */	addi r3, r3, 0xc
/* 806F9434  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806F9438  4B C2 EF F5 */	bl checkPass__12J3DFrameCtrlFf
/* 806F943C  2C 03 00 00 */	cmpwi r3, 0
/* 806F9440  40 82 00 4C */	bne lbl_806F948C
/* 806F9444  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806F9448  38 63 00 0C */	addi r3, r3, 0xc
/* 806F944C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806F9450  4B C2 EF DD */	bl checkPass__12J3DFrameCtrlFf
/* 806F9454  2C 03 00 00 */	cmpwi r3, 0
/* 806F9458  40 82 00 34 */	bne lbl_806F948C
/* 806F945C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806F9460  38 63 00 0C */	addi r3, r3, 0xc
/* 806F9464  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806F9468  4B C2 EF C5 */	bl checkPass__12J3DFrameCtrlFf
/* 806F946C  2C 03 00 00 */	cmpwi r3, 0
/* 806F9470  40 82 00 1C */	bne lbl_806F948C
/* 806F9474  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806F9478  38 63 00 0C */	addi r3, r3, 0xc
/* 806F947C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 806F9480  4B C2 EF AD */	bl checkPass__12J3DFrameCtrlFf
/* 806F9484  2C 03 00 00 */	cmpwi r3, 0
/* 806F9488  41 82 00 30 */	beq lbl_806F94B8
lbl_806F948C:
/* 806F948C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C1@ha */
/* 806F9490  38 03 00 C1 */	addi r0, r3, 0x00C1 /* 0x000700C1@l */
/* 806F9494  90 01 00 08 */	stw r0, 8(r1)
/* 806F9498  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806F949C  38 81 00 08 */	addi r4, r1, 8
/* 806F94A0  38 A0 00 00 */	li r5, 0
/* 806F94A4  38 C0 FF FF */	li r6, -1
/* 806F94A8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806F94AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F94B0  7D 89 03 A6 */	mtctr r12
/* 806F94B4  4E 80 04 21 */	bctrl 
lbl_806F94B8:
/* 806F94B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806F94BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806F94C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F94C4  7C 08 03 A6 */	mtlr r0
/* 806F94C8  38 21 00 20 */	addi r1, r1, 0x20
/* 806F94CC  4E 80 00 20 */	blr 
