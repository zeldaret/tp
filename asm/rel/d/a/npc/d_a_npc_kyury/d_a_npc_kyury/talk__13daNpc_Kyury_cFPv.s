lbl_80A62370:
/* 80A62370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62374  7C 08 02 A6 */	mflr r0
/* 80A62378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6237C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62380  7C 7F 1B 78 */	mr r31, r3
/* 80A62384  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A62388  2C 00 00 02 */	cmpwi r0, 2
/* 80A6238C  41 82 00 38 */	beq lbl_80A623C4
/* 80A62390  40 80 01 C8 */	bge lbl_80A62558
/* 80A62394  2C 00 00 00 */	cmpwi r0, 0
/* 80A62398  40 80 00 0C */	bge lbl_80A623A4
/* 80A6239C  48 00 01 BC */	b lbl_80A62558
/* 80A623A0  48 00 01 B8 */	b lbl_80A62558
lbl_80A623A4:
/* 80A623A4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A623A8  2C 00 00 00 */	cmpwi r0, 0
/* 80A623AC  40 82 00 18 */	bne lbl_80A623C4
/* 80A623B0  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A623B4  38 A0 00 00 */	li r5, 0
/* 80A623B8  4B 6E 98 38 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A623BC  38 00 00 02 */	li r0, 2
/* 80A623C0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A623C4:
/* 80A623C4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A623C8  2C 00 00 00 */	cmpwi r0, 0
/* 80A623CC  40 82 01 8C */	bne lbl_80A62558
/* 80A623D0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A623D4  28 00 00 00 */	cmplwi r0, 0
/* 80A623D8  40 82 00 20 */	bne lbl_80A623F8
/* 80A623DC  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80A623E0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A623E4  7C 03 00 00 */	cmpw r3, r0
/* 80A623E8  41 82 00 10 */	beq lbl_80A623F8
/* 80A623EC  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80A623F0  28 00 00 01 */	cmplwi r0, 1
/* 80A623F4  40 82 00 E0 */	bne lbl_80A624D4
lbl_80A623F8:
/* 80A623F8  7F E3 FB 78 */	mr r3, r31
/* 80A623FC  38 80 00 00 */	li r4, 0
/* 80A62400  38 A0 00 00 */	li r5, 0
/* 80A62404  38 C0 00 00 */	li r6, 0
/* 80A62408  38 E0 00 00 */	li r7, 0
/* 80A6240C  4B 6E 98 6C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A62410  2C 03 00 00 */	cmpwi r3, 0
/* 80A62414  41 82 00 3C */	beq lbl_80A62450
/* 80A62418  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A6241C  28 00 00 01 */	cmplwi r0, 1
/* 80A62420  40 82 00 30 */	bne lbl_80A62450
/* 80A62424  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A62428  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A6242C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A62430  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A62434  4B 6E 32 AC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A62438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6243C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A62440  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A62444  4B 5E 00 24 */	b reset__14dEvt_control_cFv
/* 80A62448  38 00 00 03 */	li r0, 3
/* 80A6244C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A62450:
/* 80A62450  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A62454  2C 00 00 01 */	cmpwi r0, 1
/* 80A62458  41 82 00 2C */	beq lbl_80A62484
/* 80A6245C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A62460  4B 6E 32 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A62464  38 00 00 00 */	li r0, 0
/* 80A62468  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A6246C  3C 60 80 A6 */	lis r3, lit_4205@ha
/* 80A62470  C0 03 39 4C */	lfs f0, lit_4205@l(r3)
/* 80A62474  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A62478  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6247C  38 00 00 01 */	li r0, 1
/* 80A62480  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A62484:
/* 80A62484  38 00 00 00 */	li r0, 0
/* 80A62488  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6248C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A62490  28 00 00 00 */	cmplwi r0, 0
/* 80A62494  41 82 00 C4 */	beq lbl_80A62558
/* 80A62498  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A6249C  2C 00 00 00 */	cmpwi r0, 0
/* 80A624A0  41 82 00 28 */	beq lbl_80A624C8
/* 80A624A4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A624A8  4B 6E 32 54 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A624AC  38 00 00 00 */	li r0, 0
/* 80A624B0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A624B4  3C 60 80 A6 */	lis r3, lit_4205@ha
/* 80A624B8  C0 03 39 4C */	lfs f0, lit_4205@l(r3)
/* 80A624BC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A624C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A624C4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A624C8:
/* 80A624C8  38 00 00 00 */	li r0, 0
/* 80A624CC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A624D0  48 00 00 88 */	b lbl_80A62558
lbl_80A624D4:
/* 80A624D4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A624D8  2C 00 00 01 */	cmpwi r0, 1
/* 80A624DC  41 82 00 2C */	beq lbl_80A62508
/* 80A624E0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A624E4  4B 6E 32 18 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A624E8  38 00 00 00 */	li r0, 0
/* 80A624EC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A624F0  3C 60 80 A6 */	lis r3, lit_4205@ha
/* 80A624F4  C0 03 39 4C */	lfs f0, lit_4205@l(r3)
/* 80A624F8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A624FC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A62500  38 00 00 01 */	li r0, 1
/* 80A62504  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A62508:
/* 80A62508  38 00 00 00 */	li r0, 0
/* 80A6250C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A62510  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80A62514  28 00 00 00 */	cmplwi r0, 0
/* 80A62518  40 82 00 24 */	bne lbl_80A6253C
/* 80A6251C  7F E3 FB 78 */	mr r3, r31
/* 80A62520  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A62524  38 A0 00 0B */	li r5, 0xb
/* 80A62528  38 C0 00 0B */	li r6, 0xb
/* 80A6252C  38 E0 00 0F */	li r7, 0xf
/* 80A62530  39 00 00 00 */	li r8, 0
/* 80A62534  4B 6E 91 14 */	b step__8daNpcT_cFsiiii
/* 80A62538  48 00 00 20 */	b lbl_80A62558
lbl_80A6253C:
/* 80A6253C  7F E3 FB 78 */	mr r3, r31
/* 80A62540  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A62544  38 A0 FF FF */	li r5, -1
/* 80A62548  38 C0 FF FF */	li r6, -1
/* 80A6254C  38 E0 00 0F */	li r7, 0xf
/* 80A62550  39 00 00 00 */	li r8, 0
/* 80A62554  4B 6E 90 F4 */	b step__8daNpcT_cFsiiii
lbl_80A62558:
/* 80A62558  38 60 00 00 */	li r3, 0
/* 80A6255C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62564  7C 08 03 A6 */	mtlr r0
/* 80A62568  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6256C  4E 80 00 20 */	blr 
