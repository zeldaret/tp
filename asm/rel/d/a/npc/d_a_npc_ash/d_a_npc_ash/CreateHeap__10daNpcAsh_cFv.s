lbl_80958B68:
/* 80958B68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80958B6C  7C 08 02 A6 */	mflr r0
/* 80958B70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80958B74  39 61 00 30 */	addi r11, r1, 0x30
/* 80958B78  4B A0 96 61 */	bl _savegpr_28
/* 80958B7C  7C 7E 1B 78 */	mr r30, r3
/* 80958B80  3C 60 80 96 */	lis r3, l_arcNames@ha /* 0x8095DAC0@ha */
/* 80958B84  38 63 DA C0 */	addi r3, r3, l_arcNames@l /* 0x8095DAC0@l */
/* 80958B88  80 63 00 00 */	lwz r3, 0(r3)
/* 80958B8C  38 80 00 0B */	li r4, 0xb
/* 80958B90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80958B94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80958B98  3F E5 00 02 */	addis r31, r5, 2
/* 80958B9C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80958BA0  7F E5 FB 78 */	mr r5, r31
/* 80958BA4  38 C0 00 80 */	li r6, 0x80
/* 80958BA8  4B 6E 37 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80958BAC  7C 7D 1B 78 */	mr r29, r3
/* 80958BB0  38 60 00 58 */	li r3, 0x58
/* 80958BB4  4B 97 60 99 */	bl __nw__FUl
/* 80958BB8  7C 60 1B 79 */	or. r0, r3, r3
/* 80958BBC  41 82 00 4C */	beq lbl_80958C08
/* 80958BC0  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 80958BC4  90 01 00 08 */	stw r0, 8(r1)
/* 80958BC8  3C 00 00 08 */	lis r0, 8
/* 80958BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80958BD0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80958BD4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80958BD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80958BDC  7F A4 EB 78 */	mr r4, r29
/* 80958BE0  38 A0 00 00 */	li r5, 0
/* 80958BE4  38 C0 00 00 */	li r6, 0
/* 80958BE8  38 E0 00 00 */	li r7, 0
/* 80958BEC  39 00 FF FF */	li r8, -1
/* 80958BF0  3D 20 80 96 */	lis r9, lit_4300@ha /* 0x8095D6BC@ha */
/* 80958BF4  C0 29 D6 BC */	lfs f1, lit_4300@l(r9)  /* 0x8095D6BC@l */
/* 80958BF8  39 20 00 00 */	li r9, 0
/* 80958BFC  39 40 FF FF */	li r10, -1
/* 80958C00  4B 6B 7B D1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80958C04  7C 60 1B 78 */	mr r0, r3
lbl_80958C08:
/* 80958C08  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80958C0C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80958C10  28 03 00 00 */	cmplwi r3, 0
/* 80958C14  41 82 00 1C */	beq lbl_80958C30
/* 80958C18  80 03 00 04 */	lwz r0, 4(r3)
/* 80958C1C  28 00 00 00 */	cmplwi r0, 0
/* 80958C20  40 82 00 10 */	bne lbl_80958C30
/* 80958C24  4B 6B 86 ED */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80958C28  38 00 00 00 */	li r0, 0
/* 80958C2C  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80958C30:
/* 80958C30  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80958C34  28 03 00 00 */	cmplwi r3, 0
/* 80958C38  40 82 00 0C */	bne lbl_80958C44
/* 80958C3C  38 60 00 00 */	li r3, 0
/* 80958C40  48 00 02 B0 */	b lbl_80958EF0
lbl_80958C44:
/* 80958C44  80 A3 00 04 */	lwz r5, 4(r3)
/* 80958C48  38 C0 00 00 */	li r6, 0
/* 80958C4C  3C 60 80 96 */	lis r3, ctrlJointCallBack__10daNpcAsh_cFP8J3DJointi@ha /* 0x80959478@ha */
/* 80958C50  38 83 94 78 */	addi r4, r3, ctrlJointCallBack__10daNpcAsh_cFP8J3DJointi@l /* 0x80959478@l */
/* 80958C54  48 00 00 18 */	b lbl_80958C6C
lbl_80958C58:
/* 80958C58  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80958C5C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80958C60  7C 63 00 2E */	lwzx r3, r3, r0
/* 80958C64  90 83 00 04 */	stw r4, 4(r3)
/* 80958C68  38 C6 00 01 */	addi r6, r6, 1
lbl_80958C6C:
/* 80958C6C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80958C70  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80958C74  7C 03 00 40 */	cmplw r3, r0
/* 80958C78  41 80 FF E0 */	blt lbl_80958C58
/* 80958C7C  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80958C80  38 60 01 08 */	li r3, 0x108
/* 80958C84  4B 97 5F C9 */	bl __nw__FUl
/* 80958C88  7C 7D 1B 79 */	or. r29, r3, r3
/* 80958C8C  41 82 00 D0 */	beq lbl_80958D5C
/* 80958C90  7F BC EB 78 */	mr r28, r29
/* 80958C94  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80958C98  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80958C9C  90 1D 00 00 */	stw r0, 0(r29)
/* 80958CA0  38 7D 00 04 */	addi r3, r29, 4
/* 80958CA4  3C 80 80 96 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x809590AC@ha */
/* 80958CA8  38 84 90 AC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x809590AC@l */
/* 80958CAC  3C A0 80 96 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80959070@ha */
/* 80958CB0  38 A5 90 70 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80959070@l */
/* 80958CB4  38 C0 00 08 */	li r6, 8
/* 80958CB8  38 E0 00 02 */	li r7, 2
/* 80958CBC  4B A0 90 A5 */	bl __construct_array
/* 80958CC0  38 7D 00 14 */	addi r3, r29, 0x14
/* 80958CC4  3C 80 80 96 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80959058@ha */
/* 80958CC8  38 84 90 58 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80959058@l */
/* 80958CCC  3C A0 80 96 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8095901C@ha */
/* 80958CD0  38 A5 90 1C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8095901C@l */
/* 80958CD4  38 C0 00 08 */	li r6, 8
/* 80958CD8  38 E0 00 08 */	li r7, 8
/* 80958CDC  4B A0 90 85 */	bl __construct_array
/* 80958CE0  38 7D 00 54 */	addi r3, r29, 0x54
/* 80958CE4  3C 80 80 96 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80958FF8@ha */
/* 80958CE8  38 84 8F F8 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80958FF8@l */
/* 80958CEC  3C A0 80 96 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80958FB0@ha */
/* 80958CF0  38 A5 8F B0 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80958FB0@l */
/* 80958CF4  38 C0 00 0C */	li r6, 0xc
/* 80958CF8  38 E0 00 08 */	li r7, 8
/* 80958CFC  4B A0 90 65 */	bl __construct_array
/* 80958D00  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80958D04  3C 80 80 96 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80958F98@ha */
/* 80958D08  38 84 8F 98 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80958F98@l */
/* 80958D0C  3C A0 80 96 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80958F5C@ha */
/* 80958D10  38 A5 8F 5C */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80958F5C@l */
/* 80958D14  38 C0 00 08 */	li r6, 8
/* 80958D18  38 E0 00 04 */	li r7, 4
/* 80958D1C  4B A0 90 45 */	bl __construct_array
/* 80958D20  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80958D24  3C 80 80 96 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80958F44@ha */
/* 80958D28  38 84 8F 44 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80958F44@l */
/* 80958D2C  3C A0 80 96 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80958F08@ha */
/* 80958D30  38 A5 8F 08 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80958F08@l */
/* 80958D34  38 C0 00 08 */	li r6, 8
/* 80958D38  38 E0 00 04 */	li r7, 4
/* 80958D3C  4B A0 90 25 */	bl __construct_array
/* 80958D40  7F A3 EB 78 */	mr r3, r29
/* 80958D44  4B 9D 35 DD */	bl initialize__14J3DMaterialAnmFv
/* 80958D48  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 80958D4C  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 80958D50  90 1C 00 00 */	stw r0, 0(r28)
/* 80958D54  7F 83 E3 78 */	mr r3, r28
/* 80958D58  4B 7F 79 E1 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_80958D5C:
/* 80958D5C  93 BE 0B E0 */	stw r29, 0xbe0(r30)
/* 80958D60  80 1E 0B E0 */	lwz r0, 0xbe0(r30)
/* 80958D64  28 00 00 00 */	cmplwi r0, 0
/* 80958D68  40 82 00 0C */	bne lbl_80958D74
/* 80958D6C  38 60 00 00 */	li r3, 0
/* 80958D70  48 00 01 80 */	b lbl_80958EF0
lbl_80958D74:
/* 80958D74  38 00 00 00 */	li r0, 0
/* 80958D78  90 1E 0B DC */	stw r0, 0xbdc(r30)
/* 80958D7C  90 1E 0B D8 */	stw r0, 0xbd8(r30)
/* 80958D80  88 1E 0F 60 */	lbz r0, 0xf60(r30)
/* 80958D84  28 00 00 01 */	cmplwi r0, 1
/* 80958D88  40 82 00 84 */	bne lbl_80958E0C
/* 80958D8C  3C 60 80 96 */	lis r3, l_arcNames@ha /* 0x8095DAC0@ha */
/* 80958D90  3B 83 DA C0 */	addi r28, r3, l_arcNames@l /* 0x8095DAC0@l */
/* 80958D94  80 7C 00 08 */	lwz r3, 8(r28)
/* 80958D98  38 80 00 08 */	li r4, 8
/* 80958D9C  7F E5 FB 78 */	mr r5, r31
/* 80958DA0  38 C0 00 80 */	li r6, 0x80
/* 80958DA4  4B 6E 35 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80958DA8  3C 80 00 08 */	lis r4, 8
/* 80958DAC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80958DB0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80958DB4  4B 6B BE A1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80958DB8  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 80958DBC  80 1E 0B D8 */	lwz r0, 0xbd8(r30)
/* 80958DC0  28 00 00 00 */	cmplwi r0, 0
/* 80958DC4  40 82 00 0C */	bne lbl_80958DD0
/* 80958DC8  38 60 00 00 */	li r3, 0
/* 80958DCC  48 00 01 24 */	b lbl_80958EF0
lbl_80958DD0:
/* 80958DD0  80 7C 00 08 */	lwz r3, 8(r28)
/* 80958DD4  38 80 00 09 */	li r4, 9
/* 80958DD8  7F E5 FB 78 */	mr r5, r31
/* 80958DDC  38 C0 00 80 */	li r6, 0x80
/* 80958DE0  4B 6E 35 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80958DE4  3C 80 00 08 */	lis r4, 8
/* 80958DE8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80958DEC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80958DF0  4B 6B BE 65 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80958DF4  90 7E 0B DC */	stw r3, 0xbdc(r30)
/* 80958DF8  80 1E 0B DC */	lwz r0, 0xbdc(r30)
/* 80958DFC  28 00 00 00 */	cmplwi r0, 0
/* 80958E00  40 82 00 0C */	bne lbl_80958E0C
/* 80958E04  38 60 00 00 */	li r3, 0
/* 80958E08  48 00 00 E8 */	b lbl_80958EF0
lbl_80958E0C:
/* 80958E0C  7F C3 F3 78 */	mr r3, r30
/* 80958E10  38 80 00 01 */	li r4, 1
/* 80958E14  38 A0 00 00 */	li r5, 0
/* 80958E18  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80958E1C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80958E20  7D 89 03 A6 */	mtctr r12
/* 80958E24  4E 80 04 21 */	bctrl 
/* 80958E28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80958E2C  40 82 00 0C */	bne lbl_80958E38
/* 80958E30  38 60 00 00 */	li r3, 0
/* 80958E34  48 00 00 BC */	b lbl_80958EF0
lbl_80958E38:
/* 80958E38  88 1E 0F 60 */	lbz r0, 0xf60(r30)
/* 80958E3C  2C 00 00 01 */	cmpwi r0, 1
/* 80958E40  41 82 00 8C */	beq lbl_80958ECC
/* 80958E44  40 80 00 A8 */	bge lbl_80958EEC
/* 80958E48  2C 00 00 00 */	cmpwi r0, 0
/* 80958E4C  40 80 00 08 */	bge lbl_80958E54
/* 80958E50  48 00 00 9C */	b lbl_80958EEC
lbl_80958E54:
/* 80958E54  3B 80 00 00 */	li r28, 0
/* 80958E58  38 60 01 0C */	li r3, 0x10c
/* 80958E5C  4B 7F C7 D9 */	bl daNpcF_chkEvtBit__FUl
/* 80958E60  2C 03 00 00 */	cmpwi r3, 0
/* 80958E64  40 82 00 14 */	bne lbl_80958E78
/* 80958E68  38 60 01 08 */	li r3, 0x108
/* 80958E6C  4B 7F C7 C9 */	bl daNpcF_chkEvtBit__FUl
/* 80958E70  2C 03 00 00 */	cmpwi r3, 0
/* 80958E74  40 82 00 08 */	bne lbl_80958E7C
lbl_80958E78:
/* 80958E78  3B 80 00 01 */	li r28, 1
lbl_80958E7C:
/* 80958E7C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80958E80  40 82 00 28 */	bne lbl_80958EA8
/* 80958E84  7F C3 F3 78 */	mr r3, r30
/* 80958E88  38 80 00 09 */	li r4, 9
/* 80958E8C  3C A0 80 96 */	lis r5, lit_4301@ha /* 0x8095D6C0@ha */
/* 80958E90  C0 25 D6 C0 */	lfs f1, lit_4301@l(r5)  /* 0x8095D6C0@l */
/* 80958E94  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80958E98  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80958E9C  7D 89 03 A6 */	mtctr r12
/* 80958EA0  4E 80 04 21 */	bctrl 
/* 80958EA4  48 00 00 48 */	b lbl_80958EEC
lbl_80958EA8:
/* 80958EA8  7F C3 F3 78 */	mr r3, r30
/* 80958EAC  38 80 00 08 */	li r4, 8
/* 80958EB0  3C A0 80 96 */	lis r5, lit_4301@ha /* 0x8095D6C0@ha */
/* 80958EB4  C0 25 D6 C0 */	lfs f1, lit_4301@l(r5)  /* 0x8095D6C0@l */
/* 80958EB8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80958EBC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80958EC0  7D 89 03 A6 */	mtctr r12
/* 80958EC4  4E 80 04 21 */	bctrl 
/* 80958EC8  48 00 00 24 */	b lbl_80958EEC
lbl_80958ECC:
/* 80958ECC  7F C3 F3 78 */	mr r3, r30
/* 80958ED0  38 80 00 10 */	li r4, 0x10
/* 80958ED4  3C A0 80 96 */	lis r5, lit_4301@ha /* 0x8095D6C0@ha */
/* 80958ED8  C0 25 D6 C0 */	lfs f1, lit_4301@l(r5)  /* 0x8095D6C0@l */
/* 80958EDC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80958EE0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80958EE4  7D 89 03 A6 */	mtctr r12
/* 80958EE8  4E 80 04 21 */	bctrl 
lbl_80958EEC:
/* 80958EEC  38 60 00 01 */	li r3, 1
lbl_80958EF0:
/* 80958EF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80958EF4  4B A0 93 31 */	bl _restgpr_28
/* 80958EF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80958EFC  7C 08 03 A6 */	mtlr r0
/* 80958F00  38 21 00 30 */	addi r1, r1, 0x30
/* 80958F04  4E 80 00 20 */	blr 
