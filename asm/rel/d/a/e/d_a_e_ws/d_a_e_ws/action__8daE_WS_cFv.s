lbl_807E58AC:
/* 807E58AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E58B0  7C 08 02 A6 */	mflr r0
/* 807E58B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E58B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807E58BC  7C 7F 1B 78 */	mr r31, r3
/* 807E58C0  38 00 00 2E */	li r0, 0x2e
/* 807E58C4  98 03 05 46 */	stb r0, 0x546(r3)
/* 807E58C8  4B FF FE 09 */	bl damage_check__8daE_WS_cFv
/* 807E58CC  38 00 00 00 */	li r0, 0
/* 807E58D0  98 1F 05 66 */	stb r0, 0x566(r31)
/* 807E58D4  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 807E58D8  2C 00 00 02 */	cmpwi r0, 2
/* 807E58DC  41 82 00 44 */	beq lbl_807E5920
/* 807E58E0  40 80 00 14 */	bge lbl_807E58F4
/* 807E58E4  2C 00 00 00 */	cmpwi r0, 0
/* 807E58E8  41 82 00 18 */	beq lbl_807E5900
/* 807E58EC  40 80 00 20 */	bge lbl_807E590C
/* 807E58F0  48 00 00 44 */	b lbl_807E5934
lbl_807E58F4:
/* 807E58F4  2C 00 00 04 */	cmpwi r0, 4
/* 807E58F8  40 80 00 3C */	bge lbl_807E5934
/* 807E58FC  48 00 00 30 */	b lbl_807E592C
lbl_807E5900:
/* 807E5900  7F E3 FB 78 */	mr r3, r31
/* 807E5904  4B FF EE 09 */	bl executeWait__8daE_WS_cFv
/* 807E5908  48 00 00 2C */	b lbl_807E5934
lbl_807E590C:
/* 807E590C  38 00 00 01 */	li r0, 1
/* 807E5910  98 1F 05 66 */	stb r0, 0x566(r31)
/* 807E5914  7F E3 FB 78 */	mr r3, r31
/* 807E5918  4B FF F1 A1 */	bl executeAttack__8daE_WS_cFv
/* 807E591C  48 00 00 18 */	b lbl_807E5934
lbl_807E5920:
/* 807E5920  7F E3 FB 78 */	mr r3, r31
/* 807E5924  4B FF F5 45 */	bl executeDown__8daE_WS_cFv
/* 807E5928  48 00 00 0C */	b lbl_807E5934
lbl_807E592C:
/* 807E592C  7F E3 FB 78 */	mr r3, r31
/* 807E5930  4B FF F9 65 */	bl executeWindDown__8daE_WS_cFv
lbl_807E5934:
/* 807E5934  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807E5938  88 1F 05 66 */	lbz r0, 0x566(r31)
/* 807E593C  7C 04 07 74 */	extsb r4, r0
/* 807E5940  30 04 FF FF */	addic r0, r4, -1
/* 807E5944  7C 00 21 10 */	subfe r0, r0, r4
/* 807E5948  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 807E594C  4B AD C2 30 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 807E5950  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 807E5954  2C 00 00 02 */	cmpwi r0, 2
/* 807E5958  41 82 00 94 */	beq lbl_807E59EC
/* 807E595C  2C 00 00 03 */	cmpwi r0, 3
/* 807E5960  41 82 00 8C */	beq lbl_807E59EC
/* 807E5964  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E5968  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E596C  A8 9F 06 6A */	lha r4, 0x66a(r31)
/* 807E5970  4B 82 6A 6C */	b mDoMtx_YrotS__FPA4_fs
/* 807E5974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E5978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E597C  A8 9F 06 68 */	lha r4, 0x668(r31)
/* 807E5980  4B 82 6A 1C */	b mDoMtx_XrotM__FPA4_fs
/* 807E5984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E5988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E598C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807E5990  4B 82 6A A4 */	b mDoMtx_YrotM__FPA4_fs
/* 807E5994  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807E5998  3C 60 80 7E */	lis r3, lit_3803@ha
/* 807E599C  C0 03 73 04 */	lfs f0, lit_3803@l(r3)
/* 807E59A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E59A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E59A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807E59AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E59B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E59B4  38 81 00 08 */	addi r4, r1, 8
/* 807E59B8  38 A1 00 14 */	addi r5, r1, 0x14
/* 807E59BC  4B B6 13 B0 */	b PSMTXMultVec
/* 807E59C0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807E59C4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 807E59C8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E59CC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807E59D0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807E59D4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 807E59D8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807E59DC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 807E59E0  7C 65 1B 78 */	mr r5, r3
/* 807E59E4  4B B6 16 AC */	b PSVECAdd
/* 807E59E8  48 00 00 10 */	b lbl_807E59F8
lbl_807E59EC:
/* 807E59EC  7F E3 FB 78 */	mr r3, r31
/* 807E59F0  38 80 00 00 */	li r4, 0
/* 807E59F4  4B 83 4C D8 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
lbl_807E59F8:
/* 807E59F8  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 807E59FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807E5A00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807E5A04  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807E5A08  4B 89 10 A4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 807E5A0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807E5A10  7C 03 07 74 */	extsb r3, r0
/* 807E5A14  4B 84 76 58 */	b dComIfGp_getReverb__Fi
/* 807E5A18  7C 65 1B 78 */	mr r5, r3
/* 807E5A1C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807E5A20  38 80 00 00 */	li r4, 0
/* 807E5A24  4B 82 B6 8C */	b play__16mDoExt_McaMorfSOFUlSc
/* 807E5A28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807E5A2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E5A30  7C 08 03 A6 */	mtlr r0
/* 807E5A34  38 21 00 30 */	addi r1, r1, 0x30
/* 807E5A38  4E 80 00 20 */	blr 
