lbl_80290B14:
/* 80290B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290B18  7C 08 02 A6 */	mflr r0
/* 80290B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290B20  3C 60 80 43 */	lis r3, audioAramHeap__9JASKernel@ha
/* 80290B24  38 63 15 DC */	addi r3, r3, audioAramHeap__9JASKernel@l
/* 80290B28  38 80 00 00 */	li r4, 0
/* 80290B2C  4B FF F6 15 */	bl __ct__7JASHeapFP11JASDisposer
/* 80290B30  3C 80 80 29 */	lis r4, __dt__7JASHeapFv@ha
/* 80290B34  38 84 0B 54 */	addi r4, r4, __dt__7JASHeapFv@l
/* 80290B38  3C A0 80 43 */	lis r5, lit_313@ha
/* 80290B3C  38 A5 15 D0 */	addi r5, r5, lit_313@l
/* 80290B40  48 0D 10 E5 */	bl __register_global_object
/* 80290B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290B48  7C 08 03 A6 */	mtlr r0
/* 80290B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80290B50  4E 80 00 20 */	blr 
