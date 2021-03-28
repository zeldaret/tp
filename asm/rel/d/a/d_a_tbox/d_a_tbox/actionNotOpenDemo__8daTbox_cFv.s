lbl_804948CC:
/* 804948CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804948D0  7C 08 02 A6 */	mflr r0
/* 804948D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804948D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804948DC  93 C1 00 08 */	stw r30, 8(r1)
/* 804948E0  7C 7E 1B 78 */	mr r30, r3
/* 804948E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804948E8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804948EC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 804948F0  A8 9E 09 7A */	lha r4, 0x97a(r30)
/* 804948F4  4B BB 31 84 */	b endCheck__16dEvent_manager_cFs
/* 804948F8  2C 03 00 00 */	cmpwi r3, 0
/* 804948FC  41 82 00 30 */	beq lbl_8049492C
/* 80494900  3C 60 80 49 */	lis r3, lit_5639@ha
/* 80494904  38 83 66 A0 */	addi r4, r3, lit_5639@l
/* 80494908  80 64 00 00 */	lwz r3, 0(r4)
/* 8049490C  80 04 00 04 */	lwz r0, 4(r4)
/* 80494910  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80494914  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80494918  80 04 00 08 */	lwz r0, 8(r4)
/* 8049491C  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80494920  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80494924  4B BA DB 44 */	b reset__14dEvt_control_cFv
/* 80494928  48 00 00 0C */	b lbl_80494934
lbl_8049492C:
/* 8049492C  7F C3 F3 78 */	mr r3, r30
/* 80494930  4B FF EB E9 */	bl demoProc__8daTbox_cFv
lbl_80494934:
/* 80494934  38 60 00 01 */	li r3, 1
/* 80494938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049493C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80494940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494944  7C 08 03 A6 */	mtlr r0
/* 80494948  38 21 00 10 */	addi r1, r1, 0x10
/* 8049494C  4E 80 00 20 */	blr 
