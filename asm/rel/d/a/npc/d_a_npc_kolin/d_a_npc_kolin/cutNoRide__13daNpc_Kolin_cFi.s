lbl_805568AC:
/* 805568AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805568B0  7C 08 02 A6 */	mflr r0
/* 805568B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805568B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805568BC  4B E0 B9 18 */	b _savegpr_27
/* 805568C0  7C 7B 1B 78 */	mr r27, r3
/* 805568C4  7C 9C 23 78 */	mr r28, r4
/* 805568C8  3B C0 00 00 */	li r30, 0
/* 805568CC  3B A0 FF FF */	li r29, -1
/* 805568D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805568D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805568D8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 805568DC  7F E3 FB 78 */	mr r3, r31
/* 805568E0  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 805568E4  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 805568E8  38 A5 01 39 */	addi r5, r5, 0x139
/* 805568EC  38 C0 00 03 */	li r6, 3
/* 805568F0  4B AF 17 FC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 805568F4  28 03 00 00 */	cmplwi r3, 0
/* 805568F8  41 82 00 08 */	beq lbl_80556900
/* 805568FC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80556900:
/* 80556900  7F E3 FB 78 */	mr r3, r31
/* 80556904  7F 84 E3 78 */	mr r4, r28
/* 80556908  4B AF 14 44 */	b getIsAddvance__16dEvent_manager_cFi
/* 8055690C  2C 03 00 00 */	cmpwi r3, 0
/* 80556910  41 82 00 4C */	beq lbl_8055695C
/* 80556914  2C 1D 00 01 */	cmpwi r29, 1
/* 80556918  41 82 00 44 */	beq lbl_8055695C
/* 8055691C  40 80 00 40 */	bge lbl_8055695C
/* 80556920  2C 1D 00 00 */	cmpwi r29, 0
/* 80556924  40 80 00 08 */	bge lbl_8055692C
/* 80556928  48 00 00 34 */	b lbl_8055695C
lbl_8055692C:
/* 8055692C  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 80556930  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80556934  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80556938  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8055693C  4B BE ED A4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80556940  7F 63 DB 78 */	mr r3, r27
/* 80556944  38 80 00 04 */	li r4, 4
/* 80556948  38 A0 00 00 */	li r5, 0
/* 8055694C  4B BF 52 A4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80556950  7F 63 DB 78 */	mr r3, r27
/* 80556954  A8 9B 0D C8 */	lha r4, 0xdc8(r27)
/* 80556958  4B BF 40 C0 */	b setAngle__8daNpcT_cFs
lbl_8055695C:
/* 8055695C  2C 1D 00 01 */	cmpwi r29, 1
/* 80556960  41 82 00 84 */	beq lbl_805569E4
/* 80556964  40 80 00 84 */	bge lbl_805569E8
/* 80556968  2C 1D 00 00 */	cmpwi r29, 0
/* 8055696C  40 80 00 08 */	bge lbl_80556974
/* 80556970  48 00 00 78 */	b lbl_805569E8
lbl_80556974:
/* 80556974  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80556978  2C 00 00 01 */	cmpwi r0, 1
/* 8055697C  41 82 00 2C */	beq lbl_805569A8
/* 80556980  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80556984  4B BE ED 78 */	b remove__18daNpcT_ActorMngr_cFv
/* 80556988  38 00 00 00 */	li r0, 0
/* 8055698C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80556990  3C 60 80 56 */	lis r3, lit_4110@ha
/* 80556994  C0 03 A6 A0 */	lfs f0, lit_4110@l(r3)
/* 80556998  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055699C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 805569A0  38 00 00 01 */	li r0, 1
/* 805569A4  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_805569A8:
/* 805569A8  38 00 00 00 */	li r0, 0
/* 805569AC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 805569B0  7F 63 DB 78 */	mr r3, r27
/* 805569B4  38 80 00 00 */	li r4, 0
/* 805569B8  38 A0 00 00 */	li r5, 0
/* 805569BC  38 C0 00 00 */	li r6, 0
/* 805569C0  38 E0 00 00 */	li r7, 0
/* 805569C4  4B BF 52 B4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 805569C8  2C 03 00 00 */	cmpwi r3, 0
/* 805569CC  41 82 00 1C */	beq lbl_805569E8
/* 805569D0  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 805569D4  28 00 00 01 */	cmplwi r0, 1
/* 805569D8  40 82 00 10 */	bne lbl_805569E8
/* 805569DC  3B C0 00 01 */	li r30, 1
/* 805569E0  48 00 00 08 */	b lbl_805569E8
lbl_805569E4:
/* 805569E4  3B C0 00 01 */	li r30, 1
lbl_805569E8:
/* 805569E8  7F C3 F3 78 */	mr r3, r30
/* 805569EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805569F0  4B E0 B8 30 */	b _restgpr_27
/* 805569F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805569F8  7C 08 03 A6 */	mtlr r0
/* 805569FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80556A00  4E 80 00 20 */	blr 
