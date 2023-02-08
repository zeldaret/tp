lbl_806EAEDC:
/* 806EAEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806EAEE0  7C 08 02 A6 */	mflr r0
/* 806EAEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EAEE8  39 61 00 20 */	addi r11, r1, 0x20
/* 806EAEEC  4B C7 72 ED */	bl _savegpr_28
/* 806EAEF0  7C 7E 1B 78 */	mr r30, r3
/* 806EAEF4  3C 80 80 6F */	lis r4, lit_1109@ha /* 0x806F0B30@ha */
/* 806EAEF8  3B E4 0B 30 */	addi r31, r4, lit_1109@l /* 0x806F0B30@l */
/* 806EAEFC  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EAF00  3B 84 08 60 */	addi r28, r4, lit_3966@l /* 0x806F0860@l */
/* 806EAF04  38 00 00 00 */	li r0, 0
/* 806EAF08  98 03 06 E9 */	stb r0, 0x6e9(r3)
/* 806EAF0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EAF10  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EAF14  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806EAF18  4B 92 FA 4D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806EAF1C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 806EAF20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EAF24  40 80 00 9C */	bge lbl_806EAFC0
/* 806EAF28  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806EAF2C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806EAF30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806EAF34  EC 01 00 28 */	fsubs f0, f1, f0
/* 806EAF38  FC 00 02 10 */	fabs f0, f0
/* 806EAF3C  FC 20 00 18 */	frsp f1, f0
/* 806EAF40  C0 1C 00 60 */	lfs f0, 0x60(r28)
/* 806EAF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EAF48  40 80 00 78 */	bge lbl_806EAFC0
/* 806EAF4C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806EAF50  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 806EAF54  7D 89 03 A6 */	mtctr r12
/* 806EAF58  4E 80 04 21 */	bctrl 
/* 806EAF5C  2C 03 00 00 */	cmpwi r3, 0
/* 806EAF60  40 82 00 14 */	bne lbl_806EAF74
/* 806EAF64  88 1E 06 E9 */	lbz r0, 0x6e9(r30)
/* 806EAF68  60 00 00 01 */	ori r0, r0, 1
/* 806EAF6C  98 1E 06 E9 */	stb r0, 0x6e9(r30)
/* 806EAF70  48 00 00 50 */	b lbl_806EAFC0
lbl_806EAF74:
/* 806EAF74  A8 1E 06 DA */	lha r0, 0x6da(r30)
/* 806EAF78  2C 00 00 00 */	cmpwi r0, 0
/* 806EAF7C  40 82 00 3C */	bne lbl_806EAFB8
/* 806EAF80  38 00 00 02 */	li r0, 2
/* 806EAF84  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EAF88  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806EAF8C  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 806EAF90  EC 01 00 2A */	fadds f0, f1, f0
/* 806EAF94  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806EAF98  C0 3C 00 68 */	lfs f1, 0x68(r28)
/* 806EAF9C  4B B7 C9 B9 */	bl cM_rndF__Ff
/* 806EAFA0  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 806EAFA4  EC 00 08 2A */	fadds f0, f0, f1
/* 806EAFA8  FC 00 00 1E */	fctiwz f0, f0
/* 806EAFAC  D8 01 00 08 */	stfd f0, 8(r1)
/* 806EAFB0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806EAFB4  B0 1E 06 DA */	sth r0, 0x6da(r30)
lbl_806EAFB8:
/* 806EAFB8  38 60 00 00 */	li r3, 0
/* 806EAFBC  48 00 00 88 */	b lbl_806EB044
lbl_806EAFC0:
/* 806EAFC0  38 00 00 00 */	li r0, 0
/* 806EAFC4  90 1F 00 90 */	stw r0, 0x90(r31)
/* 806EAFC8  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 806EAFCC  90 1F 00 88 */	stw r0, 0x88(r31)
/* 806EAFD0  3C 60 80 6F */	lis r3, s_obj_sub__FPvPv@ha /* 0x806EA9B8@ha */
/* 806EAFD4  38 63 A9 B8 */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x806EA9B8@l */
/* 806EAFD8  7F C4 F3 78 */	mr r4, r30
/* 806EAFDC  4B 93 63 5D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806EAFE0  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 806EAFE4  28 03 00 00 */	cmplwi r3, 0
/* 806EAFE8  41 82 00 24 */	beq lbl_806EB00C
/* 806EAFEC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 806EAFF0  28 00 00 00 */	cmplwi r0, 0
/* 806EAFF4  41 82 00 18 */	beq lbl_806EB00C
/* 806EAFF8  88 1E 06 E9 */	lbz r0, 0x6e9(r30)
/* 806EAFFC  60 00 00 04 */	ori r0, r0, 4
/* 806EB000  98 1E 06 E9 */	stb r0, 0x6e9(r30)
/* 806EB004  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 806EB008  90 1E 06 70 */	stw r0, 0x670(r30)
lbl_806EB00C:
/* 806EB00C  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 806EB010  28 00 00 00 */	cmplwi r0, 0
/* 806EB014  41 82 00 18 */	beq lbl_806EB02C
/* 806EB018  88 1E 06 E9 */	lbz r0, 0x6e9(r30)
/* 806EB01C  60 00 00 02 */	ori r0, r0, 2
/* 806EB020  98 1E 06 E9 */	stb r0, 0x6e9(r30)
/* 806EB024  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 806EB028  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_806EB02C:
/* 806EB02C  88 1E 06 E9 */	lbz r0, 0x6e9(r30)
/* 806EB030  28 00 00 00 */	cmplwi r0, 0
/* 806EB034  41 82 00 0C */	beq lbl_806EB040
/* 806EB038  38 60 00 01 */	li r3, 1
/* 806EB03C  48 00 00 08 */	b lbl_806EB044
lbl_806EB040:
/* 806EB040  38 60 00 00 */	li r3, 0
lbl_806EB044:
/* 806EB044  39 61 00 20 */	addi r11, r1, 0x20
/* 806EB048  4B C7 71 DD */	bl _restgpr_28
/* 806EB04C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EB050  7C 08 03 A6 */	mtlr r0
/* 806EB054  38 21 00 20 */	addi r1, r1, 0x20
/* 806EB058  4E 80 00 20 */	blr 
