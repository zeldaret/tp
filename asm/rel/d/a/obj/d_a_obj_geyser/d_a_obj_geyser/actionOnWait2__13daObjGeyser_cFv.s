lbl_80BF787C:
/* 80BF787C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BF7880  7C 08 02 A6 */	mflr r0
/* 80BF7884  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BF7888  39 61 00 70 */	addi r11, r1, 0x70
/* 80BF788C  4B 76 A9 50 */	b _savegpr_29
/* 80BF7890  7C 7E 1B 78 */	mr r30, r3
/* 80BF7894  3C 80 80 C0 */	lis r4, l_dzb@ha
/* 80BF7898  3B E4 8F E8 */	addi r31, r4, l_dzb@l
/* 80BF789C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BF78A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BF78A4  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80BF78A8  A0 03 07 66 */	lhz r0, 0x766(r3)
/* 80BF78AC  54 00 C7 3F */	rlwinm. r0, r0, 0x18, 0x1c, 0x1f
/* 80BF78B0  40 82 00 5C */	bne lbl_80BF790C
/* 80BF78B4  7F A4 EB 78 */	mr r4, r29
/* 80BF78B8  4B 42 2F 28 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BF78BC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BF78C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF78C4  40 80 00 18 */	bge lbl_80BF78DC
/* 80BF78C8  7F C3 F3 78 */	mr r3, r30
/* 80BF78CC  48 00 11 89 */	bl stopEmitterPre00__13daObjGeyser_cFv
/* 80BF78D0  7F C3 F3 78 */	mr r3, r30
/* 80BF78D4  48 00 03 81 */	bl actionOn2Init__13daObjGeyser_cFv
/* 80BF78D8  48 00 03 00 */	b lbl_80BF7BD8
lbl_80BF78DC:
/* 80BF78DC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BF78E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF78E4  40 81 02 F4 */	ble lbl_80BF7BD8
/* 80BF78E8  7F C3 F3 78 */	mr r3, r30
/* 80BF78EC  48 00 11 69 */	bl stopEmitterPre00__13daObjGeyser_cFv
/* 80BF78F0  7F C3 F3 78 */	mr r3, r30
/* 80BF78F4  48 00 11 8D */	bl stopEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF78F8  7F C3 F3 78 */	mr r3, r30
/* 80BF78FC  48 00 11 B1 */	bl stopEmitterSrc01Smk__13daObjGeyser_cFv
/* 80BF7900  7F C3 F3 78 */	mr r3, r30
/* 80BF7904  4B FF FC B5 */	bl actionOff2Init__13daObjGeyser_cFv
/* 80BF7908  48 00 02 D0 */	b lbl_80BF7BD8
lbl_80BF790C:
/* 80BF790C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF7910  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BF7914  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BF7918  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BF791C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BF7920  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BF7924  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BF7928  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF792C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BF7930  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF7934  4B 41 54 30 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BF7938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF793C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF7940  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BF7944  4B 41 4A F0 */	b mDoMtx_YrotM__FPA4_fs
/* 80BF7948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF794C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF7950  38 81 00 24 */	addi r4, r1, 0x24
/* 80BF7954  7C 85 23 78 */	mr r5, r4
/* 80BF7958  4B 74 F4 14 */	b PSMTXMultVec
/* 80BF795C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF7960  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF7964  38 81 00 30 */	addi r4, r1, 0x30
/* 80BF7968  7C 85 23 78 */	mr r5, r4
/* 80BF796C  4B 74 F4 00 */	b PSMTXMultVec
/* 80BF7970  3C 60 80 C0 */	lis r3, __vt__8cM3dGLin@ha
/* 80BF7974  38 03 92 0C */	addi r0, r3, __vt__8cM3dGLin@l
/* 80BF7978  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BF797C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BF7980  38 81 00 30 */	addi r4, r1, 0x30
/* 80BF7984  38 A1 00 24 */	addi r5, r1, 0x24
/* 80BF7988  4B 67 79 60 */	b SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80BF798C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BF7990  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BF7994  38 A1 00 18 */	addi r5, r1, 0x18
/* 80BF7998  38 C1 00 14 */	addi r6, r1, 0x14
/* 80BF799C  4B 67 0D 74 */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80BF79A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF79A4  41 82 01 0C */	beq lbl_80BF7AB0
/* 80BF79A8  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 80BF79AC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF79B0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF79B4  40 81 00 58 */	ble lbl_80BF7A0C
/* 80BF79B8  FC 00 20 34 */	frsqrte f0, f4
/* 80BF79BC  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BF79C0  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF79C4  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 80BF79C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF79CC  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF79D0  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF79D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF79D8  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF79DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF79E0  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF79E4  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF79E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF79EC  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF79F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF79F4  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF79F8  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF79FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7A00  FC 84 00 32 */	fmul f4, f4, f0
/* 80BF7A04  FC 80 20 18 */	frsp f4, f4
/* 80BF7A08  48 00 00 88 */	b lbl_80BF7A90
lbl_80BF7A0C:
/* 80BF7A0C  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BF7A10  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7A14  40 80 00 10 */	bge lbl_80BF7A24
/* 80BF7A18  3C 80 80 45 */	lis r4, __float_nan@ha
/* 80BF7A1C  C0 84 0A E0 */	lfs f4, __float_nan@l(r4)
/* 80BF7A20  48 00 00 70 */	b lbl_80BF7A90
lbl_80BF7A24:
/* 80BF7A24  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80BF7A28  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80BF7A2C  54 A4 00 50 */	rlwinm r4, r5, 0, 1, 8
/* 80BF7A30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BF7A34  7C 04 00 00 */	cmpw r4, r0
/* 80BF7A38  41 82 00 14 */	beq lbl_80BF7A4C
/* 80BF7A3C  40 80 00 40 */	bge lbl_80BF7A7C
/* 80BF7A40  2C 04 00 00 */	cmpwi r4, 0
/* 80BF7A44  41 82 00 20 */	beq lbl_80BF7A64
/* 80BF7A48  48 00 00 34 */	b lbl_80BF7A7C
lbl_80BF7A4C:
/* 80BF7A4C  54 A0 02 7F */	clrlwi. r0, r5, 9
/* 80BF7A50  41 82 00 0C */	beq lbl_80BF7A5C
/* 80BF7A54  38 00 00 01 */	li r0, 1
/* 80BF7A58  48 00 00 28 */	b lbl_80BF7A80
lbl_80BF7A5C:
/* 80BF7A5C  38 00 00 02 */	li r0, 2
/* 80BF7A60  48 00 00 20 */	b lbl_80BF7A80
lbl_80BF7A64:
/* 80BF7A64  54 A0 02 7F */	clrlwi. r0, r5, 9
/* 80BF7A68  41 82 00 0C */	beq lbl_80BF7A74
/* 80BF7A6C  38 00 00 05 */	li r0, 5
/* 80BF7A70  48 00 00 10 */	b lbl_80BF7A80
lbl_80BF7A74:
/* 80BF7A74  38 00 00 03 */	li r0, 3
/* 80BF7A78  48 00 00 08 */	b lbl_80BF7A80
lbl_80BF7A7C:
/* 80BF7A7C  38 00 00 04 */	li r0, 4
lbl_80BF7A80:
/* 80BF7A80  2C 00 00 01 */	cmpwi r0, 1
/* 80BF7A84  40 82 00 0C */	bne lbl_80BF7A90
/* 80BF7A88  3C 80 80 45 */	lis r4, __float_nan@ha
/* 80BF7A8C  C0 84 0A E0 */	lfs f4, __float_nan@l(r4)
lbl_80BF7A90:
/* 80BF7A90  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BF7A94  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7A98  40 80 00 18 */	bge lbl_80BF7AB0
/* 80BF7A9C  7F C3 F3 78 */	mr r3, r30
/* 80BF7AA0  48 00 0F B5 */	bl stopEmitterPre00__13daObjGeyser_cFv
/* 80BF7AA4  7F C3 F3 78 */	mr r3, r30
/* 80BF7AA8  48 00 01 AD */	bl actionOn2Init__13daObjGeyser_cFv
/* 80BF7AAC  48 00 01 20 */	b lbl_80BF7BCC
lbl_80BF7AB0:
/* 80BF7AB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF7AB4  41 82 00 F8 */	beq lbl_80BF7BAC
/* 80BF7AB8  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 80BF7ABC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF7AC0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7AC4  40 81 00 58 */	ble lbl_80BF7B1C
/* 80BF7AC8  FC 00 20 34 */	frsqrte f0, f4
/* 80BF7ACC  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BF7AD0  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7AD4  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 80BF7AD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7ADC  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7AE0  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7AE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7AE8  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7AEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7AF0  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7AF4  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7AF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7AFC  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7B00  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7B04  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7B08  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF7B0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7B10  FC 84 00 32 */	fmul f4, f4, f0
/* 80BF7B14  FC 80 20 18 */	frsp f4, f4
/* 80BF7B18  48 00 00 88 */	b lbl_80BF7BA0
lbl_80BF7B1C:
/* 80BF7B1C  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BF7B20  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7B24  40 80 00 10 */	bge lbl_80BF7B34
/* 80BF7B28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BF7B2C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80BF7B30  48 00 00 70 */	b lbl_80BF7BA0
lbl_80BF7B34:
/* 80BF7B34  D0 81 00 08 */	stfs f4, 8(r1)
/* 80BF7B38  80 81 00 08 */	lwz r4, 8(r1)
/* 80BF7B3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BF7B40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BF7B44  7C 03 00 00 */	cmpw r3, r0
/* 80BF7B48  41 82 00 14 */	beq lbl_80BF7B5C
/* 80BF7B4C  40 80 00 40 */	bge lbl_80BF7B8C
/* 80BF7B50  2C 03 00 00 */	cmpwi r3, 0
/* 80BF7B54  41 82 00 20 */	beq lbl_80BF7B74
/* 80BF7B58  48 00 00 34 */	b lbl_80BF7B8C
lbl_80BF7B5C:
/* 80BF7B5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF7B60  41 82 00 0C */	beq lbl_80BF7B6C
/* 80BF7B64  38 00 00 01 */	li r0, 1
/* 80BF7B68  48 00 00 28 */	b lbl_80BF7B90
lbl_80BF7B6C:
/* 80BF7B6C  38 00 00 02 */	li r0, 2
/* 80BF7B70  48 00 00 20 */	b lbl_80BF7B90
lbl_80BF7B74:
/* 80BF7B74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF7B78  41 82 00 0C */	beq lbl_80BF7B84
/* 80BF7B7C  38 00 00 05 */	li r0, 5
/* 80BF7B80  48 00 00 10 */	b lbl_80BF7B90
lbl_80BF7B84:
/* 80BF7B84  38 00 00 03 */	li r0, 3
/* 80BF7B88  48 00 00 08 */	b lbl_80BF7B90
lbl_80BF7B8C:
/* 80BF7B8C  38 00 00 04 */	li r0, 4
lbl_80BF7B90:
/* 80BF7B90  2C 00 00 01 */	cmpwi r0, 1
/* 80BF7B94  40 82 00 0C */	bne lbl_80BF7BA0
/* 80BF7B98  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BF7B9C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80BF7BA0:
/* 80BF7BA0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF7BA4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7BA8  40 81 00 24 */	ble lbl_80BF7BCC
lbl_80BF7BAC:
/* 80BF7BAC  7F C3 F3 78 */	mr r3, r30
/* 80BF7BB0  48 00 0E A5 */	bl stopEmitterPre00__13daObjGeyser_cFv
/* 80BF7BB4  7F C3 F3 78 */	mr r3, r30
/* 80BF7BB8  48 00 0E C9 */	bl stopEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF7BBC  7F C3 F3 78 */	mr r3, r30
/* 80BF7BC0  48 00 0E ED */	bl stopEmitterSrc01Smk__13daObjGeyser_cFv
/* 80BF7BC4  7F C3 F3 78 */	mr r3, r30
/* 80BF7BC8  4B FF F9 F1 */	bl actionOff2Init__13daObjGeyser_cFv
lbl_80BF7BCC:
/* 80BF7BCC  3C 60 80 C0 */	lis r3, __vt__8cM3dGLin@ha
/* 80BF7BD0  38 03 92 0C */	addi r0, r3, __vt__8cM3dGLin@l
/* 80BF7BD4  90 01 00 54 */	stw r0, 0x54(r1)
lbl_80BF7BD8:
/* 80BF7BD8  38 7E 07 30 */	addi r3, r30, 0x730
/* 80BF7BDC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF7BE0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80BF7BE4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80BF7BE8  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BF7BEC  4B 67 8B 54 */	b cLib_chaseF__FPfff
/* 80BF7BF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BF7BF4  7C 03 07 74 */	extsb r3, r0
/* 80BF7BF8  4B 43 54 74 */	b dComIfGp_getReverb__Fi
/* 80BF7BFC  7C 67 1B 78 */	mr r7, r3
/* 80BF7C00  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080088@ha */
/* 80BF7C04  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00080088@l */
/* 80BF7C08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BF7C0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BF7C10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BF7C14  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF7C18  38 81 00 10 */	addi r4, r1, 0x10
/* 80BF7C1C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BF7C20  38 C0 00 00 */	li r6, 0
/* 80BF7C24  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BF7C28  FC 40 08 90 */	fmr f2, f1
/* 80BF7C2C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80BF7C30  FC 80 18 90 */	fmr f4, f3
/* 80BF7C34  39 00 00 00 */	li r8, 0
/* 80BF7C38  4B 6B 48 D4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF7C3C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BF7C40  4B 76 A5 E8 */	b _restgpr_29
/* 80BF7C44  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BF7C48  7C 08 03 A6 */	mtlr r0
/* 80BF7C4C  38 21 00 70 */	addi r1, r1, 0x70
/* 80BF7C50  4E 80 00 20 */	blr 
