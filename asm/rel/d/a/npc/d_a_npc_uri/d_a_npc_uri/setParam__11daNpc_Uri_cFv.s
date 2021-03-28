lbl_80B27820:
/* 80B27820  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B27824  7C 08 02 A6 */	mflr r0
/* 80B27828  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B2782C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B27830  4B 83 A9 A4 */	b _savegpr_27
/* 80B27834  7C 7F 1B 78 */	mr r31, r3
/* 80B27838  48 00 0E 0D */	bl selectAction__11daNpc_Uri_cFv
/* 80B2783C  7F E3 FB 78 */	mr r3, r31
/* 80B27840  48 00 03 B1 */	bl srchActors__11daNpc_Uri_cFv
/* 80B27844  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha
/* 80B27848  38 63 CE 14 */	addi r3, r3, m__17daNpc_Uri_Param_c@l
/* 80B2784C  AB C3 00 48 */	lha r30, 0x48(r3)
/* 80B27850  AB A3 00 4A */	lha r29, 0x4a(r3)
/* 80B27854  AB 83 00 4C */	lha r28, 0x4c(r3)
/* 80B27858  AB 63 00 4E */	lha r27, 0x4e(r3)
/* 80B2785C  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B27860  28 00 00 01 */	cmplwi r0, 1
/* 80B27864  40 82 00 0C */	bne lbl_80B27870
/* 80B27868  3B A0 00 04 */	li r29, 4
/* 80B2786C  3B 60 00 04 */	li r27, 4
lbl_80B27870:
/* 80B27870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B27874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B27878  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B2787C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B27880  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80B27884  7D 89 03 A6 */	mtctr r12
/* 80B27888  4E 80 04 21 */	bctrl 
/* 80B2788C  28 03 00 00 */	cmplwi r3, 0
/* 80B27890  41 82 00 0C */	beq lbl_80B2789C
/* 80B27894  3B C0 00 07 */	li r30, 7
/* 80B27898  3B 80 00 09 */	li r28, 9
lbl_80B2789C:
/* 80B2789C  7F 83 07 34 */	extsh r3, r28
/* 80B278A0  7F 64 07 34 */	extsh r4, r27
/* 80B278A4  4B 62 51 74 */	b daNpcT_getDistTableIdx__Fii
/* 80B278A8  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80B278AC  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80B278B0  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80B278B4  7F C3 07 34 */	extsh r3, r30
/* 80B278B8  7F A4 07 34 */	extsh r4, r29
/* 80B278BC  4B 62 51 5C */	b daNpcT_getDistTableIdx__Fii
/* 80B278C0  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80B278C4  38 00 00 0A */	li r0, 0xa
/* 80B278C8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B278CC  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha
/* 80B278D0  38 63 CE 14 */	addi r3, r3, m__17daNpc_Uri_Param_c@l
/* 80B278D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B278D8  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80B278DC  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80B278E0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80B278E4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B278E8  FC 00 00 1E */	fctiwz f0, f0
/* 80B278EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B278F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B278F4  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80B278F8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B278FC  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80B27900  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B27904  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80B27908  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B2790C  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80B27910  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B27914  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80B27918  4B 54 E6 28 */	b SetWallR__12dBgS_AcchCirFf
/* 80B2791C  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha
/* 80B27920  38 63 CE 14 */	addi r3, r3, m__17daNpc_Uri_Param_c@l
/* 80B27924  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B27928  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80B2792C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B27930  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80B27934  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B27938  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B2793C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B27940  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80B27944  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B27948  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80B2794C  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B27950  28 00 00 04 */	cmplwi r0, 4
/* 80B27954  40 82 00 28 */	bne lbl_80B2797C
/* 80B27958  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80B2795C  60 00 00 02 */	ori r0, r0, 2
/* 80B27960  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80B27964  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80B27968  60 00 00 04 */	ori r0, r0, 4
/* 80B2796C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80B27970  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B27974  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B27978  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_80B2797C:
/* 80B2797C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B27980  4B 83 A8 A0 */	b _restgpr_27
/* 80B27984  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B27988  7C 08 03 A6 */	mtlr r0
/* 80B2798C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B27990  4E 80 00 20 */	blr 
