lbl_80998328:
/* 80998328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099832C  7C 08 02 A6 */	mflr r0
/* 80998330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80998334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80998338  93 C1 00 08 */	stw r30, 8(r1)
/* 8099833C  7C 7F 1B 78 */	mr r31, r3
/* 80998340  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80998344  2C 00 00 02 */	cmpwi r0, 2
/* 80998348  41 82 00 4C */	beq lbl_80998394
/* 8099834C  40 80 01 B8 */	bge lbl_80998504
/* 80998350  2C 00 00 00 */	cmpwi r0, 0
/* 80998354  40 80 00 0C */	bge lbl_80998360
/* 80998358  48 00 01 AC */	b lbl_80998504
/* 8099835C  48 00 01 A8 */	b lbl_80998504
lbl_80998360:
/* 80998360  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80998364  2C 00 00 00 */	cmpwi r0, 0
/* 80998368  40 82 00 2C */	bne lbl_80998394
/* 8099836C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80998370  38 A0 00 00 */	li r5, 0
/* 80998374  4B 7B 38 7C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80998378  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 8099837C  2C 00 00 01 */	cmpwi r0, 1
/* 80998380  40 82 00 0C */	bne lbl_8099838C
/* 80998384  38 00 00 00 */	li r0, 0
/* 80998388  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_8099838C:
/* 8099838C  38 00 00 02 */	li r0, 2
/* 80998390  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80998394:
/* 80998394  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80998398  2C 00 00 00 */	cmpwi r0, 0
/* 8099839C  40 82 01 68 */	bne lbl_80998504
/* 809983A0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809983A4  28 00 00 00 */	cmplwi r0, 0
/* 809983A8  40 82 00 28 */	bne lbl_809983D0
/* 809983AC  7F E3 FB 78 */	mr r3, r31
/* 809983B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809983B4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 809983B8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809983BC  4B 68 23 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809983C0  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 809983C4  7C 60 07 34 */	extsh r0, r3
/* 809983C8  7C 04 00 00 */	cmpw r4, r0
/* 809983CC  40 82 00 D4 */	bne lbl_809984A0
lbl_809983D0:
/* 809983D0  7F E3 FB 78 */	mr r3, r31
/* 809983D4  38 80 00 00 */	li r4, 0
/* 809983D8  38 A0 00 00 */	li r5, 0
/* 809983DC  38 C0 00 00 */	li r6, 0
/* 809983E0  38 E0 00 00 */	li r7, 0
/* 809983E4  4B 7B 38 94 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809983E8  2C 03 00 00 */	cmpwi r3, 0
/* 809983EC  41 82 00 30 */	beq lbl_8099841C
/* 809983F0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809983F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809983F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809983FC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80998400  4B 7A D2 E0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80998404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80998408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099840C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80998410  4B 6A A0 58 */	b reset__14dEvt_control_cFv
/* 80998414  38 00 00 03 */	li r0, 3
/* 80998418  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8099841C:
/* 8099841C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80998420  2C 00 00 01 */	cmpwi r0, 1
/* 80998424  41 82 00 2C */	beq lbl_80998450
/* 80998428  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099842C  4B 7A D2 D0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80998430  38 00 00 00 */	li r0, 0
/* 80998434  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80998438  3C 60 80 9A */	lis r3, lit_4152@ha
/* 8099843C  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)
/* 80998440  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80998444  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80998448  38 00 00 01 */	li r0, 1
/* 8099844C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80998450:
/* 80998450  38 00 00 00 */	li r0, 0
/* 80998454  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80998458  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8099845C  28 00 00 00 */	cmplwi r0, 0
/* 80998460  41 82 00 A4 */	beq lbl_80998504
/* 80998464  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80998468  2C 00 00 00 */	cmpwi r0, 0
/* 8099846C  41 82 00 28 */	beq lbl_80998494
/* 80998470  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80998474  4B 7A D2 88 */	b remove__18daNpcT_ActorMngr_cFv
/* 80998478  38 00 00 00 */	li r0, 0
/* 8099847C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80998480  3C 60 80 9A */	lis r3, lit_4152@ha
/* 80998484  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)
/* 80998488  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099848C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80998490  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80998494:
/* 80998494  38 00 00 00 */	li r0, 0
/* 80998498  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099849C  48 00 00 68 */	b lbl_80998504
lbl_809984A0:
/* 809984A0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809984A4  2C 00 00 01 */	cmpwi r0, 1
/* 809984A8  41 82 00 2C */	beq lbl_809984D4
/* 809984AC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809984B0  4B 7A D2 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 809984B4  38 00 00 00 */	li r0, 0
/* 809984B8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809984BC  3C 60 80 9A */	lis r3, lit_4152@ha
/* 809984C0  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)
/* 809984C4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809984C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809984CC  38 00 00 01 */	li r0, 1
/* 809984D0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809984D4:
/* 809984D4  38 00 00 00 */	li r0, 0
/* 809984D8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809984DC  7F E3 FB 78 */	mr r3, r31
/* 809984E0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809984E4  4B 68 22 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809984E8  7C 64 1B 78 */	mr r4, r3
/* 809984EC  7F E3 FB 78 */	mr r3, r31
/* 809984F0  38 A0 FF FF */	li r5, -1
/* 809984F4  38 C0 FF FF */	li r6, -1
/* 809984F8  38 E0 00 0F */	li r7, 0xf
/* 809984FC  39 00 00 00 */	li r8, 0
/* 80998500  4B 7B 31 48 */	b step__8daNpcT_cFsiiii
lbl_80998504:
/* 80998504  38 60 00 00 */	li r3, 0
/* 80998508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099850C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80998510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80998514  7C 08 03 A6 */	mtlr r0
/* 80998518  38 21 00 10 */	addi r1, r1, 0x10
/* 8099851C  4E 80 00 20 */	blr 
