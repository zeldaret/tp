lbl_809BFC98:
/* 809BFC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BFC9C  7C 08 02 A6 */	mflr r0
/* 809BFCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BFCA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BFCA8  7C 7F 1B 78 */	mr r31, r3
/* 809BFCAC  4B 65 90 35 */	bl fopAc_IsActor__FPv
/* 809BFCB0  2C 03 00 00 */	cmpwi r3, 0
/* 809BFCB4  41 82 00 38 */	beq lbl_809BFCEC
/* 809BFCB8  A8 1F 00 08 */	lha r0, 8(r31)
/* 809BFCBC  2C 00 01 6C */	cmpwi r0, 0x16c
/* 809BFCC0  40 82 00 2C */	bne lbl_809BFCEC
/* 809BFCC4  28 1F 00 00 */	cmplwi r31, 0
/* 809BFCC8  41 82 00 0C */	beq lbl_809BFCD4
/* 809BFCCC  80 7F 00 04 */	lwz r3, 4(r31)
/* 809BFCD0  48 00 00 08 */	b lbl_809BFCD8
lbl_809BFCD4:
/* 809BFCD4  38 60 FF FF */	li r3, -1
lbl_809BFCD8:
/* 809BFCD8  4B 66 24 61 */	bl fpcM_IsCreating__FUi
/* 809BFCDC  2C 03 00 00 */	cmpwi r3, 0
/* 809BFCE0  40 82 00 0C */	bne lbl_809BFCEC
/* 809BFCE4  7F E3 FB 78 */	mr r3, r31
/* 809BFCE8  48 00 00 08 */	b lbl_809BFCF0
lbl_809BFCEC:
/* 809BFCEC  38 60 00 00 */	li r3, 0
lbl_809BFCF0:
/* 809BFCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BFCF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BFCF8  7C 08 03 A6 */	mtlr r0
/* 809BFCFC  38 21 00 10 */	addi r1, r1, 0x10
/* 809BFD00  4E 80 00 20 */	blr 
