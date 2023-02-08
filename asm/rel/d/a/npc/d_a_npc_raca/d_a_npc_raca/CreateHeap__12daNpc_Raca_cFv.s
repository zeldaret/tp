lbl_80AB60B8:
/* 80AB60B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB60BC  7C 08 02 A6 */	mflr r0
/* 80AB60C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB60C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB60C8  4B 8A C1 15 */	bl _savegpr_29
/* 80AB60CC  7C 7F 1B 78 */	mr r31, r3
/* 80AB60D0  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80AB60D4  28 00 00 01 */	cmplwi r0, 1
/* 80AB60D8  38 00 00 00 */	li r0, 0
/* 80AB60DC  54 05 18 38 */	slwi r5, r0, 3
/* 80AB60E0  3C 60 80 AC */	lis r3, l_bmdData@ha /* 0x80AB8FDC@ha */
/* 80AB60E4  38 83 8F DC */	addi r4, r3, l_bmdData@l /* 0x80AB8FDC@l */
/* 80AB60E8  7C 64 2A 14 */	add r3, r4, r5
/* 80AB60EC  80 03 00 04 */	lwz r0, 4(r3)
/* 80AB60F0  54 00 10 3A */	slwi r0, r0, 2
/* 80AB60F4  3C 60 80 AC */	lis r3, l_resNameList@ha /* 0x80AB8FF4@ha */
/* 80AB60F8  38 63 8F F4 */	addi r3, r3, l_resNameList@l /* 0x80AB8FF4@l */
/* 80AB60FC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AB6100  7C 84 28 2E */	lwzx r4, r4, r5
/* 80AB6104  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB6108  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB610C  3C A5 00 02 */	addis r5, r5, 2
/* 80AB6110  38 C0 00 80 */	li r6, 0x80
/* 80AB6114  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AB6118  4B 58 61 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AB611C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB6120  40 82 00 0C */	bne lbl_80AB612C
/* 80AB6124  38 60 00 00 */	li r3, 0
/* 80AB6128  48 00 02 18 */	b lbl_80AB6340
lbl_80AB612C:
/* 80AB612C  38 60 00 58 */	li r3, 0x58
/* 80AB6130  4B 81 8B 1D */	bl __nw__FUl
/* 80AB6134  7C 60 1B 79 */	or. r0, r3, r3
/* 80AB6138  41 82 00 4C */	beq lbl_80AB6184
/* 80AB613C  38 1F 05 80 */	addi r0, r31, 0x580
/* 80AB6140  90 01 00 08 */	stw r0, 8(r1)
/* 80AB6144  3C 00 00 08 */	lis r0, 8
/* 80AB6148  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB614C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AB6150  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AB6154  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB6158  7F C4 F3 78 */	mr r4, r30
/* 80AB615C  38 A0 00 00 */	li r5, 0
/* 80AB6160  38 C0 00 00 */	li r6, 0
/* 80AB6164  38 E0 00 00 */	li r7, 0
/* 80AB6168  39 00 FF FF */	li r8, -1
/* 80AB616C  3D 20 80 AC */	lis r9, lit_4353@ha /* 0x80AB8F74@ha */
/* 80AB6170  C0 29 8F 74 */	lfs f1, lit_4353@l(r9)  /* 0x80AB8F74@l */
/* 80AB6174  39 20 00 00 */	li r9, 0
/* 80AB6178  39 40 FF FF */	li r10, -1
/* 80AB617C  4B 55 A6 55 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AB6180  7C 60 1B 78 */	mr r0, r3
lbl_80AB6184:
/* 80AB6184  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80AB6188  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AB618C  28 03 00 00 */	cmplwi r3, 0
/* 80AB6190  41 82 00 1C */	beq lbl_80AB61AC
/* 80AB6194  80 03 00 04 */	lwz r0, 4(r3)
/* 80AB6198  28 00 00 00 */	cmplwi r0, 0
/* 80AB619C  40 82 00 10 */	bne lbl_80AB61AC
/* 80AB61A0  4B 55 B1 71 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AB61A4  38 00 00 00 */	li r0, 0
/* 80AB61A8  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80AB61AC:
/* 80AB61AC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AB61B0  28 03 00 00 */	cmplwi r3, 0
/* 80AB61B4  40 82 00 0C */	bne lbl_80AB61C0
/* 80AB61B8  38 60 00 00 */	li r3, 0
/* 80AB61BC  48 00 01 84 */	b lbl_80AB6340
lbl_80AB61C0:
/* 80AB61C0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AB61C4  38 C0 00 00 */	li r6, 0
/* 80AB61C8  3C 60 80 AB */	lis r3, ctrlJointCallBack__12daNpc_Raca_cFP8J3DJointi@ha /* 0x80AB661C@ha */
/* 80AB61CC  38 83 66 1C */	addi r4, r3, ctrlJointCallBack__12daNpc_Raca_cFP8J3DJointi@l /* 0x80AB661C@l */
/* 80AB61D0  48 00 00 18 */	b lbl_80AB61E8
lbl_80AB61D4:
/* 80AB61D4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AB61D8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AB61DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AB61E0  90 83 00 04 */	stw r4, 4(r3)
/* 80AB61E4  38 C6 00 01 */	addi r6, r6, 1
lbl_80AB61E8:
/* 80AB61E8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AB61EC  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80AB61F0  7C 03 00 40 */	cmplw r3, r0
/* 80AB61F4  41 80 FF E0 */	blt lbl_80AB61D4
/* 80AB61F8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80AB61FC  38 60 01 08 */	li r3, 0x108
/* 80AB6200  4B 81 8A 4D */	bl __nw__FUl
/* 80AB6204  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB6208  41 82 00 D0 */	beq lbl_80AB62D8
/* 80AB620C  7F DD F3 78 */	mr r29, r30
/* 80AB6210  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80AB6214  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80AB6218  90 1E 00 00 */	stw r0, 0(r30)
/* 80AB621C  38 7E 00 04 */	addi r3, r30, 4
/* 80AB6220  3C 80 80 AB */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80AB64FC@ha */
/* 80AB6224  38 84 64 FC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80AB64FC@l */
/* 80AB6228  3C A0 80 AB */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80AB64C0@ha */
/* 80AB622C  38 A5 64 C0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80AB64C0@l */
/* 80AB6230  38 C0 00 08 */	li r6, 8
/* 80AB6234  38 E0 00 02 */	li r7, 2
/* 80AB6238  4B 8A BB 29 */	bl __construct_array
/* 80AB623C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AB6240  3C 80 80 AB */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80AB64A8@ha */
/* 80AB6244  38 84 64 A8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80AB64A8@l */
/* 80AB6248  3C A0 80 AB */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80AB646C@ha */
/* 80AB624C  38 A5 64 6C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80AB646C@l */
/* 80AB6250  38 C0 00 08 */	li r6, 8
/* 80AB6254  38 E0 00 08 */	li r7, 8
/* 80AB6258  4B 8A BB 09 */	bl __construct_array
/* 80AB625C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80AB6260  3C 80 80 AB */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80AB6448@ha */
/* 80AB6264  38 84 64 48 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80AB6448@l */
/* 80AB6268  3C A0 80 AB */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80AB6400@ha */
/* 80AB626C  38 A5 64 00 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80AB6400@l */
/* 80AB6270  38 C0 00 0C */	li r6, 0xc
/* 80AB6274  38 E0 00 08 */	li r7, 8
/* 80AB6278  4B 8A BA E9 */	bl __construct_array
/* 80AB627C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80AB6280  3C 80 80 AB */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80AB63E8@ha */
/* 80AB6284  38 84 63 E8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80AB63E8@l */
/* 80AB6288  3C A0 80 AB */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80AB63AC@ha */
/* 80AB628C  38 A5 63 AC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80AB63AC@l */
/* 80AB6290  38 C0 00 08 */	li r6, 8
/* 80AB6294  38 E0 00 04 */	li r7, 4
/* 80AB6298  4B 8A BA C9 */	bl __construct_array
/* 80AB629C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80AB62A0  3C 80 80 AB */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80AB6394@ha */
/* 80AB62A4  38 84 63 94 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80AB6394@l */
/* 80AB62A8  3C A0 80 AB */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80AB6358@ha */
/* 80AB62AC  38 A5 63 58 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80AB6358@l */
/* 80AB62B0  38 C0 00 08 */	li r6, 8
/* 80AB62B4  38 E0 00 04 */	li r7, 4
/* 80AB62B8  4B 8A BA A9 */	bl __construct_array
/* 80AB62BC  7F C3 F3 78 */	mr r3, r30
/* 80AB62C0  4B 87 60 61 */	bl initialize__14J3DMaterialAnmFv
/* 80AB62C4  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80AB62C8  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80AB62CC  90 1D 00 00 */	stw r0, 0(r29)
/* 80AB62D0  7F A3 EB 78 */	mr r3, r29
/* 80AB62D4  4B 68 F4 91 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AB62D8:
/* 80AB62D8  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80AB62DC  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80AB62E0  28 00 00 00 */	cmplwi r0, 0
/* 80AB62E4  40 82 00 0C */	bne lbl_80AB62F0
/* 80AB62E8  38 60 00 00 */	li r3, 0
/* 80AB62EC  48 00 00 54 */	b lbl_80AB6340
lbl_80AB62F0:
/* 80AB62F0  7F E3 FB 78 */	mr r3, r31
/* 80AB62F4  38 80 00 01 */	li r4, 1
/* 80AB62F8  38 A0 00 00 */	li r5, 0
/* 80AB62FC  4B 69 40 8D */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AB6300  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AB6304  41 82 00 38 */	beq lbl_80AB633C
/* 80AB6308  7F E3 FB 78 */	mr r3, r31
/* 80AB630C  38 80 00 00 */	li r4, 0
/* 80AB6310  3C A0 80 AC */	lis r5, lit_4040@ha /* 0x80AB8F64@ha */
/* 80AB6314  C0 25 8F 64 */	lfs f1, lit_4040@l(r5)  /* 0x80AB8F64@l */
/* 80AB6318  38 A0 00 00 */	li r5, 0
/* 80AB631C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AB6320  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AB6324  7D 89 03 A6 */	mtctr r12
/* 80AB6328  4E 80 04 21 */	bctrl 
/* 80AB632C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AB6330  41 82 00 0C */	beq lbl_80AB633C
/* 80AB6334  38 60 00 01 */	li r3, 1
/* 80AB6338  48 00 00 08 */	b lbl_80AB6340
lbl_80AB633C:
/* 80AB633C  38 60 00 00 */	li r3, 0
lbl_80AB6340:
/* 80AB6340  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB6344  4B 8A BE E5 */	bl _restgpr_29
/* 80AB6348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB634C  7C 08 03 A6 */	mtlr r0
/* 80AB6350  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB6354  4E 80 00 20 */	blr 
