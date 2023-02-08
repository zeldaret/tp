lbl_80993170:
/* 80993170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80993174  7C 08 02 A6 */	mflr r0
/* 80993178  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099317C  39 61 00 20 */	addi r11, r1, 0x20
/* 80993180  4B 9C F0 5D */	bl _savegpr_29
/* 80993184  7C 7D 1B 78 */	mr r29, r3
/* 80993188  88 03 10 EE */	lbz r0, 0x10ee(r3)
/* 8099318C  28 00 00 00 */	cmplwi r0, 0
/* 80993190  41 82 00 2C */	beq lbl_809931BC
/* 80993194  80 1D 10 E0 */	lwz r0, 0x10e0(r29)
/* 80993198  2C 00 00 02 */	cmpwi r0, 2
/* 8099319C  40 82 00 10 */	bne lbl_809931AC
/* 809931A0  38 7D 0E 78 */	addi r3, r29, 0xe78
/* 809931A4  4B 80 32 11 */	bl Reset__16ShopCam_action_cFv
/* 809931A8  48 00 00 0C */	b lbl_809931B4
lbl_809931AC:
/* 809931AC  38 7D 0E 78 */	addi r3, r29, 0xe78
/* 809931B0  4B 80 31 AD */	bl EventRecoverNotime__16ShopCam_action_cFv
lbl_809931B4:
/* 809931B4  38 00 00 00 */	li r0, 0
/* 809931B8  98 1D 10 EE */	stb r0, 0x10ee(r29)
lbl_809931BC:
/* 809931BC  7F A3 EB 78 */	mr r3, r29
/* 809931C0  48 00 0A 1D */	bl selectAction__14daNpc_clerkA_cFv
/* 809931C4  7F A3 EB 78 */	mr r3, r29
/* 809931C8  48 00 01 69 */	bl srchActors__14daNpc_clerkA_cFv
/* 809931CC  3C 60 80 99 */	lis r3, m__20daNpc_clerkA_Param_c@ha /* 0x80995870@ha */
/* 809931D0  38 83 58 70 */	addi r4, r3, m__20daNpc_clerkA_Param_c@l /* 0x80995870@l */
/* 809931D4  AB C4 00 48 */	lha r30, 0x48(r4)
/* 809931D8  AB E4 00 4A */	lha r31, 0x4a(r4)
/* 809931DC  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 809931E0  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 809931E4  4B 7B 98 35 */	bl daNpcT_getDistTableIdx__Fii
/* 809931E8  98 7D 05 44 */	stb r3, 0x544(r29)
/* 809931EC  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 809931F0  98 1D 05 45 */	stb r0, 0x545(r29)
/* 809931F4  7F C3 07 34 */	extsh r3, r30
/* 809931F8  7F E4 07 34 */	extsh r4, r31
/* 809931FC  4B 7B 98 1D */	bl daNpcT_getDistTableIdx__Fii
/* 80993200  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80993204  38 00 00 0A */	li r0, 0xa
/* 80993208  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8099320C  3C 60 80 99 */	lis r3, m__20daNpc_clerkA_Param_c@ha /* 0x80995870@ha */
/* 80993210  38 63 58 70 */	addi r3, r3, m__20daNpc_clerkA_Param_c@l /* 0x80995870@l */
/* 80993214  C0 03 00 08 */	lfs f0, 8(r3)
/* 80993218  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 8099321C  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80993220  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80993224  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80993228  FC 00 00 1E */	fctiwz f0, f0
/* 8099322C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80993230  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80993234  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80993238  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8099323C  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80993240  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80993244  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80993248  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8099324C  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80993250  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80993254  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80993258  4B 6E 2C E9 */	bl SetWallR__12dBgS_AcchCirFf
/* 8099325C  3C 60 80 99 */	lis r3, m__20daNpc_clerkA_Param_c@ha /* 0x80995870@ha */
/* 80993260  38 63 58 70 */	addi r3, r3, m__20daNpc_clerkA_Param_c@l /* 0x80995870@l */
/* 80993264  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80993268  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 8099326C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80993270  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80993274  C0 03 00 04 */	lfs f0, 4(r3)
/* 80993278  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8099327C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80993280  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80993284  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80993288  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 8099328C  39 61 00 20 */	addi r11, r1, 0x20
/* 80993290  4B 9C EF 99 */	bl _restgpr_29
/* 80993294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80993298  7C 08 03 A6 */	mtlr r0
/* 8099329C  38 21 00 20 */	addi r1, r1, 0x20
/* 809932A0  4E 80 00 20 */	blr 
