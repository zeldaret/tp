lbl_80B572C8:
/* 80B572C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B572CC  7C 08 02 A6 */	mflr r0
/* 80B572D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B572D4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B572D8  4B 80 AE F4 */	b _savegpr_25
/* 80B572DC  7C 7B 1B 78 */	mr r27, r3
/* 80B572E0  7C 99 23 78 */	mr r25, r4
/* 80B572E4  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B572E8  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l
/* 80B572EC  3B A0 00 00 */	li r29, 0
/* 80B572F0  3B 80 FF FF */	li r28, -1
/* 80B572F4  3B 40 00 00 */	li r26, 0
/* 80B572F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B572FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B57300  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B57304  7F C3 F3 78 */	mr r3, r30
/* 80B57308  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B5730C  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B57310  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B57314  38 C0 00 03 */	li r6, 3
/* 80B57318  4B 4F 0D D4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B5731C  28 03 00 00 */	cmplwi r3, 0
/* 80B57320  41 82 00 08 */	beq lbl_80B57328
/* 80B57324  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B57328:
/* 80B57328  7F C3 F3 78 */	mr r3, r30
/* 80B5732C  7F 24 CB 78 */	mr r4, r25
/* 80B57330  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B57334  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B57338  38 A5 00 9B */	addi r5, r5, 0x9b
/* 80B5733C  38 C0 00 03 */	li r6, 3
/* 80B57340  4B 4F 0D AC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B57344  28 03 00 00 */	cmplwi r3, 0
/* 80B57348  41 82 00 08 */	beq lbl_80B57350
/* 80B5734C  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B57350:
/* 80B57350  7F C3 F3 78 */	mr r3, r30
/* 80B57354  7F 24 CB 78 */	mr r4, r25
/* 80B57358  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B5735C  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B57360  38 A5 00 A1 */	addi r5, r5, 0xa1
/* 80B57364  38 C0 00 03 */	li r6, 3
/* 80B57368  4B 4F 0D 84 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B5736C  7F C3 F3 78 */	mr r3, r30
/* 80B57370  7F 24 CB 78 */	mr r4, r25
/* 80B57374  4B 4F 09 D8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B57378  2C 03 00 00 */	cmpwi r3, 0
/* 80B5737C  41 82 01 84 */	beq lbl_80B57500
/* 80B57380  2C 1C 00 02 */	cmpwi r28, 2
/* 80B57384  41 82 01 44 */	beq lbl_80B574C8
/* 80B57388  40 80 01 78 */	bge lbl_80B57500
/* 80B5738C  2C 1C 00 00 */	cmpwi r28, 0
/* 80B57390  41 82 00 10 */	beq lbl_80B573A0
/* 80B57394  40 80 00 38 */	bge lbl_80B573CC
/* 80B57398  48 00 01 68 */	b lbl_80B57500
/* 80B5739C  48 00 01 64 */	b lbl_80B57500
lbl_80B573A0:
/* 80B573A0  38 60 00 0B */	li r3, 0xb
/* 80B573A4  4B 5F 57 88 */	b daNpcT_offTmpBit__FUl
/* 80B573A8  38 60 00 0C */	li r3, 0xc
/* 80B573AC  4B 5F 57 80 */	b daNpcT_offTmpBit__FUl
/* 80B573B0  38 60 00 0D */	li r3, 0xd
/* 80B573B4  4B 5F 57 78 */	b daNpcT_offTmpBit__FUl
/* 80B573B8  7F 63 DB 78 */	mr r3, r27
/* 80B573BC  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80B573C0  38 A0 00 00 */	li r5, 0
/* 80B573C4  4B 5F 48 2C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B573C8  48 00 01 38 */	b lbl_80B57500
lbl_80B573CC:
/* 80B573CC  93 5B 0D C4 */	stw r26, 0xdc4(r27)
/* 80B573D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B573D4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80B573D8  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80B573DC  7F 64 DB 78 */	mr r4, r27
/* 80B573E0  4B 4C 33 30 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B573E4  B0 7B 15 6C */	sth r3, 0x156c(r27)
/* 80B573E8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B573EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B573F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B573F4  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 80B573F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B573FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B57400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B57404  A8 9B 15 6C */	lha r4, 0x156c(r27)
/* 80B57408  4B 4B 4F D4 */	b mDoMtx_YrotS__FPA4_fs
/* 80B5740C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B57410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B57414  38 81 00 14 */	addi r4, r1, 0x14
/* 80B57418  7C 85 23 78 */	mr r5, r4
/* 80B5741C  4B 7E F9 50 */	b PSMTXMultVec
/* 80B57420  38 61 00 08 */	addi r3, r1, 8
/* 80B57424  38 81 00 14 */	addi r4, r1, 0x14
/* 80B57428  80 BA 5D AC */	lwz r5, 0x5dac(r26)
/* 80B5742C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80B57430  4B 70 F6 B4 */	b __pl__4cXyzCFRC3Vec
/* 80B57434  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B57438  D0 1B 15 20 */	stfs f0, 0x1520(r27)
/* 80B5743C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B57440  D0 1B 15 24 */	stfs f0, 0x1524(r27)
/* 80B57444  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B57448  D0 1B 15 28 */	stfs f0, 0x1528(r27)
/* 80B5744C  7F C3 F3 78 */	mr r3, r30
/* 80B57450  38 9B 15 20 */	addi r4, r27, 0x1520
/* 80B57454  4B 4F 0F 70 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80B57458  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5745C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B57460  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B57464  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80B57468  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B5746C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B57470  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B57474  A8 9B 15 6C */	lha r4, 0x156c(r27)
/* 80B57478  4B 4B 4F 64 */	b mDoMtx_YrotS__FPA4_fs
/* 80B5747C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B57480  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B57484  38 81 00 14 */	addi r4, r1, 0x14
/* 80B57488  7C 85 23 78 */	mr r5, r4
/* 80B5748C  4B 7E F8 E0 */	b PSMTXMultVec
/* 80B57490  38 61 00 14 */	addi r3, r1, 0x14
/* 80B57494  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80B57498  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B5749C  7C 65 1B 78 */	mr r5, r3
/* 80B574A0  4B 7E FB F0 */	b PSVECAdd
/* 80B574A4  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80B574A8  38 81 00 14 */	addi r4, r1, 0x14
/* 80B574AC  A8 BB 15 6C */	lha r5, 0x156c(r27)
/* 80B574B0  38 C0 00 00 */	li r6, 0
/* 80B574B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B574B8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B574BC  7D 89 03 A6 */	mtctr r12
/* 80B574C0  4E 80 04 21 */	bctrl 
/* 80B574C4  48 00 00 3C */	b lbl_80B57500
lbl_80B574C8:
/* 80B574C8  7F 63 DB 78 */	mr r3, r27
/* 80B574CC  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80B574D0  38 A0 00 00 */	li r5, 0
/* 80B574D4  4B 5F 47 1C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B574D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B574DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B574E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B574E4  38 9B 15 20 */	addi r4, r27, 0x1520
/* 80B574E8  A8 BB 15 6C */	lha r5, 0x156c(r27)
/* 80B574EC  38 C0 00 00 */	li r6, 0
/* 80B574F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B574F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B574F8  7D 89 03 A6 */	mtctr r12
/* 80B574FC  4E 80 04 21 */	bctrl 
lbl_80B57500:
/* 80B57500  2C 1C 00 02 */	cmpwi r28, 2
/* 80B57504  41 82 00 A8 */	beq lbl_80B575AC
/* 80B57508  40 80 00 14 */	bge lbl_80B5751C
/* 80B5750C  2C 1C 00 00 */	cmpwi r28, 0
/* 80B57510  41 82 00 18 */	beq lbl_80B57528
/* 80B57514  40 80 00 80 */	bge lbl_80B57594
/* 80B57518  48 00 01 04 */	b lbl_80B5761C
lbl_80B5751C:
/* 80B5751C  2C 1C 00 04 */	cmpwi r28, 4
/* 80B57520  40 80 00 FC */	bge lbl_80B5761C
/* 80B57524  48 00 00 F4 */	b lbl_80B57618
lbl_80B57528:
/* 80B57528  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5752C  2C 00 00 01 */	cmpwi r0, 1
/* 80B57530  41 82 00 28 */	beq lbl_80B57558
/* 80B57534  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B57538  4B 5E E1 C4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5753C  38 00 00 00 */	li r0, 0
/* 80B57540  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B57544  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57548  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5754C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B57550  38 00 00 01 */	li r0, 1
/* 80B57554  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B57558:
/* 80B57558  38 00 00 00 */	li r0, 0
/* 80B5755C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B57560  7F 63 DB 78 */	mr r3, r27
/* 80B57564  38 80 00 00 */	li r4, 0
/* 80B57568  38 A0 00 00 */	li r5, 0
/* 80B5756C  38 C0 00 00 */	li r6, 0
/* 80B57570  38 E0 00 00 */	li r7, 0
/* 80B57574  4B 5F 47 04 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B57578  2C 03 00 00 */	cmpwi r3, 0
/* 80B5757C  41 82 00 A0 */	beq lbl_80B5761C
/* 80B57580  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B57584  28 00 00 01 */	cmplwi r0, 1
/* 80B57588  40 82 00 94 */	bne lbl_80B5761C
/* 80B5758C  3B A0 00 01 */	li r29, 1
/* 80B57590  48 00 00 8C */	b lbl_80B5761C
lbl_80B57594:
/* 80B57594  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 80B57598  48 00 5D E1 */	bl func_80B5D378
/* 80B5759C  2C 03 00 00 */	cmpwi r3, 0
/* 80B575A0  40 82 00 7C */	bne lbl_80B5761C
/* 80B575A4  3B A0 00 01 */	li r29, 1
/* 80B575A8  48 00 00 74 */	b lbl_80B5761C
lbl_80B575AC:
/* 80B575AC  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B575B0  2C 00 00 01 */	cmpwi r0, 1
/* 80B575B4  41 82 00 28 */	beq lbl_80B575DC
/* 80B575B8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B575BC  4B 5E E1 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B575C0  38 00 00 00 */	li r0, 0
/* 80B575C4  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B575C8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B575CC  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B575D0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B575D4  38 00 00 01 */	li r0, 1
/* 80B575D8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B575DC:
/* 80B575DC  38 00 00 00 */	li r0, 0
/* 80B575E0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B575E4  7F 63 DB 78 */	mr r3, r27
/* 80B575E8  38 80 00 00 */	li r4, 0
/* 80B575EC  38 A0 00 00 */	li r5, 0
/* 80B575F0  38 C0 00 00 */	li r6, 0
/* 80B575F4  38 E0 00 00 */	li r7, 0
/* 80B575F8  4B 5F 46 80 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B575FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B57600  41 82 00 1C */	beq lbl_80B5761C
/* 80B57604  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B57608  28 00 00 01 */	cmplwi r0, 1
/* 80B5760C  40 82 00 10 */	bne lbl_80B5761C
/* 80B57610  3B A0 00 01 */	li r29, 1
/* 80B57614  48 00 00 08 */	b lbl_80B5761C
lbl_80B57618:
/* 80B57618  3B A0 00 01 */	li r29, 1
lbl_80B5761C:
/* 80B5761C  7F A3 EB 78 */	mr r3, r29
/* 80B57620  39 61 00 40 */	addi r11, r1, 0x40
/* 80B57624  4B 80 AB F4 */	b _restgpr_25
/* 80B57628  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B5762C  7C 08 03 A6 */	mtlr r0
/* 80B57630  38 21 00 40 */	addi r1, r1, 0x40
/* 80B57634  4E 80 00 20 */	blr 
