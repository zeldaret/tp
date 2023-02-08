lbl_809EFE8C:
/* 809EFE8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFE90  7C 08 02 A6 */	mflr r0
/* 809EFE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFE98  80 83 0B 08 */	lwz r4, 0xb08(r3)
/* 809EFE9C  39 84 00 0C */	addi r12, r4, 0xc
/* 809EFEA0  4B 97 21 E5 */	bl __ptmf_scall
/* 809EFEA4  60 00 00 00 */	nop 
/* 809EFEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFEAC  7C 08 03 A6 */	mtlr r0
/* 809EFEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFEB4  4E 80 00 20 */	blr 
