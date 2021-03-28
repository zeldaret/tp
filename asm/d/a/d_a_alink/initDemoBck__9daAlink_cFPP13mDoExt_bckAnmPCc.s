lbl_800A3F98:
/* 800A3F98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3F9C  7C 08 02 A6 */	mflr r0
/* 800A3FA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A3FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 800A3FA8  48 2B E2 35 */	bl _savegpr_29
/* 800A3FAC  7C 7D 1B 78 */	mr r29, r3
/* 800A3FB0  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 800A3FB4  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 800A3FB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 800A3FBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 800A3FC0  3C A5 00 02 */	addis r5, r5, 2
/* 800A3FC4  38 C0 00 80 */	li r6, 0x80
/* 800A3FC8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 800A3FCC  4B F9 83 B1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800A3FD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A3FD4  41 82 00 78 */	beq lbl_800A404C
/* 800A3FD8  38 60 00 1C */	li r3, 0x1c
/* 800A3FDC  48 22 AC 71 */	bl __nw__FUl
/* 800A3FE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A3FE4  41 82 00 20 */	beq lbl_800A4004
/* 800A3FE8  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 800A3FEC  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 800A3FF0  90 1F 00 00 */	stw r0, 0(r31)
/* 800A3FF4  38 80 00 00 */	li r4, 0
/* 800A3FF8  48 28 44 05 */	bl init__12J3DFrameCtrlFs
/* 800A3FFC  38 00 00 00 */	li r0, 0
/* 800A4000  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_800A4004:
/* 800A4004  93 FD 00 00 */	stw r31, 0(r29)
/* 800A4008  80 7D 00 00 */	lwz r3, 0(r29)
/* 800A400C  28 03 00 00 */	cmplwi r3, 0
/* 800A4010  40 82 00 0C */	bne lbl_800A401C
/* 800A4014  38 60 00 00 */	li r3, 0
/* 800A4018  48 00 00 38 */	b lbl_800A4050
lbl_800A401C:
/* 800A401C  7F C4 F3 78 */	mr r4, r30
/* 800A4020  38 A0 00 01 */	li r5, 1
/* 800A4024  38 C0 00 02 */	li r6, 2
/* 800A4028  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800A402C  38 E0 00 00 */	li r7, 0
/* 800A4030  39 00 FF FF */	li r8, -1
/* 800A4034  39 20 00 00 */	li r9, 0
/* 800A4038  4B F6 97 A5 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 800A403C  2C 03 00 00 */	cmpwi r3, 0
/* 800A4040  40 82 00 0C */	bne lbl_800A404C
/* 800A4044  38 60 00 00 */	li r3, 0
/* 800A4048  48 00 00 08 */	b lbl_800A4050
lbl_800A404C:
/* 800A404C  38 60 00 01 */	li r3, 1
lbl_800A4050:
/* 800A4050  39 61 00 20 */	addi r11, r1, 0x20
/* 800A4054  48 2B E1 D5 */	bl _restgpr_29
/* 800A4058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A405C  7C 08 03 A6 */	mtlr r0
/* 800A4060  38 21 00 20 */	addi r1, r1, 0x20
/* 800A4064  4E 80 00 20 */	blr 
