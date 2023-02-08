lbl_808496F0:
/* 808496F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808496F4  7C 08 02 A6 */	mflr r0
/* 808496F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 808496FC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80849700  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80849704  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80849708  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8084970C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80849710  93 C1 00 08 */	stw r30, 8(r1)
/* 80849714  7C 7E 1B 78 */	mr r30, r3
/* 80849718  7C BF 2B 78 */	mr r31, r5
/* 8084971C  FF C0 08 90 */	fmr f30, f1
/* 80849720  FF E0 10 90 */	fmr f31, f2
/* 80849724  4B FF FF 3D */	bl getBckName__8daKago_cFi
/* 80849728  7C 64 1B 78 */	mr r4, r3
/* 8084972C  80 7E 07 5C */	lwz r3, 0x75c(r30)
/* 80849730  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80849734  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80849738  3C A5 00 02 */	addis r5, r5, 2
/* 8084973C  38 C0 00 80 */	li r6, 0x80
/* 80849740  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80849744  4B 7F 2B A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80849748  7C 64 1B 78 */	mr r4, r3
/* 8084974C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80849750  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80849754  FC 20 F0 90 */	fmr f1, f30
/* 80849758  FC 40 F8 90 */	fmr f2, f31
/* 8084975C  3C C0 80 85 */	lis r6, lit_3942@ha /* 0x80854B38@ha */
/* 80849760  C0 66 4B 38 */	lfs f3, lit_3942@l(r6)  /* 0x80854B38@l */
/* 80849764  3C C0 80 85 */	lis r6, lit_3978@ha /* 0x80854B40@ha */
/* 80849768  C0 86 4B 40 */	lfs f4, lit_3978@l(r6)  /* 0x80854B40@l */
/* 8084976C  4B 7C 77 05 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80849770  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80849774  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80849778  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8084977C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80849780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80849784  83 C1 00 08 */	lwz r30, 8(r1)
/* 80849788  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8084978C  7C 08 03 A6 */	mtlr r0
/* 80849790  38 21 00 30 */	addi r1, r1, 0x30
/* 80849794  4E 80 00 20 */	blr 
