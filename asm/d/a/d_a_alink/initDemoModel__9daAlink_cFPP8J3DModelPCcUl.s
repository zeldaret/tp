lbl_800A3F00:
/* 800A3F00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3F04  7C 08 02 A6 */	mflr r0
/* 800A3F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A3F0C  39 61 00 20 */	addi r11, r1, 0x20
/* 800A3F10  48 2B E2 CD */	bl _savegpr_29
/* 800A3F14  7C 7D 1B 78 */	mr r29, r3
/* 800A3F18  7C 9E 23 78 */	mr r30, r4
/* 800A3F1C  7C DF 33 78 */	mr r31, r6
/* 800A3F20  38 00 00 00 */	li r0, 0
/* 800A3F24  90 04 00 00 */	stw r0, 0(r4)
/* 800A3F28  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 800A3F2C  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 800A3F30  7C A4 2B 78 */	mr r4, r5
/* 800A3F34  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 800A3F38  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 800A3F3C  3C A5 00 02 */	addis r5, r5, 2
/* 800A3F40  38 C0 00 80 */	li r6, 0x80
/* 800A3F44  38 A5 C2 F8 */	addi r5, r5, -15624
/* 800A3F48  4B F9 84 35 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800A3F4C  7C 64 1B 79 */	or. r4, r3, r3
/* 800A3F50  41 82 00 2C */	beq lbl_800A3F7C
/* 800A3F54  7F A3 EB 78 */	mr r3, r29
/* 800A3F58  3C A0 00 08 */	lis r5, 8
/* 800A3F5C  7F E6 FB 78 */	mr r6, r31
/* 800A3F60  4B FF FE 1D */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 800A3F64  90 7E 00 00 */	stw r3, 0(r30)
/* 800A3F68  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A3F6C  28 00 00 00 */	cmplwi r0, 0
/* 800A3F70  40 82 00 0C */	bne lbl_800A3F7C
/* 800A3F74  38 60 00 00 */	li r3, 0
/* 800A3F78  48 00 00 08 */	b lbl_800A3F80
lbl_800A3F7C:
/* 800A3F7C  38 60 00 01 */	li r3, 1
lbl_800A3F80:
/* 800A3F80  39 61 00 20 */	addi r11, r1, 0x20
/* 800A3F84  48 2B E2 A5 */	bl _restgpr_29
/* 800A3F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3F8C  7C 08 03 A6 */	mtlr r0
/* 800A3F90  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3F94  4E 80 00 20 */	blr 
