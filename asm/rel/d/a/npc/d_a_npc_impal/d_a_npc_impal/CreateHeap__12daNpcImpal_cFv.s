lbl_80A080F8:
/* 80A080F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A080FC  7C 08 02 A6 */	mflr r0
/* 80A08100  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A08104  39 61 00 30 */	addi r11, r1, 0x30
/* 80A08108  4B 95 A0 D5 */	bl _savegpr_29
/* 80A0810C  7C 7F 1B 78 */	mr r31, r3
/* 80A08110  3C 60 80 A1 */	lis r3, l_arcNames@ha /* 0x80A0C6C4@ha */
/* 80A08114  38 63 C6 C4 */	addi r3, r3, l_arcNames@l /* 0x80A0C6C4@l */
/* 80A08118  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0811C  38 80 00 1A */	li r4, 0x1a
/* 80A08120  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A08124  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A08128  3C A5 00 02 */	addis r5, r5, 2
/* 80A0812C  38 C0 00 80 */	li r6, 0x80
/* 80A08130  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A08134  4B 63 41 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A08138  7C 7E 1B 78 */	mr r30, r3
/* 80A0813C  38 60 00 58 */	li r3, 0x58
/* 80A08140  4B 8C 6B 0D */	bl __nw__FUl
/* 80A08144  7C 60 1B 79 */	or. r0, r3, r3
/* 80A08148  41 82 00 4C */	beq lbl_80A08194
/* 80A0814C  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80A08150  90 01 00 08 */	stw r0, 8(r1)
/* 80A08154  3C 00 00 08 */	lis r0, 8
/* 80A08158  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0815C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A08160  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A08164  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A08168  7F C4 F3 78 */	mr r4, r30
/* 80A0816C  38 A0 00 00 */	li r5, 0
/* 80A08170  38 C0 00 00 */	li r6, 0
/* 80A08174  38 E0 00 00 */	li r7, 0
/* 80A08178  39 00 FF FF */	li r8, -1
/* 80A0817C  3D 20 80 A1 */	lis r9, lit_4248@ha /* 0x80A0C2F0@ha */
/* 80A08180  C0 29 C2 F0 */	lfs f1, lit_4248@l(r9)  /* 0x80A0C2F0@l */
/* 80A08184  39 20 00 00 */	li r9, 0
/* 80A08188  39 40 FF FF */	li r10, -1
/* 80A0818C  4B 60 86 45 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A08190  7C 60 1B 78 */	mr r0, r3
lbl_80A08194:
/* 80A08194  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80A08198  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A0819C  28 03 00 00 */	cmplwi r3, 0
/* 80A081A0  41 82 00 1C */	beq lbl_80A081BC
/* 80A081A4  80 03 00 04 */	lwz r0, 4(r3)
/* 80A081A8  28 00 00 00 */	cmplwi r0, 0
/* 80A081AC  40 82 00 10 */	bne lbl_80A081BC
/* 80A081B0  4B 60 91 61 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A081B4  38 00 00 00 */	li r0, 0
/* 80A081B8  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80A081BC:
/* 80A081BC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A081C0  28 03 00 00 */	cmplwi r3, 0
/* 80A081C4  40 82 00 0C */	bne lbl_80A081D0
/* 80A081C8  38 60 00 00 */	li r3, 0
/* 80A081CC  48 00 01 84 */	b lbl_80A08350
lbl_80A081D0:
/* 80A081D0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A081D4  38 C0 00 00 */	li r6, 0
/* 80A081D8  3C 60 80 A1 */	lis r3, ctrlJointCallBack__12daNpcImpal_cFP8J3DJointi@ha /* 0x80A087DC@ha */
/* 80A081DC  38 83 87 DC */	addi r4, r3, ctrlJointCallBack__12daNpcImpal_cFP8J3DJointi@l /* 0x80A087DC@l */
/* 80A081E0  48 00 00 18 */	b lbl_80A081F8
lbl_80A081E4:
/* 80A081E4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A081E8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A081EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A081F0  90 83 00 04 */	stw r4, 4(r3)
/* 80A081F4  38 C6 00 01 */	addi r6, r6, 1
lbl_80A081F8:
/* 80A081F8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A081FC  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A08200  7C 03 00 40 */	cmplw r3, r0
/* 80A08204  41 80 FF E0 */	blt lbl_80A081E4
/* 80A08208  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A0820C  38 60 01 08 */	li r3, 0x108
/* 80A08210  4B 8C 6A 3D */	bl __nw__FUl
/* 80A08214  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A08218  41 82 00 D0 */	beq lbl_80A082E8
/* 80A0821C  7F DD F3 78 */	mr r29, r30
/* 80A08220  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80A08224  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80A08228  90 1E 00 00 */	stw r0, 0(r30)
/* 80A0822C  38 7E 00 04 */	addi r3, r30, 4
/* 80A08230  3C 80 80 A1 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80A0850C@ha */
/* 80A08234  38 84 85 0C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80A0850C@l */
/* 80A08238  3C A0 80 A1 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80A084D0@ha */
/* 80A0823C  38 A5 84 D0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80A084D0@l */
/* 80A08240  38 C0 00 08 */	li r6, 8
/* 80A08244  38 E0 00 02 */	li r7, 2
/* 80A08248  4B 95 9B 19 */	bl __construct_array
/* 80A0824C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A08250  3C 80 80 A1 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80A084B8@ha */
/* 80A08254  38 84 84 B8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80A084B8@l */
/* 80A08258  3C A0 80 A1 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80A0847C@ha */
/* 80A0825C  38 A5 84 7C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80A0847C@l */
/* 80A08260  38 C0 00 08 */	li r6, 8
/* 80A08264  38 E0 00 08 */	li r7, 8
/* 80A08268  4B 95 9A F9 */	bl __construct_array
/* 80A0826C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80A08270  3C 80 80 A1 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80A08458@ha */
/* 80A08274  38 84 84 58 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80A08458@l */
/* 80A08278  3C A0 80 A1 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80A08410@ha */
/* 80A0827C  38 A5 84 10 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80A08410@l */
/* 80A08280  38 C0 00 0C */	li r6, 0xc
/* 80A08284  38 E0 00 08 */	li r7, 8
/* 80A08288  4B 95 9A D9 */	bl __construct_array
/* 80A0828C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80A08290  3C 80 80 A1 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80A083F8@ha */
/* 80A08294  38 84 83 F8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80A083F8@l */
/* 80A08298  3C A0 80 A1 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80A083BC@ha */
/* 80A0829C  38 A5 83 BC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80A083BC@l */
/* 80A082A0  38 C0 00 08 */	li r6, 8
/* 80A082A4  38 E0 00 04 */	li r7, 4
/* 80A082A8  4B 95 9A B9 */	bl __construct_array
/* 80A082AC  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80A082B0  3C 80 80 A1 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80A083A4@ha */
/* 80A082B4  38 84 83 A4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80A083A4@l */
/* 80A082B8  3C A0 80 A1 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80A08368@ha */
/* 80A082BC  38 A5 83 68 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80A08368@l */
/* 80A082C0  38 C0 00 08 */	li r6, 8
/* 80A082C4  38 E0 00 04 */	li r7, 4
/* 80A082C8  4B 95 9A 99 */	bl __construct_array
/* 80A082CC  7F C3 F3 78 */	mr r3, r30
/* 80A082D0  4B 92 40 51 */	bl initialize__14J3DMaterialAnmFv
/* 80A082D4  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 80A082D8  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 80A082DC  90 1D 00 00 */	stw r0, 0(r29)
/* 80A082E0  7F A3 EB 78 */	mr r3, r29
/* 80A082E4  4B 74 84 55 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_80A082E8:
/* 80A082E8  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80A082EC  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80A082F0  28 00 00 00 */	cmplwi r0, 0
/* 80A082F4  40 82 00 0C */	bne lbl_80A08300
/* 80A082F8  38 60 00 00 */	li r3, 0
/* 80A082FC  48 00 00 54 */	b lbl_80A08350
lbl_80A08300:
/* 80A08300  7F E3 FB 78 */	mr r3, r31
/* 80A08304  38 80 00 01 */	li r4, 1
/* 80A08308  38 A0 00 00 */	li r5, 0
/* 80A0830C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A08310  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A08314  7D 89 03 A6 */	mtctr r12
/* 80A08318  4E 80 04 21 */	bctrl 
/* 80A0831C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A08320  40 82 00 0C */	bne lbl_80A0832C
/* 80A08324  38 60 00 00 */	li r3, 0
/* 80A08328  48 00 00 28 */	b lbl_80A08350
lbl_80A0832C:
/* 80A0832C  7F E3 FB 78 */	mr r3, r31
/* 80A08330  38 80 00 0A */	li r4, 0xa
/* 80A08334  3C A0 80 A1 */	lis r5, lit_4249@ha /* 0x80A0C2F4@ha */
/* 80A08338  C0 25 C2 F4 */	lfs f1, lit_4249@l(r5)  /* 0x80A0C2F4@l */
/* 80A0833C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A08340  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A08344  7D 89 03 A6 */	mtctr r12
/* 80A08348  4E 80 04 21 */	bctrl 
/* 80A0834C  38 60 00 01 */	li r3, 1
lbl_80A08350:
/* 80A08350  39 61 00 30 */	addi r11, r1, 0x30
/* 80A08354  4B 95 9E D5 */	bl _restgpr_29
/* 80A08358  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A0835C  7C 08 03 A6 */	mtlr r0
/* 80A08360  38 21 00 30 */	addi r1, r1, 0x30
/* 80A08364  4E 80 00 20 */	blr 
