lbl_80A533B4:
/* 80A533B4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80A533B8  7C 08 02 A6 */	mflr r0
/* 80A533BC  90 01 01 54 */	stw r0, 0x154(r1)
/* 80A533C0  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80A533C4  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 80A533C8  39 61 01 40 */	addi r11, r1, 0x140
/* 80A533CC  4B 90 EE 0D */	bl _savegpr_28
/* 80A533D0  7C 7C 1B 78 */	mr r28, r3
/* 80A533D4  7C 9D 23 78 */	mr r29, r4
/* 80A533D8  FF E0 08 90 */	fmr f31, f1
/* 80A533DC  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A533E0  3B E3 DE FC */	addi r31, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A533E4  7F 9E E3 78 */	mr r30, r28
/* 80A533E8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A533EC  4B 62 41 91 */	bl __ct__11dBgS_GndChkFv
/* 80A533F0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A533F4  4B 62 48 75 */	bl __ct__11dBgS_LinChkFv
/* 80A533F8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80A533FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A53400  C0 3F 03 E8 */	lfs f1, 0x3e8(r31)
/* 80A53404  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80A53408  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5340C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A53410  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80A53414  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A53418  38 61 00 68 */	addi r3, r1, 0x68
/* 80A5341C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A53420  38 A1 00 08 */	addi r5, r1, 8
/* 80A53424  7F C6 F3 78 */	mr r6, r30
/* 80A53428  4B 62 49 3D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A5342C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A53430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A53434  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80A53438  7F C3 F3 78 */	mr r3, r30
/* 80A5343C  38 81 00 68 */	addi r4, r1, 0x68
/* 80A53440  4B 62 0F 75 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A53444  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A53448  41 82 00 14 */	beq lbl_80A5345C
/* 80A5344C  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 80A53450  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80A53454  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A53458  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80A5345C:
/* 80A5345C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A53460  4B 62 43 51 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80A53464  38 61 00 14 */	addi r3, r1, 0x14
/* 80A53468  38 81 00 08 */	addi r4, r1, 8
/* 80A5346C  4B 81 48 BD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A53470  7F C3 F3 78 */	mr r3, r30
/* 80A53474  38 81 00 14 */	addi r4, r1, 0x14
/* 80A53478  4B 62 10 29 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A5347C  D0 3C 06 3C */	stfs f1, 0x63c(r28)
/* 80A53480  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80A53484  C0 1C 06 3C */	lfs f0, 0x63c(r28)
/* 80A53488  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5348C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A53490  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A53494  38 81 00 08 */	addi r4, r1, 8
/* 80A53498  4B 81 48 91 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A5349C  7F C3 F3 78 */	mr r3, r30
/* 80A534A0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80A534A4  4B 62 0F FD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A534A8  C0 1C 06 3C */	lfs f0, 0x63c(r28)
/* 80A534AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A534B0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80A534B4  40 81 00 30 */	ble lbl_80A534E4
/* 80A534B8  38 61 00 14 */	addi r3, r1, 0x14
/* 80A534BC  38 80 FF FF */	li r4, -1
/* 80A534C0  4B 62 43 89 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80A534C4  38 61 00 68 */	addi r3, r1, 0x68
/* 80A534C8  38 80 FF FF */	li r4, -1
/* 80A534CC  4B 62 48 11 */	bl __dt__11dBgS_LinChkFv
/* 80A534D0  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A534D4  38 80 FF FF */	li r4, -1
/* 80A534D8  4B 62 41 19 */	bl __dt__11dBgS_GndChkFv
/* 80A534DC  38 60 00 01 */	li r3, 1
/* 80A534E0  48 00 00 2C */	b lbl_80A5350C
lbl_80A534E4:
/* 80A534E4  38 61 00 14 */	addi r3, r1, 0x14
/* 80A534E8  38 80 FF FF */	li r4, -1
/* 80A534EC  4B 62 43 5D */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80A534F0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A534F4  38 80 FF FF */	li r4, -1
/* 80A534F8  4B 62 47 E5 */	bl __dt__11dBgS_LinChkFv
/* 80A534FC  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A53500  38 80 FF FF */	li r4, -1
/* 80A53504  4B 62 40 ED */	bl __dt__11dBgS_GndChkFv
/* 80A53508  38 60 00 00 */	li r3, 0
lbl_80A5350C:
/* 80A5350C  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80A53510  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80A53514  39 61 01 40 */	addi r11, r1, 0x140
/* 80A53518  4B 90 ED 0D */	bl _restgpr_28
/* 80A5351C  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80A53520  7C 08 03 A6 */	mtlr r0
/* 80A53524  38 21 01 50 */	addi r1, r1, 0x150
/* 80A53528  4E 80 00 20 */	blr 
