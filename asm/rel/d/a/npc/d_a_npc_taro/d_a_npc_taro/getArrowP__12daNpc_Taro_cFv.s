lbl_80566BD4:
/* 80566BD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80566BD8  7C 08 02 A6 */	mflr r0
/* 80566BDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80566BE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80566BE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80566BE8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80566BEC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80566BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80566BF4  4B DF B5 DC */	b _savegpr_26
/* 80566BF8  7C 7E 1B 78 */	mr r30, r3
/* 80566BFC  3B E0 00 00 */	li r31, 0
/* 80566C00  3C 60 80 57 */	lis r3, lit_4965@ha
/* 80566C04  C3 C3 17 C4 */	lfs f30, lit_4965@l(r3)
/* 80566C08  38 00 00 00 */	li r0, 0
/* 80566C0C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80566C10  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 80566C14  3C 60 80 56 */	lis r3, srchArrow__12daNpc_Taro_cFPvPv@ha
/* 80566C18  38 63 6A 70 */	addi r3, r3, srchArrow__12daNpc_Taro_cFPvPv@l
/* 80566C1C  7F C4 F3 78 */	mr r4, r30
/* 80566C20  4B AB 2B D8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80566C24  3B 40 00 00 */	li r26, 0
/* 80566C28  3B A0 00 00 */	li r29, 0
/* 80566C2C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80566C30  3B 63 57 08 */	addi r27, r3, mFindActorPtrs__8daNpcT_c@l
/* 80566C34  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80566C38  C3 E3 11 80 */	lfs f31, G_CM3D_F_ABS_MIN@l(r3)
/* 80566C3C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80566C40  3B 83 0F DC */	addi r28, r3, mFindCount__8daNpcT_c@l
/* 80566C44  48 00 00 50 */	b lbl_80566C94
lbl_80566C48:
/* 80566C48  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80566C4C  C0 04 05 2C */	lfs f0, 0x52c(r4)
/* 80566C50  FC 00 02 10 */	fabs f0, f0
/* 80566C54  FC 00 00 18 */	frsp f0, f0
/* 80566C58  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80566C5C  7C 00 00 26 */	mfcr r0
/* 80566C60  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80566C64  40 82 00 28 */	bne lbl_80566C8C
/* 80566C68  7F C3 F3 78 */	mr r3, r30
/* 80566C6C  4B AB 3B 74 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80566C70  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80566C74  40 80 00 18 */	bge lbl_80566C8C
/* 80566C78  7F C3 F3 78 */	mr r3, r30
/* 80566C7C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80566C80  4B AB 3B 60 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80566C84  FF C0 08 90 */	fmr f30, f1
/* 80566C88  7F FB E8 2E */	lwzx r31, r27, r29
lbl_80566C8C:
/* 80566C8C  3B 5A 00 01 */	addi r26, r26, 1
/* 80566C90  3B BD 00 04 */	addi r29, r29, 4
lbl_80566C94:
/* 80566C94  80 1C 00 00 */	lwz r0, 0(r28)
/* 80566C98  7C 1A 00 00 */	cmpw r26, r0
/* 80566C9C  41 80 FF AC */	blt lbl_80566C48
/* 80566CA0  7F E3 FB 78 */	mr r3, r31
/* 80566CA4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80566CA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80566CAC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80566CB0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80566CB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80566CB8  4B DF B5 64 */	b _restgpr_26
/* 80566CBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80566CC0  7C 08 03 A6 */	mtlr r0
/* 80566CC4  38 21 00 40 */	addi r1, r1, 0x40
/* 80566CC8  4E 80 00 20 */	blr 
