lbl_80B1F784:
/* 80B1F784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B1F788  7C 08 02 A6 */	mflr r0
/* 80B1F78C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1F790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B1F794  7C 7F 1B 78 */	mr r31, r3
/* 80B1F798  3C 80 80 B2 */	lis r4, lit_4740@ha
/* 80B1F79C  38 A4 54 F8 */	addi r5, r4, lit_4740@l
/* 80B1F7A0  80 85 00 00 */	lwz r4, 0(r5)
/* 80B1F7A4  80 05 00 04 */	lwz r0, 4(r5)
/* 80B1F7A8  90 81 00 08 */	stw r4, 8(r1)
/* 80B1F7AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B1F7B0  80 05 00 08 */	lwz r0, 8(r5)
/* 80B1F7B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B1F7B8  38 81 00 08 */	addi r4, r1, 8
/* 80B1F7BC  48 00 0F 55 */	bl chkAction__12daNpc_Toby_cFM12daNpc_Toby_cFPCvPvPv_i
/* 80B1F7C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F7C4  40 82 01 74 */	bne lbl_80B1F938
/* 80B1F7C8  38 00 00 00 */	li r0, 0
/* 80B1F7CC  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B1F7D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1F7D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1F7D8  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B1F7DC  28 04 00 01 */	cmplwi r4, 1
/* 80B1F7E0  41 82 00 0C */	beq lbl_80B1F7EC
/* 80B1F7E4  28 04 00 02 */	cmplwi r4, 2
/* 80B1F7E8  40 82 00 08 */	bne lbl_80B1F7F0
lbl_80B1F7EC:
/* 80B1F7EC  38 00 00 01 */	li r0, 1
lbl_80B1F7F0:
/* 80B1F7F0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B1F7F4  41 82 00 50 */	beq lbl_80B1F844
/* 80B1F7F8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B1F7FC  4B 52 8F F4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B1F800  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F804  41 82 00 38 */	beq lbl_80B1F83C
/* 80B1F808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1F80C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1F810  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80B1F814  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B1F818  88 1F 0E 2E */	lbz r0, 0xe2e(r31)
/* 80B1F81C  28 00 00 90 */	cmplwi r0, 0x90
/* 80B1F820  40 82 00 0C */	bne lbl_80B1F82C
/* 80B1F824  38 60 00 00 */	li r3, 0
/* 80B1F828  48 00 01 14 */	b lbl_80B1F93C
lbl_80B1F82C:
/* 80B1F82C  38 00 00 01 */	li r0, 1
/* 80B1F830  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B1F834  7F E3 FB 78 */	mr r3, r31
/* 80B1F838  4B 62 A9 EC */	b evtChange__8daNpcT_cFv
lbl_80B1F83C:
/* 80B1F83C  38 60 00 01 */	li r3, 1
/* 80B1F840  48 00 00 FC */	b lbl_80B1F93C
lbl_80B1F844:
/* 80B1F844  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B1F848  2C 00 00 01 */	cmpwi r0, 1
/* 80B1F84C  41 82 00 C4 */	beq lbl_80B1F910
/* 80B1F850  40 80 00 E8 */	bge lbl_80B1F938
/* 80B1F854  2C 00 00 00 */	cmpwi r0, 0
/* 80B1F858  40 80 00 0C */	bge lbl_80B1F864
/* 80B1F85C  48 00 00 DC */	b lbl_80B1F938
/* 80B1F860  48 00 00 D8 */	b lbl_80B1F938
lbl_80B1F864:
/* 80B1F864  38 60 01 36 */	li r3, 0x136
/* 80B1F868  4B 62 D2 44 */	b daNpcT_chkEvtBit__FUl
/* 80B1F86C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F870  41 82 00 4C */	beq lbl_80B1F8BC
/* 80B1F874  38 60 01 90 */	li r3, 0x190
/* 80B1F878  4B 62 D2 34 */	b daNpcT_chkEvtBit__FUl
/* 80B1F87C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F880  41 82 00 B8 */	beq lbl_80B1F938
/* 80B1F884  38 60 01 E5 */	li r3, 0x1e5
/* 80B1F888  4B 62 D2 24 */	b daNpcT_chkEvtBit__FUl
/* 80B1F88C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F890  40 82 00 A8 */	bne lbl_80B1F938
/* 80B1F894  38 60 01 E4 */	li r3, 0x1e4
/* 80B1F898  4B 62 D2 14 */	b daNpcT_chkEvtBit__FUl
/* 80B1F89C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F8A0  40 82 00 98 */	bne lbl_80B1F938
/* 80B1F8A4  38 00 00 05 */	li r0, 5
/* 80B1F8A8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B1F8AC  7F E3 FB 78 */	mr r3, r31
/* 80B1F8B0  4B 62 A9 74 */	b evtChange__8daNpcT_cFv
/* 80B1F8B4  38 60 00 01 */	li r3, 1
/* 80B1F8B8  48 00 00 84 */	b lbl_80B1F93C
lbl_80B1F8BC:
/* 80B1F8BC  7F E3 FB 78 */	mr r3, r31
/* 80B1F8C0  48 00 2D 55 */	bl chkAttnZra__12daNpc_Toby_cFv
/* 80B1F8C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F8C8  41 82 00 70 */	beq lbl_80B1F938
/* 80B1F8CC  38 60 03 1E */	li r3, 0x31e
/* 80B1F8D0  4B 62 D1 DC */	b daNpcT_chkEvtBit__FUl
/* 80B1F8D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F8D8  40 82 00 60 */	bne lbl_80B1F938
/* 80B1F8DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1F8E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1F8E4  38 63 09 58 */	addi r3, r3, 0x958
/* 80B1F8E8  38 80 00 51 */	li r4, 0x51
/* 80B1F8EC  4B 51 4F 74 */	b isSwitch__12dSv_memBit_cCFi
/* 80B1F8F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F8F4  40 82 00 44 */	bne lbl_80B1F938
/* 80B1F8F8  38 00 00 06 */	li r0, 6
/* 80B1F8FC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B1F900  7F E3 FB 78 */	mr r3, r31
/* 80B1F904  4B 62 A9 20 */	b evtChange__8daNpcT_cFv
/* 80B1F908  38 60 00 01 */	li r3, 1
/* 80B1F90C  48 00 00 30 */	b lbl_80B1F93C
lbl_80B1F910:
/* 80B1F910  38 60 00 EF */	li r3, 0xef
/* 80B1F914  4B 62 D1 98 */	b daNpcT_chkEvtBit__FUl
/* 80B1F918  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F91C  40 82 00 1C */	bne lbl_80B1F938
/* 80B1F920  38 00 00 02 */	li r0, 2
/* 80B1F924  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B1F928  7F E3 FB 78 */	mr r3, r31
/* 80B1F92C  4B 62 A8 F8 */	b evtChange__8daNpcT_cFv
/* 80B1F930  38 60 00 01 */	li r3, 1
/* 80B1F934  48 00 00 08 */	b lbl_80B1F93C
lbl_80B1F938:
/* 80B1F938  38 60 00 00 */	li r3, 0
lbl_80B1F93C:
/* 80B1F93C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B1F940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B1F944  7C 08 03 A6 */	mtlr r0
/* 80B1F948  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1F94C  4E 80 00 20 */	blr 
