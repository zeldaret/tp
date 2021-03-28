lbl_809CCF38:
/* 809CCF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CCF3C  7C 08 02 A6 */	mflr r0
/* 809CCF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CCF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CCF48  7C 7F 1B 78 */	mr r31, r3
/* 809CCF4C  88 03 0E 48 */	lbz r0, 0xe48(r3)
/* 809CCF50  28 00 00 06 */	cmplwi r0, 6
/* 809CCF54  41 82 00 48 */	beq lbl_809CCF9C
/* 809CCF58  28 00 00 00 */	cmplwi r0, 0
/* 809CCF5C  41 82 00 40 */	beq lbl_809CCF9C
/* 809CCF60  28 00 00 01 */	cmplwi r0, 1
/* 809CCF64  41 82 00 38 */	beq lbl_809CCF9C
/* 809CCF68  28 00 00 02 */	cmplwi r0, 2
/* 809CCF6C  40 82 00 14 */	bne lbl_809CCF80
/* 809CCF70  38 60 00 40 */	li r3, 0x40
/* 809CCF74  4B 78 86 C0 */	b daNpcF_chkEvtBit__FUl
/* 809CCF78  2C 03 00 00 */	cmpwi r3, 0
/* 809CCF7C  40 82 00 20 */	bne lbl_809CCF9C
lbl_809CCF80:
/* 809CCF80  88 1F 0E 48 */	lbz r0, 0xe48(r31)
/* 809CCF84  28 00 00 03 */	cmplwi r0, 3
/* 809CCF88  41 82 00 14 */	beq lbl_809CCF9C
/* 809CCF8C  28 00 00 04 */	cmplwi r0, 4
/* 809CCF90  41 82 00 0C */	beq lbl_809CCF9C
/* 809CCF94  28 00 00 05 */	cmplwi r0, 5
/* 809CCF98  40 82 00 0C */	bne lbl_809CCFA4
lbl_809CCF9C:
/* 809CCF9C  38 60 00 00 */	li r3, 0
/* 809CCFA0  48 00 00 08 */	b lbl_809CCFA8
lbl_809CCFA4:
/* 809CCFA4  38 60 00 01 */	li r3, 1
lbl_809CCFA8:
/* 809CCFA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CCFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CCFB0  7C 08 03 A6 */	mtlr r0
/* 809CCFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 809CCFB8  4E 80 00 20 */	blr 
