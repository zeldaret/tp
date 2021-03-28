lbl_807F82F4:
/* 807F82F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F82F8  7C 08 02 A6 */	mflr r0
/* 807F82FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F8300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F8304  3C 60 80 80 */	lis r3, __global_destructor_chain@ha
/* 807F8308  3B E3 D0 18 */	addi r31, r3, __global_destructor_chain@l
/* 807F830C  48 00 00 20 */	b lbl_807F832C
lbl_807F8310:
/* 807F8310  80 05 00 00 */	lwz r0, 0(r5)
/* 807F8314  90 1F 00 00 */	stw r0, 0(r31)
/* 807F8318  80 65 00 08 */	lwz r3, 8(r5)
/* 807F831C  38 80 FF FF */	li r4, -1
/* 807F8320  81 85 00 04 */	lwz r12, 4(r5)
/* 807F8324  7D 89 03 A6 */	mtctr r12
/* 807F8328  4E 80 04 21 */	bctrl 
lbl_807F832C:
/* 807F832C  80 BF 00 00 */	lwz r5, 0(r31)
/* 807F8330  28 05 00 00 */	cmplwi r5, 0
/* 807F8334  40 82 FF DC */	bne lbl_807F8310
/* 807F8338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F833C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F8340  7C 08 03 A6 */	mtlr r0
/* 807F8344  38 21 00 10 */	addi r1, r1, 0x10
/* 807F8348  4E 80 00 20 */	blr 
