lbl_80CD7890:
/* 80CD7890  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CD7894  7C 08 02 A6 */	mflr r0
/* 80CD7898  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CD789C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CD78A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CD78A4  7C 7E 1B 78 */	mr r30, r3
/* 80CD78A8  3C 60 80 CE */	lis r3, l_cyl_src@ha /* 0x80CD8274@ha */
/* 80CD78AC  3B E3 82 74 */	addi r31, r3, l_cyl_src@l /* 0x80CD8274@l */
/* 80CD78B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD78B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD78B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD78BC  80 03 05 84 */	lwz r0, 0x584(r3)
/* 80CD78C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CD78C4  40 82 00 10 */	bne lbl_80CD78D4
/* 80CD78C8  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80CD78CC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CD78D0  41 82 02 28 */	beq lbl_80CD7AF8
lbl_80CD78D4:
/* 80CD78D4  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80CD78D8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD78DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD78E0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80CD78E4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CD78E8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80CD78EC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80CD78F0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CD78F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD78F8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CD78FC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80CD7900  38 61 00 14 */	addi r3, r1, 0x14
/* 80CD7904  38 81 00 20 */	addi r4, r1, 0x20
/* 80CD7908  4B 66 FA 95 */	bl PSVECSquareDistance
/* 80CD790C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CD7910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD7914  40 81 00 58 */	ble lbl_80CD796C
/* 80CD7918  FC 00 08 34 */	frsqrte f0, f1
/* 80CD791C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80CD7920  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD7924  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80CD7928  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD792C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD7930  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD7934  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD7938  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD793C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD7940  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD7944  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD7948  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD794C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD7950  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD7954  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD7958  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD795C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD7960  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD7964  FC 20 08 18 */	frsp f1, f1
/* 80CD7968  48 00 00 88 */	b lbl_80CD79F0
lbl_80CD796C:
/* 80CD796C  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80CD7970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD7974  40 80 00 10 */	bge lbl_80CD7984
/* 80CD7978  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD797C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD7980  48 00 00 70 */	b lbl_80CD79F0
lbl_80CD7984:
/* 80CD7984  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD7988  80 81 00 08 */	lwz r4, 8(r1)
/* 80CD798C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD7990  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD7994  7C 03 00 00 */	cmpw r3, r0
/* 80CD7998  41 82 00 14 */	beq lbl_80CD79AC
/* 80CD799C  40 80 00 40 */	bge lbl_80CD79DC
/* 80CD79A0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD79A4  41 82 00 20 */	beq lbl_80CD79C4
/* 80CD79A8  48 00 00 34 */	b lbl_80CD79DC
lbl_80CD79AC:
/* 80CD79AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD79B0  41 82 00 0C */	beq lbl_80CD79BC
/* 80CD79B4  38 00 00 01 */	li r0, 1
/* 80CD79B8  48 00 00 28 */	b lbl_80CD79E0
lbl_80CD79BC:
/* 80CD79BC  38 00 00 02 */	li r0, 2
/* 80CD79C0  48 00 00 20 */	b lbl_80CD79E0
lbl_80CD79C4:
/* 80CD79C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD79C8  41 82 00 0C */	beq lbl_80CD79D4
/* 80CD79CC  38 00 00 05 */	li r0, 5
/* 80CD79D0  48 00 00 10 */	b lbl_80CD79E0
lbl_80CD79D4:
/* 80CD79D4  38 00 00 03 */	li r0, 3
/* 80CD79D8  48 00 00 08 */	b lbl_80CD79E0
lbl_80CD79DC:
/* 80CD79DC  38 00 00 04 */	li r0, 4
lbl_80CD79E0:
/* 80CD79E0  2C 00 00 01 */	cmpwi r0, 1
/* 80CD79E4  40 82 00 0C */	bne lbl_80CD79F0
/* 80CD79E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD79EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CD79F0:
/* 80CD79F0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80CD79F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD79F8  40 80 01 00 */	bge lbl_80CD7AF8
/* 80CD79FC  88 7E 09 4A */	lbz r3, 0x94a(r30)
/* 80CD7A00  38 03 00 01 */	addi r0, r3, 1
/* 80CD7A04  98 1E 09 4A */	stb r0, 0x94a(r30)
/* 80CD7A08  88 1E 09 4A */	lbz r0, 0x94a(r30)
/* 80CD7A0C  28 00 00 01 */	cmplwi r0, 1
/* 80CD7A10  40 82 00 64 */	bne lbl_80CD7A74
/* 80CD7A14  38 00 00 00 */	li r0, 0
/* 80CD7A18  B0 1E 09 52 */	sth r0, 0x952(r30)
/* 80CD7A1C  38 00 09 C4 */	li r0, 0x9c4
/* 80CD7A20  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 80CD7A24  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CD7A28  7C 03 07 74 */	extsb r3, r0
/* 80CD7A2C  4B 35 56 41 */	bl dComIfGp_getReverb__Fi
/* 80CD7A30  7C 67 1B 78 */	mr r7, r3
/* 80CD7A34  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080106@ha */
/* 80CD7A38  38 03 01 06 */	addi r0, r3, 0x0106 /* 0x00080106@l */
/* 80CD7A3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CD7A40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD7A44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD7A48  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD7A4C  38 81 00 10 */	addi r4, r1, 0x10
/* 80CD7A50  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CD7A54  38 C0 00 00 */	li r6, 0
/* 80CD7A58  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80CD7A5C  FC 40 08 90 */	fmr f2, f1
/* 80CD7A60  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80CD7A64  FC 80 18 90 */	fmr f4, f3
/* 80CD7A68  39 00 00 00 */	li r8, 0
/* 80CD7A6C  4B 5D 3F 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CD7A70  48 00 00 9C */	b lbl_80CD7B0C
lbl_80CD7A74:
/* 80CD7A74  28 00 00 02 */	cmplwi r0, 2
/* 80CD7A78  40 82 00 94 */	bne lbl_80CD7B0C
/* 80CD7A7C  38 00 00 01 */	li r0, 1
/* 80CD7A80  98 1E 09 37 */	stb r0, 0x937(r30)
/* 80CD7A84  38 00 00 08 */	li r0, 8
/* 80CD7A88  98 1E 09 4C */	stb r0, 0x94c(r30)
/* 80CD7A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD7A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD7A94  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CD7A98  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CD7A9C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CD7AA0  7C 05 07 74 */	extsb r5, r0
/* 80CD7AA4  4B 35 D7 5D */	bl onSwitch__10dSv_info_cFii
/* 80CD7AA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CD7AAC  7C 03 07 74 */	extsb r3, r0
/* 80CD7AB0  4B 35 55 BD */	bl dComIfGp_getReverb__Fi
/* 80CD7AB4  7C 67 1B 78 */	mr r7, r3
/* 80CD7AB8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080107@ha */
/* 80CD7ABC  38 03 01 07 */	addi r0, r3, 0x0107 /* 0x00080107@l */
/* 80CD7AC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CD7AC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CD7AC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CD7ACC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD7AD0  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD7AD4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CD7AD8  38 C0 00 00 */	li r6, 0
/* 80CD7ADC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80CD7AE0  FC 40 08 90 */	fmr f2, f1
/* 80CD7AE4  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80CD7AE8  FC 80 18 90 */	fmr f4, f3
/* 80CD7AEC  39 00 00 00 */	li r8, 0
/* 80CD7AF0  4B 5D 3E 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CD7AF4  48 00 00 18 */	b lbl_80CD7B0C
lbl_80CD7AF8:
/* 80CD7AF8  88 1E 09 4A */	lbz r0, 0x94a(r30)
/* 80CD7AFC  28 00 00 00 */	cmplwi r0, 0
/* 80CD7B00  40 82 00 0C */	bne lbl_80CD7B0C
/* 80CD7B04  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CD7B08  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80CD7B0C:
/* 80CD7B0C  88 1E 09 4A */	lbz r0, 0x94a(r30)
/* 80CD7B10  28 00 00 02 */	cmplwi r0, 2
/* 80CD7B14  40 82 00 24 */	bne lbl_80CD7B38
/* 80CD7B18  38 7E 09 4C */	addi r3, r30, 0x94c
/* 80CD7B1C  48 00 07 25 */	bl func_80CD8240
/* 80CD7B20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD7B24  40 82 00 14 */	bne lbl_80CD7B38
/* 80CD7B28  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80CD7B2C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CD7B30  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80CD7B34  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_80CD7B38:
/* 80CD7B38  7F C3 F3 78 */	mr r3, r30
/* 80CD7B3C  38 9E 07 A4 */	addi r4, r30, 0x7a4
/* 80CD7B40  4B 34 2B 8D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CD7B44  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80CD7B48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD7B4C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD7B50  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CD7B54  4B 39 EF 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CD7B58  7F C3 F3 78 */	mr r3, r30
/* 80CD7B5C  4B FF FA 91 */	bl bg_check__14daItemShield_cFv
/* 80CD7B60  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80CD7B64  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80CD7B68  41 82 00 1C */	beq lbl_80CD7B84
/* 80CD7B6C  38 00 0F A0 */	li r0, 0xfa0
/* 80CD7B70  B0 1E 09 44 */	sth r0, 0x944(r30)
/* 80CD7B74  B0 1E 09 48 */	sth r0, 0x948(r30)
/* 80CD7B78  38 00 00 00 */	li r0, 0
/* 80CD7B7C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80CD7B80  48 00 00 68 */	b lbl_80CD7BE8
lbl_80CD7B84:
/* 80CD7B84  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80CD7B88  41 82 00 38 */	beq lbl_80CD7BC0
/* 80CD7B8C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CD7B90  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80CD7B94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CD7B98  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CD7B9C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CD7BA0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80CD7BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD7BA8  40 80 00 0C */	bge lbl_80CD7BB4
/* 80CD7BAC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CD7BB0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80CD7BB4:
/* 80CD7BB4  38 00 00 00 */	li r0, 0
/* 80CD7BB8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80CD7BBC  48 00 00 2C */	b lbl_80CD7BE8
lbl_80CD7BC0:
/* 80CD7BC0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80CD7BC4  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80CD7BC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CD7BCC  41 82 00 1C */	beq lbl_80CD7BE8
/* 80CD7BD0  88 1E 09 36 */	lbz r0, 0x936(r30)
/* 80CD7BD4  28 00 00 00 */	cmplwi r0, 0
/* 80CD7BD8  40 82 00 10 */	bne lbl_80CD7BE8
/* 80CD7BDC  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80CD7BE0  38 03 0B B8 */	addi r0, r3, 0xbb8
/* 80CD7BE4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_80CD7BE8:
/* 80CD7BE8  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80CD7BEC  4B 3A CA 6D */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80CD7BF0  28 03 00 00 */	cmplwi r3, 0
/* 80CD7BF4  41 82 00 38 */	beq lbl_80CD7C2C
/* 80CD7BF8  38 7E 08 C8 */	addi r3, r30, 0x8c8
/* 80CD7BFC  4B 3A BA 8D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80CD7C00  28 03 00 00 */	cmplwi r3, 0
/* 80CD7C04  41 82 00 28 */	beq lbl_80CD7C2C
/* 80CD7C08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD7C0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD7C10  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80CD7C14  A8 84 00 08 */	lha r4, 8(r4)
/* 80CD7C18  A8 03 00 08 */	lha r0, 8(r3)
/* 80CD7C1C  7C 00 20 00 */	cmpw r0, r4
/* 80CD7C20  40 82 00 0C */	bne lbl_80CD7C2C
/* 80CD7C24  7F C3 F3 78 */	mr r3, r30
/* 80CD7C28  48 00 00 41 */	bl initActionOrderGetDemo__14daItemShield_cFv
lbl_80CD7C2C:
/* 80CD7C2C  38 7E 09 04 */	addi r3, r30, 0x904
/* 80CD7C30  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CD7C34  4B 59 75 A9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CD7C38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD7C3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD7C40  38 63 23 3C */	addi r3, r3, 0x233c
/* 80CD7C44  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CD7C48  4B 58 CF 61 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CD7C4C  38 60 00 01 */	li r3, 1
/* 80CD7C50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CD7C54  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CD7C58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CD7C5C  7C 08 03 A6 */	mtlr r0
/* 80CD7C60  38 21 00 40 */	addi r1, r1, 0x40
/* 80CD7C64  4E 80 00 20 */	blr 
