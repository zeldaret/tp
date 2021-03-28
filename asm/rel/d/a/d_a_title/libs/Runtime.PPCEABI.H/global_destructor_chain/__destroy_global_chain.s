lbl_80D66AB4:
/* 80D66AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66AB8  7C 08 02 A6 */	mflr r0
/* 80D66ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D66AC4  3C 60 80 D6 */	lis r3, __global_destructor_chain@ha
/* 80D66AC8  3B E3 7D 78 */	addi r31, r3, __global_destructor_chain@l
/* 80D66ACC  48 00 00 20 */	b lbl_80D66AEC
lbl_80D66AD0:
/* 80D66AD0  80 05 00 00 */	lwz r0, 0(r5)
/* 80D66AD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D66AD8  80 65 00 08 */	lwz r3, 8(r5)
/* 80D66ADC  38 80 FF FF */	li r4, -1
/* 80D66AE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80D66AE4  7D 89 03 A6 */	mtctr r12
/* 80D66AE8  4E 80 04 21 */	bctrl 
lbl_80D66AEC:
/* 80D66AEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D66AF0  28 05 00 00 */	cmplwi r5, 0
/* 80D66AF4  40 82 FF DC */	bne lbl_80D66AD0
/* 80D66AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D66AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66B00  7C 08 03 A6 */	mtlr r0
/* 80D66B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66B08  4E 80 00 20 */	blr 
