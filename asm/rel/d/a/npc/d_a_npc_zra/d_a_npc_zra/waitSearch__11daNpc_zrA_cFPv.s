lbl_80B8B420:
/* 80B8B420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8B424  7C 08 02 A6 */	mflr r0
/* 80B8B428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8B42C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8B430  7C 7F 1B 78 */	mr r31, r3
/* 80B8B434  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B8B438  2C 00 00 02 */	cmpwi r0, 2
/* 80B8B43C  41 82 00 84 */	beq lbl_80B8B4C0
/* 80B8B440  40 80 00 D8 */	bge lbl_80B8B518
/* 80B8B444  2C 00 00 00 */	cmpwi r0, 0
/* 80B8B448  41 82 00 0C */	beq lbl_80B8B454
/* 80B8B44C  48 00 00 CC */	b lbl_80B8B518
/* 80B8B450  48 00 00 C8 */	b lbl_80B8B518
lbl_80B8B454:
/* 80B8B454  38 80 00 14 */	li r4, 0x14
/* 80B8B458  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8B45C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8B460  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B8B464  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8B468  7D 89 03 A6 */	mtctr r12
/* 80B8B46C  4E 80 04 21 */	bctrl 
/* 80B8B470  7F E3 FB 78 */	mr r3, r31
/* 80B8B474  38 80 00 00 */	li r4, 0
/* 80B8B478  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8B47C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8B480  38 A0 00 00 */	li r5, 0
/* 80B8B484  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8B488  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8B48C  7D 89 03 A6 */	mtctr r12
/* 80B8B490  4E 80 04 21 */	bctrl 
/* 80B8B494  7F E3 FB 78 */	mr r3, r31
/* 80B8B498  38 80 00 00 */	li r4, 0
/* 80B8B49C  4B FF 32 59 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8B4A0  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B8B4A4  60 00 00 02 */	ori r0, r0, 2
/* 80B8B4A8  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B8B4AC  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B8B4B0  60 00 00 04 */	ori r0, r0, 4
/* 80B8B4B4  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B8B4B8  38 00 00 02 */	li r0, 2
/* 80B8B4BC  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B8B4C0:
/* 80B8B4C0  38 7F 13 2C */	addi r3, r31, 0x132c
/* 80B8B4C4  4B 5C 52 29 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B8B4C8  28 03 00 00 */	cmplwi r3, 0
/* 80B8B4CC  40 82 00 24 */	bne lbl_80B8B4F0
/* 80B8B4D0  3C 60 80 B9 */	lis r3, s_subSP__FPvPv@ha /* 0x80B8B3A0@ha */
/* 80B8B4D4  38 63 B3 A0 */	addi r3, r3, s_subSP__FPvPv@l /* 0x80B8B3A0@l */
/* 80B8B4D8  7F E4 FB 78 */	mr r4, r31
/* 80B8B4DC  4B 49 5E 5D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B8B4E0  7C 64 1B 79 */	or. r4, r3, r3
/* 80B8B4E4  41 82 00 0C */	beq lbl_80B8B4F0
/* 80B8B4E8  38 7F 13 2C */	addi r3, r31, 0x132c
/* 80B8B4EC  4B 5C 51 D1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80B8B4F0:
/* 80B8B4F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B8B4F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B8B4F8  88 9F 15 0E */	lbz r4, 0x150e(r31)
/* 80B8B4FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B8B500  7C 05 07 74 */	extsb r5, r0
/* 80B8B504  4B 4A 9E 5D */	bl isSwitch__10dSv_info_cCFii
/* 80B8B508  2C 03 00 00 */	cmpwi r3, 0
/* 80B8B50C  41 82 00 0C */	beq lbl_80B8B518
/* 80B8B510  7F E3 FB 78 */	mr r3, r31
/* 80B8B514  4B 48 E7 69 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B8B518:
/* 80B8B518  38 60 00 01 */	li r3, 1
/* 80B8B51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8B520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8B524  7C 08 03 A6 */	mtlr r0
/* 80B8B528  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8B52C  4E 80 00 20 */	blr 
