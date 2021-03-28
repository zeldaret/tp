lbl_80AB9E3C:
/* 80AB9E3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB9E40  7C 08 02 A6 */	mflr r0
/* 80AB9E44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB9E48  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB9E4C  4B 8A 83 8C */	b _savegpr_28
/* 80AB9E50  7C 7E 1B 78 */	mr r30, r3
/* 80AB9E54  3C 60 80 AC */	lis r3, l_arcNames@ha
/* 80AB9E58  38 63 00 98 */	addi r3, r3, l_arcNames@l
/* 80AB9E5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80AB9E60  38 80 00 11 */	li r4, 0x11
/* 80AB9E64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AB9E68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AB9E6C  3F E5 00 02 */	addis r31, r5, 2
/* 80AB9E70  3B FF C2 F8 */	addi r31, r31, -15624
/* 80AB9E74  7F E5 FB 78 */	mr r5, r31
/* 80AB9E78  38 C0 00 80 */	li r6, 0x80
/* 80AB9E7C  4B 58 24 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AB9E80  7C 7D 1B 78 */	mr r29, r3
/* 80AB9E84  38 60 00 58 */	li r3, 0x58
/* 80AB9E88  4B 81 4D C4 */	b __nw__FUl
/* 80AB9E8C  7C 60 1B 79 */	or. r0, r3, r3
/* 80AB9E90  41 82 00 4C */	beq lbl_80AB9EDC
/* 80AB9E94  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 80AB9E98  90 01 00 08 */	stw r0, 8(r1)
/* 80AB9E9C  3C 00 00 08 */	lis r0, 8
/* 80AB9EA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB9EA4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AB9EA8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AB9EAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB9EB0  7F A4 EB 78 */	mr r4, r29
/* 80AB9EB4  38 A0 00 00 */	li r5, 0
/* 80AB9EB8  38 C0 00 00 */	li r6, 0
/* 80AB9EBC  38 E0 00 00 */	li r7, 0
/* 80AB9EC0  39 00 FF FF */	li r8, -1
/* 80AB9EC4  3D 20 80 AC */	lis r9, lit_4320@ha
/* 80AB9EC8  C0 29 FA 64 */	lfs f1, lit_4320@l(r9)
/* 80AB9ECC  39 20 00 00 */	li r9, 0
/* 80AB9ED0  39 40 FF FF */	li r10, -1
/* 80AB9ED4  4B 55 68 FC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AB9ED8  7C 60 1B 78 */	mr r0, r3
lbl_80AB9EDC:
/* 80AB9EDC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AB9EE0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AB9EE4  28 03 00 00 */	cmplwi r3, 0
/* 80AB9EE8  41 82 00 1C */	beq lbl_80AB9F04
/* 80AB9EEC  80 03 00 04 */	lwz r0, 4(r3)
/* 80AB9EF0  28 00 00 00 */	cmplwi r0, 0
/* 80AB9EF4  40 82 00 10 */	bne lbl_80AB9F04
/* 80AB9EF8  4B 55 74 18 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AB9EFC  38 00 00 00 */	li r0, 0
/* 80AB9F00  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80AB9F04:
/* 80AB9F04  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AB9F08  28 03 00 00 */	cmplwi r3, 0
/* 80AB9F0C  40 82 00 0C */	bne lbl_80AB9F18
/* 80AB9F10  38 60 00 00 */	li r3, 0
/* 80AB9F14  48 00 02 98 */	b lbl_80ABA1AC
lbl_80AB9F18:
/* 80AB9F18  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AB9F1C  38 C0 00 00 */	li r6, 0
/* 80AB9F20  3C 60 80 AC */	lis r3, ctrlJointCallBack__13daNpcRafrel_cFP8J3DJointi@ha
/* 80AB9F24  38 83 A6 98 */	addi r4, r3, ctrlJointCallBack__13daNpcRafrel_cFP8J3DJointi@l
/* 80AB9F28  48 00 00 18 */	b lbl_80AB9F40
lbl_80AB9F2C:
/* 80AB9F2C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80AB9F30  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AB9F34  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AB9F38  90 83 00 04 */	stw r4, 4(r3)
/* 80AB9F3C  38 C6 00 01 */	addi r6, r6, 1
lbl_80AB9F40:
/* 80AB9F40  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AB9F44  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80AB9F48  7C 03 00 40 */	cmplw r3, r0
/* 80AB9F4C  41 80 FF E0 */	blt lbl_80AB9F2C
/* 80AB9F50  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80AB9F54  38 60 01 08 */	li r3, 0x108
/* 80AB9F58  4B 81 4C F4 */	b __nw__FUl
/* 80AB9F5C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80AB9F60  41 82 00 D0 */	beq lbl_80ABA030
/* 80AB9F64  7F BC EB 78 */	mr r28, r29
/* 80AB9F68  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80AB9F6C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80AB9F70  90 1D 00 00 */	stw r0, 0(r29)
/* 80AB9F74  38 7D 00 04 */	addi r3, r29, 4
/* 80AB9F78  3C 80 80 AC */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80AB9F7C  38 84 A3 68 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80AB9F80  3C A0 80 AC */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80AB9F84  38 A5 A3 2C */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80AB9F88  38 C0 00 08 */	li r6, 8
/* 80AB9F8C  38 E0 00 02 */	li r7, 2
/* 80AB9F90  4B 8A 7D D0 */	b __construct_array
/* 80AB9F94  38 7D 00 14 */	addi r3, r29, 0x14
/* 80AB9F98  3C 80 80 AC */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80AB9F9C  38 84 A3 14 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80AB9FA0  3C A0 80 AC */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80AB9FA4  38 A5 A2 D8 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80AB9FA8  38 C0 00 08 */	li r6, 8
/* 80AB9FAC  38 E0 00 08 */	li r7, 8
/* 80AB9FB0  4B 8A 7D B0 */	b __construct_array
/* 80AB9FB4  38 7D 00 54 */	addi r3, r29, 0x54
/* 80AB9FB8  3C 80 80 AC */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80AB9FBC  38 84 A2 B4 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80AB9FC0  3C A0 80 AC */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80AB9FC4  38 A5 A2 6C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80AB9FC8  38 C0 00 0C */	li r6, 0xc
/* 80AB9FCC  38 E0 00 08 */	li r7, 8
/* 80AB9FD0  4B 8A 7D 90 */	b __construct_array
/* 80AB9FD4  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80AB9FD8  3C 80 80 AC */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80AB9FDC  38 84 A2 54 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80AB9FE0  3C A0 80 AC */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80AB9FE4  38 A5 A2 18 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80AB9FE8  38 C0 00 08 */	li r6, 8
/* 80AB9FEC  38 E0 00 04 */	li r7, 4
/* 80AB9FF0  4B 8A 7D 70 */	b __construct_array
/* 80AB9FF4  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80AB9FF8  3C 80 80 AC */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80AB9FFC  38 84 A2 00 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80ABA000  3C A0 80 AC */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80ABA004  38 A5 A1 C4 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80ABA008  38 C0 00 08 */	li r6, 8
/* 80ABA00C  38 E0 00 04 */	li r7, 4
/* 80ABA010  4B 8A 7D 50 */	b __construct_array
/* 80ABA014  7F A3 EB 78 */	mr r3, r29
/* 80ABA018  4B 87 23 08 */	b initialize__14J3DMaterialAnmFv
/* 80ABA01C  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80ABA020  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80ABA024  90 1C 00 00 */	stw r0, 0(r28)
/* 80ABA028  7F 83 E3 78 */	mr r3, r28
/* 80ABA02C  4B 69 67 0C */	b initialize__15daNpcF_MatAnm_cFv
lbl_80ABA030:
/* 80ABA030  93 BE 0B DC */	stw r29, 0xbdc(r30)
/* 80ABA034  80 1E 0B DC */	lwz r0, 0xbdc(r30)
/* 80ABA038  28 00 00 00 */	cmplwi r0, 0
/* 80ABA03C  40 82 00 0C */	bne lbl_80ABA048
/* 80ABA040  38 60 00 00 */	li r3, 0
/* 80ABA044  48 00 01 68 */	b lbl_80ABA1AC
lbl_80ABA048:
/* 80ABA048  38 00 00 00 */	li r0, 0
/* 80ABA04C  90 1E 0B D8 */	stw r0, 0xbd8(r30)
/* 80ABA050  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80ABA054  28 00 00 01 */	cmplwi r0, 1
/* 80ABA058  40 82 00 48 */	bne lbl_80ABA0A0
/* 80ABA05C  3C 60 80 AC */	lis r3, l_arcNames@ha
/* 80ABA060  38 63 00 98 */	addi r3, r3, l_arcNames@l
/* 80ABA064  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABA068  38 80 00 15 */	li r4, 0x15
/* 80ABA06C  7F E5 FB 78 */	mr r5, r31
/* 80ABA070  38 C0 00 80 */	li r6, 0x80
/* 80ABA074  4B 58 22 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80ABA078  3C 80 00 08 */	lis r4, 8
/* 80ABA07C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80ABA080  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80ABA084  4B 55 AB D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80ABA088  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 80ABA08C  80 1E 0B D8 */	lwz r0, 0xbd8(r30)
/* 80ABA090  28 00 00 00 */	cmplwi r0, 0
/* 80ABA094  40 82 00 58 */	bne lbl_80ABA0EC
/* 80ABA098  38 60 00 00 */	li r3, 0
/* 80ABA09C  48 00 01 10 */	b lbl_80ABA1AC
lbl_80ABA0A0:
/* 80ABA0A0  28 00 00 02 */	cmplwi r0, 2
/* 80ABA0A4  40 82 00 48 */	bne lbl_80ABA0EC
/* 80ABA0A8  3C 60 80 AC */	lis r3, l_arcNames@ha
/* 80ABA0AC  38 63 00 98 */	addi r3, r3, l_arcNames@l
/* 80ABA0B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ABA0B4  38 80 00 09 */	li r4, 9
/* 80ABA0B8  7F E5 FB 78 */	mr r5, r31
/* 80ABA0BC  38 C0 00 80 */	li r6, 0x80
/* 80ABA0C0  4B 58 22 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80ABA0C4  3C 80 00 08 */	lis r4, 8
/* 80ABA0C8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80ABA0CC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80ABA0D0  4B 55 AB 84 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80ABA0D4  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 80ABA0D8  80 1E 0B D8 */	lwz r0, 0xbd8(r30)
/* 80ABA0DC  28 00 00 00 */	cmplwi r0, 0
/* 80ABA0E0  40 82 00 0C */	bne lbl_80ABA0EC
/* 80ABA0E4  38 60 00 00 */	li r3, 0
/* 80ABA0E8  48 00 00 C4 */	b lbl_80ABA1AC
lbl_80ABA0EC:
/* 80ABA0EC  7F C3 F3 78 */	mr r3, r30
/* 80ABA0F0  38 80 00 01 */	li r4, 1
/* 80ABA0F4  38 A0 00 00 */	li r5, 0
/* 80ABA0F8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABA0FC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80ABA100  7D 89 03 A6 */	mtctr r12
/* 80ABA104  4E 80 04 21 */	bctrl 
/* 80ABA108  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80ABA10C  40 82 00 0C */	bne lbl_80ABA118
/* 80ABA110  38 60 00 00 */	li r3, 0
/* 80ABA114  48 00 00 98 */	b lbl_80ABA1AC
lbl_80ABA118:
/* 80ABA118  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80ABA11C  2C 00 00 01 */	cmpwi r0, 1
/* 80ABA120  41 82 00 44 */	beq lbl_80ABA164
/* 80ABA124  40 80 00 10 */	bge lbl_80ABA134
/* 80ABA128  2C 00 00 00 */	cmpwi r0, 0
/* 80ABA12C  40 80 00 14 */	bge lbl_80ABA140
/* 80ABA130  48 00 00 78 */	b lbl_80ABA1A8
lbl_80ABA134:
/* 80ABA134  2C 00 00 03 */	cmpwi r0, 3
/* 80ABA138  40 80 00 70 */	bge lbl_80ABA1A8
/* 80ABA13C  48 00 00 4C */	b lbl_80ABA188
lbl_80ABA140:
/* 80ABA140  7F C3 F3 78 */	mr r3, r30
/* 80ABA144  38 80 00 09 */	li r4, 9
/* 80ABA148  3C A0 80 AC */	lis r5, lit_4321@ha
/* 80ABA14C  C0 25 FA 68 */	lfs f1, lit_4321@l(r5)
/* 80ABA150  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABA154  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80ABA158  7D 89 03 A6 */	mtctr r12
/* 80ABA15C  4E 80 04 21 */	bctrl 
/* 80ABA160  48 00 00 48 */	b lbl_80ABA1A8
lbl_80ABA164:
/* 80ABA164  7F C3 F3 78 */	mr r3, r30
/* 80ABA168  38 80 00 08 */	li r4, 8
/* 80ABA16C  3C A0 80 AC */	lis r5, lit_4321@ha
/* 80ABA170  C0 25 FA 68 */	lfs f1, lit_4321@l(r5)
/* 80ABA174  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABA178  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80ABA17C  7D 89 03 A6 */	mtctr r12
/* 80ABA180  4E 80 04 21 */	bctrl 
/* 80ABA184  48 00 00 24 */	b lbl_80ABA1A8
lbl_80ABA188:
/* 80ABA188  7F C3 F3 78 */	mr r3, r30
/* 80ABA18C  38 80 00 1A */	li r4, 0x1a
/* 80ABA190  3C A0 80 AC */	lis r5, lit_4321@ha
/* 80ABA194  C0 25 FA 68 */	lfs f1, lit_4321@l(r5)
/* 80ABA198  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABA19C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80ABA1A0  7D 89 03 A6 */	mtctr r12
/* 80ABA1A4  4E 80 04 21 */	bctrl 
lbl_80ABA1A8:
/* 80ABA1A8  38 60 00 01 */	li r3, 1
lbl_80ABA1AC:
/* 80ABA1AC  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABA1B0  4B 8A 80 74 */	b _restgpr_28
/* 80ABA1B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABA1B8  7C 08 03 A6 */	mtlr r0
/* 80ABA1BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80ABA1C0  4E 80 00 20 */	blr 
