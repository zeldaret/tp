lbl_802C5ECC:
/* 802C5ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5ED0  7C 08 02 A6 */	mflr r0
/* 802C5ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5EDC  7C 7F 1B 78 */	mr r31, r3
/* 802C5EE0  38 80 00 00 */	li r4, 0
/* 802C5EE4  4B FF F9 B9 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C5EE8  C0 02 C3 60 */	lfs f0, lit_3574(r2)
/* 802C5EEC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802C5EF0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802C5EF4  C0 02 C3 68 */	lfs f0, lit_3654(r2)
/* 802C5EF8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802C5EFC  C0 02 C3 6C */	lfs f0, lit_3655(r2)
/* 802C5F00  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802C5F04  38 00 00 01 */	li r0, 1
/* 802C5F08  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802C5F0C  98 1F 00 19 */	stb r0, 0x19(r31)
/* 802C5F10  7F E3 FB 78 */	mr r3, r31
/* 802C5F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5F1C  7C 08 03 A6 */	mtlr r0
/* 802C5F20  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5F24  4E 80 00 20 */	blr 
