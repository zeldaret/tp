lbl_809D5AAC:
/* 809D5AAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D5AB0  7C 08 02 A6 */	mflr r0
/* 809D5AB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D5AB8  39 61 00 20 */	addi r11, r1, 0x20
/* 809D5ABC  4B 98 C7 21 */	bl _savegpr_29
/* 809D5AC0  7C 7E 1B 78 */	mr r30, r3
/* 809D5AC4  3B E0 00 00 */	li r31, 0
/* 809D5AC8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809D5ACC  2C 00 00 02 */	cmpwi r0, 2
/* 809D5AD0  41 82 00 2C */	beq lbl_809D5AFC
/* 809D5AD4  40 80 01 40 */	bge lbl_809D5C14
/* 809D5AD8  2C 00 00 00 */	cmpwi r0, 0
/* 809D5ADC  40 80 00 0C */	bge lbl_809D5AE8
/* 809D5AE0  48 00 01 34 */	b lbl_809D5C14
/* 809D5AE4  48 00 01 30 */	b lbl_809D5C14
lbl_809D5AE8:
/* 809D5AE8  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809D5AEC  38 A0 00 00 */	li r5, 0
/* 809D5AF0  4B 77 61 01 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809D5AF4  38 00 00 02 */	li r0, 2
/* 809D5AF8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809D5AFC:
/* 809D5AFC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809D5B00  28 00 00 00 */	cmplwi r0, 0
/* 809D5B04  41 82 00 0C */	beq lbl_809D5B10
/* 809D5B08  3B E0 00 01 */	li r31, 1
/* 809D5B0C  48 00 00 B4 */	b lbl_809D5BC0
lbl_809D5B10:
/* 809D5B10  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809D5B14  2C 00 00 01 */	cmpwi r0, 1
/* 809D5B18  41 82 00 2C */	beq lbl_809D5B44
/* 809D5B1C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D5B20  4B 76 FB DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D5B24  38 00 00 00 */	li r0, 0
/* 809D5B28  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809D5B2C  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D5B30  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D5B34  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809D5B38  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D5B3C  38 00 00 01 */	li r0, 1
/* 809D5B40  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809D5B44:
/* 809D5B44  38 00 00 00 */	li r0, 0
/* 809D5B48  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D5B4C  3C 60 80 9D */	lis r3, lit_5076@ha /* 0x809D7124@ha */
/* 809D5B50  38 63 71 24 */	addi r3, r3, lit_5076@l /* 0x809D7124@l */
/* 809D5B54  38 9E 10 C0 */	addi r4, r30, 0x10c0
/* 809D5B58  4B 98 C4 F1 */	bl __ptmf_cmpr
/* 809D5B5C  2C 03 00 00 */	cmpwi r3, 0
/* 809D5B60  40 82 00 0C */	bne lbl_809D5B6C
/* 809D5B64  3B E0 00 01 */	li r31, 1
/* 809D5B68  48 00 00 58 */	b lbl_809D5BC0
lbl_809D5B6C:
/* 809D5B6C  7F C3 F3 78 */	mr r3, r30
/* 809D5B70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D5B74  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D5B78  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809D5B7C  4B 64 4B 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D5B80  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 809D5B84  7C 60 07 34 */	extsh r0, r3
/* 809D5B88  7C 04 00 00 */	cmpw r4, r0
/* 809D5B8C  41 82 00 30 */	beq lbl_809D5BBC
/* 809D5B90  7F C3 F3 78 */	mr r3, r30
/* 809D5B94  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809D5B98  4B 64 4B 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D5B9C  7C 64 1B 78 */	mr r4, r3
/* 809D5BA0  7F C3 F3 78 */	mr r3, r30
/* 809D5BA4  38 A0 FF FF */	li r5, -1
/* 809D5BA8  38 C0 FF FF */	li r6, -1
/* 809D5BAC  38 E0 00 0F */	li r7, 0xf
/* 809D5BB0  39 00 00 00 */	li r8, 0
/* 809D5BB4  4B 77 5A 95 */	bl step__8daNpcT_cFsiiii
/* 809D5BB8  48 00 00 08 */	b lbl_809D5BC0
lbl_809D5BBC:
/* 809D5BBC  3B E0 00 01 */	li r31, 1
lbl_809D5BC0:
/* 809D5BC0  2C 1F 00 00 */	cmpwi r31, 0
/* 809D5BC4  41 82 00 50 */	beq lbl_809D5C14
/* 809D5BC8  7F C3 F3 78 */	mr r3, r30
/* 809D5BCC  38 80 00 00 */	li r4, 0
/* 809D5BD0  38 A0 00 00 */	li r5, 0
/* 809D5BD4  38 C0 00 00 */	li r6, 0
/* 809D5BD8  38 E0 00 00 */	li r7, 0
/* 809D5BDC  4B 77 60 9D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809D5BE0  2C 03 00 00 */	cmpwi r3, 0
/* 809D5BE4  41 82 00 30 */	beq lbl_809D5C14
/* 809D5BE8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809D5BEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D5BF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D5BF4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809D5BF8  4B 76 FA E9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809D5BFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D5C00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D5C04  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809D5C08  4B 66 C8 61 */	bl reset__14dEvt_control_cFv
/* 809D5C0C  38 00 00 03 */	li r0, 3
/* 809D5C10  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809D5C14:
/* 809D5C14  38 60 00 00 */	li r3, 0
/* 809D5C18  39 61 00 20 */	addi r11, r1, 0x20
/* 809D5C1C  4B 98 C6 0D */	bl _restgpr_29
/* 809D5C20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D5C24  7C 08 03 A6 */	mtlr r0
/* 809D5C28  38 21 00 20 */	addi r1, r1, 0x20
/* 809D5C2C  4E 80 00 20 */	blr 
