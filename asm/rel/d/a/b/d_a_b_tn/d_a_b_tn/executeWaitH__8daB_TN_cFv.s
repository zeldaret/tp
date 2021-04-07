lbl_806246E8:
/* 806246E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806246EC  7C 08 02 A6 */	mflr r0
/* 806246F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806246F4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806246F8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806246FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80624700  4B D3 DA DD */	bl _savegpr_29
/* 80624704  7C 7D 1B 78 */	mr r29, r3
/* 80624708  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 8062470C  3B C4 E6 34 */	addi r30, r4, lit_3920@l /* 0x8062E634@l */
/* 80624710  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80624714  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80624718  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8062471C  4B 9F 5F F5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80624720  7F A3 EB 78 */	mr r3, r29
/* 80624724  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80624728  4B 9F 60 B9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8062472C  FF E0 08 90 */	fmr f31, f1
/* 80624730  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 80624734  2C 00 00 01 */	cmpwi r0, 1
/* 80624738  41 82 00 3C */	beq lbl_80624774
/* 8062473C  40 80 00 7C */	bge lbl_806247B8
/* 80624740  2C 00 00 00 */	cmpwi r0, 0
/* 80624744  40 80 00 08 */	bge lbl_8062474C
/* 80624748  48 00 00 70 */	b lbl_806247B8
lbl_8062474C:
/* 8062474C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80624750  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80624754  7F A3 EB 78 */	mr r3, r29
/* 80624758  38 80 00 0F */	li r4, 0xf
/* 8062475C  38 A0 00 02 */	li r5, 2
/* 80624760  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624764  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624768  4B FF C1 61 */	bl setBck__8daB_TN_cFiUcff
/* 8062476C  38 00 00 01 */	li r0, 1
/* 80624770  90 1D 06 F4 */	stw r0, 0x6f4(r29)
lbl_80624774:
/* 80624774  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80624778  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8062477C  40 80 00 3C */	bge lbl_806247B8
/* 80624780  88 1D 0A AD */	lbz r0, 0xaad(r29)
/* 80624784  28 00 00 00 */	cmplwi r0, 0
/* 80624788  41 82 00 20 */	beq lbl_806247A8
/* 8062478C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80624790  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80624794  80 63 00 00 */	lwz r3, 0(r3)
/* 80624798  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8062479C  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000A8@ha */
/* 806247A0  38 84 00 A8 */	addi r4, r4, 0x00A8 /* 0x010000A8@l */
/* 806247A4  4B C8 AC F9 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_806247A8:
/* 806247A8  7F A3 EB 78 */	mr r3, r29
/* 806247AC  38 80 00 03 */	li r4, 3
/* 806247B0  38 A0 00 00 */	li r5, 0
/* 806247B4  4B FF C2 15 */	bl setActionMode__8daB_TN_cFii
lbl_806247B8:
/* 806247B8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806247BC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806247C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806247C4  4B D3 DA 65 */	bl _restgpr_29
/* 806247C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806247CC  7C 08 03 A6 */	mtlr r0
/* 806247D0  38 21 00 30 */	addi r1, r1, 0x30
/* 806247D4  4E 80 00 20 */	blr 
