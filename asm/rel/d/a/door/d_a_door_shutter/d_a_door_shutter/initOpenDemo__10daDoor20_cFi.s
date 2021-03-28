lbl_80465400:
/* 80465400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465404  7C 08 02 A6 */	mflr r0
/* 80465408  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046540C  39 61 00 20 */	addi r11, r1, 0x20
/* 80465410  4B EF CD CC */	b _savegpr_29
/* 80465414  7C 7D 1B 78 */	mr r29, r3
/* 80465418  7C 9E 23 78 */	mr r30, r4
/* 8046541C  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80465420  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80465424  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 80465428  28 00 00 01 */	cmplwi r0, 1
/* 8046542C  40 82 00 10 */	bne lbl_8046543C
/* 80465430  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80465434  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80465438  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_8046543C:
/* 8046543C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80465440  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80465444  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80465448  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 8046544C  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80465450  38 84 01 59 */	addi r4, r4, 0x159
/* 80465454  38 A0 00 00 */	li r5, 0
/* 80465458  38 C0 00 00 */	li r6, 0
/* 8046545C  4B BE 26 C0 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80465460  90 7D 06 CC */	stw r3, 0x6cc(r29)
/* 80465464  2C 1E 00 00 */	cmpwi r30, 0
/* 80465468  41 82 00 10 */	beq lbl_80465478
/* 8046546C  A0 1F 4F A0 */	lhz r0, 0x4fa0(r31)
/* 80465470  60 00 00 02 */	ori r0, r0, 2
/* 80465474  B0 1F 4F A0 */	sth r0, 0x4fa0(r31)
lbl_80465478:
/* 80465478  39 61 00 20 */	addi r11, r1, 0x20
/* 8046547C  4B EF CD AC */	b _restgpr_29
/* 80465480  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80465484  7C 08 03 A6 */	mtlr r0
/* 80465488  38 21 00 20 */	addi r1, r1, 0x20
/* 8046548C  4E 80 00 20 */	blr 
