lbl_8014F518:
/* 8014F518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014F51C  7C 08 02 A6 */	mflr r0
/* 8014F520  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014F524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014F528  7C 7F 1B 78 */	mr r31, r3
/* 8014F52C  81 83 05 68 */	lwz r12, 0x568(r3)
/* 8014F530  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8014F534  7D 89 03 A6 */	mtctr r12
/* 8014F538  4E 80 04 21 */	bctrl 
/* 8014F53C  2C 03 00 00 */	cmpwi r3, 0
/* 8014F540  40 82 00 0C */	bne lbl_8014F54C
/* 8014F544  38 60 00 00 */	li r3, 0
/* 8014F548  48 00 00 B0 */	b lbl_8014F5F8
lbl_8014F54C:
/* 8014F54C  80 0D 8A 64 */	lwz r0, m_dzb_id__23daBaseNpc_moveBgActor_c(r13)
/* 8014F550  2C 00 FF FF */	cmpwi r0, -1
/* 8014F554  40 82 00 14 */	bne lbl_8014F568
/* 8014F558  38 00 00 00 */	li r0, 0
/* 8014F55C  90 1F 0A 14 */	stw r0, 0xa14(r31)
/* 8014F560  38 60 00 01 */	li r3, 1
/* 8014F564  48 00 00 94 */	b lbl_8014F5F8
lbl_8014F568:
/* 8014F568  38 60 00 C0 */	li r3, 0xc0
/* 8014F56C  48 17 F6 E1 */	bl __nw__FUl
/* 8014F570  7C 60 1B 79 */	or. r0, r3, r3
/* 8014F574  41 82 00 0C */	beq lbl_8014F580
/* 8014F578  4B F2 C3 F9 */	bl __ct__4dBgWFv
/* 8014F57C  7C 60 1B 78 */	mr r0, r3
lbl_8014F580:
/* 8014F580  90 1F 0A 14 */	stw r0, 0xa14(r31)
/* 8014F584  80 1F 0A 14 */	lwz r0, 0xa14(r31)
/* 8014F588  28 00 00 00 */	cmplwi r0, 0
/* 8014F58C  41 82 00 58 */	beq lbl_8014F5E4
/* 8014F590  80 6D 8A 60 */	lwz r3, m_name__23daBaseNpc_moveBgActor_c(r13)
/* 8014F594  80 8D 8A 64 */	lwz r4, m_dzb_id__23daBaseNpc_moveBgActor_c(r13)
/* 8014F598  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8014F59C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8014F5A0  3C A5 00 02 */	addis r5, r5, 2
/* 8014F5A4  38 C0 00 80 */	li r6, 0x80
/* 8014F5A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8014F5AC  4B EE CD 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8014F5B0  7C 64 1B 78 */	mr r4, r3
/* 8014F5B4  80 7F 0A 14 */	lwz r3, 0xa14(r31)
/* 8014F5B8  38 A0 00 01 */	li r5, 1
/* 8014F5BC  38 DF 0A 18 */	addi r6, r31, 0xa18
/* 8014F5C0  4B F2 A9 79 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8014F5C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014F5C8  40 82 00 1C */	bne lbl_8014F5E4
/* 8014F5CC  80 0D 8A 68 */	lwz r0, m_set_func__23daBaseNpc_moveBgActor_c(r13)
/* 8014F5D0  28 00 00 00 */	cmplwi r0, 0
/* 8014F5D4  41 82 00 20 */	beq lbl_8014F5F4
/* 8014F5D8  80 7F 0A 14 */	lwz r3, 0xa14(r31)
/* 8014F5DC  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8014F5E0  48 00 00 14 */	b lbl_8014F5F4
lbl_8014F5E4:
/* 8014F5E4  38 00 00 00 */	li r0, 0
/* 8014F5E8  90 1F 0A 14 */	stw r0, 0xa14(r31)
/* 8014F5EC  38 60 00 00 */	li r3, 0
/* 8014F5F0  48 00 00 08 */	b lbl_8014F5F8
lbl_8014F5F4:
/* 8014F5F4  38 60 00 01 */	li r3, 1
lbl_8014F5F8:
/* 8014F5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014F5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014F600  7C 08 03 A6 */	mtlr r0
/* 8014F604  38 21 00 10 */	addi r1, r1, 0x10
/* 8014F608  4E 80 00 20 */	blr 
