lbl_801171F4:
/* 801171F4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801171F8  7C 08 02 A6 */	mflr r0
/* 801171FC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80117200  39 61 00 90 */	addi r11, r1, 0x90
/* 80117204  48 24 AF C1 */	bl _savegpr_23
/* 80117208  7C 7F 1B 78 */	mr r31, r3
/* 8011720C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80117210  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80117214  38 00 00 00 */	li r0, 0
/* 80117218  88 7E 4F AD */	lbz r3, 0x4fad(r30)
/* 8011721C  28 03 00 00 */	cmplwi r3, 0
/* 80117220  41 82 00 0C */	beq lbl_8011722C
/* 80117224  28 03 00 02 */	cmplwi r3, 2
/* 80117228  40 82 00 08 */	bne lbl_80117230
lbl_8011722C:
/* 8011722C  38 00 00 01 */	li r0, 1
lbl_80117230:
/* 80117230  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80117234  41 82 00 3C */	beq lbl_80117270
/* 80117238  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 8011723C  2C 00 00 00 */	cmpwi r0, 0
/* 80117240  41 82 00 18 */	beq lbl_80117258
/* 80117244  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 80117248  28 00 00 00 */	cmplwi r0, 0
/* 8011724C  40 82 00 0C */	bne lbl_80117258
/* 80117250  7F E3 FB 78 */	mr r3, r31
/* 80117254  48 00 0A A5 */	bl endDemoMode__9daAlink_cFv
lbl_80117258:
/* 80117258  88 7F 2F B2 */	lbz r3, 0x2fb2(r31)
/* 8011725C  28 03 00 00 */	cmplwi r3, 0
/* 80117260  41 82 09 18 */	beq lbl_80117B78
/* 80117264  38 03 FF FF */	addi r0, r3, -1
/* 80117268  98 1F 2F B2 */	stb r0, 0x2fb2(r31)
/* 8011726C  48 00 09 0C */	b lbl_80117B78
lbl_80117270:
/* 80117270  80 6D 88 A0 */	lwz r3, m_object__7dDemo_c(r13)
/* 80117274  88 9F 04 98 */	lbz r4, 0x498(r31)
/* 80117278  4B F2 1E 11 */	bl getActor__14dDemo_object_cFUc
/* 8011727C  7C 7C 1B 78 */	mr r28, r3
/* 80117280  3B 40 00 00 */	li r26, 0
/* 80117284  38 00 00 01 */	li r0, 1
/* 80117288  90 01 00 18 */	stw r0, 0x18(r1)
/* 8011728C  3B 00 00 00 */	li r24, 0
/* 80117290  3A E0 00 00 */	li r23, 0
/* 80117294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80117298  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8011729C  80 1D 5F 18 */	lwz r0, 0x5f18(r29)
/* 801172A0  54 00 02 D0 */	rlwinm r0, r0, 0, 0xb, 8
/* 801172A4  90 1D 5F 18 */	stw r0, 0x5f18(r29)
/* 801172A8  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 801172AC  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 801172B0  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 801172B4  38 00 00 00 */	li r0, 0
/* 801172B8  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 801172BC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801172C0  28 00 01 3E */	cmplwi r0, 0x13e
/* 801172C4  40 82 00 28 */	bne lbl_801172EC
/* 801172C8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801172CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801172D0  41 82 00 10 */	beq lbl_801172E0
/* 801172D4  7F E3 FB 78 */	mr r3, r31
/* 801172D8  48 01 5E D1 */	bl procWolfWaitInit__9daAlink_cFv
/* 801172DC  48 00 00 40 */	b lbl_8011731C
lbl_801172E0:
/* 801172E0  7F E3 FB 78 */	mr r3, r31
/* 801172E4  4B FA C0 D5 */	bl procWaitInit__9daAlink_cFv
/* 801172E8  48 00 00 34 */	b lbl_8011731C
lbl_801172EC:
/* 801172EC  28 00 01 3F */	cmplwi r0, 0x13f
/* 801172F0  40 82 00 2C */	bne lbl_8011731C
/* 801172F4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801172F8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801172FC  41 82 00 14 */	beq lbl_80117310
/* 80117300  7F E3 FB 78 */	mr r3, r31
/* 80117304  38 80 00 00 */	li r4, 0
/* 80117308  48 02 12 25 */	bl procWolfSwimWaitInit__9daAlink_cFi
/* 8011730C  48 00 00 10 */	b lbl_8011731C
lbl_80117310:
/* 80117310  7F E3 FB 78 */	mr r3, r31
/* 80117314  38 80 00 00 */	li r4, 0
/* 80117318  4B FE CF E1 */	bl procSwimWaitInit__9daAlink_cFi
lbl_8011731C:
/* 8011731C  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 80117320  2C 00 00 04 */	cmpwi r0, 4
/* 80117324  40 82 00 1C */	bne lbl_80117340
/* 80117328  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 8011732C  4B F3 15 01 */	bl checkStartDemo__16dEvent_manager_cFv
/* 80117330  2C 03 00 00 */	cmpwi r3, 0
/* 80117334  40 82 00 0C */	bne lbl_80117340
/* 80117338  38 00 00 02 */	li r0, 2
/* 8011733C  B0 1F 06 04 */	sth r0, 0x604(r31)
lbl_80117340:
/* 80117340  28 1C 00 00 */	cmplwi r28, 0
/* 80117344  41 82 01 58 */	beq lbl_8011749C
/* 80117348  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 8011734C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80117350  38 00 FF FF */	li r0, -1
/* 80117354  90 1F 31 84 */	stw r0, 0x3184(r31)
/* 80117358  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 8011735C  2C 00 00 01 */	cmpwi r0, 1
/* 80117360  41 82 00 A0 */	beq lbl_80117400
/* 80117364  38 00 00 01 */	li r0, 1
/* 80117368  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 8011736C  90 1F 06 14 */	stw r0, 0x614(r31)
/* 80117370  7F E3 FB 78 */	mr r3, r31
/* 80117374  4B FC D8 61 */	bl freeGrabItem__9daAlink_cFv
/* 80117378  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 8011737C  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha
/* 80117380  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l
/* 80117384  38 84 00 D0 */	addi r4, r4, 0xd0
/* 80117388  4B F3 06 B1 */	bl startCheckOld__16dEvent_manager_cFPCc
/* 8011738C  2C 03 00 00 */	cmpwi r3, 0
/* 80117390  41 82 00 24 */	beq lbl_801173B4
/* 80117394  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 80117398  28 00 00 42 */	cmplwi r0, 0x42
/* 8011739C  40 82 00 28 */	bne lbl_801173C4
/* 801173A0  7F E3 FB 78 */	mr r3, r31
/* 801173A4  38 80 00 00 */	li r4, 0
/* 801173A8  38 A0 00 00 */	li r5, 0
/* 801173AC  4B FA 9F 31 */	bl deleteEquipItem__9daAlink_cFii
/* 801173B0  48 00 00 14 */	b lbl_801173C4
lbl_801173B4:
/* 801173B4  7F E3 FB 78 */	mr r3, r31
/* 801173B8  38 80 00 00 */	li r4, 0
/* 801173BC  38 A0 00 01 */	li r5, 1
/* 801173C0  4B FA 9F 1D */	bl deleteEquipItem__9daAlink_cFii
lbl_801173C4:
/* 801173C4  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 801173C8  28 00 01 9C */	cmplwi r0, 0x19c
/* 801173CC  40 82 00 14 */	bne lbl_801173E0
/* 801173D0  7F E3 FB 78 */	mr r3, r31
/* 801173D4  38 80 00 02 */	li r4, 2
/* 801173D8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 801173DC  4B F9 63 49 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_801173E0:
/* 801173E0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801173E4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801173E8  41 82 00 10 */	beq lbl_801173F8
/* 801173EC  7F E3 FB 78 */	mr r3, r31
/* 801173F0  48 01 5D B9 */	bl procWolfWaitInit__9daAlink_cFv
/* 801173F4  48 00 00 0C */	b lbl_80117400
lbl_801173F8:
/* 801173F8  7F E3 FB 78 */	mr r3, r31
/* 801173FC  4B FA BF BD */	bl procWaitInit__9daAlink_cFv
lbl_80117400:
/* 80117400  A0 1C 00 04 */	lhz r0, 4(r28)
/* 80117404  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80117408  41 82 00 0C */	beq lbl_80117414
/* 8011740C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80117410  48 00 00 08 */	b lbl_80117418
lbl_80117414:
/* 80117414  80 1F 06 14 */	lwz r0, 0x614(r31)
lbl_80117418:
/* 80117418  90 01 00 18 */	stw r0, 0x18(r1)
/* 8011741C  A0 7C 00 04 */	lhz r3, 4(r28)
/* 80117420  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80117424  41 82 00 0C */	beq lbl_80117430
/* 80117428  3B 5C 00 08 */	addi r26, r28, 8
/* 8011742C  48 00 00 08 */	b lbl_80117434
lbl_80117430:
/* 80117430  3B 5F 04 D0 */	addi r26, r31, 0x4d0
lbl_80117434:
/* 80117434  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80117438  41 82 00 0C */	beq lbl_80117444
/* 8011743C  AB 3C 00 22 */	lha r25, 0x22(r28)
/* 80117440  48 00 00 34 */	b lbl_80117474
lbl_80117444:
/* 80117444  AB 3F 04 E6 */	lha r25, 0x4e6(r31)
/* 80117448  48 00 00 2C */	b lbl_80117474
lbl_8011744C:
/* 8011744C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80117450  2C 00 00 00 */	cmpwi r0, 0
/* 80117454  40 82 00 20 */	bne lbl_80117474
/* 80117458  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8011745C  2C 00 00 00 */	cmpwi r0, 0
/* 80117460  40 82 00 14 */	bne lbl_80117474
/* 80117464  7F E3 FB 78 */	mr r3, r31
/* 80117468  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8011746C  A0 A1 00 08 */	lhz r5, 8(r1)
/* 80117470  4B FF FB F5 */	bl setNoDrawSwordShield__9daAlink_cFiUs
lbl_80117474:
/* 80117474  7F 83 E3 78 */	mr r3, r28
/* 80117478  38 81 00 14 */	addi r4, r1, 0x14
/* 8011747C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80117480  38 C1 00 0C */	addi r6, r1, 0xc
/* 80117484  38 E1 00 08 */	addi r7, r1, 8
/* 80117488  39 00 00 00 */	li r8, 0
/* 8011748C  4B F2 0E AD */	bl getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc
/* 80117490  2C 03 00 00 */	cmpwi r3, 0
/* 80117494  40 82 FF B8 */	bne lbl_8011744C
/* 80117498  48 00 03 38 */	b lbl_801177D0
lbl_8011749C:
/* 8011749C  3B 80 00 00 */	li r28, 0
/* 801174A0  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 801174A4  2C 00 00 00 */	cmpwi r0, 0
/* 801174A8  40 82 00 24 */	bne lbl_801174CC
/* 801174AC  38 00 00 02 */	li r0, 2
/* 801174B0  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 801174B4  3B 80 00 01 */	li r28, 1
/* 801174B8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 801174BC  28 00 00 00 */	cmplwi r0, 0
/* 801174C0  40 82 00 0C */	bne lbl_801174CC
/* 801174C4  38 00 00 41 */	li r0, 0x41
/* 801174C8  90 01 00 18 */	stw r0, 0x18(r1)
lbl_801174CC:
/* 801174CC  80 1F 31 84 */	lwz r0, 0x3184(r31)
/* 801174D0  2C 00 FF FF */	cmpwi r0, -1
/* 801174D4  41 82 02 6C */	beq lbl_80117740
/* 801174D8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801174DC  28 00 00 EA */	cmplwi r0, 0xea
/* 801174E0  40 82 00 0C */	bne lbl_801174EC
/* 801174E4  38 00 00 02 */	li r0, 2
/* 801174E8  B0 1F 06 04 */	sth r0, 0x604(r31)
lbl_801174EC:
/* 801174EC  3B 7E 4F F8 */	addi r27, r30, 0x4ff8
/* 801174F0  7F 63 DB 78 */	mr r3, r27
/* 801174F4  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 801174F8  4B F3 0A 65 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 801174FC  28 03 00 00 */	cmplwi r3, 0
/* 80117500  41 82 02 40 */	beq lbl_80117740
/* 80117504  88 03 00 02 */	lbz r0, 2(r3)
/* 80117508  7C 05 07 74 */	extsb r5, r0
/* 8011750C  88 03 00 00 */	lbz r0, 0(r3)
/* 80117510  7C 04 07 74 */	extsb r4, r0
/* 80117514  38 04 FF D0 */	addi r0, r4, -48
/* 80117518  1C 80 00 64 */	mulli r4, r0, 0x64
/* 8011751C  88 03 00 01 */	lbz r0, 1(r3)
/* 80117520  7C 03 07 74 */	extsb r3, r0
/* 80117524  38 03 FF D0 */	addi r0, r3, -48
/* 80117528  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8011752C  7C 64 02 14 */	add r3, r4, r0
/* 80117530  7C 63 2A 14 */	add r3, r3, r5
/* 80117534  38 63 FF D0 */	addi r3, r3, -48
/* 80117538  90 61 00 18 */	stw r3, 0x18(r1)
/* 8011753C  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 80117540  2C 00 00 04 */	cmpwi r0, 4
/* 80117544  41 82 00 40 */	beq lbl_80117584
/* 80117548  28 03 00 01 */	cmplwi r3, 1
/* 8011754C  41 82 00 0C */	beq lbl_80117558
/* 80117550  28 03 00 17 */	cmplwi r3, 0x17
/* 80117554  40 82 00 30 */	bne lbl_80117584
lbl_80117558:
/* 80117558  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011755C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80117560  41 82 00 24 */	beq lbl_80117584
/* 80117564  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 80117568  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 8011756C  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 80117570  7C 80 00 39 */	and. r0, r4, r0
/* 80117574  40 82 00 10 */	bne lbl_80117584
/* 80117578  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011757C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80117580  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80117584:
/* 80117584  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80117588  28 00 00 32 */	cmplwi r0, 0x32
/* 8011758C  40 82 00 48 */	bne lbl_801175D4
/* 80117590  3A E0 00 01 */	li r23, 1
/* 80117594  48 09 4F E9 */	bl dKy_darkworld_check__Fv
/* 80117598  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011759C  28 00 00 01 */	cmplwi r0, 1
/* 801175A0  41 82 00 24 */	beq lbl_801175C4
/* 801175A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801175A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801175AC  38 63 00 28 */	addi r3, r3, 0x28
/* 801175B0  38 80 00 03 */	li r4, 3
/* 801175B4  4B F1 B6 39 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 801175B8  2C 03 00 00 */	cmpwi r3, 0
/* 801175BC  40 82 00 08 */	bne lbl_801175C4
/* 801175C0  3A E0 00 00 */	li r23, 0
lbl_801175C4:
/* 801175C4  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801175C8  40 82 00 0C */	bne lbl_801175D4
/* 801175CC  38 00 00 01 */	li r0, 1
/* 801175D0  90 01 00 18 */	stw r0, 0x18(r1)
lbl_801175D4:
/* 801175D4  7F 63 DB 78 */	mr r3, r27
/* 801175D8  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 801175DC  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha
/* 801175E0  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l
/* 801175E4  38 A5 00 DC */	addi r5, r5, 0xdc
/* 801175E8  38 C0 00 01 */	li r6, 1
/* 801175EC  4B F3 0B 01 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 801175F0  7C 7A 1B 78 */	mr r26, r3
/* 801175F4  28 03 00 00 */	cmplwi r3, 0
/* 801175F8  40 82 00 10 */	bne lbl_80117608
/* 801175FC  7F 63 DB 78 */	mr r3, r27
/* 80117600  4B F3 0D E1 */	bl getGoal__16dEvent_manager_cFv
/* 80117604  7C 7A 1B 78 */	mr r26, r3
lbl_80117608:
/* 80117608  7F 63 DB 78 */	mr r3, r27
/* 8011760C  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 80117610  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha
/* 80117614  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l
/* 80117618  38 A5 00 E0 */	addi r5, r5, 0xe0
/* 8011761C  38 C0 00 03 */	li r6, 3
/* 80117620  4B F3 0A CD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80117624  28 03 00 00 */	cmplwi r3, 0
/* 80117628  41 82 00 10 */	beq lbl_80117638
/* 8011762C  80 03 00 00 */	lwz r0, 0(r3)
/* 80117630  7C 19 07 34 */	extsh r25, r0
/* 80117634  48 00 00 1C */	b lbl_80117650
lbl_80117638:
/* 80117638  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8011763C  28 00 00 05 */	cmplwi r0, 5
/* 80117640  40 82 00 0C */	bne lbl_8011764C
/* 80117644  AB 3F 06 06 */	lha r25, 0x606(r31)
/* 80117648  48 00 00 08 */	b lbl_80117650
lbl_8011764C:
/* 8011764C  AB 3F 04 E6 */	lha r25, 0x4e6(r31)
lbl_80117650:
/* 80117650  7F 63 DB 78 */	mr r3, r27
/* 80117654  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 80117658  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha
/* 8011765C  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l
/* 80117660  38 A5 00 E6 */	addi r5, r5, 0xe6
/* 80117664  38 C0 00 03 */	li r6, 3
/* 80117668  4B F3 0A 85 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8011766C  7C 78 1B 78 */	mr r24, r3
/* 80117670  7F 63 DB 78 */	mr r3, r27
/* 80117674  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 80117678  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha
/* 8011767C  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l
/* 80117680  38 A5 00 EB */	addi r5, r5, 0xeb
/* 80117684  38 C0 00 03 */	li r6, 3
/* 80117688  4B F3 0A 65 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8011768C  7C 77 1B 78 */	mr r23, r3
/* 80117690  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 80117694  2C 00 00 02 */	cmpwi r0, 2
/* 80117698  40 82 00 3C */	bne lbl_801176D4
/* 8011769C  7F 63 DB 78 */	mr r3, r27
/* 801176A0  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 801176A4  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha
/* 801176A8  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l
/* 801176AC  38 A5 00 F0 */	addi r5, r5, 0xf0
/* 801176B0  38 C0 00 00 */	li r6, 0
/* 801176B4  4B F3 0A 39 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 801176B8  28 03 00 00 */	cmplwi r3, 0
/* 801176BC  41 82 00 10 */	beq lbl_801176CC
/* 801176C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 801176C4  D0 1F 06 18 */	stfs f0, 0x618(r31)
/* 801176C8  48 00 00 0C */	b lbl_801176D4
lbl_801176CC:
/* 801176CC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801176D0  D0 1F 06 18 */	stfs f0, 0x618(r31)
lbl_801176D4:
/* 801176D4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801176D8  28 00 00 02 */	cmplwi r0, 2
/* 801176DC  41 82 00 0C */	beq lbl_801176E8
/* 801176E0  28 00 00 03 */	cmplwi r0, 3
/* 801176E4  40 82 00 5C */	bne lbl_80117740
lbl_801176E8:
/* 801176E8  28 17 00 00 */	cmplwi r23, 0
/* 801176EC  41 82 00 54 */	beq lbl_80117740
/* 801176F0  80 17 00 00 */	lwz r0, 0(r23)
/* 801176F4  2C 00 00 01 */	cmpwi r0, 1
/* 801176F8  40 82 00 48 */	bne lbl_80117740
/* 801176FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80117700  4B EF 56 65 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80117704  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80117708  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8011770C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80117710  4B EF 4D 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 80117714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80117718  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8011771C  7F 44 D3 78 */	mr r4, r26
/* 80117720  38 A1 00 40 */	addi r5, r1, 0x40
/* 80117724  48 22 F6 49 */	bl PSMTXMultVec
/* 80117728  7F 63 DB 78 */	mr r3, r27
/* 8011772C  38 81 00 40 */	addi r4, r1, 0x40
/* 80117730  4B F3 0C 95 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 80117734  7F 63 DB 78 */	mr r3, r27
/* 80117738  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011773C  4B F3 0A 41 */	bl cutEnd__16dEvent_manager_cFi
lbl_80117740:
/* 80117740  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 80117744  28 03 00 42 */	cmplwi r3, 0x42
/* 80117748  41 82 00 10 */	beq lbl_80117758
/* 8011774C  48 04 72 D5 */	bl checkFishingRodItem__9daPy_py_cFi
/* 80117750  2C 03 00 00 */	cmpwi r3, 0
/* 80117754  41 82 00 7C */	beq lbl_801177D0
lbl_80117758:
/* 80117758  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8011775C  28 03 00 01 */	cmplwi r3, 1
/* 80117760  41 82 00 70 */	beq lbl_801177D0
/* 80117764  28 03 00 1F */	cmplwi r3, 0x1f
/* 80117768  41 82 00 68 */	beq lbl_801177D0
/* 8011776C  80 1F 31 84 */	lwz r0, 0x3184(r31)
/* 80117770  2C 00 FF FF */	cmpwi r0, -1
/* 80117774  40 82 00 10 */	bne lbl_80117784
/* 80117778  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 8011777C  2C 00 00 03 */	cmpwi r0, 3
/* 80117780  40 82 00 50 */	bne lbl_801177D0
lbl_80117784:
/* 80117784  28 03 00 06 */	cmplwi r3, 6
/* 80117788  40 82 00 1C */	bne lbl_801177A4
/* 8011778C  2C 1C 00 00 */	cmpwi r28, 0
/* 80117790  40 82 00 40 */	bne lbl_801177D0
/* 80117794  7F E3 FB 78 */	mr r3, r31
/* 80117798  4B FA 1B A9 */	bl checkEquipAnime__9daAlink_cCFv
/* 8011779C  2C 03 00 00 */	cmpwi r3, 0
/* 801177A0  40 82 00 30 */	bne lbl_801177D0
lbl_801177A4:
/* 801177A4  7F E3 FB 78 */	mr r3, r31
/* 801177A8  38 80 00 00 */	li r4, 0
/* 801177AC  38 A0 00 01 */	li r5, 1
/* 801177B0  4B FA 9B 2D */	bl deleteEquipItem__9daAlink_cFii
/* 801177B4  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 801177B8  28 00 01 9C */	cmplwi r0, 0x19c
/* 801177BC  40 82 00 14 */	bne lbl_801177D0
/* 801177C0  7F E3 FB 78 */	mr r3, r31
/* 801177C4  38 80 00 02 */	li r4, 2
/* 801177C8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 801177CC  4B F9 5F 59 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_801177D0:
/* 801177D0  A0 7F 06 04 */	lhz r3, 0x604(r31)
/* 801177D4  2C 03 00 04 */	cmpwi r3, 4
/* 801177D8  40 82 00 9C */	bne lbl_80117874
/* 801177DC  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 801177E0  28 00 00 0E */	cmplwi r0, 0xe
/* 801177E4  40 82 03 94 */	bne lbl_80117B78
/* 801177E8  A8 1F 06 08 */	lha r0, 0x608(r31)
/* 801177EC  7C 00 07 35 */	extsh. r0, r0
/* 801177F0  41 82 00 74 */	beq lbl_80117864
/* 801177F4  A8 7F 06 08 */	lha r3, 0x608(r31)
/* 801177F8  38 03 FF FF */	addi r0, r3, -1
/* 801177FC  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80117800  38 61 00 28 */	addi r3, r1, 0x28
/* 80117804  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80117808  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 8011780C  48 14 F3 29 */	bl __mi__4cXyzCFRC3Vec
/* 80117810  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80117814  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80117818  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8011781C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80117820  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80117824  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80117828  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8011782C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80117830  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80117834  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80117838  38 61 00 1C */	addi r3, r1, 0x1c
/* 8011783C  48 22 F8 FD */	bl PSVECSquareMag
/* 80117840  C0 02 94 90 */	lfs f0, lit_16067(r2)
/* 80117844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80117848  40 81 03 30 */	ble lbl_80117B78
/* 8011784C  38 00 00 00 */	li r0, 0
/* 80117850  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80117854  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80117858  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011785C  4B F3 09 21 */	bl cutEnd__16dEvent_manager_cFi
/* 80117860  48 00 03 18 */	b lbl_80117B78
lbl_80117864:
/* 80117864  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80117868  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011786C  4B F3 09 11 */	bl cutEnd__16dEvent_manager_cFi
/* 80117870  48 00 03 08 */	b lbl_80117B78
lbl_80117874:
/* 80117874  2C 03 00 01 */	cmpwi r3, 1
/* 80117878  41 82 00 18 */	beq lbl_80117890
/* 8011787C  2C 03 00 02 */	cmpwi r3, 2
/* 80117880  40 82 00 D0 */	bne lbl_80117950
/* 80117884  80 1F 31 84 */	lwz r0, 0x3184(r31)
/* 80117888  2C 00 FF FF */	cmpwi r0, -1
/* 8011788C  41 82 00 C4 */	beq lbl_80117950
lbl_80117890:
/* 80117890  28 18 00 00 */	cmplwi r24, 0
/* 80117894  41 82 00 10 */	beq lbl_801178A4
/* 80117898  80 18 00 00 */	lwz r0, 0(r24)
/* 8011789C  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 801178A0  48 00 00 0C */	b lbl_801178AC
lbl_801178A4:
/* 801178A4  38 00 00 00 */	li r0, 0
/* 801178A8  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_801178AC:
/* 801178AC  28 17 00 00 */	cmplwi r23, 0
/* 801178B0  41 82 00 10 */	beq lbl_801178C0
/* 801178B4  80 17 00 00 */	lwz r0, 0(r23)
/* 801178B8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 801178BC  48 00 00 0C */	b lbl_801178C8
lbl_801178C0:
/* 801178C0  38 00 00 00 */	li r0, 0
/* 801178C4  90 1F 06 10 */	stw r0, 0x610(r31)
lbl_801178C8:
/* 801178C8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801178CC  28 04 00 04 */	cmplwi r4, 4
/* 801178D0  40 82 00 40 */	bne lbl_80117910
/* 801178D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801178D8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801178DC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 801178E0  38 7F 08 14 */	addi r3, r31, 0x814
/* 801178E4  48 14 C0 79 */	bl ClrCcMove__9cCcD_SttsFv
/* 801178E8  7F E3 FB 78 */	mr r3, r31
/* 801178EC  7F 44 D3 78 */	mr r4, r26
/* 801178F0  7F 25 CB 78 */	mr r5, r25
/* 801178F4  38 C0 00 00 */	li r6, 0
/* 801178F8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801178FC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80117900  7D 89 03 A6 */	mtctr r12
/* 80117904  4E 80 04 21 */	bctrl 
/* 80117908  B3 3F 06 06 */	sth r25, 0x606(r31)
/* 8011790C  48 00 00 38 */	b lbl_80117944
lbl_80117910:
/* 80117910  7F E3 FB 78 */	mr r3, r31
/* 80117914  4B FF F5 4D */	bl checkDemoMoveMode__9daAlink_cCFUl
/* 80117918  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011791C  41 82 00 18 */	beq lbl_80117934
/* 80117920  7F E3 FB 78 */	mr r3, r31
/* 80117924  38 81 00 18 */	addi r4, r1, 0x18
/* 80117928  7F 45 D3 78 */	mr r5, r26
/* 8011792C  4B FF F5 71 */	bl setDemoMoveData__9daAlink_cFPUlPC4cXyz
/* 80117930  48 00 00 14 */	b lbl_80117944
lbl_80117934:
/* 80117934  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80117938  28 00 00 05 */	cmplwi r0, 5
/* 8011793C  40 82 00 08 */	bne lbl_80117944
/* 80117940  B3 3F 06 06 */	sth r25, 0x606(r31)
lbl_80117944:
/* 80117944  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80117948  90 1F 06 14 */	stw r0, 0x614(r31)
/* 8011794C  48 00 00 60 */	b lbl_801179AC
lbl_80117950:
/* 80117950  2C 03 00 03 */	cmpwi r3, 3
/* 80117954  40 82 00 50 */	bne lbl_801179A4
/* 80117958  80 9F 06 14 */	lwz r4, 0x614(r31)
/* 8011795C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80117960  7F E3 FB 78 */	mr r3, r31
/* 80117964  4B FF F4 FD */	bl checkDemoMoveMode__9daAlink_cCFUl
/* 80117968  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011796C  41 82 00 20 */	beq lbl_8011798C
/* 80117970  7F E3 FB 78 */	mr r3, r31
/* 80117974  38 81 00 18 */	addi r4, r1, 0x18
/* 80117978  38 BF 06 1C */	addi r5, r31, 0x61c
/* 8011797C  4B FF F5 21 */	bl setDemoMoveData__9daAlink_cFPUlPC4cXyz
/* 80117980  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80117984  90 1F 06 14 */	stw r0, 0x614(r31)
/* 80117988  48 00 00 24 */	b lbl_801179AC
lbl_8011798C:
/* 8011798C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80117990  28 00 00 41 */	cmplwi r0, 0x41
/* 80117994  40 82 00 18 */	bne lbl_801179AC
/* 80117998  38 00 00 01 */	li r0, 1
/* 8011799C  90 1F 06 14 */	stw r0, 0x614(r31)
/* 801179A0  48 00 00 0C */	b lbl_801179AC
lbl_801179A4:
/* 801179A4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801179A8  90 1F 06 14 */	stw r0, 0x614(r31)
lbl_801179AC:
/* 801179AC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 801179B0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 801179B4  40 82 00 18 */	bne lbl_801179CC
/* 801179B8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 801179BC  28 00 00 06 */	cmplwi r0, 6
/* 801179C0  41 82 00 0C */	beq lbl_801179CC
/* 801179C4  28 00 00 08 */	cmplwi r0, 8
/* 801179C8  40 82 00 1C */	bne lbl_801179E4
lbl_801179CC:
/* 801179CC  80 1D 5F 18 */	lwz r0, 0x5f18(r29)
/* 801179D0  60 00 00 10 */	ori r0, r0, 0x10
/* 801179D4  90 1D 5F 18 */	stw r0, 0x5f18(r29)
/* 801179D8  38 00 00 1E */	li r0, 0x1e
/* 801179DC  98 1F 2F B2 */	stb r0, 0x2fb2(r31)
/* 801179E0  48 00 00 10 */	b lbl_801179F0
lbl_801179E4:
/* 801179E4  80 1D 5F 18 */	lwz r0, 0x5f18(r29)
/* 801179E8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 801179EC  90 1D 5F 18 */	stw r0, 0x5f18(r29)
lbl_801179F0:
/* 801179F0  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 801179F4  2C 04 FF FF */	cmpwi r4, -1
/* 801179F8  41 82 00 5C */	beq lbl_80117A54
/* 801179FC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80117A00  28 03 00 01 */	cmplwi r3, 1
/* 80117A04  41 82 00 48 */	beq lbl_80117A4C
/* 80117A08  28 03 00 04 */	cmplwi r3, 4
/* 80117A0C  41 82 00 40 */	beq lbl_80117A4C
/* 80117A10  28 03 00 11 */	cmplwi r3, 0x11
/* 80117A14  41 82 00 38 */	beq lbl_80117A4C
/* 80117A18  38 03 FF F2 */	addi r0, r3, -14
/* 80117A1C  28 00 00 01 */	cmplwi r0, 1
/* 80117A20  40 81 00 2C */	ble lbl_80117A4C
/* 80117A24  38 03 FF EB */	addi r0, r3, -21
/* 80117A28  28 00 00 03 */	cmplwi r0, 3
/* 80117A2C  40 81 00 20 */	ble lbl_80117A4C
/* 80117A30  38 03 FF FA */	addi r0, r3, -6
/* 80117A34  28 00 00 02 */	cmplwi r0, 2
/* 80117A38  40 81 00 14 */	ble lbl_80117A4C
/* 80117A3C  28 03 00 29 */	cmplwi r3, 0x29
/* 80117A40  41 82 00 0C */	beq lbl_80117A4C
/* 80117A44  28 03 00 12 */	cmplwi r3, 0x12
/* 80117A48  40 82 00 0C */	bne lbl_80117A54
lbl_80117A4C:
/* 80117A4C  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80117A50  4B F3 07 2D */	bl cutEnd__16dEvent_manager_cFi
lbl_80117A54:
/* 80117A54  A8 1F 06 0A */	lha r0, 0x60a(r31)
/* 80117A58  7C 03 07 35 */	extsh. r3, r0
/* 80117A5C  41 82 00 FC */	beq lbl_80117B58
/* 80117A60  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80117A64  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80117A68  40 82 01 10 */	bne lbl_80117B78
/* 80117A6C  2C 03 00 01 */	cmpwi r3, 1
/* 80117A70  40 82 00 2C */	bne lbl_80117A9C
/* 80117A74  7F E3 FB 78 */	mr r3, r31
/* 80117A78  38 80 00 00 */	li r4, 0
/* 80117A7C  4B F9 80 2D */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80117A80  7F E3 FB 78 */	mr r3, r31
/* 80117A84  38 80 01 5A */	li r4, 0x15a
/* 80117A88  38 A0 00 01 */	li r5, 1
/* 80117A8C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80117A90  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80117A94  4B F9 7A 1D */	bl setFaceBck__9daAlink_cFUsiUs
/* 80117A98  48 00 00 A4 */	b lbl_80117B3C
lbl_80117A9C:
/* 80117A9C  2C 03 00 02 */	cmpwi r3, 2
/* 80117AA0  40 82 00 9C */	bne lbl_80117B3C
/* 80117AA4  7F E3 FB 78 */	mr r3, r31
/* 80117AA8  38 80 03 E1 */	li r4, 0x3e1
/* 80117AAC  38 A0 00 01 */	li r5, 1
/* 80117AB0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80117AB4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80117AB8  4B F9 7B 65 */	bl setFaceBtp__9daAlink_cFUsiUs
/* 80117ABC  80 7F 21 54 */	lwz r3, 0x2154(r31)
/* 80117AC0  A8 03 00 06 */	lha r0, 6(r3)
/* 80117AC4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80117AC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80117ACC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80117AD0  3C 00 43 30 */	lis r0, 0x4330
/* 80117AD4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80117AD8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80117ADC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80117AE0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80117AE4  7F E3 FB 78 */	mr r3, r31
/* 80117AE8  38 80 03 7B */	li r4, 0x37b
/* 80117AEC  38 A0 00 01 */	li r5, 1
/* 80117AF0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80117AF4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80117AF8  4B F9 7C D9 */	bl setFaceBtk__9daAlink_cFUsiUs
/* 80117AFC  80 7F 21 58 */	lwz r3, 0x2158(r31)
/* 80117B00  A8 03 00 06 */	lha r0, 6(r3)
/* 80117B04  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80117B08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80117B0C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80117B10  3C 00 43 30 */	lis r0, 0x4330
/* 80117B14  90 01 00 58 */	stw r0, 0x58(r1)
/* 80117B18  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80117B1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80117B20  D0 03 00 08 */	stfs f0, 8(r3)
/* 80117B24  7F E3 FB 78 */	mr r3, r31
/* 80117B28  38 80 01 49 */	li r4, 0x149
/* 80117B2C  38 A0 00 01 */	li r5, 1
/* 80117B30  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80117B34  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80117B38  4B F9 79 79 */	bl setFaceBck__9daAlink_cFUsiUs
lbl_80117B3C:
/* 80117B3C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80117B40  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 80117B44  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80117B48  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80117B4C  60 00 02 00 */	ori r0, r0, 0x200
/* 80117B50  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80117B54  48 00 00 24 */	b lbl_80117B78
lbl_80117B58:
/* 80117B58  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80117B5C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80117B60  41 82 00 18 */	beq lbl_80117B78
/* 80117B64  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80117B68  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80117B6C  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80117B70  7F E3 FB 78 */	mr r3, r31
/* 80117B74  4B F9 81 49 */	bl resetFacePriAnime__9daAlink_cFv
lbl_80117B78:
/* 80117B78  39 61 00 90 */	addi r11, r1, 0x90
/* 80117B7C  48 24 A6 95 */	bl _restgpr_23
/* 80117B80  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80117B84  7C 08 03 A6 */	mtlr r0
/* 80117B88  38 21 00 90 */	addi r1, r1, 0x90
/* 80117B8C  4E 80 00 20 */	blr 
