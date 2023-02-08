lbl_8094BCA8:
/* 8094BCA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8094BCAC  7C 08 02 A6 */	mflr r0
/* 8094BCB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8094BCB4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8094BCB8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8094BCBC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8094BCC0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8094BCC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8094BCC8  4B A1 65 11 */	bl _savegpr_28
/* 8094BCCC  7C 7C 1B 78 */	mr r28, r3
/* 8094BCD0  7C 9D 23 78 */	mr r29, r4
/* 8094BCD4  FF C0 08 90 */	fmr f30, f1
/* 8094BCD8  7C BE 2B 78 */	mr r30, r5
/* 8094BCDC  FF E0 10 90 */	fmr f31, f2
/* 8094BCE0  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094BCE4  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 8094BCE8  C0 3C 06 10 */	lfs f1, 0x610(r28)
/* 8094BCEC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8094BCF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094BCF4  41 81 00 4C */	bgt lbl_8094BD40
/* 8094BCF8  3C 60 80 95 */	lis r3, d_a_ni__stringBase0@ha /* 0x8095131C@ha */
/* 8094BCFC  38 63 13 1C */	addi r3, r3, d_a_ni__stringBase0@l /* 0x8095131C@l */
/* 8094BD00  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094BD04  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094BD08  3C A5 00 02 */	addis r5, r5, 2
/* 8094BD0C  38 C0 00 80 */	li r6, 0x80
/* 8094BD10  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8094BD14  4B 6F 05 D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8094BD18  7C 64 1B 78 */	mr r4, r3
/* 8094BD1C  80 7C 05 E8 */	lwz r3, 0x5e8(r28)
/* 8094BD20  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8094BD24  FC 20 F0 90 */	fmr f1, f30
/* 8094BD28  FC 40 F8 90 */	fmr f2, f31
/* 8094BD2C  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8094BD30  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 8094BD34  38 C0 00 00 */	li r6, 0
/* 8094BD38  4B 6C 46 45 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 8094BD3C  93 BC 05 F4 */	stw r29, 0x5f4(r28)
lbl_8094BD40:
/* 8094BD40  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8094BD44  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8094BD48  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8094BD4C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8094BD50  39 61 00 20 */	addi r11, r1, 0x20
/* 8094BD54  4B A1 64 D1 */	bl _restgpr_28
/* 8094BD58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8094BD5C  7C 08 03 A6 */	mtlr r0
/* 8094BD60  38 21 00 40 */	addi r1, r1, 0x40
/* 8094BD64  4E 80 00 20 */	blr 
