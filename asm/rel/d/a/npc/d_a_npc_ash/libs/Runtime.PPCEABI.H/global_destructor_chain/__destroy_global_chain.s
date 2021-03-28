lbl_80958294:
/* 80958294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80958298  7C 08 02 A6 */	mflr r0
/* 8095829C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809582A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809582A4  3C 60 80 96 */	lis r3, __global_destructor_chain@ha
/* 809582A8  3B E3 DD 38 */	addi r31, r3, __global_destructor_chain@l
/* 809582AC  48 00 00 20 */	b lbl_809582CC
lbl_809582B0:
/* 809582B0  80 05 00 00 */	lwz r0, 0(r5)
/* 809582B4  90 1F 00 00 */	stw r0, 0(r31)
/* 809582B8  80 65 00 08 */	lwz r3, 8(r5)
/* 809582BC  38 80 FF FF */	li r4, -1
/* 809582C0  81 85 00 04 */	lwz r12, 4(r5)
/* 809582C4  7D 89 03 A6 */	mtctr r12
/* 809582C8  4E 80 04 21 */	bctrl 
lbl_809582CC:
/* 809582CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 809582D0  28 05 00 00 */	cmplwi r5, 0
/* 809582D4  40 82 FF DC */	bne lbl_809582B0
/* 809582D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809582DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809582E0  7C 08 03 A6 */	mtlr r0
/* 809582E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809582E8  4E 80 00 20 */	blr 
