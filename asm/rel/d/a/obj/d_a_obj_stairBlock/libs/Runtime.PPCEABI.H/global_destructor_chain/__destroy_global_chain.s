lbl_80CE8114:
/* 80CE8114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8118  7C 08 02 A6 */	mflr r0
/* 80CE811C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE8124  3C 60 80 CF */	lis r3, __global_destructor_chain@ha
/* 80CE8128  3B E3 8F C0 */	addi r31, r3, __global_destructor_chain@l
/* 80CE812C  48 00 00 20 */	b lbl_80CE814C
lbl_80CE8130:
/* 80CE8130  80 05 00 00 */	lwz r0, 0(r5)
/* 80CE8134  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE8138  80 65 00 08 */	lwz r3, 8(r5)
/* 80CE813C  38 80 FF FF */	li r4, -1
/* 80CE8140  81 85 00 04 */	lwz r12, 4(r5)
/* 80CE8144  7D 89 03 A6 */	mtctr r12
/* 80CE8148  4E 80 04 21 */	bctrl 
lbl_80CE814C:
/* 80CE814C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CE8150  28 05 00 00 */	cmplwi r5, 0
/* 80CE8154  40 82 FF DC */	bne lbl_80CE8130
/* 80CE8158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE815C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8160  7C 08 03 A6 */	mtlr r0
/* 80CE8164  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8168  4E 80 00 20 */	blr 
