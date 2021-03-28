lbl_80C7D6CC:
/* 80C7D6CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7D6D0  7C 08 02 A6 */	mflr r0
/* 80C7D6D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7D6D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7D6DC  4B 6E 4A FC */	b _savegpr_28
/* 80C7D6E0  7C 7E 1B 78 */	mr r30, r3
/* 80C7D6E4  3C 80 80 C8 */	lis r4, l_sph_src@ha
/* 80C7D6E8  3B E4 DE CC */	addi r31, r4, l_sph_src@l
/* 80C7D6EC  3B 80 00 00 */	li r28, 0
/* 80C7D6F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C7D6F4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80C7D6F8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C7D6FC  4B 39 D2 68 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7D700  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C7D704  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C7D708  28 00 00 FF */	cmplwi r0, 0xff
/* 80C7D70C  41 82 00 28 */	beq lbl_80C7D734
/* 80C7D710  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 80C7D714  C8 5F 00 90 */	lfd f2, 0x90(r31)
/* 80C7D718  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7D71C  3C 00 43 30 */	lis r0, 0x4330
/* 80C7D720  90 01 00 08 */	stw r0, 8(r1)
/* 80C7D724  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C7D728  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C7D72C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7D730  48 00 00 08 */	b lbl_80C7D738
lbl_80C7D734:
/* 80C7D734  C0 1F 00 88 */	lfs f0, 0x88(r31)
lbl_80C7D738:
/* 80C7D738  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7D73C  40 80 00 08 */	bge lbl_80C7D744
/* 80C7D740  3B 80 00 01 */	li r28, 1
lbl_80C7D744:
/* 80C7D744  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C7D748  40 82 00 78 */	bne lbl_80C7D7C0
/* 80C7D74C  38 00 00 00 */	li r0, 0
/* 80C7D750  98 1E 09 10 */	stb r0, 0x910(r30)
/* 80C7D754  88 1E 08 91 */	lbz r0, 0x891(r30)
/* 80C7D758  28 00 00 00 */	cmplwi r0, 0
/* 80C7D75C  41 82 01 18 */	beq lbl_80C7D874
/* 80C7D760  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C7D764  38 63 DF 98 */	addi r3, r3, l_arcName@l
/* 80C7D768  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7D76C  38 80 00 12 */	li r4, 0x12
/* 80C7D770  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C7D774  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C7D778  3C A5 00 02 */	addis r5, r5, 2
/* 80C7D77C  38 C0 00 80 */	li r6, 0x80
/* 80C7D780  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C7D784  4B 3B EB 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7D788  7C 65 1B 78 */	mr r5, r3
/* 80C7D78C  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D790  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7D794  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80C7D798  38 84 00 58 */	addi r4, r4, 0x58
/* 80C7D79C  38 C0 00 01 */	li r6, 1
/* 80C7D7A0  38 E0 00 00 */	li r7, 0
/* 80C7D7A4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C7D7A8  39 00 00 00 */	li r8, 0
/* 80C7D7AC  39 20 FF FF */	li r9, -1
/* 80C7D7B0  4B 38 FE 8C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C7D7B4  38 00 00 00 */	li r0, 0
/* 80C7D7B8  98 1E 08 91 */	stb r0, 0x891(r30)
/* 80C7D7BC  48 00 00 B8 */	b lbl_80C7D874
lbl_80C7D7C0:
/* 80C7D7C0  7F C3 F3 78 */	mr r3, r30
/* 80C7D7C4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C7D7C8  4B 39 CF 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7D7CC  7C 64 1B 78 */	mr r4, r3
/* 80C7D7D0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C7D7D4  38 A0 00 0A */	li r5, 0xa
/* 80C7D7D8  38 C0 04 00 */	li r6, 0x400
/* 80C7D7DC  4B 5F 2E 2C */	b cLib_addCalcAngleS2__FPssss
/* 80C7D7E0  38 7E 09 11 */	addi r3, r30, 0x911
/* 80C7D7E4  48 00 06 AD */	bl func_80C7DE90
/* 80C7D7E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7D7EC  40 82 00 88 */	bne lbl_80C7D874
/* 80C7D7F0  88 1E 08 91 */	lbz r0, 0x891(r30)
/* 80C7D7F4  28 00 00 00 */	cmplwi r0, 0
/* 80C7D7F8  40 82 00 6C */	bne lbl_80C7D864
/* 80C7D7FC  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C7D800  38 63 DF 98 */	addi r3, r3, l_arcName@l
/* 80C7D804  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7D808  38 80 00 13 */	li r4, 0x13
/* 80C7D80C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C7D810  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C7D814  3C A5 00 02 */	addis r5, r5, 2
/* 80C7D818  38 C0 00 80 */	li r6, 0x80
/* 80C7D81C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C7D820  4B 3B EA CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C7D824  7C 65 1B 78 */	mr r5, r3
/* 80C7D828  80 7E 08 80 */	lwz r3, 0x880(r30)
/* 80C7D82C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7D830  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80C7D834  38 84 00 58 */	addi r4, r4, 0x58
/* 80C7D838  38 C0 00 01 */	li r6, 1
/* 80C7D83C  38 E0 00 00 */	li r7, 0
/* 80C7D840  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C7D844  39 00 00 00 */	li r8, 0
/* 80C7D848  39 20 FF FF */	li r9, -1
/* 80C7D84C  4B 38 FD F0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C7D850  38 00 00 01 */	li r0, 1
/* 80C7D854  98 1E 08 91 */	stb r0, 0x891(r30)
/* 80C7D858  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80C7D85C  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80C7D860  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80C7D864:
/* 80C7D864  80 7E 08 84 */	lwz r3, 0x884(r30)
/* 80C7D868  4B 38 FB C0 */	b play__14mDoExt_baseAnmFv
/* 80C7D86C  80 7E 08 88 */	lwz r3, 0x888(r30)
/* 80C7D870  4B 38 FB B8 */	b play__14mDoExt_baseAnmFv
lbl_80C7D874:
/* 80C7D874  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C7D878  B0 1E 08 92 */	sth r0, 0x892(r30)
/* 80C7D87C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7D880  4B 6E 49 A4 */	b _restgpr_28
/* 80C7D884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7D888  7C 08 03 A6 */	mtlr r0
/* 80C7D88C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7D890  4E 80 00 20 */	blr 
