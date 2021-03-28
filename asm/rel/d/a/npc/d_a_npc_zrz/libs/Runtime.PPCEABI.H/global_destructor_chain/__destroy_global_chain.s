lbl_80B93D74:
/* 80B93D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93D78  7C 08 02 A6 */	mflr r0
/* 80B93D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B93D84  3C 60 80 BA */	lis r3, __global_destructor_chain@ha
/* 80B93D88  3B E3 B8 60 */	addi r31, r3, __global_destructor_chain@l
/* 80B93D8C  48 00 00 20 */	b lbl_80B93DAC
lbl_80B93D90:
/* 80B93D90  80 05 00 00 */	lwz r0, 0(r5)
/* 80B93D94  90 1F 00 00 */	stw r0, 0(r31)
/* 80B93D98  80 65 00 08 */	lwz r3, 8(r5)
/* 80B93D9C  38 80 FF FF */	li r4, -1
/* 80B93DA0  81 85 00 04 */	lwz r12, 4(r5)
/* 80B93DA4  7D 89 03 A6 */	mtctr r12
/* 80B93DA8  4E 80 04 21 */	bctrl 
lbl_80B93DAC:
/* 80B93DAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B93DB0  28 05 00 00 */	cmplwi r5, 0
/* 80B93DB4  40 82 FF DC */	bne lbl_80B93D90
/* 80B93DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B93DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B93DC0  7C 08 03 A6 */	mtlr r0
/* 80B93DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93DC8  4E 80 00 20 */	blr 
