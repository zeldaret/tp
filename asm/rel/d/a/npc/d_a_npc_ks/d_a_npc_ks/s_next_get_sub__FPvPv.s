lbl_80A4DC80:
/* 80A4DC80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A4DC84  7C 08 02 A6 */	mflr r0
/* 80A4DC88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A4DC8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A4DC90  4B 91 45 4C */	b _savegpr_29
/* 80A4DC94  7C 7D 1B 78 */	mr r29, r3
/* 80A4DC98  7C 9E 23 78 */	mr r30, r4
/* 80A4DC9C  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A4DCA0  3B E4 DE FC */	addi r31, r4, lit_4030@l
/* 80A4DCA4  4B 5C B0 3C */	b fopAc_IsActor__FPv
/* 80A4DCA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DCAC  41 82 00 A8 */	beq lbl_80A4DD54
/* 80A4DCB0  A8 1D 00 08 */	lha r0, 8(r29)
/* 80A4DCB4  2C 00 00 60 */	cmpwi r0, 0x60
/* 80A4DCB8  40 82 00 9C */	bne lbl_80A4DD54
/* 80A4DCBC  88 1D 05 B5 */	lbz r0, 0x5b5(r29)
/* 80A4DCC0  28 00 00 00 */	cmplwi r0, 0
/* 80A4DCC4  41 82 00 90 */	beq lbl_80A4DD54
/* 80A4DCC8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80A4DCCC  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80A4DCD0  7C 03 00 00 */	cmpw r3, r0
/* 80A4DCD4  41 82 00 80 */	beq lbl_80A4DD54
/* 80A4DCD8  88 1D 06 20 */	lbz r0, 0x620(r29)
/* 80A4DCDC  7C 00 07 75 */	extsb. r0, r0
/* 80A4DCE0  41 82 00 74 */	beq lbl_80A4DD54
/* 80A4DCE4  38 00 00 00 */	li r0, 0
/* 80A4DCE8  98 1D 06 20 */	stb r0, 0x620(r29)
/* 80A4DCEC  7F A3 EB 78 */	mr r3, r29
/* 80A4DCF0  38 80 00 18 */	li r4, 0x18
/* 80A4DCF4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4DCF8  38 A0 00 02 */	li r5, 2
/* 80A4DCFC  FC 40 08 90 */	fmr f2, f1
/* 80A4DD00  4B FF B4 A5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4DD04  38 00 00 01 */	li r0, 1
/* 80A4DD08  98 1E 06 20 */	stb r0, 0x620(r30)
/* 80A4DD0C  38 61 00 08 */	addi r3, r1, 8
/* 80A4DD10  38 9E 06 14 */	addi r4, r30, 0x614
/* 80A4DD14  38 BD 06 14 */	addi r5, r29, 0x614
/* 80A4DD18  4B 81 8E 1C */	b __mi__4cXyzCFRC3Vec
/* 80A4DD1C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A4DD20  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 80A4DD24  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A4DD28  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80A4DD2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A4DD30  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80A4DD34  38 7E 06 24 */	addi r3, r30, 0x624
/* 80A4DD38  7C 64 1B 78 */	mr r4, r3
/* 80A4DD3C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80A4DD40  4B 8F 93 98 */	b PSVECScale
/* 80A4DD44  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80A4DD48  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 80A4DD4C  7F A3 EB 78 */	mr r3, r29
/* 80A4DD50  48 00 00 08 */	b lbl_80A4DD58
lbl_80A4DD54:
/* 80A4DD54  38 60 00 00 */	li r3, 0
lbl_80A4DD58:
/* 80A4DD58  39 61 00 30 */	addi r11, r1, 0x30
/* 80A4DD5C  4B 91 44 CC */	b _restgpr_29
/* 80A4DD60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A4DD64  7C 08 03 A6 */	mtlr r0
/* 80A4DD68  38 21 00 30 */	addi r1, r1, 0x30
/* 80A4DD6C  4E 80 00 20 */	blr 
