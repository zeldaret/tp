lbl_809EBA68:
/* 809EBA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EBA6C  7C 08 02 A6 */	mflr r0
/* 809EBA70  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EBA74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EBA78  93 C1 00 08 */	stw r30, 8(r1)
/* 809EBA7C  7C 7E 1B 78 */	mr r30, r3
/* 809EBA80  7C 9F 23 78 */	mr r31, r4
/* 809EBA84  38 00 00 03 */	li r0, 3
/* 809EBA88  B0 03 1A 7A */	sth r0, 0x1a7a(r3)
/* 809EBA8C  38 7E 1A 30 */	addi r3, r30, 0x1a30
/* 809EBA90  4B 97 65 88 */	b __ptmf_test
/* 809EBA94  2C 03 00 00 */	cmpwi r3, 0
/* 809EBA98  41 82 00 18 */	beq lbl_809EBAB0
/* 809EBA9C  7F C3 F3 78 */	mr r3, r30
/* 809EBAA0  38 80 00 00 */	li r4, 0
/* 809EBAA4  39 9E 1A 30 */	addi r12, r30, 0x1a30
/* 809EBAA8  4B 97 65 DC */	b __ptmf_scall
/* 809EBAAC  60 00 00 00 */	nop 
lbl_809EBAB0:
/* 809EBAB0  38 00 00 00 */	li r0, 0
/* 809EBAB4  B0 1E 1A 7A */	sth r0, 0x1a7a(r30)
/* 809EBAB8  80 7F 00 00 */	lwz r3, 0(r31)
/* 809EBABC  80 1F 00 04 */	lwz r0, 4(r31)
/* 809EBAC0  90 7E 1A 30 */	stw r3, 0x1a30(r30)
/* 809EBAC4  90 1E 1A 34 */	stw r0, 0x1a34(r30)
/* 809EBAC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 809EBACC  90 1E 1A 38 */	stw r0, 0x1a38(r30)
/* 809EBAD0  38 7E 1A 30 */	addi r3, r30, 0x1a30
/* 809EBAD4  4B 97 65 44 */	b __ptmf_test
/* 809EBAD8  2C 03 00 00 */	cmpwi r3, 0
/* 809EBADC  41 82 00 18 */	beq lbl_809EBAF4
/* 809EBAE0  7F C3 F3 78 */	mr r3, r30
/* 809EBAE4  38 80 00 00 */	li r4, 0
/* 809EBAE8  39 9E 1A 30 */	addi r12, r30, 0x1a30
/* 809EBAEC  4B 97 65 98 */	b __ptmf_scall
/* 809EBAF0  60 00 00 00 */	nop 
lbl_809EBAF4:
/* 809EBAF4  38 60 00 01 */	li r3, 1
/* 809EBAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EBAFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809EBB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EBB04  7C 08 03 A6 */	mtlr r0
/* 809EBB08  38 21 00 10 */	addi r1, r1, 0x10
/* 809EBB0C  4E 80 00 20 */	blr 
