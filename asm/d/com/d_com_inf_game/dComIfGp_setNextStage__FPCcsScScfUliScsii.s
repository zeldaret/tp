lbl_8002D2FC:
/* 8002D2FC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8002D300  7C 08 02 A6 */	mflr r0
/* 8002D304  90 01 00 74 */	stw r0, 0x74(r1)
/* 8002D308  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8002D30C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8002D310  39 61 00 60 */	addi r11, r1, 0x60
/* 8002D314  48 33 4E A9 */	bl _savegpr_21
/* 8002D318  7C 77 1B 78 */	mr r23, r3
/* 8002D31C  7C 98 23 78 */	mr r24, r4
/* 8002D320  7C B9 2B 78 */	mr r25, r5
/* 8002D324  7C DA 33 78 */	mr r26, r6
/* 8002D328  FF E0 08 90 */	fmr f31, f1
/* 8002D32C  90 E1 00 08 */	stw r7, 8(r1)
/* 8002D330  7D 1B 43 78 */	mr r27, r8
/* 8002D334  7D 3C 4B 78 */	mr r28, r9
/* 8002D338  7D 5D 53 78 */	mr r29, r10
/* 8002D33C  83 C1 00 7C */	lwz r30, 0x7c(r1)
/* 8002D340  7F 40 07 74 */	extsb r0, r26
/* 8002D344  2C 00 00 0F */	cmpwi r0, 0xf
/* 8002D348  41 80 00 08 */	blt lbl_8002D350
/* 8002D34C  3B 40 FF FF */	li r26, -1
lbl_8002D350:
/* 8002D350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D354  3A C3 61 C0 */	addi r22, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D358  3B F6 00 64 */	addi r31, r22, 0x64
/* 8002D35C  88 16 00 7C */	lbz r0, 0x7c(r22)
/* 8002D360  28 00 00 00 */	cmplwi r0, 0
/* 8002D364  41 82 00 68 */	beq lbl_8002D3CC
/* 8002D368  80 76 5D B4 */	lwz r3, 0x5db4(r22)
/* 8002D36C  28 03 00 00 */	cmplwi r3, 0
/* 8002D370  41 82 00 5C */	beq lbl_8002D3CC
/* 8002D374  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 8002D378  7C 15 07 74 */	extsb r21, r0
/* 8002D37C  38 61 00 0C */	addi r3, r1, 0xc
/* 8002D380  48 01 1A DD */	bl getMapPlayerPos__10dMapInfo_nFv
/* 8002D384  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8002D388  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8002D38C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8002D390  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8002D394  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8002D398  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8002D39C  80 76 5D B4 */	lwz r3, 0x5db4(r22)
/* 8002D3A0  AA C3 04 E6 */	lha r22, 0x4e6(r3)
/* 8002D3A4  48 00 1A BD */	bl dComIfGp_getNowLevel__Fv
/* 8002D3A8  7C 68 1B 78 */	mr r8, r3
/* 8002D3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D3B4  38 83 4E 00 */	addi r4, r3, 0x4e00
/* 8002D3B8  7F E3 FB 78 */	mr r3, r31
/* 8002D3BC  38 A1 00 18 */	addi r5, r1, 0x18
/* 8002D3C0  7E C6 B3 78 */	mr r6, r22
/* 8002D3C4  7E A7 AB 78 */	mr r7, r21
/* 8002D3C8  48 00 5A 19 */	bl set__33dSv_player_field_last_stay_info_cFPCcRC4cXyzsScUc
lbl_8002D3CC:
/* 8002D3CC  7E E3 BB 78 */	mr r3, r23
/* 8002D3D0  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002D3D4  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002D3D8  38 84 00 AD */	addi r4, r4, 0xad
/* 8002D3DC  48 33 B5 B9 */	bl strcmp
/* 8002D3E0  2C 03 00 00 */	cmpwi r3, 0
/* 8002D3E4  40 82 00 40 */	bne lbl_8002D424
/* 8002D3E8  7F 20 07 74 */	extsb r0, r25
/* 8002D3EC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8002D3F0  40 82 00 34 */	bne lbl_8002D424
/* 8002D3F4  7F 00 07 34 */	extsh r0, r24
/* 8002D3F8  2C 00 00 63 */	cmpwi r0, 0x63
/* 8002D3FC  41 82 00 0C */	beq lbl_8002D408
/* 8002D400  2C 00 00 62 */	cmpwi r0, 0x62
/* 8002D404  40 82 00 20 */	bne lbl_8002D424
lbl_8002D408:
/* 8002D408  7F 40 07 74 */	extsb r0, r26
/* 8002D40C  2C 00 00 02 */	cmpwi r0, 2
/* 8002D410  40 82 00 14 */	bne lbl_8002D424
/* 8002D414  38 60 00 06 */	li r3, 6
/* 8002D418  38 80 00 02 */	li r4, 2
/* 8002D41C  48 00 1C 25 */	bl dComIfGs_setKeyNum__FiUc
/* 8002D420  48 00 00 10 */	b lbl_8002D430
lbl_8002D424:
/* 8002D424  38 60 00 06 */	li r3, 6
/* 8002D428  38 80 00 00 */	li r4, 0
/* 8002D42C  48 00 1C 15 */	bl dComIfGs_setKeyNum__FiUc
lbl_8002D430:
/* 8002D430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D438  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8002D43C  28 03 00 00 */	cmplwi r3, 0
/* 8002D440  41 82 00 0C */	beq lbl_8002D44C
/* 8002D444  38 81 00 08 */	addi r4, r1, 8
/* 8002D448  48 09 0A 01 */	bl setLastSceneMode__9daAlink_cFPUl
lbl_8002D44C:
/* 8002D44C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8002D450  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8002D454  3A A3 00 E9 */	addi r21, r3, 0xe9
/* 8002D458  7E A3 AB 78 */	mr r3, r21
/* 8002D45C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002D460  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002D464  38 84 01 51 */	addi r4, r4, 0x151
/* 8002D468  48 33 B5 2D */	bl strcmp
/* 8002D46C  2C 03 00 00 */	cmpwi r3, 0
/* 8002D470  41 82 00 30 */	beq lbl_8002D4A0
/* 8002D474  7E E3 BB 78 */	mr r3, r23
/* 8002D478  7E A4 AB 78 */	mr r4, r21
/* 8002D47C  48 33 B5 19 */	bl strcmp
/* 8002D480  2C 03 00 00 */	cmpwi r3, 0
/* 8002D484  41 82 00 1C */	beq lbl_8002D4A0
/* 8002D488  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8002D48C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8002D490  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002D494  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002D498  38 84 01 51 */	addi r4, r4, 0x151
/* 8002D49C  48 1F 0D F5 */	bl setSaveStageName__13dMeter2Info_cFPCc
lbl_8002D4A0:
/* 8002D4A0  2C 1E 00 02 */	cmpwi r30, 2
/* 8002D4A4  41 82 00 34 */	beq lbl_8002D4D8
/* 8002D4A8  40 80 00 14 */	bge lbl_8002D4BC
/* 8002D4AC  2C 1E 00 00 */	cmpwi r30, 0
/* 8002D4B0  41 82 00 18 */	beq lbl_8002D4C8
/* 8002D4B4  40 80 00 1C */	bge lbl_8002D4D0
/* 8002D4B8  48 00 00 30 */	b lbl_8002D4E8
lbl_8002D4BC:
/* 8002D4BC  2C 1E 00 04 */	cmpwi r30, 4
/* 8002D4C0  40 80 00 28 */	bge lbl_8002D4E8
/* 8002D4C4  48 00 00 1C */	b lbl_8002D4E0
lbl_8002D4C8:
/* 8002D4C8  39 20 00 1A */	li r9, 0x1a
/* 8002D4CC  48 00 00 20 */	b lbl_8002D4EC
lbl_8002D4D0:
/* 8002D4D0  39 20 00 0D */	li r9, 0xd
/* 8002D4D4  48 00 00 18 */	b lbl_8002D4EC
lbl_8002D4D8:
/* 8002D4D8  39 20 00 06 */	li r9, 6
/* 8002D4DC  48 00 00 10 */	b lbl_8002D4EC
lbl_8002D4E0:
/* 8002D4E0  39 20 00 01 */	li r9, 1
/* 8002D4E4  48 00 00 08 */	b lbl_8002D4EC
lbl_8002D4E8:
/* 8002D4E8  39 20 00 1A */	li r9, 0x1a
lbl_8002D4EC:
/* 8002D4EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D4F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D4F4  38 63 4E 0E */	addi r3, r3, 0x4e0e
/* 8002D4F8  7E E4 BB 78 */	mr r4, r23
/* 8002D4FC  7F 25 CB 78 */	mr r5, r25
/* 8002D500  7F 06 C3 78 */	mr r6, r24
/* 8002D504  7F 47 D3 78 */	mr r7, r26
/* 8002D508  7F 88 E3 78 */	mr r8, r28
/* 8002D50C  4B FF 69 1D */	bl set__18dStage_nextStage_cFPCcScsScScUc
/* 8002D510  80 01 00 08 */	lwz r0, 8(r1)
/* 8002D514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D51C  D3 E3 0D CC */	stfs f31, 0xdcc(r3)
/* 8002D520  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 8002D524  B3 A3 0D D4 */	sth r29, 0xdd4(r3)
/* 8002D528  2C 1B 00 00 */	cmpwi r27, 0
/* 8002D52C  41 82 00 08 */	beq lbl_8002D534
/* 8002D530  B3 03 0D B8 */	sth r24, 0xdb8(r3)
lbl_8002D534:
/* 8002D534  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8002D538  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8002D53C  39 61 00 60 */	addi r11, r1, 0x60
/* 8002D540  48 33 4C C9 */	bl _restgpr_21
/* 8002D544  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8002D548  7C 08 03 A6 */	mtlr r0
/* 8002D54C  38 21 00 70 */	addi r1, r1, 0x70
/* 8002D550  4E 80 00 20 */	blr 
