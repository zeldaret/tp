lbl_80AD56D4:
/* 80AD56D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD56D8  7C 08 02 A6 */	mflr r0
/* 80AD56DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD56E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD56E4  3C 60 80 AE */	lis r3, __global_destructor_chain@ha
/* 80AD56E8  3B E3 80 F0 */	addi r31, r3, __global_destructor_chain@l
/* 80AD56EC  48 00 00 20 */	b lbl_80AD570C
lbl_80AD56F0:
/* 80AD56F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80AD56F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD56F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80AD56FC  38 80 FF FF */	li r4, -1
/* 80AD5700  81 85 00 04 */	lwz r12, 4(r5)
/* 80AD5704  7D 89 03 A6 */	mtctr r12
/* 80AD5708  4E 80 04 21 */	bctrl 
lbl_80AD570C:
/* 80AD570C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AD5710  28 05 00 00 */	cmplwi r5, 0
/* 80AD5714  40 82 FF DC */	bne lbl_80AD56F0
/* 80AD5718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD571C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD5720  7C 08 03 A6 */	mtlr r0
/* 80AD5724  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD5728  4E 80 00 20 */	blr 
