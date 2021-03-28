lbl_80948E84:
/* 80948E84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80948E88  7C 08 02 A6 */	mflr r0
/* 80948E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80948E90  39 61 00 20 */	addi r11, r1, 0x20
/* 80948E94  4B A1 93 48 */	b _savegpr_29
/* 80948E98  7C 7F 1B 78 */	mr r31, r3
/* 80948E9C  7C 9D 23 79 */	or. r29, r4, r4
/* 80948EA0  3B C0 00 00 */	li r30, 0
/* 80948EA4  41 82 00 90 */	beq lbl_80948F34
/* 80948EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80948EAC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80948EB0  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80948EB4  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80948EB8  4B 6F A4 34 */	b convPId__14dEvt_control_cFUi
/* 80948EBC  7C 1F 18 40 */	cmplw r31, r3
/* 80948EC0  40 82 00 74 */	bne lbl_80948F34
/* 80948EC4  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80948EC8  2C 00 00 02 */	cmpwi r0, 2
/* 80948ECC  41 82 00 08 */	beq lbl_80948ED4
/* 80948ED0  48 00 00 10 */	b lbl_80948EE0
lbl_80948ED4:
/* 80948ED4  38 00 00 01 */	li r0, 1
/* 80948ED8  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 80948EDC  48 00 00 1C */	b lbl_80948EF8
lbl_80948EE0:
/* 80948EE0  80 7D 00 EC */	lwz r3, 0xec(r29)
/* 80948EE4  80 1F 08 24 */	lwz r0, 0x824(r31)
/* 80948EE8  7C 03 00 40 */	cmplw r3, r0
/* 80948EEC  41 82 00 0C */	beq lbl_80948EF8
/* 80948EF0  38 00 00 01 */	li r0, 1
/* 80948EF4  90 1F 08 1C */	stw r0, 0x81c(r31)
lbl_80948EF8:
/* 80948EF8  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80948EFC  28 00 00 06 */	cmplwi r0, 6
/* 80948F00  40 82 00 34 */	bne lbl_80948F34
/* 80948F04  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 80948F08  2C 00 00 00 */	cmpwi r0, 0
/* 80948F0C  41 82 00 28 */	beq lbl_80948F34
/* 80948F10  38 00 00 00 */	li r0, 0
/* 80948F14  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 80948F18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80948F1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80948F20  88 03 5E 7A */	lbz r0, 0x5e7a(r3)
/* 80948F24  90 1F 08 20 */	stw r0, 0x820(r31)
/* 80948F28  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 80948F2C  90 1F 08 24 */	stw r0, 0x824(r31)
/* 80948F30  3B C0 00 01 */	li r30, 1
lbl_80948F34:
/* 80948F34  80 1F 08 24 */	lwz r0, 0x824(r31)
/* 80948F38  28 00 00 00 */	cmplwi r0, 0
/* 80948F3C  41 82 00 58 */	beq lbl_80948F94
/* 80948F40  80 1F 08 20 */	lwz r0, 0x820(r31)
/* 80948F44  2C 00 00 00 */	cmpwi r0, 0
/* 80948F48  41 80 00 4C */	blt lbl_80948F94
/* 80948F4C  2C 00 00 07 */	cmpwi r0, 7
/* 80948F50  40 80 00 44 */	bge lbl_80948F94
/* 80948F54  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80948F58  3C 60 80 95 */	lis r3, mBaseMotionTBL__8daMyna_c@ha
/* 80948F5C  38 03 B8 64 */	addi r0, r3, mBaseMotionTBL__8daMyna_c@l
/* 80948F60  7C 60 22 14 */	add r3, r0, r4
/* 80948F64  4B A1 90 B4 */	b __ptmf_test
/* 80948F68  2C 03 00 00 */	cmpwi r3, 0
/* 80948F6C  41 82 00 28 */	beq lbl_80948F94
/* 80948F70  7F E3 FB 78 */	mr r3, r31
/* 80948F74  7F C4 F3 78 */	mr r4, r30
/* 80948F78  80 1F 08 20 */	lwz r0, 0x820(r31)
/* 80948F7C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80948F80  3C A0 80 95 */	lis r5, mBaseMotionTBL__8daMyna_c@ha
/* 80948F84  38 05 B8 64 */	addi r0, r5, mBaseMotionTBL__8daMyna_c@l
/* 80948F88  7D 80 32 14 */	add r12, r0, r6
/* 80948F8C  4B A1 90 F8 */	b __ptmf_scall
/* 80948F90  60 00 00 00 */	nop 
lbl_80948F94:
/* 80948F94  39 61 00 20 */	addi r11, r1, 0x20
/* 80948F98  4B A1 92 90 */	b _restgpr_29
/* 80948F9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80948FA0  7C 08 03 A6 */	mtlr r0
/* 80948FA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80948FA8  4E 80 00 20 */	blr 
