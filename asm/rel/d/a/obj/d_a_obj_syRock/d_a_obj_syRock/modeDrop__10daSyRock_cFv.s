lbl_80D03384:
/* 80D03384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03388  7C 08 02 A6 */	mflr r0
/* 80D0338C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D03394  7C 7F 1B 78 */	mr r31, r3
/* 80D03398  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80D0339C  4B 31 73 31 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D033A0  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80D033A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D033A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D033AC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D033B0  4B 37 36 FD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D033B4  7F E3 FB 78 */	mr r3, r31
/* 80D033B8  48 00 03 25 */	bl bgCheck__10daSyRock_cFv
/* 80D033BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D033C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D033C4  7C 08 03 A6 */	mtlr r0
/* 80D033C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D033CC  4E 80 00 20 */	blr 
