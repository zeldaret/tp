lbl_804C6D74:
/* 804C6D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6D78  7C 08 02 A6 */	mflr r0
/* 804C6D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C6D84  3C 60 80 4D */	lis r3, __global_destructor_chain@ha
/* 804C6D88  3B E3 C6 80 */	addi r31, r3, __global_destructor_chain@l
/* 804C6D8C  48 00 00 20 */	b lbl_804C6DAC
lbl_804C6D90:
/* 804C6D90  80 05 00 00 */	lwz r0, 0(r5)
/* 804C6D94  90 1F 00 00 */	stw r0, 0(r31)
/* 804C6D98  80 65 00 08 */	lwz r3, 8(r5)
/* 804C6D9C  38 80 FF FF */	li r4, -1
/* 804C6DA0  81 85 00 04 */	lwz r12, 4(r5)
/* 804C6DA4  7D 89 03 A6 */	mtctr r12
/* 804C6DA8  4E 80 04 21 */	bctrl 
lbl_804C6DAC:
/* 804C6DAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 804C6DB0  28 05 00 00 */	cmplwi r5, 0
/* 804C6DB4  40 82 FF DC */	bne lbl_804C6D90
/* 804C6DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C6DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6DC0  7C 08 03 A6 */	mtlr r0
/* 804C6DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6DC8  4E 80 00 20 */	blr 
