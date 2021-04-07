lbl_807BDAE0:
/* 807BDAE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807BDAE4  7C 08 02 A6 */	mflr r0
/* 807BDAE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807BDAEC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807BDAF0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807BDAF4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807BDAF8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807BDAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BDB00  93 C1 00 08 */	stw r30, 8(r1)
/* 807BDB04  7C 7E 1B 78 */	mr r30, r3
/* 807BDB08  7C BF 2B 78 */	mr r31, r5
/* 807BDB0C  FF C0 08 90 */	fmr f30, f1
/* 807BDB10  FF E0 10 90 */	fmr f31, f2
/* 807BDB14  3C 60 80 7C */	lis r3, d_a_e_tt__stringBase0@ha /* 0x807C20B0@ha */
/* 807BDB18  38 63 20 B0 */	addi r3, r3, d_a_e_tt__stringBase0@l /* 0x807C20B0@l */
/* 807BDB1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BDB20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BDB24  3C A5 00 02 */	addis r5, r5, 2
/* 807BDB28  38 C0 00 80 */	li r6, 0x80
/* 807BDB2C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807BDB30  4B 87 E7 BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807BDB34  7C 64 1B 78 */	mr r4, r3
/* 807BDB38  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BDB3C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807BDB40  FC 20 F0 90 */	fmr f1, f30
/* 807BDB44  FC 40 F8 90 */	fmr f2, f31
/* 807BDB48  3C C0 80 7C */	lis r6, lit_3909@ha /* 0x807C1FBC@ha */
/* 807BDB4C  C0 66 1F BC */	lfs f3, lit_3909@l(r6)  /* 0x807C1FBC@l */
/* 807BDB50  3C C0 80 7C */	lis r6, lit_4031@ha /* 0x807C1FF8@ha */
/* 807BDB54  C0 86 1F F8 */	lfs f4, lit_4031@l(r6)  /* 0x807C1FF8@l */
/* 807BDB58  4B 85 33 19 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807BDB5C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807BDB60  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807BDB64  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807BDB68  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807BDB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BDB70  83 C1 00 08 */	lwz r30, 8(r1)
/* 807BDB74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807BDB78  7C 08 03 A6 */	mtlr r0
/* 807BDB7C  38 21 00 30 */	addi r1, r1, 0x30
/* 807BDB80  4E 80 00 20 */	blr 
