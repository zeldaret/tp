lbl_80BC5CF8:
/* 80BC5CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC5CFC  7C 08 02 A6 */	mflr r0
/* 80BC5D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC5D04  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC5D08  4B 79 C4 C8 */	b _savegpr_26
/* 80BC5D0C  7C 7F 1B 78 */	mr r31, r3
/* 80BC5D10  3C 60 80 BC */	lis r3, l_arcName@ha
/* 80BC5D14  38 63 6A F4 */	addi r3, r3, l_arcName@l
/* 80BC5D18  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC5D1C  38 80 00 04 */	li r4, 4
/* 80BC5D20  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BC5D24  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BC5D28  3F A5 00 02 */	addis r29, r5, 2
/* 80BC5D2C  3B BD C2 F8 */	addi r29, r29, -15624
/* 80BC5D30  7F A5 EB 78 */	mr r5, r29
/* 80BC5D34  38 C0 00 80 */	li r6, 0x80
/* 80BC5D38  4B 47 65 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC5D3C  3C 80 00 08 */	lis r4, 8
/* 80BC5D40  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC5D44  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC5D48  4B 44 EF 0C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC5D4C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BC5D50  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80BC5D54  28 00 00 00 */	cmplwi r0, 0
/* 80BC5D58  40 82 00 0C */	bne lbl_80BC5D64
/* 80BC5D5C  38 60 00 00 */	li r3, 0
/* 80BC5D60  48 00 00 E0 */	b lbl_80BC5E40
lbl_80BC5D64:
/* 80BC5D64  38 60 00 70 */	li r3, 0x70
/* 80BC5D68  4B 70 8F 5C */	b __nwa__FUl
/* 80BC5D6C  3C 80 80 BC */	lis r4, __ct__Q211daObjCBlk_c7chain_sFv@ha
/* 80BC5D70  38 84 5E 94 */	addi r4, r4, __ct__Q211daObjCBlk_c7chain_sFv@l
/* 80BC5D74  3C A0 80 BC */	lis r5, __dt__Q211daObjCBlk_c7chain_sFv@ha
/* 80BC5D78  38 A5 5E 58 */	addi r5, r5, __dt__Q211daObjCBlk_c7chain_sFv@l
/* 80BC5D7C  38 C0 00 10 */	li r6, 0x10
/* 80BC5D80  38 E0 00 06 */	li r7, 6
/* 80BC5D84  4B 79 C1 90 */	b __construct_new_array
/* 80BC5D88  90 7F 0C 18 */	stw r3, 0xc18(r31)
/* 80BC5D8C  80 1F 0C 18 */	lwz r0, 0xc18(r31)
/* 80BC5D90  28 00 00 00 */	cmplwi r0, 0
/* 80BC5D94  40 82 00 0C */	bne lbl_80BC5DA0
/* 80BC5D98  38 60 00 00 */	li r3, 0
/* 80BC5D9C  48 00 00 A4 */	b lbl_80BC5E40
lbl_80BC5DA0:
/* 80BC5DA0  3C 60 80 BC */	lis r3, l_arcName@ha
/* 80BC5DA4  38 63 6A F4 */	addi r3, r3, l_arcName@l
/* 80BC5DA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC5DAC  38 80 00 05 */	li r4, 5
/* 80BC5DB0  7F A5 EB 78 */	mr r5, r29
/* 80BC5DB4  38 C0 00 80 */	li r6, 0x80
/* 80BC5DB8  4B 47 65 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC5DBC  7C 7C 1B 78 */	mr r28, r3
/* 80BC5DC0  83 7F 0C 18 */	lwz r27, 0xc18(r31)
/* 80BC5DC4  3B 40 00 00 */	li r26, 0
/* 80BC5DC8  3F C0 11 00 */	lis r30, 0x1100 /* 0x11000084@ha */
lbl_80BC5DCC:
/* 80BC5DCC  7F 83 E3 78 */	mr r3, r28
/* 80BC5DD0  3C 80 00 08 */	lis r4, 8
/* 80BC5DD4  38 BE 00 84 */	addi r5, r30, 0x0084 /* 0x11000084@l */
/* 80BC5DD8  4B 44 EE 7C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC5DDC  90 7B 00 00 */	stw r3, 0(r27)
/* 80BC5DE0  80 1B 00 00 */	lwz r0, 0(r27)
/* 80BC5DE4  28 00 00 00 */	cmplwi r0, 0
/* 80BC5DE8  40 82 00 0C */	bne lbl_80BC5DF4
/* 80BC5DEC  38 60 00 00 */	li r3, 0
/* 80BC5DF0  48 00 00 50 */	b lbl_80BC5E40
lbl_80BC5DF4:
/* 80BC5DF4  3B 5A 00 01 */	addi r26, r26, 1
/* 80BC5DF8  2C 1A 00 06 */	cmpwi r26, 6
/* 80BC5DFC  3B 7B 00 10 */	addi r27, r27, 0x10
/* 80BC5E00  41 80 FF CC */	blt lbl_80BC5DCC
/* 80BC5E04  3C 60 80 BC */	lis r3, l_arcName@ha
/* 80BC5E08  38 63 6A F4 */	addi r3, r3, l_arcName@l
/* 80BC5E0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC5E10  38 80 00 06 */	li r4, 6
/* 80BC5E14  7F A5 EB 78 */	mr r5, r29
/* 80BC5E18  38 C0 00 80 */	li r6, 0x80
/* 80BC5E1C  4B 47 64 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC5E20  3C 80 00 08 */	lis r4, 8
/* 80BC5E24  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC5E28  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC5E2C  4B 44 EE 28 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC5E30  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80BC5E34  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BC5E38  30 03 FF FF */	addic r0, r3, -1
/* 80BC5E3C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80BC5E40:
/* 80BC5E40  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC5E44  4B 79 C3 D8 */	b _restgpr_26
/* 80BC5E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC5E4C  7C 08 03 A6 */	mtlr r0
/* 80BC5E50  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC5E54  4E 80 00 20 */	blr 
