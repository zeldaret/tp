lbl_80CA0A2C:
/* 80CA0A2C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80CA0A30  7C 08 02 A6 */	mflr r0
/* 80CA0A34  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80CA0A38  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80CA0A3C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80CA0A40  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CA0A44  4B 6C 17 99 */	bl _savegpr_29
/* 80CA0A48  7C 7F 1B 78 */	mr r31, r3
/* 80CA0A4C  3C 60 80 CA */	lis r3, lit_3774@ha /* 0x80CA31BC@ha */
/* 80CA0A50  3B C3 31 BC */	addi r30, r3, lit_3774@l /* 0x80CA31BC@l */
/* 80CA0A54  80 1F 07 D0 */	lwz r0, 0x7d0(r31)
/* 80CA0A58  2C 00 00 00 */	cmpwi r0, 0
/* 80CA0A5C  40 82 00 1C */	bne lbl_80CA0A78
/* 80CA0A60  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA0A64  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CA0A68  80 7F 07 D0 */	lwz r3, 0x7d0(r31)
/* 80CA0A6C  38 03 00 01 */	addi r0, r3, 1
/* 80CA0A70  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80CA0A74  48 00 02 C0 */	b lbl_80CA0D34
lbl_80CA0A78:
/* 80CA0A78  2C 00 FF FF */	cmpwi r0, -1
/* 80CA0A7C  41 82 02 B8 */	beq lbl_80CA0D34
/* 80CA0A80  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CA0A84  4B 3D 71 E5 */	bl __ct__11dBgS_LinChkFv
/* 80CA0A88  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80CA0A8C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80CA0A90  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80CA0A94  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CA0A98  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80CA0A9C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CA0AA0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80CA0AA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CA0AA8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CA0AAC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CA0AB0  4B 36 C2 B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA0AB4  38 7F 07 D4 */	addi r3, r31, 0x7d4
/* 80CA0AB8  4B 36 C4 8D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA0ABC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0AC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA0AC4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CA0AC8  4B 36 B9 6D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CA0ACC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0AD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA0AD4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CA0AD8  7C 85 23 78 */	mr r5, r4
/* 80CA0ADC  4B 6A 62 91 */	bl PSMTXMultVec
/* 80CA0AE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0AE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA0AE8  38 81 00 30 */	addi r4, r1, 0x30
/* 80CA0AEC  7C 85 23 78 */	mr r5, r4
/* 80CA0AF0  4B 6A 62 7D */	bl PSMTXMultVec
/* 80CA0AF4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80CA0AF8  4B 3D 83 71 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CA0AFC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CA0B00  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CA0B04  38 A1 00 30 */	addi r5, r1, 0x30
/* 80CA0B08  38 C0 00 00 */	li r6, 0
/* 80CA0B0C  4B 3D 72 59 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CA0B10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA0B14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA0B18  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CA0B1C  7F A3 EB 78 */	mr r3, r29
/* 80CA0B20  38 81 00 5C */	addi r4, r1, 0x5c
/* 80CA0B24  4B 3D 38 91 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80CA0B28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA0B2C  41 82 01 8C */	beq lbl_80CA0CB8
/* 80CA0B30  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha /* 0x80CA3468@ha */
/* 80CA0B34  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CA3468@l */
/* 80CA0B38  90 01 00 58 */	stw r0, 0x58(r1)
/* 80CA0B3C  7F A3 EB 78 */	mr r3, r29
/* 80CA0B40  38 81 00 70 */	addi r4, r1, 0x70
/* 80CA0B44  38 A1 00 48 */	addi r5, r1, 0x48
/* 80CA0B48  4B 3D 3B FD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CA0B4C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA0B50  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CA0B54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CA0B58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CA0B5C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CA0B60  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CA0B64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CA0B68  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CA0B6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CA0B70  38 61 00 24 */	addi r3, r1, 0x24
/* 80CA0B74  38 81 00 18 */	addi r4, r1, 0x18
/* 80CA0B78  4B 6A 68 25 */	bl PSVECSquareDistance
/* 80CA0B7C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA0B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA0B84  40 81 00 58 */	ble lbl_80CA0BDC
/* 80CA0B88  FC 00 08 34 */	frsqrte f0, f1
/* 80CA0B8C  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80CA0B90  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA0B94  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80CA0B98  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA0B9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA0BA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA0BA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA0BA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA0BAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA0BB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA0BB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA0BB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA0BBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA0BC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA0BC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA0BC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA0BCC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA0BD0  FF E1 00 32 */	fmul f31, f1, f0
/* 80CA0BD4  FF E0 F8 18 */	frsp f31, f31
/* 80CA0BD8  48 00 00 90 */	b lbl_80CA0C68
lbl_80CA0BDC:
/* 80CA0BDC  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 80CA0BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA0BE4  40 80 00 10 */	bge lbl_80CA0BF4
/* 80CA0BE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CA0BEC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CA0BF0  48 00 00 78 */	b lbl_80CA0C68
lbl_80CA0BF4:
/* 80CA0BF4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CA0BF8  80 81 00 08 */	lwz r4, 8(r1)
/* 80CA0BFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CA0C00  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CA0C04  7C 03 00 00 */	cmpw r3, r0
/* 80CA0C08  41 82 00 14 */	beq lbl_80CA0C1C
/* 80CA0C0C  40 80 00 40 */	bge lbl_80CA0C4C
/* 80CA0C10  2C 03 00 00 */	cmpwi r3, 0
/* 80CA0C14  41 82 00 20 */	beq lbl_80CA0C34
/* 80CA0C18  48 00 00 34 */	b lbl_80CA0C4C
lbl_80CA0C1C:
/* 80CA0C1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA0C20  41 82 00 0C */	beq lbl_80CA0C2C
/* 80CA0C24  38 00 00 01 */	li r0, 1
/* 80CA0C28  48 00 00 28 */	b lbl_80CA0C50
lbl_80CA0C2C:
/* 80CA0C2C  38 00 00 02 */	li r0, 2
/* 80CA0C30  48 00 00 20 */	b lbl_80CA0C50
lbl_80CA0C34:
/* 80CA0C34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA0C38  41 82 00 0C */	beq lbl_80CA0C44
/* 80CA0C3C  38 00 00 05 */	li r0, 5
/* 80CA0C40  48 00 00 10 */	b lbl_80CA0C50
lbl_80CA0C44:
/* 80CA0C44  38 00 00 03 */	li r0, 3
/* 80CA0C48  48 00 00 08 */	b lbl_80CA0C50
lbl_80CA0C4C:
/* 80CA0C4C  38 00 00 04 */	li r0, 4
lbl_80CA0C50:
/* 80CA0C50  2C 00 00 01 */	cmpwi r0, 1
/* 80CA0C54  40 82 00 10 */	bne lbl_80CA0C64
/* 80CA0C58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CA0C5C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CA0C60  48 00 00 08 */	b lbl_80CA0C68
lbl_80CA0C64:
/* 80CA0C64  FF E0 08 90 */	fmr f31, f1
lbl_80CA0C68:
/* 80CA0C68  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80CA0C6C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CA0C70  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80CA0C74  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CA0C78  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80CA0C7C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CA0C80  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80CA0C84  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80CA0C88  4B 5C 69 ED */	bl cM_atan2s__Fff
/* 80CA0C8C  B0 7F 07 DA */	sth r3, 0x7da(r31)
/* 80CA0C90  B0 7F 07 D4 */	sth r3, 0x7d4(r31)
/* 80CA0C94  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80CA0C98  FC 40 F8 90 */	fmr f2, f31
/* 80CA0C9C  4B 5C 69 D9 */	bl cM_atan2s__Fff
/* 80CA0CA0  7C 03 00 D0 */	neg r0, r3
/* 80CA0CA4  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80CA0CA8  B0 1F 07 D8 */	sth r0, 0x7d8(r31)
/* 80CA0CAC  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha /* 0x80CA3468@ha */
/* 80CA0CB0  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CA3468@l */
/* 80CA0CB4  90 01 00 58 */	stw r0, 0x58(r1)
lbl_80CA0CB8:
/* 80CA0CB8  7F E3 FB 78 */	mr r3, r31
/* 80CA0CBC  48 00 00 E1 */	bl nan_WalkAnm__10daObjNAN_cFv
/* 80CA0CC0  98 7F 07 FC */	stb r3, 0x7fc(r31)
/* 80CA0CC4  88 1F 07 FC */	lbz r0, 0x7fc(r31)
/* 80CA0CC8  28 00 00 00 */	cmplwi r0, 0
/* 80CA0CCC  40 82 00 48 */	bne lbl_80CA0D14
/* 80CA0CD0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80CA0CD4  A8 9F 07 E4 */	lha r4, 0x7e4(r31)
/* 80CA0CD8  38 A0 00 40 */	li r5, 0x40
/* 80CA0CDC  4B 5C FE B5 */	bl cLib_chaseAngleS__FPsss
/* 80CA0CE0  2C 03 00 00 */	cmpwi r3, 0
/* 80CA0CE4  41 82 00 30 */	beq lbl_80CA0D14
/* 80CA0CE8  3C 60 80 CA */	lis r3, lit_3924@ha /* 0x80CA3310@ha */
/* 80CA0CEC  38 83 33 10 */	addi r4, r3, lit_3924@l /* 0x80CA3310@l */
/* 80CA0CF0  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA0CF4  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA0CF8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80CA0CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA0D00  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA0D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0D08  7F E3 FB 78 */	mr r3, r31
/* 80CA0D0C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CA0D10  4B FF F8 C5 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
lbl_80CA0D14:
/* 80CA0D14  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80CA0D18  28 00 00 00 */	cmplwi r0, 0
/* 80CA0D1C  41 82 00 0C */	beq lbl_80CA0D28
/* 80CA0D20  7F E3 FB 78 */	mr r3, r31
/* 80CA0D24  48 00 0E 2D */	bl nan_setParticle__10daObjNAN_cFv
lbl_80CA0D28:
/* 80CA0D28  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CA0D2C  38 80 FF FF */	li r4, -1
/* 80CA0D30  4B 3D 6F AD */	bl __dt__11dBgS_LinChkFv
lbl_80CA0D34:
/* 80CA0D34  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80CA0D38  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80CA0D3C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CA0D40  4B 6C 14 E9 */	bl _restgpr_29
/* 80CA0D44  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80CA0D48  7C 08 03 A6 */	mtlr r0
/* 80CA0D4C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80CA0D50  4E 80 00 20 */	blr 
