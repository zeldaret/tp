lbl_80C63CFC:
/* 80C63CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C63D00  7C 08 02 A6 */	mflr r0
/* 80C63D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C63D08  39 61 00 20 */	addi r11, r1, 0x20
/* 80C63D0C  4B 6F E4 D0 */	b _savegpr_29
/* 80C63D10  7C 7E 1B 78 */	mr r30, r3
/* 80C63D14  3C 60 80 C6 */	lis r3, l_arcName@ha
/* 80C63D18  38 63 69 90 */	addi r3, r3, l_arcName@l
/* 80C63D1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C63D20  3C 80 80 C6 */	lis r4, l_bmdidx@ha
/* 80C63D24  38 84 68 60 */	addi r4, r4, l_bmdidx@l
/* 80C63D28  80 84 00 00 */	lwz r4, 0(r4)
/* 80C63D2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C63D30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C63D34  3F E5 00 02 */	addis r31, r5, 2
/* 80C63D38  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C63D3C  7F E5 FB 78 */	mr r5, r31
/* 80C63D40  38 C0 00 80 */	li r6, 0x80
/* 80C63D44  4B 3D 85 A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C63D48  3C 80 00 08 */	lis r4, 8
/* 80C63D4C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C63D50  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C63D54  4B 3B 0F 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C63D58  90 7E 06 08 */	stw r3, 0x608(r30)
/* 80C63D5C  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 80C63D60  28 00 00 00 */	cmplwi r0, 0
/* 80C63D64  40 82 00 0C */	bne lbl_80C63D70
/* 80C63D68  38 60 00 00 */	li r3, 0
/* 80C63D6C  48 00 01 B0 */	b lbl_80C63F1C
lbl_80C63D70:
/* 80C63D70  83 BE 06 10 */	lwz r29, 0x610(r30)
/* 80C63D74  1C 7D 00 28 */	mulli r3, r29, 0x28
/* 80C63D78  38 63 00 10 */	addi r3, r3, 0x10
/* 80C63D7C  4B 66 AF 48 */	b __nwa__FUl
/* 80C63D80  3C 80 80 C6 */	lis r4, __ct__Q214daObjLv4Chan_c8ChainPosFv@ha
/* 80C63D84  38 84 65 A0 */	addi r4, r4, __ct__Q214daObjLv4Chan_c8ChainPosFv@l
/* 80C63D88  3C A0 80 C6 */	lis r5, __dt__Q214daObjLv4Chan_c8ChainPosFv@ha
/* 80C63D8C  38 A5 65 64 */	addi r5, r5, __dt__Q214daObjLv4Chan_c8ChainPosFv@l
/* 80C63D90  38 C0 00 28 */	li r6, 0x28
/* 80C63D94  7F A7 EB 78 */	mr r7, r29
/* 80C63D98  4B 6F E1 7C */	b __construct_new_array
/* 80C63D9C  90 7E 06 1C */	stw r3, 0x61c(r30)
/* 80C63DA0  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C63DA4  28 00 00 00 */	cmplwi r0, 0
/* 80C63DA8  40 82 00 0C */	bne lbl_80C63DB4
/* 80C63DAC  38 60 00 00 */	li r3, 0
/* 80C63DB0  48 00 01 6C */	b lbl_80C63F1C
lbl_80C63DB4:
/* 80C63DB4  83 BE 06 14 */	lwz r29, 0x614(r30)
/* 80C63DB8  1C 7D 00 28 */	mulli r3, r29, 0x28
/* 80C63DBC  38 63 00 10 */	addi r3, r3, 0x10
/* 80C63DC0  4B 66 AF 04 */	b __nwa__FUl
/* 80C63DC4  3C 80 80 C6 */	lis r4, __ct__Q214daObjLv4Chan_c8ChainPosFv@ha
/* 80C63DC8  38 84 65 A0 */	addi r4, r4, __ct__Q214daObjLv4Chan_c8ChainPosFv@l
/* 80C63DCC  3C A0 80 C6 */	lis r5, __dt__Q214daObjLv4Chan_c8ChainPosFv@ha
/* 80C63DD0  38 A5 65 64 */	addi r5, r5, __dt__Q214daObjLv4Chan_c8ChainPosFv@l
/* 80C63DD4  38 C0 00 28 */	li r6, 0x28
/* 80C63DD8  7F A7 EB 78 */	mr r7, r29
/* 80C63DDC  4B 6F E1 38 */	b __construct_new_array
/* 80C63DE0  90 7E 06 20 */	stw r3, 0x620(r30)
/* 80C63DE4  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C63DE8  28 00 00 00 */	cmplwi r0, 0
/* 80C63DEC  40 82 00 0C */	bne lbl_80C63DF8
/* 80C63DF0  38 60 00 00 */	li r3, 0
/* 80C63DF4  48 00 01 28 */	b lbl_80C63F1C
lbl_80C63DF8:
/* 80C63DF8  83 BE 06 18 */	lwz r29, 0x618(r30)
/* 80C63DFC  1C 7D 00 28 */	mulli r3, r29, 0x28
/* 80C63E00  38 63 00 10 */	addi r3, r3, 0x10
/* 80C63E04  4B 66 AE C0 */	b __nwa__FUl
/* 80C63E08  3C 80 80 C6 */	lis r4, __ct__Q214daObjLv4Chan_c8ChainPosFv@ha
/* 80C63E0C  38 84 65 A0 */	addi r4, r4, __ct__Q214daObjLv4Chan_c8ChainPosFv@l
/* 80C63E10  3C A0 80 C6 */	lis r5, __dt__Q214daObjLv4Chan_c8ChainPosFv@ha
/* 80C63E14  38 A5 65 64 */	addi r5, r5, __dt__Q214daObjLv4Chan_c8ChainPosFv@l
/* 80C63E18  38 C0 00 28 */	li r6, 0x28
/* 80C63E1C  7F A7 EB 78 */	mr r7, r29
/* 80C63E20  4B 6F E0 F4 */	b __construct_new_array
/* 80C63E24  90 7E 06 24 */	stw r3, 0x624(r30)
/* 80C63E28  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 80C63E2C  28 00 00 00 */	cmplwi r0, 0
/* 80C63E30  40 82 00 0C */	bne lbl_80C63E3C
/* 80C63E34  38 60 00 00 */	li r3, 0
/* 80C63E38  48 00 00 E4 */	b lbl_80C63F1C
lbl_80C63E3C:
/* 80C63E3C  3C 60 80 C6 */	lis r3, l_arcName@ha
/* 80C63E40  38 63 69 90 */	addi r3, r3, l_arcName@l
/* 80C63E44  80 63 00 00 */	lwz r3, 0(r3)
/* 80C63E48  3C 80 80 C6 */	lis r4, l_bmdidx@ha
/* 80C63E4C  38 84 68 60 */	addi r4, r4, l_bmdidx@l
/* 80C63E50  80 84 00 04 */	lwz r4, 4(r4)
/* 80C63E54  7F E5 FB 78 */	mr r5, r31
/* 80C63E58  38 C0 00 80 */	li r6, 0x80
/* 80C63E5C  4B 3D 84 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C63E60  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 80C63E64  83 BE 06 28 */	lwz r29, 0x628(r30)
/* 80C63E68  1C 7D 00 34 */	mulli r3, r29, 0x34
/* 80C63E6C  38 63 00 10 */	addi r3, r3, 0x10
/* 80C63E70  4B 66 AE 54 */	b __nwa__FUl
/* 80C63E74  3C 80 80 C6 */	lis r4, __ct__10dMdl_obj_cFv@ha
/* 80C63E78  38 84 65 58 */	addi r4, r4, __ct__10dMdl_obj_cFv@l
/* 80C63E7C  38 A0 00 00 */	li r5, 0
/* 80C63E80  38 C0 00 34 */	li r6, 0x34
/* 80C63E84  7F A7 EB 78 */	mr r7, r29
/* 80C63E88  4B 6F E0 8C */	b __construct_new_array
/* 80C63E8C  90 7E 06 34 */	stw r3, 0x634(r30)
/* 80C63E90  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 80C63E94  28 00 00 00 */	cmplwi r0, 0
/* 80C63E98  40 82 00 0C */	bne lbl_80C63EA4
/* 80C63E9C  38 60 00 00 */	li r3, 0
/* 80C63EA0  48 00 00 7C */	b lbl_80C63F1C
lbl_80C63EA4:
/* 80C63EA4  83 BE 06 2C */	lwz r29, 0x62c(r30)
/* 80C63EA8  1C 7D 00 34 */	mulli r3, r29, 0x34
/* 80C63EAC  38 63 00 10 */	addi r3, r3, 0x10
/* 80C63EB0  4B 66 AE 14 */	b __nwa__FUl
/* 80C63EB4  3C 80 80 C6 */	lis r4, __ct__10dMdl_obj_cFv@ha
/* 80C63EB8  38 84 65 58 */	addi r4, r4, __ct__10dMdl_obj_cFv@l
/* 80C63EBC  38 A0 00 00 */	li r5, 0
/* 80C63EC0  38 C0 00 34 */	li r6, 0x34
/* 80C63EC4  7F A7 EB 78 */	mr r7, r29
/* 80C63EC8  4B 6F E0 4C */	b __construct_new_array
/* 80C63ECC  90 7E 06 38 */	stw r3, 0x638(r30)
/* 80C63ED0  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 80C63ED4  28 00 00 00 */	cmplwi r0, 0
/* 80C63ED8  40 82 00 0C */	bne lbl_80C63EE4
/* 80C63EDC  38 60 00 00 */	li r3, 0
/* 80C63EE0  48 00 00 3C */	b lbl_80C63F1C
lbl_80C63EE4:
/* 80C63EE4  83 BE 06 30 */	lwz r29, 0x630(r30)
/* 80C63EE8  1C 7D 00 34 */	mulli r3, r29, 0x34
/* 80C63EEC  38 63 00 10 */	addi r3, r3, 0x10
/* 80C63EF0  4B 66 AD D4 */	b __nwa__FUl
/* 80C63EF4  3C 80 80 C6 */	lis r4, __ct__10dMdl_obj_cFv@ha
/* 80C63EF8  38 84 65 58 */	addi r4, r4, __ct__10dMdl_obj_cFv@l
/* 80C63EFC  38 A0 00 00 */	li r5, 0
/* 80C63F00  38 C0 00 34 */	li r6, 0x34
/* 80C63F04  7F A7 EB 78 */	mr r7, r29
/* 80C63F08  4B 6F E0 0C */	b __construct_new_array
/* 80C63F0C  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 80C63F10  80 7E 06 3C */	lwz r3, 0x63c(r30)
/* 80C63F14  30 03 FF FF */	addic r0, r3, -1
/* 80C63F18  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C63F1C:
/* 80C63F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C63F20  4B 6F E3 08 */	b _restgpr_29
/* 80C63F24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C63F28  7C 08 03 A6 */	mtlr r0
/* 80C63F2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C63F30  4E 80 00 20 */	blr 
