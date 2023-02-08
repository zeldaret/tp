lbl_80604D64:
/* 80604D64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80604D68  7C 08 02 A6 */	mflr r0
/* 80604D6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80604D70  39 61 00 30 */	addi r11, r1, 0x30
/* 80604D74  4B D5 D4 65 */	bl _savegpr_28
/* 80604D78  7C 7F 1B 78 */	mr r31, r3
/* 80604D7C  38 60 00 58 */	li r3, 0x58
/* 80604D80  4B CC 9E CD */	bl __nw__FUl
/* 80604D84  7C 7E 1B 79 */	or. r30, r3, r3
/* 80604D88  41 82 00 94 */	beq lbl_80604E1C
/* 80604D8C  3C 60 80 60 */	lis r3, d_a_b_gos__stringBase0@ha /* 0x80605414@ha */
/* 80604D90  38 63 54 14 */	addi r3, r3, d_a_b_gos__stringBase0@l /* 0x80605414@l */
/* 80604D94  38 80 00 06 */	li r4, 6
/* 80604D98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80604D9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80604DA0  3F 85 00 02 */	addis r28, r5, 2
/* 80604DA4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80604DA8  7F 85 E3 78 */	mr r5, r28
/* 80604DAC  38 C0 00 80 */	li r6, 0x80
/* 80604DB0  4B A3 75 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80604DB4  7C 7D 1B 78 */	mr r29, r3
/* 80604DB8  3C 60 80 60 */	lis r3, d_a_b_gos__stringBase0@ha /* 0x80605414@ha */
/* 80604DBC  38 63 54 14 */	addi r3, r3, d_a_b_gos__stringBase0@l /* 0x80605414@l */
/* 80604DC0  38 80 00 09 */	li r4, 9
/* 80604DC4  7F 85 E3 78 */	mr r5, r28
/* 80604DC8  38 C0 00 80 */	li r6, 0x80
/* 80604DCC  4B A3 75 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80604DD0  7C 64 1B 78 */	mr r4, r3
/* 80604DD4  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 80604DD8  90 01 00 08 */	stw r0, 8(r1)
/* 80604DDC  3C 00 00 08 */	lis r0, 8
/* 80604DE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80604DE4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80604DE8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80604DEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80604DF0  7F C3 F3 78 */	mr r3, r30
/* 80604DF4  38 A0 00 00 */	li r5, 0
/* 80604DF8  38 C0 00 00 */	li r6, 0
/* 80604DFC  7F A7 EB 78 */	mr r7, r29
/* 80604E00  39 00 00 02 */	li r8, 2
/* 80604E04  3D 20 80 60 */	lis r9, lit_3646@ha /* 0x806053C8@ha */
/* 80604E08  C0 29 53 C8 */	lfs f1, lit_3646@l(r9)  /* 0x806053C8@l */
/* 80604E0C  39 20 00 00 */	li r9, 0
/* 80604E10  39 40 FF FF */	li r10, -1
/* 80604E14  4B A0 B9 BD */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80604E18  7C 7E 1B 78 */	mr r30, r3
lbl_80604E1C:
/* 80604E1C  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 80604E20  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80604E24  28 03 00 00 */	cmplwi r3, 0
/* 80604E28  41 82 00 10 */	beq lbl_80604E38
/* 80604E2C  80 03 00 04 */	lwz r0, 4(r3)
/* 80604E30  28 00 00 00 */	cmplwi r0, 0
/* 80604E34  40 82 00 0C */	bne lbl_80604E40
lbl_80604E38:
/* 80604E38  38 60 00 00 */	li r3, 0
/* 80604E3C  48 00 00 08 */	b lbl_80604E44
lbl_80604E40:
/* 80604E40  38 60 00 01 */	li r3, 1
lbl_80604E44:
/* 80604E44  39 61 00 30 */	addi r11, r1, 0x30
/* 80604E48  4B D5 D3 DD */	bl _restgpr_28
/* 80604E4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80604E50  7C 08 03 A6 */	mtlr r0
/* 80604E54  38 21 00 30 */	addi r1, r1, 0x30
/* 80604E58  4E 80 00 20 */	blr 
