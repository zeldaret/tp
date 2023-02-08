lbl_807BCA18:
/* 807BCA18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BCA1C  7C 08 02 A6 */	mflr r0
/* 807BCA20  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BCA24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807BCA28  7C 7F 1B 78 */	mr r31, r3
/* 807BCA2C  A8 03 05 E0 */	lha r0, 0x5e0(r3)
/* 807BCA30  2C 00 00 00 */	cmpwi r0, 0
/* 807BCA34  41 82 00 08 */	beq lbl_807BCA3C
/* 807BCA38  48 00 00 28 */	b lbl_807BCA60
lbl_807BCA3C:
/* 807BCA3C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807BCA40  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 807BCA44  7C 65 1B 78 */	mr r5, r3
/* 807BCA48  4B B8 A6 49 */	bl PSVECAdd
/* 807BCA4C  A8 1F 05 E4 */	lha r0, 0x5e4(r31)
/* 807BCA50  2C 00 00 00 */	cmpwi r0, 0
/* 807BCA54  40 82 00 0C */	bne lbl_807BCA60
/* 807BCA58  38 00 00 00 */	li r0, 0
/* 807BCA5C  98 1F 08 2A */	stb r0, 0x82a(r31)
lbl_807BCA60:
/* 807BCA60  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807BCA64  D0 01 00 08 */	stfs f0, 8(r1)
/* 807BCA68  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807BCA6C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807BCA70  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807BCA74  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807BCA78  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807BCA7C  EC 01 00 2A */	fadds f0, f1, f0
/* 807BCA80  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807BCA84  38 7F 06 38 */	addi r3, r31, 0x638
/* 807BCA88  38 81 00 08 */	addi r4, r1, 8
/* 807BCA8C  4B 8C 80 39 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 807BCA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BCA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BCA98  38 63 23 3C */	addi r3, r3, 0x233c
/* 807BCA9C  38 9F 06 38 */	addi r4, r31, 0x638
/* 807BCAA0  4B AA 81 09 */	bl Set__4cCcSFP8cCcD_Obj
/* 807BCAA4  A8 1F 05 E4 */	lha r0, 0x5e4(r31)
/* 807BCAA8  2C 00 00 00 */	cmpwi r0, 0
/* 807BCAAC  40 82 00 34 */	bne lbl_807BCAE0
/* 807BCAB0  7F E3 FB 78 */	mr r3, r31
/* 807BCAB4  4B FF F5 BD */	bl simple_bg_check__FP15e_tk_ball_class
/* 807BCAB8  2C 03 00 00 */	cmpwi r3, 0
/* 807BCABC  40 82 00 14 */	bne lbl_807BCAD0
/* 807BCAC0  38 7F 06 38 */	addi r3, r31, 0x638
/* 807BCAC4  4B 8C 77 FD */	bl ChkAtHit__12dCcD_GObjInfFv
/* 807BCAC8  28 03 00 00 */	cmplwi r3, 0
/* 807BCACC  41 82 00 14 */	beq lbl_807BCAE0
lbl_807BCAD0:
/* 807BCAD0  7F E3 FB 78 */	mr r3, r31
/* 807BCAD4  4B FF F6 F9 */	bl impact_eff_set__FP15e_tk_ball_class
/* 807BCAD8  7F E3 FB 78 */	mr r3, r31
/* 807BCADC  4B 85 D1 A1 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807BCAE0:
/* 807BCAE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807BCAE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BCAE8  7C 08 03 A6 */	mtlr r0
/* 807BCAEC  38 21 00 20 */	addi r1, r1, 0x20
/* 807BCAF0  4E 80 00 20 */	blr 
