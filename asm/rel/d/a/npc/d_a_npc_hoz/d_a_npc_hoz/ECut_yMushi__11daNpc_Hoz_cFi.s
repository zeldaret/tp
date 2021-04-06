lbl_80A050B4:
/* 80A050B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A050B8  7C 08 02 A6 */	mflr r0
/* 80A050BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A050C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A050C4  4B 95 D1 11 */	bl _savegpr_27
/* 80A050C8  7C 7B 1B 78 */	mr r27, r3
/* 80A050CC  7C 9C 23 78 */	mr r28, r4
/* 80A050D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A050D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A050D8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A050DC  3B C0 00 00 */	li r30, 0
/* 80A050E0  3B A0 FF FF */	li r29, -1
/* 80A050E4  7F E3 FB 78 */	mr r3, r31
/* 80A050E8  3C A0 80 A0 */	lis r5, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A050EC  38 A5 67 64 */	addi r5, r5, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A050F0  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80A050F4  38 C0 00 03 */	li r6, 3
/* 80A050F8  4B 64 2F F5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A050FC  28 03 00 00 */	cmplwi r3, 0
/* 80A05100  41 82 00 08 */	beq lbl_80A05108
/* 80A05104  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A05108:
/* 80A05108  7F E3 FB 78 */	mr r3, r31
/* 80A0510C  7F 84 E3 78 */	mr r4, r28
/* 80A05110  4B 64 2C 3D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A05114  2C 03 00 00 */	cmpwi r3, 0
/* 80A05118  41 82 00 48 */	beq lbl_80A05160
/* 80A0511C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A05120  41 82 00 30 */	beq lbl_80A05150
/* 80A05124  40 80 00 3C */	bge lbl_80A05160
/* 80A05128  2C 1D 00 00 */	cmpwi r29, 0
/* 80A0512C  41 82 00 08 */	beq lbl_80A05134
/* 80A05130  48 00 00 30 */	b lbl_80A05160
lbl_80A05134:
/* 80A05134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A05138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0513C  88 9B 0F 88 */	lbz r4, 0xf88(r27)
/* 80A05140  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80A05144  7C 05 07 74 */	extsb r5, r0
/* 80A05148  4B 63 00 B9 */	bl onSwitch__10dSv_info_cFii
/* 80A0514C  48 00 00 14 */	b lbl_80A05160
lbl_80A05150:
/* 80A05150  7F 63 DB 78 */	mr r3, r27
/* 80A05154  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80A05158  38 A0 00 00 */	li r5, 0
/* 80A0515C  4B 74 6A 95 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A05160:
/* 80A05160  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A05164  41 82 00 1C */	beq lbl_80A05180
/* 80A05168  40 80 00 40 */	bge lbl_80A051A8
/* 80A0516C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A05170  41 82 00 08 */	beq lbl_80A05178
/* 80A05174  48 00 00 34 */	b lbl_80A051A8
lbl_80A05178:
/* 80A05178  3B C0 00 01 */	li r30, 1
/* 80A0517C  48 00 00 30 */	b lbl_80A051AC
lbl_80A05180:
/* 80A05180  7F 63 DB 78 */	mr r3, r27
/* 80A05184  38 80 00 00 */	li r4, 0
/* 80A05188  38 A0 00 00 */	li r5, 0
/* 80A0518C  38 C0 00 00 */	li r6, 0
/* 80A05190  38 E0 00 00 */	li r7, 0
/* 80A05194  4B 74 6A E5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A05198  2C 03 00 00 */	cmpwi r3, 0
/* 80A0519C  41 82 00 10 */	beq lbl_80A051AC
/* 80A051A0  3B C0 00 01 */	li r30, 1
/* 80A051A4  48 00 00 08 */	b lbl_80A051AC
lbl_80A051A8:
/* 80A051A8  3B C0 00 01 */	li r30, 1
lbl_80A051AC:
/* 80A051AC  7F C3 F3 78 */	mr r3, r30
/* 80A051B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A051B4  4B 95 D0 6D */	bl _restgpr_27
/* 80A051B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A051BC  7C 08 03 A6 */	mtlr r0
/* 80A051C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A051C4  4E 80 00 20 */	blr 
