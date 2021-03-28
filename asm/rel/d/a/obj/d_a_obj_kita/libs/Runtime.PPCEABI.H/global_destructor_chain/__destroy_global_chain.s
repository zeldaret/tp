lbl_80C452F4:
/* 80C452F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C452F8  7C 08 02 A6 */	mflr r0
/* 80C452FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C45304  3C 60 80 C4 */	lis r3, __global_destructor_chain@ha
/* 80C45308  3B E3 5F E8 */	addi r31, r3, __global_destructor_chain@l
/* 80C4530C  48 00 00 20 */	b lbl_80C4532C
lbl_80C45310:
/* 80C45310  80 05 00 00 */	lwz r0, 0(r5)
/* 80C45314  90 1F 00 00 */	stw r0, 0(r31)
/* 80C45318  80 65 00 08 */	lwz r3, 8(r5)
/* 80C4531C  38 80 FF FF */	li r4, -1
/* 80C45320  81 85 00 04 */	lwz r12, 4(r5)
/* 80C45324  7D 89 03 A6 */	mtctr r12
/* 80C45328  4E 80 04 21 */	bctrl 
lbl_80C4532C:
/* 80C4532C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C45330  28 05 00 00 */	cmplwi r5, 0
/* 80C45334  40 82 FF DC */	bne lbl_80C45310
/* 80C45338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4533C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C45340  7C 08 03 A6 */	mtlr r0
/* 80C45344  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45348  4E 80 00 20 */	blr 
