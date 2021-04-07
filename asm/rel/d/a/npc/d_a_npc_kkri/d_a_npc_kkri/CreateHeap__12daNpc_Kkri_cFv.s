lbl_8054F7D0:
/* 8054F7D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054F7D4  7C 08 02 A6 */	mflr r0
/* 8054F7D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054F7DC  39 61 00 30 */	addi r11, r1, 0x30
/* 8054F7E0  4B E1 29 FD */	bl _savegpr_29
/* 8054F7E4  7C 7E 1B 78 */	mr r30, r3
/* 8054F7E8  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 8054F7EC  20 00 00 01 */	subfic r0, r0, 1
/* 8054F7F0  7C 00 00 34 */	cntlzw r0, r0
/* 8054F7F4  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 8054F7F8  3C 60 80 55 */	lis r3, l_bmdData@ha /* 0x80553618@ha */
/* 8054F7FC  38 83 36 18 */	addi r4, r3, l_bmdData@l /* 0x80553618@l */
/* 8054F800  7C 64 2A 14 */	add r3, r4, r5
/* 8054F804  80 03 00 04 */	lwz r0, 4(r3)
/* 8054F808  54 00 10 3A */	slwi r0, r0, 2
/* 8054F80C  3C 60 80 55 */	lis r3, l_resNameList@ha /* 0x80553650@ha */
/* 8054F810  38 63 36 50 */	addi r3, r3, l_resNameList@l /* 0x80553650@l */
/* 8054F814  7C 63 00 2E */	lwzx r3, r3, r0
/* 8054F818  7C 84 28 2E */	lwzx r4, r4, r5
/* 8054F81C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054F820  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054F824  3C A5 00 02 */	addis r5, r5, 2
/* 8054F828  38 C0 00 80 */	li r6, 0x80
/* 8054F82C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8054F830  4B AE CA BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8054F834  7C 7D 1B 79 */	or. r29, r3, r3
/* 8054F838  40 82 00 0C */	bne lbl_8054F844
/* 8054F83C  38 60 00 01 */	li r3, 1
/* 8054F840  48 00 01 FC */	b lbl_8054FA3C
lbl_8054F844:
/* 8054F844  38 60 00 58 */	li r3, 0x58
/* 8054F848  4B D7 F4 05 */	bl __nw__FUl
/* 8054F84C  7C 60 1B 79 */	or. r0, r3, r3
/* 8054F850  41 82 00 4C */	beq lbl_8054F89C
/* 8054F854  38 1E 05 80 */	addi r0, r30, 0x580
/* 8054F858  90 01 00 08 */	stw r0, 8(r1)
/* 8054F85C  3C 00 00 08 */	lis r0, 8
/* 8054F860  90 01 00 0C */	stw r0, 0xc(r1)
/* 8054F864  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 8054F868  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 8054F86C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8054F870  7F A4 EB 78 */	mr r4, r29
/* 8054F874  38 A0 00 00 */	li r5, 0
/* 8054F878  38 C0 00 00 */	li r6, 0
/* 8054F87C  38 E0 00 00 */	li r7, 0
/* 8054F880  39 00 FF FF */	li r8, -1
/* 8054F884  3D 20 80 55 */	lis r9, lit_4391@ha /* 0x80553548@ha */
/* 8054F888  C0 29 35 48 */	lfs f1, lit_4391@l(r9)  /* 0x80553548@l */
/* 8054F88C  39 20 00 00 */	li r9, 0
/* 8054F890  39 40 FF FF */	li r10, -1
/* 8054F894  4B AC 0F 3D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8054F898  7C 60 1B 78 */	mr r0, r3
lbl_8054F89C:
/* 8054F89C  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8054F8A0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8054F8A4  28 03 00 00 */	cmplwi r3, 0
/* 8054F8A8  41 82 00 10 */	beq lbl_8054F8B8
/* 8054F8AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 8054F8B0  28 05 00 00 */	cmplwi r5, 0
/* 8054F8B4  40 82 00 0C */	bne lbl_8054F8C0
lbl_8054F8B8:
/* 8054F8B8  38 60 00 00 */	li r3, 0
/* 8054F8BC  48 00 01 80 */	b lbl_8054FA3C
lbl_8054F8C0:
/* 8054F8C0  38 C0 00 00 */	li r6, 0
/* 8054F8C4  3C 60 80 55 */	lis r3, ctrlJointCallBack__12daNpc_Kkri_cFP8J3DJointi@ha /* 0x8054FD20@ha */
/* 8054F8C8  38 83 FD 20 */	addi r4, r3, ctrlJointCallBack__12daNpc_Kkri_cFP8J3DJointi@l /* 0x8054FD20@l */
/* 8054F8CC  48 00 00 18 */	b lbl_8054F8E4
lbl_8054F8D0:
/* 8054F8D0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8054F8D4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8054F8D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8054F8DC  90 83 00 04 */	stw r4, 4(r3)
/* 8054F8E0  38 C6 00 01 */	addi r6, r6, 1
lbl_8054F8E4:
/* 8054F8E4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8054F8E8  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 8054F8EC  7C 03 00 40 */	cmplw r3, r0
/* 8054F8F0  41 80 FF E0 */	blt lbl_8054F8D0
/* 8054F8F4  93 C5 00 14 */	stw r30, 0x14(r5)
/* 8054F8F8  38 60 01 08 */	li r3, 0x108
/* 8054F8FC  4B D7 F3 51 */	bl __nw__FUl
/* 8054F900  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054F904  41 82 00 D0 */	beq lbl_8054F9D4
/* 8054F908  7F FD FB 78 */	mr r29, r31
/* 8054F90C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 8054F910  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 8054F914  90 1F 00 00 */	stw r0, 0(r31)
/* 8054F918  38 7F 00 04 */	addi r3, r31, 4
/* 8054F91C  3C 80 80 55 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x8054FBF8@ha */
/* 8054F920  38 84 FB F8 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x8054FBF8@l */
/* 8054F924  3C A0 80 55 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x8054FBBC@ha */
/* 8054F928  38 A5 FB BC */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x8054FBBC@l */
/* 8054F92C  38 C0 00 08 */	li r6, 8
/* 8054F930  38 E0 00 02 */	li r7, 2
/* 8054F934  4B E1 24 2D */	bl __construct_array
/* 8054F938  38 7F 00 14 */	addi r3, r31, 0x14
/* 8054F93C  3C 80 80 55 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x8054FBA4@ha */
/* 8054F940  38 84 FB A4 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x8054FBA4@l */
/* 8054F944  3C A0 80 55 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8054FB68@ha */
/* 8054F948  38 A5 FB 68 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8054FB68@l */
/* 8054F94C  38 C0 00 08 */	li r6, 8
/* 8054F950  38 E0 00 08 */	li r7, 8
/* 8054F954  4B E1 24 0D */	bl __construct_array
/* 8054F958  38 7F 00 54 */	addi r3, r31, 0x54
/* 8054F95C  3C 80 80 55 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8054FB44@ha */
/* 8054F960  38 84 FB 44 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8054FB44@l */
/* 8054F964  3C A0 80 55 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x8054FAFC@ha */
/* 8054F968  38 A5 FA FC */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x8054FAFC@l */
/* 8054F96C  38 C0 00 0C */	li r6, 0xc
/* 8054F970  38 E0 00 08 */	li r7, 8
/* 8054F974  4B E1 23 ED */	bl __construct_array
/* 8054F978  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8054F97C  3C 80 80 55 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x8054FAE4@ha */
/* 8054F980  38 84 FA E4 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x8054FAE4@l */
/* 8054F984  3C A0 80 55 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x8054FAA8@ha */
/* 8054F988  38 A5 FA A8 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x8054FAA8@l */
/* 8054F98C  38 C0 00 08 */	li r6, 8
/* 8054F990  38 E0 00 04 */	li r7, 4
/* 8054F994  4B E1 23 CD */	bl __construct_array
/* 8054F998  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8054F99C  3C 80 80 55 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x8054FA90@ha */
/* 8054F9A0  38 84 FA 90 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x8054FA90@l */
/* 8054F9A4  3C A0 80 55 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8054FA54@ha */
/* 8054F9A8  38 A5 FA 54 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8054FA54@l */
/* 8054F9AC  38 C0 00 08 */	li r6, 8
/* 8054F9B0  38 E0 00 04 */	li r7, 4
/* 8054F9B4  4B E1 23 AD */	bl __construct_array
/* 8054F9B8  7F E3 FB 78 */	mr r3, r31
/* 8054F9BC  4B DD C9 65 */	bl initialize__14J3DMaterialAnmFv
/* 8054F9C0  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 8054F9C4  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 8054F9C8  90 1D 00 00 */	stw r0, 0(r29)
/* 8054F9CC  7F A3 EB 78 */	mr r3, r29
/* 8054F9D0  4B BF 5D 95 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8054F9D4:
/* 8054F9D4  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 8054F9D8  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 8054F9DC  28 00 00 00 */	cmplwi r0, 0
/* 8054F9E0  40 82 00 0C */	bne lbl_8054F9EC
/* 8054F9E4  38 60 00 00 */	li r3, 0
/* 8054F9E8  48 00 00 54 */	b lbl_8054FA3C
lbl_8054F9EC:
/* 8054F9EC  7F C3 F3 78 */	mr r3, r30
/* 8054F9F0  38 80 00 01 */	li r4, 1
/* 8054F9F4  38 A0 00 00 */	li r5, 0
/* 8054F9F8  4B BF A9 91 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 8054F9FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8054FA00  41 82 00 38 */	beq lbl_8054FA38
/* 8054FA04  7F C3 F3 78 */	mr r3, r30
/* 8054FA08  38 80 00 00 */	li r4, 0
/* 8054FA0C  3C A0 80 55 */	lis r5, lit_4243@ha /* 0x8055353C@ha */
/* 8054FA10  C0 25 35 3C */	lfs f1, lit_4243@l(r5)  /* 0x8055353C@l */
/* 8054FA14  38 A0 00 00 */	li r5, 0
/* 8054FA18  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8054FA1C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8054FA20  7D 89 03 A6 */	mtctr r12
/* 8054FA24  4E 80 04 21 */	bctrl 
/* 8054FA28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8054FA2C  41 82 00 0C */	beq lbl_8054FA38
/* 8054FA30  38 60 00 01 */	li r3, 1
/* 8054FA34  48 00 00 08 */	b lbl_8054FA3C
lbl_8054FA38:
/* 8054FA38  38 60 00 00 */	li r3, 0
lbl_8054FA3C:
/* 8054FA3C  39 61 00 30 */	addi r11, r1, 0x30
/* 8054FA40  4B E1 27 E9 */	bl _restgpr_29
/* 8054FA44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054FA48  7C 08 03 A6 */	mtlr r0
/* 8054FA4C  38 21 00 30 */	addi r1, r1, 0x30
/* 8054FA50  4E 80 00 20 */	blr 
