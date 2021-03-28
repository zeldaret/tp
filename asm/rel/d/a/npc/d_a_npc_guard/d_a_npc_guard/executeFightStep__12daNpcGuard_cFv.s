lbl_809F0700:
/* 809F0700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F0704  7C 08 02 A6 */	mflr r0
/* 809F0708  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F070C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 809F0710  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 809F0714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F0718  7C 7F 1B 78 */	mr r31, r3
/* 809F071C  3C 60 80 9F */	lis r3, lit_3951@ha
/* 809F0720  C8 23 2C 58 */	lfd f1, lit_3951@l(r3)
/* 809F0724  3C 60 80 9F */	lis r3, lit_3952@ha
/* 809F0728  C8 43 2C 60 */	lfd f2, lit_3952@l(r3)
/* 809F072C  4B 97 C0 54 */	b pow
/* 809F0730  FF E0 08 18 */	frsp f31, f1
/* 809F0734  7F E3 FB 78 */	mr r3, r31
/* 809F0738  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F073C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F0740  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809F0744  4B 62 A3 50 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F0748  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809F074C  40 81 00 10 */	ble lbl_809F075C
/* 809F0750  7F E3 FB 78 */	mr r3, r31
/* 809F0754  38 80 00 01 */	li r4, 1
/* 809F0758  4B FF F6 C9 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F075C:
/* 809F075C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 809F0760  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 809F0764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F0768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F076C  7C 08 03 A6 */	mtlr r0
/* 809F0770  38 21 00 20 */	addi r1, r1, 0x20
/* 809F0774  4E 80 00 20 */	blr 
