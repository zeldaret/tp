lbl_80BDEF60:
/* 80BDEF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDEF64  7C 08 02 A6 */	mflr r0
/* 80BDEF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDEF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDEF70  7C 7F 1B 78 */	mr r31, r3
/* 80BDEF74  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80BDEF78  28 00 00 02 */	cmplwi r0, 2
/* 80BDEF7C  40 82 00 48 */	bne lbl_80BDEFC4
/* 80BDEF80  38 00 00 02 */	li r0, 2
/* 80BDEF84  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80BDEF88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDEF8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDEF90  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80BDEF94  3C 80 80 BE */	lis r4, l_staffName@ha /* 0x80BDF974@ha */
/* 80BDEF98  38 84 F9 74 */	addi r4, r4, l_staffName@l /* 0x80BDF974@l */
/* 80BDEF9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDEFA0  38 A0 00 00 */	li r5, 0
/* 80BDEFA4  38 C0 00 00 */	li r6, 0
/* 80BDEFA8  4B 46 8B 75 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80BDEFAC  90 7F 05 DC */	stw r3, 0x5dc(r31)
/* 80BDEFB0  7F E3 FB 78 */	mr r3, r31
/* 80BDEFB4  48 00 01 B9 */	bl demoProc__17daObjDmElevator_cFv
/* 80BDEFB8  38 00 00 00 */	li r0, 0
/* 80BDEFBC  98 1F 06 2D */	stb r0, 0x62d(r31)
/* 80BDEFC0  48 00 00 2C */	b lbl_80BDEFEC
lbl_80BDEFC4:
/* 80BDEFC4  A8 9F 05 E6 */	lha r4, 0x5e6(r31)
/* 80BDEFC8  38 A0 00 FF */	li r5, 0xff
/* 80BDEFCC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80BDEFD0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80BDEFD4  38 E0 00 00 */	li r7, 0
/* 80BDEFD8  39 00 00 01 */	li r8, 1
/* 80BDEFDC  4B 43 C6 A1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80BDEFE0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BDEFE4  60 00 00 02 */	ori r0, r0, 2
/* 80BDEFE8  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BDEFEC:
/* 80BDEFEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDEFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDEFF4  7C 08 03 A6 */	mtlr r0
/* 80BDEFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDEFFC  4E 80 00 20 */	blr 
