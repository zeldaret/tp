lbl_80CA8C94:
/* 80CA8C94  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CA8C98  7C 08 02 A6 */	mflr r0
/* 80CA8C9C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CA8CA0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80CA8CA4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80CA8CA8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80CA8CAC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80CA8CB0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA8CB4  4B 6B 95 20 */	b _savegpr_27
/* 80CA8CB8  7C 7B 1B 78 */	mr r27, r3
/* 80CA8CBC  3C 60 80 CB */	lis r3, lit_3655@ha
/* 80CA8CC0  3B E3 9B 78 */	addi r31, r3, lit_3655@l
/* 80CA8CC4  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 80CA8CC8  54 04 BF FE */	rlwinm r4, r0, 0x17, 0x1f, 0x1f
/* 80CA8CCC  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 80CA8CD0  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 80CA8CD4  54 1E DF FE */	rlwinm r30, r0, 0x1b, 0x1f, 0x1f
/* 80CA8CD8  54 1D AF FE */	rlwinm r29, r0, 0x15, 0x1f, 0x1f
/* 80CA8CDC  54 1C A7 FE */	rlwinm r28, r0, 0x14, 0x1f, 0x1f
/* 80CA8CE0  88 1B 05 78 */	lbz r0, 0x578(r27)
/* 80CA8CE4  28 00 00 02 */	cmplwi r0, 2
/* 80CA8CE8  40 82 00 28 */	bne lbl_80CA8D10
/* 80CA8CEC  28 03 00 00 */	cmplwi r3, 0
/* 80CA8CF0  40 82 00 14 */	bne lbl_80CA8D04
/* 80CA8CF4  28 05 00 00 */	cmplwi r5, 0
/* 80CA8CF8  40 82 00 0C */	bne lbl_80CA8D04
/* 80CA8CFC  28 04 00 00 */	cmplwi r4, 0
/* 80CA8D00  41 82 00 98 */	beq lbl_80CA8D98
lbl_80CA8D04:
/* 80CA8D04  7F 63 DB 78 */	mr r3, r27
/* 80CA8D08  48 00 07 1D */	bl mode_init_break__11daOnsTaru_cFv
/* 80CA8D0C  48 00 00 8C */	b lbl_80CA8D98
lbl_80CA8D10:
/* 80CA8D10  28 1E 00 00 */	cmplwi r30, 0
/* 80CA8D14  41 82 00 7C */	beq lbl_80CA8D90
/* 80CA8D18  28 1D 00 00 */	cmplwi r29, 0
/* 80CA8D1C  40 82 00 7C */	bne lbl_80CA8D98
/* 80CA8D20  88 1B 09 3E */	lbz r0, 0x93e(r27)
/* 80CA8D24  28 00 00 00 */	cmplwi r0, 0
/* 80CA8D28  40 82 00 70 */	bne lbl_80CA8D98
/* 80CA8D2C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CA8D30  7C 03 07 74 */	extsb r3, r0
/* 80CA8D34  4B 38 43 38 */	b dComIfGp_getReverb__Fi
/* 80CA8D38  7C 67 1B 78 */	mr r7, r3
/* 80CA8D3C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080038@ha */
/* 80CA8D40  38 03 00 38 */	addi r0, r3, 0x0038 /* 0x00080038@l */
/* 80CA8D44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA8D48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CA8D4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CA8D50  80 63 00 00 */	lwz r3, 0(r3)
/* 80CA8D54  38 81 00 0C */	addi r4, r1, 0xc
/* 80CA8D58  38 BB 05 38 */	addi r5, r27, 0x538
/* 80CA8D5C  38 C0 00 00 */	li r6, 0
/* 80CA8D60  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CA8D64  FC 40 08 90 */	fmr f2, f1
/* 80CA8D68  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80CA8D6C  FC 80 18 90 */	fmr f4, f3
/* 80CA8D70  39 00 00 00 */	li r8, 0
/* 80CA8D74  4B 60 2C 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CA8D78  80 1B 08 24 */	lwz r0, 0x824(r27)
/* 80CA8D7C  60 00 00 01 */	ori r0, r0, 1
/* 80CA8D80  90 1B 08 24 */	stw r0, 0x824(r27)
/* 80CA8D84  38 00 00 01 */	li r0, 1
/* 80CA8D88  98 1B 09 3E */	stb r0, 0x93e(r27)
/* 80CA8D8C  48 00 00 0C */	b lbl_80CA8D98
lbl_80CA8D90:
/* 80CA8D90  38 00 00 00 */	li r0, 0
/* 80CA8D94  98 1B 09 3E */	stb r0, 0x93e(r27)
lbl_80CA8D98:
/* 80CA8D98  88 1B 05 78 */	lbz r0, 0x578(r27)
/* 80CA8D9C  28 00 00 00 */	cmplwi r0, 0
/* 80CA8DA0  41 82 00 14 */	beq lbl_80CA8DB4
/* 80CA8DA4  28 00 00 02 */	cmplwi r0, 2
/* 80CA8DA8  41 82 00 0C */	beq lbl_80CA8DB4
/* 80CA8DAC  28 00 00 01 */	cmplwi r0, 1
/* 80CA8DB0  40 82 00 D0 */	bne lbl_80CA8E80
lbl_80CA8DB4:
/* 80CA8DB4  C3 FB 07 70 */	lfs f31, 0x770(r27)
/* 80CA8DB8  28 1D 00 00 */	cmplwi r29, 0
/* 80CA8DBC  41 82 00 C4 */	beq lbl_80CA8E80
/* 80CA8DC0  C3 DB 04 FC */	lfs f30, 0x4fc(r27)
/* 80CA8DC4  7F 63 DB 78 */	mr r3, r27
/* 80CA8DC8  4B FF FE A9 */	bl chkWaterLineIn__11daOnsTaru_cFv
/* 80CA8DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80CA8DD0  41 82 00 18 */	beq lbl_80CA8DE8
/* 80CA8DD4  88 1B 05 78 */	lbz r0, 0x578(r27)
/* 80CA8DD8  28 00 00 01 */	cmplwi r0, 1
/* 80CA8DDC  41 82 00 0C */	beq lbl_80CA8DE8
/* 80CA8DE0  7F 63 DB 78 */	mr r3, r27
/* 80CA8DE4  48 00 07 35 */	bl mode_init_sink__11daOnsTaru_cFv
lbl_80CA8DE8:
/* 80CA8DE8  28 1C 00 00 */	cmplwi r28, 0
/* 80CA8DEC  41 82 00 94 */	beq lbl_80CA8E80
/* 80CA8DF0  88 1B 05 A0 */	lbz r0, 0x5a0(r27)
/* 80CA8DF4  28 00 00 00 */	cmplwi r0, 0
/* 80CA8DF8  40 82 00 88 */	bne lbl_80CA8E80
/* 80CA8DFC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80CA8E00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CA8E04  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80CA8E08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CA8E0C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80CA8E10  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CA8E14  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 80CA8E18  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80CA8E1C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80CA8E20  40 80 00 60 */	bge lbl_80CA8E80
/* 80CA8E24  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CA8E28  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80CA8E2C  38 80 00 00 */	li r4, 0
/* 80CA8E30  4B 37 6A 4C */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80CA8E34  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CA8E38  7C 03 07 74 */	extsb r3, r0
/* 80CA8E3C  4B 38 42 30 */	b dComIfGp_getReverb__Fi
/* 80CA8E40  7C 67 1B 78 */	mr r7, r3
/* 80CA8E44  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008002A@ha */
/* 80CA8E48  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0008002A@l */
/* 80CA8E4C  90 01 00 08 */	stw r0, 8(r1)
/* 80CA8E50  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CA8E54  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CA8E58  80 63 00 00 */	lwz r3, 0(r3)
/* 80CA8E5C  38 81 00 08 */	addi r4, r1, 8
/* 80CA8E60  38 BB 05 38 */	addi r5, r27, 0x538
/* 80CA8E64  38 C0 00 00 */	li r6, 0
/* 80CA8E68  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CA8E6C  FC 40 08 90 */	fmr f2, f1
/* 80CA8E70  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80CA8E74  FC 80 18 90 */	fmr f4, f3
/* 80CA8E78  39 00 00 00 */	li r8, 0
/* 80CA8E7C  4B 60 2B 08 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CA8E80:
/* 80CA8E80  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80CA8E84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CA8E88  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80CA8E8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CA8E90  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80CA8E94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CA8E98  C0 3B 07 70 */	lfs f1, 0x770(r27)
/* 80CA8E9C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CA8EA0  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80CA8EA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA8EA8  40 81 00 68 */	ble lbl_80CA8F10
/* 80CA8EAC  88 1B 05 78 */	lbz r0, 0x578(r27)
/* 80CA8EB0  28 00 00 04 */	cmplwi r0, 4
/* 80CA8EB4  40 82 00 14 */	bne lbl_80CA8EC8
/* 80CA8EB8  7F 63 DB 78 */	mr r3, r27
/* 80CA8EBC  4B FF FD 91 */	bl chkSinkAll__11daOnsTaru_cFv
/* 80CA8EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80CA8EC4  41 82 00 38 */	beq lbl_80CA8EFC
lbl_80CA8EC8:
/* 80CA8EC8  88 1B 05 78 */	lbz r0, 0x578(r27)
/* 80CA8ECC  28 00 00 00 */	cmplwi r0, 0
/* 80CA8ED0  40 82 00 0C */	bne lbl_80CA8EDC
/* 80CA8ED4  28 1E 00 00 */	cmplwi r30, 0
/* 80CA8ED8  40 82 00 24 */	bne lbl_80CA8EFC
lbl_80CA8EDC:
/* 80CA8EDC  28 00 00 01 */	cmplwi r0, 1
/* 80CA8EE0  40 82 00 30 */	bne lbl_80CA8F10
/* 80CA8EE4  28 1C 00 00 */	cmplwi r28, 0
/* 80CA8EE8  41 82 00 28 */	beq lbl_80CA8F10
/* 80CA8EEC  7F 63 DB 78 */	mr r3, r27
/* 80CA8EF0  4B FF FD 5D */	bl chkSinkAll__11daOnsTaru_cFv
/* 80CA8EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80CA8EF8  40 82 00 18 */	bne lbl_80CA8F10
lbl_80CA8EFC:
/* 80CA8EFC  38 7B 09 38 */	addi r3, r27, 0x938
/* 80CA8F00  38 81 00 10 */	addi r4, r1, 0x10
/* 80CA8F04  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CA8F08  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80CA8F0C  4B 37 42 00 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_80CA8F10:
/* 80CA8F10  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80CA8F14  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80CA8F18  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80CA8F1C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80CA8F20  39 61 00 40 */	addi r11, r1, 0x40
/* 80CA8F24  4B 6B 92 FC */	b _restgpr_27
/* 80CA8F28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CA8F2C  7C 08 03 A6 */	mtlr r0
/* 80CA8F30  38 21 00 60 */	addi r1, r1, 0x60
/* 80CA8F34  4E 80 00 20 */	blr 
