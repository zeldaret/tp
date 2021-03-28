lbl_80C6BC6C:
/* 80C6BC6C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80C6BC70  7C 08 02 A6 */	mflr r0
/* 80C6BC74  90 01 01 24 */	stw r0, 0x124(r1)
/* 80C6BC78  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80C6BC7C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80C6BC80  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80C6BC84  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 80C6BC88  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80C6BC8C  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 80C6BC90  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80C6BC94  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 80C6BC98  DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 80C6BC9C  F3 61 00 D8 */	psq_st f27, 216(r1), 0, 0 /* qr0 */
/* 80C6BCA0  DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 80C6BCA4  F3 41 00 C8 */	psq_st f26, 200(r1), 0, 0 /* qr0 */
/* 80C6BCA8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C6BCAC  4B 6F 65 18 */	b _savegpr_23
/* 80C6BCB0  7C 7E 1B 78 */	mr r30, r3
/* 80C6BCB4  3C 60 80 C7 */	lis r3, lit_3656@ha
/* 80C6BCB8  3B E3 C6 40 */	addi r31, r3, lit_3656@l
/* 80C6BCBC  3B 00 00 00 */	li r24, 0
/* 80C6BCC0  3B A0 00 00 */	li r29, 0
lbl_80C6BCC4:
/* 80C6BCC4  3B 5D 05 DC */	addi r26, r29, 0x5dc
/* 80C6BCC8  7F 5E D2 14 */	add r26, r30, r26
/* 80C6BCCC  7F 43 D3 78 */	mr r3, r26
/* 80C6BCD0  4B 41 87 90 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C6BCD4  28 03 00 00 */	cmplwi r3, 0
/* 80C6BCD8  41 82 02 10 */	beq lbl_80C6BEE8
/* 80C6BCDC  7F 43 D3 78 */	mr r3, r26
/* 80C6BCE0  4B 41 88 68 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C6BCE4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C6BCE8  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80C6BCEC  41 82 02 0C */	beq lbl_80C6BEF8
/* 80C6BCF0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80C6BCF4  28 00 00 64 */	cmplwi r0, 0x64
/* 80C6BCF8  41 82 00 10 */	beq lbl_80C6BD08
/* 80C6BCFC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C6BD00  28 00 00 03 */	cmplwi r0, 3
/* 80C6BD04  40 82 00 10 */	bne lbl_80C6BD14
lbl_80C6BD08:
/* 80C6BD08  7F C3 F3 78 */	mr r3, r30
/* 80C6BD0C  48 00 04 65 */	bl init_modeBreak__11daIceWall_cFv
/* 80C6BD10  48 00 01 E8 */	b lbl_80C6BEF8
lbl_80C6BD14:
/* 80C6BD14  28 00 00 02 */	cmplwi r0, 2
/* 80C6BD18  40 82 01 E0 */	bne lbl_80C6BEF8
/* 80C6BD1C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6BD20  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C6BD24  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80C6BD28  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80C6BD2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6BD30  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80C6BD34  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C6BD38  38 00 00 FF */	li r0, 0xff
/* 80C6BD3C  90 01 00 08 */	stw r0, 8(r1)
/* 80C6BD40  38 80 00 00 */	li r4, 0
/* 80C6BD44  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6BD48  38 00 FF FF */	li r0, -1
/* 80C6BD4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6BD50  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6BD54  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6BD58  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6BD5C  80 9E 08 80 */	lwz r4, 0x880(r30)
/* 80C6BD60  38 A0 00 00 */	li r5, 0
/* 80C6BD64  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008678@ha */
/* 80C6BD68  38 C6 86 78 */	addi r6, r6, 0x8678 /* 0x00008678@l */
/* 80C6BD6C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6BD70  39 00 00 00 */	li r8, 0
/* 80C6BD74  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C6BD78  39 41 00 78 */	addi r10, r1, 0x78
/* 80C6BD7C  4B 3E 17 50 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6BD80  90 7E 08 80 */	stw r3, 0x880(r30)
/* 80C6BD84  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C6BD88  38 63 02 10 */	addi r3, r3, 0x210
/* 80C6BD8C  80 9E 08 7C */	lwz r4, 0x87c(r30)
/* 80C6BD90  4B 3D FB 88 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C6BD94  28 03 00 00 */	cmplwi r3, 0
/* 80C6BD98  41 82 00 50 */	beq lbl_80C6BDE8
/* 80C6BD9C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C6BDA0  C0 1E 08 6C */	lfs f0, 0x86c(r30)
/* 80C6BDA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C6BDA8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C6BDAC  C0 1E 08 74 */	lfs f0, 0x874(r30)
/* 80C6BDB0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C6BDB4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C6BDB8  C0 1E 08 70 */	lfs f0, 0x870(r30)
/* 80C6BDBC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C6BDC0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80C6BDC4  E0 01 00 6C */	psq_l f0, 108(r1), 0, 0 /* qr0 */
/* 80C6BDC8  F0 01 00 30 */	psq_st f0, 48(r1), 0, 0 /* qr0 */
/* 80C6BDCC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C6BDD0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C6BDD4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C6BDD8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C6BDDC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C6BDE0  FC 00 08 18 */	frsp f0, f1
/* 80C6BDE4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80C6BDE8:
/* 80C6BDE8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C6BDEC  7C 03 07 74 */	extsb r3, r0
/* 80C6BDF0  4B 3C 12 7C */	b dComIfGp_getReverb__Fi
/* 80C6BDF4  7C 67 1B 78 */	mr r7, r3
/* 80C6BDF8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C8@ha */
/* 80C6BDFC  38 03 01 C8 */	addi r0, r3, 0x01C8 /* 0x000801C8@l */
/* 80C6BE00  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C6BE04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C6BE08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C6BE0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6BE10  38 81 00 20 */	addi r4, r1, 0x20
/* 80C6BE14  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6BE18  38 C0 00 00 */	li r6, 0
/* 80C6BE1C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6BE20  FC 40 08 90 */	fmr f2, f1
/* 80C6BE24  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C6BE28  FC 80 18 90 */	fmr f4, f3
/* 80C6BE2C  39 00 00 00 */	li r8, 0
/* 80C6BE30  4B 63 FB 54 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6BE34  88 7E 08 66 */	lbz r3, 0x866(r30)
/* 80C6BE38  38 03 FF FF */	addi r0, r3, -1
/* 80C6BE3C  98 1E 08 66 */	stb r0, 0x866(r30)
/* 80C6BE40  88 1E 08 66 */	lbz r0, 0x866(r30)
/* 80C6BE44  28 00 00 00 */	cmplwi r0, 0
/* 80C6BE48  40 82 00 B0 */	bne lbl_80C6BEF8
/* 80C6BE4C  88 7E 08 65 */	lbz r3, 0x865(r30)
/* 80C6BE50  38 03 00 01 */	addi r0, r3, 1
/* 80C6BE54  98 1E 08 65 */	stb r0, 0x865(r30)
/* 80C6BE58  88 1E 08 65 */	lbz r0, 0x865(r30)
/* 80C6BE5C  28 00 00 01 */	cmplwi r0, 1
/* 80C6BE60  40 82 00 68 */	bne lbl_80C6BEC8
/* 80C6BE64  88 9E 08 68 */	lbz r4, 0x868(r30)
/* 80C6BE68  28 04 00 FF */	cmplwi r4, 0xff
/* 80C6BE6C  41 82 00 18 */	beq lbl_80C6BE84
/* 80C6BE70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6BE74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6BE78  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C6BE7C  7C 05 07 74 */	extsb r5, r0
/* 80C6BE80  4B 3C 93 80 */	b onSwitch__10dSv_info_cFii
lbl_80C6BE84:
/* 80C6BE84  88 1E 08 65 */	lbz r0, 0x865(r30)
/* 80C6BE88  54 00 10 3A */	slwi r0, r0, 2
/* 80C6BE8C  7C 7E 02 14 */	add r3, r30, r0
/* 80C6BE90  80 63 08 5C */	lwz r3, 0x85c(r3)
/* 80C6BE94  38 03 00 24 */	addi r0, r3, 0x24
/* 80C6BE98  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C6BE9C  88 1E 08 65 */	lbz r0, 0x865(r30)
/* 80C6BEA0  54 00 10 3A */	slwi r0, r0, 2
/* 80C6BEA4  7C 7E 02 14 */	add r3, r30, r0
/* 80C6BEA8  80 63 08 5C */	lwz r3, 0x85c(r3)
/* 80C6BEAC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C6BEB0  7F C3 F3 78 */	mr r3, r30
/* 80C6BEB4  4B 3A E6 C4 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C6BEB8  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C6BEBC  38 63 C8 3C */	addi r3, r3, l_HIO@l
/* 80C6BEC0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C6BEC4  98 1E 08 66 */	stb r0, 0x866(r30)
lbl_80C6BEC8:
/* 80C6BEC8  88 1E 08 65 */	lbz r0, 0x865(r30)
/* 80C6BECC  28 00 00 01 */	cmplwi r0, 1
/* 80C6BED0  40 81 00 28 */	ble lbl_80C6BEF8
/* 80C6BED4  38 00 00 01 */	li r0, 1
/* 80C6BED8  98 1E 08 65 */	stb r0, 0x865(r30)
/* 80C6BEDC  7F C3 F3 78 */	mr r3, r30
/* 80C6BEE0  48 00 02 91 */	bl init_modeBreak__11daIceWall_cFv
/* 80C6BEE4  48 00 00 14 */	b lbl_80C6BEF8
lbl_80C6BEE8:
/* 80C6BEE8  3B 18 00 01 */	addi r24, r24, 1
/* 80C6BEEC  2C 18 00 02 */	cmpwi r24, 2
/* 80C6BEF0  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C6BEF4  41 80 FD D0 */	blt lbl_80C6BCC4
lbl_80C6BEF8:
/* 80C6BEF8  3A E0 00 00 */	li r23, 0
/* 80C6BEFC  3B A0 00 00 */	li r29, 0
/* 80C6BF00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6BF04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6BF08  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80C6BF0C  C3 5F 00 58 */	lfs f26, 0x58(r31)
/* 80C6BF10  C3 7F 00 5C */	lfs f27, 0x5c(r31)
/* 80C6BF14  CB 9F 00 40 */	lfd f28, 0x40(r31)
/* 80C6BF18  3F 60 43 30 */	lis r27, 0x4330
/* 80C6BF1C  C3 BF 00 60 */	lfs f29, 0x60(r31)
/* 80C6BF20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6BF24  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80C6BF28  C3 DF 00 64 */	lfs f30, 0x64(r31)
/* 80C6BF2C  C3 FF 00 68 */	lfs f31, 0x68(r31)
lbl_80C6BF30:
/* 80C6BF30  D3 41 00 60 */	stfs f26, 0x60(r1)
/* 80C6BF34  D3 41 00 64 */	stfs f26, 0x64(r1)
/* 80C6BF38  D3 41 00 68 */	stfs f26, 0x68(r1)
/* 80C6BF3C  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 80C6BF40  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80C6BF44  93 61 00 88 */	stw r27, 0x88(r1)
/* 80C6BF48  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80C6BF4C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80C6BF50  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80C6BF54  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80C6BF58  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C6BF5C  7F 83 E3 78 */	mr r3, r28
/* 80C6BF60  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C6BF64  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C6BF68  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C6BF6C  4B 3A 02 9C */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C6BF70  7F 83 E3 78 */	mr r3, r28
/* 80C6BF74  38 81 00 60 */	addi r4, r1, 0x60
/* 80C6BF78  7C 85 23 78 */	mr r5, r4
/* 80C6BF7C  4B 6D AD F0 */	b PSMTXMultVec
/* 80C6BF80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C6BF84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C6BF88  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C6BF8C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C6BF90  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C6BF94  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C6BF98  38 61 00 54 */	addi r3, r1, 0x54
/* 80C6BF9C  38 81 00 60 */	addi r4, r1, 0x60
/* 80C6BFA0  7C 65 1B 78 */	mr r5, r3
/* 80C6BFA4  4B 6D B0 EC */	b PSVECAdd
/* 80C6BFA8  7F 1E EA 14 */	add r24, r30, r29
/* 80C6BFAC  3B 38 07 00 */	addi r25, r24, 0x700
/* 80C6BFB0  7F 23 CB 78 */	mr r3, r25
/* 80C6BFB4  C0 1E 08 74 */	lfs f0, 0x874(r30)
/* 80C6BFB8  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80C6BFBC  4B 60 32 44 */	b SetR__8cM3dGCylFf
/* 80C6BFC0  7F 23 CB 78 */	mr r3, r25
/* 80C6BFC4  C0 1E 08 70 */	lfs f0, 0x870(r30)
/* 80C6BFC8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C6BFCC  4B 60 32 2C */	b SetH__8cM3dGCylFf
/* 80C6BFD0  7F 23 CB 78 */	mr r3, r25
/* 80C6BFD4  38 81 00 54 */	addi r4, r1, 0x54
/* 80C6BFD8  4B 60 32 04 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C6BFDC  7F 43 D3 78 */	mr r3, r26
/* 80C6BFE0  38 98 05 DC */	addi r4, r24, 0x5dc
/* 80C6BFE4  4B 5F 8B C4 */	b Set__4cCcSFP8cCcD_Obj
/* 80C6BFE8  3A F7 00 01 */	addi r23, r23, 1
/* 80C6BFEC  2C 17 00 02 */	cmpwi r23, 2
/* 80C6BFF0  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C6BFF4  41 80 FF 3C */	blt lbl_80C6BF30
/* 80C6BFF8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6BFFC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C6C000  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80C6C004  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80C6C008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6C00C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C6C010  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C6C014  38 00 00 FF */	li r0, 0xff
/* 80C6C018  90 01 00 08 */	stw r0, 8(r1)
/* 80C6C01C  38 80 00 00 */	li r4, 0
/* 80C6C020  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6C024  38 00 FF FF */	li r0, -1
/* 80C6C028  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6C02C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6C030  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6C034  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6C038  80 9E 08 78 */	lwz r4, 0x878(r30)
/* 80C6C03C  38 A0 00 00 */	li r5, 0
/* 80C6C040  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000867C@ha */
/* 80C6C044  38 C6 86 7C */	addi r6, r6, 0x867C /* 0x0000867C@l */
/* 80C6C048  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6C04C  39 00 00 00 */	li r8, 0
/* 80C6C050  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C6C054  39 41 00 48 */	addi r10, r1, 0x48
/* 80C6C058  4B 3E 14 74 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6C05C  90 7E 08 78 */	stw r3, 0x878(r30)
/* 80C6C060  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C6C064  38 00 00 FF */	li r0, 0xff
/* 80C6C068  90 01 00 08 */	stw r0, 8(r1)
/* 80C6C06C  38 80 00 00 */	li r4, 0
/* 80C6C070  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6C074  38 00 FF FF */	li r0, -1
/* 80C6C078  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6C07C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6C080  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6C084  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6C088  80 9E 08 7C */	lwz r4, 0x87c(r30)
/* 80C6C08C  38 A0 00 00 */	li r5, 0
/* 80C6C090  88 1E 08 65 */	lbz r0, 0x865(r30)
/* 80C6C094  54 00 08 3C */	slwi r0, r0, 1
/* 80C6C098  38 DF 00 48 */	addi r6, r31, 0x48
/* 80C6C09C  7C C6 02 2E */	lhzx r6, r6, r0
/* 80C6C0A0  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6C0A4  39 00 00 00 */	li r8, 0
/* 80C6C0A8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C6C0AC  39 41 00 48 */	addi r10, r1, 0x48
/* 80C6C0B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6C0B4  4B 3E 14 18 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6C0B8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80C6C0BC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C6C0C0  38 63 02 10 */	addi r3, r3, 0x210
/* 80C6C0C4  80 9E 08 7C */	lwz r4, 0x87c(r30)
/* 80C6C0C8  4B 3D F8 50 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C6C0CC  28 03 00 00 */	cmplwi r3, 0
/* 80C6C0D0  41 82 00 58 */	beq lbl_80C6C128
/* 80C6C0D4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C6C0D8  C0 1E 08 6C */	lfs f0, 0x86c(r30)
/* 80C6C0DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C6C0E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C6C0E4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C6C0E8  C0 1E 08 74 */	lfs f0, 0x874(r30)
/* 80C6C0EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C6C0F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C6C0F4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80C6C0F8  C0 1E 08 70 */	lfs f0, 0x870(r30)
/* 80C6C0FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C6C100  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C6C104  E0 01 00 3C */	psq_l f0, 60(r1), 0, 0 /* qr0 */
/* 80C6C108  F0 01 00 24 */	psq_st f0, 36(r1), 0, 0 /* qr0 */
/* 80C6C10C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C6C110  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C6C114  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C6C118  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C6C11C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C6C120  FC 00 08 18 */	frsp f0, f1
/* 80C6C124  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80C6C128:
/* 80C6C128  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80C6C12C  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80C6C130  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 80C6C134  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80C6C138  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 80C6C13C  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80C6C140  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 80C6C144  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80C6C148  E3 61 00 D8 */	psq_l f27, 216(r1), 0, 0 /* qr0 */
/* 80C6C14C  CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 80C6C150  E3 41 00 C8 */	psq_l f26, 200(r1), 0, 0 /* qr0 */
/* 80C6C154  CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 80C6C158  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C6C15C  4B 6F 60 B4 */	b _restgpr_23
/* 80C6C160  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80C6C164  7C 08 03 A6 */	mtlr r0
/* 80C6C168  38 21 01 20 */	addi r1, r1, 0x120
/* 80C6C16C  4E 80 00 20 */	blr 
