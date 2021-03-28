lbl_80B23344:
/* 80B23344  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B23348  7C 08 02 A6 */	mflr r0
/* 80B2334C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B23350  39 61 00 30 */	addi r11, r1, 0x30
/* 80B23354  4B 83 EE 88 */	b _savegpr_29
/* 80B23358  7C 7E 1B 78 */	mr r30, r3
/* 80B2335C  3C 80 80 B2 */	lis r4, m__18daNpc_Toby_Param_c@ha
/* 80B23360  3B E4 49 E4 */	addi r31, r4, m__18daNpc_Toby_Param_c@l
/* 80B23364  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B23368  2C 00 00 02 */	cmpwi r0, 2
/* 80B2336C  41 82 00 B0 */	beq lbl_80B2341C
/* 80B23370  40 80 02 9C */	bge lbl_80B2360C
/* 80B23374  2C 00 00 00 */	cmpwi r0, 0
/* 80B23378  40 80 00 0C */	bge lbl_80B23384
/* 80B2337C  48 00 02 90 */	b lbl_80B2360C
/* 80B23380  48 00 02 8C */	b lbl_80B2360C
lbl_80B23384:
/* 80B23384  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B23388  2C 00 00 00 */	cmpwi r0, 0
/* 80B2338C  40 82 00 90 */	bne lbl_80B2341C
/* 80B23390  4B FF F2 85 */	bl chkAttnZra__12daNpc_Toby_cFv
/* 80B23394  2C 03 00 00 */	cmpwi r3, 0
/* 80B23398  41 82 00 44 */	beq lbl_80B233DC
/* 80B2339C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B233A0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B233A4  4B 62 24 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B233A8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B233AC  38 1D 00 10 */	addi r0, r29, 0x10
/* 80B233B0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B233B4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B233B8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
/* 80B233BC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B233C0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B233C4  4B 62 24 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B233C8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B233CC  38 1D 00 14 */	addi r0, r29, 0x14
/* 80B233D0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B233D4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B233D8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B233DC:
/* 80B233DC  88 1E 0E 2E */	lbz r0, 0xe2e(r30)
/* 80B233E0  28 00 00 90 */	cmplwi r0, 0x90
/* 80B233E4  40 82 00 18 */	bne lbl_80B233FC
/* 80B233E8  7F C3 F3 78 */	mr r3, r30
/* 80B233EC  38 80 00 02 */	li r4, 2
/* 80B233F0  38 A0 00 00 */	li r5, 0
/* 80B233F4  4B 62 87 FC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B233F8  48 00 00 14 */	b lbl_80B2340C
lbl_80B233FC:
/* 80B233FC  7F C3 F3 78 */	mr r3, r30
/* 80B23400  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 80B23404  38 A0 00 00 */	li r5, 0
/* 80B23408  4B 62 87 E8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B2340C:
/* 80B2340C  38 00 00 00 */	li r0, 0
/* 80B23410  90 1E 0F F4 */	stw r0, 0xff4(r30)
/* 80B23414  38 00 00 02 */	li r0, 2
/* 80B23418  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B2341C:
/* 80B2341C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B23420  2C 00 00 00 */	cmpwi r0, 0
/* 80B23424  40 82 01 E8 */	bne lbl_80B2360C
/* 80B23428  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B2342C  28 00 00 00 */	cmplwi r0, 0
/* 80B23430  40 82 00 14 */	bne lbl_80B23444
/* 80B23434  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 80B23438  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B2343C  7C 03 00 00 */	cmpw r3, r0
/* 80B23440  40 82 01 78 */	bne lbl_80B235B8
lbl_80B23444:
/* 80B23444  80 7F 01 9C */	lwz r3, 0x19c(r31)
/* 80B23448  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80B2344C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B23450  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B23454  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 80B23458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2345C  88 1E 0E 2E */	lbz r0, 0xe2e(r30)
/* 80B23460  28 00 00 90 */	cmplwi r0, 0x90
/* 80B23464  40 82 00 14 */	bne lbl_80B23478
/* 80B23468  38 00 14 20 */	li r0, 0x1420
/* 80B2346C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B23470  38 00 14 2D */	li r0, 0x142d
/* 80B23474  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80B23478:
/* 80B23478  7F C3 F3 78 */	mr r3, r30
/* 80B2347C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B23480  38 A0 00 00 */	li r5, 0
/* 80B23484  38 C0 00 00 */	li r6, 0
/* 80B23488  38 E0 00 00 */	li r7, 0
/* 80B2348C  4B 62 87 EC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B23490  2C 03 00 00 */	cmpwi r3, 0
/* 80B23494  41 82 00 A8 */	beq lbl_80B2353C
/* 80B23498  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B2349C  38 81 00 08 */	addi r4, r1, 8
/* 80B234A0  4B 72 70 88 */	b getEventId__10dMsgFlow_cFPi
/* 80B234A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B234A8  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B234AC  41 82 00 08 */	beq lbl_80B234B4
/* 80B234B0  48 00 00 18 */	b lbl_80B234C8
lbl_80B234B4:
/* 80B234B4  38 00 00 03 */	li r0, 3
/* 80B234B8  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80B234BC  7F C3 F3 78 */	mr r3, r30
/* 80B234C0  4B 62 6D 64 */	b evtChange__8daNpcT_cFv
/* 80B234C4  48 00 00 78 */	b lbl_80B2353C
lbl_80B234C8:
/* 80B234C8  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 80B234CC  28 00 00 01 */	cmplwi r0, 1
/* 80B234D0  40 82 00 34 */	bne lbl_80B23504
/* 80B234D4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B234D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B234DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B234E0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B234E4  4B 62 21 FC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B234E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B234EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B234F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B234F4  4B 51 EF 74 */	b reset__14dEvt_control_cFv
/* 80B234F8  38 00 00 03 */	li r0, 3
/* 80B234FC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B23500  48 00 00 3C */	b lbl_80B2353C
lbl_80B23504:
/* 80B23504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B23508  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80B2350C  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 80B23510  38 00 00 03 */	li r0, 3
/* 80B23514  B0 05 06 04 */	sth r0, 0x604(r5)
/* 80B23518  38 60 00 00 */	li r3, 0
/* 80B2351C  90 65 06 0C */	stw r3, 0x60c(r5)
/* 80B23520  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B23524  38 00 00 06 */	li r0, 6
/* 80B23528  90 04 06 14 */	stw r0, 0x614(r4)
/* 80B2352C  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80B23530  38 00 00 01 */	li r0, 1
/* 80B23534  90 04 06 10 */	stw r0, 0x610(r4)
/* 80B23538  B0 64 06 0A */	sth r3, 0x60a(r4)
lbl_80B2353C:
/* 80B2353C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B23540  2C 00 00 01 */	cmpwi r0, 1
/* 80B23544  41 82 00 28 */	beq lbl_80B2356C
/* 80B23548  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B2354C  4B 62 21 B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B23550  38 00 00 00 */	li r0, 0
/* 80B23554  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B23558  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B2355C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B23560  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B23564  38 00 00 01 */	li r0, 1
/* 80B23568  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B2356C:
/* 80B2356C  38 00 00 00 */	li r0, 0
/* 80B23570  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B23574  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B23578  28 00 00 00 */	cmplwi r0, 0
/* 80B2357C  41 82 00 90 */	beq lbl_80B2360C
/* 80B23580  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B23584  2C 00 00 00 */	cmpwi r0, 0
/* 80B23588  41 82 00 24 */	beq lbl_80B235AC
/* 80B2358C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B23590  4B 62 21 6C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B23594  38 00 00 00 */	li r0, 0
/* 80B23598  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B2359C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B235A0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B235A4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B235A8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B235AC:
/* 80B235AC  38 00 00 00 */	li r0, 0
/* 80B235B0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B235B4  48 00 00 58 */	b lbl_80B2360C
lbl_80B235B8:
/* 80B235B8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B235BC  2C 00 00 01 */	cmpwi r0, 1
/* 80B235C0  41 82 00 28 */	beq lbl_80B235E8
/* 80B235C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B235C8  4B 62 21 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B235CC  38 00 00 00 */	li r0, 0
/* 80B235D0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B235D4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B235D8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B235DC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B235E0  38 00 00 01 */	li r0, 1
/* 80B235E4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B235E8:
/* 80B235E8  38 00 00 00 */	li r0, 0
/* 80B235EC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B235F0  7F C3 F3 78 */	mr r3, r30
/* 80B235F4  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80B235F8  38 A0 00 10 */	li r5, 0x10
/* 80B235FC  38 C0 00 14 */	li r6, 0x14
/* 80B23600  38 E0 00 0F */	li r7, 0xf
/* 80B23604  39 00 00 00 */	li r8, 0
/* 80B23608  4B 62 80 40 */	b step__8daNpcT_cFsiiii
lbl_80B2360C:
/* 80B2360C  38 60 00 00 */	li r3, 0
/* 80B23610  39 61 00 30 */	addi r11, r1, 0x30
/* 80B23614  4B 83 EC 14 */	b _restgpr_29
/* 80B23618  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B2361C  7C 08 03 A6 */	mtlr r0
/* 80B23620  38 21 00 30 */	addi r1, r1, 0x30
/* 80B23624  4E 80 00 20 */	blr 
