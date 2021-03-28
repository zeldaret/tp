lbl_80290AD0:
/* 80290AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290AD4  7C 08 02 A6 */	mflr r0
/* 80290AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290ADC  7C 60 1B 78 */	mr r0, r3
/* 80290AE0  7C 85 23 78 */	mr r5, r4
/* 80290AE4  90 0D 8C 94 */	stw r0, sAramBase__9JASKernel(r13)
/* 80290AE8  3C 60 80 43 */	lis r3, audioAramHeap__9JASKernel@ha
/* 80290AEC  38 63 15 DC */	addi r3, r3, audioAramHeap__9JASKernel@l
/* 80290AF0  7C 04 03 78 */	mr r4, r0
/* 80290AF4  4B FF F6 B9 */	bl initRootHeap__7JASHeapFPvUl
/* 80290AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290AFC  7C 08 03 A6 */	mtlr r0
/* 80290B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80290B04  4E 80 00 20 */	blr 
