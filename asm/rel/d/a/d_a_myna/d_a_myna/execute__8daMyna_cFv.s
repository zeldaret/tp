lbl_809464CC:
/* 809464CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809464D0  7C 08 02 A6 */	mflr r0
/* 809464D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809464D8  39 61 00 30 */	addi r11, r1, 0x30
/* 809464DC  4B A1 BC F9 */	bl _savegpr_27
/* 809464E0  7C 7B 1B 78 */	mr r27, r3
/* 809464E4  8B A3 09 2C */	lbz r29, 0x92c(r3)
/* 809464E8  8B 83 09 35 */	lbz r28, 0x935(r3)
/* 809464EC  4B 8F 1D 41 */	bl getStatus__12dMsgObject_cFv
/* 809464F0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809464F4  20 60 00 01 */	subfic r3, r0, 1
/* 809464F8  30 03 FF FF */	addic r0, r3, -1
/* 809464FC  7F C0 19 10 */	subfe r30, r0, r3
/* 80946500  7F 63 DB 78 */	mr r3, r27
/* 80946504  48 00 2F 05 */	bl setItemInfo__8daMyna_cFv
/* 80946508  7F 63 DB 78 */	mr r3, r27
/* 8094650C  48 00 2A A1 */	bl chkEvent__8daMyna_cFv
/* 80946510  7C 7F 1B 78 */	mr r31, r3
/* 80946514  3C 60 80 95 */	lis r3, daMyna_LightActor@ha /* 0x8094BAC0@ha */
/* 80946518  80 03 BA C0 */	lwz r0, daMyna_LightActor@l(r3)  /* 0x8094BAC0@l */
/* 8094651C  28 00 00 00 */	cmplwi r0, 0
/* 80946520  40 82 00 14 */	bne lbl_80946534
/* 80946524  3C 60 80 94 */	lis r3, daMyna_searchLight__FPvPv@ha /* 0x80945D9C@ha */
/* 80946528  38 63 5D 9C */	addi r3, r3, daMyna_searchLight__FPvPv@l /* 0x80945D9C@l */
/* 8094652C  7F 64 DB 78 */	mr r4, r27
/* 80946530  4B 6D AE 09 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80946534:
/* 80946534  7F 63 DB 78 */	mr r3, r27
/* 80946538  48 00 30 0D */	bl setRoomNo__8daMyna_cFv
/* 8094653C  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80946540  3C 60 80 95 */	lis r3, lit_4207@ha /* 0x8094B1F4@ha */
/* 80946544  C0 23 B1 F4 */	lfs f1, lit_4207@l(r3)  /* 0x8094B1F4@l */
/* 80946548  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8094654C  EC 21 00 2A */	fadds f1, f1, f0
/* 80946550  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80946554  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 80946558  D0 3B 05 54 */	stfs f1, 0x554(r27)
/* 8094655C  D0 5B 05 58 */	stfs f2, 0x558(r27)
/* 80946560  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 80946564  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 80946568  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 8094656C  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 80946570  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 80946574  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 80946578  A8 7B 09 26 */	lha r3, 0x926(r27)
/* 8094657C  2C 03 00 00 */	cmpwi r3, 0
/* 80946580  40 81 00 0C */	ble lbl_8094658C
/* 80946584  38 03 FF FF */	addi r0, r3, -1
/* 80946588  B0 1B 09 26 */	sth r0, 0x926(r27)
lbl_8094658C:
/* 8094658C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80946590  41 82 00 1C */	beq lbl_809465AC
/* 80946594  38 7B 06 20 */	addi r3, r27, 0x620
/* 80946598  4B 90 3F B1 */	bl getMsg__10dMsgFlow_cFv
/* 8094659C  7C 64 1B 78 */	mr r4, r3
/* 809465A0  7F 63 DB 78 */	mr r3, r27
/* 809465A4  48 00 28 E1 */	bl talkAnime__8daMyna_cFP9msg_class
/* 809465A8  48 00 00 18 */	b lbl_809465C0
lbl_809465AC:
/* 809465AC  80 1B 08 24 */	lwz r0, 0x824(r27)
/* 809465B0  28 00 00 00 */	cmplwi r0, 0
/* 809465B4  41 82 00 0C */	beq lbl_809465C0
/* 809465B8  38 00 00 00 */	li r0, 0
/* 809465BC  90 1B 08 24 */	stw r0, 0x824(r27)
lbl_809465C0:
/* 809465C0  2C 1F 00 00 */	cmpwi r31, 0
/* 809465C4  41 82 00 2C */	beq lbl_809465F0
/* 809465C8  7F 63 DB 78 */	mr r3, r27
/* 809465CC  88 1B 09 2C */	lbz r0, 0x92c(r27)
/* 809465D0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 809465D4  3C 80 80 95 */	lis r4, move_proc@ha /* 0x8094B698@ha */
/* 809465D8  38 04 B6 98 */	addi r0, r4, move_proc@l /* 0x8094B698@l */
/* 809465DC  7D 80 2A 14 */	add r12, r0, r5
/* 809465E0  4B A1 BA A5 */	bl __ptmf_scall
/* 809465E4  60 00 00 00 */	nop 
/* 809465E8  7F 63 DB 78 */	mr r3, r27
/* 809465EC  48 00 2A CD */	bl orderEvent__8daMyna_cFv
lbl_809465F0:
/* 809465F0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 809465F4  40 82 00 18 */	bne lbl_8094660C
/* 809465F8  7F 63 DB 78 */	mr r3, r27
/* 809465FC  48 00 3A 9D */	bl playDefaultWaitAnime__8daMyna_cFv
/* 80946600  7F 63 DB 78 */	mr r3, r27
/* 80946604  7F 84 E3 78 */	mr r4, r28
/* 80946608  48 00 40 01 */	bl setDefaultWaitAnime__8daMyna_cFUc
lbl_8094660C:
/* 8094660C  88 1B 09 2C */	lbz r0, 0x92c(r27)
/* 80946610  7C 1D 00 40 */	cmplw r29, r0
/* 80946614  41 82 00 20 */	beq lbl_80946634
/* 80946618  7F 63 DB 78 */	mr r3, r27
/* 8094661C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80946620  3C 80 80 95 */	lis r4, init_proc@ha /* 0x8094B488@ha */
/* 80946624  38 04 B4 88 */	addi r0, r4, init_proc@l /* 0x8094B488@l */
/* 80946628  7D 80 2A 14 */	add r12, r0, r5
/* 8094662C  4B A1 BA 59 */	bl __ptmf_scall
/* 80946630  60 00 00 00 */	nop 
lbl_80946634:
/* 80946634  88 1B 09 35 */	lbz r0, 0x935(r27)
/* 80946638  7C 1C 00 40 */	cmplw r28, r0
/* 8094663C  41 82 00 3C */	beq lbl_80946678
/* 80946640  28 00 00 01 */	cmplwi r0, 1
/* 80946644  40 82 00 2C */	bne lbl_80946670
/* 80946648  3C 60 80 95 */	lis r3, lit_4208@ha /* 0x8094B1F8@ha */
/* 8094664C  C0 23 B1 F8 */	lfs f1, lit_4208@l(r3)  /* 0x8094B1F8@l */
/* 80946650  4B 92 13 05 */	bl cM_rndF__Ff
/* 80946654  3C 60 80 95 */	lis r3, lit_4208@ha /* 0x8094B1F8@ha */
/* 80946658  C0 03 B1 F8 */	lfs f0, lit_4208@l(r3)  /* 0x8094B1F8@l */
/* 8094665C  EC 00 08 2A */	fadds f0, f0, f1
/* 80946660  FC 00 00 1E */	fctiwz f0, f0
/* 80946664  D8 01 00 08 */	stfd f0, 8(r1)
/* 80946668  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8094666C  B0 1B 09 24 */	sth r0, 0x924(r27)
lbl_80946670:
/* 80946670  7F 63 DB 78 */	mr r3, r27
/* 80946674  48 00 38 75 */	bl animeControl__8daMyna_cFv
lbl_80946678:
/* 80946678  7F 63 DB 78 */	mr r3, r27
/* 8094667C  48 00 30 C9 */	bl animePlay__8daMyna_cFv
/* 80946680  7F 63 DB 78 */	mr r3, r27
/* 80946684  48 00 2F 5D */	bl set_mtx__8daMyna_cFv
/* 80946688  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 8094668C  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80946690  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80946694  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80946698  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 8094669C  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 809466A0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 809466A4  7C 00 00 D0 */	neg r0, r0
/* 809466A8  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 809466AC  7F 63 DB 78 */	mr r3, r27
/* 809466B0  48 00 2E D9 */	bl setCollision__8daMyna_cFv
/* 809466B4  7F 63 DB 78 */	mr r3, r27
/* 809466B8  48 00 35 8D */	bl checkDead__8daMyna_cFv
/* 809466BC  38 60 00 01 */	li r3, 1
/* 809466C0  39 61 00 30 */	addi r11, r1, 0x30
/* 809466C4  4B A1 BB 5D */	bl _restgpr_27
/* 809466C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809466CC  7C 08 03 A6 */	mtlr r0
/* 809466D0  38 21 00 30 */	addi r1, r1, 0x30
/* 809466D4  4E 80 00 20 */	blr 
