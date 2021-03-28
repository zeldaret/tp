lbl_80B4E2C0:
/* 80B4E2C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4E2C4  7C 08 02 A6 */	mflr r0
/* 80B4E2C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4E2CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B4E2D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B4E2D4  7C 7F 1B 78 */	mr r31, r3
/* 80B4E2D8  3C 80 80 B5 */	lis r4, lit_4704@ha
/* 80B4E2DC  38 A4 31 48 */	addi r5, r4, lit_4704@l
/* 80B4E2E0  80 85 00 00 */	lwz r4, 0(r5)
/* 80B4E2E4  80 05 00 04 */	lwz r0, 4(r5)
/* 80B4E2E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80B4E2EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4E2F0  80 05 00 08 */	lwz r0, 8(r5)
/* 80B4E2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4E2F8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B4E2FC  48 00 0D 59 */	bl chkAction__13daNpc_Yelia_cFM13daNpc_Yelia_cFPCvPvPv_i
/* 80B4E300  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E304  40 82 02 9C */	bne lbl_80B4E5A0
/* 80B4E308  38 00 00 00 */	li r0, 0
/* 80B4E30C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B4E310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4E314  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4E318  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B4E31C  28 04 00 01 */	cmplwi r4, 1
/* 80B4E320  41 82 00 0C */	beq lbl_80B4E32C
/* 80B4E324  28 04 00 02 */	cmplwi r4, 2
/* 80B4E328  40 82 00 08 */	bne lbl_80B4E330
lbl_80B4E32C:
/* 80B4E32C  38 00 00 01 */	li r0, 1
lbl_80B4E330:
/* 80B4E330  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B4E334  41 82 02 00 */	beq lbl_80B4E534
/* 80B4E338  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B4E33C  4B 4F A4 B4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B4E340  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E344  41 82 01 E8 */	beq lbl_80B4E52C
/* 80B4E348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4E34C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4E350  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80B4E354  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B4E358  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B4E35C  28 00 00 06 */	cmplwi r0, 6
/* 80B4E360  40 82 01 80 */	bne lbl_80B4E4E0
/* 80B4E364  38 60 01 1F */	li r3, 0x11f
/* 80B4E368  4B 5F E7 44 */	b daNpcT_chkEvtBit__FUl
/* 80B4E36C  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E370  41 82 01 70 */	beq lbl_80B4E4E0
/* 80B4E374  88 1F 0E 2E */	lbz r0, 0xe2e(r31)
/* 80B4E378  28 00 00 83 */	cmplwi r0, 0x83
/* 80B4E37C  40 82 01 64 */	bne lbl_80B4E4E0
/* 80B4E380  80 1F 0F E8 */	lwz r0, 0xfe8(r31)
/* 80B4E384  2C 00 00 46 */	cmpwi r0, 0x46
/* 80B4E388  41 80 00 38 */	blt lbl_80B4E3C0
/* 80B4E38C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B4E390  7C 1E 07 74 */	extsb r30, r0
/* 80B4E394  38 60 00 00 */	li r3, 0
/* 80B4E398  4B 4D E5 E4 */	b getLayerNo__14dComIfG_play_cFi
/* 80B4E39C  7C 67 1B 78 */	mr r7, r3
/* 80B4E3A0  38 60 00 0A */	li r3, 0xa
/* 80B4E3A4  3C 80 80 B5 */	lis r4, lit_4330@ha
/* 80B4E3A8  C0 24 23 7C */	lfs f1, lit_4330@l(r4)
/* 80B4E3AC  38 80 00 00 */	li r4, 0
/* 80B4E3B0  7F C5 F3 78 */	mr r5, r30
/* 80B4E3B4  38 C0 00 00 */	li r6, 0
/* 80B4E3B8  4B 4D 8D B8 */	b dStage_changeScene__FifUlScsi
/* 80B4E3BC  48 00 01 14 */	b lbl_80B4E4D0
lbl_80B4E3C0:
/* 80B4E3C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B4E3C4  40 82 00 30 */	bne lbl_80B4E3F4
/* 80B4E3C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050110@ha */
/* 80B4E3CC  38 03 01 10 */	addi r0, r3, 0x0110 /* 0x00050110@l */
/* 80B4E3D0  90 01 00 08 */	stw r0, 8(r1)
/* 80B4E3D4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B4E3D8  38 81 00 08 */	addi r4, r1, 8
/* 80B4E3DC  38 A0 FF FF */	li r5, -1
/* 80B4E3E0  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80B4E3E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B4E3E8  7D 89 03 A6 */	mtctr r12
/* 80B4E3EC  4E 80 04 21 */	bctrl 
/* 80B4E3F0  48 00 00 6C */	b lbl_80B4E45C
lbl_80B4E3F4:
/* 80B4E3F4  2C 00 00 08 */	cmpwi r0, 8
/* 80B4E3F8  40 82 00 64 */	bne lbl_80B4E45C
/* 80B4E3FC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B4E400  2C 00 00 17 */	cmpwi r0, 0x17
/* 80B4E404  41 82 00 28 */	beq lbl_80B4E42C
/* 80B4E408  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B4E40C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4E410  4B 5F 74 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4E414  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B4E418  38 00 00 17 */	li r0, 0x17
/* 80B4E41C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B4E420  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B4E424  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B4E428  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B4E42C:
/* 80B4E42C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B4E430  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B4E434  41 82 00 28 */	beq lbl_80B4E45C
/* 80B4E438  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B4E43C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4E440  4B 5F 74 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4E444  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B4E448  38 00 00 20 */	li r0, 0x20
/* 80B4E44C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B4E450  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B4E454  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B4E458  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B4E45C:
/* 80B4E45C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B4E460  2C 00 00 01 */	cmpwi r0, 1
/* 80B4E464  41 82 00 2C */	beq lbl_80B4E490
/* 80B4E468  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4E46C  4B 5F 72 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B4E470  38 00 00 00 */	li r0, 0
/* 80B4E474  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B4E478  3C 60 80 B5 */	lis r3, lit_4330@ha
/* 80B4E47C  C0 03 23 7C */	lfs f0, lit_4330@l(r3)
/* 80B4E480  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B4E484  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4E488  38 00 00 01 */	li r0, 1
/* 80B4E48C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B4E490:
/* 80B4E490  38 00 00 00 */	li r0, 0
/* 80B4E494  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B4E498  7F E3 FB 78 */	mr r3, r31
/* 80B4E49C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B4E4A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B4E4A4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B4E4A8  4B 4C C2 68 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B4E4AC  7C 64 1B 78 */	mr r4, r3
/* 80B4E4B0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80B4E4B4  38 A0 00 04 */	li r5, 4
/* 80B4E4B8  38 C0 08 00 */	li r6, 0x800
/* 80B4E4BC  4B 72 21 4C */	b cLib_addCalcAngleS2__FPssss
/* 80B4E4C0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B4E4C4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B4E4C8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B4E4CC  B0 1F 0D 7A */	sth r0, 0xd7a(r31)
lbl_80B4E4D0:
/* 80B4E4D0  80 7F 0F E8 */	lwz r3, 0xfe8(r31)
/* 80B4E4D4  38 03 00 01 */	addi r0, r3, 1
/* 80B4E4D8  90 1F 0F E8 */	stw r0, 0xfe8(r31)
/* 80B4E4DC  48 00 00 50 */	b lbl_80B4E52C
lbl_80B4E4E0:
/* 80B4E4E0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B4E4E4  28 00 00 03 */	cmplwi r0, 3
/* 80B4E4E8  40 82 00 34 */	bne lbl_80B4E51C
/* 80B4E4EC  38 60 01 1F */	li r3, 0x11f
/* 80B4E4F0  4B 5F E5 BC */	b daNpcT_chkEvtBit__FUl
/* 80B4E4F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E4F8  40 82 00 24 */	bne lbl_80B4E51C
/* 80B4E4FC  88 1F 0E 2E */	lbz r0, 0xe2e(r31)
/* 80B4E500  28 00 00 82 */	cmplwi r0, 0x82
/* 80B4E504  40 82 00 18 */	bne lbl_80B4E51C
/* 80B4E508  38 00 00 04 */	li r0, 4
/* 80B4E50C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B4E510  7F E3 FB 78 */	mr r3, r31
/* 80B4E514  4B 5F BD 10 */	b evtChange__8daNpcT_cFv
/* 80B4E518  48 00 00 14 */	b lbl_80B4E52C
lbl_80B4E51C:
/* 80B4E51C  38 00 00 01 */	li r0, 1
/* 80B4E520  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B4E524  7F E3 FB 78 */	mr r3, r31
/* 80B4E528  4B 5F BC FC */	b evtChange__8daNpcT_cFv
lbl_80B4E52C:
/* 80B4E52C  38 60 00 01 */	li r3, 1
/* 80B4E530  48 00 00 74 */	b lbl_80B4E5A4
lbl_80B4E534:
/* 80B4E534  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B4E538  2C 00 00 05 */	cmpwi r0, 5
/* 80B4E53C  41 82 00 4C */	beq lbl_80B4E588
/* 80B4E540  40 80 00 60 */	bge lbl_80B4E5A0
/* 80B4E544  2C 00 00 04 */	cmpwi r0, 4
/* 80B4E548  40 80 00 0C */	bge lbl_80B4E554
/* 80B4E54C  48 00 00 54 */	b lbl_80B4E5A0
/* 80B4E550  48 00 00 50 */	b lbl_80B4E5A0
lbl_80B4E554:
/* 80B4E554  38 60 01 15 */	li r3, 0x115
/* 80B4E558  4B 5F E5 54 */	b daNpcT_chkEvtBit__FUl
/* 80B4E55C  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E560  41 82 00 10 */	beq lbl_80B4E570
/* 80B4E564  38 00 00 03 */	li r0, 3
/* 80B4E568  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B4E56C  48 00 00 0C */	b lbl_80B4E578
lbl_80B4E570:
/* 80B4E570  38 00 00 02 */	li r0, 2
/* 80B4E574  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80B4E578:
/* 80B4E578  7F E3 FB 78 */	mr r3, r31
/* 80B4E57C  4B 5F BC A8 */	b evtChange__8daNpcT_cFv
/* 80B4E580  38 60 00 01 */	li r3, 1
/* 80B4E584  48 00 00 20 */	b lbl_80B4E5A4
lbl_80B4E588:
/* 80B4E588  38 00 00 05 */	li r0, 5
/* 80B4E58C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B4E590  7F E3 FB 78 */	mr r3, r31
/* 80B4E594  4B 5F BC 90 */	b evtChange__8daNpcT_cFv
/* 80B4E598  38 60 00 01 */	li r3, 1
/* 80B4E59C  48 00 00 08 */	b lbl_80B4E5A4
lbl_80B4E5A0:
/* 80B4E5A0  38 60 00 00 */	li r3, 0
lbl_80B4E5A4:
/* 80B4E5A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B4E5A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B4E5AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4E5B0  7C 08 03 A6 */	mtlr r0
/* 80B4E5B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4E5B8  4E 80 00 20 */	blr 
