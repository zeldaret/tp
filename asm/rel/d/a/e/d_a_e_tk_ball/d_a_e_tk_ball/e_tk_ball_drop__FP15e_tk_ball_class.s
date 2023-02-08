lbl_807BCAF4:
/* 807BCAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BCAF8  7C 08 02 A6 */	mflr r0
/* 807BCAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BCB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BCB04  7C 7F 1B 78 */	mr r31, r3
/* 807BCB08  A8 03 05 E0 */	lha r0, 0x5e0(r3)
/* 807BCB0C  2C 00 00 00 */	cmpwi r0, 0
/* 807BCB10  41 82 00 08 */	beq lbl_807BCB18
/* 807BCB14  48 00 00 40 */	b lbl_807BCB54
lbl_807BCB18:
/* 807BCB18  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807BCB1C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 807BCB20  7C 65 1B 78 */	mr r5, r3
/* 807BCB24  4B B8 A5 6D */	bl PSVECAdd
/* 807BCB28  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 807BCB2C  3C 60 80 7C */	lis r3, lit_3763@ha /* 0x807BD580@ha */
/* 807BCB30  C0 03 D5 80 */	lfs f0, lit_3763@l(r3)  /* 0x807BD580@l */
/* 807BCB34  EC 01 00 28 */	fsubs f0, f1, f0
/* 807BCB38  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807BCB3C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 807BCB40  3C 60 80 7C */	lis r3, lit_3712@ha /* 0x807BD574@ha */
/* 807BCB44  C0 03 D5 74 */	lfs f0, lit_3712@l(r3)  /* 0x807BD574@l */
/* 807BCB48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BCB4C  40 80 00 08 */	bge lbl_807BCB54
/* 807BCB50  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_807BCB54:
/* 807BCB54  7F E3 FB 78 */	mr r3, r31
/* 807BCB58  4B FF F5 19 */	bl simple_bg_check__FP15e_tk_ball_class
/* 807BCB5C  2C 03 00 00 */	cmpwi r3, 0
/* 807BCB60  40 82 00 10 */	bne lbl_807BCB70
/* 807BCB64  A8 1F 05 E2 */	lha r0, 0x5e2(r31)
/* 807BCB68  2C 00 00 00 */	cmpwi r0, 0
/* 807BCB6C  40 82 00 14 */	bne lbl_807BCB80
lbl_807BCB70:
/* 807BCB70  7F E3 FB 78 */	mr r3, r31
/* 807BCB74  4B FF F6 59 */	bl impact_eff_set__FP15e_tk_ball_class
/* 807BCB78  7F E3 FB 78 */	mr r3, r31
/* 807BCB7C  4B 85 D1 01 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807BCB80:
/* 807BCB80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BCB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BCB88  7C 08 03 A6 */	mtlr r0
/* 807BCB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 807BCB90  4E 80 00 20 */	blr 
