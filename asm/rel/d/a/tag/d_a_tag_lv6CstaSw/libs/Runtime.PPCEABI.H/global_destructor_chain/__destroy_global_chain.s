lbl_80D5B294:
/* 80D5B294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B298  7C 08 02 A6 */	mflr r0
/* 80D5B29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5B2A4  3C 60 80 D6 */	lis r3, __global_destructor_chain@ha
/* 80D5B2A8  3B E3 B8 78 */	addi r31, r3, __global_destructor_chain@l
/* 80D5B2AC  48 00 00 20 */	b lbl_80D5B2CC
lbl_80D5B2B0:
/* 80D5B2B0  80 05 00 00 */	lwz r0, 0(r5)
/* 80D5B2B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5B2B8  80 65 00 08 */	lwz r3, 8(r5)
/* 80D5B2BC  38 80 FF FF */	li r4, -1
/* 80D5B2C0  81 85 00 04 */	lwz r12, 4(r5)
/* 80D5B2C4  7D 89 03 A6 */	mtctr r12
/* 80D5B2C8  4E 80 04 21 */	bctrl 
lbl_80D5B2CC:
/* 80D5B2CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D5B2D0  28 05 00 00 */	cmplwi r5, 0
/* 80D5B2D4  40 82 FF DC */	bne lbl_80D5B2B0
/* 80D5B2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5B2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B2E0  7C 08 03 A6 */	mtlr r0
/* 80D5B2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B2E8  4E 80 00 20 */	blr 
