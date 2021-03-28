lbl_807D2434:
/* 807D2434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D2438  7C 08 02 A6 */	mflr r0
/* 807D243C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D2440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D2444  3C 60 80 7E */	lis r3, __global_destructor_chain@ha
/* 807D2448  3B E3 35 70 */	addi r31, r3, __global_destructor_chain@l
/* 807D244C  48 00 00 20 */	b lbl_807D246C
lbl_807D2450:
/* 807D2450  80 05 00 00 */	lwz r0, 0(r5)
/* 807D2454  90 1F 00 00 */	stw r0, 0(r31)
/* 807D2458  80 65 00 08 */	lwz r3, 8(r5)
/* 807D245C  38 80 FF FF */	li r4, -1
/* 807D2460  81 85 00 04 */	lwz r12, 4(r5)
/* 807D2464  7D 89 03 A6 */	mtctr r12
/* 807D2468  4E 80 04 21 */	bctrl 
lbl_807D246C:
/* 807D246C  80 BF 00 00 */	lwz r5, 0(r31)
/* 807D2470  28 05 00 00 */	cmplwi r5, 0
/* 807D2474  40 82 FF DC */	bne lbl_807D2450
/* 807D2478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D247C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D2480  7C 08 03 A6 */	mtlr r0
/* 807D2484  38 21 00 10 */	addi r1, r1, 0x10
/* 807D2488  4E 80 00 20 */	blr 
