lbl_809F77E4:
/* 809F77E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F77E8  7C 08 02 A6 */	mflr r0
/* 809F77EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F77F0  39 61 00 20 */	addi r11, r1, 0x20
/* 809F77F4  4B 96 A9 E5 */	bl _savegpr_28
/* 809F77F8  7C 7D 1B 78 */	mr r29, r3
/* 809F77FC  3B E0 00 00 */	li r31, 0
/* 809F7800  3B C0 00 00 */	li r30, 0
/* 809F7804  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809F7808  2C 00 00 02 */	cmpwi r0, 2
/* 809F780C  41 82 00 48 */	beq lbl_809F7854
/* 809F7810  40 80 01 50 */	bge lbl_809F7960
/* 809F7814  2C 00 00 00 */	cmpwi r0, 0
/* 809F7818  41 82 00 0C */	beq lbl_809F7824
/* 809F781C  48 00 01 44 */	b lbl_809F7960
/* 809F7820  48 00 01 40 */	b lbl_809F7960
lbl_809F7824:
/* 809F7824  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809F7828  28 00 00 00 */	cmplwi r0, 0
/* 809F782C  40 82 01 34 */	bne lbl_809F7960
/* 809F7830  80 9D 0E 08 */	lwz r4, 0xe08(r29)
/* 809F7834  38 00 00 00 */	li r0, 0
/* 809F7838  98 1D 09 E9 */	stb r0, 0x9e9(r29)
/* 809F783C  38 A0 00 00 */	li r5, 0
/* 809F7840  4B 75 C4 DD */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809F7844  38 00 00 00 */	li r0, 0
/* 809F7848  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809F784C  38 00 00 02 */	li r0, 2
/* 809F7850  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
lbl_809F7854:
/* 809F7854  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 809F7858  28 00 00 00 */	cmplwi r0, 0
/* 809F785C  41 82 00 0C */	beq lbl_809F7868
/* 809F7860  3B C0 00 01 */	li r30, 1
/* 809F7864  48 00 00 A0 */	b lbl_809F7904
lbl_809F7868:
/* 809F7868  7F A3 EB 78 */	mr r3, r29
/* 809F786C  38 80 00 03 */	li r4, 3
/* 809F7870  4B FF E2 F1 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F7874  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809F7878  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F787C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F7880  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809F7884  4B 75 8E 39 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809F7888  7F A3 EB 78 */	mr r3, r29
/* 809F788C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809F7890  4B 62 2E 81 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F7894  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809F7898  7C 60 07 34 */	extsh r0, r3
/* 809F789C  7C 04 00 00 */	cmpw r4, r0
/* 809F78A0  40 82 00 0C */	bne lbl_809F78AC
/* 809F78A4  3B C0 00 01 */	li r30, 1
/* 809F78A8  48 00 00 5C */	b lbl_809F7904
lbl_809F78AC:
/* 809F78AC  7F A3 EB 78 */	mr r3, r29
/* 809F78B0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809F78B4  4B 62 2E 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F78B8  7C 64 1B 78 */	mr r4, r3
/* 809F78BC  7F A3 EB 78 */	mr r3, r29
/* 809F78C0  38 A0 FF FF */	li r5, -1
/* 809F78C4  38 C0 FF FF */	li r6, -1
/* 809F78C8  38 E0 00 0F */	li r7, 0xf
/* 809F78CC  4B 75 C7 D9 */	bl step__8daNpcF_cFsiii
/* 809F78D0  2C 03 00 00 */	cmpwi r3, 0
/* 809F78D4  41 82 00 30 */	beq lbl_809F7904
/* 809F78D8  7F A3 EB 78 */	mr r3, r29
/* 809F78DC  38 80 00 00 */	li r4, 0
/* 809F78E0  3C A0 80 A0 */	lis r5, lit_4803@ha /* 0x809F85B0@ha */
/* 809F78E4  C0 25 85 B0 */	lfs f1, lit_4803@l(r5)  /* 0x809F85B0@l */
/* 809F78E8  38 A0 00 00 */	li r5, 0
/* 809F78EC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809F78F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F78F4  7D 89 03 A6 */	mtctr r12
/* 809F78F8  4E 80 04 21 */	bctrl 
/* 809F78FC  38 00 00 00 */	li r0, 0
/* 809F7900  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809F7904:
/* 809F7904  2C 1E 00 00 */	cmpwi r30, 0
/* 809F7908  41 82 00 24 */	beq lbl_809F792C
/* 809F790C  7F A3 EB 78 */	mr r3, r29
/* 809F7910  38 80 00 00 */	li r4, 0
/* 809F7914  38 A0 00 01 */	li r5, 1
/* 809F7918  38 C0 00 00 */	li r6, 0
/* 809F791C  4B 75 C4 69 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809F7920  2C 03 00 00 */	cmpwi r3, 0
/* 809F7924  41 82 00 08 */	beq lbl_809F792C
/* 809F7928  3B E0 00 01 */	li r31, 1
lbl_809F792C:
/* 809F792C  2C 1F 00 00 */	cmpwi r31, 0
/* 809F7930  41 82 00 30 */	beq lbl_809F7960
/* 809F7934  38 00 00 03 */	li r0, 3
/* 809F7938  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 809F793C  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 809F7940  28 00 00 00 */	cmplwi r0, 0
/* 809F7944  40 82 00 14 */	bne lbl_809F7958
/* 809F7948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F794C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F7950  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809F7954  4B 64 AB 15 */	bl reset__14dEvt_control_cFv
lbl_809F7958:
/* 809F7958  38 00 00 00 */	li r0, 0
/* 809F795C  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_809F7960:
/* 809F7960  7F E3 FB 78 */	mr r3, r31
/* 809F7964  39 61 00 20 */	addi r11, r1, 0x20
/* 809F7968  4B 96 A8 BD */	bl _restgpr_28
/* 809F796C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F7970  7C 08 03 A6 */	mtlr r0
/* 809F7974  38 21 00 20 */	addi r1, r1, 0x20
/* 809F7978  4E 80 00 20 */	blr 
