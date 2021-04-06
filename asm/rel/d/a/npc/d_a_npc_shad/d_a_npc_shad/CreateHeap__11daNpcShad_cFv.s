lbl_80AD8B60:
/* 80AD8B60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD8B64  7C 08 02 A6 */	mflr r0
/* 80AD8B68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD8B6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD8B70  4B 88 96 69 */	bl _savegpr_28
/* 80AD8B74  7C 7E 1B 78 */	mr r30, r3
/* 80AD8B78  3C 60 80 AE */	lis r3, l_arcNames@ha /* 0x80AE28E0@ha */
/* 80AD8B7C  38 63 28 E0 */	addi r3, r3, l_arcNames@l /* 0x80AE28E0@l */
/* 80AD8B80  80 63 00 00 */	lwz r3, 0(r3)
/* 80AD8B84  38 80 00 0F */	li r4, 0xf
/* 80AD8B88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD8B8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD8B90  3F E5 00 02 */	addis r31, r5, 2
/* 80AD8B94  3B FF C2 F8 */	addi r31, r31, -15624
/* 80AD8B98  7F E5 FB 78 */	mr r5, r31
/* 80AD8B9C  38 C0 00 80 */	li r6, 0x80
/* 80AD8BA0  4B 56 37 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AD8BA4  7C 7D 1B 78 */	mr r29, r3
/* 80AD8BA8  38 60 00 58 */	li r3, 0x58
/* 80AD8BAC  4B 7F 60 A1 */	bl __nw__FUl
/* 80AD8BB0  7C 60 1B 79 */	or. r0, r3, r3
/* 80AD8BB4  41 82 00 4C */	beq lbl_80AD8C00
/* 80AD8BB8  38 1E 0B 50 */	addi r0, r30, 0xb50
/* 80AD8BBC  90 01 00 08 */	stw r0, 8(r1)
/* 80AD8BC0  3C 00 00 08 */	lis r0, 8
/* 80AD8BC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD8BC8  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AD8BCC  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AD8BD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD8BD4  7F A4 EB 78 */	mr r4, r29
/* 80AD8BD8  38 A0 00 00 */	li r5, 0
/* 80AD8BDC  38 C0 00 00 */	li r6, 0
/* 80AD8BE0  38 E0 00 00 */	li r7, 0
/* 80AD8BE4  39 00 FF FF */	li r8, -1
/* 80AD8BE8  3D 20 80 AE */	lis r9, lit_4497@ha /* 0x80AE2068@ha */
/* 80AD8BEC  C0 29 20 68 */	lfs f1, lit_4497@l(r9)  /* 0x80AE2068@l */
/* 80AD8BF0  39 20 00 00 */	li r9, 0
/* 80AD8BF4  39 40 FF FF */	li r10, -1
/* 80AD8BF8  4B 53 7B D9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AD8BFC  7C 60 1B 78 */	mr r0, r3
lbl_80AD8C00:
/* 80AD8C00  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AD8C04  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AD8C08  28 03 00 00 */	cmplwi r3, 0
/* 80AD8C0C  41 82 00 1C */	beq lbl_80AD8C28
/* 80AD8C10  80 03 00 04 */	lwz r0, 4(r3)
/* 80AD8C14  28 00 00 00 */	cmplwi r0, 0
/* 80AD8C18  40 82 00 10 */	bne lbl_80AD8C28
/* 80AD8C1C  4B 53 86 F5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AD8C20  38 00 00 00 */	li r0, 0
/* 80AD8C24  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80AD8C28:
/* 80AD8C28  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AD8C2C  28 03 00 00 */	cmplwi r3, 0
/* 80AD8C30  40 82 00 0C */	bne lbl_80AD8C3C
/* 80AD8C34  38 60 00 00 */	li r3, 0
/* 80AD8C38  48 00 02 D4 */	b lbl_80AD8F0C
lbl_80AD8C3C:
/* 80AD8C3C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AD8C40  38 C0 00 00 */	li r6, 0
/* 80AD8C44  3C 60 80 AE */	lis r3, ctrlJointCallBack__11daNpcShad_cFP8J3DJointi@ha /* 0x80AD946C@ha */
/* 80AD8C48  38 83 94 6C */	addi r4, r3, ctrlJointCallBack__11daNpcShad_cFP8J3DJointi@l /* 0x80AD946C@l */
/* 80AD8C4C  48 00 00 18 */	b lbl_80AD8C64
lbl_80AD8C50:
/* 80AD8C50  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80AD8C54  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AD8C58  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AD8C5C  90 83 00 04 */	stw r4, 4(r3)
/* 80AD8C60  38 C6 00 01 */	addi r6, r6, 1
lbl_80AD8C64:
/* 80AD8C64  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AD8C68  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80AD8C6C  7C 03 00 40 */	cmplw r3, r0
/* 80AD8C70  41 80 FF E0 */	blt lbl_80AD8C50
/* 80AD8C74  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80AD8C78  38 60 01 08 */	li r3, 0x108
/* 80AD8C7C  4B 7F 5F D1 */	bl __nw__FUl
/* 80AD8C80  7C 7D 1B 79 */	or. r29, r3, r3
/* 80AD8C84  41 82 00 D0 */	beq lbl_80AD8D54
/* 80AD8C88  7F BC EB 78 */	mr r28, r29
/* 80AD8C8C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80AD8C90  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80AD8C94  90 1D 00 00 */	stw r0, 0(r29)
/* 80AD8C98  38 7D 00 04 */	addi r3, r29, 4
/* 80AD8C9C  3C 80 80 AE */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80AD90C8@ha */
/* 80AD8CA0  38 84 90 C8 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80AD90C8@l */
/* 80AD8CA4  3C A0 80 AE */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80AD908C@ha */
/* 80AD8CA8  38 A5 90 8C */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80AD908C@l */
/* 80AD8CAC  38 C0 00 08 */	li r6, 8
/* 80AD8CB0  38 E0 00 02 */	li r7, 2
/* 80AD8CB4  4B 88 90 AD */	bl __construct_array
/* 80AD8CB8  38 7D 00 14 */	addi r3, r29, 0x14
/* 80AD8CBC  3C 80 80 AE */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80AD9074@ha */
/* 80AD8CC0  38 84 90 74 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80AD9074@l */
/* 80AD8CC4  3C A0 80 AE */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80AD9038@ha */
/* 80AD8CC8  38 A5 90 38 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80AD9038@l */
/* 80AD8CCC  38 C0 00 08 */	li r6, 8
/* 80AD8CD0  38 E0 00 08 */	li r7, 8
/* 80AD8CD4  4B 88 90 8D */	bl __construct_array
/* 80AD8CD8  38 7D 00 54 */	addi r3, r29, 0x54
/* 80AD8CDC  3C 80 80 AE */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80AD9014@ha */
/* 80AD8CE0  38 84 90 14 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80AD9014@l */
/* 80AD8CE4  3C A0 80 AE */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80AD8FCC@ha */
/* 80AD8CE8  38 A5 8F CC */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80AD8FCC@l */
/* 80AD8CEC  38 C0 00 0C */	li r6, 0xc
/* 80AD8CF0  38 E0 00 08 */	li r7, 8
/* 80AD8CF4  4B 88 90 6D */	bl __construct_array
/* 80AD8CF8  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80AD8CFC  3C 80 80 AE */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80AD8FB4@ha */
/* 80AD8D00  38 84 8F B4 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80AD8FB4@l */
/* 80AD8D04  3C A0 80 AE */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80AD8F78@ha */
/* 80AD8D08  38 A5 8F 78 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80AD8F78@l */
/* 80AD8D0C  38 C0 00 08 */	li r6, 8
/* 80AD8D10  38 E0 00 04 */	li r7, 4
/* 80AD8D14  4B 88 90 4D */	bl __construct_array
/* 80AD8D18  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80AD8D1C  3C 80 80 AE */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80AD8F60@ha */
/* 80AD8D20  38 84 8F 60 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80AD8F60@l */
/* 80AD8D24  3C A0 80 AE */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80AD8F24@ha */
/* 80AD8D28  38 A5 8F 24 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80AD8F24@l */
/* 80AD8D2C  38 C0 00 08 */	li r6, 8
/* 80AD8D30  38 E0 00 04 */	li r7, 4
/* 80AD8D34  4B 88 90 2D */	bl __construct_array
/* 80AD8D38  7F A3 EB 78 */	mr r3, r29
/* 80AD8D3C  4B 85 35 E5 */	bl initialize__14J3DMaterialAnmFv
/* 80AD8D40  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 80AD8D44  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 80AD8D48  90 1C 00 00 */	stw r0, 0(r28)
/* 80AD8D4C  7F 83 E3 78 */	mr r3, r28
/* 80AD8D50  4B 67 79 E9 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_80AD8D54:
/* 80AD8D54  93 BE 0B E0 */	stw r29, 0xbe0(r30)
/* 80AD8D58  80 1E 0B E0 */	lwz r0, 0xbe0(r30)
/* 80AD8D5C  28 00 00 00 */	cmplwi r0, 0
/* 80AD8D60  40 82 00 0C */	bne lbl_80AD8D6C
/* 80AD8D64  38 60 00 00 */	li r3, 0
/* 80AD8D68  48 00 01 A4 */	b lbl_80AD8F0C
lbl_80AD8D6C:
/* 80AD8D6C  38 00 00 00 */	li r0, 0
/* 80AD8D70  90 1E 0B 48 */	stw r0, 0xb48(r30)
/* 80AD8D74  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80AD8D78  28 00 00 01 */	cmplwi r0, 1
/* 80AD8D7C  41 82 00 0C */	beq lbl_80AD8D88
/* 80AD8D80  28 00 00 02 */	cmplwi r0, 2
/* 80AD8D84  40 82 00 70 */	bne lbl_80AD8DF4
lbl_80AD8D88:
/* 80AD8D88  3C 60 80 AE */	lis r3, l_arcNames@ha /* 0x80AE28E0@ha */
/* 80AD8D8C  38 63 28 E0 */	addi r3, r3, l_arcNames@l /* 0x80AE28E0@l */
/* 80AD8D90  80 63 00 00 */	lwz r3, 0(r3)
/* 80AD8D94  38 80 00 10 */	li r4, 0x10
/* 80AD8D98  7F E5 FB 78 */	mr r5, r31
/* 80AD8D9C  38 C0 00 80 */	li r6, 0x80
/* 80AD8DA0  4B 56 35 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AD8DA4  3C 80 00 08 */	lis r4, 8
/* 80AD8DA8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AD8DAC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AD8DB0  4B 53 BE A5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AD8DB4  90 7E 0B 48 */	stw r3, 0xb48(r30)
/* 80AD8DB8  80 7E 0B 48 */	lwz r3, 0xb48(r30)
/* 80AD8DBC  28 03 00 00 */	cmplwi r3, 0
/* 80AD8DC0  40 82 00 0C */	bne lbl_80AD8DCC
/* 80AD8DC4  38 60 00 00 */	li r3, 0
/* 80AD8DC8  48 00 01 44 */	b lbl_80AD8F0C
lbl_80AD8DCC:
/* 80AD8DCC  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80AD8DD0  28 00 00 02 */	cmplwi r0, 2
/* 80AD8DD4  40 82 00 20 */	bne lbl_80AD8DF4
/* 80AD8DD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD8DDC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80AD8DE0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD8DE4  80 63 00 08 */	lwz r3, 8(r3)
/* 80AD8DE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AD8DEC  60 00 00 01 */	ori r0, r0, 1
/* 80AD8DF0  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80AD8DF4:
/* 80AD8DF4  38 00 00 00 */	li r0, 0
/* 80AD8DF8  90 1E 0B 4C */	stw r0, 0xb4c(r30)
/* 80AD8DFC  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80AD8E00  28 00 00 01 */	cmplwi r0, 1
/* 80AD8E04  40 82 00 48 */	bne lbl_80AD8E4C
/* 80AD8E08  3C 60 80 AE */	lis r3, l_arcNames@ha /* 0x80AE28E0@ha */
/* 80AD8E0C  38 63 28 E0 */	addi r3, r3, l_arcNames@l /* 0x80AE28E0@l */
/* 80AD8E10  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD8E14  38 80 00 22 */	li r4, 0x22
/* 80AD8E18  7F E5 FB 78 */	mr r5, r31
/* 80AD8E1C  38 C0 00 80 */	li r6, 0x80
/* 80AD8E20  4B 56 34 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AD8E24  3C 80 00 08 */	lis r4, 8
/* 80AD8E28  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AD8E2C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AD8E30  4B 53 BE 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AD8E34  90 7E 0B 4C */	stw r3, 0xb4c(r30)
/* 80AD8E38  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 80AD8E3C  28 00 00 00 */	cmplwi r0, 0
/* 80AD8E40  40 82 00 0C */	bne lbl_80AD8E4C
/* 80AD8E44  38 60 00 00 */	li r3, 0
/* 80AD8E48  48 00 00 C4 */	b lbl_80AD8F0C
lbl_80AD8E4C:
/* 80AD8E4C  7F C3 F3 78 */	mr r3, r30
/* 80AD8E50  38 80 00 01 */	li r4, 1
/* 80AD8E54  38 A0 00 00 */	li r5, 0
/* 80AD8E58  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AD8E5C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80AD8E60  7D 89 03 A6 */	mtctr r12
/* 80AD8E64  4E 80 04 21 */	bctrl 
/* 80AD8E68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD8E6C  40 82 00 0C */	bne lbl_80AD8E78
/* 80AD8E70  38 60 00 00 */	li r3, 0
/* 80AD8E74  48 00 00 98 */	b lbl_80AD8F0C
lbl_80AD8E78:
/* 80AD8E78  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80AD8E7C  2C 00 00 01 */	cmpwi r0, 1
/* 80AD8E80  41 82 00 44 */	beq lbl_80AD8EC4
/* 80AD8E84  40 80 00 10 */	bge lbl_80AD8E94
/* 80AD8E88  2C 00 00 00 */	cmpwi r0, 0
/* 80AD8E8C  40 80 00 14 */	bge lbl_80AD8EA0
/* 80AD8E90  48 00 00 78 */	b lbl_80AD8F08
lbl_80AD8E94:
/* 80AD8E94  2C 00 00 03 */	cmpwi r0, 3
/* 80AD8E98  40 80 00 70 */	bge lbl_80AD8F08
/* 80AD8E9C  48 00 00 4C */	b lbl_80AD8EE8
lbl_80AD8EA0:
/* 80AD8EA0  7F C3 F3 78 */	mr r3, r30
/* 80AD8EA4  38 80 00 16 */	li r4, 0x16
/* 80AD8EA8  3C A0 80 AE */	lis r5, lit_4498@ha /* 0x80AE206C@ha */
/* 80AD8EAC  C0 25 20 6C */	lfs f1, lit_4498@l(r5)  /* 0x80AE206C@l */
/* 80AD8EB0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AD8EB4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AD8EB8  7D 89 03 A6 */	mtctr r12
/* 80AD8EBC  4E 80 04 21 */	bctrl 
/* 80AD8EC0  48 00 00 48 */	b lbl_80AD8F08
lbl_80AD8EC4:
/* 80AD8EC4  7F C3 F3 78 */	mr r3, r30
/* 80AD8EC8  38 80 00 0D */	li r4, 0xd
/* 80AD8ECC  3C A0 80 AE */	lis r5, lit_4498@ha /* 0x80AE206C@ha */
/* 80AD8ED0  C0 25 20 6C */	lfs f1, lit_4498@l(r5)  /* 0x80AE206C@l */
/* 80AD8ED4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AD8ED8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AD8EDC  7D 89 03 A6 */	mtctr r12
/* 80AD8EE0  4E 80 04 21 */	bctrl 
/* 80AD8EE4  48 00 00 24 */	b lbl_80AD8F08
lbl_80AD8EE8:
/* 80AD8EE8  7F C3 F3 78 */	mr r3, r30
/* 80AD8EEC  38 80 00 1F */	li r4, 0x1f
/* 80AD8EF0  3C A0 80 AE */	lis r5, lit_4498@ha /* 0x80AE206C@ha */
/* 80AD8EF4  C0 25 20 6C */	lfs f1, lit_4498@l(r5)  /* 0x80AE206C@l */
/* 80AD8EF8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AD8EFC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AD8F00  7D 89 03 A6 */	mtctr r12
/* 80AD8F04  4E 80 04 21 */	bctrl 
lbl_80AD8F08:
/* 80AD8F08  38 60 00 01 */	li r3, 1
lbl_80AD8F0C:
/* 80AD8F0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD8F10  4B 88 93 15 */	bl _restgpr_28
/* 80AD8F14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD8F18  7C 08 03 A6 */	mtlr r0
/* 80AD8F1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD8F20  4E 80 00 20 */	blr 
