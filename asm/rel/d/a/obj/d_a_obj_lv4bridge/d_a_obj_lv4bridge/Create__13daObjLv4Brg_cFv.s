lbl_80C62994:
/* 80C62994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62998  7C 08 02 A6 */	mflr r0
/* 80C6299C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C629A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C629A4  7C 7F 1B 78 */	mr r31, r3
/* 80C629A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C629AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C629B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C629B4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C629B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C629BC  7C 05 07 74 */	extsb r5, r0
/* 80C629C0  4B 3D 29 A0 */	b isSwitch__10dSv_info_cCFii
/* 80C629C4  2C 03 00 00 */	cmpwi r3, 0
/* 80C629C8  41 82 00 1C */	beq lbl_80C629E4
/* 80C629CC  3C 60 80 C6 */	lis r3, lit_3676@ha
/* 80C629D0  C0 03 31 7C */	lfs f0, lit_3676@l(r3)
/* 80C629D4  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80C629D8  7F E3 FB 78 */	mr r3, r31
/* 80C629DC  48 00 04 49 */	bl mode_init_dead__13daObjLv4Brg_cFv
/* 80C629E0  48 00 00 18 */	b lbl_80C629F8
lbl_80C629E4:
/* 80C629E4  3C 60 80 C6 */	lis r3, lit_3653@ha
/* 80C629E8  C0 03 31 70 */	lfs f0, lit_3653@l(r3)
/* 80C629EC  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80C629F0  7F E3 FB 78 */	mr r3, r31
/* 80C629F4  48 00 02 35 */	bl mode_init_wait__13daObjLv4Brg_cFv
lbl_80C629F8:
/* 80C629F8  7F E3 FB 78 */	mr r3, r31
/* 80C629FC  4B FF FE 7D */	bl initBaseMtx__13daObjLv4Brg_cFv
/* 80C62A00  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80C62A04  38 03 00 24 */	addi r0, r3, 0x24
/* 80C62A08  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C62A0C  7F E3 FB 78 */	mr r3, r31
/* 80C62A10  4B 41 5F 40 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C62A14  38 60 00 01 */	li r3, 1
/* 80C62A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62A20  7C 08 03 A6 */	mtlr r0
/* 80C62A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62A28  4E 80 00 20 */	blr 
