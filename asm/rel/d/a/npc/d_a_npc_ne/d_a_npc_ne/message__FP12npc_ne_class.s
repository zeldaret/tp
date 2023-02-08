lbl_80A90E28:
/* 80A90E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A90E2C  7C 08 02 A6 */	mflr r0
/* 80A90E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A90E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A90E38  7C 7F 1B 78 */	mr r31, r3
/* 80A90E3C  80 83 05 E4 */	lwz r4, 0x5e4(r3)
/* 80A90E40  3C 60 80 A9 */	lis r3, d_a_npc_ne__stringBase0@ha /* 0x80A925D0@ha */
/* 80A90E44  38 03 25 D0 */	addi r0, r3, d_a_npc_ne__stringBase0@l /* 0x80A925D0@l */
/* 80A90E48  7C 04 00 40 */	cmplw r4, r0
/* 80A90E4C  40 82 00 18 */	bne lbl_80A90E64
/* 80A90E50  4B 59 EC 05 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A90E54  2C 03 00 00 */	cmpwi r3, 0
/* 80A90E58  40 82 00 0C */	bne lbl_80A90E64
/* 80A90E5C  38 00 00 00 */	li r0, 0
/* 80A90E60  98 1F 0C 08 */	stb r0, 0xc08(r31)
lbl_80A90E64:
/* 80A90E64  A8 1F 0C 0A */	lha r0, 0xc0a(r31)
/* 80A90E68  2C 00 00 00 */	cmpwi r0, 0
/* 80A90E6C  41 82 00 A4 */	beq lbl_80A90F10
/* 80A90E70  38 00 00 0A */	li r0, 0xa
/* 80A90E74  B0 1F 06 56 */	sth r0, 0x656(r31)
/* 80A90E78  38 7F 0C 10 */	addi r3, r31, 0xc10
/* 80A90E7C  7F E4 FB 78 */	mr r4, r31
/* 80A90E80  38 A0 00 00 */	li r5, 0
/* 80A90E84  38 C0 00 00 */	li r6, 0
/* 80A90E88  4B 7B 94 51 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A90E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80A90E90  41 82 00 78 */	beq lbl_80A90F08
/* 80A90E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A90E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A90E9C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A90EA0  4B 5B 15 C9 */	bl reset__14dEvt_control_cFv
/* 80A90EA4  38 00 00 00 */	li r0, 0
/* 80A90EA8  B0 1F 0C 0A */	sth r0, 0xc0a(r31)
/* 80A90EAC  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 80A90EB0  28 00 00 01 */	cmplwi r0, 1
/* 80A90EB4  40 82 00 54 */	bne lbl_80A90F08
/* 80A90EB8  38 7F 0C 10 */	addi r3, r31, 0xc10
/* 80A90EBC  4B 7B 96 85 */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80A90EC0  28 03 18 A1 */	cmplwi r3, 0x18a1
/* 80A90EC4  41 82 00 14 */	beq lbl_80A90ED8
/* 80A90EC8  38 7F 0C 10 */	addi r3, r31, 0xc10
/* 80A90ECC  4B 7B 96 75 */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80A90ED0  28 03 18 A2 */	cmplwi r3, 0x18a2
/* 80A90ED4  40 82 00 34 */	bne lbl_80A90F08
lbl_80A90ED8:
/* 80A90ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A90EDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A90EE0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A90EE4  38 63 05 38 */	addi r3, r3, 0x538
/* 80A90EE8  38 80 00 07 */	li r4, 7
/* 80A90EEC  38 A0 FF FF */	li r5, -1
/* 80A90EF0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A90EF4  7C 06 07 74 */	extsb r6, r0
/* 80A90EF8  38 E0 00 00 */	li r7, 0
/* 80A90EFC  39 00 00 00 */	li r8, 0
/* 80A90F00  39 20 00 03 */	li r9, 3
/* 80A90F04  4B 58 B3 3D */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_80A90F08:
/* 80A90F08  38 60 00 01 */	li r3, 1
/* 80A90F0C  48 00 00 E4 */	b lbl_80A90FF0
lbl_80A90F10:
/* 80A90F10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A90F14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A90F18  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A90F1C  28 00 00 00 */	cmplwi r0, 0
/* 80A90F20  41 82 00 30 */	beq lbl_80A90F50
/* 80A90F24  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80A90F28  28 00 00 01 */	cmplwi r0, 1
/* 80A90F2C  40 82 00 24 */	bne lbl_80A90F50
/* 80A90F30  38 7F 0C 10 */	addi r3, r31, 0xc10
/* 80A90F34  7F E4 FB 78 */	mr r4, r31
/* 80A90F38  A8 BF 0C 0C */	lha r5, 0xc0c(r31)
/* 80A90F3C  38 C0 00 00 */	li r6, 0
/* 80A90F40  38 E0 00 00 */	li r7, 0
/* 80A90F44  4B 7B 90 4D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80A90F48  38 00 00 01 */	li r0, 1
/* 80A90F4C  B0 1F 0C 0A */	sth r0, 0xc0a(r31)
lbl_80A90F50:
/* 80A90F50  88 1F 0C 08 */	lbz r0, 0xc08(r31)
/* 80A90F54  2C 00 00 02 */	cmpwi r0, 2
/* 80A90F58  40 82 00 74 */	bne lbl_80A90FCC
/* 80A90F5C  A8 1F 0C 0C */	lha r0, 0xc0c(r31)
/* 80A90F60  2C 00 FF FF */	cmpwi r0, -1
/* 80A90F64  41 82 00 68 */	beq lbl_80A90FCC
/* 80A90F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A90F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A90F70  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A90F74  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A90F78  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A90F7C  41 82 00 50 */	beq lbl_80A90FCC
/* 80A90F80  7F E4 FB 78 */	mr r4, r31
/* 80A90F84  4B 58 BE 79 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A90F88  2C 03 00 00 */	cmpwi r3, 0
/* 80A90F8C  40 82 00 40 */	bne lbl_80A90FCC
/* 80A90F90  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80A90F94  60 00 00 0A */	ori r0, r0, 0xa
/* 80A90F98  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A90F9C  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80A90FA0  3C 60 80 A9 */	lis r3, d_a_npc_ne__stringBase0@ha /* 0x80A925D0@ha */
/* 80A90FA4  38 03 25 D0 */	addi r0, r3, d_a_npc_ne__stringBase0@l /* 0x80A925D0@l */
/* 80A90FA8  7C 04 00 40 */	cmplw r4, r0
/* 80A90FAC  40 82 00 10 */	bne lbl_80A90FBC
/* 80A90FB0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80A90FB4  64 00 00 C0 */	oris r0, r0, 0xc0
/* 80A90FB8  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80A90FBC:
/* 80A90FBC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80A90FC0  60 00 00 01 */	ori r0, r0, 1
/* 80A90FC4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80A90FC8  48 00 00 24 */	b lbl_80A90FEC
lbl_80A90FCC:
/* 80A90FCC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80A90FD0  54 00 00 3E */	slwi r0, r0, 0
/* 80A90FD4  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80A90FD8  80 9F 05 5C */	lwz r4, 0x55c(r31)
/* 80A90FDC  3C 60 FF 40 */	lis r3, 0xFF40 /* 0xFF3FFFF5@ha */
/* 80A90FE0  38 03 FF F5 */	addi r0, r3, 0xFFF5 /* 0xFF3FFFF5@l */
/* 80A90FE4  7C 80 00 38 */	and r0, r4, r0
/* 80A90FE8  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80A90FEC:
/* 80A90FEC  38 60 00 00 */	li r3, 0
lbl_80A90FF0:
/* 80A90FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A90FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A90FF8  7C 08 03 A6 */	mtlr r0
/* 80A90FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A91000  4E 80 00 20 */	blr 
