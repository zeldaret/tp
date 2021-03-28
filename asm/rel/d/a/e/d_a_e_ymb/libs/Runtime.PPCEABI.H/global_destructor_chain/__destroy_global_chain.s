lbl_808160B4:
/* 808160B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808160B8  7C 08 02 A6 */	mflr r0
/* 808160BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808160C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808160C4  3C 60 80 82 */	lis r3, __global_destructor_chain@ha
/* 808160C8  3B E3 1E 10 */	addi r31, r3, __global_destructor_chain@l
/* 808160CC  48 00 00 20 */	b lbl_808160EC
lbl_808160D0:
/* 808160D0  80 05 00 00 */	lwz r0, 0(r5)
/* 808160D4  90 1F 00 00 */	stw r0, 0(r31)
/* 808160D8  80 65 00 08 */	lwz r3, 8(r5)
/* 808160DC  38 80 FF FF */	li r4, -1
/* 808160E0  81 85 00 04 */	lwz r12, 4(r5)
/* 808160E4  7D 89 03 A6 */	mtctr r12
/* 808160E8  4E 80 04 21 */	bctrl 
lbl_808160EC:
/* 808160EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 808160F0  28 05 00 00 */	cmplwi r5, 0
/* 808160F4  40 82 FF DC */	bne lbl_808160D0
/* 808160F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808160FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80816100  7C 08 03 A6 */	mtlr r0
/* 80816104  38 21 00 10 */	addi r1, r1, 0x10
/* 80816108  4E 80 00 20 */	blr 
