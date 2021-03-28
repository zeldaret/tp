lbl_80B784B4:
/* 80B784B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B784B8  7C 08 02 A6 */	mflr r0
/* 80B784BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B784C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B784C4  3C 60 80 B9 */	lis r3, __global_destructor_chain@ha
/* 80B784C8  3B E3 DA 40 */	addi r31, r3, __global_destructor_chain@l
/* 80B784CC  48 00 00 20 */	b lbl_80B784EC
lbl_80B784D0:
/* 80B784D0  80 05 00 00 */	lwz r0, 0(r5)
/* 80B784D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B784D8  80 65 00 08 */	lwz r3, 8(r5)
/* 80B784DC  38 80 FF FF */	li r4, -1
/* 80B784E0  81 85 00 04 */	lwz r12, 4(r5)
/* 80B784E4  7D 89 03 A6 */	mtctr r12
/* 80B784E8  4E 80 04 21 */	bctrl 
lbl_80B784EC:
/* 80B784EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B784F0  28 05 00 00 */	cmplwi r5, 0
/* 80B784F4  40 82 FF DC */	bne lbl_80B784D0
/* 80B784F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B784FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B78500  7C 08 03 A6 */	mtlr r0
/* 80B78504  38 21 00 10 */	addi r1, r1, 0x10
/* 80B78508  4E 80 00 20 */	blr 
