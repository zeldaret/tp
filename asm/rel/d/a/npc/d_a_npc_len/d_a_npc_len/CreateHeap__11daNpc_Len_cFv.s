lbl_80A64740:
/* 80A64740  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A64744  7C 08 02 A6 */	mflr r0
/* 80A64748  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6474C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A64750  4B 8F DA 8C */	b _savegpr_29
/* 80A64754  7C 7E 1B 78 */	mr r30, r3
/* 80A64758  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A6475C  20 00 00 01 */	subfic r0, r0, 1
/* 80A64760  7C 00 00 34 */	cntlzw r0, r0
/* 80A64764  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 80A64768  3C 60 80 A7 */	lis r3, l_bmdData@ha
/* 80A6476C  38 83 90 A8 */	addi r4, r3, l_bmdData@l
/* 80A64770  7C 64 2A 14 */	add r3, r4, r5
/* 80A64774  80 03 00 04 */	lwz r0, 4(r3)
/* 80A64778  54 00 10 3A */	slwi r0, r0, 2
/* 80A6477C  3C 60 80 A7 */	lis r3, l_resNameList@ha
/* 80A64780  38 63 90 F0 */	addi r3, r3, l_resNameList@l
/* 80A64784  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A64788  7C 84 28 2E */	lwzx r4, r4, r5
/* 80A6478C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A64790  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A64794  3C A5 00 02 */	addis r5, r5, 2
/* 80A64798  38 C0 00 80 */	li r6, 0x80
/* 80A6479C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A647A0  4B 5D 7B 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A647A4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A647A8  40 82 00 0C */	bne lbl_80A647B4
/* 80A647AC  38 60 00 00 */	li r3, 0
/* 80A647B0  48 00 02 5C */	b lbl_80A64A0C
lbl_80A647B4:
/* 80A647B4  38 60 00 58 */	li r3, 0x58
/* 80A647B8  4B 86 A4 94 */	b __nw__FUl
/* 80A647BC  7C 60 1B 79 */	or. r0, r3, r3
/* 80A647C0  41 82 00 4C */	beq lbl_80A6480C
/* 80A647C4  38 1E 05 80 */	addi r0, r30, 0x580
/* 80A647C8  90 01 00 08 */	stw r0, 8(r1)
/* 80A647CC  3C 00 00 08 */	lis r0, 8
/* 80A647D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A647D4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A647D8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A647DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A647E0  7F A4 EB 78 */	mr r4, r29
/* 80A647E4  38 A0 00 00 */	li r5, 0
/* 80A647E8  38 C0 00 00 */	li r6, 0
/* 80A647EC  38 E0 00 00 */	li r7, 0
/* 80A647F0  39 00 FF FF */	li r8, -1
/* 80A647F4  3D 20 80 A7 */	lis r9, lit_4388@ha
/* 80A647F8  C0 29 8F 80 */	lfs f1, lit_4388@l(r9)
/* 80A647FC  39 20 00 00 */	li r9, 0
/* 80A64800  39 40 FF FF */	li r10, -1
/* 80A64804  4B 5A BF CC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A64808  7C 60 1B 78 */	mr r0, r3
lbl_80A6480C:
/* 80A6480C  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80A64810  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A64814  28 03 00 00 */	cmplwi r3, 0
/* 80A64818  41 82 00 10 */	beq lbl_80A64828
/* 80A6481C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A64820  28 05 00 00 */	cmplwi r5, 0
/* 80A64824  40 82 00 0C */	bne lbl_80A64830
lbl_80A64828:
/* 80A64828  38 60 00 00 */	li r3, 0
/* 80A6482C  48 00 01 E0 */	b lbl_80A64A0C
lbl_80A64830:
/* 80A64830  38 C0 00 00 */	li r6, 0
/* 80A64834  3C 60 80 A6 */	lis r3, ctrlJointCallBack__11daNpc_Len_cFP8J3DJointi@ha
/* 80A64838  38 83 4C E8 */	addi r4, r3, ctrlJointCallBack__11daNpc_Len_cFP8J3DJointi@l
/* 80A6483C  48 00 00 18 */	b lbl_80A64854
lbl_80A64840:
/* 80A64840  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A64844  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A64848  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A6484C  90 83 00 04 */	stw r4, 4(r3)
/* 80A64850  38 C6 00 01 */	addi r6, r6, 1
lbl_80A64854:
/* 80A64854  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A64858  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80A6485C  7C 03 00 40 */	cmplw r3, r0
/* 80A64860  41 80 FF E0 */	blt lbl_80A64840
/* 80A64864  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80A64868  38 60 01 08 */	li r3, 0x108
/* 80A6486C  4B 86 A3 E0 */	b __nw__FUl
/* 80A64870  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A64874  41 82 00 D0 */	beq lbl_80A64944
/* 80A64878  7F FD FB 78 */	mr r29, r31
/* 80A6487C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80A64880  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80A64884  90 1F 00 00 */	stw r0, 0(r31)
/* 80A64888  38 7F 00 04 */	addi r3, r31, 4
/* 80A6488C  3C 80 80 A6 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80A64890  38 84 4B C8 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80A64894  3C A0 80 A6 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80A64898  38 A5 4B 8C */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80A6489C  38 C0 00 08 */	li r6, 8
/* 80A648A0  38 E0 00 02 */	li r7, 2
/* 80A648A4  4B 8F D4 BC */	b __construct_array
/* 80A648A8  38 7F 00 14 */	addi r3, r31, 0x14
/* 80A648AC  3C 80 80 A6 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80A648B0  38 84 4B 74 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80A648B4  3C A0 80 A6 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80A648B8  38 A5 4B 38 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80A648BC  38 C0 00 08 */	li r6, 8
/* 80A648C0  38 E0 00 08 */	li r7, 8
/* 80A648C4  4B 8F D4 9C */	b __construct_array
/* 80A648C8  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A648CC  3C 80 80 A6 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80A648D0  38 84 4B 14 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80A648D4  3C A0 80 A6 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80A648D8  38 A5 4A CC */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80A648DC  38 C0 00 0C */	li r6, 0xc
/* 80A648E0  38 E0 00 08 */	li r7, 8
/* 80A648E4  4B 8F D4 7C */	b __construct_array
/* 80A648E8  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80A648EC  3C 80 80 A6 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80A648F0  38 84 4A B4 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80A648F4  3C A0 80 A6 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80A648F8  38 A5 4A 78 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80A648FC  38 C0 00 08 */	li r6, 8
/* 80A64900  38 E0 00 04 */	li r7, 4
/* 80A64904  4B 8F D4 5C */	b __construct_array
/* 80A64908  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80A6490C  3C 80 80 A6 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80A64910  38 84 4A 60 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80A64914  3C A0 80 A6 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80A64918  38 A5 4A 24 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80A6491C  38 C0 00 08 */	li r6, 8
/* 80A64920  38 E0 00 04 */	li r7, 4
/* 80A64924  4B 8F D4 3C */	b __construct_array
/* 80A64928  7F E3 FB 78 */	mr r3, r31
/* 80A6492C  4B 8C 79 F4 */	b initialize__14J3DMaterialAnmFv
/* 80A64930  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80A64934  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80A64938  90 1D 00 00 */	stw r0, 0(r29)
/* 80A6493C  7F A3 EB 78 */	mr r3, r29
/* 80A64940  4B 6E 0E 24 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A64944:
/* 80A64944  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80A64948  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80A6494C  28 00 00 00 */	cmplwi r0, 0
/* 80A64950  40 82 00 0C */	bne lbl_80A6495C
/* 80A64954  38 60 00 00 */	li r3, 0
/* 80A64958  48 00 00 B4 */	b lbl_80A64A0C
lbl_80A6495C:
/* 80A6495C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A64960  28 00 00 00 */	cmplwi r0, 0
/* 80A64964  41 82 00 58 */	beq lbl_80A649BC
/* 80A64968  7F C3 F3 78 */	mr r3, r30
/* 80A6496C  38 80 00 12 */	li r4, 0x12
/* 80A64970  38 A0 00 00 */	li r5, 0
/* 80A64974  4B 6E 5A 14 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A64978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6497C  41 82 00 38 */	beq lbl_80A649B4
/* 80A64980  7F C3 F3 78 */	mr r3, r30
/* 80A64984  38 80 00 0F */	li r4, 0xf
/* 80A64988  3C A0 80 A7 */	lis r5, lit_4072@ha
/* 80A6498C  C0 25 8F 70 */	lfs f1, lit_4072@l(r5)
/* 80A64990  38 A0 00 00 */	li r5, 0
/* 80A64994  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A64998  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A6499C  7D 89 03 A6 */	mtctr r12
/* 80A649A0  4E 80 04 21 */	bctrl 
/* 80A649A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A649A8  41 82 00 0C */	beq lbl_80A649B4
/* 80A649AC  38 60 00 01 */	li r3, 1
/* 80A649B0  48 00 00 5C */	b lbl_80A64A0C
lbl_80A649B4:
/* 80A649B4  38 60 00 00 */	li r3, 0
/* 80A649B8  48 00 00 54 */	b lbl_80A64A0C
lbl_80A649BC:
/* 80A649BC  7F C3 F3 78 */	mr r3, r30
/* 80A649C0  38 80 00 01 */	li r4, 1
/* 80A649C4  38 A0 00 00 */	li r5, 0
/* 80A649C8  4B 6E 59 C0 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A649CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A649D0  41 82 00 38 */	beq lbl_80A64A08
/* 80A649D4  7F C3 F3 78 */	mr r3, r30
/* 80A649D8  38 80 00 00 */	li r4, 0
/* 80A649DC  3C A0 80 A7 */	lis r5, lit_4072@ha
/* 80A649E0  C0 25 8F 70 */	lfs f1, lit_4072@l(r5)
/* 80A649E4  38 A0 00 00 */	li r5, 0
/* 80A649E8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A649EC  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A649F0  7D 89 03 A6 */	mtctr r12
/* 80A649F4  4E 80 04 21 */	bctrl 
/* 80A649F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A649FC  41 82 00 0C */	beq lbl_80A64A08
/* 80A64A00  38 60 00 01 */	li r3, 1
/* 80A64A04  48 00 00 08 */	b lbl_80A64A0C
lbl_80A64A08:
/* 80A64A08  38 60 00 00 */	li r3, 0
lbl_80A64A0C:
/* 80A64A0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A64A10  4B 8F D8 18 */	b _restgpr_29
/* 80A64A14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A64A18  7C 08 03 A6 */	mtlr r0
/* 80A64A1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A64A20  4E 80 00 20 */	blr 
