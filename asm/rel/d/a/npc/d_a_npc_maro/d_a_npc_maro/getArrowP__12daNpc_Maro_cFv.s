lbl_8055C0B4:
/* 8055C0B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055C0B8  7C 08 02 A6 */	mflr r0
/* 8055C0BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055C0C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8055C0C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8055C0C8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8055C0CC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8055C0D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055C0D4  4B E0 60 FD */	bl _savegpr_26
/* 8055C0D8  7C 7E 1B 78 */	mr r30, r3
/* 8055C0DC  3B E0 00 00 */	li r31, 0
/* 8055C0E0  3C 60 80 56 */	lis r3, lit_4808@ha /* 0x80564CB8@ha */
/* 8055C0E4  C3 C3 4C B8 */	lfs f30, lit_4808@l(r3)  /* 0x80564CB8@l */
/* 8055C0E8  38 00 00 00 */	li r0, 0
/* 8055C0EC  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C0F0  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 8055C0F4  3C 60 80 56 */	lis r3, srchArrow__12daNpc_Maro_cFPvPv@ha /* 0x8055C018@ha */
/* 8055C0F8  38 63 C0 18 */	addi r3, r3, srchArrow__12daNpc_Maro_cFPvPv@l /* 0x8055C018@l */
/* 8055C0FC  7F C4 F3 78 */	mr r4, r30
/* 8055C100  4B AB D6 F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8055C104  3B 40 00 00 */	li r26, 0
/* 8055C108  3B A0 00 00 */	li r29, 0
/* 8055C10C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 8055C110  3B 63 57 08 */	addi r27, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 8055C114  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 8055C118  C3 E3 11 80 */	lfs f31, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 8055C11C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C120  3B 83 0F DC */	addi r28, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 8055C124  48 00 00 50 */	b lbl_8055C174
lbl_8055C128:
/* 8055C128  7C 9B E8 2E */	lwzx r4, r27, r29
/* 8055C12C  C0 04 05 2C */	lfs f0, 0x52c(r4)
/* 8055C130  FC 00 02 10 */	fabs f0, f0
/* 8055C134  FC 00 00 18 */	frsp f0, f0
/* 8055C138  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8055C13C  7C 00 00 26 */	mfcr r0
/* 8055C140  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8055C144  40 82 00 28 */	bne lbl_8055C16C
/* 8055C148  7F C3 F3 78 */	mr r3, r30
/* 8055C14C  4B AB E6 95 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8055C150  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8055C154  40 80 00 18 */	bge lbl_8055C16C
/* 8055C158  7F C3 F3 78 */	mr r3, r30
/* 8055C15C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 8055C160  4B AB E6 81 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8055C164  FF C0 08 90 */	fmr f30, f1
/* 8055C168  7F FB E8 2E */	lwzx r31, r27, r29
lbl_8055C16C:
/* 8055C16C  3B 5A 00 01 */	addi r26, r26, 1
/* 8055C170  3B BD 00 04 */	addi r29, r29, 4
lbl_8055C174:
/* 8055C174  80 1C 00 00 */	lwz r0, 0(r28)
/* 8055C178  7C 1A 00 00 */	cmpw r26, r0
/* 8055C17C  41 80 FF AC */	blt lbl_8055C128
/* 8055C180  7F E3 FB 78 */	mr r3, r31
/* 8055C184  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8055C188  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8055C18C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8055C190  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8055C194  39 61 00 20 */	addi r11, r1, 0x20
/* 8055C198  4B E0 60 85 */	bl _restgpr_26
/* 8055C19C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055C1A0  7C 08 03 A6 */	mtlr r0
/* 8055C1A4  38 21 00 40 */	addi r1, r1, 0x40
/* 8055C1A8  4E 80 00 20 */	blr 
