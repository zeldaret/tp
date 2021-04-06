lbl_80962D6C:
/* 80962D6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80962D70  7C 08 02 A6 */	mflr r0
/* 80962D74  90 01 00 34 */	stw r0, 0x34(r1)
/* 80962D78  39 61 00 30 */	addi r11, r1, 0x30
/* 80962D7C  4B 9F F4 5D */	bl _savegpr_28
/* 80962D80  7C 7F 1B 78 */	mr r31, r3
/* 80962D84  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80962D88  20 00 00 01 */	subfic r0, r0, 1
/* 80962D8C  7C 00 00 34 */	cntlzw r0, r0
/* 80962D90  54 1C D9 7E */	srwi r28, r0, 5
/* 80962D94  3C 60 80 97 */	lis r3, l_bmdData@ha /* 0x80968020@ha */
/* 80962D98  38 83 80 20 */	addi r4, r3, l_bmdData@l /* 0x80968020@l */
/* 80962D9C  54 00 F0 B8 */	rlwinm r0, r0, 0x1e, 2, 0x1c
/* 80962DA0  7C 64 02 14 */	add r3, r4, r0
/* 80962DA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80962DA8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80962DAC  54 60 10 3A */	slwi r0, r3, 2
/* 80962DB0  3C 60 80 97 */	lis r3, l_resNameList@ha /* 0x80968088@ha */
/* 80962DB4  38 63 80 88 */	addi r3, r3, l_resNameList@l /* 0x80968088@l */
/* 80962DB8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80962DBC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80962DC0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80962DC4  3F C5 00 02 */	addis r30, r5, 2
/* 80962DC8  3B DE C2 F8 */	addi r30, r30, -15624
/* 80962DCC  7F C5 F3 78 */	mr r5, r30
/* 80962DD0  38 C0 00 80 */	li r6, 0x80
/* 80962DD4  4B 6D 95 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80962DD8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80962DDC  40 82 00 0C */	bne lbl_80962DE8
/* 80962DE0  38 60 00 00 */	li r3, 0
/* 80962DE4  48 00 03 80 */	b lbl_80963164
lbl_80962DE8:
/* 80962DE8  38 60 00 58 */	li r3, 0x58
/* 80962DEC  4B 96 BE 61 */	bl __nw__FUl
/* 80962DF0  28 03 00 00 */	cmplwi r3, 0
/* 80962DF4  41 82 00 54 */	beq lbl_80962E48
/* 80962DF8  38 1F 05 80 */	addi r0, r31, 0x580
/* 80962DFC  90 01 00 08 */	stw r0, 8(r1)
/* 80962E00  2C 1C 00 01 */	cmpwi r28, 1
/* 80962E04  38 00 00 00 */	li r0, 0
/* 80962E08  40 82 00 08 */	bne lbl_80962E10
/* 80962E0C  3C 00 00 08 */	lis r0, 8
lbl_80962E10:
/* 80962E10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80962E14  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80962E18  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80962E1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80962E20  7F A4 EB 78 */	mr r4, r29
/* 80962E24  38 A0 00 00 */	li r5, 0
/* 80962E28  38 C0 00 00 */	li r6, 0
/* 80962E2C  38 E0 00 00 */	li r7, 0
/* 80962E30  39 00 FF FF */	li r8, -1
/* 80962E34  3D 20 80 96 */	lis r9, lit_4514@ha /* 0x80967EFC@ha */
/* 80962E38  C0 29 7E FC */	lfs f1, lit_4514@l(r9)  /* 0x80967EFC@l */
/* 80962E3C  39 20 00 00 */	li r9, 0
/* 80962E40  39 40 FF FF */	li r10, -1
/* 80962E44  4B 6A D9 8D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
lbl_80962E48:
/* 80962E48  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80962E4C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80962E50  28 03 00 00 */	cmplwi r3, 0
/* 80962E54  41 82 00 10 */	beq lbl_80962E64
/* 80962E58  80 A3 00 04 */	lwz r5, 4(r3)
/* 80962E5C  28 05 00 00 */	cmplwi r5, 0
/* 80962E60  40 82 00 0C */	bne lbl_80962E6C
lbl_80962E64:
/* 80962E64  38 60 00 00 */	li r3, 0
/* 80962E68  48 00 02 FC */	b lbl_80963164
lbl_80962E6C:
/* 80962E6C  38 C0 00 00 */	li r6, 0
/* 80962E70  3C 60 80 96 */	lis r3, ctrlJointCallBack__12daNpc_Bans_cFP8J3DJointi@ha /* 0x80963500@ha */
/* 80962E74  38 83 35 00 */	addi r4, r3, ctrlJointCallBack__12daNpc_Bans_cFP8J3DJointi@l /* 0x80963500@l */
/* 80962E78  48 00 00 18 */	b lbl_80962E90
lbl_80962E7C:
/* 80962E7C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80962E80  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80962E84  7C 63 00 2E */	lwzx r3, r3, r0
/* 80962E88  90 83 00 04 */	stw r4, 4(r3)
/* 80962E8C  38 C6 00 01 */	addi r6, r6, 1
lbl_80962E90:
/* 80962E90  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80962E94  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80962E98  7C 03 00 40 */	cmplw r3, r0
/* 80962E9C  41 80 FF E0 */	blt lbl_80962E7C
/* 80962EA0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80962EA4  38 60 01 08 */	li r3, 0x108
/* 80962EA8  4B 96 BD A5 */	bl __nw__FUl
/* 80962EAC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80962EB0  41 82 00 D0 */	beq lbl_80962F80
/* 80962EB4  7F BC EB 78 */	mr r28, r29
/* 80962EB8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80962EBC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80962EC0  90 1D 00 00 */	stw r0, 0(r29)
/* 80962EC4  38 7C 00 04 */	addi r3, r28, 4
/* 80962EC8  3C 80 80 96 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80963320@ha */
/* 80962ECC  38 84 33 20 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80963320@l */
/* 80962ED0  3C A0 80 96 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x809632E4@ha */
/* 80962ED4  38 A5 32 E4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x809632E4@l */
/* 80962ED8  38 C0 00 08 */	li r6, 8
/* 80962EDC  38 E0 00 02 */	li r7, 2
/* 80962EE0  4B 9F EE 81 */	bl __construct_array
/* 80962EE4  38 7C 00 14 */	addi r3, r28, 0x14
/* 80962EE8  3C 80 80 96 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x809632CC@ha */
/* 80962EEC  38 84 32 CC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x809632CC@l */
/* 80962EF0  3C A0 80 96 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80963290@ha */
/* 80962EF4  38 A5 32 90 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80963290@l */
/* 80962EF8  38 C0 00 08 */	li r6, 8
/* 80962EFC  38 E0 00 08 */	li r7, 8
/* 80962F00  4B 9F EE 61 */	bl __construct_array
/* 80962F04  38 7C 00 54 */	addi r3, r28, 0x54
/* 80962F08  3C 80 80 96 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8096326C@ha */
/* 80962F0C  38 84 32 6C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8096326C@l */
/* 80962F10  3C A0 80 96 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80963224@ha */
/* 80962F14  38 A5 32 24 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80963224@l */
/* 80962F18  38 C0 00 0C */	li r6, 0xc
/* 80962F1C  38 E0 00 08 */	li r7, 8
/* 80962F20  4B 9F EE 41 */	bl __construct_array
/* 80962F24  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 80962F28  3C 80 80 96 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x8096320C@ha */
/* 80962F2C  38 84 32 0C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x8096320C@l */
/* 80962F30  3C A0 80 96 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x809631D0@ha */
/* 80962F34  38 A5 31 D0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x809631D0@l */
/* 80962F38  38 C0 00 08 */	li r6, 8
/* 80962F3C  38 E0 00 04 */	li r7, 4
/* 80962F40  4B 9F EE 21 */	bl __construct_array
/* 80962F44  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80962F48  3C 80 80 96 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x809631B8@ha */
/* 80962F4C  38 84 31 B8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x809631B8@l */
/* 80962F50  3C A0 80 96 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8096317C@ha */
/* 80962F54  38 A5 31 7C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8096317C@l */
/* 80962F58  38 C0 00 08 */	li r6, 8
/* 80962F5C  38 E0 00 04 */	li r7, 4
/* 80962F60  4B 9F EE 01 */	bl __construct_array
/* 80962F64  7F 83 E3 78 */	mr r3, r28
/* 80962F68  4B 9C 93 B9 */	bl initialize__14J3DMaterialAnmFv
/* 80962F6C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80962F70  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80962F74  90 1D 00 00 */	stw r0, 0(r29)
/* 80962F78  7F A3 EB 78 */	mr r3, r29
/* 80962F7C  4B 7E 27 E9 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80962F80:
/* 80962F80  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80962F84  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80962F88  28 00 00 00 */	cmplwi r0, 0
/* 80962F8C  40 82 00 0C */	bne lbl_80962F98
/* 80962F90  38 60 00 00 */	li r3, 0
/* 80962F94  48 00 01 D0 */	b lbl_80963164
lbl_80962F98:
/* 80962F98  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 80962F9C  28 00 00 03 */	cmplwi r0, 3
/* 80962FA0  40 82 00 BC */	bne lbl_8096305C
/* 80962FA4  3C 60 80 97 */	lis r3, l_bmdData@ha /* 0x80968020@ha */
/* 80962FA8  38 63 80 20 */	addi r3, r3, l_bmdData@l /* 0x80968020@l */
/* 80962FAC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80962FB0  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80962FB4  54 00 10 3A */	slwi r0, r0, 2
/* 80962FB8  3C 60 80 97 */	lis r3, l_resNameList@ha /* 0x80968088@ha */
/* 80962FBC  38 63 80 88 */	addi r3, r3, l_resNameList@l /* 0x80968088@l */
/* 80962FC0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80962FC4  7F C5 F3 78 */	mr r5, r30
/* 80962FC8  38 C0 00 80 */	li r6, 0x80
/* 80962FCC  4B 6D 93 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80962FD0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80962FD4  40 82 00 0C */	bne lbl_80962FE0
/* 80962FD8  38 60 00 01 */	li r3, 1
/* 80962FDC  48 00 01 88 */	b lbl_80963164
lbl_80962FE0:
/* 80962FE0  38 60 00 58 */	li r3, 0x58
/* 80962FE4  4B 96 BC 69 */	bl __nw__FUl
/* 80962FE8  7C 60 1B 79 */	or. r0, r3, r3
/* 80962FEC  41 82 00 4C */	beq lbl_80963038
/* 80962FF0  38 00 00 00 */	li r0, 0
/* 80962FF4  90 01 00 08 */	stw r0, 8(r1)
/* 80962FF8  3C 00 00 08 */	lis r0, 8
/* 80962FFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80963000  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80963004  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80963008  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096300C  7F 84 E3 78 */	mr r4, r28
/* 80963010  38 A0 00 00 */	li r5, 0
/* 80963014  38 C0 00 00 */	li r6, 0
/* 80963018  38 E0 00 00 */	li r7, 0
/* 8096301C  39 00 FF FF */	li r8, -1
/* 80963020  3D 20 80 96 */	lis r9, lit_4514@ha /* 0x80967EFC@ha */
/* 80963024  C0 29 7E FC */	lfs f1, lit_4514@l(r9)  /* 0x80967EFC@l */
/* 80963028  39 20 00 00 */	li r9, 0
/* 8096302C  39 40 FF FF */	li r10, -1
/* 80963030  4B 6A D7 A1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80963034  7C 60 1B 78 */	mr r0, r3
lbl_80963038:
/* 80963038  90 1F 0F 7C */	stw r0, 0xf7c(r31)
/* 8096303C  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80963040  28 03 00 00 */	cmplwi r3, 0
/* 80963044  41 82 00 10 */	beq lbl_80963054
/* 80963048  80 03 00 04 */	lwz r0, 4(r3)
/* 8096304C  28 00 00 00 */	cmplwi r0, 0
/* 80963050  40 82 00 0C */	bne lbl_8096305C
lbl_80963054:
/* 80963054  38 60 00 00 */	li r3, 0
/* 80963058  48 00 01 0C */	b lbl_80963164
lbl_8096305C:
/* 8096305C  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 80963060  28 00 00 03 */	cmplwi r0, 3
/* 80963064  40 82 00 70 */	bne lbl_809630D4
/* 80963068  3C 60 80 97 */	lis r3, l_bmdData@ha /* 0x80968020@ha */
/* 8096306C  38 63 80 20 */	addi r3, r3, l_bmdData@l /* 0x80968020@l */
/* 80963070  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80963074  2C 04 00 00 */	cmpwi r4, 0
/* 80963078  41 80 00 28 */	blt lbl_809630A0
/* 8096307C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80963080  54 00 10 3A */	slwi r0, r0, 2
/* 80963084  3C 60 80 97 */	lis r3, l_resNameList@ha /* 0x80968088@ha */
/* 80963088  38 63 80 88 */	addi r3, r3, l_resNameList@l /* 0x80968088@l */
/* 8096308C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80963090  7F C5 F3 78 */	mr r5, r30
/* 80963094  38 C0 00 80 */	li r6, 0x80
/* 80963098  4B 6D 92 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8096309C  48 00 00 08 */	b lbl_809630A4
lbl_809630A0:
/* 809630A0  38 60 00 00 */	li r3, 0
lbl_809630A4:
/* 809630A4  28 03 00 00 */	cmplwi r3, 0
/* 809630A8  41 82 00 18 */	beq lbl_809630C0
/* 809630AC  3C 80 00 08 */	lis r4, 8
/* 809630B0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809630B4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809630B8  4B 6B 1B 9D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809630BC  90 7F 0F 84 */	stw r3, 0xf84(r31)
lbl_809630C0:
/* 809630C0  80 1F 0F 84 */	lwz r0, 0xf84(r31)
/* 809630C4  28 00 00 00 */	cmplwi r0, 0
/* 809630C8  40 82 00 0C */	bne lbl_809630D4
/* 809630CC  38 60 00 00 */	li r3, 0
/* 809630D0  48 00 00 94 */	b lbl_80963164
lbl_809630D4:
/* 809630D4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809630D8  28 00 00 00 */	cmplwi r0, 0
/* 809630DC  41 82 00 38 */	beq lbl_80963114
/* 809630E0  7F E3 FB 78 */	mr r3, r31
/* 809630E4  38 80 00 04 */	li r4, 4
/* 809630E8  3C A0 80 96 */	lis r5, lit_4103@ha /* 0x80967EE8@ha */
/* 809630EC  C0 25 7E E8 */	lfs f1, lit_4103@l(r5)  /* 0x80967EE8@l */
/* 809630F0  38 A0 00 00 */	li r5, 0
/* 809630F4  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 809630F8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809630FC  7D 89 03 A6 */	mtctr r12
/* 80963100  4E 80 04 21 */	bctrl 
/* 80963104  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80963108  30 03 FF FF */	addic r0, r3, -1
/* 8096310C  7C 60 19 10 */	subfe r3, r0, r3
/* 80963110  48 00 00 54 */	b lbl_80963164
lbl_80963114:
/* 80963114  7F E3 FB 78 */	mr r3, r31
/* 80963118  38 80 00 02 */	li r4, 2
/* 8096311C  38 A0 00 00 */	li r5, 0
/* 80963120  4B 7E 72 69 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80963124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80963128  41 82 00 38 */	beq lbl_80963160
/* 8096312C  7F E3 FB 78 */	mr r3, r31
/* 80963130  38 80 00 00 */	li r4, 0
/* 80963134  3C A0 80 96 */	lis r5, lit_4103@ha /* 0x80967EE8@ha */
/* 80963138  C0 25 7E E8 */	lfs f1, lit_4103@l(r5)  /* 0x80967EE8@l */
/* 8096313C  38 A0 00 00 */	li r5, 0
/* 80963140  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80963144  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80963148  7D 89 03 A6 */	mtctr r12
/* 8096314C  4E 80 04 21 */	bctrl 
/* 80963150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80963154  41 82 00 0C */	beq lbl_80963160
/* 80963158  38 60 00 01 */	li r3, 1
/* 8096315C  48 00 00 08 */	b lbl_80963164
lbl_80963160:
/* 80963160  38 60 00 00 */	li r3, 0
lbl_80963164:
/* 80963164  39 61 00 30 */	addi r11, r1, 0x30
/* 80963168  4B 9F F0 BD */	bl _restgpr_28
/* 8096316C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80963170  7C 08 03 A6 */	mtlr r0
/* 80963174  38 21 00 30 */	addi r1, r1, 0x30
/* 80963178  4E 80 00 20 */	blr 
