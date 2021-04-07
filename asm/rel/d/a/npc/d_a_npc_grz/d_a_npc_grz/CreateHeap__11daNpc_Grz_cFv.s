lbl_809E8E68:
/* 809E8E68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E8E6C  7C 08 02 A6 */	mflr r0
/* 809E8E70  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E8E74  39 61 00 30 */	addi r11, r1, 0x30
/* 809E8E78  4B 97 93 65 */	bl _savegpr_29
/* 809E8E7C  7C 7F 1B 78 */	mr r31, r3
/* 809E8E80  3B C0 00 00 */	li r30, 0
/* 809E8E84  3C 60 80 9F */	lis r3, l_bmdGetParamList@ha /* 0x809EF6C0@ha */
/* 809E8E88  84 83 F6 C0 */	lwzu r4, l_bmdGetParamList@l(r3)  /* 0x809EF6C0@l */
/* 809E8E8C  2C 04 00 00 */	cmpwi r4, 0
/* 809E8E90  41 80 00 34 */	blt lbl_809E8EC4
/* 809E8E94  80 03 00 04 */	lwz r0, 4(r3)
/* 809E8E98  54 00 10 3A */	slwi r0, r0, 2
/* 809E8E9C  3C 60 80 9F */	lis r3, l_resNames@ha /* 0x809EF8E8@ha */
/* 809E8EA0  38 63 F8 E8 */	addi r3, r3, l_resNames@l /* 0x809EF8E8@l */
/* 809E8EA4  7C 63 00 2E */	lwzx r3, r3, r0
/* 809E8EA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E8EAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E8EB0  3C A5 00 02 */	addis r5, r5, 2
/* 809E8EB4  38 C0 00 80 */	li r6, 0x80
/* 809E8EB8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809E8EBC  4B 65 34 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809E8EC0  7C 7E 1B 78 */	mr r30, r3
lbl_809E8EC4:
/* 809E8EC4  38 60 00 58 */	li r3, 0x58
/* 809E8EC8  4B 8E 5D 85 */	bl __nw__FUl
/* 809E8ECC  7C 60 1B 79 */	or. r0, r3, r3
/* 809E8ED0  41 82 00 4C */	beq lbl_809E8F1C
/* 809E8ED4  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 809E8ED8  90 01 00 08 */	stw r0, 8(r1)
/* 809E8EDC  3C 00 00 08 */	lis r0, 8
/* 809E8EE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E8EE4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809E8EE8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809E8EEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E8EF0  7F C4 F3 78 */	mr r4, r30
/* 809E8EF4  38 A0 00 00 */	li r5, 0
/* 809E8EF8  38 C0 00 00 */	li r6, 0
/* 809E8EFC  38 E0 00 00 */	li r7, 0
/* 809E8F00  39 00 FF FF */	li r8, -1
/* 809E8F04  3D 20 80 9F */	lis r9, lit_4359@ha /* 0x809EF298@ha */
/* 809E8F08  C0 29 F2 98 */	lfs f1, lit_4359@l(r9)  /* 0x809EF298@l */
/* 809E8F0C  39 20 00 00 */	li r9, 0
/* 809E8F10  39 40 FF FF */	li r10, -1
/* 809E8F14  4B 62 78 BD */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809E8F18  7C 60 1B 78 */	mr r0, r3
lbl_809E8F1C:
/* 809E8F1C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 809E8F20  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E8F24  28 03 00 00 */	cmplwi r3, 0
/* 809E8F28  41 82 00 1C */	beq lbl_809E8F44
/* 809E8F2C  80 03 00 04 */	lwz r0, 4(r3)
/* 809E8F30  28 00 00 00 */	cmplwi r0, 0
/* 809E8F34  40 82 00 10 */	bne lbl_809E8F44
/* 809E8F38  4B 62 83 D9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809E8F3C  38 00 00 00 */	li r0, 0
/* 809E8F40  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_809E8F44:
/* 809E8F44  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E8F48  28 03 00 00 */	cmplwi r3, 0
/* 809E8F4C  40 82 00 0C */	bne lbl_809E8F58
/* 809E8F50  38 60 00 00 */	li r3, 0
/* 809E8F54  48 00 01 84 */	b lbl_809E90D8
lbl_809E8F58:
/* 809E8F58  80 A3 00 04 */	lwz r5, 4(r3)
/* 809E8F5C  38 C0 00 00 */	li r6, 0
/* 809E8F60  3C 60 80 9F */	lis r3, ctrlJointCallBack__11daNpc_Grz_cFP8J3DJointi@ha /* 0x809E97BC@ha */
/* 809E8F64  38 83 97 BC */	addi r4, r3, ctrlJointCallBack__11daNpc_Grz_cFP8J3DJointi@l /* 0x809E97BC@l */
/* 809E8F68  48 00 00 18 */	b lbl_809E8F80
lbl_809E8F6C:
/* 809E8F6C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809E8F70  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809E8F74  7C 63 00 2E */	lwzx r3, r3, r0
/* 809E8F78  90 83 00 04 */	stw r4, 4(r3)
/* 809E8F7C  38 C6 00 01 */	addi r6, r6, 1
lbl_809E8F80:
/* 809E8F80  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809E8F84  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809E8F88  7C 03 00 40 */	cmplw r3, r0
/* 809E8F8C  41 80 FF E0 */	blt lbl_809E8F6C
/* 809E8F90  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809E8F94  38 60 01 08 */	li r3, 0x108
/* 809E8F98  4B 8E 5C B5 */	bl __nw__FUl
/* 809E8F9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E8FA0  41 82 00 D0 */	beq lbl_809E9070
/* 809E8FA4  7F DD F3 78 */	mr r29, r30
/* 809E8FA8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 809E8FAC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 809E8FB0  90 1E 00 00 */	stw r0, 0(r30)
/* 809E8FB4  38 7E 00 04 */	addi r3, r30, 4
/* 809E8FB8  3C 80 80 9F */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x809E9294@ha */
/* 809E8FBC  38 84 92 94 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x809E9294@l */
/* 809E8FC0  3C A0 80 9F */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x809E9258@ha */
/* 809E8FC4  38 A5 92 58 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x809E9258@l */
/* 809E8FC8  38 C0 00 08 */	li r6, 8
/* 809E8FCC  38 E0 00 02 */	li r7, 2
/* 809E8FD0  4B 97 8D 91 */	bl __construct_array
/* 809E8FD4  38 7E 00 14 */	addi r3, r30, 0x14
/* 809E8FD8  3C 80 80 9F */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x809E9240@ha */
/* 809E8FDC  38 84 92 40 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x809E9240@l */
/* 809E8FE0  3C A0 80 9F */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x809E9204@ha */
/* 809E8FE4  38 A5 92 04 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x809E9204@l */
/* 809E8FE8  38 C0 00 08 */	li r6, 8
/* 809E8FEC  38 E0 00 08 */	li r7, 8
/* 809E8FF0  4B 97 8D 71 */	bl __construct_array
/* 809E8FF4  38 7E 00 54 */	addi r3, r30, 0x54
/* 809E8FF8  3C 80 80 9F */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x809E91E0@ha */
/* 809E8FFC  38 84 91 E0 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x809E91E0@l */
/* 809E9000  3C A0 80 9F */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x809E9198@ha */
/* 809E9004  38 A5 91 98 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x809E9198@l */
/* 809E9008  38 C0 00 0C */	li r6, 0xc
/* 809E900C  38 E0 00 08 */	li r7, 8
/* 809E9010  4B 97 8D 51 */	bl __construct_array
/* 809E9014  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 809E9018  3C 80 80 9F */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x809E9180@ha */
/* 809E901C  38 84 91 80 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x809E9180@l */
/* 809E9020  3C A0 80 9F */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x809E9144@ha */
/* 809E9024  38 A5 91 44 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x809E9144@l */
/* 809E9028  38 C0 00 08 */	li r6, 8
/* 809E902C  38 E0 00 04 */	li r7, 4
/* 809E9030  4B 97 8D 31 */	bl __construct_array
/* 809E9034  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 809E9038  3C 80 80 9F */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x809E912C@ha */
/* 809E903C  38 84 91 2C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x809E912C@l */
/* 809E9040  3C A0 80 9F */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x809E90F0@ha */
/* 809E9044  38 A5 90 F0 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x809E90F0@l */
/* 809E9048  38 C0 00 08 */	li r6, 8
/* 809E904C  38 E0 00 04 */	li r7, 4
/* 809E9050  4B 97 8D 11 */	bl __construct_array
/* 809E9054  7F C3 F3 78 */	mr r3, r30
/* 809E9058  4B 94 32 C9 */	bl initialize__14J3DMaterialAnmFv
/* 809E905C  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 809E9060  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 809E9064  90 1D 00 00 */	stw r0, 0(r29)
/* 809E9068  7F A3 EB 78 */	mr r3, r29
/* 809E906C  4B 76 76 CD */	bl initialize__15daNpcF_MatAnm_cFv
lbl_809E9070:
/* 809E9070  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 809E9074  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 809E9078  28 00 00 00 */	cmplwi r0, 0
/* 809E907C  40 82 00 0C */	bne lbl_809E9088
/* 809E9080  38 60 00 00 */	li r3, 0
/* 809E9084  48 00 00 54 */	b lbl_809E90D8
lbl_809E9088:
/* 809E9088  7F E3 FB 78 */	mr r3, r31
/* 809E908C  38 80 00 01 */	li r4, 1
/* 809E9090  38 A0 00 00 */	li r5, 0
/* 809E9094  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E9098  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809E909C  7D 89 03 A6 */	mtctr r12
/* 809E90A0  4E 80 04 21 */	bctrl 
/* 809E90A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809E90A8  40 82 00 0C */	bne lbl_809E90B4
/* 809E90AC  38 60 00 00 */	li r3, 0
/* 809E90B0  48 00 00 28 */	b lbl_809E90D8
lbl_809E90B4:
/* 809E90B4  7F E3 FB 78 */	mr r3, r31
/* 809E90B8  38 80 00 0F */	li r4, 0xf
/* 809E90BC  3C A0 80 9F */	lis r5, lit_4360@ha /* 0x809EF29C@ha */
/* 809E90C0  C0 25 F2 9C */	lfs f1, lit_4360@l(r5)  /* 0x809EF29C@l */
/* 809E90C4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E90C8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809E90CC  7D 89 03 A6 */	mtctr r12
/* 809E90D0  4E 80 04 21 */	bctrl 
/* 809E90D4  38 60 00 01 */	li r3, 1
lbl_809E90D8:
/* 809E90D8  39 61 00 30 */	addi r11, r1, 0x30
/* 809E90DC  4B 97 91 4D */	bl _restgpr_29
/* 809E90E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E90E4  7C 08 03 A6 */	mtlr r0
/* 809E90E8  38 21 00 30 */	addi r1, r1, 0x30
/* 809E90EC  4E 80 00 20 */	blr 
