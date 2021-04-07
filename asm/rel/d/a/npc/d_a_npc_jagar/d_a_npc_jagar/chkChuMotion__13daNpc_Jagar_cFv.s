lbl_80A17984:
/* 80A17984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A17988  7C 08 02 A6 */	mflr r0
/* 80A1798C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A17990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A17994  7C 7F 1B 78 */	mr r31, r3
/* 80A17998  38 60 02 35 */	li r3, 0x235
/* 80A1799C  4B 73 51 11 */	bl daNpcT_chkEvtBit__FUl
/* 80A179A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A179A4  40 82 00 3C */	bne lbl_80A179E0
/* 80A179A8  38 60 00 1C */	li r3, 0x1c
/* 80A179AC  4B 73 51 01 */	bl daNpcT_chkEvtBit__FUl
/* 80A179B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A179B4  41 82 00 2C */	beq lbl_80A179E0
/* 80A179B8  38 60 00 87 */	li r3, 0x87
/* 80A179BC  4B 73 50 F1 */	bl daNpcT_chkEvtBit__FUl
/* 80A179C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A179C4  41 82 00 0C */	beq lbl_80A179D0
/* 80A179C8  38 60 00 00 */	li r3, 0
/* 80A179CC  48 00 00 18 */	b lbl_80A179E4
lbl_80A179D0:
/* 80A179D0  88 1F 10 01 */	lbz r0, 0x1001(r31)
/* 80A179D4  7C 00 00 34 */	cntlzw r0, r0
/* 80A179D8  54 03 D9 7E */	srwi r3, r0, 5
/* 80A179DC  48 00 00 08 */	b lbl_80A179E4
lbl_80A179E0:
/* 80A179E0  38 60 00 00 */	li r3, 0
lbl_80A179E4:
/* 80A179E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A179E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A179EC  7C 08 03 A6 */	mtlr r0
/* 80A179F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A179F4  4E 80 00 20 */	blr 
