lbl_80123434:
/* 80123434  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80123438  7C 08 02 A6 */	mflr r0
/* 8012343C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80123440  39 61 00 70 */	addi r11, r1, 0x70
/* 80123444  48 23 ED 91 */	bl _savegpr_27
/* 80123448  7C 7F 1B 78 */	mr r31, r3
/* 8012344C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80123450  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80123454  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80123458  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012345C  7C 64 02 14 */	add r3, r4, r0
/* 80123460  C0 03 00 04 */	lfs f0, 4(r3)
/* 80123464  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80123468  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 8012346C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80123470  EC 81 00 2A */	fadds f4, f1, f0
/* 80123474  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 80123478  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8012347C  EC 61 00 2A */	fadds f3, f1, f0
/* 80123480  7C 04 04 2E */	lfsx f0, r4, r0
/* 80123484  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80123488  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012348C  EC 01 00 2A */	fadds f0, f1, f0
/* 80123490  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80123494  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80123498  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8012349C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 801234A0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 801234A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801234A8  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 801234AC  38 81 00 38 */	addi r4, r1, 0x38
/* 801234B0  48 14 48 79 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 801234B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801234B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801234BC  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 801234C0  7F 83 E3 78 */	mr r3, r28
/* 801234C4  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 801234C8  4B F5 0F D9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 801234CC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 801234D0  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 801234D4  EC 02 00 28 */	fsubs f0, f2, f0
/* 801234D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801234DC  40 80 00 1C */	bge lbl_801234F8
/* 801234E0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801234E4  7F 83 E3 78 */	mr r3, r28
/* 801234E8  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 801234EC  38 A1 00 44 */	addi r5, r1, 0x44
/* 801234F0  4B F5 12 55 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 801234F4  48 00 00 18 */	b lbl_8012350C
lbl_801234F8:
/* 801234F8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801234FC  7F 83 E3 78 */	mr r3, r28
/* 80123500  38 9F 1D 1C */	addi r4, r31, 0x1d1c
/* 80123504  38 A1 00 44 */	addi r5, r1, 0x44
/* 80123508  4B F5 12 3D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
lbl_8012350C:
/* 8012350C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80123510  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80123514  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80123518  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8012351C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80123520  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80123524  38 61 00 2C */	addi r3, r1, 0x2c
/* 80123528  48 22 3C 11 */	bl PSVECSquareMag
/* 8012352C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80123530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123534  40 81 00 58 */	ble lbl_8012358C
/* 80123538  FC 00 08 34 */	frsqrte f0, f1
/* 8012353C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80123540  FC 44 00 32 */	fmul f2, f4, f0
/* 80123544  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80123548  FC 00 00 32 */	fmul f0, f0, f0
/* 8012354C  FC 01 00 32 */	fmul f0, f1, f0
/* 80123550  FC 03 00 28 */	fsub f0, f3, f0
/* 80123554  FC 02 00 32 */	fmul f0, f2, f0
/* 80123558  FC 44 00 32 */	fmul f2, f4, f0
/* 8012355C  FC 00 00 32 */	fmul f0, f0, f0
/* 80123560  FC 01 00 32 */	fmul f0, f1, f0
/* 80123564  FC 03 00 28 */	fsub f0, f3, f0
/* 80123568  FC 02 00 32 */	fmul f0, f2, f0
/* 8012356C  FC 44 00 32 */	fmul f2, f4, f0
/* 80123570  FC 00 00 32 */	fmul f0, f0, f0
/* 80123574  FC 01 00 32 */	fmul f0, f1, f0
/* 80123578  FC 03 00 28 */	fsub f0, f3, f0
/* 8012357C  FC 02 00 32 */	fmul f0, f2, f0
/* 80123580  FC 21 00 32 */	fmul f1, f1, f0
/* 80123584  FC 20 08 18 */	frsp f1, f1
/* 80123588  48 00 00 88 */	b lbl_80123610
lbl_8012358C:
/* 8012358C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80123590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123594  40 80 00 10 */	bge lbl_801235A4
/* 80123598  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012359C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801235A0  48 00 00 70 */	b lbl_80123610
lbl_801235A4:
/* 801235A4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801235A8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 801235AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801235B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 801235B4  7C 03 00 00 */	cmpw r3, r0
/* 801235B8  41 82 00 14 */	beq lbl_801235CC
/* 801235BC  40 80 00 40 */	bge lbl_801235FC
/* 801235C0  2C 03 00 00 */	cmpwi r3, 0
/* 801235C4  41 82 00 20 */	beq lbl_801235E4
/* 801235C8  48 00 00 34 */	b lbl_801235FC
lbl_801235CC:
/* 801235CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801235D0  41 82 00 0C */	beq lbl_801235DC
/* 801235D4  38 00 00 01 */	li r0, 1
/* 801235D8  48 00 00 28 */	b lbl_80123600
lbl_801235DC:
/* 801235DC  38 00 00 02 */	li r0, 2
/* 801235E0  48 00 00 20 */	b lbl_80123600
lbl_801235E4:
/* 801235E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801235E8  41 82 00 0C */	beq lbl_801235F4
/* 801235EC  38 00 00 05 */	li r0, 5
/* 801235F0  48 00 00 10 */	b lbl_80123600
lbl_801235F4:
/* 801235F4  38 00 00 03 */	li r0, 3
/* 801235F8  48 00 00 08 */	b lbl_80123600
lbl_801235FC:
/* 801235FC  38 00 00 04 */	li r0, 4
lbl_80123600:
/* 80123600  2C 00 00 01 */	cmpwi r0, 1
/* 80123604  40 82 00 0C */	bne lbl_80123610
/* 80123608  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012360C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80123610:
/* 80123610  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 80123614  48 14 40 61 */	bl cM_atan2s__Fff
/* 80123618  B0 61 00 24 */	sth r3, 0x24(r1)
/* 8012361C  38 61 00 44 */	addi r3, r1, 0x44
/* 80123620  48 14 3B 09 */	bl atan2sX_Z__4cXyzCFv
/* 80123624  B0 61 00 26 */	sth r3, 0x26(r1)
/* 80123628  3B 80 00 00 */	li r28, 0
/* 8012362C  B3 81 00 28 */	sth r28, 0x28(r1)
/* 80123630  3B 60 00 00 */	li r27, 0
/* 80123634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80123638  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012363C  3C 60 80 39 */	lis r3, effName_41208@ha /* 0x80391D38@ha */
/* 80123640  3B C3 1D 38 */	addi r30, r3, effName_41208@l /* 0x80391D38@l */
lbl_80123644:
/* 80123644  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80123648  38 80 00 00 */	li r4, 0
/* 8012364C  90 81 00 08 */	stw r4, 8(r1)
/* 80123650  38 00 FF FF */	li r0, -1
/* 80123654  90 01 00 0C */	stw r0, 0xc(r1)
/* 80123658  90 81 00 10 */	stw r4, 0x10(r1)
/* 8012365C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80123660  90 81 00 18 */	stw r4, 0x18(r1)
/* 80123664  38 80 00 00 */	li r4, 0
/* 80123668  7C BE E2 2E */	lhzx r5, r30, r28
/* 8012366C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80123670  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80123674  39 01 00 24 */	addi r8, r1, 0x24
/* 80123678  39 20 00 00 */	li r9, 0
/* 8012367C  39 40 00 FF */	li r10, 0xff
/* 80123680  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80123684  4B F2 94 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80123688  3B 7B 00 01 */	addi r27, r27, 1
/* 8012368C  2C 1B 00 06 */	cmpwi r27, 6
/* 80123690  3B 9C 00 02 */	addi r28, r28, 2
/* 80123694  41 80 FF B0 */	blt lbl_80123644
/* 80123698  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012369C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 801236A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801236A4  39 61 00 70 */	addi r11, r1, 0x70
/* 801236A8  48 23 EB 79 */	bl _restgpr_27
/* 801236AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801236B0  7C 08 03 A6 */	mtlr r0
/* 801236B4  38 21 00 70 */	addi r1, r1, 0x70
/* 801236B8  4E 80 00 20 */	blr 
