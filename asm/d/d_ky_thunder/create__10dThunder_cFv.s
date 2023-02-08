lbl_801AE458:
/* 801AE458  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801AE45C  7C 08 02 A6 */	mflr r0
/* 801AE460  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801AE464  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801AE468  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 801AE46C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 801AE470  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 801AE474  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 801AE478  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 801AE47C  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 801AE480  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 801AE484  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 801AE488  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 801AE48C  39 61 00 50 */	addi r11, r1, 0x50
/* 801AE490  48 1B 3D 45 */	bl _savegpr_27
/* 801AE494  7C 7D 1B 78 */	mr r29, r3
/* 801AE498  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AE49C  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AE4A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AE4A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AE4A8  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 801AE4AC  7F BC EB 79 */	or. r28, r29, r29
/* 801AE4B0  41 82 00 4C */	beq lbl_801AE4FC
/* 801AE4B4  3B 7C 01 08 */	addi r27, r28, 0x108
/* 801AE4B8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 801AE4BC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 801AE4C0  90 1C 01 08 */	stw r0, 0x108(r28)
/* 801AE4C4  7F 63 DB 78 */	mr r3, r27
/* 801AE4C8  38 80 00 00 */	li r4, 0
/* 801AE4CC  48 17 9F 31 */	bl init__12J3DFrameCtrlFs
/* 801AE4D0  38 00 00 00 */	li r0, 0
/* 801AE4D4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 801AE4D8  3B 7C 01 20 */	addi r27, r28, 0x120
/* 801AE4DC  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 801AE4E0  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 801AE4E4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 801AE4E8  7F 63 DB 78 */	mr r3, r27
/* 801AE4EC  38 80 00 00 */	li r4, 0
/* 801AE4F0  48 17 9F 0D */	bl init__12J3DFrameCtrlFs
/* 801AE4F4  38 00 00 00 */	li r0, 0
/* 801AE4F8  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_801AE4FC:
/* 801AE4FC  C0 22 A4 7C */	lfs f1, lit_3885(r2)
/* 801AE500  48 0B 94 55 */	bl cM_rndF__Ff
/* 801AE504  C0 02 A4 9C */	lfs f0, lit_4079(r2)
/* 801AE508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AE50C  40 80 00 30 */	bge lbl_801AE53C
/* 801AE510  3C 60 80 39 */	lis r3, d_d_ky_thunder__stringBase0@ha /* 0x80394F40@ha */
/* 801AE514  38 63 4F 40 */	addi r3, r3, d_d_ky_thunder__stringBase0@l /* 0x80394F40@l */
/* 801AE518  38 80 00 1E */	li r4, 0x1e
/* 801AE51C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AE520  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AE524  3C A5 00 02 */	addis r5, r5, 2
/* 801AE528  38 C0 00 80 */	li r6, 0x80
/* 801AE52C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801AE530  4B E8 DD BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801AE534  7C 7B 1B 78 */	mr r27, r3
/* 801AE538  48 00 00 2C */	b lbl_801AE564
lbl_801AE53C:
/* 801AE53C  3C 60 80 39 */	lis r3, d_d_ky_thunder__stringBase0@ha /* 0x80394F40@ha */
/* 801AE540  38 63 4F 40 */	addi r3, r3, d_d_ky_thunder__stringBase0@l /* 0x80394F40@l */
/* 801AE544  38 80 00 1F */	li r4, 0x1f
/* 801AE548  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AE54C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AE550  3C A5 00 02 */	addis r5, r5, 2
/* 801AE554  38 C0 00 80 */	li r6, 0x80
/* 801AE558  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801AE55C  4B E8 DD 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801AE560  7C 7B 1B 78 */	mr r27, r3
lbl_801AE564:
/* 801AE564  7F 63 DB 78 */	mr r3, r27
/* 801AE568  3C 80 00 08 */	lis r4, 8
/* 801AE56C  3C A0 01 00 */	lis r5, 0x100
/* 801AE570  4B E6 66 E5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 801AE574  90 7D 00 FC */	stw r3, 0xfc(r29)
/* 801AE578  80 1D 00 FC */	lwz r0, 0xfc(r29)
/* 801AE57C  28 00 00 00 */	cmplwi r0, 0
/* 801AE580  40 82 00 0C */	bne lbl_801AE58C
/* 801AE584  38 60 00 05 */	li r3, 5
/* 801AE588  48 00 03 70 */	b lbl_801AE8F8
lbl_801AE58C:
/* 801AE58C  3C 60 80 39 */	lis r3, d_d_ky_thunder__stringBase0@ha /* 0x80394F40@ha */
/* 801AE590  38 63 4F 40 */	addi r3, r3, d_d_ky_thunder__stringBase0@l /* 0x80394F40@l */
/* 801AE594  38 80 00 2F */	li r4, 0x2f
/* 801AE598  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AE59C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AE5A0  3C A5 00 02 */	addis r5, r5, 2
/* 801AE5A4  38 C0 00 80 */	li r6, 0x80
/* 801AE5A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801AE5AC  4B E8 DD 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801AE5B0  7C 65 1B 78 */	mr r5, r3
/* 801AE5B4  38 7D 01 08 */	addi r3, r29, 0x108
/* 801AE5B8  38 9B 00 58 */	addi r4, r27, 0x58
/* 801AE5BC  38 C0 00 01 */	li r6, 1
/* 801AE5C0  38 E0 00 00 */	li r7, 0
/* 801AE5C4  C0 22 A4 7C */	lfs f1, lit_3885(r2)
/* 801AE5C8  39 00 00 00 */	li r8, 0
/* 801AE5CC  39 20 FF FF */	li r9, -1
/* 801AE5D0  4B E5 F1 3D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 801AE5D4  2C 03 00 00 */	cmpwi r3, 0
/* 801AE5D8  40 82 00 0C */	bne lbl_801AE5E4
/* 801AE5DC  38 60 00 05 */	li r3, 5
/* 801AE5E0  48 00 03 18 */	b lbl_801AE8F8
lbl_801AE5E4:
/* 801AE5E4  C0 22 A4 7C */	lfs f1, lit_3885(r2)
/* 801AE5E8  D0 3D 01 64 */	stfs f1, 0x164(r29)
/* 801AE5EC  C0 1D 01 64 */	lfs f0, 0x164(r29)
/* 801AE5F0  D0 1D 01 14 */	stfs f0, 0x114(r29)
/* 801AE5F4  88 1F 0E D5 */	lbz r0, 0xed5(r31)
/* 801AE5F8  28 00 00 0A */	cmplwi r0, 0xa
/* 801AE5FC  40 80 00 0C */	bge lbl_801AE608
/* 801AE600  FF A0 08 90 */	fmr f29, f1
/* 801AE604  48 00 00 08 */	b lbl_801AE60C
lbl_801AE608:
/* 801AE608  C3 A2 A4 A0 */	lfs f29, lit_4080(r2)
lbl_801AE60C:
/* 801AE60C  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 801AE610  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 801AE614  48 0C 25 F1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 801AE618  B0 7D 01 68 */	sth r3, 0x168(r29)
/* 801AE61C  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 801AE620  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 801AE624  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801AE628  40 82 00 10 */	bne lbl_801AE638
/* 801AE62C  A8 7D 01 68 */	lha r3, 0x168(r29)
/* 801AE630  38 03 7F FF */	addi r0, r3, 0x7fff
/* 801AE634  B0 1D 01 68 */	sth r0, 0x168(r29)
lbl_801AE638:
/* 801AE638  C3 82 A4 A4 */	lfs f28, lit_4081(r2)
/* 801AE63C  C3 62 A4 A8 */	lfs f27, lit_4082(r2)
/* 801AE640  FF E0 E0 90 */	fmr f31, f28
/* 801AE644  FF C0 D8 90 */	fmr f30, f27
/* 801AE648  C0 02 A4 AC */	lfs f0, lit_4083(r2)
/* 801AE64C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801AE650  C0 02 A4 B0 */	lfs f0, lit_4084(r2)
/* 801AE654  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801AE658  C0 02 A4 70 */	lfs f0, lit_3882(r2)
/* 801AE65C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801AE660  C0 02 A4 B4 */	lfs f0, lit_4085(r2)
/* 801AE664  D0 1D 01 5C */	stfs f0, 0x15c(r29)
/* 801AE668  88 1F 0E D5 */	lbz r0, 0xed5(r31)
/* 801AE66C  28 00 00 0A */	cmplwi r0, 0xa
/* 801AE670  41 80 00 1C */	blt lbl_801AE68C
/* 801AE674  FF E0 D8 90 */	fmr f31, f27
/* 801AE678  C3 C2 A4 B8 */	lfs f30, lit_4086(r2)
/* 801AE67C  C0 02 A4 BC */	lfs f0, lit_4087(r2)
/* 801AE680  D0 1D 01 5C */	stfs f0, 0x15c(r29)
/* 801AE684  C0 02 A4 C0 */	lfs f0, lit_4088(r2)
/* 801AE688  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_801AE68C:
/* 801AE68C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AE690  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AE694  3B 63 4E 00 */	addi r27, r3, 0x4e00
/* 801AE698  7F 63 DB 78 */	mr r3, r27
/* 801AE69C  3C 80 80 39 */	lis r4, d_d_ky_thunder__stringBase0@ha /* 0x80394F40@ha */
/* 801AE6A0  38 84 4F 40 */	addi r4, r4, d_d_ky_thunder__stringBase0@l /* 0x80394F40@l */
/* 801AE6A4  38 84 00 07 */	addi r4, r4, 7
/* 801AE6A8  48 1B A2 ED */	bl strcmp
/* 801AE6AC  2C 03 00 00 */	cmpwi r3, 0
/* 801AE6B0  40 82 00 20 */	bne lbl_801AE6D0
/* 801AE6B4  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801AE6B8  2C 00 00 04 */	cmpwi r0, 4
/* 801AE6BC  40 82 00 14 */	bne lbl_801AE6D0
/* 801AE6C0  C3 82 A4 80 */	lfs f28, lit_3923(r2)
/* 801AE6C4  C3 62 A4 A0 */	lfs f27, lit_4080(r2)
/* 801AE6C8  C3 E2 A4 C4 */	lfs f31, lit_4089(r2)
/* 801AE6CC  C3 C2 A4 C8 */	lfs f30, lit_4090(r2)
lbl_801AE6D0:
/* 801AE6D0  C0 3D 01 5C */	lfs f1, 0x15c(r29)
/* 801AE6D4  48 0B 92 B9 */	bl cM_rndFX__Ff
/* 801AE6D8  EC 1D 00 72 */	fmuls f0, f29, f1
/* 801AE6DC  D0 1D 01 5C */	stfs f0, 0x15c(r29)
/* 801AE6E0  EC 3B E0 28 */	fsubs f1, f27, f28
/* 801AE6E4  48 0B 92 71 */	bl cM_rndF__Ff
/* 801AE6E8  EC 1C 08 2A */	fadds f0, f28, f1
/* 801AE6EC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801AE6F0  D0 1D 01 38 */	stfs f0, 0x138(r29)
/* 801AE6F4  C0 22 A4 7C */	lfs f1, lit_3885(r2)
/* 801AE6F8  48 0B 92 95 */	bl cM_rndFX__Ff
/* 801AE6FC  C8 02 A4 D0 */	lfd f0, lit_4091(r2)
/* 801AE700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AE704  4C 41 13 82 */	cror 2, 1, 2
/* 801AE708  40 82 00 14 */	bne lbl_801AE71C
/* 801AE70C  C0 3D 01 38 */	lfs f1, 0x138(r29)
/* 801AE710  C0 02 A4 D8 */	lfs f0, lit_4092(r2)
/* 801AE714  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE718  D0 1D 01 38 */	stfs f0, 0x138(r29)
lbl_801AE71C:
/* 801AE71C  EC 3E F8 28 */	fsubs f1, f30, f31
/* 801AE720  48 0B 92 35 */	bl cM_rndF__Ff
/* 801AE724  EC 1F 08 2A */	fadds f0, f31, f1
/* 801AE728  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801AE72C  D0 1D 01 3C */	stfs f0, 0x13c(r29)
/* 801AE730  C0 02 A4 7C */	lfs f0, lit_3885(r2)
/* 801AE734  D0 1D 01 40 */	stfs f0, 0x140(r29)
/* 801AE738  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 801AE73C  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 801AE740  38 A1 00 20 */	addi r5, r1, 0x20
/* 801AE744  4B EA D0 1D */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 801AE748  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801AE74C  EC 61 00 72 */	fmuls f3, f1, f1
/* 801AE750  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801AE754  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801AE758  EF A3 00 2A */	fadds f29, f3, f0
/* 801AE75C  C0 02 A4 70 */	lfs f0, lit_3882(r2)
/* 801AE760  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801AE764  40 81 00 0C */	ble lbl_801AE770
/* 801AE768  FC 00 E8 34 */	frsqrte f0, f29
/* 801AE76C  EF A0 07 72 */	fmuls f29, f0, f29
lbl_801AE770:
/* 801AE770  48 0B 8F 05 */	bl cM_atan2s__Fff
/* 801AE774  7C 7C 1B 78 */	mr r28, r3
/* 801AE778  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801AE77C  FC 40 E8 90 */	fmr f2, f29
/* 801AE780  48 0B 8E F5 */	bl cM_atan2s__Fff
/* 801AE784  7C 7F 1B 78 */	mr r31, r3
/* 801AE788  C0 22 A4 7C */	lfs f1, lit_3885(r2)
/* 801AE78C  48 0B 92 01 */	bl cM_rndFX__Ff
/* 801AE790  C0 02 A4 70 */	lfs f0, lit_3882(r2)
/* 801AE794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AE798  4C 41 13 82 */	cror 2, 1, 2
/* 801AE79C  40 82 00 10 */	bne lbl_801AE7AC
/* 801AE7A0  38 1C 40 00 */	addi r0, r28, 0x4000
/* 801AE7A4  7C 05 07 34 */	extsh r5, r0
/* 801AE7A8  48 00 00 08 */	b lbl_801AE7B0
lbl_801AE7AC:
/* 801AE7AC  38 BC C0 00 */	addi r5, r28, -16384
lbl_801AE7B0:
/* 801AE7B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801AE7B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801AE7B8  38 83 00 04 */	addi r4, r3, 4
/* 801AE7BC  57 E0 04 38 */	rlwinm r0, r31, 0, 0x10, 0x1c
/* 801AE7C0  7C 24 04 2E */	lfsx f1, r4, r0
/* 801AE7C4  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 801AE7C8  7C 03 04 2E */	lfsx f0, r3, r0
/* 801AE7CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE7D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 801AE7D4  7C 04 04 2E */	lfsx f0, r4, r0
/* 801AE7D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE7DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801AE7E0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801AE7E4  48 0B 91 71 */	bl cM_rndF__Ff
/* 801AE7E8  FF E0 08 90 */	fmr f31, f1
/* 801AE7EC  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 801AE7F0  C0 22 A4 DC */	lfs f1, lit_4093(r2)
/* 801AE7F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801AE7F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE7FC  EC 22 00 2A */	fadds f1, f2, f0
/* 801AE800  C0 01 00 08 */	lfs f0, 8(r1)
/* 801AE804  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801AE808  EC 01 00 2A */	fadds f0, f1, f0
/* 801AE80C  D0 1D 01 44 */	stfs f0, 0x144(r29)
/* 801AE810  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801AE814  48 0B 91 41 */	bl cM_rndF__Ff
/* 801AE818  C0 42 A4 B4 */	lfs f2, lit_4085(r2)
/* 801AE81C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 801AE820  EC 02 00 2A */	fadds f0, f2, f0
/* 801AE824  EC 00 08 2A */	fadds f0, f0, f1
/* 801AE828  D0 1D 01 48 */	stfs f0, 0x148(r29)
/* 801AE82C  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 801AE830  C0 22 A4 DC */	lfs f1, lit_4093(r2)
/* 801AE834  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801AE838  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE83C  EC 22 00 2A */	fadds f1, f2, f0
/* 801AE840  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801AE844  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801AE848  EC 01 00 2A */	fadds f0, f1, f0
/* 801AE84C  D0 1D 01 4C */	stfs f0, 0x14c(r29)
/* 801AE850  7F 63 DB 78 */	mr r3, r27
/* 801AE854  3C 80 80 39 */	lis r4, d_d_ky_thunder__stringBase0@ha /* 0x80394F40@ha */
/* 801AE858  38 84 4F 40 */	addi r4, r4, d_d_ky_thunder__stringBase0@l /* 0x80394F40@l */
/* 801AE85C  38 84 00 07 */	addi r4, r4, 7
/* 801AE860  48 1B A1 35 */	bl strcmp
/* 801AE864  2C 03 00 00 */	cmpwi r3, 0
/* 801AE868  40 82 00 40 */	bne lbl_801AE8A8
/* 801AE86C  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801AE870  2C 00 00 04 */	cmpwi r0, 4
/* 801AE874  40 82 00 34 */	bne lbl_801AE8A8
/* 801AE878  C0 22 A4 E4 */	lfs f1, lit_4095(r2)
/* 801AE87C  48 0B 91 11 */	bl cM_rndFX__Ff
/* 801AE880  C0 02 A4 E0 */	lfs f0, lit_4094(r2)
/* 801AE884  EC 00 08 2A */	fadds f0, f0, f1
/* 801AE888  D0 1D 01 44 */	stfs f0, 0x144(r29)
/* 801AE88C  C0 02 A4 E8 */	lfs f0, lit_4096(r2)
/* 801AE890  D0 1D 01 48 */	stfs f0, 0x148(r29)
/* 801AE894  C0 22 A4 F0 */	lfs f1, lit_4098(r2)
/* 801AE898  48 0B 90 F5 */	bl cM_rndFX__Ff
/* 801AE89C  C0 02 A4 EC */	lfs f0, lit_4097(r2)
/* 801AE8A0  EC 00 08 2A */	fadds f0, f0, f1
/* 801AE8A4  D0 1D 01 4C */	stfs f0, 0x14c(r29)
lbl_801AE8A8:
/* 801AE8A8  C0 22 A4 7C */	lfs f1, lit_3885(r2)
/* 801AE8AC  48 0B 90 A9 */	bl cM_rndF__Ff
/* 801AE8B0  C0 02 A4 F4 */	lfs f0, lit_4099(r2)
/* 801AE8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AE8B8  40 80 00 3C */	bge lbl_801AE8F4
/* 801AE8BC  C0 1D 01 44 */	lfs f0, 0x144(r29)
/* 801AE8C0  FC 00 00 50 */	fneg f0, f0
/* 801AE8C4  D0 1D 01 50 */	stfs f0, 0x150(r29)
/* 801AE8C8  C0 1D 01 48 */	lfs f0, 0x148(r29)
/* 801AE8CC  FC 00 00 50 */	fneg f0, f0
/* 801AE8D0  D0 1D 01 54 */	stfs f0, 0x154(r29)
/* 801AE8D4  C0 1D 01 4C */	lfs f0, 0x14c(r29)
/* 801AE8D8  FC 00 00 50 */	fneg f0, f0
/* 801AE8DC  D0 1D 01 58 */	stfs f0, 0x158(r29)
/* 801AE8E0  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 801AE8E4  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 801AE8E8  38 9D 01 50 */	addi r4, r29, 0x150
/* 801AE8EC  38 A0 00 00 */	li r5, 0
/* 801AE8F0  48 11 95 79 */	bl startFarThunderSe__10Z2EnvSeMgrFP3VecSc
lbl_801AE8F4:
/* 801AE8F4  38 60 00 04 */	li r3, 4
lbl_801AE8F8:
/* 801AE8F8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 801AE8FC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801AE900  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 801AE904  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 801AE908  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 801AE90C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 801AE910  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 801AE914  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 801AE918  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 801AE91C  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 801AE920  39 61 00 50 */	addi r11, r1, 0x50
/* 801AE924  48 1B 38 FD */	bl _restgpr_27
/* 801AE928  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801AE92C  7C 08 03 A6 */	mtlr r0
/* 801AE930  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801AE934  4E 80 00 20 */	blr 
