lbl_80D645D4:
/* 80D645D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D645D8  7C 08 02 A6 */	mflr r0
/* 80D645DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D645E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D645E4  3C 60 80 D6 */	lis r3, __global_destructor_chain@ha
/* 80D645E8  3B E3 4D F8 */	addi r31, r3, __global_destructor_chain@l
/* 80D645EC  48 00 00 20 */	b lbl_80D6460C
lbl_80D645F0:
/* 80D645F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80D645F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D645F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80D645FC  38 80 FF FF */	li r4, -1
/* 80D64600  81 85 00 04 */	lwz r12, 4(r5)
/* 80D64604  7D 89 03 A6 */	mtctr r12
/* 80D64608  4E 80 04 21 */	bctrl 
lbl_80D6460C:
/* 80D6460C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D64610  28 05 00 00 */	cmplwi r5, 0
/* 80D64614  40 82 FF DC */	bne lbl_80D645F0
/* 80D64618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D6461C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64620  7C 08 03 A6 */	mtlr r0
/* 80D64624  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64628  4E 80 00 20 */	blr 
