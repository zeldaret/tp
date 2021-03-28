lbl_80BA9134:
/* 80BA9134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9138  7C 08 02 A6 */	mflr r0
/* 80BA913C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9144  3C 60 80 BB */	lis r3, __global_destructor_chain@ha
/* 80BA9148  3B E3 9D 10 */	addi r31, r3, __global_destructor_chain@l
/* 80BA914C  48 00 00 20 */	b lbl_80BA916C
lbl_80BA9150:
/* 80BA9150  80 05 00 00 */	lwz r0, 0(r5)
/* 80BA9154  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA9158  80 65 00 08 */	lwz r3, 8(r5)
/* 80BA915C  38 80 FF FF */	li r4, -1
/* 80BA9160  81 85 00 04 */	lwz r12, 4(r5)
/* 80BA9164  7D 89 03 A6 */	mtctr r12
/* 80BA9168  4E 80 04 21 */	bctrl 
lbl_80BA916C:
/* 80BA916C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BA9170  28 05 00 00 */	cmplwi r5, 0
/* 80BA9174  40 82 FF DC */	bne lbl_80BA9150
/* 80BA9178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA917C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9180  7C 08 03 A6 */	mtlr r0
/* 80BA9184  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9188  4E 80 00 20 */	blr 
