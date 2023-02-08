lbl_8079DE4C:
/* 8079DE4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079DE50  7C 08 02 A6 */	mflr r0
/* 8079DE54  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079DE58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8079DE5C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8079DE60  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8079DE64  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8079DE68  39 61 00 20 */	addi r11, r1, 0x20
/* 8079DE6C  4B BC 43 71 */	bl _savegpr_29
/* 8079DE70  7C 7D 1B 78 */	mr r29, r3
/* 8079DE74  7C 9E 23 78 */	mr r30, r4
/* 8079DE78  FF C0 08 90 */	fmr f30, f1
/* 8079DE7C  7C BF 2B 78 */	mr r31, r5
/* 8079DE80  FF E0 10 90 */	fmr f31, f2
/* 8079DE84  3C 60 80 7A */	lis r3, d_a_e_st__stringBase0@ha /* 0x807A69E0@ha */
/* 8079DE88  38 63 69 E0 */	addi r3, r3, d_a_e_st__stringBase0@l /* 0x807A69E0@l */
/* 8079DE8C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079DE90  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079DE94  3C A5 00 02 */	addis r5, r5, 2
/* 8079DE98  38 C0 00 80 */	li r6, 0x80
/* 8079DE9C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8079DEA0  4B 89 E4 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8079DEA4  7C 64 1B 78 */	mr r4, r3
/* 8079DEA8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8079DEAC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8079DEB0  FC 20 F0 90 */	fmr f1, f30
/* 8079DEB4  FC 40 F8 90 */	fmr f2, f31
/* 8079DEB8  3C C0 80 7A */	lis r6, lit_3904@ha /* 0x807A6828@ha */
/* 8079DEBC  C0 66 68 28 */	lfs f3, lit_3904@l(r6)  /* 0x807A6828@l */
/* 8079DEC0  3C C0 80 7A */	lis r6, lit_3928@ha /* 0x807A6860@ha */
/* 8079DEC4  C0 86 68 60 */	lfs f4, lit_3928@l(r6)  /* 0x807A6860@l */
/* 8079DEC8  4B 87 2F A9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8079DECC  93 DD 06 74 */	stw r30, 0x674(r29)
/* 8079DED0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8079DED4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8079DED8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8079DEDC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8079DEE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8079DEE4  4B BC 43 45 */	bl _restgpr_29
/* 8079DEE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079DEEC  7C 08 03 A6 */	mtlr r0
/* 8079DEF0  38 21 00 40 */	addi r1, r1, 0x40
/* 8079DEF4  4E 80 00 20 */	blr 
