lbl_8033E994:
/* 8033E994  7C 08 02 A6 */	mflr r0
/* 8033E998  90 01 00 04 */	stw r0, 4(r1)
/* 8033E99C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033E9A0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033E9A4  3B E5 00 00 */	addi r31, r5, 0
/* 8033E9A8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033E9AC  3B C4 00 00 */	addi r30, r4, 0
/* 8033E9B0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033E9B4  3B A3 00 00 */	addi r29, r3, 0
/* 8033E9B8  48 00 22 BD */	bl OSInitThreadQueue
/* 8033E9BC  38 7D 00 08 */	addi r3, r29, 8
/* 8033E9C0  48 00 22 B5 */	bl OSInitThreadQueue
/* 8033E9C4  93 DD 00 10 */	stw r30, 0x10(r29)
/* 8033E9C8  38 00 00 00 */	li r0, 0
/* 8033E9CC  93 FD 00 14 */	stw r31, 0x14(r29)
/* 8033E9D0  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8033E9D4  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8033E9D8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033E9DC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033E9E0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033E9E4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033E9E8  38 21 00 28 */	addi r1, r1, 0x28
/* 8033E9EC  7C 08 03 A6 */	mtlr r0
/* 8033E9F0  4E 80 00 20 */	blr 
