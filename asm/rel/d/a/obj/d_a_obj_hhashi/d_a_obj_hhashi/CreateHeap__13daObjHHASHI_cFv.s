lbl_80580DA4:
/* 80580DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80580DA8  7C 08 02 A6 */	mflr r0
/* 80580DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80580DB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80580DB4  4B DE 14 1D */	bl _savegpr_26
/* 80580DB8  7C 7F 1B 78 */	mr r31, r3
/* 80580DBC  3C 60 80 58 */	lis r3, l_arcName@ha /* 0x805815E4@ha */
/* 80580DC0  38 63 15 E4 */	addi r3, r3, l_arcName@l /* 0x805815E4@l */
/* 80580DC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80580DC8  3C 80 80 58 */	lis r4, d_a_obj_hhashi__stringBase0@ha /* 0x805815AC@ha */
/* 80580DCC  38 84 15 AC */	addi r4, r4, d_a_obj_hhashi__stringBase0@l /* 0x805815AC@l */
/* 80580DD0  38 84 00 09 */	addi r4, r4, 9
/* 80580DD4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80580DD8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80580DDC  3F A5 00 02 */	addis r29, r5, 2
/* 80580DE0  3B BD C2 F8 */	addi r29, r29, -15624
/* 80580DE4  7F A5 EB 78 */	mr r5, r29
/* 80580DE8  38 C0 00 80 */	li r6, 0x80
/* 80580DEC  4B AB B5 91 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80580DF0  7C 7C 1B 78 */	mr r28, r3
/* 80580DF4  3C 60 80 58 */	lis r3, l_arcName@ha /* 0x805815E4@ha */
/* 80580DF8  38 63 15 E4 */	addi r3, r3, l_arcName@l /* 0x805815E4@l */
/* 80580DFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80580E00  3C 80 80 58 */	lis r4, d_a_obj_hhashi__stringBase0@ha /* 0x805815AC@ha */
/* 80580E04  38 84 15 AC */	addi r4, r4, d_a_obj_hhashi__stringBase0@l /* 0x805815AC@l */
/* 80580E08  38 84 00 18 */	addi r4, r4, 0x18
/* 80580E0C  7F A5 EB 78 */	mr r5, r29
/* 80580E10  38 C0 00 80 */	li r6, 0x80
/* 80580E14  4B AB B5 69 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80580E18  7C 7B 1B 78 */	mr r27, r3
/* 80580E1C  3B 40 00 00 */	li r26, 0
/* 80580E20  3B C0 00 00 */	li r30, 0
/* 80580E24  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_80580E28:
/* 80580E28  7F 63 DB 78 */	mr r3, r27
/* 80580E2C  3C 80 00 02 */	lis r4, 2
/* 80580E30  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 80580E34  4B A9 3E 21 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80580E38  38 1E 0F 50 */	addi r0, r30, 0xf50
/* 80580E3C  7C 7F 01 2E */	stwx r3, r31, r0
/* 80580E40  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80580E44  28 00 00 00 */	cmplwi r0, 0
/* 80580E48  40 82 00 0C */	bne lbl_80580E54
/* 80580E4C  38 60 00 00 */	li r3, 0
/* 80580E50  48 00 00 38 */	b lbl_80580E88
lbl_80580E54:
/* 80580E54  3B 5A 00 01 */	addi r26, r26, 1
/* 80580E58  2C 1A 00 32 */	cmpwi r26, 0x32
/* 80580E5C  3B DE 00 04 */	addi r30, r30, 4
/* 80580E60  41 80 FF C8 */	blt lbl_80580E28
/* 80580E64  7F 83 E3 78 */	mr r3, r28
/* 80580E68  3C 80 00 08 */	lis r4, 8
/* 80580E6C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80580E70  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80580E74  4B A9 3D E1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80580E78  90 7F 0F 4C */	stw r3, 0xf4c(r31)
/* 80580E7C  80 7F 0F 4C */	lwz r3, 0xf4c(r31)
/* 80580E80  30 03 FF FF */	addic r0, r3, -1
/* 80580E84  7C 60 19 10 */	subfe r3, r0, r3
lbl_80580E88:
/* 80580E88  39 61 00 20 */	addi r11, r1, 0x20
/* 80580E8C  4B DE 13 91 */	bl _restgpr_26
/* 80580E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80580E94  7C 08 03 A6 */	mtlr r0
/* 80580E98  38 21 00 20 */	addi r1, r1, 0x20
/* 80580E9C  4E 80 00 20 */	blr 
