lbl_8028680C:
/* 8028680C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286810  7C 08 02 A6 */	mflr r0
/* 80286814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286818  4B FF FF 1D */	bl forward_value__Q27JStudio7TObjectFUl
/* 8028681C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286820  7C 08 03 A6 */	mtlr r0
/* 80286824  38 21 00 10 */	addi r1, r1, 0x10
/* 80286828  4E 80 00 20 */	blr 
