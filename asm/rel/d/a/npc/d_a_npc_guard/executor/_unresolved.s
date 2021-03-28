lbl_809EFD38:
/* 809EFD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFD3C  7C 08 02 A6 */	mflr r0
/* 809EFD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFD44  4B 87 33 4C */	b ModuleUnresolved
/* 809EFD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFD4C  7C 08 03 A6 */	mtlr r0
/* 809EFD50  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFD54  4E 80 00 20 */	blr 
