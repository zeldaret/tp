lbl_802C5E90:
/* 802C5E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5E94  7C 08 02 A6 */	mflr r0
/* 802C5E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5E9C  80 04 00 00 */	lwz r0, 0(r4)
/* 802C5EA0  90 01 00 08 */	stw r0, 8(r1)
/* 802C5EA4  38 81 00 08 */	addi r4, r1, 8
/* 802C5EA8  C0 63 00 08 */	lfs f3, 8(r3)
/* 802C5EAC  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802C5EB0  C0 A2 C3 44 */	lfs f5, lit_3502(r2)
/* 802C5EB4  38 A0 00 00 */	li r5, 0
/* 802C5EB8  4B FF FB FD */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C5EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5EC0  7C 08 03 A6 */	mtlr r0
/* 802C5EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5EC8  4E 80 00 20 */	blr 
