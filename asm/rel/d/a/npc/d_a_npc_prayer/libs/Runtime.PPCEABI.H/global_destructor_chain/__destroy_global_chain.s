lbl_80AB2D94:
/* 80AB2D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB2D98  7C 08 02 A6 */	mflr r0
/* 80AB2D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB2DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB2DA4  3C 60 80 AB */	lis r3, __global_destructor_chain@ha
/* 80AB2DA8  3B E3 5B A0 */	addi r31, r3, __global_destructor_chain@l
/* 80AB2DAC  48 00 00 20 */	b lbl_80AB2DCC
lbl_80AB2DB0:
/* 80AB2DB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80AB2DB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB2DB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80AB2DBC  38 80 FF FF */	li r4, -1
/* 80AB2DC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80AB2DC4  7D 89 03 A6 */	mtctr r12
/* 80AB2DC8  4E 80 04 21 */	bctrl 
lbl_80AB2DCC:
/* 80AB2DCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AB2DD0  28 05 00 00 */	cmplwi r5, 0
/* 80AB2DD4  40 82 FF DC */	bne lbl_80AB2DB0
/* 80AB2DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB2DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB2DE0  7C 08 03 A6 */	mtlr r0
/* 80AB2DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB2DE8  4E 80 00 20 */	blr 
