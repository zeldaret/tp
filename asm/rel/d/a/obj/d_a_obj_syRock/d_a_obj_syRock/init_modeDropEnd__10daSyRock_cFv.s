lbl_80D03984:
/* 80D03984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D03988  7C 08 02 A6 */	mflr r0
/* 80D0398C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D03990  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D03994  7C 7F 1B 78 */	mr r31, r3
/* 80D03998  80 03 07 E8 */	lwz r0, 0x7e8(r3)
/* 80D0399C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80D039A0  40 82 00 44 */	bne lbl_80D039E4
/* 80D039A4  3C 60 80 D0 */	lis r3, lit_3807@ha
/* 80D039A8  C0 23 3F F0 */	lfs f1, lit_3807@l(r3)
/* 80D039AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D039B0  3C 60 80 D0 */	lis r3, lit_4014@ha
/* 80D039B4  C0 03 40 00 */	lfs f0, lit_4014@l(r3)
/* 80D039B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D039BC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D039C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D039C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D039C8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D039CC  3C 80 80 D0 */	lis r4, l_HIO@ha
/* 80D039D0  38 84 42 6C */	addi r4, r4, l_HIO@l
/* 80D039D4  88 84 00 25 */	lbz r4, 0x25(r4)
/* 80D039D8  38 A0 00 0F */	li r5, 0xf
/* 80D039DC  38 C1 00 08 */	addi r6, r1, 8
/* 80D039E0  4B 36 C0 44 */	b StartShock__12dVibration_cFii4cXyz
lbl_80D039E4:
/* 80D039E4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D039E8  28 04 00 00 */	cmplwi r4, 0
/* 80D039EC  41 82 00 18 */	beq lbl_80D03A04
/* 80D039F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D039F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D039F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D039FC  7F E5 FB 78 */	mr r5, r31
/* 80D03A00  4B 37 10 08 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D03A04:
/* 80D03A04  80 1F 06 08 */	lwz r0, 0x608(r31)
/* 80D03A08  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D03A0C  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80D03A10  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D03A14  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D03A18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D03A1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D03A20  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D03A24  7C 05 07 74 */	extsb r5, r0
/* 80D03A28  4B 33 17 D8 */	b onSwitch__10dSv_info_cFii
/* 80D03A2C  38 00 00 05 */	li r0, 5
/* 80D03A30  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80D03A34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D03A38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D03A3C  7C 08 03 A6 */	mtlr r0
/* 80D03A40  38 21 00 20 */	addi r1, r1, 0x20
/* 80D03A44  4E 80 00 20 */	blr 
