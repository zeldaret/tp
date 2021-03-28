lbl_809638CC:
/* 809638CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809638D0  7C 08 02 A6 */	mflr r0
/* 809638D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809638D8  39 61 00 20 */	addi r11, r1, 0x20
/* 809638DC  4B 9F E8 FC */	b _savegpr_28
/* 809638E0  7C 7F 1B 78 */	mr r31, r3
/* 809638E4  88 03 12 64 */	lbz r0, 0x1264(r3)
/* 809638E8  28 00 00 00 */	cmplwi r0, 0
/* 809638EC  41 82 00 2C */	beq lbl_80963918
/* 809638F0  80 1F 12 5C */	lwz r0, 0x125c(r31)
/* 809638F4  2C 00 00 02 */	cmpwi r0, 2
/* 809638F8  40 82 00 10 */	bne lbl_80963908
/* 809638FC  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80963900  4B 83 2A B4 */	b Reset__16ShopCam_action_cFv
/* 80963904  48 00 00 0C */	b lbl_80963910
lbl_80963908:
/* 80963908  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 8096390C  4B 83 2A 50 */	b EventRecoverNotime__16ShopCam_action_cFv
lbl_80963910:
/* 80963910  38 00 00 00 */	li r0, 0
/* 80963914  98 1F 12 64 */	stb r0, 0x1264(r31)
lbl_80963918:
/* 80963918  7F E3 FB 78 */	mr r3, r31
/* 8096391C  48 00 12 B5 */	bl selectAction__12daNpc_Bans_cFv
/* 80963920  7F E3 FB 78 */	mr r3, r31
/* 80963924  48 00 02 85 */	bl srchActors__12daNpc_Bans_cFv
/* 80963928  3B A0 00 0A */	li r29, 0xa
/* 8096392C  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha
/* 80963930  38 63 7E 20 */	addi r3, r3, m__18daNpc_Bans_Param_c@l
/* 80963934  AB 83 00 48 */	lha r28, 0x48(r3)
/* 80963938  AB C3 00 4A */	lha r30, 0x4a(r3)
/* 8096393C  A8 A3 00 4C */	lha r5, 0x4c(r3)
/* 80963940  A8 83 00 4E */	lha r4, 0x4e(r3)
/* 80963944  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 80963948  2C 00 00 02 */	cmpwi r0, 2
/* 8096394C  41 82 00 6C */	beq lbl_809639B8
/* 80963950  40 80 00 14 */	bge lbl_80963964
/* 80963954  2C 00 00 00 */	cmpwi r0, 0
/* 80963958  41 82 00 1C */	beq lbl_80963974
/* 8096395C  40 80 00 24 */	bge lbl_80963980
/* 80963960  48 00 00 58 */	b lbl_809639B8
lbl_80963964:
/* 80963964  2C 00 00 04 */	cmpwi r0, 4
/* 80963968  41 82 00 2C */	beq lbl_80963994
/* 8096396C  40 80 00 4C */	bge lbl_809639B8
/* 80963970  48 00 00 18 */	b lbl_80963988
lbl_80963974:
/* 80963974  3B 80 00 05 */	li r28, 5
/* 80963978  38 A0 00 05 */	li r5, 5
/* 8096397C  48 00 00 3C */	b lbl_809639B8
lbl_80963980:
/* 80963980  3B 80 00 08 */	li r28, 8
/* 80963984  48 00 00 34 */	b lbl_809639B8
lbl_80963988:
/* 80963988  3B 80 00 04 */	li r28, 4
/* 8096398C  38 A0 00 05 */	li r5, 5
/* 80963990  48 00 00 28 */	b lbl_809639B8
lbl_80963994:
/* 80963994  3B 80 00 05 */	li r28, 5
/* 80963998  38 A0 00 05 */	li r5, 5
/* 8096399C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809639A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809639A4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809639A8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809639AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809639B0  41 82 00 08 */	beq lbl_809639B8
/* 809639B4  3B A0 00 00 */	li r29, 0
lbl_809639B8:
/* 809639B8  7C A3 07 34 */	extsh r3, r5
/* 809639BC  7C 84 07 34 */	extsh r4, r4
/* 809639C0  4B 7E 90 58 */	b daNpcT_getDistTableIdx__Fii
/* 809639C4  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809639C8  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809639CC  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809639D0  7F 83 07 34 */	extsh r3, r28
/* 809639D4  7F C4 07 34 */	extsh r4, r30
/* 809639D8  4B 7E 90 40 */	b daNpcT_getDistTableIdx__Fii
/* 809639DC  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809639E0  93 BF 05 5C */	stw r29, 0x55c(r31)
/* 809639E4  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha
/* 809639E8  38 63 7E 20 */	addi r3, r3, m__18daNpc_Bans_Param_c@l
/* 809639EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 809639F0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809639F4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809639F8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809639FC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80963A00  FC 00 00 1E */	fctiwz f0, f0
/* 80963A04  D8 01 00 08 */	stfd f0, 8(r1)
/* 80963A08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80963A0C  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80963A10  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80963A14  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80963A18  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80963A1C  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80963A20  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80963A24  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80963A28  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80963A2C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80963A30  4B 71 25 10 */	b SetWallR__12dBgS_AcchCirFf
/* 80963A34  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha
/* 80963A38  38 63 7E 20 */	addi r3, r3, m__18daNpc_Bans_Param_c@l
/* 80963A3C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80963A40  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80963A44  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80963A48  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80963A4C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80963A50  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80963A54  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80963A58  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80963A5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80963A60  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80963A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80963A68  4B 9F E7 BC */	b _restgpr_28
/* 80963A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80963A70  7C 08 03 A6 */	mtlr r0
/* 80963A74  38 21 00 20 */	addi r1, r1, 0x20
/* 80963A78  4E 80 00 20 */	blr 
