lbl_804E21DC:
/* 804E21DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E21E0  7C 08 02 A6 */	mflr r0
/* 804E21E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E21E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E21EC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E21F0  7C 7E 1B 78 */	mr r30, r3
/* 804E21F4  4B FF FF C9 */	bl getBmd__11daBdoorL1_cFv
/* 804E21F8  7C 7F 1B 78 */	mr r31, r3
/* 804E21FC  7F C3 F3 78 */	mr r3, r30
/* 804E2200  4B FF FD A5 */	bl getArcName__11daBdoorL1_cFv
/* 804E2204  7F E4 FB 78 */	mr r4, r31
/* 804E2208  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804E220C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804E2210  3C A5 00 02 */	addis r5, r5, 2
/* 804E2214  38 C0 00 80 */	li r6, 0x80
/* 804E2218  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804E221C  4B B5 A1 60 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804E2220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2224  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E2228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E222C  7C 08 03 A6 */	mtlr r0
/* 804E2230  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2234  4E 80 00 20 */	blr 
