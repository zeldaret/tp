lbl_809BBF64:
/* 809BBF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBF68  7C 08 02 A6 */	mflr r0
/* 809BBF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBF70  7C 60 1B 78 */	mr r0, r3
/* 809BBF74  2C 04 00 00 */	cmpwi r4, 0
/* 809BBF78  40 82 00 30 */	bne lbl_809BBFA8
/* 809BBF7C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 809BBF80  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 809BBF84  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 809BBF88  80 65 00 14 */	lwz r3, 0x14(r5)
/* 809BBF8C  28 03 00 00 */	cmplwi r3, 0
/* 809BBF90  41 82 00 18 */	beq lbl_809BBFA8
/* 809BBF94  7C 04 03 78 */	mr r4, r0
/* 809BBF98  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809BBF9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809BBFA0  7D 89 03 A6 */	mtctr r12
/* 809BBFA4  4E 80 04 21 */	bctrl 
lbl_809BBFA8:
/* 809BBFA8  38 60 00 01 */	li r3, 1
/* 809BBFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBFB0  7C 08 03 A6 */	mtlr r0
/* 809BBFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBFB8  4E 80 00 20 */	blr 
