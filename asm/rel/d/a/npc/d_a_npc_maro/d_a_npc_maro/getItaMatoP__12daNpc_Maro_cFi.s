lbl_8055C248:
/* 8055C248  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055C24C  7C 08 02 A6 */	mflr r0
/* 8055C250  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055C254  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8055C258  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8055C25C  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C260  4B E0 5F 6D */	bl _savegpr_25
/* 8055C264  7C 7D 1B 78 */	mr r29, r3
/* 8055C268  7C 9E 23 78 */	mr r30, r4
/* 8055C26C  3B E0 00 00 */	li r31, 0
/* 8055C270  3C 60 80 56 */	lis r3, lit_4808@ha /* 0x80564CB8@ha */
/* 8055C274  C3 E3 4C B8 */	lfs f31, lit_4808@l(r3)  /* 0x80564CB8@l */
/* 8055C278  38 00 00 00 */	li r0, 0
/* 8055C27C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C280  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 8055C284  3C 60 80 56 */	lis r3, srchItaMato__12daNpc_Maro_cFPvPv@ha /* 0x8055C1AC@ha */
/* 8055C288  38 63 C1 AC */	addi r3, r3, srchItaMato__12daNpc_Maro_cFPvPv@l /* 0x8055C1AC@l */
/* 8055C28C  7F A4 EB 78 */	mr r4, r29
/* 8055C290  4B AB D5 69 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8055C294  3B 20 00 00 */	li r25, 0
/* 8055C298  3B 80 00 00 */	li r28, 0
/* 8055C29C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 8055C2A0  3B 43 57 08 */	addi r26, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 8055C2A4  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C2A8  3B 63 0F DC */	addi r27, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 8055C2AC  48 00 00 54 */	b lbl_8055C300
lbl_8055C2B0:
/* 8055C2B0  7C 9A E0 2E */	lwzx r4, r26, r28
/* 8055C2B4  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 8055C2B8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8055C2BC  28 03 00 FF */	cmplwi r3, 0xff
/* 8055C2C0  38 00 FF FF */	li r0, -1
/* 8055C2C4  41 82 00 08 */	beq lbl_8055C2CC
/* 8055C2C8  7C 60 1B 78 */	mr r0, r3
lbl_8055C2CC:
/* 8055C2CC  7C 1E 00 00 */	cmpw r30, r0
/* 8055C2D0  40 82 00 28 */	bne lbl_8055C2F8
/* 8055C2D4  7F A3 EB 78 */	mr r3, r29
/* 8055C2D8  4B AB E5 09 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8055C2DC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8055C2E0  40 80 00 18 */	bge lbl_8055C2F8
/* 8055C2E4  7F A3 EB 78 */	mr r3, r29
/* 8055C2E8  7C 9A E0 2E */	lwzx r4, r26, r28
/* 8055C2EC  4B AB E4 F5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8055C2F0  FF E0 08 90 */	fmr f31, f1
/* 8055C2F4  7F FA E0 2E */	lwzx r31, r26, r28
lbl_8055C2F8:
/* 8055C2F8  3B 39 00 01 */	addi r25, r25, 1
/* 8055C2FC  3B 9C 00 04 */	addi r28, r28, 4
lbl_8055C300:
/* 8055C300  80 1B 00 00 */	lwz r0, 0(r27)
/* 8055C304  7C 19 00 00 */	cmpw r25, r0
/* 8055C308  41 80 FF A8 */	blt lbl_8055C2B0
/* 8055C30C  7F E3 FB 78 */	mr r3, r31
/* 8055C310  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8055C314  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8055C318  39 61 00 30 */	addi r11, r1, 0x30
/* 8055C31C  4B E0 5E FD */	bl _restgpr_25
/* 8055C320  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055C324  7C 08 03 A6 */	mtlr r0
/* 8055C328  38 21 00 40 */	addi r1, r1, 0x40
/* 8055C32C  4E 80 00 20 */	blr 
