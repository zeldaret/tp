lbl_80A9F83C:
/* 80A9F83C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A9F840  7C 08 02 A6 */	mflr r0
/* 80A9F844  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A9F848  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9F84C  4B 8C 29 84 */	b _savegpr_26
/* 80A9F850  7C 7A 1B 78 */	mr r26, r3
/* 80A9F854  7C 9B 23 78 */	mr r27, r4
/* 80A9F858  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Taro_Param_c@ha
/* 80A9F85C  3B A3 16 04 */	addi r29, r3, m__24daNpc_Pachi_Taro_Param_c@l
/* 80A9F860  80 7D 01 D4 */	lwz r3, 0x1d4(r29)
/* 80A9F864  80 1D 01 D8 */	lwz r0, 0x1d8(r29)
/* 80A9F868  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A9F86C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A9F870  80 1D 01 DC */	lwz r0, 0x1dc(r29)
/* 80A9F874  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A9F878  93 41 00 14 */	stw r26, 0x14(r1)
/* 80A9F87C  38 7A 0F 8C */	addi r3, r26, 0xf8c
/* 80A9F880  4B 6A 5E 88 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F884  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A9F888  38 7A 0F 94 */	addi r3, r26, 0xf94
/* 80A9F88C  4B 6A 5E 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F890  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80A9F894  38 7A 0F 94 */	addi r3, r26, 0xf94
/* 80A9F898  4B 6A 5E 70 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F89C  7C 7E 1B 78 */	mr r30, r3
/* 80A9F8A0  38 7A 0F 8C */	addi r3, r26, 0xf8c
/* 80A9F8A4  4B 6A 5E 64 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9F8A8  7C 7F 1B 78 */	mr r31, r3
/* 80A9F8AC  3B 80 00 00 */	li r28, 0
/* 80A9F8B0  80 1B 00 00 */	lwz r0, 0(r27)
/* 80A9F8B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9F8B8  41 82 00 28 */	beq lbl_80A9F8E0
/* 80A9F8BC  40 80 00 10 */	bge lbl_80A9F8CC
/* 80A9F8C0  2C 00 00 05 */	cmpwi r0, 5
/* 80A9F8C4  41 82 00 14 */	beq lbl_80A9F8D8
/* 80A9F8C8  48 00 00 E0 */	b lbl_80A9F9A8
lbl_80A9F8CC:
/* 80A9F8CC  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9F8D0  41 82 00 48 */	beq lbl_80A9F918
/* 80A9F8D4  48 00 00 D4 */	b lbl_80A9F9A8
lbl_80A9F8D8:
/* 80A9F8D8  3B 80 00 01 */	li r28, 1
/* 80A9F8DC  48 00 00 CC */	b lbl_80A9F9A8
lbl_80A9F8E0:
/* 80A9F8E0  C0 1D 01 48 */	lfs f0, 0x148(r29)
/* 80A9F8E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A9F8E8  C0 1D 01 4C */	lfs f0, 0x14c(r29)
/* 80A9F8EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A9F8F0  C0 1D 01 50 */	lfs f0, 0x150(r29)
/* 80A9F8F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A9F8F8  7F 43 D3 78 */	mr r3, r26
/* 80A9F8FC  38 81 00 08 */	addi r4, r1, 8
/* 80A9F900  38 A0 10 00 */	li r5, 0x1000
/* 80A9F904  4B FF E9 6D */	bl _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyzs
/* 80A9F908  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F90C  41 82 00 9C */	beq lbl_80A9F9A8
/* 80A9F910  3B 80 00 01 */	li r28, 1
/* 80A9F914  48 00 00 94 */	b lbl_80A9F9A8
lbl_80A9F918:
/* 80A9F918  7F 43 D3 78 */	mr r3, r26
/* 80A9F91C  38 80 00 00 */	li r4, 0
/* 80A9F920  38 A0 00 00 */	li r5, 0
/* 80A9F924  38 C1 00 14 */	addi r6, r1, 0x14
/* 80A9F928  38 E0 00 00 */	li r7, 0
/* 80A9F92C  4B 6A C3 4C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9F930  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F934  41 82 00 0C */	beq lbl_80A9F940
/* 80A9F938  3B 80 00 01 */	li r28, 1
/* 80A9F93C  48 00 00 6C */	b lbl_80A9F9A8
lbl_80A9F940:
/* 80A9F940  38 7A 09 74 */	addi r3, r26, 0x974
/* 80A9F944  4B 7A AB FC */	b getNowMsgNo__10dMsgFlow_cFv
/* 80A9F948  28 03 16 8F */	cmplwi r3, 0x168f
/* 80A9F94C  40 82 00 2C */	bne lbl_80A9F978
/* 80A9F950  A8 7A 0F DA */	lha r3, 0xfda(r26)
/* 80A9F954  38 03 FF FF */	addi r0, r3, -1
/* 80A9F958  B0 1A 0F DA */	sth r0, 0xfda(r26)
/* 80A9F95C  7C 00 07 35 */	extsh. r0, r0
/* 80A9F960  41 81 00 48 */	bgt lbl_80A9F9A8
/* 80A9F964  28 1E 00 00 */	cmplwi r30, 0
/* 80A9F968  41 82 00 40 */	beq lbl_80A9F9A8
/* 80A9F96C  38 00 00 02 */	li r0, 2
/* 80A9F970  98 1E 0F 9E */	stb r0, 0xf9e(r30)
/* 80A9F974  48 00 00 34 */	b lbl_80A9F9A8
lbl_80A9F978:
/* 80A9F978  28 03 16 75 */	cmplwi r3, 0x1675
/* 80A9F97C  41 82 00 1C */	beq lbl_80A9F998
/* 80A9F980  28 03 16 8C */	cmplwi r3, 0x168c
/* 80A9F984  41 82 00 14 */	beq lbl_80A9F998
/* 80A9F988  28 03 16 6F */	cmplwi r3, 0x166f
/* 80A9F98C  41 82 00 0C */	beq lbl_80A9F998
/* 80A9F990  28 03 16 72 */	cmplwi r3, 0x1672
/* 80A9F994  40 82 00 14 */	bne lbl_80A9F9A8
lbl_80A9F998:
/* 80A9F998  28 1F 00 00 */	cmplwi r31, 0
/* 80A9F99C  41 82 00 0C */	beq lbl_80A9F9A8
/* 80A9F9A0  38 00 00 01 */	li r0, 1
/* 80A9F9A4  98 1F 0F 86 */	stb r0, 0xf86(r31)
lbl_80A9F9A8:
/* 80A9F9A8  7F 83 E3 78 */	mr r3, r28
/* 80A9F9AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9F9B0  4B 8C 28 6C */	b _restgpr_26
/* 80A9F9B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A9F9B8  7C 08 03 A6 */	mtlr r0
/* 80A9F9BC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A9F9C0  4E 80 00 20 */	blr 
