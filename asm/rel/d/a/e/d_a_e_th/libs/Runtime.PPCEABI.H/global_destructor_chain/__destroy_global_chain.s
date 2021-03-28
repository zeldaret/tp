lbl_807B0334:
/* 807B0334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B0338  7C 08 02 A6 */	mflr r0
/* 807B033C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B0340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B0344  3C 60 80 7B */	lis r3, __global_destructor_chain@ha
/* 807B0348  3B E3 48 68 */	addi r31, r3, __global_destructor_chain@l
/* 807B034C  48 00 00 20 */	b lbl_807B036C
lbl_807B0350:
/* 807B0350  80 05 00 00 */	lwz r0, 0(r5)
/* 807B0354  90 1F 00 00 */	stw r0, 0(r31)
/* 807B0358  80 65 00 08 */	lwz r3, 8(r5)
/* 807B035C  38 80 FF FF */	li r4, -1
/* 807B0360  81 85 00 04 */	lwz r12, 4(r5)
/* 807B0364  7D 89 03 A6 */	mtctr r12
/* 807B0368  4E 80 04 21 */	bctrl 
lbl_807B036C:
/* 807B036C  80 BF 00 00 */	lwz r5, 0(r31)
/* 807B0370  28 05 00 00 */	cmplwi r5, 0
/* 807B0374  40 82 FF DC */	bne lbl_807B0350
/* 807B0378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B037C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B0380  7C 08 03 A6 */	mtlr r0
/* 807B0384  38 21 00 10 */	addi r1, r1, 0x10
/* 807B0388  4E 80 00 20 */	blr 
