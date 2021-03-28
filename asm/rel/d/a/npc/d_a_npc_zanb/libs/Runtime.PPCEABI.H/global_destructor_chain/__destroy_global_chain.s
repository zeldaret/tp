lbl_80B68ED4:
/* 80B68ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B68ED8  7C 08 02 A6 */	mflr r0
/* 80B68EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B68EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B68EE4  3C 60 80 B7 */	lis r3, __global_destructor_chain@ha
/* 80B68EE8  3B E3 C0 A0 */	addi r31, r3, __global_destructor_chain@l
/* 80B68EEC  48 00 00 20 */	b lbl_80B68F0C
lbl_80B68EF0:
/* 80B68EF0  80 05 00 00 */	lwz r0, 0(r5)
/* 80B68EF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B68EF8  80 65 00 08 */	lwz r3, 8(r5)
/* 80B68EFC  38 80 FF FF */	li r4, -1
/* 80B68F00  81 85 00 04 */	lwz r12, 4(r5)
/* 80B68F04  7D 89 03 A6 */	mtctr r12
/* 80B68F08  4E 80 04 21 */	bctrl 
lbl_80B68F0C:
/* 80B68F0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B68F10  28 05 00 00 */	cmplwi r5, 0
/* 80B68F14  40 82 FF DC */	bne lbl_80B68EF0
/* 80B68F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B68F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B68F20  7C 08 03 A6 */	mtlr r0
/* 80B68F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B68F28  4E 80 00 20 */	blr 
