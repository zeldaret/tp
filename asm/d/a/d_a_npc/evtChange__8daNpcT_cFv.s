lbl_8014A224:
/* 8014A224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014A228  7C 08 02 A6 */	mflr r0
/* 8014A22C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014A230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014A234  93 C1 00 08 */	stw r30, 8(r1)
/* 8014A238  7C 7F 1B 78 */	mr r31, r3
/* 8014A23C  80 63 05 70 */	lwz r3, 0x570(r3)
/* 8014A240  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A244  54 00 18 38 */	slwi r0, r0, 3
/* 8014A248  7C 63 00 2E */	lwzx r3, r3, r0
/* 8014A24C  48 21 E9 99 */	bl strlen
/* 8014A250  28 03 00 00 */	cmplwi r3, 0
/* 8014A254  41 82 00 B8 */	beq lbl_8014A30C
/* 8014A258  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8014A25C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8014A260  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A264  54 00 18 38 */	slwi r0, r0, 3
/* 8014A268  7C 63 02 14 */	add r3, r3, r0
/* 8014A26C  80 03 00 04 */	lwz r0, 4(r3)
/* 8014A270  54 00 10 3A */	slwi r0, r0, 2
/* 8014A274  7C 64 00 2E */	lwzx r3, r4, r0
/* 8014A278  48 21 E9 6D */	bl strlen
/* 8014A27C  28 03 00 00 */	cmplwi r3, 0
/* 8014A280  41 82 00 3C */	beq lbl_8014A2BC
/* 8014A284  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8014A288  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8014A28C  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A290  54 00 18 38 */	slwi r0, r0, 3
/* 8014A294  7C 63 02 14 */	add r3, r3, r0
/* 8014A298  80 03 00 04 */	lwz r0, 4(r3)
/* 8014A29C  54 00 10 3A */	slwi r0, r0, 2
/* 8014A2A0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8014A2A4  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8014A2A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014A2AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014A2B0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8014A2B4  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 8014A2B8  4B EF C5 49 */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_8014A2BC:
/* 8014A2BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014A2C0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014A2C4  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 8014A2C8  7F E4 FB 78 */	mr r4, r31
/* 8014A2CC  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 8014A2D0  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A2D4  54 00 18 38 */	slwi r0, r0, 3
/* 8014A2D8  7C A5 00 2E */	lwzx r5, r5, r0
/* 8014A2DC  38 C0 00 FF */	li r6, 0xff
/* 8014A2E0  4B EF D4 79 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8014A2E4  B0 7F 0E 1C */	sth r3, 0xe1c(r31)
/* 8014A2E8  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8014A2EC  7F E4 FB 78 */	mr r4, r31
/* 8014A2F0  4B EF 82 29 */	bl reset__14dEvt_control_cFPv
/* 8014A2F4  7F E3 FB 78 */	mr r3, r31
/* 8014A2F8  A8 9F 0E 1C */	lha r4, 0xe1c(r31)
/* 8014A2FC  38 A0 00 01 */	li r5, 1
/* 8014A300  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8014A304  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8014A308  4B ED 12 DD */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
lbl_8014A30C:
/* 8014A30C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014A310  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014A314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014A318  7C 08 03 A6 */	mtlr r0
/* 8014A31C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014A320  4E 80 00 20 */	blr 
