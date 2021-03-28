lbl_80BFB0F4:
/* 80BFB0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFB0F8  7C 08 02 A6 */	mflr r0
/* 80BFB0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFB100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFB104  3C 60 80 C0 */	lis r3, __global_destructor_chain@ha
/* 80BFB108  3B E3 D5 90 */	addi r31, r3, __global_destructor_chain@l
/* 80BFB10C  48 00 00 20 */	b lbl_80BFB12C
lbl_80BFB110:
/* 80BFB110  80 05 00 00 */	lwz r0, 0(r5)
/* 80BFB114  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFB118  80 65 00 08 */	lwz r3, 8(r5)
/* 80BFB11C  38 80 FF FF */	li r4, -1
/* 80BFB120  81 85 00 04 */	lwz r12, 4(r5)
/* 80BFB124  7D 89 03 A6 */	mtctr r12
/* 80BFB128  4E 80 04 21 */	bctrl 
lbl_80BFB12C:
/* 80BFB12C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BFB130  28 05 00 00 */	cmplwi r5, 0
/* 80BFB134  40 82 FF DC */	bne lbl_80BFB110
/* 80BFB138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFB13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFB140  7C 08 03 A6 */	mtlr r0
/* 80BFB144  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFB148  4E 80 00 20 */	blr 
