lbl_80CBC674:
/* 80CBC674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC678  7C 08 02 A6 */	mflr r0
/* 80CBC67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC684  3C 60 80 CC */	lis r3, __global_destructor_chain@ha
/* 80CBC688  3B E3 DB E0 */	addi r31, r3, __global_destructor_chain@l
/* 80CBC68C  48 00 00 20 */	b lbl_80CBC6AC
lbl_80CBC690:
/* 80CBC690  80 05 00 00 */	lwz r0, 0(r5)
/* 80CBC694  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBC698  80 65 00 08 */	lwz r3, 8(r5)
/* 80CBC69C  38 80 FF FF */	li r4, -1
/* 80CBC6A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80CBC6A4  7D 89 03 A6 */	mtctr r12
/* 80CBC6A8  4E 80 04 21 */	bctrl 
lbl_80CBC6AC:
/* 80CBC6AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CBC6B0  28 05 00 00 */	cmplwi r5, 0
/* 80CBC6B4  40 82 FF DC */	bne lbl_80CBC690
/* 80CBC6B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC6C0  7C 08 03 A6 */	mtlr r0
/* 80CBC6C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC6C8  4E 80 00 20 */	blr 
