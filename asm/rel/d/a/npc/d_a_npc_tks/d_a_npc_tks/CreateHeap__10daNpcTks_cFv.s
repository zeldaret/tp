lbl_80B14ED0:
/* 80B14ED0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B14ED4  7C 08 02 A6 */	mflr r0
/* 80B14ED8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B14EDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B14EE0  4B 84 D2 F9 */	bl _savegpr_28
/* 80B14EE4  7C 7F 1B 78 */	mr r31, r3
/* 80B14EE8  3C 60 80 B2 */	lis r3, l_arcName@ha /* 0x80B1E208@ha */
/* 80B14EEC  38 63 E2 08 */	addi r3, r3, l_arcName@l /* 0x80B1E208@l */
/* 80B14EF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B14EF4  38 80 00 1E */	li r4, 0x1e
/* 80B14EF8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B14EFC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B14F00  3F C5 00 02 */	addis r30, r5, 2
/* 80B14F04  3B DE C2 F8 */	addi r30, r30, -15624
/* 80B14F08  7F C5 F3 78 */	mr r5, r30
/* 80B14F0C  38 C0 00 80 */	li r6, 0x80
/* 80B14F10  4B 52 73 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B14F14  7C 7D 1B 78 */	mr r29, r3
/* 80B14F18  38 60 00 58 */	li r3, 0x58
/* 80B14F1C  4B 7B 9D 31 */	bl __nw__FUl
/* 80B14F20  7C 60 1B 79 */	or. r0, r3, r3
/* 80B14F24  41 82 00 4C */	beq lbl_80B14F70
/* 80B14F28  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80B14F2C  90 01 00 08 */	stw r0, 8(r1)
/* 80B14F30  3C 00 00 08 */	lis r0, 8
/* 80B14F34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B14F38  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B14F3C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B14F40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B14F44  7F A4 EB 78 */	mr r4, r29
/* 80B14F48  38 A0 00 00 */	li r5, 0
/* 80B14F4C  38 C0 00 00 */	li r6, 0
/* 80B14F50  38 E0 00 00 */	li r7, 0
/* 80B14F54  39 00 FF FF */	li r8, -1
/* 80B14F58  3D 20 80 B2 */	lis r9, lit_4537@ha /* 0x80B1DE08@ha */
/* 80B14F5C  C0 29 DE 08 */	lfs f1, lit_4537@l(r9)  /* 0x80B1DE08@l */
/* 80B14F60  39 20 00 00 */	li r9, 0
/* 80B14F64  39 40 FF FF */	li r10, -1
/* 80B14F68  4B 4F B8 69 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B14F6C  7C 60 1B 78 */	mr r0, r3
lbl_80B14F70:
/* 80B14F70  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80B14F74  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B14F78  28 03 00 00 */	cmplwi r3, 0
/* 80B14F7C  41 82 00 1C */	beq lbl_80B14F98
/* 80B14F80  80 03 00 04 */	lwz r0, 4(r3)
/* 80B14F84  28 00 00 00 */	cmplwi r0, 0
/* 80B14F88  40 82 00 10 */	bne lbl_80B14F98
/* 80B14F8C  4B 4F C3 85 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B14F90  38 00 00 00 */	li r0, 0
/* 80B14F94  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80B14F98:
/* 80B14F98  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B14F9C  28 03 00 00 */	cmplwi r3, 0
/* 80B14FA0  40 82 00 0C */	bne lbl_80B14FAC
/* 80B14FA4  38 60 00 00 */	li r3, 0
/* 80B14FA8  48 00 02 5C */	b lbl_80B15204
lbl_80B14FAC:
/* 80B14FAC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B14FB0  38 C0 00 00 */	li r6, 0
/* 80B14FB4  3C 60 80 B1 */	lis r3, ctrlJointCallBack__10daNpcTks_cFP8J3DJointi@ha /* 0x80B15670@ha */
/* 80B14FB8  38 83 56 70 */	addi r4, r3, ctrlJointCallBack__10daNpcTks_cFP8J3DJointi@l /* 0x80B15670@l */
/* 80B14FBC  48 00 00 18 */	b lbl_80B14FD4
lbl_80B14FC0:
/* 80B14FC0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80B14FC4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B14FC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B14FCC  90 83 00 04 */	stw r4, 4(r3)
/* 80B14FD0  38 C6 00 01 */	addi r6, r6, 1
lbl_80B14FD4:
/* 80B14FD4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B14FD8  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80B14FDC  7C 03 00 40 */	cmplw r3, r0
/* 80B14FE0  41 80 FF E0 */	blt lbl_80B14FC0
/* 80B14FE4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B14FE8  38 60 01 08 */	li r3, 0x108
/* 80B14FEC  4B 7B 9C 61 */	bl __nw__FUl
/* 80B14FF0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B14FF4  41 82 00 D0 */	beq lbl_80B150C4
/* 80B14FF8  7F BC EB 78 */	mr r28, r29
/* 80B14FFC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80B15000  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80B15004  90 1D 00 00 */	stw r0, 0(r29)
/* 80B15008  38 7D 00 04 */	addi r3, r29, 4
/* 80B1500C  3C 80 80 B1 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80B153C0@ha */
/* 80B15010  38 84 53 C0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80B153C0@l */
/* 80B15014  3C A0 80 B1 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80B15384@ha */
/* 80B15018  38 A5 53 84 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80B15384@l */
/* 80B1501C  38 C0 00 08 */	li r6, 8
/* 80B15020  38 E0 00 02 */	li r7, 2
/* 80B15024  4B 84 CD 3D */	bl __construct_array
/* 80B15028  38 7D 00 14 */	addi r3, r29, 0x14
/* 80B1502C  3C 80 80 B1 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80B1536C@ha */
/* 80B15030  38 84 53 6C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80B1536C@l */
/* 80B15034  3C A0 80 B1 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80B15330@ha */
/* 80B15038  38 A5 53 30 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80B15330@l */
/* 80B1503C  38 C0 00 08 */	li r6, 8
/* 80B15040  38 E0 00 08 */	li r7, 8
/* 80B15044  4B 84 CD 1D */	bl __construct_array
/* 80B15048  38 7D 00 54 */	addi r3, r29, 0x54
/* 80B1504C  3C 80 80 B1 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80B1530C@ha */
/* 80B15050  38 84 53 0C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80B1530C@l */
/* 80B15054  3C A0 80 B1 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80B152C4@ha */
/* 80B15058  38 A5 52 C4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80B152C4@l */
/* 80B1505C  38 C0 00 0C */	li r6, 0xc
/* 80B15060  38 E0 00 08 */	li r7, 8
/* 80B15064  4B 84 CC FD */	bl __construct_array
/* 80B15068  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80B1506C  3C 80 80 B1 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80B152AC@ha */
/* 80B15070  38 84 52 AC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80B152AC@l */
/* 80B15074  3C A0 80 B1 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80B15270@ha */
/* 80B15078  38 A5 52 70 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80B15270@l */
/* 80B1507C  38 C0 00 08 */	li r6, 8
/* 80B15080  38 E0 00 04 */	li r7, 4
/* 80B15084  4B 84 CC DD */	bl __construct_array
/* 80B15088  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80B1508C  3C 80 80 B1 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80B15258@ha */
/* 80B15090  38 84 52 58 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80B15258@l */
/* 80B15094  3C A0 80 B1 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80B1521C@ha */
/* 80B15098  38 A5 52 1C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80B1521C@l */
/* 80B1509C  38 C0 00 08 */	li r6, 8
/* 80B150A0  38 E0 00 04 */	li r7, 4
/* 80B150A4  4B 84 CC BD */	bl __construct_array
/* 80B150A8  7F A3 EB 78 */	mr r3, r29
/* 80B150AC  4B 81 72 75 */	bl initialize__14J3DMaterialAnmFv
/* 80B150B0  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 80B150B4  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 80B150B8  90 1C 00 00 */	stw r0, 0(r28)
/* 80B150BC  7F 83 E3 78 */	mr r3, r28
/* 80B150C0  4B 63 B6 79 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_80B150C4:
/* 80B150C4  93 BF 11 60 */	stw r29, 0x1160(r31)
/* 80B150C8  80 1F 11 60 */	lwz r0, 0x1160(r31)
/* 80B150CC  28 00 00 00 */	cmplwi r0, 0
/* 80B150D0  40 82 00 0C */	bne lbl_80B150DC
/* 80B150D4  38 60 00 00 */	li r3, 0
/* 80B150D8  48 00 01 2C */	b lbl_80B15204
lbl_80B150DC:
/* 80B150DC  7F E3 FB 78 */	mr r3, r31
/* 80B150E0  38 80 00 01 */	li r4, 1
/* 80B150E4  38 A0 00 00 */	li r5, 0
/* 80B150E8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B150EC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B150F0  7D 89 03 A6 */	mtctr r12
/* 80B150F4  4E 80 04 21 */	bctrl 
/* 80B150F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B150FC  40 82 00 0C */	bne lbl_80B15108
/* 80B15100  38 60 00 00 */	li r3, 0
/* 80B15104  48 00 01 00 */	b lbl_80B15204
lbl_80B15108:
/* 80B15108  7F E3 FB 78 */	mr r3, r31
/* 80B1510C  38 80 00 00 */	li r4, 0
/* 80B15110  3C A0 80 B2 */	lis r5, lit_4538@ha /* 0x80B1DE0C@ha */
/* 80B15114  C0 25 DE 0C */	lfs f1, lit_4538@l(r5)  /* 0x80B1DE0C@l */
/* 80B15118  38 A0 00 00 */	li r5, 0
/* 80B1511C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B15120  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B15124  7D 89 03 A6 */	mtctr r12
/* 80B15128  4E 80 04 21 */	bctrl 
/* 80B1512C  88 1F 11 5F */	lbz r0, 0x115f(r31)
/* 80B15130  28 00 00 02 */	cmplwi r0, 2
/* 80B15134  40 80 00 CC */	bge lbl_80B15200
/* 80B15138  28 00 00 00 */	cmplwi r0, 0
/* 80B1513C  41 82 00 14 */	beq lbl_80B15150
/* 80B15140  3C 60 80 B2 */	lis r3, l_arcNames@ha /* 0x80B1E1F4@ha */
/* 80B15144  38 63 E1 F4 */	addi r3, r3, l_arcNames@l /* 0x80B1E1F4@l */
/* 80B15148  80 63 00 08 */	lwz r3, 8(r3)
/* 80B1514C  48 00 00 10 */	b lbl_80B1515C
lbl_80B15150:
/* 80B15150  3C 60 80 B2 */	lis r3, l_arcNames@ha /* 0x80B1E1F4@ha */
/* 80B15154  38 63 E1 F4 */	addi r3, r3, l_arcNames@l /* 0x80B1E1F4@l */
/* 80B15158  80 63 00 04 */	lwz r3, 4(r3)
lbl_80B1515C:
/* 80B1515C  28 00 00 00 */	cmplwi r0, 0
/* 80B15160  38 80 00 03 */	li r4, 3
/* 80B15164  7F C5 F3 78 */	mr r5, r30
/* 80B15168  38 C0 00 80 */	li r6, 0x80
/* 80B1516C  4B 52 71 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B15170  7C 7C 1B 78 */	mr r28, r3
/* 80B15174  38 60 00 58 */	li r3, 0x58
/* 80B15178  4B 7B 9A D5 */	bl __nw__FUl
/* 80B1517C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B15180  41 82 00 68 */	beq lbl_80B151E8
/* 80B15184  7F E3 FB 78 */	mr r3, r31
/* 80B15188  3C 80 80 B2 */	lis r4, l_arcName@ha /* 0x80B1E208@ha */
/* 80B1518C  38 84 E2 08 */	addi r4, r4, l_arcName@l /* 0x80B1E208@l */
/* 80B15190  80 84 00 00 */	lwz r4, 0(r4)
/* 80B15194  38 A0 00 16 */	li r5, 0x16
/* 80B15198  4B 63 D9 95 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B1519C  7C 67 1B 78 */	mr r7, r3
/* 80B151A0  38 1F 0F 64 */	addi r0, r31, 0xf64
/* 80B151A4  90 01 00 08 */	stw r0, 8(r1)
/* 80B151A8  3C 00 00 08 */	lis r0, 8
/* 80B151AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B151B0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80B151B4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80B151B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B151BC  7F A3 EB 78 */	mr r3, r29
/* 80B151C0  7F 84 E3 78 */	mr r4, r28
/* 80B151C4  38 A0 00 00 */	li r5, 0
/* 80B151C8  38 C0 00 00 */	li r6, 0
/* 80B151CC  39 00 FF FF */	li r8, -1
/* 80B151D0  3D 20 80 B2 */	lis r9, lit_4537@ha /* 0x80B1DE08@ha */
/* 80B151D4  C0 29 DE 08 */	lfs f1, lit_4537@l(r9)  /* 0x80B1DE08@l */
/* 80B151D8  39 20 00 00 */	li r9, 0
/* 80B151DC  39 40 FF FF */	li r10, -1
/* 80B151E0  4B 4F B5 F1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B151E4  7C 7D 1B 78 */	mr r29, r3
lbl_80B151E8:
/* 80B151E8  93 BF 0B D8 */	stw r29, 0xbd8(r31)
/* 80B151EC  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80B151F0  28 00 00 00 */	cmplwi r0, 0
/* 80B151F4  40 82 00 0C */	bne lbl_80B15200
/* 80B151F8  38 60 00 00 */	li r3, 0
/* 80B151FC  48 00 00 08 */	b lbl_80B15204
lbl_80B15200:
/* 80B15200  38 60 00 01 */	li r3, 1
lbl_80B15204:
/* 80B15204  39 61 00 30 */	addi r11, r1, 0x30
/* 80B15208  4B 84 D0 1D */	bl _restgpr_28
/* 80B1520C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B15210  7C 08 03 A6 */	mtlr r0
/* 80B15214  38 21 00 30 */	addi r1, r1, 0x30
/* 80B15218  4E 80 00 20 */	blr 
