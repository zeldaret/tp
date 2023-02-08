lbl_804ABED8:
/* 804ABED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ABEDC  7C 08 02 A6 */	mflr r0
/* 804ABEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ABEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 804ABEEC  7C 7E 1B 78 */	mr r30, r3
/* 804ABEF0  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804ABEF4  3B E3 B5 34 */	addi r31, r3, lit_3879@l /* 0x804BB534@l */
/* 804ABEF8  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804ABEFC  2C 00 00 00 */	cmpwi r0, 0
/* 804ABF00  40 82 00 4C */	bne lbl_804ABF4C
/* 804ABF04  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804ABF08  2C 00 00 06 */	cmpwi r0, 6
/* 804ABF0C  41 82 00 40 */	beq lbl_804ABF4C
/* 804ABF10  2C 00 00 05 */	cmpwi r0, 5
/* 804ABF14  40 82 00 38 */	bne lbl_804ABF4C
/* 804ABF18  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 804ABF1C  2C 00 00 00 */	cmpwi r0, 0
/* 804ABF20  40 82 00 18 */	bne lbl_804ABF38
/* 804ABF24  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 804ABF28  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 804ABF2C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804ABF30  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804ABF34  41 82 00 18 */	beq lbl_804ABF4C
lbl_804ABF38:
/* 804ABF38  38 7E 0F 5C */	addi r3, r30, 0xf5c
/* 804ABF3C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804ABF40  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804ABF44  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 804ABF48  4B DC 3A F5 */	bl cLib_addCalc2__FPffff
lbl_804ABF4C:
/* 804ABF4C  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804ABF50  2C 00 00 00 */	cmpwi r0, 0
/* 804ABF54  40 82 00 30 */	bne lbl_804ABF84
/* 804ABF58  7F C3 F3 78 */	mr r3, r30
/* 804ABF5C  4B FF EC 3D */	bl line_control1__FP13dmg_rod_class
/* 804ABF60  A8 1E 07 5E */	lha r0, 0x75e(r30)
/* 804ABF64  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804ABF68  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804ABF6C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804ABF70  7C 23 04 2E */	lfsx f1, r3, r0
/* 804ABF74  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804ABF78  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ABF7C  D0 1E 07 60 */	stfs f0, 0x760(r30)
/* 804ABF80  48 00 00 0C */	b lbl_804ABF8C
lbl_804ABF84:
/* 804ABF84  7F C3 F3 78 */	mr r3, r30
/* 804ABF88  4B FF F6 01 */	bl line_control1_u__FP13dmg_rod_class
lbl_804ABF8C:
/* 804ABF8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ABF90  83 C1 00 08 */	lwz r30, 8(r1)
/* 804ABF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABF98  7C 08 03 A6 */	mtlr r0
/* 804ABF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804ABFA0  4E 80 00 20 */	blr 
