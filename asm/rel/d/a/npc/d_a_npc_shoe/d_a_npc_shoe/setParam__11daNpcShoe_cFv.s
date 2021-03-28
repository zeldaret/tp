lbl_80AE92E8:
/* 80AE92E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE92EC  7C 08 02 A6 */	mflr r0
/* 80AE92F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE92F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE92F8  7C 7F 1B 78 */	mr r31, r3
/* 80AE92FC  3C 80 80 AF */	lis r4, m__17daNpcShoe_Param_c@ha
/* 80AE9300  38 A4 A3 B0 */	addi r5, r4, m__17daNpcShoe_Param_c@l
/* 80AE9304  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80AE9308  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80AE930C  4B 66 AF 6C */	b getDistTableIdx__8daNpcF_cFii
/* 80AE9310  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AE9314  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AE9318  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AE931C  7F E3 FB 78 */	mr r3, r31
/* 80AE9320  3C 80 80 AF */	lis r4, m__17daNpcShoe_Param_c@ha
/* 80AE9324  38 A4 A3 B0 */	addi r5, r4, m__17daNpcShoe_Param_c@l
/* 80AE9328  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80AE932C  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80AE9330  4B 66 AF 48 */	b getDistTableIdx__8daNpcF_cFii
/* 80AE9334  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80AE9338  88 1F 0E 1B */	lbz r0, 0xe1b(r31)
/* 80AE933C  20 00 00 00 */	subfic r0, r0, 0
/* 80AE9340  7C 60 01 10 */	subfe r3, r0, r0
/* 80AE9344  38 00 00 0A */	li r0, 0xa
/* 80AE9348  7C 00 18 38 */	and r0, r0, r3
/* 80AE934C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AE9350  3C 60 80 AF */	lis r3, m__17daNpcShoe_Param_c@ha
/* 80AE9354  38 83 A3 B0 */	addi r4, r3, m__17daNpcShoe_Param_c@l
/* 80AE9358  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AE935C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80AE9360  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80AE9364  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80AE9368  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80AE936C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AE9370  4B 58 CB D0 */	b SetWallR__12dBgS_AcchCirFf
/* 80AE9374  3C 60 80 AF */	lis r3, m__17daNpcShoe_Param_c@ha
/* 80AE9378  38 63 A3 B0 */	addi r3, r3, m__17daNpcShoe_Param_c@l
/* 80AE937C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AE9380  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 80AE9384  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AE9388  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AE938C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE9390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE9394  7C 08 03 A6 */	mtlr r0
/* 80AE9398  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE939C  4E 80 00 20 */	blr 
