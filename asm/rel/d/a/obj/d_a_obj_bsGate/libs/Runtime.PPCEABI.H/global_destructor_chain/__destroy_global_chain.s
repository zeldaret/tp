lbl_80BC2834:
/* 80BC2834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC2838  7C 08 02 A6 */	mflr r0
/* 80BC283C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC2840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC2844  3C 60 80 BC */	lis r3, __global_destructor_chain@ha
/* 80BC2848  3B E3 32 C8 */	addi r31, r3, __global_destructor_chain@l
/* 80BC284C  48 00 00 20 */	b lbl_80BC286C
lbl_80BC2850:
/* 80BC2850  80 05 00 00 */	lwz r0, 0(r5)
/* 80BC2854  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC2858  80 65 00 08 */	lwz r3, 8(r5)
/* 80BC285C  38 80 FF FF */	li r4, -1
/* 80BC2860  81 85 00 04 */	lwz r12, 4(r5)
/* 80BC2864  7D 89 03 A6 */	mtctr r12
/* 80BC2868  4E 80 04 21 */	bctrl 
lbl_80BC286C:
/* 80BC286C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BC2870  28 05 00 00 */	cmplwi r5, 0
/* 80BC2874  40 82 FF DC */	bne lbl_80BC2850
/* 80BC2878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC287C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC2880  7C 08 03 A6 */	mtlr r0
/* 80BC2884  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC2888  4E 80 00 20 */	blr 
