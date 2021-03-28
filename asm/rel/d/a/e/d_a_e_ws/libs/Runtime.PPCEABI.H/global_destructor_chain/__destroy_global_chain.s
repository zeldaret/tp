lbl_807E39B4:
/* 807E39B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E39B8  7C 08 02 A6 */	mflr r0
/* 807E39BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E39C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E39C4  3C 60 80 7E */	lis r3, __global_destructor_chain@ha
/* 807E39C8  3B E3 75 B0 */	addi r31, r3, __global_destructor_chain@l
/* 807E39CC  48 00 00 20 */	b lbl_807E39EC
lbl_807E39D0:
/* 807E39D0  80 05 00 00 */	lwz r0, 0(r5)
/* 807E39D4  90 1F 00 00 */	stw r0, 0(r31)
/* 807E39D8  80 65 00 08 */	lwz r3, 8(r5)
/* 807E39DC  38 80 FF FF */	li r4, -1
/* 807E39E0  81 85 00 04 */	lwz r12, 4(r5)
/* 807E39E4  7D 89 03 A6 */	mtctr r12
/* 807E39E8  4E 80 04 21 */	bctrl 
lbl_807E39EC:
/* 807E39EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807E39F0  28 05 00 00 */	cmplwi r5, 0
/* 807E39F4  40 82 FF DC */	bne lbl_807E39D0
/* 807E39F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E39FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E3A00  7C 08 03 A6 */	mtlr r0
/* 807E3A04  38 21 00 10 */	addi r1, r1, 0x10
/* 807E3A08  4E 80 00 20 */	blr 
