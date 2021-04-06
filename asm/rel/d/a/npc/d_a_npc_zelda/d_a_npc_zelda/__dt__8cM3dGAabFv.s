lbl_80B77ECC:
/* 80B77ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B77ED0  7C 08 02 A6 */	mflr r0
/* 80B77ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B77EDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B77EE0  41 82 00 1C */	beq lbl_80B77EFC
/* 80B77EE4  3C A0 80 B8 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B78314@ha */
/* 80B77EE8  38 05 83 14 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B78314@l */
/* 80B77EEC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B77EF0  7C 80 07 35 */	extsh. r0, r4
/* 80B77EF4  40 81 00 08 */	ble lbl_80B77EFC
/* 80B77EF8  4B 75 6E 45 */	bl __dl__FPv
lbl_80B77EFC:
/* 80B77EFC  7F E3 FB 78 */	mr r3, r31
/* 80B77F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B77F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B77F08  7C 08 03 A6 */	mtlr r0
/* 80B77F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B77F10  4E 80 00 20 */	blr 
