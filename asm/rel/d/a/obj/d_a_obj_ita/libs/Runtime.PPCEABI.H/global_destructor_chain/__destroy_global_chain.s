lbl_80C28314:
/* 80C28314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C28318  7C 08 02 A6 */	mflr r0
/* 80C2831C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C28320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C28324  3C 60 80 C3 */	lis r3, __global_destructor_chain@ha
/* 80C28328  3B E3 93 C8 */	addi r31, r3, __global_destructor_chain@l
/* 80C2832C  48 00 00 20 */	b lbl_80C2834C
lbl_80C28330:
/* 80C28330  80 05 00 00 */	lwz r0, 0(r5)
/* 80C28334  90 1F 00 00 */	stw r0, 0(r31)
/* 80C28338  80 65 00 08 */	lwz r3, 8(r5)
/* 80C2833C  38 80 FF FF */	li r4, -1
/* 80C28340  81 85 00 04 */	lwz r12, 4(r5)
/* 80C28344  7D 89 03 A6 */	mtctr r12
/* 80C28348  4E 80 04 21 */	bctrl 
lbl_80C2834C:
/* 80C2834C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C28350  28 05 00 00 */	cmplwi r5, 0
/* 80C28354  40 82 FF DC */	bne lbl_80C28330
/* 80C28358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2835C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C28360  7C 08 03 A6 */	mtlr r0
/* 80C28364  38 21 00 10 */	addi r1, r1, 0x10
/* 80C28368  4E 80 00 20 */	blr 
