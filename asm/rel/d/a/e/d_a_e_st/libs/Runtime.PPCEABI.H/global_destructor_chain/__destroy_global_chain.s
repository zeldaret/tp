lbl_8079DD94:
/* 8079DD94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079DD98  7C 08 02 A6 */	mflr r0
/* 8079DD9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079DDA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079DDA4  3C 60 80 7A */	lis r3, __global_destructor_chain@ha
/* 8079DDA8  3B E3 6D 98 */	addi r31, r3, __global_destructor_chain@l
/* 8079DDAC  48 00 00 20 */	b lbl_8079DDCC
lbl_8079DDB0:
/* 8079DDB0  80 05 00 00 */	lwz r0, 0(r5)
/* 8079DDB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8079DDB8  80 65 00 08 */	lwz r3, 8(r5)
/* 8079DDBC  38 80 FF FF */	li r4, -1
/* 8079DDC0  81 85 00 04 */	lwz r12, 4(r5)
/* 8079DDC4  7D 89 03 A6 */	mtctr r12
/* 8079DDC8  4E 80 04 21 */	bctrl 
lbl_8079DDCC:
/* 8079DDCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8079DDD0  28 05 00 00 */	cmplwi r5, 0
/* 8079DDD4  40 82 FF DC */	bne lbl_8079DDB0
/* 8079DDD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079DDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079DDE0  7C 08 03 A6 */	mtlr r0
/* 8079DDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8079DDE8  4E 80 00 20 */	blr 
