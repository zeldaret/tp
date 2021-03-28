lbl_805C7AD4:
/* 805C7AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7AD8  7C 08 02 A6 */	mflr r0
/* 805C7ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C7AE4  3C 60 80 5D */	lis r3, __global_destructor_chain@ha
/* 805C7AE8  3B E3 B0 38 */	addi r31, r3, __global_destructor_chain@l
/* 805C7AEC  48 00 00 20 */	b lbl_805C7B0C
lbl_805C7AF0:
/* 805C7AF0  80 05 00 00 */	lwz r0, 0(r5)
/* 805C7AF4  90 1F 00 00 */	stw r0, 0(r31)
/* 805C7AF8  80 65 00 08 */	lwz r3, 8(r5)
/* 805C7AFC  38 80 FF FF */	li r4, -1
/* 805C7B00  81 85 00 04 */	lwz r12, 4(r5)
/* 805C7B04  7D 89 03 A6 */	mtctr r12
/* 805C7B08  4E 80 04 21 */	bctrl 
lbl_805C7B0C:
/* 805C7B0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805C7B10  28 05 00 00 */	cmplwi r5, 0
/* 805C7B14  40 82 FF DC */	bne lbl_805C7AF0
/* 805C7B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C7B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7B20  7C 08 03 A6 */	mtlr r0
/* 805C7B24  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7B28  4E 80 00 20 */	blr 
