lbl_804D5BF0:
/* 804D5BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D5BF4  7C 08 02 A6 */	mflr r0
/* 804D5BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D5BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804D5C00  4B E8 C5 DC */	b _savegpr_29
/* 804D5C04  7C 7F 1B 78 */	mr r31, r3
/* 804D5C08  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804D5C0C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D5C10  40 82 00 1C */	bne lbl_804D5C2C
/* 804D5C14  28 1F 00 00 */	cmplwi r31, 0
/* 804D5C18  41 82 00 08 */	beq lbl_804D5C20
/* 804D5C1C  4B B4 2F 48 */	b __ct__10fopAc_ac_cFv
lbl_804D5C20:
/* 804D5C20  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804D5C24  60 00 00 08 */	ori r0, r0, 8
/* 804D5C28  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804D5C2C:
/* 804D5C2C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804D5C30  7C 1E 07 74 */	extsb r30, r0
/* 804D5C34  7F E3 FB 78 */	mr r3, r31
/* 804D5C38  4B FF FB ED */	bl getSwbit__10daAlldie_cFv
/* 804D5C3C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D5C40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D5C44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D5C48  7F C5 F3 78 */	mr r5, r30
/* 804D5C4C  4B B5 F7 14 */	b isSwitch__10dSv_info_cCFii
/* 804D5C50  2C 03 00 00 */	cmpwi r3, 0
/* 804D5C54  40 82 00 10 */	bne lbl_804D5C64
/* 804D5C58  38 00 00 01 */	li r0, 1
/* 804D5C5C  98 1F 05 68 */	stb r0, 0x568(r31)
/* 804D5C60  48 00 00 0C */	b lbl_804D5C6C
lbl_804D5C64:
/* 804D5C64  38 00 00 00 */	li r0, 0
/* 804D5C68  98 1F 05 68 */	stb r0, 0x568(r31)
lbl_804D5C6C:
/* 804D5C6C  38 00 00 00 */	li r0, 0
/* 804D5C70  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 804D5C74  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 804D5C78  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 804D5C7C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 804D5C80  7F E3 FB 78 */	mr r3, r31
/* 804D5C84  4B FF FB 95 */	bl getEventNo__10daAlldie_cFv
/* 804D5C88  7C 65 1B 78 */	mr r5, r3
/* 804D5C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D5C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D5C94  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 804D5C98  7F A3 EB 78 */	mr r3, r29
/* 804D5C9C  7F E4 FB 78 */	mr r4, r31
/* 804D5CA0  4B B7 19 F8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D5CA4  B0 7F 05 6C */	sth r3, 0x56c(r31)
/* 804D5CA8  38 00 FF FF */	li r0, -1
/* 804D5CAC  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 804D5CB0  B0 1F 05 6E */	sth r0, 0x56e(r31)
/* 804D5CB4  7F E3 FB 78 */	mr r3, r31
/* 804D5CB8  4B FF FB 61 */	bl getEventNo__10daAlldie_cFv
/* 804D5CBC  7F C4 F3 78 */	mr r4, r30
/* 804D5CC0  4B B6 D8 40 */	b searchMapEventData__14dEvt_control_cFUcl
/* 804D5CC4  28 03 00 00 */	cmplwi r3, 0
/* 804D5CC8  41 82 00 24 */	beq lbl_804D5CEC
/* 804D5CCC  88 03 00 05 */	lbz r0, 5(r3)
/* 804D5CD0  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 804D5CD4  7F A3 EB 78 */	mr r3, r29
/* 804D5CD8  7F E4 FB 78 */	mr r4, r31
/* 804D5CDC  A8 1F 05 70 */	lha r0, 0x570(r31)
/* 804D5CE0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804D5CE4  4B B7 19 B4 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D5CE8  B0 7F 05 6E */	sth r3, 0x56e(r31)
lbl_804D5CEC:
/* 804D5CEC  A8 1F 05 6C */	lha r0, 0x56c(r31)
/* 804D5CF0  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 804D5CF4  7F E3 FB 78 */	mr r3, r31
/* 804D5CF8  4B FF FB 21 */	bl getEventNo__10daAlldie_cFv
/* 804D5CFC  98 7F 00 FE */	stb r3, 0xfe(r31)
/* 804D5D00  38 60 00 04 */	li r3, 4
/* 804D5D04  39 61 00 20 */	addi r11, r1, 0x20
/* 804D5D08  4B E8 C5 20 */	b _restgpr_29
/* 804D5D0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D5D10  7C 08 03 A6 */	mtlr r0
/* 804D5D14  38 21 00 20 */	addi r1, r1, 0x20
/* 804D5D18  4E 80 00 20 */	blr 
