lbl_806FFF54:
/* 806FFF54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FFF58  7C 08 02 A6 */	mflr r0
/* 806FFF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FFF60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806FFF64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806FFF68  7C 7E 1B 78 */	mr r30, r3
/* 806FFF6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FFF70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FFF74  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 806FFF78  3C 80 80 70 */	lis r4, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 806FFF7C  38 84 5F F4 */	addi r4, r4, l_e_krHIO@l /* 0x80705FF4@l */
/* 806FFF80  88 04 00 06 */	lbz r0, 6(r4)
/* 806FFF84  28 00 00 00 */	cmplwi r0, 0
/* 806FFF88  41 82 00 0C */	beq lbl_806FFF94
/* 806FFF8C  38 60 00 01 */	li r3, 1
/* 806FFF90  48 00 01 60 */	b lbl_807000F0
lbl_806FFF94:
/* 806FFF94  88 1E 06 65 */	lbz r0, 0x665(r30)
/* 806FFF98  28 00 00 FF */	cmplwi r0, 0xff
/* 806FFF9C  41 82 00 4C */	beq lbl_806FFFE8
/* 806FFFA0  C0 7E 06 C4 */	lfs f3, 0x6c4(r30)
/* 806FFFA4  3C 80 80 70 */	lis r4, lit_3903@ha /* 0x80705AF8@ha */
/* 806FFFA8  C0 44 5A F8 */	lfs f2, lit_3903@l(r4)  /* 0x80705AF8@l */
/* 806FFFAC  3C 80 80 70 */	lis r4, lit_4155@ha /* 0x80705B28@ha */
/* 806FFFB0  C8 24 5B 28 */	lfd f1, lit_4155@l(r4)  /* 0x80705B28@l */
/* 806FFFB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FFFB8  3C 00 43 30 */	lis r0, 0x4330
/* 806FFFBC  90 01 00 08 */	stw r0, 8(r1)
/* 806FFFC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 806FFFC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806FFFC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 806FFFCC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 806FFFD0  41 81 00 10 */	bgt lbl_806FFFE0
/* 806FFFD4  4B FF FD DD */	bl e_kr_player_bg_check__FP10e_kr_class
/* 806FFFD8  2C 03 00 00 */	cmpwi r3, 0
/* 806FFFDC  41 82 00 74 */	beq lbl_80700050
lbl_806FFFE0:
/* 806FFFE0  38 60 00 00 */	li r3, 0
/* 806FFFE4  48 00 01 0C */	b lbl_807000F0
lbl_806FFFE8:
/* 806FFFE8  A8 1E 06 68 */	lha r0, 0x668(r30)
/* 806FFFEC  2C 00 00 04 */	cmpwi r0, 4
/* 806FFFF0  41 82 00 0C */	beq lbl_806FFFFC
/* 806FFFF4  2C 00 00 07 */	cmpwi r0, 7
/* 806FFFF8  40 82 00 34 */	bne lbl_8070002C
lbl_806FFFFC:
/* 806FFFFC  C0 3E 06 C4 */	lfs f1, 0x6c4(r30)
/* 80700000  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80700004  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80700008  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 8070000C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80700010  41 81 00 14 */	bgt lbl_80700024
/* 80700014  7F C3 F3 78 */	mr r3, r30
/* 80700018  4B FF FD 99 */	bl e_kr_player_bg_check__FP10e_kr_class
/* 8070001C  2C 03 00 00 */	cmpwi r3, 0
/* 80700020  41 82 00 30 */	beq lbl_80700050
lbl_80700024:
/* 80700024  38 60 00 00 */	li r3, 0
/* 80700028  48 00 00 C8 */	b lbl_807000F0
lbl_8070002C:
/* 8070002C  C0 3E 06 C4 */	lfs f1, 0x6c4(r30)
/* 80700030  C0 04 00 64 */	lfs f0, 0x64(r4)
/* 80700034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80700038  41 81 00 10 */	bgt lbl_80700048
/* 8070003C  4B FF FD 75 */	bl e_kr_player_bg_check__FP10e_kr_class
/* 80700040  2C 03 00 00 */	cmpwi r3, 0
/* 80700044  41 82 00 0C */	beq lbl_80700050
lbl_80700048:
/* 80700048  38 60 00 00 */	li r3, 0
/* 8070004C  48 00 00 A4 */	b lbl_807000F0
lbl_80700050:
/* 80700050  A8 1E 06 68 */	lha r0, 0x668(r30)
/* 80700054  2C 00 00 04 */	cmpwi r0, 4
/* 80700058  41 82 00 0C */	beq lbl_80700064
/* 8070005C  2C 00 00 07 */	cmpwi r0, 7
/* 80700060  40 82 00 18 */	bne lbl_80700078
lbl_80700064:
/* 80700064  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80700068  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 8070006C  A8 A3 00 6E */	lha r5, 0x6e(r3)
/* 80700070  C0 43 00 74 */	lfs f2, 0x74(r3)
/* 80700074  48 00 00 14 */	b lbl_80700088
lbl_80700078:
/* 80700078  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 8070007C  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80700080  A8 A3 00 6C */	lha r5, 0x6c(r3)
/* 80700084  C0 43 00 70 */	lfs f2, 0x70(r3)
lbl_80700088:
/* 80700088  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 8070008C  C0 23 5A F8 */	lfs f1, lit_3903@l(r3)  /* 0x80705AF8@l */
/* 80700090  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80700094  EC 21 00 2A */	fadds f1, f1, f0
/* 80700098  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8070009C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807000A0  FC 00 02 10 */	fabs f0, f0
/* 807000A4  FC 00 00 18 */	frsp f0, f0
/* 807000A8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807000AC  40 80 00 40 */	bge lbl_807000EC
/* 807000B0  A8 9E 06 C0 */	lha r4, 0x6c0(r30)
/* 807000B4  A8 7E 0E 7C */	lha r3, 0xe7c(r30)
/* 807000B8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807000BC  7C 03 00 50 */	subf r0, r3, r0
/* 807000C0  7C 04 00 50 */	subf r0, r4, r0
/* 807000C4  7C 00 07 35 */	extsh. r0, r0
/* 807000C8  40 80 00 0C */	bge lbl_807000D4
/* 807000CC  7C 00 00 D0 */	neg r0, r0
/* 807000D0  7C 00 07 34 */	extsh r0, r0
lbl_807000D4:
/* 807000D4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 807000D8  7C A0 07 34 */	extsh r0, r5
/* 807000DC  7C 03 00 00 */	cmpw r3, r0
/* 807000E0  40 80 00 0C */	bge lbl_807000EC
/* 807000E4  38 60 00 01 */	li r3, 1
/* 807000E8  48 00 00 08 */	b lbl_807000F0
lbl_807000EC:
/* 807000EC  38 60 00 00 */	li r3, 0
lbl_807000F0:
/* 807000F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807000F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807000F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807000FC  7C 08 03 A6 */	mtlr r0
/* 80700100  38 21 00 20 */	addi r1, r1, 0x20
/* 80700104  4E 80 00 20 */	blr 
