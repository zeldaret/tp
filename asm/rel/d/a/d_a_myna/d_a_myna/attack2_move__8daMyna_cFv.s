lbl_80948644:
/* 80948644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80948648  7C 08 02 A6 */	mflr r0
/* 8094864C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80948650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80948654  7C 7F 1B 78 */	mr r31, r3
/* 80948658  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 8094865C  4B 73 B1 D5 */	bl Move__10dCcD_GSttsFv
/* 80948660  A0 1F 09 1E */	lhz r0, 0x91e(r31)
/* 80948664  28 00 00 00 */	cmplwi r0, 0
/* 80948668  41 82 00 0C */	beq lbl_80948674
/* 8094866C  38 00 00 13 */	li r0, 0x13
/* 80948670  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80948674:
/* 80948674  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 80948678  4B 73 BC 49 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8094867C  28 03 00 00 */	cmplwi r3, 0
/* 80948680  41 82 00 64 */	beq lbl_809486E4
/* 80948684  3C 60 80 95 */	lis r3, l_HOSTIO@ha /* 0x8094BA3C@ha */
/* 80948688  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l /* 0x8094BA3C@l */
/* 8094868C  A8 03 00 30 */	lha r0, 0x30(r3)
/* 80948690  B0 1F 09 26 */	sth r0, 0x926(r31)
/* 80948694  80 1F 06 E4 */	lwz r0, 0x6e4(r31)
/* 80948698  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 8094869C  90 1F 06 E4 */	stw r0, 0x6e4(r31)
/* 809486A0  88 7F 09 37 */	lbz r3, 0x937(r31)
/* 809486A4  28 03 00 00 */	cmplwi r3, 0
/* 809486A8  41 82 00 3C */	beq lbl_809486E4
/* 809486AC  38 03 FF FF */	addi r0, r3, -1
/* 809486B0  98 1F 09 37 */	stb r0, 0x937(r31)
/* 809486B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809486B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809486BC  A0 03 00 02 */	lhz r0, 2(r3)
/* 809486C0  28 00 00 01 */	cmplwi r0, 1
/* 809486C4  41 81 00 20 */	bgt lbl_809486E4
/* 809486C8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 809486CC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 809486D0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 809486D4  A0 84 06 44 */	lhz r4, 0x644(r4)
/* 809486D8  4B 6E C2 CD */	bl offEventBit__11dSv_event_cFUs
/* 809486DC  38 00 00 00 */	li r0, 0
/* 809486E0  98 1F 09 37 */	stb r0, 0x937(r31)
lbl_809486E4:
/* 809486E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809486E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809486EC  7C 08 03 A6 */	mtlr r0
/* 809486F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809486F4  4E 80 00 20 */	blr 
