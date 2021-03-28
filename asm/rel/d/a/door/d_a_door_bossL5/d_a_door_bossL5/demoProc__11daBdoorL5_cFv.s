lbl_80671324:
/* 80671324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80671328  7C 08 02 A6 */	mflr r0
/* 8067132C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80671330  39 61 00 30 */	addi r11, r1, 0x30
/* 80671334  4B CF 0E 9C */	b _savegpr_26
/* 80671338  7C 7B 1B 78 */	mr r27, r3
/* 8067133C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80671340  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80671344  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80671348  4B FF FF 95 */	bl getDemoAction__11daBdoorL5_cFv
/* 8067134C  7C 7F 1B 78 */	mr r31, r3
/* 80671350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80671354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80671358  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8067135C  7F A3 EB 78 */	mr r3, r29
/* 80671360  80 9B 05 9C */	lwz r4, 0x59c(r27)
/* 80671364  4B 9D 69 E8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80671368  2C 03 00 00 */	cmpwi r3, 0
/* 8067136C  41 82 01 24 */	beq lbl_80671490
/* 80671370  28 1F 00 0D */	cmplwi r31, 0xd
/* 80671374  41 81 01 1C */	bgt lbl_80671490
/* 80671378  3C 60 80 67 */	lis r3, lit_3951@ha
/* 8067137C  38 63 26 78 */	addi r3, r3, lit_3951@l
/* 80671380  57 E0 10 3A */	slwi r0, r31, 2
/* 80671384  7C 03 00 2E */	lwzx r0, r3, r0
/* 80671388  7C 09 03 A6 */	mtctr r0
/* 8067138C  4E 80 04 20 */	bctr 
lbl_80671390:
/* 80671390  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80671394  7C 1A 07 74 */	extsb r26, r0
/* 80671398  7F 63 DB 78 */	mr r3, r27
/* 8067139C  4B 9C 8E 34 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 806713A0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 806713A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806713A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806713AC  7F 45 D3 78 */	mr r5, r26
/* 806713B0  4B 9C 3F B0 */	b isSwitch__10dSv_info_cCFii
/* 806713B4  2C 03 00 00 */	cmpwi r3, 0
/* 806713B8  40 82 00 1C */	bne lbl_806713D4
/* 806713BC  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 806713C0  64 00 08 00 */	oris r0, r0, 0x800
/* 806713C4  90 1C 05 70 */	stw r0, 0x570(r28)
/* 806713C8  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 806713CC  60 00 04 00 */	ori r0, r0, 0x400
/* 806713D0  90 1C 05 78 */	stw r0, 0x578(r28)
lbl_806713D4:
/* 806713D4  7F 63 DB 78 */	mr r3, r27
/* 806713D8  48 00 04 A1 */	bl unlockInit__11daBdoorL5_cFv
/* 806713DC  48 00 00 B4 */	b lbl_80671490
lbl_806713E0:
/* 806713E0  7F 63 DB 78 */	mr r3, r27
/* 806713E4  48 00 01 ED */	bl openInit__11daBdoorL5_cFv
/* 806713E8  48 00 00 A8 */	b lbl_80671490
lbl_806713EC:
/* 806713EC  7F 63 DB 78 */	mr r3, r27
/* 806713F0  38 81 00 0C */	addi r4, r1, 0xc
/* 806713F4  38 A0 00 00 */	li r5, 0
/* 806713F8  48 00 05 5D */	bl calcGoal__11daBdoorL5_cFP4cXyzi
/* 806713FC  7F A3 EB 78 */	mr r3, r29
/* 80671400  38 81 00 0C */	addi r4, r1, 0xc
/* 80671404  4B 9D 6F C0 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80671408  48 00 00 88 */	b lbl_80671490
lbl_8067140C:
/* 8067140C  7F 63 DB 78 */	mr r3, r27
/* 80671410  38 81 00 0C */	addi r4, r1, 0xc
/* 80671414  38 A0 00 01 */	li r5, 1
/* 80671418  48 00 05 3D */	bl calcGoal__11daBdoorL5_cFP4cXyzi
/* 8067141C  7F A3 EB 78 */	mr r3, r29
/* 80671420  38 81 00 0C */	addi r4, r1, 0xc
/* 80671424  4B 9D 6F A0 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80671428  48 00 00 68 */	b lbl_80671490
lbl_8067142C:
/* 8067142C  7F 63 DB 78 */	mr r3, r27
/* 80671430  48 00 02 F1 */	bl closeInit__11daBdoorL5_cFv
/* 80671434  48 00 00 5C */	b lbl_80671490
lbl_80671438:
/* 80671438  7F 63 DB 78 */	mr r3, r27
/* 8067143C  48 00 06 41 */	bl smokeInit__11daBdoorL5_cFv
/* 80671440  48 00 00 50 */	b lbl_80671490
lbl_80671444:
/* 80671444  38 00 00 00 */	li r0, 0
/* 80671448  B0 1B 05 96 */	sth r0, 0x596(r27)
/* 8067144C  48 00 00 44 */	b lbl_80671490
lbl_80671450:
/* 80671450  38 00 00 28 */	li r0, 0x28
/* 80671454  98 1B 05 94 */	stb r0, 0x594(r27)
/* 80671458  48 00 00 38 */	b lbl_80671490
lbl_8067145C:
/* 8067145C  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80671460  64 00 08 00 */	oris r0, r0, 0x800
/* 80671464  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80671468  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 8067146C  60 00 04 00 */	ori r0, r0, 0x400
/* 80671470  90 1C 05 78 */	stw r0, 0x578(r28)
/* 80671474  48 00 00 1C */	b lbl_80671490
lbl_80671478:
/* 80671478  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 8067147C  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80671480  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80671484  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80671488  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 8067148C  90 1C 05 78 */	stw r0, 0x578(r28)
lbl_80671490:
/* 80671490  28 1F 00 0A */	cmplwi r31, 0xa
/* 80671494  41 81 01 18 */	bgt lbl_806715AC
/* 80671498  3C 60 80 67 */	lis r3, lit_3952@ha
/* 8067149C  38 63 26 4C */	addi r3, r3, lit_3952@l
/* 806714A0  57 E0 10 3A */	slwi r0, r31, 2
/* 806714A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 806714A8  7C 09 03 A6 */	mtctr r0
/* 806714AC  4E 80 04 20 */	bctr 
lbl_806714B0:
/* 806714B0  80 1B 05 8C */	lwz r0, 0x58c(r27)
/* 806714B4  90 01 00 08 */	stw r0, 8(r1)
/* 806714B8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 806714BC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 806714C0  38 81 00 08 */	addi r4, r1, 8
/* 806714C4  4B 9A 83 34 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 806714C8  28 03 00 00 */	cmplwi r3, 0
/* 806714CC  41 82 00 10 */	beq lbl_806714DC
/* 806714D0  88 03 2C A4 */	lbz r0, 0x2ca4(r3)
/* 806714D4  28 00 00 03 */	cmplwi r0, 3
/* 806714D8  41 82 00 14 */	beq lbl_806714EC
lbl_806714DC:
/* 806714DC  80 7B 05 8C */	lwz r3, 0x58c(r27)
/* 806714E0  3C 03 00 01 */	addis r0, r3, 1
/* 806714E4  28 00 FF FF */	cmplwi r0, 0xffff
/* 806714E8  40 82 00 D0 */	bne lbl_806715B8
lbl_806714EC:
/* 806714EC  7F A3 EB 78 */	mr r3, r29
/* 806714F0  80 9B 05 9C */	lwz r4, 0x59c(r27)
/* 806714F4  4B 9D 6C 88 */	b cutEnd__16dEvent_manager_cFi
/* 806714F8  48 00 00 C0 */	b lbl_806715B8
lbl_806714FC:
/* 806714FC  7F 63 DB 78 */	mr r3, r27
/* 80671500  48 00 01 71 */	bl openProc__11daBdoorL5_cFv
/* 80671504  2C 03 00 00 */	cmpwi r3, 0
/* 80671508  41 82 00 B0 */	beq lbl_806715B8
/* 8067150C  7F 63 DB 78 */	mr r3, r27
/* 80671510  48 00 02 09 */	bl openEnd__11daBdoorL5_cFv
/* 80671514  7F A3 EB 78 */	mr r3, r29
/* 80671518  80 9B 05 9C */	lwz r4, 0x59c(r27)
/* 8067151C  4B 9D 6C 60 */	b cutEnd__16dEvent_manager_cFi
/* 80671520  48 00 00 98 */	b lbl_806715B8
lbl_80671524:
/* 80671524  7F 63 DB 78 */	mr r3, r27
/* 80671528  48 00 02 D5 */	bl closeProc__11daBdoorL5_cFv
/* 8067152C  2C 03 00 00 */	cmpwi r3, 0
/* 80671530  41 82 00 88 */	beq lbl_806715B8
/* 80671534  7F 63 DB 78 */	mr r3, r27
/* 80671538  48 00 02 E9 */	bl closeEnd__11daBdoorL5_cFv
/* 8067153C  7F A3 EB 78 */	mr r3, r29
/* 80671540  80 9B 05 9C */	lwz r4, 0x59c(r27)
/* 80671544  4B 9D 6C 38 */	b cutEnd__16dEvent_manager_cFi
/* 80671548  48 00 00 70 */	b lbl_806715B8
lbl_8067154C:
/* 8067154C  A8 1B 05 96 */	lha r0, 0x596(r27)
/* 80671550  2C 00 00 00 */	cmpwi r0, 0
/* 80671554  40 82 00 30 */	bne lbl_80671584
/* 80671558  83 5E 5D AC */	lwz r26, 0x5dac(r30)
/* 8067155C  7F 63 DB 78 */	mr r3, r27
/* 80671560  4B 9C 8C C4 */	b getExitNo__13door_param2_cFP10fopAc_ac_c
/* 80671564  7C 64 1B 78 */	mr r4, r3
/* 80671568  7F 43 D3 78 */	mr r3, r26
/* 8067156C  38 A0 00 FF */	li r5, 0xff
/* 80671570  38 C0 00 00 */	li r6, 0
/* 80671574  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80671578  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8067157C  7D 89 03 A6 */	mtctr r12
/* 80671580  4E 80 04 21 */	bctrl 
lbl_80671584:
/* 80671584  A8 7B 05 96 */	lha r3, 0x596(r27)
/* 80671588  38 03 FF FF */	addi r0, r3, -1
/* 8067158C  B0 1B 05 96 */	sth r0, 0x596(r27)
/* 80671590  48 00 00 28 */	b lbl_806715B8
lbl_80671594:
/* 80671594  38 00 00 03 */	li r0, 3
/* 80671598  98 1B 05 91 */	stb r0, 0x591(r27)
/* 8067159C  7F A3 EB 78 */	mr r3, r29
/* 806715A0  80 9B 05 9C */	lwz r4, 0x59c(r27)
/* 806715A4  4B 9D 6B D8 */	b cutEnd__16dEvent_manager_cFi
/* 806715A8  48 00 00 10 */	b lbl_806715B8
lbl_806715AC:
/* 806715AC  7F A3 EB 78 */	mr r3, r29
/* 806715B0  80 9B 05 9C */	lwz r4, 0x59c(r27)
/* 806715B4  4B 9D 6B C8 */	b cutEnd__16dEvent_manager_cFi
lbl_806715B8:
/* 806715B8  39 61 00 30 */	addi r11, r1, 0x30
/* 806715BC  4B CF 0C 60 */	b _restgpr_26
/* 806715C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806715C4  7C 08 03 A6 */	mtlr r0
/* 806715C8  38 21 00 30 */	addi r1, r1, 0x30
/* 806715CC  4E 80 00 20 */	blr 
