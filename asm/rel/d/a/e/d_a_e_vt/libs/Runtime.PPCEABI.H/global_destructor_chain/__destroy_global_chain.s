lbl_807C2594:
/* 807C2594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C2598  7C 08 02 A6 */	mflr r0
/* 807C259C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C25A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C25A4  3C 60 80 7D */	lis r3, __global_destructor_chain@ha
/* 807C25A8  3B E3 F4 70 */	addi r31, r3, __global_destructor_chain@l
/* 807C25AC  48 00 00 20 */	b lbl_807C25CC
lbl_807C25B0:
/* 807C25B0  80 05 00 00 */	lwz r0, 0(r5)
/* 807C25B4  90 1F 00 00 */	stw r0, 0(r31)
/* 807C25B8  80 65 00 08 */	lwz r3, 8(r5)
/* 807C25BC  38 80 FF FF */	li r4, -1
/* 807C25C0  81 85 00 04 */	lwz r12, 4(r5)
/* 807C25C4  7D 89 03 A6 */	mtctr r12
/* 807C25C8  4E 80 04 21 */	bctrl 
lbl_807C25CC:
/* 807C25CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807C25D0  28 05 00 00 */	cmplwi r5, 0
/* 807C25D4  40 82 FF DC */	bne lbl_807C25B0
/* 807C25D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C25DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C25E0  7C 08 03 A6 */	mtlr r0
/* 807C25E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807C25E8  4E 80 00 20 */	blr 
