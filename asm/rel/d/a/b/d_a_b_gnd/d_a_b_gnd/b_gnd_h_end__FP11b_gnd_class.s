lbl_805F76C4:
/* 805F76C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F76C8  7C 08 02 A6 */	mflr r0
/* 805F76CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F76D0  39 61 00 50 */	addi r11, r1, 0x50
/* 805F76D4  4B D6 AB 05 */	bl _savegpr_28
/* 805F76D8  7C 7C 1B 78 */	mr r28, r3
/* 805F76DC  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F76E0  3B C3 26 64 */	addi r30, r3, lit_3815@l /* 0x80602664@l */
/* 805F76E4  80 1C 1F B4 */	lwz r0, 0x1fb4(r28)
/* 805F76E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805F76EC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805F76F0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805F76F4  38 81 00 20 */	addi r4, r1, 0x20
/* 805F76F8  4B A2 21 01 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F76FC  7C 7F 1B 78 */	mr r31, r3
/* 805F7700  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 805F7704  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F7708  FC 00 00 1E */	fctiwz f0, f0
/* 805F770C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805F7710  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 805F7714  38 00 00 0A */	li r0, 0xa
/* 805F7718  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F771C  A8 1C 05 BC */	lha r0, 0x5bc(r28)
/* 805F7720  2C 00 00 02 */	cmpwi r0, 2
/* 805F7724  41 82 01 58 */	beq lbl_805F787C
/* 805F7728  40 80 02 D0 */	bge lbl_805F79F8
/* 805F772C  2C 00 00 00 */	cmpwi r0, 0
/* 805F7730  41 82 00 10 */	beq lbl_805F7740
/* 805F7734  40 80 00 EC */	bge lbl_805F7820
/* 805F7738  48 00 02 C0 */	b lbl_805F79F8
/* 805F773C  48 00 02 BC */	b lbl_805F79F8
lbl_805F7740:
/* 805F7740  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805F7744  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805F7748  80 63 00 00 */	lwz r3, 0(r3)
/* 805F774C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F7750  38 80 00 1E */	li r4, 0x1e
/* 805F7754  38 A0 00 00 */	li r5, 0
/* 805F7758  4B CB 7C B1 */	bl bgmStop__8Z2SeqMgrFUll
/* 805F775C  38 00 00 01 */	li r0, 1
/* 805F7760  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F7764  7F 83 E3 78 */	mr r3, r28
/* 805F7768  38 80 00 05 */	li r4, 5
/* 805F776C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F7770  38 A0 00 00 */	li r5, 0
/* 805F7774  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F7778  4B FF D3 D1 */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F777C  7F 83 E3 78 */	mr r3, r28
/* 805F7780  38 80 00 41 */	li r4, 0x41
/* 805F7784  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F7788  38 A0 00 00 */	li r5, 0
/* 805F778C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F7790  4B FF D3 05 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F7794  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007051F@ha */
/* 805F7798  38 03 05 1F */	addi r0, r3, 0x051F /* 0x0007051F@l */
/* 805F779C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805F77A0  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805F77A4  38 81 00 28 */	addi r4, r1, 0x28
/* 805F77A8  38 A0 FF FF */	li r5, -1
/* 805F77AC  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805F77B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F77B4  7D 89 03 A6 */	mtctr r12
/* 805F77B8  4E 80 04 21 */	bctrl 
/* 805F77BC  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805F77C0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 805F77C4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805F77C8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 805F77CC  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 805F77D0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 805F77D4  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 805F77D8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 805F77DC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805F77E0  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 805F77E4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F77E8  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 805F77EC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805F77F0  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 805F77F4  38 60 00 00 */	li r3, 0
/* 805F77F8  B0 7C 04 E6 */	sth r3, 0x4e6(r28)
/* 805F77FC  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 805F7800  98 7C 1E 0F */	stb r3, 0x1e0f(r28)
/* 805F7804  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F7808  D0 1C 1E 10 */	stfs f0, 0x1e10(r28)
/* 805F780C  38 00 00 1E */	li r0, 0x1e
/* 805F7810  B0 1C 26 C4 */	sth r0, 0x26c4(r28)
/* 805F7814  38 00 00 64 */	li r0, 0x64
/* 805F7818  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 805F781C  B0 7C 1E 0A */	sth r3, 0x1e0a(r28)
lbl_805F7820:
/* 805F7820  A8 1C 26 C4 */	lha r0, 0x26c4(r28)
/* 805F7824  2C 00 00 21 */	cmpwi r0, 0x21
/* 805F7828  40 80 01 D0 */	bge lbl_805F79F8
/* 805F782C  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 805F7830  40 82 01 C8 */	bne lbl_805F79F8
/* 805F7834  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F7838  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F783C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805F7840  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 805F7844  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805F7848  A8 1C 26 C4 */	lha r0, 0x26c4(r28)
/* 805F784C  2C 00 00 20 */	cmpwi r0, 0x20
/* 805F7850  40 80 00 10 */	bge lbl_805F7860
/* 805F7854  38 00 00 20 */	li r0, 0x20
/* 805F7858  B0 1C 26 C4 */	sth r0, 0x26c4(r28)
/* 805F785C  48 00 01 9C */	b lbl_805F79F8
lbl_805F7860:
/* 805F7860  38 00 00 22 */	li r0, 0x22
/* 805F7864  B0 1C 26 C4 */	sth r0, 0x26c4(r28)
/* 805F7868  38 00 00 00 */	li r0, 0
/* 805F786C  B0 1C 26 C6 */	sth r0, 0x26c6(r28)
/* 805F7870  38 00 00 02 */	li r0, 2
/* 805F7874  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F7878  48 00 01 80 */	b lbl_805F79F8
lbl_805F787C:
/* 805F787C  A8 1C 26 C4 */	lha r0, 0x26c4(r28)
/* 805F7880  2C 00 00 22 */	cmpwi r0, 0x22
/* 805F7884  40 80 01 54 */	bge lbl_805F79D8
/* 805F7888  2C 1D 00 39 */	cmpwi r29, 0x39
/* 805F788C  40 82 00 64 */	bne lbl_805F78F0
/* 805F7890  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 805F7894  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805F7898  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F789C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F78A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F78A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F78A8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805F78AC  38 80 00 00 */	li r4, 0
/* 805F78B0  90 81 00 08 */	stw r4, 8(r1)
/* 805F78B4  38 00 FF FF */	li r0, -1
/* 805F78B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F78BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 805F78C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F78C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F78C8  38 80 00 00 */	li r4, 0
/* 805F78CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C21@ha */
/* 805F78D0  38 A5 8C 21 */	addi r5, r5, 0x8C21 /* 0x00008C21@l */
/* 805F78D4  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805F78D8  38 E0 00 00 */	li r7, 0
/* 805F78DC  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 805F78E0  39 21 00 2C */	addi r9, r1, 0x2c
/* 805F78E4  39 40 00 FF */	li r10, 0xff
/* 805F78E8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F78EC  4B A5 51 A5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_805F78F0:
/* 805F78F0  2C 1D 00 3E */	cmpwi r29, 0x3e
/* 805F78F4  41 80 00 C8 */	blt lbl_805F79BC
/* 805F78F8  38 7C 05 2C */	addi r3, r28, 0x52c
/* 805F78FC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F7900  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 805F7904  4B C7 81 7D */	bl cLib_addCalc0__FPfff
/* 805F7908  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 805F790C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 805F7910  38 04 10 00 */	addi r0, r4, 0x1000
/* 805F7914  7C 04 07 34 */	extsh r4, r0
/* 805F7918  38 A0 00 08 */	li r5, 8
/* 805F791C  38 C0 00 82 */	li r6, 0x82
/* 805F7920  4B C7 8C E9 */	bl cLib_addCalcAngleS2__FPssss
/* 805F7924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F7928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F792C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805F7930  38 00 00 FF */	li r0, 0xff
/* 805F7934  90 01 00 08 */	stw r0, 8(r1)
/* 805F7938  38 80 00 00 */	li r4, 0
/* 805F793C  90 81 00 0C */	stw r4, 0xc(r1)
/* 805F7940  38 00 FF FF */	li r0, -1
/* 805F7944  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F7948  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F794C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F7950  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805F7954  80 9C 26 88 */	lwz r4, 0x2688(r28)
/* 805F7958  38 A0 00 00 */	li r5, 0
/* 805F795C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008B9A@ha */
/* 805F7960  38 C6 8B 9A */	addi r6, r6, 0x8B9A /* 0x00008B9A@l */
/* 805F7964  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 805F7968  39 00 00 00 */	li r8, 0
/* 805F796C  39 20 00 00 */	li r9, 0
/* 805F7970  39 40 00 00 */	li r10, 0
/* 805F7974  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F7978  4B A5 5B 55 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805F797C  90 7C 26 88 */	stw r3, 0x2688(r28)
/* 805F7980  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 805F7984  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 805F7988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F798C  40 81 00 30 */	ble lbl_805F79BC
/* 805F7990  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007050C@ha */
/* 805F7994  38 03 05 0C */	addi r0, r3, 0x050C /* 0x0007050C@l */
/* 805F7998  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F799C  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805F79A0  38 81 00 24 */	addi r4, r1, 0x24
/* 805F79A4  38 A0 00 00 */	li r5, 0
/* 805F79A8  38 C0 FF FF */	li r6, -1
/* 805F79AC  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805F79B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805F79B4  7D 89 03 A6 */	mtctr r12
/* 805F79B8  4E 80 04 21 */	bctrl 
lbl_805F79BC:
/* 805F79BC  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 805F79C0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F79C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F79C8  40 80 00 30 */	bge lbl_805F79F8
/* 805F79CC  38 00 00 01 */	li r0, 1
/* 805F79D0  98 1F 39 65 */	stb r0, 0x3965(r31)
/* 805F79D4  48 00 00 24 */	b lbl_805F79F8
lbl_805F79D8:
/* 805F79D8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F79DC  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F79E0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805F79E4  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 805F79E8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805F79EC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 805F79F0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 805F79F4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
lbl_805F79F8:
/* 805F79F8  39 61 00 50 */	addi r11, r1, 0x50
/* 805F79FC  4B D6 A8 29 */	bl _restgpr_28
/* 805F7A00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F7A04  7C 08 03 A6 */	mtlr r0
/* 805F7A08  38 21 00 50 */	addi r1, r1, 0x50
/* 805F7A0C  4E 80 00 20 */	blr 
