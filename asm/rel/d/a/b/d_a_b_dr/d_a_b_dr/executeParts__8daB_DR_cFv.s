lbl_805C39D8:
/* 805C39D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C39DC  7C 08 02 A6 */	mflr r0
/* 805C39E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C39E4  39 61 00 50 */	addi r11, r1, 0x50
/* 805C39E8  4B D9 E7 F5 */	bl _savegpr_29
/* 805C39EC  7C 7E 1B 78 */	mr r30, r3
/* 805C39F0  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805C39F4  3B E3 6C 74 */	addi r31, r3, lit_3800@l /* 0x805C6C74@l */
/* 805C39F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C39FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C3A00  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 805C3A04  80 1E 07 0C */	lwz r0, 0x70c(r30)
/* 805C3A08  28 00 00 0B */	cmplwi r0, 0xb
/* 805C3A0C  41 81 02 8C */	bgt lbl_805C3C98
/* 805C3A10  3C 60 80 5C */	lis r3, lit_7559@ha /* 0x805C773C@ha */
/* 805C3A14  38 63 77 3C */	addi r3, r3, lit_7559@l /* 0x805C773C@l */
/* 805C3A18  54 00 10 3A */	slwi r0, r0, 2
/* 805C3A1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805C3A20  7C 09 03 A6 */	mtctr r0
/* 805C3A24  4E 80 04 20 */	bctr 
lbl_805C3A28:
/* 805C3A28  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C3A2C  4B CA 3F 29 */	bl cM_rndF__Ff
/* 805C3A30  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805C3A34  EC 00 08 2A */	fadds f0, f0, f1
/* 805C3A38  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805C3A3C  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 805C3A40  4B CA 3F 4D */	bl cM_rndFX__Ff
/* 805C3A44  FC 00 08 1E */	fctiwz f0, f1
/* 805C3A48  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805C3A4C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 805C3A50  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805C3A54  7C 00 1A 14 */	add r0, r0, r3
/* 805C3A58  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805C3A5C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805C3A60  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805C3A64  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C3A68  4B CA 3F 25 */	bl cM_rndFX__Ff
/* 805C3A6C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 805C3A70  EC 00 08 2A */	fadds f0, f0, f1
/* 805C3A74  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805C3A78  C0 3F 03 B4 */	lfs f1, 0x3b4(r31)
/* 805C3A7C  4B CA 3E D9 */	bl cM_rndF__Ff
/* 805C3A80  FC 00 08 1E */	fctiwz f0, f1
/* 805C3A84  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805C3A88  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805C3A8C  B0 1E 07 52 */	sth r0, 0x752(r30)
/* 805C3A90  38 00 00 64 */	li r0, 0x64
/* 805C3A94  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 805C3A98  C0 1F 04 4C */	lfs f0, 0x44c(r31)
/* 805C3A9C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 805C3AA0  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 805C3AA4  38 03 00 01 */	addi r0, r3, 1
/* 805C3AA8  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 805C3AAC  48 00 01 EC */	b lbl_805C3C98
lbl_805C3AB0:
/* 805C3AB0  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 805C3AB4  A8 1E 07 52 */	lha r0, 0x752(r30)
/* 805C3AB8  7C 03 02 14 */	add r0, r3, r0
/* 805C3ABC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 805C3AC0  80 1E 08 5C */	lwz r0, 0x85c(r30)
/* 805C3AC4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805C3AC8  40 82 00 20 */	bne lbl_805C3AE8
/* 805C3ACC  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805C3AD0  48 00 31 0D */	bl func_805C6BDC
/* 805C3AD4  2C 03 00 00 */	cmpwi r3, 0
/* 805C3AD8  40 82 01 C0 */	bne lbl_805C3C98
/* 805C3ADC  7F C3 F3 78 */	mr r3, r30
/* 805C3AE0  4B A5 61 9D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 805C3AE4  48 00 01 B4 */	b lbl_805C3C98
lbl_805C3AE8:
/* 805C3AE8  A8 1E 07 52 */	lha r0, 0x752(r30)
/* 805C3AEC  54 00 08 3C */	slwi r0, r0, 1
/* 805C3AF0  B0 1E 07 52 */	sth r0, 0x752(r30)
/* 805C3AF4  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 805C3AF8  38 03 00 01 */	addi r0, r3, 1
/* 805C3AFC  90 1E 07 0C */	stw r0, 0x70c(r30)
lbl_805C3B00:
/* 805C3B00  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 805C3B04  A8 1E 07 52 */	lha r0, 0x752(r30)
/* 805C3B08  7C 03 02 14 */	add r0, r3, r0
/* 805C3B0C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 805C3B10  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805C3B14  C0 3F 03 78 */	lfs f1, 0x378(r31)
/* 805C3B18  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805C3B1C  4B CA BF 65 */	bl cLib_addCalc0__FPfff
/* 805C3B20  38 7E 07 52 */	addi r3, r30, 0x752
/* 805C3B24  38 80 00 00 */	li r4, 0
/* 805C3B28  38 A0 00 08 */	li r5, 8
/* 805C3B2C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805C3B30  FC 00 00 1E */	fctiwz f0, f0
/* 805C3B34  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805C3B38  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 805C3B3C  4B CA CA CD */	bl cLib_addCalcAngleS2__FPssss
/* 805C3B40  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 805C3B44  C0 1F 04 50 */	lfs f0, 0x450(r31)
/* 805C3B48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C3B4C  41 81 01 4C */	bgt lbl_805C3C98
/* 805C3B50  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C3B54  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805C3B58  38 00 00 0A */	li r0, 0xa
/* 805C3B5C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 805C3B60  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 805C3B64  38 03 00 01 */	addi r0, r3, 1
/* 805C3B68  90 1E 07 0C */	stw r0, 0x70c(r30)
lbl_805C3B6C:
/* 805C3B6C  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805C3B70  48 00 30 6D */	bl func_805C6BDC
/* 805C3B74  2C 03 00 00 */	cmpwi r3, 0
/* 805C3B78  40 82 01 20 */	bne lbl_805C3C98
/* 805C3B7C  7F C3 F3 78 */	mr r3, r30
/* 805C3B80  4B FF 84 41 */	bl setDeathLightEffect__8daB_DR_cFv
/* 805C3B84  7F C3 F3 78 */	mr r3, r30
/* 805C3B88  4B A5 60 F5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 805C3B8C  48 00 01 0C */	b lbl_805C3C98
lbl_805C3B90:
/* 805C3B90  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C3B94  4B CA 3D C1 */	bl cM_rndF__Ff
/* 805C3B98  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 805C3B9C  EC 00 08 2A */	fadds f0, f0, f1
/* 805C3BA0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805C3BA4  38 00 00 32 */	li r0, 0x32
/* 805C3BA8  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 805C3BAC  C0 3F 04 54 */	lfs f1, 0x454(r31)
/* 805C3BB0  4B CA 3D DD */	bl cM_rndFX__Ff
/* 805C3BB4  FC 00 08 1E */	fctiwz f0, f1
/* 805C3BB8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805C3BBC  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 805C3BC0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 805C3BC4  7C 00 1A 14 */	add r0, r0, r3
/* 805C3BC8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 805C3BCC  38 61 00 08 */	addi r3, r1, 8
/* 805C3BD0  38 9D 00 E4 */	addi r4, r29, 0xe4
/* 805C3BD4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805C3BD8  4B CA 2F 5D */	bl __mi__4cXyzCFRC3Vec
/* 805C3BDC  C0 01 00 08 */	lfs f0, 8(r1)
/* 805C3BE0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C3BE4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805C3BE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C3BEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C3BF0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C3BF4  38 61 00 20 */	addi r3, r1, 0x20
/* 805C3BF8  4B CA 35 31 */	bl atan2sX_Z__4cXyzCFv
/* 805C3BFC  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 805C3C00  C0 3F 04 54 */	lfs f1, 0x454(r31)
/* 805C3C04  4B CA 3D 89 */	bl cM_rndFX__Ff
/* 805C3C08  FC 00 08 1E */	fctiwz f0, f1
/* 805C3C0C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805C3C10  80 61 00 34 */	lwz r3, 0x34(r1)
/* 805C3C14  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805C3C18  7C 00 1A 14 */	add r0, r0, r3
/* 805C3C1C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805C3C20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805C3C24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805C3C28  80 63 00 00 */	lwz r3, 0(r3)
/* 805C3C2C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805C3C30  4B A4 87 AD */	bl mDoMtx_YrotS__FPA4_fs
/* 805C3C34  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805C3C38  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805C3C3C  80 63 00 00 */	lwz r3, 0(r3)
/* 805C3C40  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805C3C44  4B A4 87 59 */	bl mDoMtx_XrotM__FPA4_fs
/* 805C3C48  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C3C4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C3C50  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C3C54  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805C3C58  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C3C5C  38 61 00 20 */	addi r3, r1, 0x20
/* 805C3C60  38 81 00 14 */	addi r4, r1, 0x14
/* 805C3C64  4B CA D2 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805C3C68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C3C6C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805C3C70  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 805C3C74  38 03 00 01 */	addi r0, r3, 1
/* 805C3C78  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 805C3C7C  48 00 00 1C */	b lbl_805C3C98
lbl_805C3C80:
/* 805C3C80  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805C3C84  48 00 2F 59 */	bl func_805C6BDC
/* 805C3C88  2C 03 00 00 */	cmpwi r3, 0
/* 805C3C8C  40 82 00 0C */	bne lbl_805C3C98
/* 805C3C90  7F C3 F3 78 */	mr r3, r30
/* 805C3C94  4B A5 5F E9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805C3C98:
/* 805C3C98  39 61 00 50 */	addi r11, r1, 0x50
/* 805C3C9C  4B D9 E5 8D */	bl _restgpr_29
/* 805C3CA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C3CA4  7C 08 03 A6 */	mtlr r0
/* 805C3CA8  38 21 00 50 */	addi r1, r1, 0x50
/* 805C3CAC  4E 80 00 20 */	blr 
