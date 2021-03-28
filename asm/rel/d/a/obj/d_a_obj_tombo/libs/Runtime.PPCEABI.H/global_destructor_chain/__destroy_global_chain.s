lbl_80D19174:
/* 80D19174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D19178  7C 08 02 A6 */	mflr r0
/* 80D1917C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D19180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D19184  3C 60 80 D2 */	lis r3, __global_destructor_chain@ha
/* 80D19188  3B E3 B8 E8 */	addi r31, r3, __global_destructor_chain@l
/* 80D1918C  48 00 00 20 */	b lbl_80D191AC
lbl_80D19190:
/* 80D19190  80 05 00 00 */	lwz r0, 0(r5)
/* 80D19194  90 1F 00 00 */	stw r0, 0(r31)
/* 80D19198  80 65 00 08 */	lwz r3, 8(r5)
/* 80D1919C  38 80 FF FF */	li r4, -1
/* 80D191A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80D191A4  7D 89 03 A6 */	mtctr r12
/* 80D191A8  4E 80 04 21 */	bctrl 
lbl_80D191AC:
/* 80D191AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D191B0  28 05 00 00 */	cmplwi r5, 0
/* 80D191B4  40 82 FF DC */	bne lbl_80D19190
/* 80D191B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D191BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D191C0  7C 08 03 A6 */	mtlr r0
/* 80D191C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D191C8  4E 80 00 20 */	blr 
