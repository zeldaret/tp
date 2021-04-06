lbl_80C47EA8:
/* 80C47EA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C47EAC  7C 08 02 A6 */	mflr r0
/* 80C47EB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C47EB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C47EB8  4B 71 A3 25 */	bl _savegpr_29
/* 80C47EBC  7C 7E 1B 78 */	mr r30, r3
/* 80C47EC0  3C 60 80 C5 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C49E60@ha */
/* 80C47EC4  3B E3 9E 60 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C49E60@l */
/* 80C47EC8  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C47ECC  54 00 10 3A */	slwi r0, r0, 2
/* 80C47ED0  38 7F 00 20 */	addi r3, r31, 0x20
/* 80C47ED4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C47ED8  3C 80 80 C5 */	lis r4, l_bmd@ha /* 0x80C49CA8@ha */
/* 80C47EDC  38 84 9C A8 */	addi r4, r4, l_bmd@l /* 0x80C49CA8@l */
/* 80C47EE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C47EE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C47EE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C47EEC  3F A5 00 02 */	addis r29, r5, 2
/* 80C47EF0  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C47EF4  7F A5 EB 78 */	mr r5, r29
/* 80C47EF8  38 C0 00 80 */	li r6, 0x80
/* 80C47EFC  4B 3F 43 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C47F00  3C 80 00 08 */	lis r4, 8
/* 80C47F04  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C47F08  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C47F0C  4B 3C CD 49 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C47F10  90 7E 05 B0 */	stw r3, 0x5b0(r30)
/* 80C47F14  80 1E 05 B0 */	lwz r0, 0x5b0(r30)
/* 80C47F18  28 00 00 00 */	cmplwi r0, 0
/* 80C47F1C  40 82 00 0C */	bne lbl_80C47F28
/* 80C47F20  38 60 00 00 */	li r3, 0
/* 80C47F24  48 00 00 CC */	b lbl_80C47FF0
lbl_80C47F28:
/* 80C47F28  88 BE 05 EA */	lbz r5, 0x5ea(r30)
/* 80C47F2C  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 80C47F30  38 7F 00 84 */	addi r3, r31, 0x84
/* 80C47F34  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C47F38  28 03 00 00 */	cmplwi r3, 0
/* 80C47F3C  41 82 00 B0 */	beq lbl_80C47FEC
/* 80C47F40  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C47F44  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C47F48  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80C47F4C  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80C47F50  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C47F54  54 A4 0D FC */	rlwinm r4, r5, 1, 0x17, 0x1e
/* 80C47F58  41 82 00 08 */	beq lbl_80C47F60
/* 80C47F5C  38 84 00 01 */	addi r4, r4, 1
lbl_80C47F60:
/* 80C47F60  54 80 10 3A */	slwi r0, r4, 2
/* 80C47F64  38 9F 00 34 */	addi r4, r31, 0x34
/* 80C47F68  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C47F6C  7F A5 EB 78 */	mr r5, r29
/* 80C47F70  38 C0 00 80 */	li r6, 0x80
/* 80C47F74  4B 3F 44 09 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C47F78  7C 7D 1B 78 */	mr r29, r3
/* 80C47F7C  38 60 00 1C */	li r3, 0x1c
/* 80C47F80  4B 68 6C CD */	bl __nw__FUl
/* 80C47F84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C47F88  41 82 00 20 */	beq lbl_80C47FA8
/* 80C47F8C  3C 80 80 C5 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C4A0B0@ha */
/* 80C47F90  38 04 A0 B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C4A0B0@l */
/* 80C47F94  90 1F 00 00 */	stw r0, 0(r31)
/* 80C47F98  38 80 00 00 */	li r4, 0
/* 80C47F9C  4B 6E 04 61 */	bl init__12J3DFrameCtrlFs
/* 80C47FA0  38 00 00 00 */	li r0, 0
/* 80C47FA4  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80C47FA8:
/* 80C47FA8  93 FE 05 B4 */	stw r31, 0x5b4(r30)
/* 80C47FAC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C47FB0  28 03 00 00 */	cmplwi r3, 0
/* 80C47FB4  41 82 00 30 */	beq lbl_80C47FE4
/* 80C47FB8  7F A4 EB 78 */	mr r4, r29
/* 80C47FBC  38 A0 00 01 */	li r5, 1
/* 80C47FC0  38 C0 00 00 */	li r6, 0
/* 80C47FC4  3C E0 80 C5 */	lis r7, lit_3842@ha /* 0x80C49D10@ha */
/* 80C47FC8  C0 27 9D 10 */	lfs f1, lit_3842@l(r7)  /* 0x80C49D10@l */
/* 80C47FCC  38 E0 00 00 */	li r7, 0
/* 80C47FD0  39 00 FF FF */	li r8, -1
/* 80C47FD4  39 20 00 00 */	li r9, 0
/* 80C47FD8  4B 3C 58 05 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C47FDC  2C 03 00 00 */	cmpwi r3, 0
/* 80C47FE0  40 82 00 0C */	bne lbl_80C47FEC
lbl_80C47FE4:
/* 80C47FE4  38 60 00 00 */	li r3, 0
/* 80C47FE8  48 00 00 08 */	b lbl_80C47FF0
lbl_80C47FEC:
/* 80C47FEC  38 60 00 01 */	li r3, 1
lbl_80C47FF0:
/* 80C47FF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C47FF4  4B 71 A2 35 */	bl _restgpr_29
/* 80C47FF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C47FFC  7C 08 03 A6 */	mtlr r0
/* 80C48000  38 21 00 20 */	addi r1, r1, 0x20
/* 80C48004  4E 80 00 20 */	blr 
