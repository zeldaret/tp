lbl_800F038C:
/* 800F038C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F0390  7C 08 02 A6 */	mflr r0
/* 800F0394  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F0398  39 61 00 30 */	addi r11, r1, 0x30
/* 800F039C  48 27 1E 41 */	bl _savegpr_29
/* 800F03A0  7C 7E 1B 78 */	mr r30, r3
/* 800F03A4  7C 9D 23 78 */	mr r29, r4
/* 800F03A8  38 80 00 3B */	li r4, 0x3b
/* 800F03AC  4B FD 1B C1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F03B0  7F C3 F3 78 */	mr r3, r30
/* 800F03B4  38 80 00 02 */	li r4, 2
/* 800F03B8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F03BC  4B FB D7 31 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
/* 800F03C0  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800F03C4  28 00 00 FF */	cmplwi r0, 0xff
/* 800F03C8  41 82 00 10 */	beq lbl_800F03D8
/* 800F03CC  7F C3 F3 78 */	mr r3, r30
/* 800F03D0  38 80 00 00 */	li r4, 0
/* 800F03D4  4B FC 94 69 */	bl allUnequip__9daAlink_cFi
lbl_800F03D8:
/* 800F03D8  83 FE 28 18 */	lwz r31, 0x2818(r30)
/* 800F03DC  7F C3 F3 78 */	mr r3, r30
/* 800F03E0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F03E4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F03E8  7D 89 03 A6 */	mtctr r12
/* 800F03EC  4E 80 04 21 */	bctrl 
/* 800F03F0  28 03 00 00 */	cmplwi r3, 0
/* 800F03F4  41 82 00 18 */	beq lbl_800F040C
/* 800F03F8  7F E3 FB 78 */	mr r3, r31
/* 800F03FC  39 9F 18 F8 */	addi r12, r31, 0x18f8
/* 800F0400  48 27 1C 85 */	bl __ptmf_scall
/* 800F0404  60 00 00 00 */	nop 
/* 800F0408  48 00 00 0C */	b lbl_800F0414
lbl_800F040C:
/* 800F040C  7F E3 FB 78 */	mr r3, r31
/* 800F0410  4B F4 78 81 */	bl setPlayerRideNow__10e_wb_classFv
lbl_800F0414:
/* 800F0414  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800F0418  D0 1E 37 D4 */	stfs f0, 0x37d4(r30)
/* 800F041C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800F0420  D0 1E 37 D8 */	stfs f0, 0x37d8(r30)
/* 800F0424  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800F0428  D0 1E 37 DC */	stfs f0, 0x37dc(r30)
/* 800F042C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F0430  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800F0434  9B BE 2F C0 */	stb r29, 0x2fc0(r30)
/* 800F0438  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800F043C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800F0440  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800F0444  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800F0448  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 800F044C  48 25 64 9D */	bl PSMTXTrans
/* 800F0450  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800F0454  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800F0458  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800F045C  4B F1 BF D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 800F0460  88 1E 2F C0 */	lbz r0, 0x2fc0(r30)
/* 800F0464  28 00 00 00 */	cmplwi r0, 0
/* 800F0468  40 82 00 48 */	bne lbl_800F04B0
/* 800F046C  7F C3 F3 78 */	mr r3, r30
/* 800F0470  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F0474  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F0478  7D 89 03 A6 */	mtctr r12
/* 800F047C  4E 80 04 21 */	bctrl 
/* 800F0480  28 03 00 00 */	cmplwi r3, 0
/* 800F0484  38 00 00 5E */	li r0, 0x5e
/* 800F0488  41 82 00 08 */	beq lbl_800F0490
/* 800F048C  38 00 00 40 */	li r0, 0x40
lbl_800F0490:
/* 800F0490  7C 1D 03 78 */	mr r29, r0
/* 800F0494  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800F0498  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800F049C  3C 80 80 39 */	lis r4, leftOffset@ha
/* 800F04A0  38 84 19 90 */	addi r4, r4, leftOffset@l
/* 800F04A4  38 A1 00 08 */	addi r5, r1, 8
/* 800F04A8  48 25 68 C5 */	bl PSMTXMultVec
/* 800F04AC  48 00 00 44 */	b lbl_800F04F0
lbl_800F04B0:
/* 800F04B0  7F C3 F3 78 */	mr r3, r30
/* 800F04B4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F04B8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F04BC  7D 89 03 A6 */	mtctr r12
/* 800F04C0  4E 80 04 21 */	bctrl 
/* 800F04C4  28 03 00 00 */	cmplwi r3, 0
/* 800F04C8  38 00 00 5F */	li r0, 0x5f
/* 800F04CC  41 82 00 08 */	beq lbl_800F04D4
/* 800F04D0  38 00 00 41 */	li r0, 0x41
lbl_800F04D4:
/* 800F04D4  7C 1D 03 78 */	mr r29, r0
/* 800F04D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800F04DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800F04E0  3C 80 80 39 */	lis r4, rightOffset@ha
/* 800F04E4  38 84 19 9C */	addi r4, r4, rightOffset@l
/* 800F04E8  38 A1 00 08 */	addi r5, r1, 8
/* 800F04EC  48 25 68 81 */	bl PSMTXMultVec
lbl_800F04F0:
/* 800F04F0  7F C3 F3 78 */	mr r3, r30
/* 800F04F4  7F A4 EB 78 */	mr r4, r29
/* 800F04F8  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800F04FC  4B FB CA B5 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800F0500  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 800F0504  38 81 00 08 */	addi r4, r1, 8
/* 800F0508  48 17 78 21 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800F050C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F0510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F0514  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800F0518  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 800F051C  4B F8 3F 85 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800F0520  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800F0524  FC 20 08 18 */	frsp f1, f1
/* 800F0528  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800F052C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F0530  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800F0534  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 800F0538  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 800F053C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0540  40 80 00 18 */	bge lbl_800F0558
/* 800F0544  38 00 00 01 */	li r0, 1
/* 800F0548  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800F054C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F0550  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800F0554  48 00 00 0C */	b lbl_800F0560
lbl_800F0558:
/* 800F0558  38 00 00 00 */	li r0, 0
/* 800F055C  B0 1E 30 10 */	sth r0, 0x3010(r30)
lbl_800F0560:
/* 800F0560  C0 22 94 F0 */	lfs f1, lit_19428(r2)
/* 800F0564  D0 3E 33 B0 */	stfs f1, 0x33b0(r30)
/* 800F0568  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800F056C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F0570  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800F0574  38 00 00 0F */	li r0, 0xf
/* 800F0578  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800F057C  38 00 00 00 */	li r0, 0
/* 800F0580  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 800F0584  38 60 00 01 */	li r3, 1
/* 800F0588  88 1E 2F C0 */	lbz r0, 0x2fc0(r30)
/* 800F058C  7C 60 00 30 */	slw r0, r3, r0
/* 800F0590  98 1E 2F AB */	stb r0, 0x2fab(r30)
/* 800F0594  88 1E 2F C0 */	lbz r0, 0x2fc0(r30)
/* 800F0598  28 00 00 00 */	cmplwi r0, 0
/* 800F059C  40 82 00 24 */	bne lbl_800F05C0
/* 800F05A0  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800F05A4  38 63 55 14 */	addi r3, r3, l_waitBaseAnime@l
/* 800F05A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F05AC  FC 00 00 50 */	fneg f0, f0
/* 800F05B0  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 800F05B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 800F05B8  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
/* 800F05BC  48 00 00 20 */	b lbl_800F05DC
lbl_800F05C0:
/* 800F05C0  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800F05C4  38 63 55 14 */	addi r3, r3, l_waitBaseAnime@l
/* 800F05C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F05CC  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 800F05D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 800F05D4  FC 00 00 50 */	fneg f0, f0
/* 800F05D8  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
lbl_800F05DC:
/* 800F05DC  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800F05E0  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 800F05E4  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800F05E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F05EC  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800F05F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F05F4  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800F05F8  7F C3 F3 78 */	mr r3, r30
/* 800F05FC  38 80 00 02 */	li r4, 2
/* 800F0600  48 03 0B C1 */	bl setFootEffectProcType__9daAlink_cFi
/* 800F0604  38 60 00 01 */	li r3, 1
/* 800F0608  39 61 00 30 */	addi r11, r1, 0x30
/* 800F060C  48 27 1C 1D */	bl _restgpr_29
/* 800F0610  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F0614  7C 08 03 A6 */	mtlr r0
/* 800F0618  38 21 00 30 */	addi r1, r1, 0x30
/* 800F061C  4E 80 00 20 */	blr 
