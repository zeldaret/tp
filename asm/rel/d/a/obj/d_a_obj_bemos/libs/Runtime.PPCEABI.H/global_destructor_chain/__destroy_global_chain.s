lbl_80BAE314:
/* 80BAE314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE318  7C 08 02 A6 */	mflr r0
/* 80BAE31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAE324  3C 60 80 BB */	lis r3, __global_destructor_chain@ha
/* 80BAE328  3B E3 3E E0 */	addi r31, r3, __global_destructor_chain@l
/* 80BAE32C  48 00 00 20 */	b lbl_80BAE34C
lbl_80BAE330:
/* 80BAE330  80 05 00 00 */	lwz r0, 0(r5)
/* 80BAE334  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAE338  80 65 00 08 */	lwz r3, 8(r5)
/* 80BAE33C  38 80 FF FF */	li r4, -1
/* 80BAE340  81 85 00 04 */	lwz r12, 4(r5)
/* 80BAE344  7D 89 03 A6 */	mtctr r12
/* 80BAE348  4E 80 04 21 */	bctrl 
lbl_80BAE34C:
/* 80BAE34C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BAE350  28 05 00 00 */	cmplwi r5, 0
/* 80BAE354  40 82 FF DC */	bne lbl_80BAE330
/* 80BAE358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAE35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE360  7C 08 03 A6 */	mtlr r0
/* 80BAE364  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE368  4E 80 00 20 */	blr 
