lbl_8053B820:
/* 8053B820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053B824  7C 08 02 A6 */	mflr r0
/* 8053B828  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053B82C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053B830  4B E2 69 A5 */	bl _savegpr_27
/* 8053B834  7C 7D 1B 78 */	mr r29, r3
/* 8053B838  7C 9B 23 78 */	mr r27, r4
/* 8053B83C  3B E0 00 00 */	li r31, 0
/* 8053B840  3B C0 FF FF */	li r30, -1
/* 8053B844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053B848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053B84C  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8053B850  7F 83 E3 78 */	mr r3, r28
/* 8053B854  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 8053B858  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 8053B85C  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053B860  38 C0 00 03 */	li r6, 3
/* 8053B864  4B B0 C8 89 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053B868  28 03 00 00 */	cmplwi r3, 0
/* 8053B86C  41 82 00 08 */	beq lbl_8053B874
/* 8053B870  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8053B874:
/* 8053B874  7F 83 E3 78 */	mr r3, r28
/* 8053B878  7F 64 DB 78 */	mr r4, r27
/* 8053B87C  4B B0 C4 D1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8053B880  2C 03 00 00 */	cmpwi r3, 0
/* 8053B884  41 82 01 60 */	beq lbl_8053B9E4
/* 8053B888  2C 1E 00 01 */	cmpwi r30, 1
/* 8053B88C  41 82 00 94 */	beq lbl_8053B920
/* 8053B890  40 80 00 10 */	bge lbl_8053B8A0
/* 8053B894  2C 1E 00 00 */	cmpwi r30, 0
/* 8053B898  40 80 00 14 */	bge lbl_8053B8AC
/* 8053B89C  48 00 01 48 */	b lbl_8053B9E4
lbl_8053B8A0:
/* 8053B8A0  2C 1E 00 03 */	cmpwi r30, 3
/* 8053B8A4  40 80 01 40 */	bge lbl_8053B9E4
/* 8053B8A8  48 00 00 DC */	b lbl_8053B984
lbl_8053B8AC:
/* 8053B8AC  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8053B8B0  2C 00 00 03 */	cmpwi r0, 3
/* 8053B8B4  41 82 00 28 */	beq lbl_8053B8DC
/* 8053B8B8  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053B8BC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053B8C0  4B C0 9F D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B8C4  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053B8C8  38 00 00 03 */	li r0, 3
/* 8053B8CC  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053B8D0  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B8D4  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B8D8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8053B8DC:
/* 8053B8DC  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8053B8E0  2C 00 00 04 */	cmpwi r0, 4
/* 8053B8E4  41 82 00 28 */	beq lbl_8053B90C
/* 8053B8E8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053B8EC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053B8F0  4B C0 9F A9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B8F4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053B8F8  38 00 00 04 */	li r0, 4
/* 8053B8FC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053B900  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B904  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B908  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8053B90C:
/* 8053B90C  7F A3 EB 78 */	mr r3, r29
/* 8053B910  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 8053B914  38 A0 00 00 */	li r5, 0
/* 8053B918  4B C1 02 D9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8053B91C  48 00 00 C8 */	b lbl_8053B9E4
lbl_8053B920:
/* 8053B920  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8053B924  2C 00 00 10 */	cmpwi r0, 0x10
/* 8053B928  41 82 00 28 */	beq lbl_8053B950
/* 8053B92C  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053B930  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053B934  4B C0 9F 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B938  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053B93C  38 00 00 10 */	li r0, 0x10
/* 8053B940  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053B944  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B948  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B94C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8053B950:
/* 8053B950  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8053B954  2C 00 00 13 */	cmpwi r0, 0x13
/* 8053B958  41 82 00 8C */	beq lbl_8053B9E4
/* 8053B95C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053B960  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053B964  4B C0 9F 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B968  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053B96C  38 00 00 13 */	li r0, 0x13
/* 8053B970  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053B974  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B978  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B97C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8053B980  48 00 00 64 */	b lbl_8053B9E4
lbl_8053B984:
/* 8053B984  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8053B988  2C 00 00 11 */	cmpwi r0, 0x11
/* 8053B98C  41 82 00 28 */	beq lbl_8053B9B4
/* 8053B990  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053B994  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053B998  4B C0 9F 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B99C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053B9A0  38 00 00 11 */	li r0, 0x11
/* 8053B9A4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053B9A8  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B9AC  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B9B0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8053B9B4:
/* 8053B9B4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8053B9B8  2C 00 00 14 */	cmpwi r0, 0x14
/* 8053B9BC  41 82 00 28 */	beq lbl_8053B9E4
/* 8053B9C0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053B9C4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053B9C8  4B C0 9E D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B9CC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053B9D0  38 00 00 14 */	li r0, 0x14
/* 8053B9D4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053B9D8  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B9DC  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B9E0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8053B9E4:
/* 8053B9E4  2C 1E 00 00 */	cmpwi r30, 0
/* 8053B9E8  41 82 00 14 */	beq lbl_8053B9FC
/* 8053B9EC  41 80 00 58 */	blt lbl_8053BA44
/* 8053B9F0  2C 1E 00 03 */	cmpwi r30, 3
/* 8053B9F4  40 80 00 50 */	bge lbl_8053BA44
/* 8053B9F8  48 00 00 38 */	b lbl_8053BA30
lbl_8053B9FC:
/* 8053B9FC  7F A3 EB 78 */	mr r3, r29
/* 8053BA00  38 80 00 00 */	li r4, 0
/* 8053BA04  38 A0 00 00 */	li r5, 0
/* 8053BA08  38 C0 00 00 */	li r6, 0
/* 8053BA0C  38 E0 00 00 */	li r7, 0
/* 8053BA10  4B C1 02 69 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8053BA14  2C 03 00 00 */	cmpwi r3, 0
/* 8053BA18  41 82 00 2C */	beq lbl_8053BA44
/* 8053BA1C  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 8053BA20  28 00 00 01 */	cmplwi r0, 1
/* 8053BA24  40 82 00 20 */	bne lbl_8053BA44
/* 8053BA28  3B E0 00 01 */	li r31, 1
/* 8053BA2C  48 00 00 18 */	b lbl_8053BA44
lbl_8053BA30:
/* 8053BA30  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053BA34  4B C0 9F F1 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 8053BA38  2C 03 00 00 */	cmpwi r3, 0
/* 8053BA3C  41 82 00 08 */	beq lbl_8053BA44
/* 8053BA40  3B E0 00 01 */	li r31, 1
lbl_8053BA44:
/* 8053BA44  7F E3 FB 78 */	mr r3, r31
/* 8053BA48  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BA4C  4B E2 67 D5 */	bl _restgpr_27
/* 8053BA50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053BA54  7C 08 03 A6 */	mtlr r0
/* 8053BA58  38 21 00 20 */	addi r1, r1, 0x20
/* 8053BA5C  4E 80 00 20 */	blr 
