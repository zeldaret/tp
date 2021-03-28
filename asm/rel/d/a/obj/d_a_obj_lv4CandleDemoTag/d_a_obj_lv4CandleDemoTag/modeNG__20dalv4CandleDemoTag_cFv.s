lbl_80C5CEC0:
/* 80C5CEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CEC4  7C 08 02 A6 */	mflr r0
/* 80C5CEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5CED0  7C 7F 1B 78 */	mr r31, r3
/* 80C5CED4  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C5CED8  7C 03 07 74 */	extsb r3, r0
/* 80C5CEDC  4B 3B FB 40 */	b fopAcM_myRoomSearchEnemy__FSc
/* 80C5CEE0  28 03 00 00 */	cmplwi r3, 0
/* 80C5CEE4  40 82 00 3C */	bne lbl_80C5CF20
/* 80C5CEE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5CEEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5CEF0  88 9F 05 87 */	lbz r4, 0x587(r31)
/* 80C5CEF4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5CEF8  7C 05 07 74 */	extsb r5, r0
/* 80C5CEFC  4B 3D 83 04 */	b onSwitch__10dSv_info_cFii
/* 80C5CF00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5CF04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5CF08  88 9F 05 86 */	lbz r4, 0x586(r31)
/* 80C5CF0C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5CF10  7C 05 07 74 */	extsb r5, r0
/* 80C5CF14  4B 3D 83 9C */	b offSwitch__10dSv_info_cFii
/* 80C5CF18  7F E3 FB 78 */	mr r3, r31
/* 80C5CF1C  4B FF FD 89 */	bl init_modeWatch__20dalv4CandleDemoTag_cFv
lbl_80C5CF20:
/* 80C5CF20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5CF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CF28  7C 08 03 A6 */	mtlr r0
/* 80C5CF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CF30  4E 80 00 20 */	blr 
