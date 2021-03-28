lbl_80BC6F30:
/* 80BC6F30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC6F34  7C 08 02 A6 */	mflr r0
/* 80BC6F38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC6F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC6F40  4B 79 B2 9C */	b _savegpr_29
/* 80BC6F44  7C 7E 1B 78 */	mr r30, r3
/* 80BC6F48  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC6F4C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC6F50  40 82 00 74 */	bne lbl_80BC6FC4
/* 80BC6F54  7F C0 F3 79 */	or. r0, r30, r30
/* 80BC6F58  41 82 00 60 */	beq lbl_80BC6FB8
/* 80BC6F5C  7C 1F 03 78 */	mr r31, r0
/* 80BC6F60  4B 4B 16 C4 */	b __ct__16dBgS_MoveBgActorFv
/* 80BC6F64  3C 60 80 BC */	lis r3, __vt__12daObjCdoor_c@ha
/* 80BC6F68  38 03 7E 80 */	addi r0, r3, __vt__12daObjCdoor_c@l
/* 80BC6F6C  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80BC6F70  3B BF 05 C0 */	addi r29, r31, 0x5c0
/* 80BC6F74  3C 60 80 BC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80BC6F78  38 03 7E AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80BC6F7C  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80BC6F80  7F A3 EB 78 */	mr r3, r29
/* 80BC6F84  38 80 00 00 */	li r4, 0
/* 80BC6F88  4B 76 14 74 */	b init__12J3DFrameCtrlFs
/* 80BC6F8C  38 00 00 00 */	li r0, 0
/* 80BC6F90  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80BC6F94  3B BF 05 DC */	addi r29, r31, 0x5dc
/* 80BC6F98  3C 60 80 BC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80BC6F9C  38 03 7E AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80BC6FA0  90 1F 05 DC */	stw r0, 0x5dc(r31)
/* 80BC6FA4  7F A3 EB 78 */	mr r3, r29
/* 80BC6FA8  38 80 00 00 */	li r4, 0
/* 80BC6FAC  4B 76 14 50 */	b init__12J3DFrameCtrlFs
/* 80BC6FB0  38 00 00 00 */	li r0, 0
/* 80BC6FB4  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_80BC6FB8:
/* 80BC6FB8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BC6FBC  60 00 00 08 */	ori r0, r0, 8
/* 80BC6FC0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BC6FC4:
/* 80BC6FC4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC6FC8  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BC6FCC  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80BC6FD0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80BC6FD4  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC6FD8  54 00 10 3A */	slwi r0, r0, 2
/* 80BC6FDC  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BC6FE0  38 84 7D 78 */	addi r4, r4, l_arcName@l
/* 80BC6FE4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BC6FE8  4B 46 5E D4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC6FEC  7C 7F 1B 78 */	mr r31, r3
/* 80BC6FF0  2C 1F 00 04 */	cmpwi r31, 4
/* 80BC6FF4  40 82 02 24 */	bne lbl_80BC7218
/* 80BC6FF8  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC6FFC  54 00 10 3A */	slwi r0, r0, 2
/* 80BC7000  7F C3 F3 78 */	mr r3, r30
/* 80BC7004  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BC7008  38 84 7D 78 */	addi r4, r4, l_arcName@l
/* 80BC700C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BC7010  3C A0 80 BC */	lis r5, l_dzbIdx@ha
/* 80BC7014  38 A5 7D 20 */	addi r5, r5, l_dzbIdx@l
/* 80BC7018  7C A5 00 2E */	lwzx r5, r5, r0
/* 80BC701C  38 C0 00 00 */	li r6, 0
/* 80BC7020  38 E0 0C 00 */	li r7, 0xc00
/* 80BC7024  39 00 00 00 */	li r8, 0
/* 80BC7028  4B 4B 17 94 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BC702C  7C 7F 1B 78 */	mr r31, r3
/* 80BC7030  2C 1F 00 05 */	cmpwi r31, 5
/* 80BC7034  40 82 00 0C */	bne lbl_80BC7040
/* 80BC7038  38 60 00 05 */	li r3, 5
/* 80BC703C  48 00 01 E0 */	b lbl_80BC721C
lbl_80BC7040:
/* 80BC7040  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC7044  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC7048  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BC704C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80BC7050  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80BC7054  98 1E 04 8C */	stb r0, 0x48c(r30)
/* 80BC7058  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC705C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BC7060  7F C3 F3 78 */	mr r3, r30
/* 80BC7064  4B 45 35 14 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BC7068  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC706C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BC7070  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80BC7074  38 00 FF FF */	li r0, -1
/* 80BC7078  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80BC707C  38 00 00 00 */	li r0, 0
/* 80BC7080  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80BC7084  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC7088  28 00 00 01 */	cmplwi r0, 1
/* 80BC708C  40 82 00 E0 */	bne lbl_80BC716C
/* 80BC7090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC7094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC7098  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 80BC709C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC70A0  7C 05 07 74 */	extsb r5, r0
/* 80BC70A4  4B 46 E2 BC */	b isSwitch__10dSv_info_cCFii
/* 80BC70A8  98 7E 05 B0 */	stb r3, 0x5b0(r30)
/* 80BC70AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC70B0  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 80BC70B4  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 80BC70B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC70BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC70C0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80BC70C4  7F C4 F3 78 */	mr r4, r30
/* 80BC70C8  88 BE 05 B6 */	lbz r5, 0x5b6(r30)
/* 80BC70CC  4B 48 05 CC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80BC70D0  B0 7E 05 B4 */	sth r3, 0x5b4(r30)
/* 80BC70D4  38 00 00 00 */	li r0, 0
/* 80BC70D8  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 80BC70DC  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80BC70E0  28 00 00 FF */	cmplwi r0, 0xff
/* 80BC70E4  40 82 00 0C */	bne lbl_80BC70F0
/* 80BC70E8  38 00 00 03 */	li r0, 3
/* 80BC70EC  98 1E 05 B7 */	stb r0, 0x5b7(r30)
lbl_80BC70F0:
/* 80BC70F0  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80BC70F4  28 00 00 00 */	cmplwi r0, 0
/* 80BC70F8  41 82 00 38 */	beq lbl_80BC7130
/* 80BC70FC  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 80BC7100  3C 60 80 BC */	lis r3, lit_3909@ha
/* 80BC7104  C8 23 7D 38 */	lfd f1, lit_3909@l(r3)
/* 80BC7108  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC710C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC7110  3C 00 43 30 */	lis r0, 0x4330
/* 80BC7114  90 01 00 08 */	stw r0, 8(r1)
/* 80BC7118  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BC711C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BC7120  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80BC7124  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80BC7128  4B 44 63 00 */	b play__14mDoExt_baseAnmFv
/* 80BC712C  48 00 00 34 */	b lbl_80BC7160
lbl_80BC7130:
/* 80BC7130  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 80BC7134  3C 60 80 BC */	lis r3, lit_3909@ha
/* 80BC7138  C8 23 7D 38 */	lfd f1, lit_3909@l(r3)
/* 80BC713C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC7140  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC7144  3C 00 43 30 */	lis r0, 0x4330
/* 80BC7148  90 01 00 08 */	stw r0, 8(r1)
/* 80BC714C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BC7150  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BC7154  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 80BC7158  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80BC715C  4B 44 62 CC */	b play__14mDoExt_baseAnmFv
lbl_80BC7160:
/* 80BC7160  7F C3 F3 78 */	mr r3, r30
/* 80BC7164  48 00 05 F9 */	bl init_modeWait__12daObjCdoor_cFv
/* 80BC7168  48 00 00 60 */	b lbl_80BC71C8
lbl_80BC716C:
/* 80BC716C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC7170  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC7174  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 80BC7178  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC717C  7C 05 07 74 */	extsb r5, r0
/* 80BC7180  4B 46 E1 E0 */	b isSwitch__10dSv_info_cCFii
/* 80BC7184  2C 03 00 00 */	cmpwi r3, 0
/* 80BC7188  41 82 00 30 */	beq lbl_80BC71B8
/* 80BC718C  38 00 00 01 */	li r0, 1
/* 80BC7190  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80BC7194  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BC7198  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC719C  54 00 10 3A */	slwi r0, r0, 2
/* 80BC71A0  3C 60 80 BC */	lis r3, l_moveOffsetY@ha
/* 80BC71A4  38 63 7D 80 */	addi r3, r3, l_moveOffsetY@l
/* 80BC71A8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BC71AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC71B0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BC71B4  48 00 00 14 */	b lbl_80BC71C8
lbl_80BC71B8:
/* 80BC71B8  3C 60 80 BC */	lis r3, daObjCdoor_searchChain__FP10fopAc_ac_cPv@ha
/* 80BC71BC  38 63 6E F0 */	addi r3, r3, daObjCdoor_searchChain__FP10fopAc_ac_cPv@l
/* 80BC71C0  7F C4 F3 78 */	mr r4, r30
/* 80BC71C4  4B 45 26 34 */	b fopAcIt_Judge__FPFPvPv_PvPv
lbl_80BC71C8:
/* 80BC71C8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BC71CC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BC71D0  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC71D4  54 00 10 3A */	slwi r0, r0, 2
/* 80BC71D8  3C 60 80 BC */	lis r3, l_attentionOffsetY@ha
/* 80BC71DC  38 63 7D 28 */	addi r3, r3, l_attentionOffsetY@l
/* 80BC71E0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BC71E4  EC 21 00 2A */	fadds f1, f1, f0
/* 80BC71E8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BC71EC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BC71F0  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80BC71F4  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80BC71F8  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80BC71FC  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BC7200  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80BC7204  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BC7208  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80BC720C  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BC7210  7F C3 F3 78 */	mr r3, r30
/* 80BC7214  48 00 01 AD */	bl setMatrix__12daObjCdoor_cFv
lbl_80BC7218:
/* 80BC7218  7F E3 FB 78 */	mr r3, r31
lbl_80BC721C:
/* 80BC721C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC7220  4B 79 B0 08 */	b _restgpr_29
/* 80BC7224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC7228  7C 08 03 A6 */	mtlr r0
/* 80BC722C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC7230  4E 80 00 20 */	blr 
