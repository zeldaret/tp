lbl_8077AEFC:
/* 8077AEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077AF00  7C 08 02 A6 */	mflr r0
/* 8077AF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077AF08  DB E1 00 08 */	stfd f31, 8(r1)
/* 8077AF0C  FF E0 08 90 */	fmr f31, f1
/* 8077AF10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077AF14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077AF18  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8077AF1C  4B 89 F8 C5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077AF20  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8077AF24  7C 00 00 26 */	mfcr r0
/* 8077AF28  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8077AF2C  CB E1 00 08 */	lfd f31, 8(r1)
/* 8077AF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077AF34  7C 08 03 A6 */	mtlr r0
/* 8077AF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8077AF3C  4E 80 00 20 */	blr 
