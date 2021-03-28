lbl_80BFFEB4:
/* 80BFFEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFFEB8  7C 08 02 A6 */	mflr r0
/* 80BFFEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFFEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFFEC4  3C 60 80 C1 */	lis r3, __global_destructor_chain@ha
/* 80BFFEC8  3B E3 08 98 */	addi r31, r3, __global_destructor_chain@l
/* 80BFFECC  48 00 00 20 */	b lbl_80BFFEEC
lbl_80BFFED0:
/* 80BFFED0  80 05 00 00 */	lwz r0, 0(r5)
/* 80BFFED4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFFED8  80 65 00 08 */	lwz r3, 8(r5)
/* 80BFFEDC  38 80 FF FF */	li r4, -1
/* 80BFFEE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80BFFEE4  7D 89 03 A6 */	mtctr r12
/* 80BFFEE8  4E 80 04 21 */	bctrl 
lbl_80BFFEEC:
/* 80BFFEEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BFFEF0  28 05 00 00 */	cmplwi r5, 0
/* 80BFFEF4  40 82 FF DC */	bne lbl_80BFFED0
/* 80BFFEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFFEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFFF00  7C 08 03 A6 */	mtlr r0
/* 80BFFF04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFFF08  4E 80 00 20 */	blr 
