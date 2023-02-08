lbl_80ACE934:
/* 80ACE934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACE938  7C 08 02 A6 */	mflr r0
/* 80ACE93C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACE940  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACE944  4B 89 38 99 */	bl _savegpr_29
/* 80ACE948  7C 7F 1B 78 */	mr r31, r3
/* 80ACE94C  3B A0 00 00 */	li r29, 0
/* 80ACE950  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACE954  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE958  41 82 00 38 */	beq lbl_80ACE990
/* 80ACE95C  40 80 01 4C */	bge lbl_80ACEAA8
/* 80ACE960  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE964  40 80 00 0C */	bge lbl_80ACE970
/* 80ACE968  48 00 01 40 */	b lbl_80ACEAA8
/* 80ACE96C  48 00 01 3C */	b lbl_80ACEAA8
lbl_80ACE970:
/* 80ACE970  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80ACE974  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE978  40 82 01 30 */	bne lbl_80ACEAA8
/* 80ACE97C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80ACE980  38 A0 00 00 */	li r5, 0
/* 80ACE984  4B 67 D2 6D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80ACE988  38 00 00 02 */	li r0, 2
/* 80ACE98C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACE990:
/* 80ACE990  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80ACE994  28 00 00 00 */	cmplwi r0, 0
/* 80ACE998  41 82 00 0C */	beq lbl_80ACE9A4
/* 80ACE99C  3B A0 00 01 */	li r29, 1
/* 80ACE9A0  48 00 00 B4 */	b lbl_80ACEA54
lbl_80ACE9A4:
/* 80ACE9A4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE9A8  2C 00 00 01 */	cmpwi r0, 1
/* 80ACE9AC  41 82 00 2C */	beq lbl_80ACE9D8
/* 80ACE9B0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE9B4  4B 67 6D 49 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE9B8  38 00 00 00 */	li r0, 0
/* 80ACE9BC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE9C0  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE9C4  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE9C8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE9CC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE9D0  38 00 00 01 */	li r0, 1
/* 80ACE9D4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE9D8:
/* 80ACE9D8  38 00 00 00 */	li r0, 0
/* 80ACE9DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE9E0  7F E3 FB 78 */	mr r3, r31
/* 80ACE9E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACE9E8  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACE9EC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80ACE9F0  4B 54 BD 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ACE9F4  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80ACE9F8  7C 60 07 34 */	extsh r0, r3
/* 80ACE9FC  7C 04 00 00 */	cmpw r4, r0
/* 80ACEA00  41 82 00 50 */	beq lbl_80ACEA50
/* 80ACEA04  7F E3 FB 78 */	mr r3, r31
/* 80ACEA08  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80ACEA0C  4B 54 BD 05 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ACEA10  7C 64 1B 78 */	mr r4, r3
/* 80ACEA14  7F E3 FB 78 */	mr r3, r31
/* 80ACEA18  38 A0 00 0D */	li r5, 0xd
/* 80ACEA1C  38 C0 00 18 */	li r6, 0x18
/* 80ACEA20  38 E0 00 0F */	li r7, 0xf
/* 80ACEA24  39 00 00 00 */	li r8, 0
/* 80ACEA28  4B 67 CC 21 */	bl step__8daNpcT_cFsiiii
/* 80ACEA2C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80ACEA30  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80ACEA34  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80ACEA38  7D 89 03 A6 */	mtctr r12
/* 80ACEA3C  4E 80 04 21 */	bctrl 
/* 80ACEA40  28 03 00 00 */	cmplwi r3, 0
/* 80ACEA44  41 82 00 10 */	beq lbl_80ACEA54
/* 80ACEA48  3B A0 00 01 */	li r29, 1
/* 80ACEA4C  48 00 00 08 */	b lbl_80ACEA54
lbl_80ACEA50:
/* 80ACEA50  3B A0 00 01 */	li r29, 1
lbl_80ACEA54:
/* 80ACEA54  2C 1D 00 00 */	cmpwi r29, 0
/* 80ACEA58  41 82 00 50 */	beq lbl_80ACEAA8
/* 80ACEA5C  7F E3 FB 78 */	mr r3, r31
/* 80ACEA60  38 80 00 00 */	li r4, 0
/* 80ACEA64  38 A0 00 00 */	li r5, 0
/* 80ACEA68  38 C0 00 00 */	li r6, 0
/* 80ACEA6C  38 E0 00 00 */	li r7, 0
/* 80ACEA70  4B 67 D2 09 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80ACEA74  2C 03 00 00 */	cmpwi r3, 0
/* 80ACEA78  41 82 00 30 */	beq lbl_80ACEAA8
/* 80ACEA7C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80ACEA80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACEA84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACEA88  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ACEA8C  4B 67 6C 55 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80ACEA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACEA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACEA98  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80ACEA9C  4B 57 39 CD */	bl reset__14dEvt_control_cFv
/* 80ACEAA0  38 00 00 03 */	li r0, 3
/* 80ACEAA4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACEAA8:
/* 80ACEAA8  38 60 00 00 */	li r3, 0
/* 80ACEAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACEAB0  4B 89 37 79 */	bl _restgpr_29
/* 80ACEAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACEAB8  7C 08 03 A6 */	mtlr r0
/* 80ACEABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACEAC0  4E 80 00 20 */	blr 
