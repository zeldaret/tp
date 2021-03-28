lbl_80A17898:
/* 80A17898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1789C  7C 08 02 A6 */	mflr r0
/* 80A178A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A178A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A178A8  7C 7F 1B 78 */	mr r31, r3
/* 80A178AC  38 60 02 35 */	li r3, 0x235
/* 80A178B0  4B 73 51 FC */	b daNpcT_chkEvtBit__FUl
/* 80A178B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A178B8  41 82 00 18 */	beq lbl_80A178D0
/* 80A178BC  88 1F 10 02 */	lbz r0, 0x1002(r31)
/* 80A178C0  28 00 00 00 */	cmplwi r0, 0
/* 80A178C4  41 82 00 48 */	beq lbl_80A1790C
/* 80A178C8  38 60 00 00 */	li r3, 0
/* 80A178CC  48 00 00 44 */	b lbl_80A17910
lbl_80A178D0:
/* 80A178D0  38 60 00 1C */	li r3, 0x1c
/* 80A178D4  4B 73 51 D8 */	b daNpcT_chkEvtBit__FUl
/* 80A178D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A178DC  41 82 00 30 */	beq lbl_80A1790C
/* 80A178E0  38 60 00 87 */	li r3, 0x87
/* 80A178E4  4B 73 51 C8 */	b daNpcT_chkEvtBit__FUl
/* 80A178E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A178EC  41 82 00 0C */	beq lbl_80A178F8
/* 80A178F0  38 60 00 00 */	li r3, 0
/* 80A178F4  48 00 00 1C */	b lbl_80A17910
lbl_80A178F8:
/* 80A178F8  88 1F 10 02 */	lbz r0, 0x1002(r31)
/* 80A178FC  28 00 00 00 */	cmplwi r0, 0
/* 80A17900  41 82 00 0C */	beq lbl_80A1790C
/* 80A17904  38 60 00 00 */	li r3, 0
/* 80A17908  48 00 00 08 */	b lbl_80A17910
lbl_80A1790C:
/* 80A1790C  38 60 00 01 */	li r3, 1
lbl_80A17910:
/* 80A17910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A17914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A17918  7C 08 03 A6 */	mtlr r0
/* 80A1791C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A17920  4E 80 00 20 */	blr 
