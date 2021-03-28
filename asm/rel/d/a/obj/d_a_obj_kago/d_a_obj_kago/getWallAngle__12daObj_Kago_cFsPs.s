lbl_80C33620:
/* 80C33620  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C33624  7C 08 02 A6 */	mflr r0
/* 80C33628  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C3362C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C33630  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C33634  39 61 00 70 */	addi r11, r1, 0x70
/* 80C33638  4B 72 EB 94 */	b _savegpr_25
/* 80C3363C  7C 79 1B 78 */	mr r25, r3
/* 80C33640  7C BA 2B 78 */	mr r26, r5
/* 80C33644  3C 60 80 C3 */	lis r3, m__18daObj_Kago_Param_c@ha
/* 80C33648  3B A3 3C 80 */	addi r29, r3, m__18daObj_Kago_Param_c@l
/* 80C3364C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C33650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C33654  4B 3D 8D 88 */	b mDoMtx_YrotS__FPA4_fs
/* 80C33658  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80C3365C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C33660  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C33664  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80C33668  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C3366C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C33670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C33674  38 81 00 14 */	addi r4, r1, 0x14
/* 80C33678  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C3367C  4B 71 36 F0 */	b PSMTXMultVec
/* 80C33680  38 61 00 20 */	addi r3, r1, 0x20
/* 80C33684  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80C33688  7C 65 1B 78 */	mr r5, r3
/* 80C3368C  4B 71 3A 04 */	b PSVECAdd
/* 80C33690  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 80C33694  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C33698  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80C3369C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C336A0  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80C336A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C336A8  3B 60 00 00 */	li r27, 0
/* 80C336AC  3B E0 00 00 */	li r31, 0
/* 80C336B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C336B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C336B8  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C336BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C336C0  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80C336C4  C3 FD 01 04 */	lfs f31, 0x104(r29)
lbl_80C336C8:
/* 80C336C8  7F C3 F3 78 */	mr r3, r30
/* 80C336CC  38 81 00 14 */	addi r4, r1, 0x14
/* 80C336D0  3B A1 00 2C */	addi r29, r1, 0x2c
/* 80C336D4  7F BD FA 14 */	add r29, r29, r31
/* 80C336D8  7F A5 EB 78 */	mr r5, r29
/* 80C336DC  4B 71 36 90 */	b PSMTXMultVec
/* 80C336E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C336E4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80C336E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C336EC  7F A3 EB 78 */	mr r3, r29
/* 80C336F0  38 81 00 20 */	addi r4, r1, 0x20
/* 80C336F4  7F A5 EB 78 */	mr r5, r29
/* 80C336F8  4B 71 39 98 */	b PSVECAdd
/* 80C336FC  38 79 0A 9C */	addi r3, r25, 0xa9c
/* 80C33700  38 81 00 20 */	addi r4, r1, 0x20
/* 80C33704  7F A5 EB 78 */	mr r5, r29
/* 80C33708  7F 26 CB 78 */	mr r6, r25
/* 80C3370C  4B 44 46 58 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C33710  7F 83 E3 78 */	mr r3, r28
/* 80C33714  38 99 0A 9C */	addi r4, r25, 0xa9c
/* 80C33718  4B 44 0C 9C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C3371C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C33720  41 82 00 20 */	beq lbl_80C33740
/* 80C33724  C0 19 0A CC */	lfs f0, 0xacc(r25)
/* 80C33728  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80C3372C  C0 19 0A D0 */	lfs f0, 0xad0(r25)
/* 80C33730  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80C33734  C0 19 0A D4 */	lfs f0, 0xad4(r25)
/* 80C33738  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80C3373C  48 00 00 0C */	b lbl_80C33748
lbl_80C33740:
/* 80C33740  38 60 00 00 */	li r3, 0
/* 80C33744  48 00 00 4C */	b lbl_80C33790
lbl_80C33748:
/* 80C33748  3B 7B 00 01 */	addi r27, r27, 1
/* 80C3374C  2C 1B 00 02 */	cmpwi r27, 2
/* 80C33750  3B FF 00 0C */	addi r31, r31, 0xc
/* 80C33754  41 80 FF 74 */	blt lbl_80C336C8
/* 80C33758  38 61 00 08 */	addi r3, r1, 8
/* 80C3375C  38 81 00 38 */	addi r4, r1, 0x38
/* 80C33760  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C33764  4B 63 33 D0 */	b __mi__4cXyzCFRC3Vec
/* 80C33768  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C3376C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C33770  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C33774  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C33778  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80C3377C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C33780  4B 63 3E F4 */	b cM_atan2s__Fff
/* 80C33784  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C33788  B0 1A 00 00 */	sth r0, 0(r26)
/* 80C3378C  38 60 00 01 */	li r3, 1
lbl_80C33790:
/* 80C33790  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C33794  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C33798  39 61 00 70 */	addi r11, r1, 0x70
/* 80C3379C  4B 72 EA 7C */	b _restgpr_25
/* 80C337A0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C337A4  7C 08 03 A6 */	mtlr r0
/* 80C337A8  38 21 00 80 */	addi r1, r1, 0x80
/* 80C337AC  4E 80 00 20 */	blr 
