lbl_80D5F5BC:
/* 80D5F5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F5C0  7C 08 02 A6 */	mflr r0
/* 80D5F5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5F5CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5F5D0  7C 7E 1B 78 */	mr r30, r3
/* 80D5F5D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D5F5D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D5F5DC  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80D5F5E0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D5F5E4  28 00 00 02 */	cmplwi r0, 2
/* 80D5F5E8  40 82 00 44 */	bne lbl_80D5F62C
/* 80D5F5EC  38 00 00 02 */	li r0, 2
/* 80D5F5F0  98 1E 05 71 */	stb r0, 0x571(r30)
/* 80D5F5F4  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 80D5F5F8  3C 80 80 D6 */	lis r4, l_staffName@ha
/* 80D5F5FC  38 84 F9 A8 */	addi r4, r4, l_staffName@l
/* 80D5F600  80 84 00 00 */	lwz r4, 0(r4)
/* 80D5F604  38 A0 00 00 */	li r5, 0
/* 80D5F608  38 C0 00 00 */	li r6, 0
/* 80D5F60C  4B 2E 85 10 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D5F610  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80D5F614  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80D5F618  64 00 00 01 */	oris r0, r0, 1
/* 80D5F61C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80D5F620  7F C3 F3 78 */	mr r3, r30
/* 80D5F624  48 00 00 ED */	bl demoProc__16daTagRiverBack_cFv
/* 80D5F628  48 00 00 2C */	b lbl_80D5F654
lbl_80D5F62C:
/* 80D5F62C  A8 9E 05 74 */	lha r4, 0x574(r30)
/* 80D5F630  88 BE 05 72 */	lbz r5, 0x572(r30)
/* 80D5F634  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D5F638  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D5F63C  38 E0 00 00 */	li r7, 0
/* 80D5F640  39 00 00 01 */	li r8, 1
/* 80D5F644  4B 2B C0 38 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D5F648  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80D5F64C  60 00 00 02 */	ori r0, r0, 2
/* 80D5F650  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80D5F654:
/* 80D5F654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5F658  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5F65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F660  7C 08 03 A6 */	mtlr r0
/* 80D5F664  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F668  4E 80 00 20 */	blr 
