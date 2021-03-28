lbl_80CC00AC:
/* 80CC00AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC00B0  7C 08 02 A6 */	mflr r0
/* 80CC00B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC00B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC00BC  7C 7F 1B 78 */	mr r31, r3
/* 80CC00C0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CC00C4  28 04 00 00 */	cmplwi r4, 0
/* 80CC00C8  41 82 00 14 */	beq lbl_80CC00DC
/* 80CC00CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC00D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC00D4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC00D8  4B 3B 41 78 */	b Release__4cBgSFP9dBgW_Base
lbl_80CC00DC:
/* 80CC00DC  80 9F 17 38 */	lwz r4, 0x1738(r31)
/* 80CC00E0  28 04 00 00 */	cmplwi r4, 0
/* 80CC00E4  41 82 00 20 */	beq lbl_80CC0104
/* 80CC00E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC00EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC00F0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC00F4  7F E5 FB 78 */	mr r5, r31
/* 80CC00F8  4B 3B 49 10 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CC00FC  80 7F 17 38 */	lwz r3, 0x1738(r31)
/* 80CC0100  4B 3B B8 C0 */	b Move__4dBgWFv
lbl_80CC0104:
/* 80CC0104  38 00 00 00 */	li r0, 0
/* 80CC0108  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CC010C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC0110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0114  7C 08 03 A6 */	mtlr r0
/* 80CC0118  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC011C  4E 80 00 20 */	blr 
