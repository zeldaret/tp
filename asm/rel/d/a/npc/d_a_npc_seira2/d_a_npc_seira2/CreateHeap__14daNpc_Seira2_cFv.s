lbl_80AD0FF8:
/* 80AD0FF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD0FFC  7C 08 02 A6 */	mflr r0
/* 80AD1000  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD1004  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD1008  4B 89 11 D0 */	b _savegpr_28
/* 80AD100C  7C 7F 1B 78 */	mr r31, r3
/* 80AD1010  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80AD1014  28 00 00 01 */	cmplwi r0, 1
/* 80AD1018  38 00 00 00 */	li r0, 0
/* 80AD101C  3C 60 80 AD */	lis r3, l_bmdData@ha
/* 80AD1020  38 83 4B B0 */	addi r4, r3, l_bmdData@l
/* 80AD1024  54 00 18 38 */	slwi r0, r0, 3
/* 80AD1028  7C 64 02 14 */	add r3, r4, r0
/* 80AD102C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD1030  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD1034  54 60 10 3A */	slwi r0, r3, 2
/* 80AD1038  3C 60 80 AD */	lis r3, l_resNameList@ha
/* 80AD103C  38 63 4B D0 */	addi r3, r3, l_resNameList@l
/* 80AD1040  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AD1044  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AD1048  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AD104C  3F C5 00 02 */	addis r30, r5, 2
/* 80AD1050  3B DE C2 F8 */	addi r30, r30, -15624
/* 80AD1054  7F C5 F3 78 */	mr r5, r30
/* 80AD1058  38 C0 00 80 */	li r6, 0x80
/* 80AD105C  4B 56 B2 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AD1060  7C 7C 1B 79 */	or. r28, r3, r3
/* 80AD1064  40 82 00 0C */	bne lbl_80AD1070
/* 80AD1068  38 60 00 01 */	li r3, 1
/* 80AD106C  48 00 02 C8 */	b lbl_80AD1334
lbl_80AD1070:
/* 80AD1070  38 60 00 58 */	li r3, 0x58
/* 80AD1074  4B 7F DB D8 */	b __nw__FUl
/* 80AD1078  7C 60 1B 79 */	or. r0, r3, r3
/* 80AD107C  41 82 00 4C */	beq lbl_80AD10C8
/* 80AD1080  38 1F 05 80 */	addi r0, r31, 0x580
/* 80AD1084  90 01 00 08 */	stw r0, 8(r1)
/* 80AD1088  3C 00 00 08 */	lis r0, 8
/* 80AD108C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD1090  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AD1094  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AD1098  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD109C  7F 84 E3 78 */	mr r4, r28
/* 80AD10A0  38 A0 00 00 */	li r5, 0
/* 80AD10A4  38 C0 00 00 */	li r6, 0
/* 80AD10A8  38 E0 00 00 */	li r7, 0
/* 80AD10AC  39 00 FF FF */	li r8, -1
/* 80AD10B0  3D 20 80 AD */	lis r9, lit_4443@ha
/* 80AD10B4  C0 29 4B 1C */	lfs f1, lit_4443@l(r9)
/* 80AD10B8  39 20 00 00 */	li r9, 0
/* 80AD10BC  39 40 FF FF */	li r10, -1
/* 80AD10C0  4B 53 F7 10 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AD10C4  7C 60 1B 78 */	mr r0, r3
lbl_80AD10C8:
/* 80AD10C8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80AD10CC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AD10D0  28 03 00 00 */	cmplwi r3, 0
/* 80AD10D4  41 82 00 10 */	beq lbl_80AD10E4
/* 80AD10D8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AD10DC  28 05 00 00 */	cmplwi r5, 0
/* 80AD10E0  40 82 00 0C */	bne lbl_80AD10EC
lbl_80AD10E4:
/* 80AD10E4  38 60 00 00 */	li r3, 0
/* 80AD10E8  48 00 02 4C */	b lbl_80AD1334
lbl_80AD10EC:
/* 80AD10EC  38 C0 00 00 */	li r6, 0
/* 80AD10F0  3C 60 80 AD */	lis r3, ctrlJointCallBack__14daNpc_Seira2_cFP8J3DJointi@ha
/* 80AD10F4  38 83 16 C4 */	addi r4, r3, ctrlJointCallBack__14daNpc_Seira2_cFP8J3DJointi@l
/* 80AD10F8  48 00 00 18 */	b lbl_80AD1110
lbl_80AD10FC:
/* 80AD10FC  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80AD1100  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AD1104  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AD1108  90 83 00 04 */	stw r4, 4(r3)
/* 80AD110C  38 C6 00 01 */	addi r6, r6, 1
lbl_80AD1110:
/* 80AD1110  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AD1114  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80AD1118  7C 03 00 40 */	cmplw r3, r0
/* 80AD111C  41 80 FF E0 */	blt lbl_80AD10FC
/* 80AD1120  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80AD1124  38 60 01 08 */	li r3, 0x108
/* 80AD1128  4B 7F DB 24 */	b __nw__FUl
/* 80AD112C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80AD1130  41 82 00 D0 */	beq lbl_80AD1200
/* 80AD1134  7F BC EB 78 */	mr r28, r29
/* 80AD1138  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80AD113C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80AD1140  90 1D 00 00 */	stw r0, 0(r29)
/* 80AD1144  38 7D 00 04 */	addi r3, r29, 4
/* 80AD1148  3C 80 80 AD */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80AD114C  38 84 14 F0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80AD1150  3C A0 80 AD */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80AD1154  38 A5 14 B4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80AD1158  38 C0 00 08 */	li r6, 8
/* 80AD115C  38 E0 00 02 */	li r7, 2
/* 80AD1160  4B 89 0C 00 */	b __construct_array
/* 80AD1164  38 7D 00 14 */	addi r3, r29, 0x14
/* 80AD1168  3C 80 80 AD */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80AD116C  38 84 14 9C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80AD1170  3C A0 80 AD */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80AD1174  38 A5 14 60 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80AD1178  38 C0 00 08 */	li r6, 8
/* 80AD117C  38 E0 00 08 */	li r7, 8
/* 80AD1180  4B 89 0B E0 */	b __construct_array
/* 80AD1184  38 7D 00 54 */	addi r3, r29, 0x54
/* 80AD1188  3C 80 80 AD */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80AD118C  38 84 14 3C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80AD1190  3C A0 80 AD */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80AD1194  38 A5 13 F4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80AD1198  38 C0 00 0C */	li r6, 0xc
/* 80AD119C  38 E0 00 08 */	li r7, 8
/* 80AD11A0  4B 89 0B C0 */	b __construct_array
/* 80AD11A4  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80AD11A8  3C 80 80 AD */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80AD11AC  38 84 13 DC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80AD11B0  3C A0 80 AD */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80AD11B4  38 A5 13 A0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80AD11B8  38 C0 00 08 */	li r6, 8
/* 80AD11BC  38 E0 00 04 */	li r7, 4
/* 80AD11C0  4B 89 0B A0 */	b __construct_array
/* 80AD11C4  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80AD11C8  3C 80 80 AD */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80AD11CC  38 84 13 88 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80AD11D0  3C A0 80 AD */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80AD11D4  38 A5 13 4C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80AD11D8  38 C0 00 08 */	li r6, 8
/* 80AD11DC  38 E0 00 04 */	li r7, 4
/* 80AD11E0  4B 89 0B 80 */	b __construct_array
/* 80AD11E4  7F A3 EB 78 */	mr r3, r29
/* 80AD11E8  4B 85 B1 38 */	b initialize__14J3DMaterialAnmFv
/* 80AD11EC  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80AD11F0  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80AD11F4  90 1C 00 00 */	stw r0, 0(r28)
/* 80AD11F8  7F 83 E3 78 */	mr r3, r28
/* 80AD11FC  4B 67 45 68 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80AD1200:
/* 80AD1200  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80AD1204  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80AD1208  28 00 00 00 */	cmplwi r0, 0
/* 80AD120C  40 82 00 0C */	bne lbl_80AD1218
/* 80AD1210  38 60 00 00 */	li r3, 0
/* 80AD1214  48 00 01 20 */	b lbl_80AD1334
lbl_80AD1218:
/* 80AD1218  3C 60 80 AD */	lis r3, l_bmdData@ha
/* 80AD121C  38 63 4B B0 */	addi r3, r3, l_bmdData@l
/* 80AD1220  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AD1224  80 83 00 08 */	lwz r4, 8(r3)
/* 80AD1228  54 00 10 3A */	slwi r0, r0, 2
/* 80AD122C  3C 60 80 AD */	lis r3, l_resNameList@ha
/* 80AD1230  38 63 4B D0 */	addi r3, r3, l_resNameList@l
/* 80AD1234  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AD1238  7F C5 F3 78 */	mr r5, r30
/* 80AD123C  38 C0 00 80 */	li r6, 0x80
/* 80AD1240  4B 56 B0 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AD1244  7C 7C 1B 78 */	mr r28, r3
/* 80AD1248  38 60 00 58 */	li r3, 0x58
/* 80AD124C  4B 7F DA 00 */	b __nw__FUl
/* 80AD1250  7C 60 1B 79 */	or. r0, r3, r3
/* 80AD1254  41 82 00 48 */	beq lbl_80AD129C
/* 80AD1258  38 00 00 00 */	li r0, 0
/* 80AD125C  90 01 00 08 */	stw r0, 8(r1)
/* 80AD1260  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD1264  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80AD1268  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80AD126C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD1270  7F 84 E3 78 */	mr r4, r28
/* 80AD1274  38 A0 00 00 */	li r5, 0
/* 80AD1278  38 C0 00 00 */	li r6, 0
/* 80AD127C  38 E0 00 00 */	li r7, 0
/* 80AD1280  39 00 FF FF */	li r8, -1
/* 80AD1284  3D 20 80 AD */	lis r9, lit_4443@ha
/* 80AD1288  C0 29 4B 1C */	lfs f1, lit_4443@l(r9)
/* 80AD128C  39 20 00 00 */	li r9, 0
/* 80AD1290  39 40 FF FF */	li r10, -1
/* 80AD1294  4B 53 F5 3C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AD1298  7C 60 1B 78 */	mr r0, r3
lbl_80AD129C:
/* 80AD129C  90 1F 0F 7C */	stw r0, 0xf7c(r31)
/* 80AD12A0  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80AD12A4  28 03 00 00 */	cmplwi r3, 0
/* 80AD12A8  41 82 00 10 */	beq lbl_80AD12B8
/* 80AD12AC  80 03 00 04 */	lwz r0, 4(r3)
/* 80AD12B0  28 00 00 00 */	cmplwi r0, 0
/* 80AD12B4  40 82 00 0C */	bne lbl_80AD12C0
lbl_80AD12B8:
/* 80AD12B8  38 60 00 00 */	li r3, 0
/* 80AD12BC  48 00 00 78 */	b lbl_80AD1334
lbl_80AD12C0:
/* 80AD12C0  7F E3 FB 78 */	mr r3, r31
/* 80AD12C4  38 80 00 01 */	li r4, 1
/* 80AD12C8  38 A0 00 00 */	li r5, 0
/* 80AD12CC  4B 67 90 BC */	b setFaceMotionAnm__8daNpcT_cFib
/* 80AD12D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD12D4  41 82 00 5C */	beq lbl_80AD1330
/* 80AD12D8  7F E3 FB 78 */	mr r3, r31
/* 80AD12DC  38 80 00 00 */	li r4, 0
/* 80AD12E0  3C A0 80 AD */	lis r5, lit_4055@ha
/* 80AD12E4  C0 25 4B 08 */	lfs f1, lit_4055@l(r5)
/* 80AD12E8  38 A0 00 00 */	li r5, 0
/* 80AD12EC  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AD12F0  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AD12F4  7D 89 03 A6 */	mtctr r12
/* 80AD12F8  4E 80 04 21 */	bctrl 
/* 80AD12FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD1300  41 82 00 30 */	beq lbl_80AD1330
/* 80AD1304  7F E3 FB 78 */	mr r3, r31
/* 80AD1308  38 80 00 19 */	li r4, 0x19
/* 80AD130C  38 A0 00 02 */	li r5, 2
/* 80AD1310  3C C0 80 AD */	lis r6, lit_4055@ha
/* 80AD1314  C0 26 4B 08 */	lfs f1, lit_4055@l(r6)
/* 80AD1318  38 C0 00 00 */	li r6, 0
/* 80AD131C  48 00 13 15 */	bl setBottleAnm__14daNpc_Seira2_cFiifb
/* 80AD1320  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD1324  41 82 00 0C */	beq lbl_80AD1330
/* 80AD1328  38 60 00 01 */	li r3, 1
/* 80AD132C  48 00 00 08 */	b lbl_80AD1334
lbl_80AD1330:
/* 80AD1330  38 60 00 00 */	li r3, 0
lbl_80AD1334:
/* 80AD1334  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD1338  4B 89 0E EC */	b _restgpr_28
/* 80AD133C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD1340  7C 08 03 A6 */	mtlr r0
/* 80AD1344  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD1348  4E 80 00 20 */	blr 
