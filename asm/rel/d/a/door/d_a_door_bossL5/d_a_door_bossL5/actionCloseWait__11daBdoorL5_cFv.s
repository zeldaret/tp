lbl_80671E78:
/* 80671E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80671E7C  7C 08 02 A6 */	mflr r0
/* 80671E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80671E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80671E88  93 C1 00 08 */	stw r30, 8(r1)
/* 80671E8C  7C 7F 1B 78 */	mr r31, r3
/* 80671E90  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80671E94  28 00 00 03 */	cmplwi r0, 3
/* 80671E98  40 82 00 3C */	bne lbl_80671ED4
/* 80671E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80671EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671EA4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80671EA8  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x806724FC@ha */
/* 80671EAC  38 84 24 FC */	addi r4, r4, l_staff_name@l /* 0x806724FC@l */
/* 80671EB0  38 A0 00 00 */	li r5, 0
/* 80671EB4  38 C0 00 00 */	li r6, 0
/* 80671EB8  4B 9D 5C 65 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80671EBC  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80671EC0  7F E3 FB 78 */	mr r3, r31
/* 80671EC4  4B FF F4 61 */	bl demoProc__11daBdoorL5_cFv
/* 80671EC8  38 00 00 02 */	li r0, 2
/* 80671ECC  98 1F 05 91 */	stb r0, 0x591(r31)
/* 80671ED0  48 00 00 6C */	b lbl_80671F3C
lbl_80671ED4:
/* 80671ED4  4B FF FF 11 */	bl checkOpen__11daBdoorL5_cFv
/* 80671ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80671EDC  41 82 00 60 */	beq lbl_80671F3C
/* 80671EE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80671EE4  7C 1E 07 74 */	extsb r30, r0
/* 80671EE8  7F E3 FB 78 */	mr r3, r31
/* 80671EEC  4B 9C 82 E5 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80671EF0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80671EF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80671EF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671EFC  7F C5 F3 78 */	mr r5, r30
/* 80671F00  4B 9C 34 61 */	bl isSwitch__10dSv_info_cCFii
/* 80671F04  2C 03 00 00 */	cmpwi r3, 0
/* 80671F08  41 82 00 18 */	beq lbl_80671F20
/* 80671F0C  A8 1F 05 9A */	lha r0, 0x59a(r31)
/* 80671F10  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 80671F14  88 1F 05 93 */	lbz r0, 0x593(r31)
/* 80671F18  98 1F 00 FE */	stb r0, 0xfe(r31)
/* 80671F1C  48 00 00 14 */	b lbl_80671F30
lbl_80671F20:
/* 80671F20  A8 1F 05 98 */	lha r0, 0x598(r31)
/* 80671F24  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 80671F28  88 1F 05 93 */	lbz r0, 0x593(r31)
/* 80671F2C  98 1F 00 FE */	stb r0, 0xfe(r31)
lbl_80671F30:
/* 80671F30  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80671F34  60 00 00 04 */	ori r0, r0, 4
/* 80671F38  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80671F3C:
/* 80671F3C  38 60 00 01 */	li r3, 1
/* 80671F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80671F44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80671F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80671F4C  7C 08 03 A6 */	mtlr r0
/* 80671F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80671F54  4E 80 00 20 */	blr 
