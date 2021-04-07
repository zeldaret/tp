lbl_809DAC58:
/* 809DAC58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809DAC5C  7C 08 02 A6 */	mflr r0
/* 809DAC60  90 01 00 34 */	stw r0, 0x34(r1)
/* 809DAC64  39 61 00 30 */	addi r11, r1, 0x30
/* 809DAC68  4B 98 75 71 */	bl _savegpr_28
/* 809DAC6C  7C 7F 1B 78 */	mr r31, r3
/* 809DAC70  3C 60 80 9E */	lis r3, cNullVec__6Z2Calc@ha /* 0x809DF2F8@ha */
/* 809DAC74  3B C3 F2 F8 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x809DF2F8@l */
/* 809DAC78  3B A0 00 00 */	li r29, 0
/* 809DAC7C  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 809DAC80  2C 04 00 00 */	cmpwi r4, 0
/* 809DAC84  41 80 00 34 */	blt lbl_809DACB8
/* 809DAC88  38 7E 00 2C */	addi r3, r30, 0x2c
/* 809DAC8C  80 03 00 04 */	lwz r0, 4(r3)
/* 809DAC90  54 00 10 3A */	slwi r0, r0, 2
/* 809DAC94  38 7E 01 AC */	addi r3, r30, 0x1ac
/* 809DAC98  7C 63 00 2E */	lwzx r3, r3, r0
/* 809DAC9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DACA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DACA4  3C A5 00 02 */	addis r5, r5, 2
/* 809DACA8  38 C0 00 80 */	li r6, 0x80
/* 809DACAC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809DACB0  4B 66 16 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809DACB4  7C 7D 1B 78 */	mr r29, r3
lbl_809DACB8:
/* 809DACB8  38 60 00 58 */	li r3, 0x58
/* 809DACBC  4B 8F 3F 91 */	bl __nw__FUl
/* 809DACC0  7C 60 1B 79 */	or. r0, r3, r3
/* 809DACC4  41 82 00 4C */	beq lbl_809DAD10
/* 809DACC8  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 809DACCC  90 01 00 08 */	stw r0, 8(r1)
/* 809DACD0  3C 00 00 08 */	lis r0, 8
/* 809DACD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 809DACD8  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809DACDC  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809DACE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809DACE4  7F A4 EB 78 */	mr r4, r29
/* 809DACE8  38 A0 00 00 */	li r5, 0
/* 809DACEC  38 C0 00 00 */	li r6, 0
/* 809DACF0  38 E0 00 00 */	li r7, 0
/* 809DACF4  39 00 FF FF */	li r8, -1
/* 809DACF8  3D 20 80 9E */	lis r9, lit_4552@ha /* 0x809DF008@ha */
/* 809DACFC  C0 29 F0 08 */	lfs f1, lit_4552@l(r9)  /* 0x809DF008@l */
/* 809DAD00  39 20 00 00 */	li r9, 0
/* 809DAD04  39 40 FF FF */	li r10, -1
/* 809DAD08  4B 63 5A C9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809DAD0C  7C 60 1B 78 */	mr r0, r3
lbl_809DAD10:
/* 809DAD10  90 1F 05 68 */	stw r0, 0x568(r31)
/* 809DAD14  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809DAD18  28 03 00 00 */	cmplwi r3, 0
/* 809DAD1C  41 82 00 1C */	beq lbl_809DAD38
/* 809DAD20  80 03 00 04 */	lwz r0, 4(r3)
/* 809DAD24  28 00 00 00 */	cmplwi r0, 0
/* 809DAD28  40 82 00 10 */	bne lbl_809DAD38
/* 809DAD2C  4B 63 65 E5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809DAD30  38 00 00 00 */	li r0, 0
/* 809DAD34  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_809DAD38:
/* 809DAD38  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809DAD3C  28 03 00 00 */	cmplwi r3, 0
/* 809DAD40  40 82 00 0C */	bne lbl_809DAD4C
/* 809DAD44  38 60 00 00 */	li r3, 0
/* 809DAD48  48 00 02 14 */	b lbl_809DAF5C
lbl_809DAD4C:
/* 809DAD4C  80 A3 00 04 */	lwz r5, 4(r3)
/* 809DAD50  38 C0 00 00 */	li r6, 0
/* 809DAD54  3C 60 80 9E */	lis r3, ctrlJointCallBack__11daNpc_grO_cFP8J3DJointi@ha /* 0x809DB468@ha */
/* 809DAD58  38 83 B4 68 */	addi r4, r3, ctrlJointCallBack__11daNpc_grO_cFP8J3DJointi@l /* 0x809DB468@l */
/* 809DAD5C  48 00 00 18 */	b lbl_809DAD74
lbl_809DAD60:
/* 809DAD60  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 809DAD64  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809DAD68  7C 63 00 2E */	lwzx r3, r3, r0
/* 809DAD6C  90 83 00 04 */	stw r4, 4(r3)
/* 809DAD70  38 C6 00 01 */	addi r6, r6, 1
lbl_809DAD74:
/* 809DAD74  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809DAD78  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 809DAD7C  7C 03 00 40 */	cmplw r3, r0
/* 809DAD80  41 80 FF E0 */	blt lbl_809DAD60
/* 809DAD84  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809DAD88  38 60 01 08 */	li r3, 0x108
/* 809DAD8C  4B 8F 3E C1 */	bl __nw__FUl
/* 809DAD90  7C 7D 1B 79 */	or. r29, r3, r3
/* 809DAD94  41 82 00 D0 */	beq lbl_809DAE64
/* 809DAD98  7F BC EB 78 */	mr r28, r29
/* 809DAD9C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 809DADA0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 809DADA4  90 1D 00 00 */	stw r0, 0(r29)
/* 809DADA8  38 7D 00 04 */	addi r3, r29, 4
/* 809DADAC  3C 80 80 9E */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x809DB118@ha */
/* 809DADB0  38 84 B1 18 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x809DB118@l */
/* 809DADB4  3C A0 80 9E */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x809DB0DC@ha */
/* 809DADB8  38 A5 B0 DC */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x809DB0DC@l */
/* 809DADBC  38 C0 00 08 */	li r6, 8
/* 809DADC0  38 E0 00 02 */	li r7, 2
/* 809DADC4  4B 98 6F 9D */	bl __construct_array
/* 809DADC8  38 7D 00 14 */	addi r3, r29, 0x14
/* 809DADCC  3C 80 80 9E */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x809DB0C4@ha */
/* 809DADD0  38 84 B0 C4 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x809DB0C4@l */
/* 809DADD4  3C A0 80 9E */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x809DB088@ha */
/* 809DADD8  38 A5 B0 88 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x809DB088@l */
/* 809DADDC  38 C0 00 08 */	li r6, 8
/* 809DADE0  38 E0 00 08 */	li r7, 8
/* 809DADE4  4B 98 6F 7D */	bl __construct_array
/* 809DADE8  38 7D 00 54 */	addi r3, r29, 0x54
/* 809DADEC  3C 80 80 9E */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x809DB064@ha */
/* 809DADF0  38 84 B0 64 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x809DB064@l */
/* 809DADF4  3C A0 80 9E */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x809DB01C@ha */
/* 809DADF8  38 A5 B0 1C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x809DB01C@l */
/* 809DADFC  38 C0 00 0C */	li r6, 0xc
/* 809DAE00  38 E0 00 08 */	li r7, 8
/* 809DAE04  4B 98 6F 5D */	bl __construct_array
/* 809DAE08  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 809DAE0C  3C 80 80 9E */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x809DB004@ha */
/* 809DAE10  38 84 B0 04 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x809DB004@l */
/* 809DAE14  3C A0 80 9E */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x809DAFC8@ha */
/* 809DAE18  38 A5 AF C8 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x809DAFC8@l */
/* 809DAE1C  38 C0 00 08 */	li r6, 8
/* 809DAE20  38 E0 00 04 */	li r7, 4
/* 809DAE24  4B 98 6F 3D */	bl __construct_array
/* 809DAE28  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 809DAE2C  3C 80 80 9E */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x809DAFB0@ha */
/* 809DAE30  38 84 AF B0 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x809DAFB0@l */
/* 809DAE34  3C A0 80 9E */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x809DAF74@ha */
/* 809DAE38  38 A5 AF 74 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x809DAF74@l */
/* 809DAE3C  38 C0 00 08 */	li r6, 8
/* 809DAE40  38 E0 00 04 */	li r7, 4
/* 809DAE44  4B 98 6F 1D */	bl __construct_array
/* 809DAE48  7F A3 EB 78 */	mr r3, r29
/* 809DAE4C  4B 95 14 D5 */	bl initialize__14J3DMaterialAnmFv
/* 809DAE50  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 809DAE54  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 809DAE58  90 1C 00 00 */	stw r0, 0(r28)
/* 809DAE5C  7F 83 E3 78 */	mr r3, r28
/* 809DAE60  4B 77 58 D9 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_809DAE64:
/* 809DAE64  93 BF 0B DC */	stw r29, 0xbdc(r31)
/* 809DAE68  80 1F 0B DC */	lwz r0, 0xbdc(r31)
/* 809DAE6C  28 00 00 00 */	cmplwi r0, 0
/* 809DAE70  40 82 00 0C */	bne lbl_809DAE7C
/* 809DAE74  38 60 00 00 */	li r3, 0
/* 809DAE78  48 00 00 E4 */	b lbl_809DAF5C
lbl_809DAE7C:
/* 809DAE7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DAE80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DAE84  3C A3 00 02 */	addis r5, r3, 2
/* 809DAE88  38 7E 01 9C */	addi r3, r30, 0x19c
/* 809DAE8C  88 1F 0E 24 */	lbz r0, 0xe24(r31)
/* 809DAE90  54 00 10 3A */	slwi r0, r0, 2
/* 809DAE94  7C 03 00 2E */	lwzx r0, r3, r0
/* 809DAE98  2C 00 00 00 */	cmpwi r0, 0
/* 809DAE9C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809DAEA0  40 81 00 64 */	ble lbl_809DAF04
/* 809DAEA4  54 00 18 38 */	slwi r0, r0, 3
/* 809DAEA8  38 9E 00 2C */	addi r4, r30, 0x2c
/* 809DAEAC  7C 84 02 14 */	add r4, r4, r0
/* 809DAEB0  80 04 00 04 */	lwz r0, 4(r4)
/* 809DAEB4  54 00 10 3A */	slwi r0, r0, 2
/* 809DAEB8  38 7E 01 AC */	addi r3, r30, 0x1ac
/* 809DAEBC  7C 63 00 2E */	lwzx r3, r3, r0
/* 809DAEC0  80 84 00 00 */	lwz r4, 0(r4)
/* 809DAEC4  38 C0 00 80 */	li r6, 0x80
/* 809DAEC8  4B 66 14 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809DAECC  28 03 00 00 */	cmplwi r3, 0
/* 809DAED0  41 82 00 2C */	beq lbl_809DAEFC
/* 809DAED4  3C 80 00 08 */	lis r4, 8
/* 809DAED8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809DAEDC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809DAEE0  4B 63 9D 75 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809DAEE4  90 7F 0B D8 */	stw r3, 0xbd8(r31)
/* 809DAEE8  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 809DAEEC  28 00 00 00 */	cmplwi r0, 0
/* 809DAEF0  40 82 00 1C */	bne lbl_809DAF0C
/* 809DAEF4  38 60 00 00 */	li r3, 0
/* 809DAEF8  48 00 00 64 */	b lbl_809DAF5C
lbl_809DAEFC:
/* 809DAEFC  38 60 00 00 */	li r3, 0
/* 809DAF00  48 00 00 5C */	b lbl_809DAF5C
lbl_809DAF04:
/* 809DAF04  38 00 00 00 */	li r0, 0
/* 809DAF08  90 1F 0B D8 */	stw r0, 0xbd8(r31)
lbl_809DAF0C:
/* 809DAF0C  7F E3 FB 78 */	mr r3, r31
/* 809DAF10  38 80 00 03 */	li r4, 3
/* 809DAF14  38 A0 00 00 */	li r5, 0
/* 809DAF18  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809DAF1C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809DAF20  7D 89 03 A6 */	mtctr r12
/* 809DAF24  4E 80 04 21 */	bctrl 
/* 809DAF28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809DAF2C  40 82 00 0C */	bne lbl_809DAF38
/* 809DAF30  38 60 00 00 */	li r3, 0
/* 809DAF34  48 00 00 28 */	b lbl_809DAF5C
lbl_809DAF38:
/* 809DAF38  7F E3 FB 78 */	mr r3, r31
/* 809DAF3C  38 80 00 0D */	li r4, 0xd
/* 809DAF40  3C A0 80 9E */	lis r5, lit_4553@ha /* 0x809DF00C@ha */
/* 809DAF44  C0 25 F0 0C */	lfs f1, lit_4553@l(r5)  /* 0x809DF00C@l */
/* 809DAF48  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809DAF4C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809DAF50  7D 89 03 A6 */	mtctr r12
/* 809DAF54  4E 80 04 21 */	bctrl 
/* 809DAF58  38 60 00 01 */	li r3, 1
lbl_809DAF5C:
/* 809DAF5C  39 61 00 30 */	addi r11, r1, 0x30
/* 809DAF60  4B 98 72 C5 */	bl _restgpr_28
/* 809DAF64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809DAF68  7C 08 03 A6 */	mtlr r0
/* 809DAF6C  38 21 00 30 */	addi r1, r1, 0x30
/* 809DAF70  4E 80 00 20 */	blr 
