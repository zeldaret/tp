lbl_8019959C:
/* 8019959C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801995A0  7C 08 02 A6 */	mflr r0
/* 801995A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801995A8  39 61 00 50 */	addi r11, r1, 0x50
/* 801995AC  48 1C 8C 2D */	bl _savegpr_28
/* 801995B0  7C 7C 1B 78 */	mr r28, r3
/* 801995B4  7C 9D 23 78 */	mr r29, r4
/* 801995B8  7C BE 2B 78 */	mr r30, r5
/* 801995BC  88 03 0F 75 */	lbz r0, 0xf75(r3)
/* 801995C0  28 00 00 01 */	cmplwi r0, 1
/* 801995C4  40 82 00 2C */	bne lbl_801995F0
/* 801995C8  7F C4 F3 78 */	mr r4, r30
/* 801995CC  80 BC 0F 5C */	lwz r5, 0xf5c(r28)
/* 801995D0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 801995D4  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 801995D8  7D 89 03 A6 */	mtctr r12
/* 801995DC  4E 80 04 21 */	bctrl 
/* 801995E0  2C 03 00 00 */	cmpwi r3, 0
/* 801995E4  40 82 00 0C */	bne lbl_801995F0
/* 801995E8  38 60 00 00 */	li r3, 0
/* 801995EC  48 00 04 14 */	b lbl_80199A00
lbl_801995F0:
/* 801995F0  88 1C 0F 76 */	lbz r0, 0xf76(r28)
/* 801995F4  28 00 00 00 */	cmplwi r0, 0
/* 801995F8  41 82 00 0C */	beq lbl_80199604
/* 801995FC  38 00 00 00 */	li r0, 0
/* 80199600  98 1C 0F 76 */	stb r0, 0xf76(r28)
lbl_80199604:
/* 80199604  7F 83 E3 78 */	mr r3, r28
/* 80199608  38 80 00 01 */	li r4, 1
/* 8019960C  7F C5 F3 78 */	mr r5, r30
/* 80199610  4B FF E0 61 */	bl checkController__13dShopSystem_cFUcP10dMsgFlow_c
/* 80199614  7C 7F 1B 79 */	or. r31, r3, r3
/* 80199618  38 00 00 22 */	li r0, 0x22
/* 8019961C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80199620  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80199624  98 04 5E 3C */	stb r0, 0x5e3c(r4)
/* 80199628  38 60 00 00 */	li r3, 0
/* 8019962C  98 64 5E 57 */	stb r3, 0x5e57(r4)
/* 80199630  38 00 00 2A */	li r0, 0x2a
/* 80199634  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 80199638  98 64 5E 50 */	stb r3, 0x5e50(r4)
/* 8019963C  41 82 02 E4 */	beq lbl_80199920
/* 80199640  7F 83 E3 78 */	mr r3, r28
/* 80199644  7F E4 FB 78 */	mr r4, r31
/* 80199648  38 A0 00 01 */	li r5, 1
/* 8019964C  4B FF ED F9 */	bl moveCursor__13dShopSystem_cFiUc
/* 80199650  7C 66 1B 78 */	mr r6, r3
/* 80199654  88 1C 0F 75 */	lbz r0, 0xf75(r28)
/* 80199658  20 00 00 01 */	subfic r0, r0, 1
/* 8019965C  7C 00 00 34 */	cntlzw r0, r0
/* 80199660  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80199664  41 82 00 34 */	beq lbl_80199698
/* 80199668  2C 1F 00 02 */	cmpwi r31, 2
/* 8019966C  40 82 00 2C */	bne lbl_80199698
/* 80199670  90 DC 0F 5C */	stw r6, 0xf5c(r28)
/* 80199674  C0 02 A1 44 */	lfs f0, lit_5084(r2)
/* 80199678  D0 1C 0F 38 */	stfs f0, 0xf38(r28)
/* 8019967C  D0 1C 0F 3C */	stfs f0, 0xf3c(r28)
/* 80199680  D0 1C 0F 40 */	stfs f0, 0xf40(r28)
/* 80199684  D0 1C 0F 44 */	stfs f0, 0xf44(r28)
/* 80199688  7F 83 E3 78 */	mr r3, r28
/* 8019968C  38 80 00 0A */	li r4, 0xa
/* 80199690  48 00 0C B5 */	bl setSeq__13dShopSystem_cFUc
/* 80199694  48 00 02 A0 */	b lbl_80199934
lbl_80199698:
/* 80199698  2C 00 00 00 */	cmpwi r0, 0
/* 8019969C  41 82 00 5C */	beq lbl_801996F8
/* 801996A0  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 801996A4  28 00 00 00 */	cmplwi r0, 0
/* 801996A8  40 82 00 50 */	bne lbl_801996F8
/* 801996AC  90 DC 0F 5C */	stw r6, 0xf5c(r28)
/* 801996B0  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 801996B4  B0 1C 0F 4C */	sth r0, 0xf4c(r28)
/* 801996B8  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 801996BC  D0 3C 0F 38 */	stfs f1, 0xf38(r28)
/* 801996C0  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 801996C4  D0 1C 0F 3C */	stfs f0, 0xf3c(r28)
/* 801996C8  D0 3C 0F 40 */	stfs f1, 0xf40(r28)
/* 801996CC  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 801996D0  D0 1C 0F 44 */	stfs f0, 0xf44(r28)
/* 801996D4  C0 02 A1 44 */	lfs f0, lit_5084(r2)
/* 801996D8  D0 1C 0F 38 */	stfs f0, 0xf38(r28)
/* 801996DC  D0 1C 0F 3C */	stfs f0, 0xf3c(r28)
/* 801996E0  D0 1C 0F 40 */	stfs f0, 0xf40(r28)
/* 801996E4  D0 1C 0F 44 */	stfs f0, 0xf44(r28)
/* 801996E8  7F 83 E3 78 */	mr r3, r28
/* 801996EC  38 80 00 01 */	li r4, 1
/* 801996F0  48 00 0C 55 */	bl setSeq__13dShopSystem_cFUc
/* 801996F4  48 00 02 40 */	b lbl_80199934
lbl_801996F8:
/* 801996F8  7F C3 F3 78 */	mr r3, r30
/* 801996FC  7F A4 EB 78 */	mr r4, r29
/* 80199700  38 A0 00 00 */	li r5, 0
/* 80199704  48 0B 0B D5 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80199708  2C 03 00 00 */	cmpwi r3, 0
/* 8019970C  41 82 01 A4 */	beq lbl_801998B0
/* 80199710  2C 1F 00 03 */	cmpwi r31, 3
/* 80199714  40 82 00 6C */	bne lbl_80199780
/* 80199718  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 8019971C  28 00 00 00 */	cmplwi r0, 0
/* 80199720  41 82 00 38 */	beq lbl_80199758
/* 80199724  38 00 00 5F */	li r0, 0x5f
/* 80199728  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019972C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80199730  38 81 00 0C */	addi r4, r1, 0xc
/* 80199734  38 A0 00 00 */	li r5, 0
/* 80199738  38 C0 00 00 */	li r6, 0
/* 8019973C  38 E0 00 00 */	li r7, 0
/* 80199740  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80199744  FC 40 08 90 */	fmr f2, f1
/* 80199748  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 8019974C  FC 80 18 90 */	fmr f4, f3
/* 80199750  39 00 00 00 */	li r8, 0
/* 80199754  48 11 22 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80199758:
/* 80199758  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 8019975C  B0 1C 0F 4C */	sth r0, 0xf4c(r28)
/* 80199760  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80199764  D0 3C 0F 38 */	stfs f1, 0xf38(r28)
/* 80199768  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 8019976C  D0 1C 0F 3C */	stfs f0, 0xf3c(r28)
/* 80199770  D0 3C 0F 40 */	stfs f1, 0xf40(r28)
/* 80199774  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80199778  D0 1C 0F 44 */	stfs f0, 0xf44(r28)
/* 8019977C  48 00 00 70 */	b lbl_801997EC
lbl_80199780:
/* 80199780  38 1F FF FC */	addi r0, r31, -4
/* 80199784  28 00 00 01 */	cmplwi r0, 1
/* 80199788  40 81 00 0C */	ble lbl_80199794
/* 8019978C  2C 1F 00 06 */	cmpwi r31, 6
/* 80199790  40 82 00 5C */	bne lbl_801997EC
lbl_80199794:
/* 80199794  38 00 00 5F */	li r0, 0x5f
/* 80199798  90 01 00 08 */	stw r0, 8(r1)
/* 8019979C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801997A0  38 81 00 08 */	addi r4, r1, 8
/* 801997A4  38 A0 00 00 */	li r5, 0
/* 801997A8  38 C0 00 00 */	li r6, 0
/* 801997AC  38 E0 00 00 */	li r7, 0
/* 801997B0  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 801997B4  FC 40 08 90 */	fmr f2, f1
/* 801997B8  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 801997BC  FC 80 18 90 */	fmr f4, f3
/* 801997C0  39 00 00 00 */	li r8, 0
/* 801997C4  48 11 21 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801997C8  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 801997CC  B0 1C 0F 4C */	sth r0, 0xf4c(r28)
/* 801997D0  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 801997D4  D0 3C 0F 38 */	stfs f1, 0xf38(r28)
/* 801997D8  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 801997DC  D0 1C 0F 3C */	stfs f0, 0xf3c(r28)
/* 801997E0  D0 3C 0F 40 */	stfs f1, 0xf40(r28)
/* 801997E4  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 801997E8  D0 1C 0F 44 */	stfs f0, 0xf44(r28)
lbl_801997EC:
/* 801997EC  38 00 00 01 */	li r0, 1
/* 801997F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801997F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801997F8  98 03 5E 86 */	stb r0, 0x5e86(r3)
/* 801997FC  2C 1F 00 01 */	cmpwi r31, 1
/* 80199800  40 82 00 54 */	bne lbl_80199854
/* 80199804  7F 83 E3 78 */	mr r3, r28
/* 80199808  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 8019980C  38 84 FF FF */	addi r4, r4, -1
/* 80199810  4B FF DD E9 */	bl isFlag__13dShopSystem_cFi
/* 80199814  2C 03 00 00 */	cmpwi r3, 0
/* 80199818  40 82 00 28 */	bne lbl_80199840
/* 8019981C  7F 83 E3 78 */	mr r3, r28
/* 80199820  88 9C 0F 6E */	lbz r4, 0xf6e(r28)
/* 80199824  38 84 FF FF */	addi r4, r4, -1
/* 80199828  4B FF DE 29 */	bl isSoldOutItemFlag__13dShopSystem_cFi
/* 8019982C  2C 03 00 00 */	cmpwi r3, 0
/* 80199830  40 82 00 10 */	bne lbl_80199840
/* 80199834  7F 83 E3 78 */	mr r3, r28
/* 80199838  38 80 00 08 */	li r4, 8
/* 8019983C  4B FF DD 85 */	bl onFlag__13dShopSystem_cFi
lbl_80199840:
/* 80199840  48 08 51 95 */	bl dMeter2Info_set2DVibrationM__Fv
/* 80199844  7F 83 E3 78 */	mr r3, r28
/* 80199848  38 80 00 06 */	li r4, 6
/* 8019984C  48 00 0A F9 */	bl setSeq__13dShopSystem_cFUc
/* 80199850  48 00 00 E4 */	b lbl_80199934
lbl_80199854:
/* 80199854  2C 1F 00 02 */	cmpwi r31, 2
/* 80199858  40 82 00 14 */	bne lbl_8019986C
/* 8019985C  7F 83 E3 78 */	mr r3, r28
/* 80199860  38 80 00 0A */	li r4, 0xa
/* 80199864  48 00 0A E1 */	bl setSeq__13dShopSystem_cFUc
/* 80199868  48 00 00 CC */	b lbl_80199934
lbl_8019986C:
/* 8019986C  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 80199870  28 00 00 00 */	cmplwi r0, 0
/* 80199874  40 82 00 14 */	bne lbl_80199888
/* 80199878  7F 83 E3 78 */	mr r3, r28
/* 8019987C  38 80 00 01 */	li r4, 1
/* 80199880  48 00 0A C5 */	bl setSeq__13dShopSystem_cFUc
/* 80199884  48 00 00 B0 */	b lbl_80199934
lbl_80199888:
/* 80199888  38 00 00 00 */	li r0, 0
/* 8019988C  B0 1C 0F 68 */	sth r0, 0xf68(r28)
/* 80199890  7F 83 E3 78 */	mr r3, r28
/* 80199894  38 80 00 05 */	li r4, 5
/* 80199898  48 00 0A AD */	bl setSeq__13dShopSystem_cFUc
/* 8019989C  88 1C 0F 6F */	lbz r0, 0xf6f(r28)
/* 801998A0  28 00 00 00 */	cmplwi r0, 0
/* 801998A4  41 82 00 90 */	beq lbl_80199934
/* 801998A8  38 60 00 00 */	li r3, 0
/* 801998AC  48 00 01 54 */	b lbl_80199A00
lbl_801998B0:
/* 801998B0  38 1F FF FD */	addi r0, r31, -3
/* 801998B4  28 00 00 04 */	cmplwi r0, 4
/* 801998B8  40 81 00 0C */	ble lbl_801998C4
/* 801998BC  2C 1F 00 02 */	cmpwi r31, 2
/* 801998C0  40 82 00 74 */	bne lbl_80199934
lbl_801998C4:
/* 801998C4  88 1C 0F 6F */	lbz r0, 0xf6f(r28)
/* 801998C8  28 00 00 07 */	cmplwi r0, 7
/* 801998CC  40 82 00 18 */	bne lbl_801998E4
/* 801998D0  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 801998D4  98 1C 0F 6F */	stb r0, 0xf6f(r28)
/* 801998D8  38 00 00 07 */	li r0, 7
/* 801998DC  98 1C 0F 6E */	stb r0, 0xf6e(r28)
/* 801998E0  48 00 00 08 */	b lbl_801998E8
lbl_801998E4:
/* 801998E4  98 1C 0F 6E */	stb r0, 0xf6e(r28)
lbl_801998E8:
/* 801998E8  38 00 00 00 */	li r0, 0
/* 801998EC  98 1C 0F 7A */	stb r0, 0xf7a(r28)
/* 801998F0  2C 1F 00 02 */	cmpwi r31, 2
/* 801998F4  40 82 00 40 */	bne lbl_80199934
/* 801998F8  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 801998FC  B0 1C 0F 4C */	sth r0, 0xf4c(r28)
/* 80199900  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80199904  D0 3C 0F 38 */	stfs f1, 0xf38(r28)
/* 80199908  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 8019990C  D0 1C 0F 3C */	stfs f0, 0xf3c(r28)
/* 80199910  D0 3C 0F 40 */	stfs f1, 0xf40(r28)
/* 80199914  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80199918  D0 1C 0F 44 */	stfs f0, 0xf44(r28)
/* 8019991C  48 00 00 18 */	b lbl_80199934
lbl_80199920:
/* 80199920  7F C3 F3 78 */	mr r3, r30
/* 80199924  7F A4 EB 78 */	mr r4, r29
/* 80199928  38 A0 00 00 */	li r5, 0
/* 8019992C  38 C0 00 00 */	li r6, 0
/* 80199930  48 0B 09 A9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
lbl_80199934:
/* 80199934  3B A0 00 00 */	li r29, 0
/* 80199938  88 1C 0F 6E */	lbz r0, 0xf6e(r28)
/* 8019993C  28 00 00 00 */	cmplwi r0, 0
/* 80199940  41 82 00 0C */	beq lbl_8019994C
/* 80199944  7C 1D 03 78 */	mr r29, r0
/* 80199948  48 00 00 14 */	b lbl_8019995C
lbl_8019994C:
/* 8019994C  88 1C 0F 6F */	lbz r0, 0xf6f(r28)
/* 80199950  28 00 00 00 */	cmplwi r0, 0
/* 80199954  41 82 00 08 */	beq lbl_8019995C
/* 80199958  7C 1D 03 78 */	mr r29, r0
lbl_8019995C:
/* 8019995C  57 A5 06 3F */	clrlwi. r5, r29, 0x18
/* 80199960  41 82 00 9C */	beq lbl_801999FC
/* 80199964  38 61 00 10 */	addi r3, r1, 0x10
/* 80199968  38 9C 0E 48 */	addi r4, r28, 0xe48
/* 8019996C  38 A5 FF FF */	addi r5, r5, -1
/* 80199970  4B FF D0 31 */	bl getCurrentPos__15dShopItemCtrl_cFi
/* 80199974  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80199978  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8019997C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80199980  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80199984  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80199988  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8019998C  38 61 00 28 */	addi r3, r1, 0x28
/* 80199990  38 81 00 1C */	addi r4, r1, 0x1c
/* 80199994  4B E7 B9 7D */	bl mDoLib_project__FP3VecP3Vec
/* 80199998  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8019999C  28 00 00 07 */	cmplwi r0, 7
/* 801999A0  40 82 00 30 */	bne lbl_801999D0
/* 801999A4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801999A8  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 801999AC  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 801999B0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 801999B4  EC 01 00 2A */	fadds f0, f1, f0
/* 801999B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801999BC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801999C0  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 801999C4  EC 01 00 2A */	fadds f0, f1, f0
/* 801999C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801999CC  48 00 00 1C */	b lbl_801999E8
lbl_801999D0:
/* 801999D0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801999D4  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 801999D8  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 801999DC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 801999E0  EC 01 00 2A */	fadds f0, f1, f0
/* 801999E4  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_801999E8:
/* 801999E8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801999EC  80 7C 0E 44 */	lwz r3, 0xe44(r28)
/* 801999F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801999F4  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801999F8  D0 23 00 5C */	stfs f1, 0x5c(r3)
lbl_801999FC:
/* 801999FC  38 60 00 00 */	li r3, 0
lbl_80199A00:
/* 80199A00  39 61 00 50 */	addi r11, r1, 0x50
/* 80199A04  48 1C 88 21 */	bl _restgpr_28
/* 80199A08  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80199A0C  7C 08 03 A6 */	mtlr r0
/* 80199A10  38 21 00 50 */	addi r1, r1, 0x50
/* 80199A14  4E 80 00 20 */	blr 
