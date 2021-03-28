lbl_80A88C74:
/* 80A88C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A88C78  7C 08 02 A6 */	mflr r0
/* 80A88C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A88C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A88C84  3C 60 80 A9 */	lis r3, __global_destructor_chain@ha
/* 80A88C88  3B E3 2A 80 */	addi r31, r3, __global_destructor_chain@l
/* 80A88C8C  48 00 00 20 */	b lbl_80A88CAC
lbl_80A88C90:
/* 80A88C90  80 05 00 00 */	lwz r0, 0(r5)
/* 80A88C94  90 1F 00 00 */	stw r0, 0(r31)
/* 80A88C98  80 65 00 08 */	lwz r3, 8(r5)
/* 80A88C9C  38 80 FF FF */	li r4, -1
/* 80A88CA0  81 85 00 04 */	lwz r12, 4(r5)
/* 80A88CA4  7D 89 03 A6 */	mtctr r12
/* 80A88CA8  4E 80 04 21 */	bctrl 
lbl_80A88CAC:
/* 80A88CAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A88CB0  28 05 00 00 */	cmplwi r5, 0
/* 80A88CB4  40 82 FF DC */	bne lbl_80A88C90
/* 80A88CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A88CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A88CC0  7C 08 03 A6 */	mtlr r0
/* 80A88CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A88CC8  4E 80 00 20 */	blr 
