lbl_80BE75D4:
/* 80BE75D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE75D8  7C 08 02 A6 */	mflr r0
/* 80BE75DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE75E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE75E4  3C 60 80 BF */	lis r3, __global_destructor_chain@ha
/* 80BE75E8  3B E3 81 30 */	addi r31, r3, __global_destructor_chain@l
/* 80BE75EC  48 00 00 20 */	b lbl_80BE760C
lbl_80BE75F0:
/* 80BE75F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80BE75F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE75F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80BE75FC  38 80 FF FF */	li r4, -1
/* 80BE7600  81 85 00 04 */	lwz r12, 4(r5)
/* 80BE7604  7D 89 03 A6 */	mtctr r12
/* 80BE7608  4E 80 04 21 */	bctrl 
lbl_80BE760C:
/* 80BE760C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BE7610  28 05 00 00 */	cmplwi r5, 0
/* 80BE7614  40 82 FF DC */	bne lbl_80BE75F0
/* 80BE7618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE761C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7620  7C 08 03 A6 */	mtlr r0
/* 80BE7624  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7628  4E 80 00 20 */	blr 
