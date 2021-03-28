lbl_806AA194:
/* 806AA194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AA198  7C 08 02 A6 */	mflr r0
/* 806AA19C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AA1A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AA1A4  3C 60 80 6B */	lis r3, __global_destructor_chain@ha
/* 806AA1A8  3B E3 D7 F0 */	addi r31, r3, __global_destructor_chain@l
/* 806AA1AC  48 00 00 20 */	b lbl_806AA1CC
lbl_806AA1B0:
/* 806AA1B0  80 05 00 00 */	lwz r0, 0(r5)
/* 806AA1B4  90 1F 00 00 */	stw r0, 0(r31)
/* 806AA1B8  80 65 00 08 */	lwz r3, 8(r5)
/* 806AA1BC  38 80 FF FF */	li r4, -1
/* 806AA1C0  81 85 00 04 */	lwz r12, 4(r5)
/* 806AA1C4  7D 89 03 A6 */	mtctr r12
/* 806AA1C8  4E 80 04 21 */	bctrl 
lbl_806AA1CC:
/* 806AA1CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 806AA1D0  28 05 00 00 */	cmplwi r5, 0
/* 806AA1D4  40 82 FF DC */	bne lbl_806AA1B0
/* 806AA1D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AA1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AA1E0  7C 08 03 A6 */	mtlr r0
/* 806AA1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806AA1E8  4E 80 00 20 */	blr 
