lbl_807F64E0:
/* 807F64E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807F64E4  7C 08 02 A6 */	mflr r0
/* 807F64E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807F64EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807F64F0  7C 7F 1B 78 */	mr r31, r3
/* 807F64F4  3C 60 80 7F */	lis r3, lit_3788@ha
/* 807F64F8  38 83 7A 00 */	addi r4, r3, lit_3788@l
/* 807F64FC  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 807F6500  2C 00 00 06 */	cmpwi r0, 6
/* 807F6504  40 82 00 4C */	bne lbl_807F6550
/* 807F6508  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F650C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F6510  C0 24 01 04 */	lfs f1, 0x104(r4)
/* 807F6514  4B B3 1F 18 */	b checkPass__12J3DFrameCtrlFf
/* 807F6518  2C 03 00 00 */	cmpwi r3, 0
/* 807F651C  41 82 01 18 */	beq lbl_807F6634
/* 807F6520  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008B@ha */
/* 807F6524  38 03 00 8B */	addi r0, r3, 0x008B /* 0x0007008B@l */
/* 807F6528  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F652C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807F6530  38 81 00 14 */	addi r4, r1, 0x14
/* 807F6534  38 A0 00 00 */	li r5, 0
/* 807F6538  38 C0 FF FF */	li r6, -1
/* 807F653C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 807F6540  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F6544  7D 89 03 A6 */	mtctr r12
/* 807F6548  4E 80 04 21 */	bctrl 
/* 807F654C  48 00 00 E8 */	b lbl_807F6634
lbl_807F6550:
/* 807F6550  2C 00 00 07 */	cmpwi r0, 7
/* 807F6554  40 82 00 4C */	bne lbl_807F65A0
/* 807F6558  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F655C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F6560  C0 24 01 08 */	lfs f1, 0x108(r4)
/* 807F6564  4B B3 1E C8 */	b checkPass__12J3DFrameCtrlFf
/* 807F6568  2C 03 00 00 */	cmpwi r3, 0
/* 807F656C  41 82 00 C8 */	beq lbl_807F6634
/* 807F6570  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070082@ha */
/* 807F6574  38 03 00 82 */	addi r0, r3, 0x0082 /* 0x00070082@l */
/* 807F6578  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F657C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807F6580  38 81 00 10 */	addi r4, r1, 0x10
/* 807F6584  38 A0 00 00 */	li r5, 0
/* 807F6588  38 C0 FF FF */	li r6, -1
/* 807F658C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 807F6590  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F6594  7D 89 03 A6 */	mtctr r12
/* 807F6598  4E 80 04 21 */	bctrl 
/* 807F659C  48 00 00 98 */	b lbl_807F6634
lbl_807F65A0:
/* 807F65A0  2C 00 00 12 */	cmpwi r0, 0x12
/* 807F65A4  40 82 00 48 */	bne lbl_807F65EC
/* 807F65A8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F65AC  38 63 00 0C */	addi r3, r3, 0xc
/* 807F65B0  C0 24 00 70 */	lfs f1, 0x70(r4)
/* 807F65B4  4B B3 1E 78 */	b checkPass__12J3DFrameCtrlFf
/* 807F65B8  2C 03 00 00 */	cmpwi r3, 0
/* 807F65BC  41 82 00 78 */	beq lbl_807F6634
/* 807F65C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070089@ha */
/* 807F65C4  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00070089@l */
/* 807F65C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F65CC  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807F65D0  38 81 00 0C */	addi r4, r1, 0xc
/* 807F65D4  38 A0 FF FF */	li r5, -1
/* 807F65D8  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 807F65DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F65E0  7D 89 03 A6 */	mtctr r12
/* 807F65E4  4E 80 04 21 */	bctrl 
/* 807F65E8  48 00 00 4C */	b lbl_807F6634
lbl_807F65EC:
/* 807F65EC  2C 00 00 10 */	cmpwi r0, 0x10
/* 807F65F0  40 82 00 44 */	bne lbl_807F6634
/* 807F65F4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F65F8  38 63 00 0C */	addi r3, r3, 0xc
/* 807F65FC  C0 24 00 C0 */	lfs f1, 0xc0(r4)
/* 807F6600  4B B3 1E 2C */	b checkPass__12J3DFrameCtrlFf
/* 807F6604  2C 03 00 00 */	cmpwi r3, 0
/* 807F6608  41 82 00 2C */	beq lbl_807F6634
/* 807F660C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070081@ha */
/* 807F6610  38 03 00 81 */	addi r0, r3, 0x0081 /* 0x00070081@l */
/* 807F6614  90 01 00 08 */	stw r0, 8(r1)
/* 807F6618  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807F661C  38 81 00 08 */	addi r4, r1, 8
/* 807F6620  38 A0 FF FF */	li r5, -1
/* 807F6624  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 807F6628  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F662C  7D 89 03 A6 */	mtctr r12
/* 807F6630  4E 80 04 21 */	bctrl 
lbl_807F6634:
/* 807F6634  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807F6638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807F663C  7C 08 03 A6 */	mtlr r0
/* 807F6640  38 21 00 20 */	addi r1, r1, 0x20
/* 807F6644  4E 80 00 20 */	blr 
