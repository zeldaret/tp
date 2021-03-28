lbl_80AEDD60:
/* 80AEDD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEDD64  7C 08 02 A6 */	mflr r0
/* 80AEDD68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEDD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEDD70  4B 87 44 6C */	b _savegpr_29
/* 80AEDD74  7C 7F 1B 78 */	mr r31, r3
/* 80AEDD78  3B A0 00 00 */	li r29, 0
/* 80AEDD7C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AEDD80  2C 00 00 02 */	cmpwi r0, 2
/* 80AEDD84  41 82 00 2C */	beq lbl_80AEDDB0
/* 80AEDD88  40 80 01 2C */	bge lbl_80AEDEB4
/* 80AEDD8C  2C 00 00 00 */	cmpwi r0, 0
/* 80AEDD90  40 80 00 0C */	bge lbl_80AEDD9C
/* 80AEDD94  48 00 01 20 */	b lbl_80AEDEB4
/* 80AEDD98  48 00 01 1C */	b lbl_80AEDEB4
lbl_80AEDD9C:
/* 80AEDD9C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AEDDA0  38 A0 00 00 */	li r5, 0
/* 80AEDDA4  4B 65 DE 4C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AEDDA8  38 00 00 02 */	li r0, 2
/* 80AEDDAC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AEDDB0:
/* 80AEDDB0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AEDDB4  28 00 00 00 */	cmplwi r0, 0
/* 80AEDDB8  40 82 00 A4 */	bne lbl_80AEDE5C
/* 80AEDDBC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AEDDC0  2C 00 00 01 */	cmpwi r0, 1
/* 80AEDDC4  41 82 00 2C */	beq lbl_80AEDDF0
/* 80AEDDC8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AEDDCC  4B 65 79 30 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AEDDD0  38 00 00 00 */	li r0, 0
/* 80AEDDD4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AEDDD8  3C 60 80 AF */	lis r3, lit_4295@ha
/* 80AEDDDC  C0 03 F1 9C */	lfs f0, lit_4295@l(r3)
/* 80AEDDE0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AEDDE4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AEDDE8  38 00 00 01 */	li r0, 1
/* 80AEDDEC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AEDDF0:
/* 80AEDDF0  38 00 00 00 */	li r0, 0
/* 80AEDDF4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AEDDF8  7F E3 FB 78 */	mr r3, r31
/* 80AEDDFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AEDE00  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80AEDE04  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80AEDE08  4B 52 C9 08 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AEDE0C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AEDE10  7C 60 07 34 */	extsh r0, r3
/* 80AEDE14  7C 04 00 00 */	cmpw r4, r0
/* 80AEDE18  40 82 00 0C */	bne lbl_80AEDE24
/* 80AEDE1C  3B A0 00 01 */	li r29, 1
/* 80AEDE20  48 00 00 40 */	b lbl_80AEDE60
lbl_80AEDE24:
/* 80AEDE24  7F E3 FB 78 */	mr r3, r31
/* 80AEDE28  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80AEDE2C  4B 52 C8 E4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AEDE30  7C 64 1B 78 */	mr r4, r3
/* 80AEDE34  7F E3 FB 78 */	mr r3, r31
/* 80AEDE38  38 A0 FF FF */	li r5, -1
/* 80AEDE3C  38 C0 FF FF */	li r6, -1
/* 80AEDE40  38 E0 00 0F */	li r7, 0xf
/* 80AEDE44  39 00 00 00 */	li r8, 0
/* 80AEDE48  4B 65 D8 00 */	b step__8daNpcT_cFsiiii
/* 80AEDE4C  2C 03 00 00 */	cmpwi r3, 0
/* 80AEDE50  41 82 00 10 */	beq lbl_80AEDE60
/* 80AEDE54  3B A0 00 01 */	li r29, 1
/* 80AEDE58  48 00 00 08 */	b lbl_80AEDE60
lbl_80AEDE5C:
/* 80AEDE5C  3B A0 00 01 */	li r29, 1
lbl_80AEDE60:
/* 80AEDE60  2C 1D 00 00 */	cmpwi r29, 0
/* 80AEDE64  41 82 00 50 */	beq lbl_80AEDEB4
/* 80AEDE68  7F E3 FB 78 */	mr r3, r31
/* 80AEDE6C  38 80 00 00 */	li r4, 0
/* 80AEDE70  38 A0 00 00 */	li r5, 0
/* 80AEDE74  38 C0 00 00 */	li r6, 0
/* 80AEDE78  38 E0 00 00 */	li r7, 0
/* 80AEDE7C  4B 65 DD FC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AEDE80  2C 03 00 00 */	cmpwi r3, 0
/* 80AEDE84  41 82 00 30 */	beq lbl_80AEDEB4
/* 80AEDE88  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AEDE8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AEDE90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AEDE94  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AEDE98  4B 65 78 48 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AEDE9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AEDEA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AEDEA4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AEDEA8  4B 55 45 C0 */	b reset__14dEvt_control_cFv
/* 80AEDEAC  38 00 00 03 */	li r0, 3
/* 80AEDEB0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AEDEB4:
/* 80AEDEB4  38 60 00 00 */	li r3, 0
/* 80AEDEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEDEBC  4B 87 43 6C */	b _restgpr_29
/* 80AEDEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEDEC4  7C 08 03 A6 */	mtlr r0
/* 80AEDEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEDECC  4E 80 00 20 */	blr 
