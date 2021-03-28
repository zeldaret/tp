lbl_80966888:
/* 80966888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096688C  7C 08 02 A6 */	mflr r0
/* 80966890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80966898  93 C1 00 08 */	stw r30, 8(r1)
/* 8096689C  7C 7F 1B 78 */	mr r31, r3
/* 809668A0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809668A4  2C 00 00 02 */	cmpwi r0, 2
/* 809668A8  41 82 00 C8 */	beq lbl_80966970
/* 809668AC  40 80 02 5C */	bge lbl_80966B08
/* 809668B0  2C 00 00 00 */	cmpwi r0, 0
/* 809668B4  40 80 00 0C */	bge lbl_809668C0
/* 809668B8  48 00 02 50 */	b lbl_80966B08
/* 809668BC  48 00 02 4C */	b lbl_80966B08
lbl_809668C0:
/* 809668C0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809668C4  2C 00 00 00 */	cmpwi r0, 0
/* 809668C8  40 82 00 A8 */	bne lbl_80966970
/* 809668CC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 809668D0  38 A0 00 00 */	li r5, 0
/* 809668D4  4B 7E 53 1C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809668D8  38 00 00 00 */	li r0, 0
/* 809668DC  98 1F 12 69 */	stb r0, 0x1269(r31)
/* 809668E0  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 809668E4  28 00 00 03 */	cmplwi r0, 3
/* 809668E8  40 82 00 80 */	bne lbl_80966968
/* 809668EC  38 60 00 F0 */	li r3, 0xf0
/* 809668F0  4B 7E 61 BC */	b daNpcT_chkEvtBit__FUl
/* 809668F4  2C 03 00 00 */	cmpwi r3, 0
/* 809668F8  41 82 00 10 */	beq lbl_80966908
/* 809668FC  38 00 00 01 */	li r0, 1
/* 80966900  98 1F 12 69 */	stb r0, 0x1269(r31)
/* 80966904  48 00 00 64 */	b lbl_80966968
lbl_80966908:
/* 80966908  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8096690C  2C 00 00 03 */	cmpwi r0, 3
/* 80966910  41 82 00 28 */	beq lbl_80966938
/* 80966914  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80966918  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8096691C  4B 7D EF 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80966920  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80966924  38 00 00 03 */	li r0, 3
/* 80966928  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8096692C  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966930  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 80966934  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80966938:
/* 80966938  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8096693C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80966940  41 82 00 28 */	beq lbl_80966968
/* 80966944  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80966948  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8096694C  4B 7D EF 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80966950  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80966954  38 00 00 0F */	li r0, 0xf
/* 80966958  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8096695C  3C 60 80 96 */	lis r3, lit_4761@ha
/* 80966960  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)
/* 80966964  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80966968:
/* 80966968  38 00 00 02 */	li r0, 2
/* 8096696C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80966970:
/* 80966970  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80966974  2C 00 00 00 */	cmpwi r0, 0
/* 80966978  40 82 01 90 */	bne lbl_80966B08
/* 8096697C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80966980  28 00 00 00 */	cmplwi r0, 0
/* 80966984  40 82 00 30 */	bne lbl_809669B4
/* 80966988  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 8096698C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80966990  7C 03 00 00 */	cmpw r3, r0
/* 80966994  41 82 00 20 */	beq lbl_809669B4
/* 80966998  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 8096699C  28 00 00 00 */	cmplwi r0, 0
/* 809669A0  41 82 00 14 */	beq lbl_809669B4
/* 809669A4  28 00 00 02 */	cmplwi r0, 2
/* 809669A8  41 82 00 0C */	beq lbl_809669B4
/* 809669AC  28 00 00 03 */	cmplwi r0, 3
/* 809669B0  40 82 01 00 */	bne lbl_80966AB0
lbl_809669B4:
/* 809669B4  7F E3 FB 78 */	mr r3, r31
/* 809669B8  38 80 00 00 */	li r4, 0
/* 809669BC  38 A0 00 00 */	li r5, 0
/* 809669C0  38 C0 00 00 */	li r6, 0
/* 809669C4  38 E0 00 00 */	li r7, 0
/* 809669C8  4B 7E 52 B0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809669CC  2C 03 00 00 */	cmpwi r3, 0
/* 809669D0  41 82 00 3C */	beq lbl_80966A0C
/* 809669D4  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 809669D8  28 00 00 01 */	cmplwi r0, 1
/* 809669DC  40 82 00 30 */	bne lbl_80966A0C
/* 809669E0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809669E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809669E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809669EC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809669F0  4B 7D EC F0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809669F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809669F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809669FC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80966A00  4B 6D BA 68 */	b reset__14dEvt_control_cFv
/* 80966A04  38 00 00 03 */	li r0, 3
/* 80966A08  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80966A0C:
/* 80966A0C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966A10  2C 00 00 01 */	cmpwi r0, 1
/* 80966A14  41 82 00 2C */	beq lbl_80966A40
/* 80966A18  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966A1C  4B 7D EC E0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80966A20  38 00 00 00 */	li r0, 0
/* 80966A24  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966A28  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966A2C  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966A30  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80966A34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966A38  38 00 00 01 */	li r0, 1
/* 80966A3C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80966A40:
/* 80966A40  38 00 00 00 */	li r0, 0
/* 80966A44  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966A48  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80966A4C  28 00 00 00 */	cmplwi r0, 0
/* 80966A50  40 82 00 24 */	bne lbl_80966A74
/* 80966A54  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 80966A58  28 00 00 00 */	cmplwi r0, 0
/* 80966A5C  41 82 00 18 */	beq lbl_80966A74
/* 80966A60  28 00 00 02 */	cmplwi r0, 2
/* 80966A64  41 82 00 10 */	beq lbl_80966A74
/* 80966A68  88 1F 12 69 */	lbz r0, 0x1269(r31)
/* 80966A6C  28 00 00 00 */	cmplwi r0, 0
/* 80966A70  41 82 00 98 */	beq lbl_80966B08
lbl_80966A74:
/* 80966A74  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966A78  2C 00 00 00 */	cmpwi r0, 0
/* 80966A7C  41 82 00 28 */	beq lbl_80966AA4
/* 80966A80  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966A84  4B 7D EC 78 */	b remove__18daNpcT_ActorMngr_cFv
/* 80966A88  38 00 00 00 */	li r0, 0
/* 80966A8C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966A90  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966A94  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966A98  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80966A9C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966AA0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80966AA4:
/* 80966AA4  38 00 00 00 */	li r0, 0
/* 80966AA8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966AAC  48 00 00 5C */	b lbl_80966B08
lbl_80966AB0:
/* 80966AB0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966AB4  2C 00 00 01 */	cmpwi r0, 1
/* 80966AB8  41 82 00 2C */	beq lbl_80966AE4
/* 80966ABC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966AC0  4B 7D EC 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 80966AC4  38 00 00 00 */	li r0, 0
/* 80966AC8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966ACC  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966AD0  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966AD4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80966AD8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966ADC  38 00 00 01 */	li r0, 1
/* 80966AE0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80966AE4:
/* 80966AE4  38 00 00 00 */	li r0, 0
/* 80966AE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966AEC  7F E3 FB 78 */	mr r3, r31
/* 80966AF0  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80966AF4  38 A0 FF FF */	li r5, -1
/* 80966AF8  38 C0 FF FF */	li r6, -1
/* 80966AFC  38 E0 00 0F */	li r7, 0xf
/* 80966B00  39 00 00 00 */	li r8, 0
/* 80966B04  4B 7E 4B 44 */	b step__8daNpcT_cFsiiii
lbl_80966B08:
/* 80966B08  38 60 00 00 */	li r3, 0
/* 80966B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80966B10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80966B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966B18  7C 08 03 A6 */	mtlr r0
/* 80966B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80966B20  4E 80 00 20 */	blr 
