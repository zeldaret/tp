lbl_801A4E90:
/* 801A4E90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A4E94  7C 08 02 A6 */	mflr r0
/* 801A4E98  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A4E9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801A4EA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801A4EA4  7C 7E 1B 78 */	mr r30, r3
/* 801A4EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A4EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A4EB0  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 801A4EB4  28 1F 00 00 */	cmplwi r31, 0
/* 801A4EB8  41 82 00 54 */	beq lbl_801A4F0C
/* 801A4EBC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 801A4EC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A4EC4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 801A4EC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A4ECC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 801A4ED0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801A4ED4  38 61 00 14 */	addi r3, r1, 0x14
/* 801A4ED8  38 80 00 00 */	li r4, 0
/* 801A4EDC  4B FF 92 61 */	bl dKy_eflight_influence_id__F4cXyzi
/* 801A4EE0  90 7E 12 A8 */	stw r3, 0x12a8(r30)
/* 801A4EE4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 801A4EE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 801A4EEC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 801A4EF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801A4EF4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 801A4EF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A4EFC  38 61 00 08 */	addi r3, r1, 8
/* 801A4F00  38 80 00 00 */	li r4, 0
/* 801A4F04  4B FF 8E 69 */	bl dKy_light_influence_id__F4cXyzi
/* 801A4F08  90 7E 12 A4 */	stw r3, 0x12a4(r30)
lbl_801A4F0C:
/* 801A4F0C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801A4F10  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801A4F14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A4F18  7C 08 03 A6 */	mtlr r0
/* 801A4F1C  38 21 00 30 */	addi r1, r1, 0x30
/* 801A4F20  4E 80 00 20 */	blr 
