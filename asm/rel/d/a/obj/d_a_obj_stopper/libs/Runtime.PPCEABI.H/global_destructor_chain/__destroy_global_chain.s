lbl_80CECEB4:
/* 80CECEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECEB8  7C 08 02 A6 */	mflr r0
/* 80CECEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CECEC4  3C 60 80 CF */	lis r3, __global_destructor_chain@ha
/* 80CECEC8  3B E3 F1 E0 */	addi r31, r3, __global_destructor_chain@l
/* 80CECECC  48 00 00 20 */	b lbl_80CECEEC
lbl_80CECED0:
/* 80CECED0  80 05 00 00 */	lwz r0, 0(r5)
/* 80CECED4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CECED8  80 65 00 08 */	lwz r3, 8(r5)
/* 80CECEDC  38 80 FF FF */	li r4, -1
/* 80CECEE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80CECEE4  7D 89 03 A6 */	mtctr r12
/* 80CECEE8  4E 80 04 21 */	bctrl 
lbl_80CECEEC:
/* 80CECEEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CECEF0  28 05 00 00 */	cmplwi r5, 0
/* 80CECEF4  40 82 FF DC */	bne lbl_80CECED0
/* 80CECEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CECEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECF00  7C 08 03 A6 */	mtlr r0
/* 80CECF04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECF08  4E 80 00 20 */	blr 
