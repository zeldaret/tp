lbl_8058A1B0:
/* 8058A1B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058A1B4  7C 08 02 A6 */	mflr r0
/* 8058A1B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058A1BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058A1C0  7C 7F 1B 78 */	mr r31, r3
/* 8058A1C4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8058A1C8  28 00 00 03 */	cmplwi r0, 3
/* 8058A1CC  40 82 00 8C */	bne lbl_8058A258
/* 8058A1D0  38 00 00 01 */	li r0, 1
/* 8058A1D4  98 1F 0B A4 */	stb r0, 0xba4(r31)
/* 8058A1D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058A1DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058A1E0  A8 83 5D C8 */	lha r4, 0x5dc8(r3)
/* 8058A1E4  38 04 FF FF */	addi r0, r4, -1
/* 8058A1E8  B0 03 5D C8 */	sth r0, 0x5dc8(r3)
/* 8058A1EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058A1F0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8058A1F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058A1F8  7C 05 07 74 */	extsb r5, r0
/* 8058A1FC  4B AA B0 04 */	b onSwitch__10dSv_info_cFii
/* 8058A200  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058A204  7C 03 07 74 */	extsb r3, r0
/* 8058A208  4B AA 2E 64 */	b dComIfGp_getReverb__Fi
/* 8058A20C  7C 67 1B 78 */	mr r7, r3
/* 8058A210  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080202@ha */
/* 8058A214  38 03 02 02 */	addi r0, r3, 0x0202 /* 0x00080202@l */
/* 8058A218  90 01 00 08 */	stw r0, 8(r1)
/* 8058A21C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058A220  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058A224  80 63 00 00 */	lwz r3, 0(r3)
/* 8058A228  38 81 00 08 */	addi r4, r1, 8
/* 8058A22C  38 BF 05 38 */	addi r5, r31, 0x538
/* 8058A230  38 C0 00 00 */	li r6, 0
/* 8058A234  3D 00 80 59 */	lis r8, lit_3881@ha
/* 8058A238  C0 28 AB D4 */	lfs f1, lit_3881@l(r8)
/* 8058A23C  FC 40 08 90 */	fmr f2, f1
/* 8058A240  3D 00 80 59 */	lis r8, lit_3882@ha
/* 8058A244  C0 68 AB D8 */	lfs f3, lit_3882@l(r8)
/* 8058A248  FC 80 18 90 */	fmr f4, f3
/* 8058A24C  39 00 00 00 */	li r8, 0
/* 8058A250  4B D2 17 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8058A254  48 00 00 2C */	b lbl_8058A280
lbl_8058A258:
/* 8058A258  4B FF F2 4D */	bl checkOpen__12daObjKGate_cFv
/* 8058A25C  2C 03 00 00 */	cmpwi r3, 0
/* 8058A260  41 82 00 20 */	beq lbl_8058A280
/* 8058A264  A8 1F 0B A6 */	lha r0, 0xba6(r31)
/* 8058A268  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 8058A26C  88 1F 0B A5 */	lbz r0, 0xba5(r31)
/* 8058A270  98 1F 00 FE */	stb r0, 0xfe(r31)
/* 8058A274  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8058A278  60 00 00 04 */	ori r0, r0, 4
/* 8058A27C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8058A280:
/* 8058A280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058A284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058A288  7C 08 03 A6 */	mtlr r0
/* 8058A28C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058A290  4E 80 00 20 */	blr 
