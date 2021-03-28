lbl_80661940:
/* 80661940  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80661944  7C 08 02 A6 */	mflr r0
/* 80661948  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066194C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80661950  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80661954  7C 7E 1B 78 */	mr r30, r3
/* 80661958  3C 80 80 66 */	lis r4, lit_3987@ha
/* 8066195C  3B E4 2D B0 */	addi r31, r4, lit_3987@l
/* 80661960  88 83 0C 68 */	lbz r4, 0xc68(r3)
/* 80661964  38 04 00 01 */	addi r0, r4, 1
/* 80661968  98 03 0C 68 */	stb r0, 0xc68(r3)
/* 8066196C  38 00 00 00 */	li r0, 0
/* 80661970  98 03 0C 62 */	stb r0, 0xc62(r3)
/* 80661974  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80661978  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8066197C  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80661980  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80661984  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80661988  90 03 05 5C */	stw r0, 0x55c(r3)
/* 8066198C  4B FF FA 61 */	bl action__7daCow_cFv
/* 80661990  88 1E 0C A6 */	lbz r0, 0xca6(r30)
/* 80661994  28 00 00 00 */	cmplwi r0, 0
/* 80661998  40 82 01 0C */	bne lbl_80661AA4
/* 8066199C  7F C3 F3 78 */	mr r3, r30
/* 806619A0  38 9E 07 E4 */	addi r4, r30, 0x7e4
/* 806619A4  4B 9B 8D 28 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806619A8  38 7E 06 0C */	addi r3, r30, 0x60c
/* 806619AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806619B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806619B4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806619B8  4B A1 50 F4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806619BC  C0 1E 06 A4 */	lfs f0, 0x6a4(r30)
/* 806619C0  D0 1E 0C 44 */	stfs f0, 0xc44(r30)
/* 806619C4  7F C3 F3 78 */	mr r3, r30
/* 806619C8  4B FF 6E 69 */	bl setEffect__7daCow_cFv
/* 806619CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806619D0  7C 03 07 74 */	extsb r3, r0
/* 806619D4  4B 9C B6 98 */	b dComIfGp_getReverb__Fi
/* 806619D8  7C 65 1B 78 */	mr r5, r3
/* 806619DC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 806619E0  38 80 00 00 */	li r4, 0
/* 806619E4  4B 9A F6 CC */	b play__16mDoExt_McaMorfSOFUlSc
/* 806619E8  88 7E 0C 9C */	lbz r3, 0xc9c(r30)
/* 806619EC  28 03 00 00 */	cmplwi r3, 0
/* 806619F0  40 82 00 48 */	bne lbl_80661A38
/* 806619F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806619F8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 806619FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80661A00  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80661A04  4B C0 5F 50 */	b cM_rndF__Ff
/* 80661A08  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80661A0C  EC 00 08 2A */	fadds f0, f0, f1
/* 80661A10  FC 00 00 1E */	fctiwz f0, f0
/* 80661A14  D8 01 00 08 */	stfd f0, 8(r1)
/* 80661A18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80661A1C  98 1E 0C 9C */	stb r0, 0xc9c(r30)
/* 80661A20  88 1E 0C 9C */	lbz r0, 0xc9c(r30)
/* 80661A24  28 00 00 50 */	cmplwi r0, 0x50
/* 80661A28  40 80 00 58 */	bge lbl_80661A80
/* 80661A2C  38 00 00 0A */	li r0, 0xa
/* 80661A30  98 1E 0C 9C */	stb r0, 0xc9c(r30)
/* 80661A34  48 00 00 4C */	b lbl_80661A80
lbl_80661A38:
/* 80661A38  38 03 FF FF */	addi r0, r3, -1
/* 80661A3C  98 1E 0C 9C */	stb r0, 0xc9c(r30)
/* 80661A40  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80661A44  38 60 00 01 */	li r3, 1
/* 80661A48  88 04 00 05 */	lbz r0, 5(r4)
/* 80661A4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80661A50  40 82 00 18 */	bne lbl_80661A68
/* 80661A54  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80661A58  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80661A5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80661A60  41 82 00 08 */	beq lbl_80661A68
/* 80661A64  38 60 00 00 */	li r3, 0
lbl_80661A68:
/* 80661A68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80661A6C  41 82 00 14 */	beq lbl_80661A80
/* 80661A70  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80661A74  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80661A78  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80661A7C  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80661A80:
/* 80661A80  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80661A84  4B 9A B9 A4 */	b play__14mDoExt_baseAnmFv
/* 80661A88  7F C3 F3 78 */	mr r3, r30
/* 80661A8C  4B FF FA F5 */	bl setMtx__7daCow_cFv
/* 80661A90  7F C3 F3 78 */	mr r3, r30
/* 80661A94  4B FF FB 59 */	bl setAttnPos__7daCow_cFv
/* 80661A98  7F C3 F3 78 */	mr r3, r30
/* 80661A9C  4B FF FC 85 */	bl setCollisions__7daCow_cFv
/* 80661AA0  48 00 00 14 */	b lbl_80661AB4
lbl_80661AA4:
/* 80661AA4  7F C3 F3 78 */	mr r3, r30
/* 80661AA8  4B FF FA D9 */	bl setMtx__7daCow_cFv
/* 80661AAC  7F C3 F3 78 */	mr r3, r30
/* 80661AB0  4B FF FB 3D */	bl setAttnPos__7daCow_cFv
lbl_80661AB4:
/* 80661AB4  38 60 00 01 */	li r3, 1
/* 80661AB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80661ABC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80661AC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80661AC4  7C 08 03 A6 */	mtlr r0
/* 80661AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80661ACC  4E 80 00 20 */	blr 
