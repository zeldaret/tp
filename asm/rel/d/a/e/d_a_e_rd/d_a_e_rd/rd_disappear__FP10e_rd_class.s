lbl_8050B2A8:
/* 8050B2A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050B2AC  7C 08 02 A6 */	mflr r0
/* 8050B2B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050B2B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8050B2B8  7C 7F 1B 78 */	mr r31, r3
/* 8050B2BC  80 63 05 D0 */	lwz r3, 0x5d0(r3)
/* 8050B2C0  80 63 00 04 */	lwz r3, 4(r3)
/* 8050B2C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8050B2C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8050B2CC  38 63 02 10 */	addi r3, r3, 0x210
/* 8050B2D0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8050B2D4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8050B2D8  80 84 00 00 */	lwz r4, 0(r4)
/* 8050B2DC  4B E3 B1 D5 */	bl PSMTXCopy
/* 8050B2E0  3C 60 80 52 */	lis r3, lit_4209@ha /* 0x80518588@ha */
/* 8050B2E4  C0 03 85 88 */	lfs f0, lit_4209@l(r3)  /* 0x80518588@l */
/* 8050B2E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050B2EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050B2F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050B2F4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8050B2F8  38 81 00 10 */	addi r4, r1, 0x10
/* 8050B2FC  4B D6 5B F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050B300  38 00 00 56 */	li r0, 0x56
/* 8050B304  B0 01 00 08 */	sth r0, 8(r1)
/* 8050B308  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8050B30C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8050B310  38 81 00 08 */	addi r4, r1, 8
/* 8050B314  4B B0 E4 E5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050B318  28 03 00 00 */	cmplwi r3, 0
/* 8050B31C  41 82 00 20 */	beq lbl_8050B33C
/* 8050B320  7F E3 FB 78 */	mr r3, r31
/* 8050B324  38 81 00 10 */	addi r4, r1, 0x10
/* 8050B328  38 A0 00 0A */	li r5, 0xa
/* 8050B32C  38 C0 00 00 */	li r6, 0
/* 8050B330  38 E0 00 33 */	li r7, 0x33
/* 8050B334  4B B1 17 A5 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8050B338  48 00 00 1C */	b lbl_8050B354
lbl_8050B33C:
/* 8050B33C  7F E3 FB 78 */	mr r3, r31
/* 8050B340  38 81 00 10 */	addi r4, r1, 0x10
/* 8050B344  38 A0 00 0A */	li r5, 0xa
/* 8050B348  38 C0 00 00 */	li r6, 0
/* 8050B34C  38 E0 00 0B */	li r7, 0xb
/* 8050B350  4B B1 17 89 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_8050B354:
/* 8050B354  7F E3 FB 78 */	mr r3, r31
/* 8050B358  4B B0 E9 25 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8050B35C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8050B360  54 04 46 3E */	srwi r4, r0, 0x18
/* 8050B364  2C 04 00 FF */	cmpwi r4, 0xff
/* 8050B368  41 82 00 18 */	beq lbl_8050B380
/* 8050B36C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050B370  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050B374  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8050B378  7C 05 07 74 */	extsb r5, r0
/* 8050B37C  4B B2 9E 85 */	bl onSwitch__10dSv_info_cFii
lbl_8050B380:
/* 8050B380  88 1F 09 BE */	lbz r0, 0x9be(r31)
/* 8050B384  7C 00 07 75 */	extsb. r0, r0
/* 8050B388  41 82 00 4C */	beq lbl_8050B3D4
/* 8050B38C  80 1F 09 8C */	lwz r0, 0x98c(r31)
/* 8050B390  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050B394  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8050B398  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050B39C  38 81 00 0C */	addi r4, r1, 0xc
/* 8050B3A0  4B B0 E4 59 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050B3A4  28 03 00 00 */	cmplwi r3, 0
/* 8050B3A8  41 82 00 2C */	beq lbl_8050B3D4
/* 8050B3AC  A0 83 06 BE */	lhz r4, 0x6be(r3)
/* 8050B3B0  88 1F 09 BE */	lbz r0, 0x9be(r31)
/* 8050B3B4  7C 00 07 74 */	extsb r0, r0
/* 8050B3B8  7C 80 00 78 */	andc r0, r4, r0
/* 8050B3BC  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 8050B3C0  A8 03 06 90 */	lha r0, 0x690(r3)
/* 8050B3C4  2C 00 00 01 */	cmpwi r0, 1
/* 8050B3C8  40 82 00 0C */	bne lbl_8050B3D4
/* 8050B3CC  38 00 00 00 */	li r0, 0
/* 8050B3D0  B0 03 06 90 */	sth r0, 0x690(r3)
lbl_8050B3D4:
/* 8050B3D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8050B3D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050B3DC  7C 08 03 A6 */	mtlr r0
/* 8050B3E0  38 21 00 30 */	addi r1, r1, 0x30
/* 8050B3E4  4E 80 00 20 */	blr 
