lbl_80D5DA74:
/* 80D5DA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DA78  7C 08 02 A6 */	mflr r0
/* 80D5DA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5DA84  3C 60 80 D6 */	lis r3, __global_destructor_chain@ha
/* 80D5DA88  3B E3 DD C8 */	addi r31, r3, __global_destructor_chain@l
/* 80D5DA8C  48 00 00 20 */	b lbl_80D5DAAC
lbl_80D5DA90:
/* 80D5DA90  80 05 00 00 */	lwz r0, 0(r5)
/* 80D5DA94  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5DA98  80 65 00 08 */	lwz r3, 8(r5)
/* 80D5DA9C  38 80 FF FF */	li r4, -1
/* 80D5DAA0  81 85 00 04 */	lwz r12, 4(r5)
/* 80D5DAA4  7D 89 03 A6 */	mtctr r12
/* 80D5DAA8  4E 80 04 21 */	bctrl 
lbl_80D5DAAC:
/* 80D5DAAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D5DAB0  28 05 00 00 */	cmplwi r5, 0
/* 80D5DAB4  40 82 FF DC */	bne lbl_80D5DA90
/* 80D5DAB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5DABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DAC0  7C 08 03 A6 */	mtlr r0
/* 80D5DAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DAC8  4E 80 00 20 */	blr 
