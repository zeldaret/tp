lbl_80504BD4:
/* 80504BD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80504BD8  7C 08 02 A6 */	mflr r0
/* 80504BDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80504BE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80504BE4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80504BE8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80504BEC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80504BF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80504BF4  4B E5 D5 E4 */	b _savegpr_28
/* 80504BF8  7C 7C 1B 78 */	mr r28, r3
/* 80504BFC  7C 9D 23 78 */	mr r29, r4
/* 80504C00  FF C0 08 90 */	fmr f30, f1
/* 80504C04  7C BE 2B 78 */	mr r30, r5
/* 80504C08  FF E0 10 90 */	fmr f31, f2
/* 80504C0C  3C 60 80 52 */	lis r3, lit_4208@ha
/* 80504C10  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 80504C14  80 1C 06 80 */	lwz r0, 0x680(r28)
/* 80504C18  2C 00 00 00 */	cmpwi r0, 0
/* 80504C1C  40 82 00 E4 */	bne lbl_80504D00
/* 80504C20  88 1C 12 9A */	lbz r0, 0x129a(r28)
/* 80504C24  7C 00 07 75 */	extsb. r0, r0
/* 80504C28  41 82 00 54 */	beq lbl_80504C7C
/* 80504C2C  2C 1D 00 49 */	cmpwi r29, 0x49
/* 80504C30  40 80 00 D0 */	bge lbl_80504D00
/* 80504C34  3C 60 80 52 */	lis r3, stringBase0@ha
/* 80504C38  38 63 89 68 */	addi r3, r3, stringBase0@l
/* 80504C3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80504C40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80504C44  3C A5 00 02 */	addis r5, r5, 2
/* 80504C48  38 C0 00 80 */	li r6, 0x80
/* 80504C4C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80504C50  4B B3 76 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80504C54  7C 64 1B 78 */	mr r4, r3
/* 80504C58  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80504C5C  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 80504C60  FC 20 F0 90 */	fmr f1, f30
/* 80504C64  FC 40 F8 90 */	fmr f2, f31
/* 80504C68  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80504C6C  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80504C70  4B B0 C2 00 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80504C74  93 BC 06 7C */	stw r29, 0x67c(r28)
/* 80504C78  48 00 00 88 */	b lbl_80504D00
lbl_80504C7C:
/* 80504C7C  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 80504C80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80504C84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80504C88  3C A5 00 02 */	addis r5, r5, 2
/* 80504C8C  38 C0 00 80 */	li r6, 0x80
/* 80504C90  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80504C94  4B B3 76 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80504C98  7C 64 1B 78 */	mr r4, r3
/* 80504C9C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80504CA0  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 80504CA4  FC 20 F0 90 */	fmr f1, f30
/* 80504CA8  FC 40 F8 90 */	fmr f2, f31
/* 80504CAC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80504CB0  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80504CB4  4B B0 C1 BC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80504CB8  93 BC 06 7C */	stw r29, 0x67c(r28)
/* 80504CBC  2C 1D 00 1D */	cmpwi r29, 0x1d
/* 80504CC0  40 82 00 40 */	bne lbl_80504D00
/* 80504CC4  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80504CC8  4B D6 2C 8C */	b cM_rndF__Ff
/* 80504CCC  FC 00 08 1E */	fctiwz f0, f1
/* 80504CD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80504CD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80504CD8  7C 00 07 34 */	extsh r0, r0
/* 80504CDC  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80504CE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80504CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504CE8  3C 00 43 30 */	lis r0, 0x4330
/* 80504CEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80504CF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80504CF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80504CF8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80504CFC  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80504D00:
/* 80504D00  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80504D04  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80504D08  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80504D0C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80504D10  39 61 00 30 */	addi r11, r1, 0x30
/* 80504D14  4B E5 D5 10 */	b _restgpr_28
/* 80504D18  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80504D1C  7C 08 03 A6 */	mtlr r0
/* 80504D20  38 21 00 50 */	addi r1, r1, 0x50
/* 80504D24  4E 80 00 20 */	blr 
