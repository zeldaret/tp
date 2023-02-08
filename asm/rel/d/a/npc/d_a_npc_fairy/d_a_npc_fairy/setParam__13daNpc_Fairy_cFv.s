lbl_809B335C:
/* 809B335C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B3360  7C 08 02 A6 */	mflr r0
/* 809B3364  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B3368  39 61 00 20 */	addi r11, r1, 0x20
/* 809B336C  4B 9A EE 71 */	bl _savegpr_29
/* 809B3370  7C 7F 1B 78 */	mr r31, r3
/* 809B3374  48 00 01 AD */	bl srchActors__13daNpc_Fairy_cFv
/* 809B3378  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B337C  38 63 92 E4 */	addi r3, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B3380  AB A3 00 48 */	lha r29, 0x48(r3)
/* 809B3384  AB C3 00 4A */	lha r30, 0x4a(r3)
/* 809B3388  A8 A3 00 4C */	lha r5, 0x4c(r3)
/* 809B338C  A8 83 00 4E */	lha r4, 0x4e(r3)
/* 809B3390  88 1F 0F F6 */	lbz r0, 0xff6(r31)
/* 809B3394  28 00 00 01 */	cmplwi r0, 1
/* 809B3398  40 82 00 0C */	bne lbl_809B33A4
/* 809B339C  3B A0 00 07 */	li r29, 7
/* 809B33A0  38 A0 00 09 */	li r5, 9
lbl_809B33A4:
/* 809B33A4  7C A3 07 34 */	extsh r3, r5
/* 809B33A8  7C 84 07 34 */	extsh r4, r4
/* 809B33AC  4B 79 96 6D */	bl daNpcT_getDistTableIdx__Fii
/* 809B33B0  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809B33B4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809B33B8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809B33BC  7F A3 07 34 */	extsh r3, r29
/* 809B33C0  7F C4 07 34 */	extsh r4, r30
/* 809B33C4  4B 79 96 55 */	bl daNpcT_getDistTableIdx__Fii
/* 809B33C8  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809B33CC  38 00 00 0A */	li r0, 0xa
/* 809B33D0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809B33D4  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B33D8  38 63 92 E4 */	addi r3, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B33DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 809B33E0  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809B33E4  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809B33E8  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809B33EC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809B33F0  FC 00 00 1E */	fctiwz f0, f0
/* 809B33F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 809B33F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809B33FC  98 1F 08 78 */	stb r0, 0x878(r31)
/* 809B3400  88 1F 0F F6 */	lbz r0, 0xff6(r31)
/* 809B3404  28 00 00 00 */	cmplwi r0, 0
/* 809B3408  40 82 00 18 */	bne lbl_809B3420
/* 809B340C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 809B3410  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 809B3414  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809B3418  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 809B341C  48 00 00 1C */	b lbl_809B3438
lbl_809B3420:
/* 809B3420  28 00 00 01 */	cmplwi r0, 1
/* 809B3424  40 82 00 14 */	bne lbl_809B3438
/* 809B3428  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 809B342C  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 809B3430  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 809B3434  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
lbl_809B3438:
/* 809B3438  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B343C  38 63 92 E4 */	addi r3, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B3440  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 809B3444  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 809B3448  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809B344C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 809B3450  4B 6C 2A F1 */	bl SetWallR__12dBgS_AcchCirFf
/* 809B3454  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B3458  38 63 92 E4 */	addi r3, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B345C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809B3460  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 809B3464  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809B3468  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 809B346C  C0 03 00 04 */	lfs f0, 4(r3)
/* 809B3470  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809B3474  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 809B3478  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 809B347C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 809B3480  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 809B3484  39 61 00 20 */	addi r11, r1, 0x20
/* 809B3488  4B 9A ED A1 */	bl _restgpr_29
/* 809B348C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B3490  7C 08 03 A6 */	mtlr r0
/* 809B3494  38 21 00 20 */	addi r1, r1, 0x20
/* 809B3498  4E 80 00 20 */	blr 
