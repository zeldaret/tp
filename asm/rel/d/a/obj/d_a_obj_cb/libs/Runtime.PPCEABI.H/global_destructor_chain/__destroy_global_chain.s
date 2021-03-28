lbl_80BC4AD4:
/* 80BC4AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4AD8  7C 08 02 A6 */	mflr r0
/* 80BC4ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC4AE4  3C 60 80 BC */	lis r3, __global_destructor_chain@ha
/* 80BC4AE8  3B E3 58 F0 */	addi r31, r3, __global_destructor_chain@l
/* 80BC4AEC  48 00 00 20 */	b lbl_80BC4B0C
lbl_80BC4AF0:
/* 80BC4AF0  80 05 00 00 */	lwz r0, 0(r5)
/* 80BC4AF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC4AF8  80 65 00 08 */	lwz r3, 8(r5)
/* 80BC4AFC  38 80 FF FF */	li r4, -1
/* 80BC4B00  81 85 00 04 */	lwz r12, 4(r5)
/* 80BC4B04  7D 89 03 A6 */	mtctr r12
/* 80BC4B08  4E 80 04 21 */	bctrl 
lbl_80BC4B0C:
/* 80BC4B0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BC4B10  28 05 00 00 */	cmplwi r5, 0
/* 80BC4B14  40 82 FF DC */	bne lbl_80BC4AF0
/* 80BC4B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC4B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4B20  7C 08 03 A6 */	mtlr r0
/* 80BC4B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4B28  4E 80 00 20 */	blr 
