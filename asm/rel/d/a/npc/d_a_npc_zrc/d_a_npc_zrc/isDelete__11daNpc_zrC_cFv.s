lbl_80B8FC8C:
/* 80B8FC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8FC90  7C 08 02 A6 */	mflr r0
/* 80B8FC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8FC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8FC9C  7C 7F 1B 78 */	mr r31, r3
/* 80B8FCA0  88 03 0E 28 */	lbz r0, 0xe28(r3)
/* 80B8FCA4  28 00 00 04 */	cmplwi r0, 4
/* 80B8FCA8  41 82 00 48 */	beq lbl_80B8FCF0
/* 80B8FCAC  28 00 00 00 */	cmplwi r0, 0
/* 80B8FCB0  41 82 00 40 */	beq lbl_80B8FCF0
/* 80B8FCB4  28 00 00 01 */	cmplwi r0, 1
/* 80B8FCB8  41 82 00 38 */	beq lbl_80B8FCF0
/* 80B8FCBC  28 00 00 02 */	cmplwi r0, 2
/* 80B8FCC0  40 82 00 24 */	bne lbl_80B8FCE4
/* 80B8FCC4  38 60 01 08 */	li r3, 0x108
/* 80B8FCC8  4B 5C 59 6C */	b daNpcF_chkEvtBit__FUl
/* 80B8FCCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B8FCD0  41 82 00 14 */	beq lbl_80B8FCE4
/* 80B8FCD4  38 60 01 0A */	li r3, 0x10a
/* 80B8FCD8  4B 5C 59 5C */	b daNpcF_chkEvtBit__FUl
/* 80B8FCDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B8FCE0  41 82 00 10 */	beq lbl_80B8FCF0
lbl_80B8FCE4:
/* 80B8FCE4  88 1F 0E 28 */	lbz r0, 0xe28(r31)
/* 80B8FCE8  28 00 00 03 */	cmplwi r0, 3
/* 80B8FCEC  40 82 00 0C */	bne lbl_80B8FCF8
lbl_80B8FCF0:
/* 80B8FCF0  38 60 00 00 */	li r3, 0
/* 80B8FCF4  48 00 00 08 */	b lbl_80B8FCFC
lbl_80B8FCF8:
/* 80B8FCF8  38 60 00 01 */	li r3, 1
lbl_80B8FCFC:
/* 80B8FCFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8FD00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8FD04  7C 08 03 A6 */	mtlr r0
/* 80B8FD08  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8FD0C  4E 80 00 20 */	blr 
