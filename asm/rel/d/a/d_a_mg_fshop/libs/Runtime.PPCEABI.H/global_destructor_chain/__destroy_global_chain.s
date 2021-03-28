lbl_8086C014:
/* 8086C014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086C018  7C 08 02 A6 */	mflr r0
/* 8086C01C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086C020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086C024  3C 60 80 87 */	lis r3, __global_destructor_chain@ha
/* 8086C028  3B E3 09 50 */	addi r31, r3, __global_destructor_chain@l
/* 8086C02C  48 00 00 20 */	b lbl_8086C04C
lbl_8086C030:
/* 8086C030  80 05 00 00 */	lwz r0, 0(r5)
/* 8086C034  90 1F 00 00 */	stw r0, 0(r31)
/* 8086C038  80 65 00 08 */	lwz r3, 8(r5)
/* 8086C03C  38 80 FF FF */	li r4, -1
/* 8086C040  81 85 00 04 */	lwz r12, 4(r5)
/* 8086C044  7D 89 03 A6 */	mtctr r12
/* 8086C048  4E 80 04 21 */	bctrl 
lbl_8086C04C:
/* 8086C04C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8086C050  28 05 00 00 */	cmplwi r5, 0
/* 8086C054  40 82 FF DC */	bne lbl_8086C030
/* 8086C058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086C05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086C060  7C 08 03 A6 */	mtlr r0
/* 8086C064  38 21 00 10 */	addi r1, r1, 0x10
/* 8086C068  4E 80 00 20 */	blr 
