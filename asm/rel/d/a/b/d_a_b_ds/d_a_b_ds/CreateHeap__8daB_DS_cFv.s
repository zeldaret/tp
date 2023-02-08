lbl_805DB264:
/* 805DB264  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DB268  7C 08 02 A6 */	mflr r0
/* 805DB26C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DB270  39 61 00 30 */	addi r11, r1, 0x30
/* 805DB274  4B D8 6F 5D */	bl _savegpr_26
/* 805DB278  7C 7F 1B 78 */	mr r31, r3
/* 805DB27C  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805DB280  3B A3 CA 54 */	addi r29, r3, lit_3932@l /* 0x805DCA54@l */
/* 805DB284  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DB288  28 00 00 00 */	cmplwi r0, 0
/* 805DB28C  40 82 00 5C */	bne lbl_805DB2E8
/* 805DB290  38 60 00 06 */	li r3, 6
/* 805DB294  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DB298  7C 04 07 74 */	extsb r4, r0
/* 805DB29C  4B A5 27 95 */	bl dComIfGs_isZoneSwitch__Fii
/* 805DB2A0  2C 03 00 00 */	cmpwi r3, 0
/* 805DB2A4  41 82 00 44 */	beq lbl_805DB2E8
/* 805DB2A8  38 60 00 07 */	li r3, 7
/* 805DB2AC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805DB2B0  7C 04 07 74 */	extsb r4, r0
/* 805DB2B4  4B A5 27 7D */	bl dComIfGs_isZoneSwitch__Fii
/* 805DB2B8  2C 03 00 00 */	cmpwi r3, 0
/* 805DB2BC  41 82 00 2C */	beq lbl_805DB2E8
/* 805DB2C0  38 00 00 02 */	li r0, 2
/* 805DB2C4  98 1F 08 56 */	stb r0, 0x856(r31)
/* 805DB2C8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805DB2CC  D0 3F 04 A8 */	stfs f1, 0x4a8(r31)
/* 805DB2D0  C0 1D 02 90 */	lfs f0, 0x290(r29)
/* 805DB2D4  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 805DB2D8  D0 3F 04 B0 */	stfs f1, 0x4b0(r31)
/* 805DB2DC  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 805DB2E0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805DB2E4  D0 3F 04 D8 */	stfs f1, 0x4d8(r31)
lbl_805DB2E8:
/* 805DB2E8  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB2EC  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB2F0  38 80 00 46 */	li r4, 0x46
/* 805DB2F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DB2F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DB2FC  3F C5 00 02 */	addis r30, r5, 2
/* 805DB300  3B DE C2 F8 */	addi r30, r30, -15624
/* 805DB304  7F C5 F3 78 */	mr r5, r30
/* 805DB308  38 C0 00 80 */	li r6, 0x80
/* 805DB30C  4B A6 0F E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB310  7C 7B 1B 78 */	mr r27, r3
/* 805DB314  3B 40 00 3C */	li r26, 0x3c
/* 805DB318  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DB31C  28 00 00 02 */	cmplwi r0, 2
/* 805DB320  40 82 00 24 */	bne lbl_805DB344
/* 805DB324  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB328  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB32C  38 80 00 47 */	li r4, 0x47
/* 805DB330  7F C5 F3 78 */	mr r5, r30
/* 805DB334  38 C0 00 80 */	li r6, 0x80
/* 805DB338  4B A6 0F B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB33C  7C 7B 1B 78 */	mr r27, r3
/* 805DB340  3B 40 00 2C */	li r26, 0x2c
lbl_805DB344:
/* 805DB344  38 60 00 58 */	li r3, 0x58
/* 805DB348  4B CF 39 05 */	bl __nw__FUl
/* 805DB34C  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB350  41 82 00 64 */	beq lbl_805DB3B4
/* 805DB354  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB358  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB35C  7F 44 D3 78 */	mr r4, r26
/* 805DB360  7F C5 F3 78 */	mr r5, r30
/* 805DB364  38 C0 00 80 */	li r6, 0x80
/* 805DB368  4B A6 0F 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB36C  7C 67 1B 78 */	mr r7, r3
/* 805DB370  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 805DB374  90 01 00 08 */	stw r0, 8(r1)
/* 805DB378  38 00 00 00 */	li r0, 0
/* 805DB37C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DB380  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805DB384  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805DB388  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DB38C  7F 83 E3 78 */	mr r3, r28
/* 805DB390  7F 64 DB 78 */	mr r4, r27
/* 805DB394  38 A0 00 00 */	li r5, 0
/* 805DB398  38 C0 00 00 */	li r6, 0
/* 805DB39C  39 00 00 00 */	li r8, 0
/* 805DB3A0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB3A4  39 20 00 00 */	li r9, 0
/* 805DB3A8  39 40 FF FF */	li r10, -1
/* 805DB3AC  4B A3 54 25 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805DB3B0  7C 7C 1B 78 */	mr r28, r3
lbl_805DB3B4:
/* 805DB3B4  93 9F 05 B4 */	stw r28, 0x5b4(r31)
/* 805DB3B8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805DB3BC  28 03 00 00 */	cmplwi r3, 0
/* 805DB3C0  41 82 00 10 */	beq lbl_805DB3D0
/* 805DB3C4  80 03 00 04 */	lwz r0, 4(r3)
/* 805DB3C8  28 00 00 00 */	cmplwi r0, 0
/* 805DB3CC  40 82 00 0C */	bne lbl_805DB3D8
lbl_805DB3D0:
/* 805DB3D0  38 60 00 00 */	li r3, 0
/* 805DB3D4  48 00 05 20 */	b lbl_805DB8F4
lbl_805DB3D8:
/* 805DB3D8  90 1F 05 24 */	stw r0, 0x524(r31)
/* 805DB3DC  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 805DB3E0  93 E3 00 14 */	stw r31, 0x14(r3)
/* 805DB3E4  38 C0 00 00 */	li r6, 0
/* 805DB3E8  3C 60 80 5D */	lis r3, JointCallBack__8daB_DS_cFP8J3DJointi@ha /* 0x805CB4A4@ha */
/* 805DB3EC  38 83 B4 A4 */	addi r4, r3, JointCallBack__8daB_DS_cFP8J3DJointi@l /* 0x805CB4A4@l */
/* 805DB3F0  48 00 00 20 */	b lbl_805DB410
lbl_805DB3F4:
/* 805DB3F4  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 805DB3F8  41 82 00 14 */	beq lbl_805DB40C
/* 805DB3FC  80 65 00 28 */	lwz r3, 0x28(r5)
/* 805DB400  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 805DB404  7C 63 00 2E */	lwzx r3, r3, r0
/* 805DB408  90 83 00 04 */	stw r4, 4(r3)
lbl_805DB40C:
/* 805DB40C  38 C6 00 01 */	addi r6, r6, 1
lbl_805DB410:
/* 805DB410  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 805DB414  80 A3 00 04 */	lwz r5, 4(r3)
/* 805DB418  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 805DB41C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 805DB420  7C 00 18 40 */	cmplw r0, r3
/* 805DB424  41 80 FF D0 */	blt lbl_805DB3F4
/* 805DB428  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB42C  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB430  38 80 00 4A */	li r4, 0x4a
/* 805DB434  7F C5 F3 78 */	mr r5, r30
/* 805DB438  38 C0 00 80 */	li r6, 0x80
/* 805DB43C  4B A6 0E B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB440  7C 7B 1B 78 */	mr r27, r3
/* 805DB444  38 60 00 58 */	li r3, 0x58
/* 805DB448  4B CF 38 05 */	bl __nw__FUl
/* 805DB44C  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB450  41 82 00 60 */	beq lbl_805DB4B0
/* 805DB454  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB458  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB45C  38 80 00 3F */	li r4, 0x3f
/* 805DB460  7F C5 F3 78 */	mr r5, r30
/* 805DB464  38 C0 00 80 */	li r6, 0x80
/* 805DB468  4B A6 0E 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB46C  7C 67 1B 78 */	mr r7, r3
/* 805DB470  38 00 00 00 */	li r0, 0
/* 805DB474  90 01 00 08 */	stw r0, 8(r1)
/* 805DB478  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DB47C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805DB480  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805DB484  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DB488  7F 83 E3 78 */	mr r3, r28
/* 805DB48C  7F 64 DB 78 */	mr r4, r27
/* 805DB490  38 A0 00 00 */	li r5, 0
/* 805DB494  38 C0 00 00 */	li r6, 0
/* 805DB498  39 00 00 00 */	li r8, 0
/* 805DB49C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB4A0  39 20 00 00 */	li r9, 0
/* 805DB4A4  39 40 FF FF */	li r10, -1
/* 805DB4A8  4B A3 53 29 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805DB4AC  7C 7C 1B 78 */	mr r28, r3
lbl_805DB4B0:
/* 805DB4B0  93 9F 05 B8 */	stw r28, 0x5b8(r31)
/* 805DB4B4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805DB4B8  28 03 00 00 */	cmplwi r3, 0
/* 805DB4BC  41 82 00 10 */	beq lbl_805DB4CC
/* 805DB4C0  80 03 00 04 */	lwz r0, 4(r3)
/* 805DB4C4  28 00 00 00 */	cmplwi r0, 0
/* 805DB4C8  40 82 00 0C */	bne lbl_805DB4D4
lbl_805DB4CC:
/* 805DB4CC  38 60 00 00 */	li r3, 0
/* 805DB4D0  48 00 04 24 */	b lbl_805DB8F4
lbl_805DB4D4:
/* 805DB4D4  38 60 00 18 */	li r3, 0x18
/* 805DB4D8  4B CF 37 75 */	bl __nw__FUl
/* 805DB4DC  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB4E0  41 82 00 20 */	beq lbl_805DB500
/* 805DB4E4  3C 80 80 5E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805DDA50@ha */
/* 805DB4E8  38 04 DA 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805DDA50@l */
/* 805DB4EC  90 1C 00 00 */	stw r0, 0(r28)
/* 805DB4F0  38 80 00 00 */	li r4, 0
/* 805DB4F4  4B D4 CF 09 */	bl init__12J3DFrameCtrlFs
/* 805DB4F8  38 00 00 00 */	li r0, 0
/* 805DB4FC  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_805DB500:
/* 805DB500  93 9F 05 C8 */	stw r28, 0x5c8(r31)
/* 805DB504  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 805DB508  28 00 00 00 */	cmplwi r0, 0
/* 805DB50C  40 82 00 0C */	bne lbl_805DB518
/* 805DB510  38 60 00 00 */	li r3, 0
/* 805DB514  48 00 03 E0 */	b lbl_805DB8F4
lbl_805DB518:
/* 805DB518  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB51C  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB520  38 80 00 51 */	li r4, 0x51
/* 805DB524  7F C5 F3 78 */	mr r5, r30
/* 805DB528  38 C0 00 80 */	li r6, 0x80
/* 805DB52C  4B A6 0D C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB530  7C 65 1B 78 */	mr r5, r3
/* 805DB534  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805DB538  80 63 00 04 */	lwz r3, 4(r3)
/* 805DB53C  80 83 00 04 */	lwz r4, 4(r3)
/* 805DB540  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 805DB544  38 84 00 58 */	addi r4, r4, 0x58
/* 805DB548  38 C0 00 01 */	li r6, 1
/* 805DB54C  38 E0 00 00 */	li r7, 0
/* 805DB550  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB554  39 00 00 00 */	li r8, 0
/* 805DB558  39 20 FF FF */	li r9, -1
/* 805DB55C  4B A3 21 B1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805DB560  2C 03 00 00 */	cmpwi r3, 0
/* 805DB564  40 82 00 0C */	bne lbl_805DB570
/* 805DB568  38 60 00 00 */	li r3, 0
/* 805DB56C  48 00 03 88 */	b lbl_805DB8F4
lbl_805DB570:
/* 805DB570  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB574  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB578  38 80 00 4B */	li r4, 0x4b
/* 805DB57C  7F C5 F3 78 */	mr r5, r30
/* 805DB580  38 C0 00 80 */	li r6, 0x80
/* 805DB584  4B A6 0D 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB588  7C 7B 1B 78 */	mr r27, r3
/* 805DB58C  38 60 00 58 */	li r3, 0x58
/* 805DB590  4B CF 36 BD */	bl __nw__FUl
/* 805DB594  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB598  41 82 00 60 */	beq lbl_805DB5F8
/* 805DB59C  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB5A0  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB5A4  38 80 00 42 */	li r4, 0x42
/* 805DB5A8  7F C5 F3 78 */	mr r5, r30
/* 805DB5AC  38 C0 00 80 */	li r6, 0x80
/* 805DB5B0  4B A6 0D 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB5B4  7C 67 1B 78 */	mr r7, r3
/* 805DB5B8  38 00 00 00 */	li r0, 0
/* 805DB5BC  90 01 00 08 */	stw r0, 8(r1)
/* 805DB5C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DB5C4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805DB5C8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805DB5CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DB5D0  7F 83 E3 78 */	mr r3, r28
/* 805DB5D4  7F 64 DB 78 */	mr r4, r27
/* 805DB5D8  38 A0 00 00 */	li r5, 0
/* 805DB5DC  38 C0 00 00 */	li r6, 0
/* 805DB5E0  39 00 00 02 */	li r8, 2
/* 805DB5E4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB5E8  39 20 00 00 */	li r9, 0
/* 805DB5EC  39 40 FF FF */	li r10, -1
/* 805DB5F0  4B A3 51 E1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805DB5F4  7C 7C 1B 78 */	mr r28, r3
lbl_805DB5F8:
/* 805DB5F8  93 9F 05 BC */	stw r28, 0x5bc(r31)
/* 805DB5FC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805DB600  28 03 00 00 */	cmplwi r3, 0
/* 805DB604  41 82 00 10 */	beq lbl_805DB614
/* 805DB608  80 03 00 04 */	lwz r0, 4(r3)
/* 805DB60C  28 00 00 00 */	cmplwi r0, 0
/* 805DB610  40 82 00 0C */	bne lbl_805DB61C
lbl_805DB614:
/* 805DB614  38 60 00 00 */	li r3, 0
/* 805DB618  48 00 02 DC */	b lbl_805DB8F4
lbl_805DB61C:
/* 805DB61C  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB620  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB624  38 80 00 49 */	li r4, 0x49
/* 805DB628  7F C5 F3 78 */	mr r5, r30
/* 805DB62C  38 C0 00 80 */	li r6, 0x80
/* 805DB630  4B A6 0C BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB634  38 80 00 00 */	li r4, 0
/* 805DB638  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 805DB63C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 805DB640  4B A3 96 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805DB644  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 805DB648  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 805DB64C  28 00 00 00 */	cmplwi r0, 0
/* 805DB650  40 82 00 0C */	bne lbl_805DB65C
/* 805DB654  38 60 00 00 */	li r3, 0
/* 805DB658  48 00 02 9C */	b lbl_805DB8F4
lbl_805DB65C:
/* 805DB65C  38 60 00 18 */	li r3, 0x18
/* 805DB660  4B CF 35 ED */	bl __nw__FUl
/* 805DB664  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB668  41 82 00 20 */	beq lbl_805DB688
/* 805DB66C  3C 80 80 5E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805DDA50@ha */
/* 805DB670  38 04 DA 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805DDA50@l */
/* 805DB674  90 1C 00 00 */	stw r0, 0(r28)
/* 805DB678  38 80 00 00 */	li r4, 0
/* 805DB67C  4B D4 CD 81 */	bl init__12J3DFrameCtrlFs
/* 805DB680  38 00 00 00 */	li r0, 0
/* 805DB684  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_805DB688:
/* 805DB688  93 9F 05 CC */	stw r28, 0x5cc(r31)
/* 805DB68C  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 805DB690  28 00 00 00 */	cmplwi r0, 0
/* 805DB694  40 82 00 0C */	bne lbl_805DB6A0
/* 805DB698  38 60 00 00 */	li r3, 0
/* 805DB69C  48 00 02 58 */	b lbl_805DB8F4
lbl_805DB6A0:
/* 805DB6A0  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB6A4  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB6A8  38 80 00 4F */	li r4, 0x4f
/* 805DB6AC  7F C5 F3 78 */	mr r5, r30
/* 805DB6B0  38 C0 00 80 */	li r6, 0x80
/* 805DB6B4  4B A6 0C 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB6B8  7C 65 1B 78 */	mr r5, r3
/* 805DB6BC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 805DB6C0  80 83 00 04 */	lwz r4, 4(r3)
/* 805DB6C4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 805DB6C8  38 84 00 58 */	addi r4, r4, 0x58
/* 805DB6CC  38 C0 00 01 */	li r6, 1
/* 805DB6D0  38 E0 00 00 */	li r7, 0
/* 805DB6D4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB6D8  39 00 00 00 */	li r8, 0
/* 805DB6DC  39 20 FF FF */	li r9, -1
/* 805DB6E0  4B A3 20 2D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805DB6E4  2C 03 00 00 */	cmpwi r3, 0
/* 805DB6E8  40 82 00 0C */	bne lbl_805DB6F4
/* 805DB6EC  38 60 00 00 */	li r3, 0
/* 805DB6F0  48 00 02 04 */	b lbl_805DB8F4
lbl_805DB6F4:
/* 805DB6F4  38 60 00 18 */	li r3, 0x18
/* 805DB6F8  4B CF 35 55 */	bl __nw__FUl
/* 805DB6FC  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB700  41 82 00 20 */	beq lbl_805DB720
/* 805DB704  3C 80 80 5E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805DDA50@ha */
/* 805DB708  38 04 DA 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805DDA50@l */
/* 805DB70C  90 1C 00 00 */	stw r0, 0(r28)
/* 805DB710  38 80 00 00 */	li r4, 0
/* 805DB714  4B D4 CC E9 */	bl init__12J3DFrameCtrlFs
/* 805DB718  38 00 00 00 */	li r0, 0
/* 805DB71C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_805DB720:
/* 805DB720  93 9F 05 D0 */	stw r28, 0x5d0(r31)
/* 805DB724  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 805DB728  28 00 00 00 */	cmplwi r0, 0
/* 805DB72C  40 82 00 0C */	bne lbl_805DB738
/* 805DB730  38 60 00 00 */	li r3, 0
/* 805DB734  48 00 01 C0 */	b lbl_805DB8F4
lbl_805DB738:
/* 805DB738  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB73C  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB740  38 80 00 55 */	li r4, 0x55
/* 805DB744  7F C5 F3 78 */	mr r5, r30
/* 805DB748  38 C0 00 80 */	li r6, 0x80
/* 805DB74C  4B A6 0B A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB750  7C 65 1B 78 */	mr r5, r3
/* 805DB754  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 805DB758  80 83 00 04 */	lwz r4, 4(r3)
/* 805DB75C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805DB760  38 84 00 58 */	addi r4, r4, 0x58
/* 805DB764  38 C0 00 01 */	li r6, 1
/* 805DB768  38 E0 00 02 */	li r7, 2
/* 805DB76C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB770  39 00 00 00 */	li r8, 0
/* 805DB774  39 20 FF FF */	li r9, -1
/* 805DB778  4B A3 1E C5 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805DB77C  2C 03 00 00 */	cmpwi r3, 0
/* 805DB780  40 82 00 0C */	bne lbl_805DB78C
/* 805DB784  38 60 00 00 */	li r3, 0
/* 805DB788  48 00 01 6C */	b lbl_805DB8F4
lbl_805DB78C:
/* 805DB78C  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB790  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB794  38 80 00 48 */	li r4, 0x48
/* 805DB798  7F C5 F3 78 */	mr r5, r30
/* 805DB79C  38 C0 00 80 */	li r6, 0x80
/* 805DB7A0  4B A6 0B 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB7A4  38 80 00 00 */	li r4, 0
/* 805DB7A8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 805DB7AC  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 805DB7B0  4B A3 94 A5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805DB7B4  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 805DB7B8  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 805DB7BC  28 00 00 00 */	cmplwi r0, 0
/* 805DB7C0  40 82 00 0C */	bne lbl_805DB7CC
/* 805DB7C4  38 60 00 00 */	li r3, 0
/* 805DB7C8  48 00 01 2C */	b lbl_805DB8F4
lbl_805DB7CC:
/* 805DB7CC  38 60 00 18 */	li r3, 0x18
/* 805DB7D0  4B CF 34 7D */	bl __nw__FUl
/* 805DB7D4  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB7D8  41 82 00 20 */	beq lbl_805DB7F8
/* 805DB7DC  3C 80 80 5E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805DDA50@ha */
/* 805DB7E0  38 04 DA 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805DDA50@l */
/* 805DB7E4  90 1C 00 00 */	stw r0, 0(r28)
/* 805DB7E8  38 80 00 00 */	li r4, 0
/* 805DB7EC  4B D4 CC 11 */	bl init__12J3DFrameCtrlFs
/* 805DB7F0  38 00 00 00 */	li r0, 0
/* 805DB7F4  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_805DB7F8:
/* 805DB7F8  93 9F 05 D4 */	stw r28, 0x5d4(r31)
/* 805DB7FC  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 805DB800  28 00 00 00 */	cmplwi r0, 0
/* 805DB804  40 82 00 0C */	bne lbl_805DB810
/* 805DB808  38 60 00 00 */	li r3, 0
/* 805DB80C  48 00 00 E8 */	b lbl_805DB8F4
lbl_805DB810:
/* 805DB810  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB814  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB818  38 80 00 4E */	li r4, 0x4e
/* 805DB81C  7F C5 F3 78 */	mr r5, r30
/* 805DB820  38 C0 00 80 */	li r6, 0x80
/* 805DB824  4B A6 0A C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB828  7C 65 1B 78 */	mr r5, r3
/* 805DB82C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 805DB830  80 83 00 04 */	lwz r4, 4(r3)
/* 805DB834  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805DB838  38 84 00 58 */	addi r4, r4, 0x58
/* 805DB83C  38 C0 00 01 */	li r6, 1
/* 805DB840  38 E0 00 00 */	li r7, 0
/* 805DB844  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB848  39 00 00 00 */	li r8, 0
/* 805DB84C  39 20 FF FF */	li r9, -1
/* 805DB850  4B A3 1E BD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805DB854  2C 03 00 00 */	cmpwi r3, 0
/* 805DB858  40 82 00 0C */	bne lbl_805DB864
/* 805DB85C  38 60 00 00 */	li r3, 0
/* 805DB860  48 00 00 94 */	b lbl_805DB8F4
lbl_805DB864:
/* 805DB864  38 60 00 18 */	li r3, 0x18
/* 805DB868  4B CF 33 E5 */	bl __nw__FUl
/* 805DB86C  7C 7C 1B 79 */	or. r28, r3, r3
/* 805DB870  41 82 00 20 */	beq lbl_805DB890
/* 805DB874  3C 80 80 5E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x805DDA50@ha */
/* 805DB878  38 04 DA 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x805DDA50@l */
/* 805DB87C  90 1C 00 00 */	stw r0, 0(r28)
/* 805DB880  38 80 00 00 */	li r4, 0
/* 805DB884  4B D4 CB 79 */	bl init__12J3DFrameCtrlFs
/* 805DB888  38 00 00 00 */	li r0, 0
/* 805DB88C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_805DB890:
/* 805DB890  93 9F 05 D8 */	stw r28, 0x5d8(r31)
/* 805DB894  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 805DB898  28 00 00 00 */	cmplwi r0, 0
/* 805DB89C  40 82 00 0C */	bne lbl_805DB8A8
/* 805DB8A0  38 60 00 00 */	li r3, 0
/* 805DB8A4  48 00 00 50 */	b lbl_805DB8F4
lbl_805DB8A8:
/* 805DB8A8  3C 60 80 5E */	lis r3, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB8AC  38 63 D2 2C */	addi r3, r3, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB8B0  38 80 00 54 */	li r4, 0x54
/* 805DB8B4  7F C5 F3 78 */	mr r5, r30
/* 805DB8B8  38 C0 00 80 */	li r6, 0x80
/* 805DB8BC  4B A6 0A 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805DB8C0  7C 65 1B 78 */	mr r5, r3
/* 805DB8C4  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 805DB8C8  80 83 00 04 */	lwz r4, 4(r3)
/* 805DB8CC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 805DB8D0  38 84 00 58 */	addi r4, r4, 0x58
/* 805DB8D4  38 C0 00 01 */	li r6, 1
/* 805DB8D8  38 E0 00 02 */	li r7, 2
/* 805DB8DC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805DB8E0  39 00 00 00 */	li r8, 0
/* 805DB8E4  39 20 FF FF */	li r9, -1
/* 805DB8E8  4B A3 1D 55 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805DB8EC  30 03 FF FF */	addic r0, r3, -1
/* 805DB8F0  7C 60 19 10 */	subfe r3, r0, r3
lbl_805DB8F4:
/* 805DB8F4  39 61 00 30 */	addi r11, r1, 0x30
/* 805DB8F8  4B D8 69 25 */	bl _restgpr_26
/* 805DB8FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DB900  7C 08 03 A6 */	mtlr r0
/* 805DB904  38 21 00 30 */	addi r1, r1, 0x30
/* 805DB908  4E 80 00 20 */	blr 
