lbl_80461F60:
/* 80461F60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80461F64  7C 08 02 A6 */	mflr r0
/* 80461F68  90 01 00 54 */	stw r0, 0x54(r1)
/* 80461F6C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80461F70  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80461F74  39 61 00 40 */	addi r11, r1, 0x40
/* 80461F78  4B F0 02 60 */	b _savegpr_28
/* 80461F7C  7C 7D 1B 78 */	mr r29, r3
/* 80461F80  3C 60 80 46 */	lis r3, lit_4018@ha
/* 80461F84  3B E3 68 20 */	addi r31, r3, lit_4018@l
/* 80461F88  C3 FD 05 94 */	lfs f31, 0x594(r29)
/* 80461F8C  38 7D 05 84 */	addi r3, r29, 0x584
/* 80461F90  4B BA B4 98 */	b play__14mDoExt_baseAnmFv
/* 80461F94  7C 7E 1B 78 */	mr r30, r3
/* 80461F98  7F A3 EB 78 */	mr r3, r29
/* 80461F9C  4B BD 81 EC */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80461FA0  28 03 00 0C */	cmplwi r3, 0xc
/* 80461FA4  41 81 01 08 */	bgt lbl_804620AC
/* 80461FA8  3C 80 80 46 */	lis r4, lit_4611@ha
/* 80461FAC  38 84 6F 38 */	addi r4, r4, lit_4611@l
/* 80461FB0  54 60 10 3A */	slwi r0, r3, 2
/* 80461FB4  7C 04 00 2E */	lwzx r0, r4, r0
/* 80461FB8  7C 09 03 A6 */	mtctr r0
/* 80461FBC  4E 80 04 20 */	bctr 
lbl_80461FC0:
/* 80461FC0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80461FC4  C0 3D 05 94 */	lfs f1, 0x594(r29)
/* 80461FC8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80461FCC  40 82 00 38 */	bne lbl_80462004
/* 80461FD0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80461FD4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80461FD8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80461FDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80461FE0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80461FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461FE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461FEC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80461FF0  38 80 00 04 */	li r4, 4
/* 80461FF4  38 A0 00 0F */	li r5, 0xf
/* 80461FF8  38 C1 00 20 */	addi r6, r1, 0x20
/* 80461FFC  4B C0 DA 28 */	b StartShock__12dVibration_cFii4cXyz
/* 80462000  48 00 02 84 */	b lbl_80462284
lbl_80462004:
/* 80462004  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80462008  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8046200C  40 82 02 78 */	bne lbl_80462284
/* 80462010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80462014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80462018  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8046201C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80462020  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80462024  41 82 00 24 */	beq lbl_80462048
/* 80462028  88 7D 06 72 */	lbz r3, 0x672(r29)
/* 8046202C  30 03 FF FF */	addic r0, r3, -1
/* 80462030  7C 80 19 10 */	subfe r4, r0, r3
/* 80462034  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008019B@ha */
/* 80462038  38 03 01 9B */	addi r0, r3, 0x019B /* 0x0008019B@l */
/* 8046203C  7C 04 02 14 */	add r0, r4, r0
/* 80462040  7C 1C 03 78 */	mr r28, r0
/* 80462044  48 00 00 20 */	b lbl_80462064
lbl_80462048:
/* 80462048  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 8046204C  28 00 00 00 */	cmplwi r0, 0
/* 80462050  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C7@ha */
/* 80462054  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000800C7@l */
/* 80462058  41 82 00 08 */	beq lbl_80462060
/* 8046205C  38 03 00 B2 */	addi r0, r3, 0xb2
lbl_80462060:
/* 80462060  7C 1C 03 78 */	mr r28, r0
lbl_80462064:
/* 80462064  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80462068  7C 03 07 74 */	extsb r3, r0
/* 8046206C  4B BC B0 00 */	b dComIfGp_getReverb__Fi
/* 80462070  7C 67 1B 78 */	mr r7, r3
/* 80462074  93 81 00 10 */	stw r28, 0x10(r1)
/* 80462078  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8046207C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80462080  80 63 00 00 */	lwz r3, 0(r3)
/* 80462084  38 81 00 10 */	addi r4, r1, 0x10
/* 80462088  38 BD 05 E0 */	addi r5, r29, 0x5e0
/* 8046208C  38 C0 00 00 */	li r6, 0
/* 80462090  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80462094  FC 40 08 90 */	fmr f2, f1
/* 80462098  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8046209C  FC 80 18 90 */	fmr f4, f3
/* 804620A0  39 00 00 00 */	li r8, 0
/* 804620A4  4B E4 98 E0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804620A8  48 00 01 DC */	b lbl_80462284
lbl_804620AC:
/* 804620AC  7F A3 EB 78 */	mr r3, r29
/* 804620B0  4B BD 80 D8 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 804620B4  2C 03 00 00 */	cmpwi r3, 0
/* 804620B8  41 82 00 14 */	beq lbl_804620CC
/* 804620BC  7F A3 EB 78 */	mr r3, r29
/* 804620C0  4B BD 80 C8 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 804620C4  2C 03 00 0A */	cmpwi r3, 0xa
/* 804620C8  40 82 00 44 */	bne lbl_8046210C
lbl_804620CC:
/* 804620CC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804620D0  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 804620D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804620D8  40 82 00 34 */	bne lbl_8046210C
/* 804620DC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804620E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804620E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804620E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804620EC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804620F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804620F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804620F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804620FC  38 80 00 04 */	li r4, 4
/* 80462100  38 A0 00 0F */	li r5, 0xf
/* 80462104  38 C1 00 14 */	addi r6, r1, 0x14
/* 80462108  4B C0 D9 1C */	b StartShock__12dVibration_cFii4cXyz
lbl_8046210C:
/* 8046210C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80462110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80462114  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80462118  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8046211C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80462120  41 82 00 AC */	beq lbl_804621CC
/* 80462124  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80462128  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 8046212C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80462130  40 82 01 54 */	bne lbl_80462284
/* 80462134  7F A3 EB 78 */	mr r3, r29
/* 80462138  4B BD 80 50 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 8046213C  2C 03 00 02 */	cmpwi r3, 2
/* 80462140  40 82 00 10 */	bne lbl_80462150
/* 80462144  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080219@ha */
/* 80462148  3B 83 02 19 */	addi r28, r3, 0x0219 /* 0x00080219@l */
/* 8046214C  48 00 00 38 */	b lbl_80462184
lbl_80462150:
/* 80462150  7F A3 EB 78 */	mr r3, r29
/* 80462154  4B BD 80 34 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80462158  2C 03 00 0A */	cmpwi r3, 0xa
/* 8046215C  40 82 00 10 */	bne lbl_8046216C
/* 80462160  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B6@ha */
/* 80462164  3B 83 02 B6 */	addi r28, r3, 0x02B6 /* 0x000802B6@l */
/* 80462168  48 00 00 1C */	b lbl_80462184
lbl_8046216C:
/* 8046216C  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 80462170  28 00 00 00 */	cmplwi r0, 0
/* 80462174  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080197@ha */
/* 80462178  3B 83 01 97 */	addi r28, r3, 0x0197 /* 0x00080197@l */
/* 8046217C  41 82 00 08 */	beq lbl_80462184
/* 80462180  3B 83 01 9A */	addi r28, r3, 0x19a
lbl_80462184:
/* 80462184  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80462188  7C 03 07 74 */	extsb r3, r0
/* 8046218C  4B BC AE E0 */	b dComIfGp_getReverb__Fi
/* 80462190  7C 67 1B 78 */	mr r7, r3
/* 80462194  93 81 00 0C */	stw r28, 0xc(r1)
/* 80462198  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8046219C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804621A0  80 63 00 00 */	lwz r3, 0(r3)
/* 804621A4  38 81 00 0C */	addi r4, r1, 0xc
/* 804621A8  38 BD 05 38 */	addi r5, r29, 0x538
/* 804621AC  38 C0 00 00 */	li r6, 0
/* 804621B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804621B4  FC 40 08 90 */	fmr f2, f1
/* 804621B8  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804621BC  FC 80 18 90 */	fmr f4, f3
/* 804621C0  39 00 00 00 */	li r8, 0
/* 804621C4  4B E4 97 C0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804621C8  48 00 00 BC */	b lbl_80462284
lbl_804621CC:
/* 804621CC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804621D0  C0 3D 05 94 */	lfs f1, 0x594(r29)
/* 804621D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804621D8  41 82 00 18 */	beq lbl_804621F0
/* 804621DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804621E0  40 80 00 A4 */	bge lbl_80462284
/* 804621E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804621E8  4C 41 13 82 */	cror 2, 1, 2
/* 804621EC  40 82 00 98 */	bne lbl_80462284
lbl_804621F0:
/* 804621F0  7F A3 EB 78 */	mr r3, r29
/* 804621F4  4B BD 7F 94 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 804621F8  2C 03 00 02 */	cmpwi r3, 2
/* 804621FC  40 82 00 10 */	bne lbl_8046220C
/* 80462200  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080219@ha */
/* 80462204  3B 83 02 19 */	addi r28, r3, 0x0219 /* 0x00080219@l */
/* 80462208  48 00 00 38 */	b lbl_80462240
lbl_8046220C:
/* 8046220C  7F A3 EB 78 */	mr r3, r29
/* 80462210  4B BD 7F 78 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80462214  2C 03 00 0A */	cmpwi r3, 0xa
/* 80462218  40 82 00 10 */	bne lbl_80462228
/* 8046221C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B6@ha */
/* 80462220  3B 83 02 B6 */	addi r28, r3, 0x02B6 /* 0x000802B6@l */
/* 80462224  48 00 00 1C */	b lbl_80462240
lbl_80462228:
/* 80462228  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 8046222C  28 00 00 00 */	cmplwi r0, 0
/* 80462230  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080191@ha */
/* 80462234  3B 83 01 91 */	addi r28, r3, 0x0191 /* 0x00080191@l */
/* 80462238  41 82 00 08 */	beq lbl_80462240
/* 8046223C  3B 83 01 9A */	addi r28, r3, 0x19a
lbl_80462240:
/* 80462240  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80462244  7C 03 07 74 */	extsb r3, r0
/* 80462248  4B BC AE 24 */	b dComIfGp_getReverb__Fi
/* 8046224C  7C 67 1B 78 */	mr r7, r3
/* 80462250  93 81 00 08 */	stw r28, 8(r1)
/* 80462254  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80462258  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8046225C  80 63 00 00 */	lwz r3, 0(r3)
/* 80462260  38 81 00 08 */	addi r4, r1, 8
/* 80462264  38 BD 05 38 */	addi r5, r29, 0x538
/* 80462268  38 C0 00 00 */	li r6, 0
/* 8046226C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80462270  FC 40 08 90 */	fmr f2, f1
/* 80462274  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80462278  FC 80 18 90 */	fmr f4, f3
/* 8046227C  39 00 00 00 */	li r8, 0
/* 80462280  4B E4 97 04 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80462284:
/* 80462284  7F C3 F3 78 */	mr r3, r30
/* 80462288  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8046228C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80462290  39 61 00 40 */	addi r11, r1, 0x40
/* 80462294  4B EF FF 90 */	b _restgpr_28
/* 80462298  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8046229C  7C 08 03 A6 */	mtlr r0
/* 804622A0  38 21 00 50 */	addi r1, r1, 0x50
/* 804622A4  4E 80 00 20 */	blr 
