lbl_80D167BC:
/* 80D167BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D167C0  7C 08 02 A6 */	mflr r0
/* 80D167C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D167C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D167CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D167D0  7C 7E 1B 78 */	mr r30, r3
/* 80D167D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D167D8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D167DC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80D167E0  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80D167E4  54 00 08 3C */	slwi r0, r0, 1
/* 80D167E8  7C 9E 02 14 */	add r4, r30, r0
/* 80D167EC  A8 84 05 D4 */	lha r4, 0x5d4(r4)
/* 80D167F0  4B 33 12 88 */	b endCheck__16dEvent_manager_cFs
/* 80D167F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D167F8  41 82 00 30 */	beq lbl_80D16828
/* 80D167FC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D16800  4B 32 BC 68 */	b reset__14dEvt_control_cFv
/* 80D16804  38 60 00 05 */	li r3, 5
/* 80D16808  38 80 FF FF */	li r4, -1
/* 80D1680C  4B 31 72 F4 */	b dComIfGs_offOneZoneSwitch__Fii
/* 80D16810  38 60 00 06 */	li r3, 6
/* 80D16814  38 80 FF FF */	li r4, -1
/* 80D16818  4B 31 72 E8 */	b dComIfGs_offOneZoneSwitch__Fii
/* 80D1681C  38 00 00 00 */	li r0, 0
/* 80D16820  98 1E 05 DD */	stb r0, 0x5dd(r30)
/* 80D16824  48 00 00 24 */	b lbl_80D16848
lbl_80D16828:
/* 80D16828  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D1682C  7F C4 F3 78 */	mr r4, r30
/* 80D16830  3C A0 80 D1 */	lis r5, eventCallBack__FPvi@ha
/* 80D16834  38 A5 5E 98 */	addi r5, r5, eventCallBack__FPvi@l
/* 80D16838  38 C0 00 00 */	li r6, 0
/* 80D1683C  4B 32 C0 D8 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D16840  7F C3 F3 78 */	mr r3, r30
/* 80D16844  48 00 00 21 */	bl demoProc__16daObjTobyHouse_cFv
lbl_80D16848:
/* 80D16848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1684C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D16850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D16854  7C 08 03 A6 */	mtlr r0
/* 80D16858  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1685C  4E 80 00 20 */	blr 
