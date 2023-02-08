lbl_80CDA680:
/* 80CDA680  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CDA684  7C 08 02 A6 */	mflr r0
/* 80CDA688  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CDA68C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80CDA690  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80CDA694  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDA698  4B 68 7B 45 */	bl _savegpr_29
/* 80CDA69C  7C 7F 1B 78 */	mr r31, r3
/* 80CDA6A0  3C 60 80 CE */	lis r3, l_cyl_src@ha /* 0x80CDB7F4@ha */
/* 80CDA6A4  3B C3 B7 F4 */	addi r30, r3, l_cyl_src@l /* 0x80CDB7F4@l */
/* 80CDA6A8  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80CDA6AC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80CDA6B0  41 82 00 34 */	beq lbl_80CDA6E4
/* 80CDA6B4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CDA6B8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CDA6BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDA6C0  40 81 00 14 */	ble lbl_80CDA6D4
/* 80CDA6C4  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80CDA6C8  38 9F 07 64 */	addi r4, r31, 0x764
/* 80CDA6CC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80CDA6D0  4B FF F4 71 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80CDA6D4:
/* 80CDA6D4  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 80CDA6D8  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 80CDA6DC  4B 58 CF 99 */	bl cM_atan2s__Fff
/* 80CDA6E0  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_80CDA6E4:
/* 80CDA6E4  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80CDA6E8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80CDA6EC  41 82 00 DC */	beq lbl_80CDA7C8
/* 80CDA6F0  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80CDA6F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CDA6F8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80CDA6FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDA700  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80CDA704  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CDA708  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CDA70C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CDA710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDA714  40 81 00 14 */	ble lbl_80CDA728
/* 80CDA718  38 61 00 0C */	addi r3, r1, 0xc
/* 80CDA71C  38 9F 07 64 */	addi r4, r31, 0x764
/* 80CDA720  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80CDA724  4B FF F4 1D */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80CDA728:
/* 80CDA728  C0 1F 09 70 */	lfs f0, 0x970(r31)
/* 80CDA72C  FC 20 00 50 */	fneg f1, f0
/* 80CDA730  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80CDA734  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDA738  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CDA73C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80CDA740  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80CDA744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDA748  40 80 00 0C */	bge lbl_80CDA754
/* 80CDA74C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CDA750  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80CDA754:
/* 80CDA754  88 7F 09 36 */	lbz r3, 0x936(r31)
/* 80CDA758  38 03 00 01 */	addi r0, r3, 1
/* 80CDA75C  98 1F 09 36 */	stb r0, 0x936(r31)
/* 80CDA760  C0 1F 09 70 */	lfs f0, 0x970(r31)
/* 80CDA764  FC 00 02 10 */	fabs f0, f0
/* 80CDA768  FF E0 00 18 */	frsp f31, f0
/* 80CDA76C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDA770  7C 03 07 74 */	extsb r3, r0
/* 80CDA774  4B 35 28 F9 */	bl dComIfGp_getReverb__Fi
/* 80CDA778  7C 7D 1B 78 */	mr r29, r3
/* 80CDA77C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C4@ha */
/* 80CDA780  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000800C4@l */
/* 80CDA784  90 01 00 08 */	stw r0, 8(r1)
/* 80CDA788  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80CDA78C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80CDA790  4B 68 79 1D */	bl __cvt_fp2unsigned
/* 80CDA794  7C 66 1B 78 */	mr r6, r3
/* 80CDA798  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CDA79C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CDA7A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDA7A4  38 81 00 08 */	addi r4, r1, 8
/* 80CDA7A8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CDA7AC  7F A7 EB 78 */	mr r7, r29
/* 80CDA7B0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80CDA7B4  FC 40 08 90 */	fmr f2, f1
/* 80CDA7B8  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80CDA7BC  FC 80 18 90 */	fmr f4, f3
/* 80CDA7C0  39 00 00 00 */	li r8, 0
/* 80CDA7C4  4B 5D 11 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CDA7C8:
/* 80CDA7C8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80CDA7CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80CDA7D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDA7D4  4B 68 7A 55 */	bl _restgpr_29
/* 80CDA7D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CDA7DC  7C 08 03 A6 */	mtlr r0
/* 80CDA7E0  38 21 00 40 */	addi r1, r1, 0x40
/* 80CDA7E4  4E 80 00 20 */	blr 
