lbl_8059879C:
/* 8059879C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805987A0  7C 08 02 A6 */	mflr r0
/* 805987A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805987A8  39 61 00 40 */	addi r11, r1, 0x40
/* 805987AC  4B DC 9A 30 */	b _savegpr_29
/* 805987B0  7C 7E 1B 78 */	mr r30, r3
/* 805987B4  3C 60 80 5A */	lis r3, lit_3630@ha
/* 805987B8  3B E3 8F 78 */	addi r31, r3, lit_3630@l
/* 805987BC  3C 60 80 5A */	lis r3, l_HIO@ha
/* 805987C0  38 63 90 F4 */	addi r3, r3, l_HIO@l
/* 805987C4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805987C8  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 805987CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805987D0  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 805987D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805987D8  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 805987DC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805987E0  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 805987E4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805987E8  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 805987EC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805987F0  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 805987F4  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 805987F8  28 00 00 01 */	cmplwi r0, 1
/* 805987FC  40 82 00 A0 */	bne lbl_8059889C
/* 80598800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80598804  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80598808  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8059880C  38 80 00 00 */	li r4, 0
/* 80598810  90 81 00 08 */	stw r4, 8(r1)
/* 80598814  38 00 FF FF */	li r0, -1
/* 80598818  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059881C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80598820  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598824  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598828  38 80 00 00 */	li r4, 0
/* 8059882C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C73@ha */
/* 80598830  38 A5 8C 73 */	addi r5, r5, 0x8C73 /* 0x00008C73@l */
/* 80598834  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80598838  38 E0 00 00 */	li r7, 0
/* 8059883C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80598840  39 20 00 00 */	li r9, 0
/* 80598844  39 40 00 FF */	li r10, 0xff
/* 80598848  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8059884C  4B AB 42 44 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80598850  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80598854  38 80 00 00 */	li r4, 0
/* 80598858  90 81 00 08 */	stw r4, 8(r1)
/* 8059885C  38 00 FF FF */	li r0, -1
/* 80598860  90 01 00 0C */	stw r0, 0xc(r1)
/* 80598864  90 81 00 10 */	stw r4, 0x10(r1)
/* 80598868  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059886C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598870  38 80 00 00 */	li r4, 0
/* 80598874  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C74@ha */
/* 80598878  38 A5 8C 74 */	addi r5, r5, 0x8C74 /* 0x00008C74@l */
/* 8059887C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80598880  38 E0 00 00 */	li r7, 0
/* 80598884  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80598888  39 20 00 00 */	li r9, 0
/* 8059888C  39 40 00 FF */	li r10, 0xff
/* 80598890  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80598894  4B AB 41 FC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80598898  48 00 00 9C */	b lbl_80598934
lbl_8059889C:
/* 8059889C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805988A0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805988A4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805988A8  38 80 00 00 */	li r4, 0
/* 805988AC  90 81 00 08 */	stw r4, 8(r1)
/* 805988B0  38 00 FF FF */	li r0, -1
/* 805988B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805988B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 805988BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805988C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805988C4  38 80 00 00 */	li r4, 0
/* 805988C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008709@ha */
/* 805988CC  38 A5 87 09 */	addi r5, r5, 0x8709 /* 0x00008709@l */
/* 805988D0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 805988D4  38 E0 00 00 */	li r7, 0
/* 805988D8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 805988DC  39 20 00 00 */	li r9, 0
/* 805988E0  39 40 00 FF */	li r10, 0xff
/* 805988E4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 805988E8  4B AB 41 A8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805988EC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805988F0  38 80 00 00 */	li r4, 0
/* 805988F4  90 81 00 08 */	stw r4, 8(r1)
/* 805988F8  38 00 FF FF */	li r0, -1
/* 805988FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80598900  90 81 00 10 */	stw r4, 0x10(r1)
/* 80598904  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598908  90 81 00 18 */	stw r4, 0x18(r1)
/* 8059890C  38 80 00 00 */	li r4, 0
/* 80598910  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000870A@ha */
/* 80598914  38 A5 87 0A */	addi r5, r5, 0x870A /* 0x0000870A@l */
/* 80598918  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8059891C  38 E0 00 00 */	li r7, 0
/* 80598920  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80598924  39 20 00 00 */	li r9, 0
/* 80598928  39 40 00 FF */	li r10, 0xff
/* 8059892C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80598930  4B AB 41 60 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80598934:
/* 80598934  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80598938  7C 03 07 74 */	extsb r3, r0
/* 8059893C  4B A9 47 30 */	b dComIfGp_getReverb__Fi
/* 80598940  7C 67 1B 78 */	mr r7, r3
/* 80598944  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080193@ha */
/* 80598948  38 03 01 93 */	addi r0, r3, 0x0193 /* 0x00080193@l */
/* 8059894C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80598950  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80598954  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80598958  80 63 00 00 */	lwz r3, 0(r3)
/* 8059895C  38 81 00 20 */	addi r4, r1, 0x20
/* 80598960  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80598964  38 C0 00 00 */	li r6, 0
/* 80598968  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8059896C  FC 40 08 90 */	fmr f2, f1
/* 80598970  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80598974  FC 80 18 90 */	fmr f4, f3
/* 80598978  39 00 00 00 */	li r8, 0
/* 8059897C  4B D1 30 08 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80598980  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80598984  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80598988  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8059898C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80598990  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80598994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80598998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059899C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805989A0  38 80 00 02 */	li r4, 2
/* 805989A4  38 A0 00 0F */	li r5, 0xf
/* 805989A8  38 C1 00 24 */	addi r6, r1, 0x24
/* 805989AC  4B AD 71 64 */	b StartQuake__12dVibration_cFii4cXyz
/* 805989B0  38 00 00 01 */	li r0, 1
/* 805989B4  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 805989B8  39 61 00 40 */	addi r11, r1, 0x40
/* 805989BC  4B DC 98 6C */	b _restgpr_29
/* 805989C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805989C4  7C 08 03 A6 */	mtlr r0
/* 805989C8  38 21 00 40 */	addi r1, r1, 0x40
/* 805989CC  4E 80 00 20 */	blr 
