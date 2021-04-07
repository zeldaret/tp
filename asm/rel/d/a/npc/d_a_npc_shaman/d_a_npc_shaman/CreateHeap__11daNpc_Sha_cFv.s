lbl_80AE31A0:
/* 80AE31A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE31A4  7C 08 02 A6 */	mflr r0
/* 80AE31A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE31AC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE31B0  4B 87 F0 2D */	bl _savegpr_29
/* 80AE31B4  7C 7E 1B 78 */	mr r30, r3
/* 80AE31B8  3C 60 80 AE */	lis r3, l_bmdData@ha /* 0x80AE6D38@ha */
/* 80AE31BC  38 83 6D 38 */	addi r4, r3, l_bmdData@l /* 0x80AE6D38@l */
/* 80AE31C0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE31C4  54 00 10 3A */	slwi r0, r0, 2
/* 80AE31C8  3C 60 80 AE */	lis r3, l_resNameList@ha /* 0x80AE6D70@ha */
/* 80AE31CC  38 63 6D 70 */	addi r3, r3, l_resNameList@l /* 0x80AE6D70@l */
/* 80AE31D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AE31D4  80 84 00 00 */	lwz r4, 0(r4)
/* 80AE31D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE31DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE31E0  3C A5 00 02 */	addis r5, r5, 2
/* 80AE31E4  38 C0 00 80 */	li r6, 0x80
/* 80AE31E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AE31EC  4B 55 91 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AE31F0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80AE31F4  40 82 00 0C */	bne lbl_80AE3200
/* 80AE31F8  38 60 00 00 */	li r3, 0
/* 80AE31FC  48 00 01 FC */	b lbl_80AE33F8
lbl_80AE3200:
/* 80AE3200  38 60 00 58 */	li r3, 0x58
/* 80AE3204  4B 7E BA 49 */	bl __nw__FUl
/* 80AE3208  7C 60 1B 79 */	or. r0, r3, r3
/* 80AE320C  41 82 00 4C */	beq lbl_80AE3258
/* 80AE3210  38 1E 05 80 */	addi r0, r30, 0x580
/* 80AE3214  90 01 00 08 */	stw r0, 8(r1)
/* 80AE3218  3C 00 00 08 */	lis r0, 8
/* 80AE321C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE3220  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AE3224  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AE3228  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE322C  7F A4 EB 78 */	mr r4, r29
/* 80AE3230  38 A0 00 00 */	li r5, 0
/* 80AE3234  38 C0 00 00 */	li r6, 0
/* 80AE3238  38 E0 00 00 */	li r7, 0
/* 80AE323C  39 00 FF FF */	li r8, -1
/* 80AE3240  3D 20 80 AE */	lis r9, lit_4331@ha /* 0x80AE6C80@ha */
/* 80AE3244  C0 29 6C 80 */	lfs f1, lit_4331@l(r9)  /* 0x80AE6C80@l */
/* 80AE3248  39 20 00 00 */	li r9, 0
/* 80AE324C  39 40 FF FF */	li r10, -1
/* 80AE3250  4B 52 D5 81 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AE3254  7C 60 1B 78 */	mr r0, r3
lbl_80AE3258:
/* 80AE3258  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80AE325C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AE3260  28 03 00 00 */	cmplwi r3, 0
/* 80AE3264  41 82 00 10 */	beq lbl_80AE3274
/* 80AE3268  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AE326C  28 05 00 00 */	cmplwi r5, 0
/* 80AE3270  40 82 00 0C */	bne lbl_80AE327C
lbl_80AE3274:
/* 80AE3274  38 60 00 00 */	li r3, 0
/* 80AE3278  48 00 01 80 */	b lbl_80AE33F8
lbl_80AE327C:
/* 80AE327C  38 C0 00 00 */	li r6, 0
/* 80AE3280  3C 60 80 AE */	lis r3, ctrlJointCallBack__11daNpc_Sha_cFP8J3DJointi@ha /* 0x80AE36D4@ha */
/* 80AE3284  38 83 36 D4 */	addi r4, r3, ctrlJointCallBack__11daNpc_Sha_cFP8J3DJointi@l /* 0x80AE36D4@l */
/* 80AE3288  48 00 00 18 */	b lbl_80AE32A0
lbl_80AE328C:
/* 80AE328C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80AE3290  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AE3294  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AE3298  90 83 00 04 */	stw r4, 4(r3)
/* 80AE329C  38 C6 00 01 */	addi r6, r6, 1
lbl_80AE32A0:
/* 80AE32A0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AE32A4  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80AE32A8  7C 03 00 40 */	cmplw r3, r0
/* 80AE32AC  41 80 FF E0 */	blt lbl_80AE328C
/* 80AE32B0  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80AE32B4  38 60 01 08 */	li r3, 0x108
/* 80AE32B8  4B 7E B9 95 */	bl __nw__FUl
/* 80AE32BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE32C0  41 82 00 D0 */	beq lbl_80AE3390
/* 80AE32C4  7F FD FB 78 */	mr r29, r31
/* 80AE32C8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80AE32CC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80AE32D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE32D4  38 7F 00 04 */	addi r3, r31, 4
/* 80AE32D8  3C 80 80 AE */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80AE35B4@ha */
/* 80AE32DC  38 84 35 B4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80AE35B4@l */
/* 80AE32E0  3C A0 80 AE */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80AE3578@ha */
/* 80AE32E4  38 A5 35 78 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80AE3578@l */
/* 80AE32E8  38 C0 00 08 */	li r6, 8
/* 80AE32EC  38 E0 00 02 */	li r7, 2
/* 80AE32F0  4B 87 EA 71 */	bl __construct_array
/* 80AE32F4  38 7F 00 14 */	addi r3, r31, 0x14
/* 80AE32F8  3C 80 80 AE */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80AE3560@ha */
/* 80AE32FC  38 84 35 60 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80AE3560@l */
/* 80AE3300  3C A0 80 AE */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80AE3524@ha */
/* 80AE3304  38 A5 35 24 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80AE3524@l */
/* 80AE3308  38 C0 00 08 */	li r6, 8
/* 80AE330C  38 E0 00 08 */	li r7, 8
/* 80AE3310  4B 87 EA 51 */	bl __construct_array
/* 80AE3314  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AE3318  3C 80 80 AE */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80AE3500@ha */
/* 80AE331C  38 84 35 00 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80AE3500@l */
/* 80AE3320  3C A0 80 AE */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80AE34B8@ha */
/* 80AE3324  38 A5 34 B8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80AE34B8@l */
/* 80AE3328  38 C0 00 0C */	li r6, 0xc
/* 80AE332C  38 E0 00 08 */	li r7, 8
/* 80AE3330  4B 87 EA 31 */	bl __construct_array
/* 80AE3334  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80AE3338  3C 80 80 AE */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80AE34A0@ha */
/* 80AE333C  38 84 34 A0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80AE34A0@l */
/* 80AE3340  3C A0 80 AE */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80AE3464@ha */
/* 80AE3344  38 A5 34 64 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80AE3464@l */
/* 80AE3348  38 C0 00 08 */	li r6, 8
/* 80AE334C  38 E0 00 04 */	li r7, 4
/* 80AE3350  4B 87 EA 11 */	bl __construct_array
/* 80AE3354  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80AE3358  3C 80 80 AE */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80AE344C@ha */
/* 80AE335C  38 84 34 4C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80AE344C@l */
/* 80AE3360  3C A0 80 AE */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80AE3410@ha */
/* 80AE3364  38 A5 34 10 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80AE3410@l */
/* 80AE3368  38 C0 00 08 */	li r6, 8
/* 80AE336C  38 E0 00 04 */	li r7, 4
/* 80AE3370  4B 87 E9 F1 */	bl __construct_array
/* 80AE3374  7F E3 FB 78 */	mr r3, r31
/* 80AE3378  4B 84 8F A9 */	bl initialize__14J3DMaterialAnmFv
/* 80AE337C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80AE3380  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80AE3384  90 1D 00 00 */	stw r0, 0(r29)
/* 80AE3388  7F A3 EB 78 */	mr r3, r29
/* 80AE338C  4B 66 23 D9 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AE3390:
/* 80AE3390  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80AE3394  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80AE3398  28 00 00 00 */	cmplwi r0, 0
/* 80AE339C  40 82 00 0C */	bne lbl_80AE33A8
/* 80AE33A0  38 60 00 00 */	li r3, 0
/* 80AE33A4  48 00 00 54 */	b lbl_80AE33F8
lbl_80AE33A8:
/* 80AE33A8  7F C3 F3 78 */	mr r3, r30
/* 80AE33AC  38 80 00 01 */	li r4, 1
/* 80AE33B0  38 A0 00 00 */	li r5, 0
/* 80AE33B4  4B 66 6F D5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AE33B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE33BC  41 82 00 38 */	beq lbl_80AE33F4
/* 80AE33C0  7F C3 F3 78 */	mr r3, r30
/* 80AE33C4  38 80 00 00 */	li r4, 0
/* 80AE33C8  3C A0 80 AE */	lis r5, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE33CC  C0 25 6C 74 */	lfs f1, lit_4185@l(r5)  /* 0x80AE6C74@l */
/* 80AE33D0  38 A0 00 00 */	li r5, 0
/* 80AE33D4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AE33D8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AE33DC  7D 89 03 A6 */	mtctr r12
/* 80AE33E0  4E 80 04 21 */	bctrl 
/* 80AE33E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE33E8  41 82 00 0C */	beq lbl_80AE33F4
/* 80AE33EC  38 60 00 01 */	li r3, 1
/* 80AE33F0  48 00 00 08 */	b lbl_80AE33F8
lbl_80AE33F4:
/* 80AE33F4  38 60 00 00 */	li r3, 0
lbl_80AE33F8:
/* 80AE33F8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE33FC  4B 87 EE 2D */	bl _restgpr_29
/* 80AE3400  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE3404  7C 08 03 A6 */	mtlr r0
/* 80AE3408  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE340C  4E 80 00 20 */	blr 
