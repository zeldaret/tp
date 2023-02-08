lbl_80BD6D08:
/* 80BD6D08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD6D0C  7C 08 02 A6 */	mflr r0
/* 80BD6D10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD6D14  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD6D18  4B 78 B4 B5 */	bl _savegpr_25
/* 80BD6D1C  7C 7D 1B 78 */	mr r29, r3
/* 80BD6D20  3C 60 80 BE */	lis r3, l_wallBmd@ha /* 0x80BD9FA4@ha */
/* 80BD6D24  3B E3 9F A4 */	addi r31, r3, l_wallBmd@l /* 0x80BD9FA4@l */
/* 80BD6D28  88 1D 0F 11 */	lbz r0, 0xf11(r29)
/* 80BD6D2C  54 00 10 3A */	slwi r0, r0, 2
/* 80BD6D30  3C 60 80 BE */	lis r3, l_arcName@ha /* 0x80BDA0E0@ha */
/* 80BD6D34  38 63 A0 E0 */	addi r3, r3, l_arcName@l /* 0x80BDA0E0@l */
/* 80BD6D38  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BD6D3C  38 9F 00 00 */	addi r4, r31, 0
/* 80BD6D40  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BD6D44  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD6D48  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD6D4C  3F C5 00 02 */	addis r30, r5, 2
/* 80BD6D50  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BD6D54  7F C5 F3 78 */	mr r5, r30
/* 80BD6D58  38 C0 00 80 */	li r6, 0x80
/* 80BD6D5C  4B 46 55 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BD6D60  3C 80 00 08 */	lis r4, 8
/* 80BD6D64  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BD6D68  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BD6D6C  4B 43 DE E9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD6D70  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80BD6D74  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80BD6D78  28 00 00 00 */	cmplwi r0, 0
/* 80BD6D7C  40 82 00 0C */	bne lbl_80BD6D88
/* 80BD6D80  38 60 00 00 */	li r3, 0
/* 80BD6D84  48 00 00 F8 */	b lbl_80BD6E7C
lbl_80BD6D88:
/* 80BD6D88  38 60 00 70 */	li r3, 0x70
/* 80BD6D8C  4B 6F 7F 39 */	bl __nwa__FUl
/* 80BD6D90  3C 80 80 BD */	lis r4, __ct__Q212daObjCwall_c7chain_sFv@ha /* 0x80BD6ED0@ha */
/* 80BD6D94  38 84 6E D0 */	addi r4, r4, __ct__Q212daObjCwall_c7chain_sFv@l /* 0x80BD6ED0@l */
/* 80BD6D98  3C A0 80 BD */	lis r5, __dt__Q212daObjCwall_c7chain_sFv@ha /* 0x80BD6E94@ha */
/* 80BD6D9C  38 A5 6E 94 */	addi r5, r5, __dt__Q212daObjCwall_c7chain_sFv@l /* 0x80BD6E94@l */
/* 80BD6DA0  38 C0 00 10 */	li r6, 0x10
/* 80BD6DA4  38 E0 00 06 */	li r7, 6
/* 80BD6DA8  4B 78 B1 6D */	bl __construct_new_array
/* 80BD6DAC  90 7D 0E 8C */	stw r3, 0xe8c(r29)
/* 80BD6DB0  80 1D 0E 8C */	lwz r0, 0xe8c(r29)
/* 80BD6DB4  28 00 00 00 */	cmplwi r0, 0
/* 80BD6DB8  40 82 00 0C */	bne lbl_80BD6DC4
/* 80BD6DBC  38 60 00 00 */	li r3, 0
/* 80BD6DC0  48 00 00 BC */	b lbl_80BD6E7C
lbl_80BD6DC4:
/* 80BD6DC4  88 1D 0F 11 */	lbz r0, 0xf11(r29)
/* 80BD6DC8  54 00 10 3A */	slwi r0, r0, 2
/* 80BD6DCC  3C 60 80 BE */	lis r3, l_arcName@ha /* 0x80BDA0E0@ha */
/* 80BD6DD0  38 63 A0 E0 */	addi r3, r3, l_arcName@l /* 0x80BDA0E0@l */
/* 80BD6DD4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BD6DD8  38 9F 00 08 */	addi r4, r31, 8
/* 80BD6DDC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BD6DE0  7F C5 F3 78 */	mr r5, r30
/* 80BD6DE4  38 C0 00 80 */	li r6, 0x80
/* 80BD6DE8  4B 46 55 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BD6DEC  7C 7B 1B 78 */	mr r27, r3
/* 80BD6DF0  83 5D 0E 8C */	lwz r26, 0xe8c(r29)
/* 80BD6DF4  3B 20 00 00 */	li r25, 0
/* 80BD6DF8  3F 80 11 00 */	lis r28, 0x1100 /* 0x11000084@ha */
lbl_80BD6DFC:
/* 80BD6DFC  7F 63 DB 78 */	mr r3, r27
/* 80BD6E00  3C 80 00 08 */	lis r4, 8
/* 80BD6E04  38 BC 00 84 */	addi r5, r28, 0x0084 /* 0x11000084@l */
/* 80BD6E08  4B 43 DE 4D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD6E0C  90 7A 00 00 */	stw r3, 0(r26)
/* 80BD6E10  80 1A 00 00 */	lwz r0, 0(r26)
/* 80BD6E14  28 00 00 00 */	cmplwi r0, 0
/* 80BD6E18  40 82 00 0C */	bne lbl_80BD6E24
/* 80BD6E1C  38 60 00 00 */	li r3, 0
/* 80BD6E20  48 00 00 5C */	b lbl_80BD6E7C
lbl_80BD6E24:
/* 80BD6E24  3B 39 00 01 */	addi r25, r25, 1
/* 80BD6E28  2C 19 00 06 */	cmpwi r25, 6
/* 80BD6E2C  3B 5A 00 10 */	addi r26, r26, 0x10
/* 80BD6E30  41 80 FF CC */	blt lbl_80BD6DFC
/* 80BD6E34  88 1D 0F 11 */	lbz r0, 0xf11(r29)
/* 80BD6E38  54 00 10 3A */	slwi r0, r0, 2
/* 80BD6E3C  3C 60 80 BE */	lis r3, l_arcName@ha /* 0x80BDA0E0@ha */
/* 80BD6E40  38 63 A0 E0 */	addi r3, r3, l_arcName@l /* 0x80BDA0E0@l */
/* 80BD6E44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BD6E48  38 9F 00 10 */	addi r4, r31, 0x10
/* 80BD6E4C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BD6E50  7F C5 F3 78 */	mr r5, r30
/* 80BD6E54  38 C0 00 80 */	li r6, 0x80
/* 80BD6E58  4B 46 54 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BD6E5C  3C 80 00 08 */	lis r4, 8
/* 80BD6E60  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BD6E64  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BD6E68  4B 43 DD ED */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD6E6C  90 7D 0E 88 */	stw r3, 0xe88(r29)
/* 80BD6E70  80 7D 0E 88 */	lwz r3, 0xe88(r29)
/* 80BD6E74  30 03 FF FF */	addic r0, r3, -1
/* 80BD6E78  7C 60 19 10 */	subfe r3, r0, r3
lbl_80BD6E7C:
/* 80BD6E7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD6E80  4B 78 B3 99 */	bl _restgpr_25
/* 80BD6E84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD6E88  7C 08 03 A6 */	mtlr r0
/* 80BD6E8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD6E90  4E 80 00 20 */	blr 
