lbl_80D0E894:
/* 80D0E894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E898  7C 08 02 A6 */	mflr r0
/* 80D0E89C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E8A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E8A4  3C 60 80 D1 */	lis r3, __global_destructor_chain@ha
/* 80D0E8A8  3B E3 F1 68 */	addi r31, r3, __global_destructor_chain@l
/* 80D0E8AC  48 00 00 20 */	b lbl_80D0E8CC
lbl_80D0E8B0:
/* 80D0E8B0  80 05 00 00 */	lwz r0, 0(r5)
/* 80D0E8B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0E8B8  80 65 00 08 */	lwz r3, 8(r5)
/* 80D0E8BC  38 80 FF FF */	li r4, -1
/* 80D0E8C0  81 85 00 04 */	lwz r12, 4(r5)
/* 80D0E8C4  7D 89 03 A6 */	mtctr r12
/* 80D0E8C8  4E 80 04 21 */	bctrl 
lbl_80D0E8CC:
/* 80D0E8CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D0E8D0  28 05 00 00 */	cmplwi r5, 0
/* 80D0E8D4  40 82 FF DC */	bne lbl_80D0E8B0
/* 80D0E8D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E8E0  7C 08 03 A6 */	mtlr r0
/* 80D0E8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E8E8  4E 80 00 20 */	blr 
