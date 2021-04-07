lbl_80AE3974:
/* 80AE3974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE3978  7C 08 02 A6 */	mflr r0
/* 80AE397C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE3980  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE3984  4B 87 E8 59 */	bl _savegpr_29
/* 80AE3988  7C 7D 1B 78 */	mr r29, r3
/* 80AE398C  48 00 0B 35 */	bl selectAction__11daNpc_Sha_cFv
/* 80AE3990  7F A3 EB 78 */	mr r3, r29
/* 80AE3994  48 00 02 91 */	bl srchActors__11daNpc_Sha_cFv
/* 80AE3998  3C 60 80 AE */	lis r3, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE399C  38 83 6B C8 */	addi r4, r3, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE39A0  AB E4 00 48 */	lha r31, 0x48(r4)
/* 80AE39A4  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 80AE39A8  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80AE39AC  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80AE39B0  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80AE39B4  28 00 00 01 */	cmplwi r0, 1
/* 80AE39B8  40 82 00 0C */	bne lbl_80AE39C4
/* 80AE39BC  3B C0 00 04 */	li r30, 4
/* 80AE39C0  38 80 00 04 */	li r4, 4
lbl_80AE39C4:
/* 80AE39C4  7C 63 07 34 */	extsh r3, r3
/* 80AE39C8  7C 84 07 34 */	extsh r4, r4
/* 80AE39CC  4B 66 90 4D */	bl daNpcT_getDistTableIdx__Fii
/* 80AE39D0  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80AE39D4  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80AE39D8  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80AE39DC  7F E3 07 34 */	extsh r3, r31
/* 80AE39E0  7F C4 07 34 */	extsh r4, r30
/* 80AE39E4  4B 66 90 35 */	bl daNpcT_getDistTableIdx__Fii
/* 80AE39E8  98 7D 05 47 */	stb r3, 0x547(r29)
/* 80AE39EC  38 00 00 0A */	li r0, 0xa
/* 80AE39F0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80AE39F4  3C 60 80 AE */	lis r3, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE39F8  38 63 6B C8 */	addi r3, r3, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE39FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AE3A00  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80AE3A04  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80AE3A08  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80AE3A0C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AE3A10  FC 00 00 1E */	fctiwz f0, f0
/* 80AE3A14  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AE3A18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AE3A1C  98 1D 08 78 */	stb r0, 0x878(r29)
/* 80AE3A20  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AE3A24  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 80AE3A28  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AE3A2C  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 80AE3A30  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80AE3A34  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 80AE3A38  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80AE3A3C  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 80AE3A40  4B 59 25 01 */	bl SetWallR__12dBgS_AcchCirFf
/* 80AE3A44  3C 60 80 AE */	lis r3, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE3A48  38 63 6B C8 */	addi r3, r3, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE3A4C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AE3A50  D0 1D 08 D0 */	stfs f0, 0x8d0(r29)
/* 80AE3A54  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AE3A58  D0 1D 0D E8 */	stfs f0, 0xde8(r29)
/* 80AE3A5C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AE3A60  D0 1D 0A 80 */	stfs f0, 0xa80(r29)
/* 80AE3A64  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AE3A68  D0 1D 0A 84 */	stfs f0, 0xa84(r29)
/* 80AE3A6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AE3A70  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80AE3A74  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE3A78  4B 87 E7 B1 */	bl _restgpr_29
/* 80AE3A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE3A80  7C 08 03 A6 */	mtlr r0
/* 80AE3A84  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE3A88  4E 80 00 20 */	blr 
