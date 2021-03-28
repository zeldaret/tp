lbl_809EFCE0:
/* 809EFCE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFCE4  7C 08 02 A6 */	mflr r0
/* 809EFCE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFCEC  3C 60 80 9F */	lis r3, data_809F2C44@ha
/* 809EFCF0  38 63 2C 44 */	addi r3, r3, data_809F2C44@l
/* 809EFCF4  4B 87 34 58 */	b ModuleConstructorsX
/* 809EFCF8  4B 87 33 90 */	b ModuleProlog
/* 809EFCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFD00  7C 08 03 A6 */	mtlr r0
/* 809EFD04  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFD08  4E 80 00 20 */	blr 
