lbl_80579FF8:
/* 80579FF8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80579FFC  7C 08 02 A6 */	mflr r0
/* 8057A000  90 01 00 64 */	stw r0, 0x64(r1)
/* 8057A004  39 61 00 60 */	addi r11, r1, 0x60
/* 8057A008  4B DE 81 CC */	b _savegpr_27
/* 8057A00C  7C 7D 1B 78 */	mr r29, r3
/* 8057A010  3C 60 80 58 */	lis r3, l_hair_offset@ha
/* 8057A014  3B C3 B3 60 */	addi r30, r3, l_hair_offset@l
/* 8057A018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A01C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8057A020  38 7C 4E 20 */	addi r3, r28, 0x4e20
/* 8057A024  81 9C 4E 20 */	lwz r12, 0x4e20(r28)
/* 8057A028  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8057A02C  7D 89 03 A6 */	mtctr r12
/* 8057A030  4E 80 04 21 */	bctrl 
/* 8057A034  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8057A038  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8057A03C  28 00 00 03 */	cmplwi r0, 3
/* 8057A040  41 82 00 A0 */	beq lbl_8057A0E0
/* 8057A044  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8057A048  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8057A04C  28 04 00 FF */	cmplwi r4, 0xff
/* 8057A050  41 82 00 20 */	beq lbl_8057A070
/* 8057A054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057A05C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8057A060  7C 05 07 74 */	extsb r5, r0
/* 8057A064  4B AB B2 FC */	b isSwitch__10dSv_info_cCFii
/* 8057A068  2C 03 00 00 */	cmpwi r3, 0
/* 8057A06C  41 82 00 10 */	beq lbl_8057A07C
lbl_8057A070:
/* 8057A070  38 00 00 01 */	li r0, 1
/* 8057A074  98 1D 05 91 */	stb r0, 0x591(r29)
/* 8057A078  48 00 00 0C */	b lbl_8057A084
lbl_8057A07C:
/* 8057A07C  38 00 00 00 */	li r0, 0
/* 8057A080  98 1D 05 91 */	stb r0, 0x591(r29)
lbl_8057A084:
/* 8057A084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057A08C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 8057A090  88 1D 05 91 */	lbz r0, 0x591(r29)
/* 8057A094  28 00 00 00 */	cmplwi r0, 0
/* 8057A098  41 82 02 0C */	beq lbl_8057A2A4
/* 8057A09C  7F A3 EB 78 */	mr r3, r29
/* 8057A0A0  38 80 00 00 */	li r4, 0
/* 8057A0A4  4B FF FB 8D */	bl appear__15daObjBossWarp_cFi
/* 8057A0A8  7F A3 EB 78 */	mr r3, r29
/* 8057A0AC  4B FF FD B1 */	bl checkDistance__15daObjBossWarp_cFv
/* 8057A0B0  2C 03 00 00 */	cmpwi r3, 0
/* 8057A0B4  41 82 01 F0 */	beq lbl_8057A2A4
/* 8057A0B8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8057A0BC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8057A0C0  7F 83 E3 78 */	mr r3, r28
/* 8057A0C4  38 A0 00 FF */	li r5, 0xff
/* 8057A0C8  38 C0 00 00 */	li r6, 0
/* 8057A0CC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8057A0D0  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8057A0D4  7D 89 03 A6 */	mtctr r12
/* 8057A0D8  4E 80 04 21 */	bctrl 
/* 8057A0DC  48 00 01 C8 */	b lbl_8057A2A4
lbl_8057A0E0:
/* 8057A0E0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8057A0E4  54 00 2F FF */	rlwinm. r0, r0, 5, 0x1f, 0x1f
/* 8057A0E8  40 82 00 34 */	bne lbl_8057A11C
/* 8057A0EC  38 7C 4F F8 */	addi r3, r28, 0x4ff8
/* 8057A0F0  4B AC E7 3C */	b checkStartDemo__16dEvent_manager_cFv
/* 8057A0F4  2C 03 00 00 */	cmpwi r3, 0
/* 8057A0F8  40 82 00 24 */	bne lbl_8057A11C
/* 8057A0FC  38 00 00 01 */	li r0, 1
/* 8057A100  98 1D 05 95 */	stb r0, 0x595(r29)
/* 8057A104  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8057A108  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 8057A10C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8057A110  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 8057A114  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8057A118  D0 1D 06 28 */	stfs f0, 0x628(r29)
lbl_8057A11C:
/* 8057A11C  7F A3 EB 78 */	mr r3, r29
/* 8057A120  48 00 02 71 */	bl event_proc_call__15daObjBossWarp_cFv
/* 8057A124  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8057A128  83 63 10 18 */	lwz r27, m_midnaActor__9daPy_py_c@l(r3)
/* 8057A12C  88 1D 05 95 */	lbz r0, 0x595(r29)
/* 8057A130  28 00 00 00 */	cmplwi r0, 0
/* 8057A134  41 82 00 30 */	beq lbl_8057A164
/* 8057A138  28 1B 00 00 */	cmplwi r27, 0
/* 8057A13C  41 82 00 28 */	beq lbl_8057A164
/* 8057A140  C0 1D 06 20 */	lfs f0, 0x620(r29)
/* 8057A144  D0 1B 09 AC */	stfs f0, 0x9ac(r27)
/* 8057A148  C0 1D 06 24 */	lfs f0, 0x624(r29)
/* 8057A14C  D0 1B 09 B0 */	stfs f0, 0x9b0(r27)
/* 8057A150  C0 1D 06 28 */	lfs f0, 0x628(r29)
/* 8057A154  D0 1B 09 B4 */	stfs f0, 0x9b4(r27)
/* 8057A158  80 1B 08 90 */	lwz r0, 0x890(r27)
/* 8057A15C  60 00 04 00 */	ori r0, r0, 0x400
/* 8057A160  90 1B 08 90 */	stw r0, 0x890(r27)
lbl_8057A164:
/* 8057A164  38 00 02 F2 */	li r0, 0x2f2
/* 8057A168  B0 01 00 08 */	sth r0, 8(r1)
/* 8057A16C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 8057A170  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 8057A174  38 81 00 08 */	addi r4, r1, 8
/* 8057A178  4B A9 F6 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8057A17C  7C 7F 1B 78 */	mr r31, r3
/* 8057A180  4B FF F4 D9 */	bl getNowLevel__Fv
/* 8057A184  7C 7C 1B 78 */	mr r28, r3
/* 8057A188  28 1F 00 00 */	cmplwi r31, 0
/* 8057A18C  41 82 01 18 */	beq lbl_8057A2A4
/* 8057A190  28 1B 00 00 */	cmplwi r27, 0
/* 8057A194  41 82 01 10 */	beq lbl_8057A2A4
/* 8057A198  88 1D 05 99 */	lbz r0, 0x599(r29)
/* 8057A19C  2C 00 00 01 */	cmpwi r0, 1
/* 8057A1A0  41 82 00 0C */	beq lbl_8057A1AC
/* 8057A1A4  40 80 01 00 */	bge lbl_8057A2A4
/* 8057A1A8  48 00 00 FC */	b lbl_8057A2A4
lbl_8057A1AC:
/* 8057A1AC  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 8057A1B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8057A1B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8057A1B8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8057A1BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8057A1C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8057A1C4  4B DC C2 EC */	b PSMTXCopy
/* 8057A1C8  1F 9C 00 0C */	mulli r28, r28, 0xc
/* 8057A1CC  38 7E 00 00 */	addi r3, r30, 0
/* 8057A1D0  7C 03 E4 2E */	lfsx f0, r3, r28
/* 8057A1D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8057A1D8  7C 63 E2 14 */	add r3, r3, r28
/* 8057A1DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8057A1E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8057A1E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8057A1E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8057A1EC  38 61 00 1C */	addi r3, r1, 0x1c
/* 8057A1F0  4B A9 2B E4 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 8057A1F4  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 8057A1F8  38 9E 00 54 */	addi r4, r30, 0x54
/* 8057A1FC  7C 64 E2 14 */	add r3, r4, r28
/* 8057A200  C0 03 00 08 */	lfs f0, 8(r3)
/* 8057A204  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057A208  FC 00 00 1E */	fctiwz f0, f0
/* 8057A20C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8057A210  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 8057A214  C0 03 00 04 */	lfs f0, 4(r3)
/* 8057A218  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057A21C  FC 00 00 1E */	fctiwz f0, f0
/* 8057A220  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8057A224  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8057A228  7C 04 E4 2E */	lfsx f0, r4, r28
/* 8057A22C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057A230  FC 00 00 1E */	fctiwz f0, f0
/* 8057A234  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8057A238  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8057A23C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057A240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057A244  4B A9 20 5C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8057A248  C0 3D 05 CC */	lfs f1, 0x5cc(r29)
/* 8057A24C  FC 40 08 90 */	fmr f2, f1
/* 8057A250  FC 60 08 90 */	fmr f3, f1
/* 8057A254  4B A9 2B E4 */	b scaleM__14mDoMtx_stack_cFfff
/* 8057A258  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057A25C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057A260  38 00 00 01 */	li r0, 1
/* 8057A264  98 1F 05 98 */	stb r0, 0x598(r31)
/* 8057A268  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 8057A26C  28 00 00 03 */	cmplwi r0, 3
/* 8057A270  40 80 00 1C */	bge lbl_8057A28C
/* 8057A274  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8057A278  28 04 00 00 */	cmplwi r4, 0
/* 8057A27C  41 82 00 28 */	beq lbl_8057A2A4
/* 8057A280  38 84 00 24 */	addi r4, r4, 0x24
/* 8057A284  4B DC C2 2C */	b PSMTXCopy
/* 8057A288  48 00 00 1C */	b lbl_8057A2A4
lbl_8057A28C:
/* 8057A28C  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 8057A290  28 04 00 00 */	cmplwi r4, 0
/* 8057A294  41 82 00 10 */	beq lbl_8057A2A4
/* 8057A298  80 84 00 04 */	lwz r4, 4(r4)
/* 8057A29C  38 84 00 24 */	addi r4, r4, 0x24
/* 8057A2A0  4B DC C2 10 */	b PSMTXCopy
lbl_8057A2A4:
/* 8057A2A4  80 7D 05 7C */	lwz r3, 0x57c(r29)
/* 8057A2A8  4B A9 31 80 */	b play__14mDoExt_baseAnmFv
/* 8057A2AC  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8057A2B0  4B A9 31 78 */	b play__14mDoExt_baseAnmFv
/* 8057A2B4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8057A2B8  4B A9 31 70 */	b play__14mDoExt_baseAnmFv
/* 8057A2BC  88 1D 06 2C */	lbz r0, 0x62c(r29)
/* 8057A2C0  28 00 00 00 */	cmplwi r0, 0
/* 8057A2C4  41 82 00 14 */	beq lbl_8057A2D8
/* 8057A2C8  38 7D 04 F0 */	addi r3, r29, 0x4f0
/* 8057A2CC  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 8057A2D0  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 8057A2D4  4B CF 64 6C */	b cLib_chaseF__FPfff
lbl_8057A2D8:
/* 8057A2D8  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 8057A2DC  28 03 00 00 */	cmplwi r3, 0
/* 8057A2E0  41 82 00 30 */	beq lbl_8057A310
/* 8057A2E4  E0 1D 04 EC */	psq_l f0, 1260(r29), 0, 0 /* qr0 */
/* 8057A2E8  C0 5D 04 F4 */	lfs f2, 0x4f4(r29)
/* 8057A2EC  F0 01 00 10 */	psq_st f0, 16(r1), 0, 0 /* qr0 */
/* 8057A2F0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8057A2F4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8057A2F8  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8057A2FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8057A300  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8057A304  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8057A308  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8057A30C  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_8057A310:
/* 8057A310  80 7D 05 7C */	lwz r3, 0x57c(r29)
/* 8057A314  28 03 00 00 */	cmplwi r3, 0
/* 8057A318  41 82 00 54 */	beq lbl_8057A36C
/* 8057A31C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8057A320  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8057A324  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8057A328  41 82 00 44 */	beq lbl_8057A36C
/* 8057A32C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008027F@ha */
/* 8057A330  38 03 02 7F */	addi r0, r3, 0x027F /* 0x0008027F@l */
/* 8057A334  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057A338  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8057A33C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8057A340  80 63 00 00 */	lwz r3, 0(r3)
/* 8057A344  38 81 00 0C */	addi r4, r1, 0xc
/* 8057A348  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8057A34C  38 C0 00 00 */	li r6, 0
/* 8057A350  38 E0 00 00 */	li r7, 0
/* 8057A354  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 8057A358  FC 40 08 90 */	fmr f2, f1
/* 8057A35C  C0 7E 01 20 */	lfs f3, 0x120(r30)
/* 8057A360  FC 80 18 90 */	fmr f4, f3
/* 8057A364  39 00 00 00 */	li r8, 0
/* 8057A368  4B D3 21 A4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8057A36C:
/* 8057A36C  7F A3 EB 78 */	mr r3, r29
/* 8057A370  4B FF F3 D9 */	bl setBaseMtx__15daObjBossWarp_cFv
/* 8057A374  38 60 00 01 */	li r3, 1
/* 8057A378  39 61 00 60 */	addi r11, r1, 0x60
/* 8057A37C  4B DE 7E A4 */	b _restgpr_27
/* 8057A380  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8057A384  7C 08 03 A6 */	mtlr r0
/* 8057A388  38 21 00 60 */	addi r1, r1, 0x60
/* 8057A38C  4E 80 00 20 */	blr 
