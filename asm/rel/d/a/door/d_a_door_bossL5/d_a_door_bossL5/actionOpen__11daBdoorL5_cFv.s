lbl_80671F58:
/* 80671F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80671F5C  7C 08 02 A6 */	mflr r0
/* 80671F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80671F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80671F68  7C 7F 1B 78 */	mr r31, r3
/* 80671F6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80671F70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671F74  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80671F78  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x806724FC@ha */
/* 80671F7C  38 84 24 FC */	addi r4, r4, l_staff_name@l /* 0x806724FC@l */
/* 80671F80  38 A0 00 00 */	li r5, 0
/* 80671F84  38 C0 00 00 */	li r6, 0
/* 80671F88  4B 9D 5B 95 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80671F8C  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80671F90  7F E3 FB 78 */	mr r3, r31
/* 80671F94  4B FF F3 91 */	bl demoProc__11daBdoorL5_cFv
/* 80671F98  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80671F9C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80671FA0  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 80671FA4  60 00 00 02 */	ori r0, r0, 2
/* 80671FA8  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 80671FAC  38 7F 05 94 */	addi r3, r31, 0x594
/* 80671FB0  48 00 04 E5 */	bl func_80672494
/* 80671FB4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80671FB8  28 00 00 01 */	cmplwi r0, 1
/* 80671FBC  40 82 00 30 */	bne lbl_80671FEC
/* 80671FC0  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80671FC4  3C 03 00 01 */	addis r0, r3, 1
/* 80671FC8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80671FCC  41 82 00 20 */	beq lbl_80671FEC
/* 80671FD0  4B 9B 01 69 */	bl fpcM_IsCreating__FUi
/* 80671FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80671FD8  40 82 00 14 */	bne lbl_80671FEC
/* 80671FDC  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80671FE0  4B 9A 7C D9 */	bl fopAcM_delete__FUi
/* 80671FE4  38 00 FF FF */	li r0, -1
/* 80671FE8  90 1F 05 8C */	stw r0, 0x58c(r31)
lbl_80671FEC:
/* 80671FEC  38 60 00 01 */	li r3, 1
/* 80671FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80671FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80671FF8  7C 08 03 A6 */	mtlr r0
/* 80671FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80672000  4E 80 00 20 */	blr 
