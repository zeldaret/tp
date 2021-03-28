lbl_80596B88:
/* 80596B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80596B8C  7C 08 02 A6 */	mflr r0
/* 80596B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80596B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80596B98  4B DC B6 38 */	b _savegpr_26
/* 80596B9C  7C 7E 1B 78 */	mr r30, r3
/* 80596BA0  88 03 0A F0 */	lbz r0, 0xaf0(r3)
/* 80596BA4  54 00 10 3A */	slwi r0, r0, 2
/* 80596BA8  3C 60 80 59 */	lis r3, l_arcName@ha
/* 80596BAC  38 63 7E 84 */	addi r3, r3, l_arcName@l
/* 80596BB0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80596BB4  3C 80 80 59 */	lis r4, l_brgBmdIdx@ha
/* 80596BB8  38 84 7D 7C */	addi r4, r4, l_brgBmdIdx@l
/* 80596BBC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80596BC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80596BC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80596BC8  3F E5 00 02 */	addis r31, r5, 2
/* 80596BCC  3B FF C2 F8 */	addi r31, r31, -15624
/* 80596BD0  7F E5 FB 78 */	mr r5, r31
/* 80596BD4  38 C0 00 80 */	li r6, 0x80
/* 80596BD8  4B AA 57 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80596BDC  3C 80 00 08 */	lis r4, 8
/* 80596BE0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80596BE4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80596BE8  4B A7 E0 6C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80596BEC  90 7E 05 B0 */	stw r3, 0x5b0(r30)
/* 80596BF0  80 1E 05 B0 */	lwz r0, 0x5b0(r30)
/* 80596BF4  28 00 00 00 */	cmplwi r0, 0
/* 80596BF8  40 82 00 0C */	bne lbl_80596C04
/* 80596BFC  38 60 00 00 */	li r3, 0
/* 80596C00  48 00 01 D0 */	b lbl_80596DD0
lbl_80596C04:
/* 80596C04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80596C08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80596C0C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80596C10  54 04 46 3E */	srwi r4, r0, 0x18
/* 80596C14  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80596C18  7C 05 07 74 */	extsb r5, r0
/* 80596C1C  4B A9 E7 44 */	b isSwitch__10dSv_info_cCFii
/* 80596C20  2C 03 00 00 */	cmpwi r3, 0
/* 80596C24  40 82 00 48 */	bne lbl_80596C6C
/* 80596C28  3C 60 80 59 */	lis r3, l_ropeArcName@ha
/* 80596C2C  38 63 7E 8C */	addi r3, r3, l_ropeArcName@l
/* 80596C30  80 63 00 00 */	lwz r3, 0(r3)
/* 80596C34  38 80 00 04 */	li r4, 4
/* 80596C38  7F E5 FB 78 */	mr r5, r31
/* 80596C3C  38 C0 00 80 */	li r6, 0x80
/* 80596C40  4B AA 56 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80596C44  3C 80 00 08 */	lis r4, 8
/* 80596C48  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80596C4C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80596C50  4B A7 E0 04 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80596C54  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 80596C58  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 80596C5C  28 00 00 00 */	cmplwi r0, 0
/* 80596C60  40 82 00 14 */	bne lbl_80596C74
/* 80596C64  38 60 00 00 */	li r3, 0
/* 80596C68  48 00 01 68 */	b lbl_80596DD0
lbl_80596C6C:
/* 80596C6C  38 00 00 00 */	li r0, 0
/* 80596C70  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80596C74:
/* 80596C74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80596C78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80596C7C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80596C80  54 04 46 3E */	srwi r4, r0, 0x18
/* 80596C84  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80596C88  7C 05 07 74 */	extsb r5, r0
/* 80596C8C  4B A9 E6 D4 */	b isSwitch__10dSv_info_cCFii
/* 80596C90  2C 03 00 00 */	cmpwi r3, 0
/* 80596C94  40 82 01 18 */	bne lbl_80596DAC
/* 80596C98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80596C9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80596CA0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80596CA4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80596CA8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80596CAC  7C 05 07 74 */	extsb r5, r0
/* 80596CB0  4B A9 E6 B0 */	b isSwitch__10dSv_info_cCFii
/* 80596CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80596CB8  40 82 00 F4 */	bne lbl_80596DAC
/* 80596CBC  38 00 00 0A */	li r0, 0xa
/* 80596CC0  98 1E 0A F1 */	stb r0, 0xaf1(r30)
/* 80596CC4  8B 9E 0A F1 */	lbz r28, 0xaf1(r30)
/* 80596CC8  1C 7C 00 0C */	mulli r3, r28, 0xc
/* 80596CCC  38 63 00 10 */	addi r3, r3, 0x10
/* 80596CD0  4B D3 7F F4 */	b __nwa__FUl
/* 80596CD4  3C 80 80 59 */	lis r4, __ct__4cXyzFv@ha
/* 80596CD8  38 84 6D E8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80596CDC  3C A0 80 59 */	lis r5, __dt__4cXyzFv@ha
/* 80596CE0  38 A5 61 30 */	addi r5, r5, __dt__4cXyzFv@l
/* 80596CE4  38 C0 00 0C */	li r6, 0xc
/* 80596CE8  7F 87 E3 78 */	mr r7, r28
/* 80596CEC  4B DC B2 28 */	b __construct_new_array
/* 80596CF0  90 7E 0B 04 */	stw r3, 0xb04(r30)
/* 80596CF4  80 1E 0B 04 */	lwz r0, 0xb04(r30)
/* 80596CF8  28 00 00 00 */	cmplwi r0, 0
/* 80596CFC  40 82 00 0C */	bne lbl_80596D08
/* 80596D00  38 60 00 00 */	li r3, 0
/* 80596D04  48 00 00 CC */	b lbl_80596DD0
lbl_80596D08:
/* 80596D08  3B 40 00 00 */	li r26, 0
/* 80596D0C  3B A0 00 00 */	li r29, 0
/* 80596D10  3C 60 80 59 */	lis r3, l_ropeArcName@ha
/* 80596D14  3B 83 7E 8C */	addi r28, r3, l_ropeArcName@l
lbl_80596D18:
/* 80596D18  38 60 00 3C */	li r3, 0x3c
/* 80596D1C  4B D3 7F 30 */	b __nw__FUl
/* 80596D20  28 03 00 00 */	cmplwi r3, 0
/* 80596D24  41 82 00 1C */	beq lbl_80596D40
/* 80596D28  3C 80 80 5A */	lis r4, __vt__18mDoExt_3DlineMat_c@ha
/* 80596D2C  38 04 80 BC */	addi r0, r4, __vt__18mDoExt_3DlineMat_c@l
/* 80596D30  90 03 00 00 */	stw r0, 0(r3)
/* 80596D34  3C 80 80 3A */	lis r4, __vt__19mDoExt_3DlineMat1_c@ha
/* 80596D38  38 04 32 48 */	addi r0, r4, __vt__19mDoExt_3DlineMat1_c@l
/* 80596D3C  90 03 00 00 */	stw r0, 0(r3)
lbl_80596D40:
/* 80596D40  3B 7D 0A FC */	addi r27, r29, 0xafc
/* 80596D44  7C 7E D9 2E */	stwx r3, r30, r27
/* 80596D48  7C 1E D8 2E */	lwzx r0, r30, r27
/* 80596D4C  28 00 00 00 */	cmplwi r0, 0
/* 80596D50  40 82 00 0C */	bne lbl_80596D5C
/* 80596D54  38 60 00 00 */	li r3, 0
/* 80596D58  48 00 00 78 */	b lbl_80596DD0
lbl_80596D5C:
/* 80596D5C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80596D60  38 80 00 07 */	li r4, 7
/* 80596D64  7F E5 FB 78 */	mr r5, r31
/* 80596D68  38 C0 00 80 */	li r6, 0x80
/* 80596D6C  4B AA 55 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80596D70  7C 66 1B 78 */	mr r6, r3
/* 80596D74  7C 7E D8 2E */	lwzx r3, r30, r27
/* 80596D78  38 80 00 01 */	li r4, 1
/* 80596D7C  88 BE 0A F1 */	lbz r5, 0xaf1(r30)
/* 80596D80  38 E0 00 01 */	li r7, 1
/* 80596D84  4B A7 C5 DC */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80596D88  2C 03 00 00 */	cmpwi r3, 0
/* 80596D8C  40 82 00 0C */	bne lbl_80596D98
/* 80596D90  38 60 00 00 */	li r3, 0
/* 80596D94  48 00 00 3C */	b lbl_80596DD0
lbl_80596D98:
/* 80596D98  3B 5A 00 01 */	addi r26, r26, 1
/* 80596D9C  2C 1A 00 02 */	cmpwi r26, 2
/* 80596DA0  3B BD 00 04 */	addi r29, r29, 4
/* 80596DA4  41 80 FF 74 */	blt lbl_80596D18
/* 80596DA8  48 00 00 24 */	b lbl_80596DCC
lbl_80596DAC:
/* 80596DAC  38 60 00 00 */	li r3, 0
/* 80596DB0  38 80 00 00 */	li r4, 0
/* 80596DB4  38 00 00 02 */	li r0, 2
/* 80596DB8  7C 09 03 A6 */	mtctr r0
lbl_80596DBC:
/* 80596DBC  38 03 0A FC */	addi r0, r3, 0xafc
/* 80596DC0  7C 9E 01 2E */	stwx r4, r30, r0
/* 80596DC4  38 63 00 04 */	addi r3, r3, 4
/* 80596DC8  42 00 FF F4 */	bdnz lbl_80596DBC
lbl_80596DCC:
/* 80596DCC  38 60 00 01 */	li r3, 1
lbl_80596DD0:
/* 80596DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80596DD4  4B DC B4 48 */	b _restgpr_26
/* 80596DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80596DDC  7C 08 03 A6 */	mtlr r0
/* 80596DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80596DE4  4E 80 00 20 */	blr 
