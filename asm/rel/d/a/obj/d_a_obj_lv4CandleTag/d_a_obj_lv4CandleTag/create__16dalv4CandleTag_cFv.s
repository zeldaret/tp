lbl_80C5D4F0:
/* 80C5D4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D4F4  7C 08 02 A6 */	mflr r0
/* 80C5D4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D4FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D500  7C 7F 1B 78 */	mr r31, r3
/* 80C5D504  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5D508  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5D50C  40 82 00 48 */	bne lbl_80C5D554
/* 80C5D510  28 1F 00 00 */	cmplwi r31, 0
/* 80C5D514  41 82 00 34 */	beq lbl_80C5D548
/* 80C5D518  4B 3B B6 4D */	bl __ct__10fopAc_ac_cFv
/* 80C5D51C  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C5DC5C@ha */
/* 80C5D520  38 03 DC 5C */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C5DC5C@l */
/* 80C5D524  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80C5D528  93 FF 05 74 */	stw r31, 0x574(r31)
/* 80C5D52C  38 00 00 00 */	li r0, 0
/* 80C5D530  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80C5D534  3C 60 80 C6 */	lis r3, __vt__16dalv4CandleTag_c@ha /* 0x80C5DC34@ha */
/* 80C5D538  38 63 DC 34 */	addi r3, r3, __vt__16dalv4CandleTag_c@l /* 0x80C5DC34@l */
/* 80C5D53C  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80C5D540  38 03 00 08 */	addi r0, r3, 8
/* 80C5D544  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_80C5D548:
/* 80C5D548  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C5D54C  60 00 00 08 */	ori r0, r0, 8
/* 80C5D550  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C5D554:
/* 80C5D554  7F E3 FB 78 */	mr r3, r31
/* 80C5D558  4B FF FF 61 */	bl setBaseMtx__16dalv4CandleTag_cFv
/* 80C5D55C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5D560  98 1F 05 85 */	stb r0, 0x585(r31)
/* 80C5D564  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5D568  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C5D56C  98 1F 05 86 */	stb r0, 0x586(r31)
/* 80C5D570  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5D574  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C5D578  98 1F 05 87 */	stb r0, 0x587(r31)
/* 80C5D57C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5D580  54 00 46 3E */	srwi r0, r0, 0x18
/* 80C5D584  98 1F 05 88 */	stb r0, 0x588(r31)
/* 80C5D588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5D58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5D590  88 9F 05 86 */	lbz r4, 0x586(r31)
/* 80C5D594  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5D598  7C 05 07 74 */	extsb r5, r0
/* 80C5D59C  4B 3D 7D C5 */	bl isSwitch__10dSv_info_cCFii
/* 80C5D5A0  2C 03 00 00 */	cmpwi r3, 0
/* 80C5D5A4  41 82 00 10 */	beq lbl_80C5D5B4
/* 80C5D5A8  7F E3 FB 78 */	mr r3, r31
/* 80C5D5AC  48 00 03 51 */	bl init_modeEnd__16dalv4CandleTag_cFv
/* 80C5D5B0  48 00 00 0C */	b lbl_80C5D5BC
lbl_80C5D5B4:
/* 80C5D5B4  7F E3 FB 78 */	mr r3, r31
/* 80C5D5B8  48 00 01 1D */	bl init_modeWatch__16dalv4CandleTag_cFv
lbl_80C5D5BC:
/* 80C5D5BC  38 60 00 04 */	li r3, 4
/* 80C5D5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5D5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D5C8  7C 08 03 A6 */	mtlr r0
/* 80C5D5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D5D0  4E 80 00 20 */	blr 
