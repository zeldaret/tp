lbl_80ACC69C:
/* 80ACC69C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ACC6A0  7C 08 02 A6 */	mflr r0
/* 80ACC6A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACC6A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACC6AC  4B 89 5B 28 */	b _savegpr_27
/* 80ACC6B0  7C 7F 1B 78 */	mr r31, r3
/* 80ACC6B4  88 03 10 FC */	lbz r0, 0x10fc(r3)
/* 80ACC6B8  28 00 00 01 */	cmplwi r0, 1
/* 80ACC6BC  40 82 00 2C */	bne lbl_80ACC6E8
/* 80ACC6C0  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACC6C4  2C 00 00 02 */	cmpwi r0, 2
/* 80ACC6C8  40 82 00 10 */	bne lbl_80ACC6D8
/* 80ACC6CC  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80ACC6D0  4B 6C 9C E4 */	b Reset__16ShopCam_action_cFv
/* 80ACC6D4  48 00 00 0C */	b lbl_80ACC6E0
lbl_80ACC6D8:
/* 80ACC6D8  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80ACC6DC  4B 6C 9C 80 */	b EventRecoverNotime__16ShopCam_action_cFv
lbl_80ACC6E0:
/* 80ACC6E0  38 00 00 00 */	li r0, 0
/* 80ACC6E4  98 1F 10 FC */	stb r0, 0x10fc(r31)
lbl_80ACC6E8:
/* 80ACC6E8  7F E3 FB 78 */	mr r3, r31
/* 80ACC6EC  48 00 10 85 */	bl selectAction__13daNpc_Seira_cFv
/* 80ACC6F0  7F E3 FB 78 */	mr r3, r31
/* 80ACC6F4  48 00 02 8D */	bl srchActors__13daNpc_Seira_cFv
/* 80ACC6F8  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha
/* 80ACC6FC  38 63 FD F0 */	addi r3, r3, m__19daNpc_Seira_Param_c@l
/* 80ACC700  AB 83 00 48 */	lha r28, 0x48(r3)
/* 80ACC704  AB A3 00 4A */	lha r29, 0x4a(r3)
/* 80ACC708  AB 63 00 4C */	lha r27, 0x4c(r3)
/* 80ACC70C  AB C3 00 4E */	lha r30, 0x4e(r3)
/* 80ACC710  7F E3 FB 78 */	mr r3, r31
/* 80ACC714  48 00 15 59 */	bl checkStageIsSeirasShop__13daNpc_Seira_cFv
/* 80ACC718  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC71C  41 82 00 10 */	beq lbl_80ACC72C
/* 80ACC720  3B 80 00 04 */	li r28, 4
/* 80ACC724  3B 60 00 04 */	li r27, 4
/* 80ACC728  48 00 00 30 */	b lbl_80ACC758
lbl_80ACC72C:
/* 80ACC72C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACC730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACC734  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80ACC738  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80ACC73C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80ACC740  7D 89 03 A6 */	mtctr r12
/* 80ACC744  4E 80 04 21 */	bctrl 
/* 80ACC748  28 03 00 00 */	cmplwi r3, 0
/* 80ACC74C  41 82 00 0C */	beq lbl_80ACC758
/* 80ACC750  3B 80 00 07 */	li r28, 7
/* 80ACC754  3B 60 00 09 */	li r27, 9
lbl_80ACC758:
/* 80ACC758  7F 63 07 34 */	extsh r3, r27
/* 80ACC75C  7F C4 07 34 */	extsh r4, r30
/* 80ACC760  4B 68 02 B8 */	b daNpcT_getDistTableIdx__Fii
/* 80ACC764  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80ACC768  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80ACC76C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80ACC770  7F 83 07 34 */	extsh r3, r28
/* 80ACC774  7F A4 07 34 */	extsh r4, r29
/* 80ACC778  4B 68 02 A0 */	b daNpcT_getDistTableIdx__Fii
/* 80ACC77C  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80ACC780  38 00 00 0A */	li r0, 0xa
/* 80ACC784  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80ACC788  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha
/* 80ACC78C  38 63 FD F0 */	addi r3, r3, m__19daNpc_Seira_Param_c@l
/* 80ACC790  C0 03 00 08 */	lfs f0, 8(r3)
/* 80ACC794  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80ACC798  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80ACC79C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80ACC7A0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80ACC7A4  FC 00 00 1E */	fctiwz f0, f0
/* 80ACC7A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80ACC7AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ACC7B0  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80ACC7B4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80ACC7B8  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80ACC7BC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80ACC7C0  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80ACC7C4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80ACC7C8  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80ACC7CC  4B 5A 97 74 */	b SetWallR__12dBgS_AcchCirFf
/* 80ACC7D0  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha
/* 80ACC7D4  38 63 FD F0 */	addi r3, r3, m__19daNpc_Seira_Param_c@l
/* 80ACC7D8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80ACC7DC  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80ACC7E0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80ACC7E4  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80ACC7E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80ACC7EC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80ACC7F0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80ACC7F4  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80ACC7F8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80ACC7FC  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80ACC800  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACC804  4B 89 5A 1C */	b _restgpr_27
/* 80ACC808  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACC80C  7C 08 03 A6 */	mtlr r0
/* 80ACC810  38 21 00 30 */	addi r1, r1, 0x30
/* 80ACC814  4E 80 00 20 */	blr 
