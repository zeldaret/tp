lbl_80B60290:
/* 80B60290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B60294  7C 08 02 A6 */	mflr r0
/* 80B60298  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6029C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B602A0  4B 80 1F 39 */	bl _savegpr_28
/* 80B602A4  7C 7F 1B 78 */	mr r31, r3
/* 80B602A8  48 00 14 69 */	bl selectAction__11daNpc_ykW_cFv
/* 80B602AC  7F E3 FB 78 */	mr r3, r31
/* 80B602B0  48 00 03 11 */	bl srchActors__11daNpc_ykW_cFv
/* 80B602B4  88 9F 0F 80 */	lbz r4, 0xf80(r31)
/* 80B602B8  28 04 00 05 */	cmplwi r4, 5
/* 80B602BC  41 82 00 98 */	beq lbl_80B60354
/* 80B602C0  28 04 00 06 */	cmplwi r4, 6
/* 80B602C4  41 82 00 90 */	beq lbl_80B60354
/* 80B602C8  3B C0 00 0A */	li r30, 0xa
/* 80B602CC  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B602D0  38 63 7C 38 */	addi r3, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B602D4  AB A3 00 48 */	lha r29, 0x48(r3)
/* 80B602D8  AB 83 00 4A */	lha r28, 0x4a(r3)
/* 80B602DC  A8 A3 00 4C */	lha r5, 0x4c(r3)
/* 80B602E0  A8 03 00 4E */	lha r0, 0x4e(r3)
/* 80B602E4  28 04 00 01 */	cmplwi r4, 1
/* 80B602E8  40 82 00 10 */	bne lbl_80B602F8
/* 80B602EC  3B 80 00 04 */	li r28, 4
/* 80B602F0  38 00 00 04 */	li r0, 4
/* 80B602F4  48 00 00 14 */	b lbl_80B60308
lbl_80B602F8:
/* 80B602F8  28 04 00 03 */	cmplwi r4, 3
/* 80B602FC  40 82 00 0C */	bne lbl_80B60308
/* 80B60300  3B A0 00 05 */	li r29, 5
/* 80B60304  38 A0 00 07 */	li r5, 7
lbl_80B60308:
/* 80B60308  7C A3 07 34 */	extsh r3, r5
/* 80B6030C  7C 04 07 34 */	extsh r4, r0
/* 80B60310  4B 5E C7 09 */	bl daNpcT_getDistTableIdx__Fii
/* 80B60314  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80B60318  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80B6031C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80B60320  7F A3 07 34 */	extsh r3, r29
/* 80B60324  7F 84 07 34 */	extsh r4, r28
/* 80B60328  4B 5E C6 F1 */	bl daNpcT_getDistTableIdx__Fii
/* 80B6032C  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80B60330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B60334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B60338  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B6033C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B60340  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B60344  41 82 00 08 */	beq lbl_80B6034C
/* 80B60348  67 DE 00 80 */	oris r30, r30, 0x80
lbl_80B6034C:
/* 80B6034C  93 DF 05 5C */	stw r30, 0x55c(r31)
/* 80B60350  48 00 00 0C */	b lbl_80B6035C
lbl_80B60354:
/* 80B60354  38 00 00 00 */	li r0, 0
/* 80B60358  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80B6035C:
/* 80B6035C  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B60360  38 63 7C 38 */	addi r3, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B60364  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B60368  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80B6036C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80B60370  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80B60374  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B60378  FC 00 00 1E */	fctiwz f0, f0
/* 80B6037C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B60380  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B60384  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80B60388  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B6038C  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80B60390  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B60394  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80B60398  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B6039C  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80B603A0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B603A4  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80B603A8  4B 51 5B 99 */	bl SetWallR__12dBgS_AcchCirFf
/* 80B603AC  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B603B0  38 63 7C 38 */	addi r3, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B603B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B603B8  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80B603BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B603C0  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80B603C4  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B603C8  28 00 00 04 */	cmplwi r0, 4
/* 80B603CC  40 82 00 1C */	bne lbl_80B603E8
/* 80B603D0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80B603D4  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80B603D8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80B603DC  3C 60 80 B6 */	lis r3, lit_5051@ha /* 0x80B67D34@ha */
/* 80B603E0  C0 03 7D 34 */	lfs f0, lit_5051@l(r3)  /* 0x80B67D34@l */
/* 80B603E4  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
lbl_80B603E8:
/* 80B603E8  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B603EC  38 63 7C 38 */	addi r3, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B603F0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B603F4  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80B603F8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B603FC  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80B60400  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B60404  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B60408  38 00 00 00 */	li r0, 0
/* 80B6040C  98 1F 10 60 */	stb r0, 0x1060(r31)
/* 80B60410  98 1F 10 61 */	stb r0, 0x1061(r31)
/* 80B60414  39 61 00 20 */	addi r11, r1, 0x20
/* 80B60418  4B 80 1E 0D */	bl _restgpr_28
/* 80B6041C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B60420  7C 08 03 A6 */	mtlr r0
/* 80B60424  38 21 00 20 */	addi r1, r1, 0x20
/* 80B60428  4E 80 00 20 */	blr 
