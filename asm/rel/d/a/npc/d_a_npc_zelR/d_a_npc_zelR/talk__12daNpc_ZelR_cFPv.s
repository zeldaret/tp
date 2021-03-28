lbl_80B706B0:
/* 80B706B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B706B4  7C 08 02 A6 */	mflr r0
/* 80B706B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B706BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B706C0  4B 7F 1B 1C */	b _savegpr_29
/* 80B706C4  7C 7F 1B 78 */	mr r31, r3
/* 80B706C8  3B A0 00 00 */	li r29, 0
/* 80B706CC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B706D0  2C 00 00 02 */	cmpwi r0, 2
/* 80B706D4  41 82 00 2C */	beq lbl_80B70700
/* 80B706D8  40 80 01 20 */	bge lbl_80B707F8
/* 80B706DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B706E0  40 80 00 0C */	bge lbl_80B706EC
/* 80B706E4  48 00 01 14 */	b lbl_80B707F8
/* 80B706E8  48 00 01 10 */	b lbl_80B707F8
lbl_80B706EC:
/* 80B706EC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B706F0  38 A0 00 00 */	li r5, 0
/* 80B706F4  4B 5D B4 FC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B706F8  38 00 00 02 */	li r0, 2
/* 80B706FC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B70700:
/* 80B70700  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B70704  28 00 00 00 */	cmplwi r0, 0
/* 80B70708  41 82 00 0C */	beq lbl_80B70714
/* 80B7070C  3B A0 00 01 */	li r29, 1
/* 80B70710  48 00 00 94 */	b lbl_80B707A4
lbl_80B70714:
/* 80B70714  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B70718  2C 00 00 01 */	cmpwi r0, 1
/* 80B7071C  41 82 00 2C */	beq lbl_80B70748
/* 80B70720  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B70724  4B 5D 4F D8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B70728  38 00 00 00 */	li r0, 0
/* 80B7072C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B70730  3C 60 80 B7 */	lis r3, lit_4182@ha
/* 80B70734  C0 03 1B 7C */	lfs f0, lit_4182@l(r3)
/* 80B70738  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B7073C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B70740  38 00 00 01 */	li r0, 1
/* 80B70744  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B70748:
/* 80B70748  38 00 00 00 */	li r0, 0
/* 80B7074C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B70750  7F E3 FB 78 */	mr r3, r31
/* 80B70754  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B70758  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80B7075C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B70760  4B 4A 9F B0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B70764  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B70768  7C 60 07 34 */	extsh r0, r3
/* 80B7076C  7C 04 00 00 */	cmpw r4, r0
/* 80B70770  41 82 00 30 */	beq lbl_80B707A0
/* 80B70774  7F E3 FB 78 */	mr r3, r31
/* 80B70778  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B7077C  4B 4A 9F 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B70780  7C 64 1B 78 */	mr r4, r3
/* 80B70784  7F E3 FB 78 */	mr r3, r31
/* 80B70788  38 A0 FF FF */	li r5, -1
/* 80B7078C  38 C0 FF FF */	li r6, -1
/* 80B70790  38 E0 00 0F */	li r7, 0xf
/* 80B70794  39 00 00 00 */	li r8, 0
/* 80B70798  4B 5D AE B0 */	b step__8daNpcT_cFsiiii
/* 80B7079C  48 00 00 08 */	b lbl_80B707A4
lbl_80B707A0:
/* 80B707A0  3B A0 00 01 */	li r29, 1
lbl_80B707A4:
/* 80B707A4  2C 1D 00 00 */	cmpwi r29, 0
/* 80B707A8  41 82 00 50 */	beq lbl_80B707F8
/* 80B707AC  7F E3 FB 78 */	mr r3, r31
/* 80B707B0  38 80 00 00 */	li r4, 0
/* 80B707B4  38 A0 00 00 */	li r5, 0
/* 80B707B8  38 C0 00 00 */	li r6, 0
/* 80B707BC  38 E0 00 00 */	li r7, 0
/* 80B707C0  4B 5D B4 B8 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B707C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B707C8  41 82 00 30 */	beq lbl_80B707F8
/* 80B707CC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B707D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B707D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B707D8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B707DC  4B 5D 4F 04 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B707E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B707E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B707E8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B707EC  4B 4D 1C 7C */	b reset__14dEvt_control_cFv
/* 80B707F0  38 00 00 03 */	li r0, 3
/* 80B707F4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B707F8:
/* 80B707F8  38 60 00 00 */	li r3, 0
/* 80B707FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B70800  4B 7F 1A 28 */	b _restgpr_29
/* 80B70804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B70808  7C 08 03 A6 */	mtlr r0
/* 80B7080C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B70810  4E 80 00 20 */	blr 
