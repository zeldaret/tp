lbl_8082FBD4:
/* 8082FBD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8082FBD8  7C 08 02 A6 */	mflr r0
/* 8082FBDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8082FBE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8082FBE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8082FBE8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8082FBEC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8082FBF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8082FBF4  4B B3 25 E8 */	b _savegpr_29
/* 8082FBF8  7C 7D 1B 78 */	mr r29, r3
/* 8082FBFC  7C 9E 23 78 */	mr r30, r4
/* 8082FC00  7C BF 2B 78 */	mr r31, r5
/* 8082FC04  FF C0 08 90 */	fmr f30, f1
/* 8082FC08  FF E0 10 90 */	fmr f31, f2
/* 8082FC0C  3C 60 80 83 */	lis r3, stringBase0@ha
/* 8082FC10  38 63 2D B8 */	addi r3, r3, stringBase0@l
/* 8082FC14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8082FC18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8082FC1C  3C A5 00 02 */	addis r5, r5, 2
/* 8082FC20  38 C0 00 80 */	li r6, 0x80
/* 8082FC24  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8082FC28  4B 80 C6 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8082FC2C  7C 64 1B 78 */	mr r4, r3
/* 8082FC30  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8082FC34  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8082FC38  FC 20 F0 90 */	fmr f1, f30
/* 8082FC3C  FC 40 F8 90 */	fmr f2, f31
/* 8082FC40  3C C0 80 83 */	lis r6, lit_3790@ha
/* 8082FC44  C0 66 2C FC */	lfs f3, lit_3790@l(r6)
/* 8082FC48  3C C0 80 83 */	lis r6, lit_3900@ha
/* 8082FC4C  C0 86 2D 38 */	lfs f4, lit_3900@l(r6)
/* 8082FC50  4B 7E 12 20 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8082FC54  93 DD 06 68 */	stw r30, 0x668(r29)
/* 8082FC58  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8082FC5C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8082FC60  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8082FC64  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8082FC68  39 61 00 20 */	addi r11, r1, 0x20
/* 8082FC6C  4B B3 25 BC */	b _restgpr_29
/* 8082FC70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8082FC74  7C 08 03 A6 */	mtlr r0
/* 8082FC78  38 21 00 40 */	addi r1, r1, 0x40
/* 8082FC7C  4E 80 00 20 */	blr 
