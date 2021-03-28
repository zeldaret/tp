lbl_80C35134:
/* 80C35134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C35138  7C 08 02 A6 */	mflr r0
/* 80C3513C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C35140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C35144  3C 60 80 C4 */	lis r3, __global_destructor_chain@ha
/* 80C35148  3B E3 85 C8 */	addi r31, r3, __global_destructor_chain@l
/* 80C3514C  48 00 00 20 */	b lbl_80C3516C
lbl_80C35150:
/* 80C35150  80 05 00 00 */	lwz r0, 0(r5)
/* 80C35154  90 1F 00 00 */	stw r0, 0(r31)
/* 80C35158  80 65 00 08 */	lwz r3, 8(r5)
/* 80C3515C  38 80 FF FF */	li r4, -1
/* 80C35160  81 85 00 04 */	lwz r12, 4(r5)
/* 80C35164  7D 89 03 A6 */	mtctr r12
/* 80C35168  4E 80 04 21 */	bctrl 
lbl_80C3516C:
/* 80C3516C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C35170  28 05 00 00 */	cmplwi r5, 0
/* 80C35174  40 82 FF DC */	bne lbl_80C35150
/* 80C35178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3517C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C35180  7C 08 03 A6 */	mtlr r0
/* 80C35184  38 21 00 10 */	addi r1, r1, 0x10
/* 80C35188  4E 80 00 20 */	blr 
