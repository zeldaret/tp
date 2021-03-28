lbl_80817FDC:
/* 80817FDC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80817FE0  7C 08 02 A6 */	mflr r0
/* 80817FE4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80817FE8  39 61 00 50 */	addi r11, r1, 0x50
/* 80817FEC  4B B4 A1 E0 */	b _savegpr_25
/* 80817FF0  7C 7E 1B 78 */	mr r30, r3
/* 80817FF4  3C 60 80 82 */	lis r3, lit_1109@ha
/* 80817FF8  3B E3 1E 18 */	addi r31, r3, lit_1109@l
/* 80817FFC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80818000  80 63 00 04 */	lwz r3, 4(r3)
/* 80818004  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80818008  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8081800C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80818010  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80818014  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80818018  4B B2 E4 98 */	b PSMTXCopy
/* 8081801C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80818020  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80818024  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80818028  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8081802C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80818030  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80818034  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80818038  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8081803C  88 1F 02 88 */	lbz r0, 0x288(r31)
/* 80818040  7C 00 07 75 */	extsb. r0, r0
/* 80818044  40 82 00 34 */	bne lbl_80818078
/* 80818048  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8081804C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80818050  D0 1F 02 8C */	stfs f0, 0x28c(r31)
/* 80818054  38 7F 02 8C */	addi r3, r31, 0x28c
/* 80818058  D0 03 00 04 */	stfs f0, 4(r3)
/* 8081805C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80818060  3C 80 80 81 */	lis r4, __dt__4cXyzFv@ha
/* 80818064  38 84 64 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80818068  38 BF 02 7C */	addi r5, r31, 0x27c
/* 8081806C  4B FF E0 2D */	bl __register_global_object
/* 80818070  38 00 00 01 */	li r0, 1
/* 80818074  98 1F 02 88 */	stb r0, 0x288(r31)
lbl_80818078:
/* 80818078  3B 20 00 00 */	li r25, 0
/* 8081807C  3B A0 00 00 */	li r29, 0
/* 80818080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80818084  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80818088  3C 60 80 82 */	lis r3, w_eff_id_4777@ha
/* 8081808C  3B 63 1C 94 */	addi r27, r3, w_eff_id_4777@l
/* 80818090  3C 60 80 82 */	lis r3, lit_3791@ha
/* 80818094  3B 83 18 AC */	addi r28, r3, lit_3791@l
lbl_80818098:
/* 80818098  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8081809C  38 80 00 00 */	li r4, 0
/* 808180A0  90 81 00 08 */	stw r4, 8(r1)
/* 808180A4  38 00 FF FF */	li r0, -1
/* 808180A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 808180AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 808180B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 808180B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 808180B8  38 80 00 00 */	li r4, 0
/* 808180BC  7C BB EA 2E */	lhzx r5, r27, r29
/* 808180C0  38 C1 00 24 */	addi r6, r1, 0x24
/* 808180C4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 808180C8  39 00 00 00 */	li r8, 0
/* 808180CC  39 3F 02 8C */	addi r9, r31, 0x28c
/* 808180D0  39 40 00 FF */	li r10, 0xff
/* 808180D4  C0 3C 00 00 */	lfs f1, 0(r28)
/* 808180D8  4B 83 49 B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808180DC  3B 39 00 01 */	addi r25, r25, 1
/* 808180E0  2C 19 00 02 */	cmpwi r25, 2
/* 808180E4  3B BD 00 02 */	addi r29, r29, 2
/* 808180E8  41 80 FF B0 */	blt lbl_80818098
/* 808180EC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808180F0  7C 03 07 74 */	extsb r3, r0
/* 808180F4  4B 81 4F 78 */	b dComIfGp_getReverb__Fi
/* 808180F8  7C 67 1B 78 */	mr r7, r3
/* 808180FC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060028@ha */
/* 80818100  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00060028@l */
/* 80818104  90 01 00 20 */	stw r0, 0x20(r1)
/* 80818108  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8081810C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80818110  80 63 00 00 */	lwz r3, 0(r3)
/* 80818114  38 81 00 20 */	addi r4, r1, 0x20
/* 80818118  38 BE 05 38 */	addi r5, r30, 0x538
/* 8081811C  38 C0 00 00 */	li r6, 0
/* 80818120  3D 00 80 82 */	lis r8, lit_3791@ha
/* 80818124  C0 28 18 AC */	lfs f1, lit_3791@l(r8)
/* 80818128  FC 40 08 90 */	fmr f2, f1
/* 8081812C  3D 00 80 82 */	lis r8, lit_4083@ha
/* 80818130  C0 68 18 E0 */	lfs f3, lit_4083@l(r8)
/* 80818134  FC 80 18 90 */	fmr f4, f3
/* 80818138  39 00 00 00 */	li r8, 0
/* 8081813C  4B A9 38 48 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80818140  39 61 00 50 */	addi r11, r1, 0x50
/* 80818144  4B B4 A0 D4 */	b _restgpr_25
/* 80818148  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8081814C  7C 08 03 A6 */	mtlr r0
/* 80818150  38 21 00 50 */	addi r1, r1, 0x50
/* 80818154  4E 80 00 20 */	blr 
