lbl_80BF06B4:
/* 80BF06B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF06B8  7C 08 02 A6 */	mflr r0
/* 80BF06BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF06C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF06C4  3C 60 80 BF */	lis r3, __global_destructor_chain@ha
/* 80BF06C8  3B E3 1F 38 */	addi r31, r3, __global_destructor_chain@l
/* 80BF06CC  48 00 00 20 */	b lbl_80BF06EC
lbl_80BF06D0:
/* 80BF06D0  80 05 00 00 */	lwz r0, 0(r5)
/* 80BF06D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF06D8  80 65 00 08 */	lwz r3, 8(r5)
/* 80BF06DC  38 80 FF FF */	li r4, -1
/* 80BF06E0  81 85 00 04 */	lwz r12, 4(r5)
/* 80BF06E4  7D 89 03 A6 */	mtctr r12
/* 80BF06E8  4E 80 04 21 */	bctrl 
lbl_80BF06EC:
/* 80BF06EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BF06F0  28 05 00 00 */	cmplwi r5, 0
/* 80BF06F4  40 82 FF DC */	bne lbl_80BF06D0
/* 80BF06F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF06FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF0700  7C 08 03 A6 */	mtlr r0
/* 80BF0704  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF0708  4E 80 00 20 */	blr 
