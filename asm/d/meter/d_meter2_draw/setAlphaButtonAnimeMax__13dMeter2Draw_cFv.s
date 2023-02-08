lbl_802190A8:
/* 802190A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802190AC  7C 08 02 A6 */	mflr r0
/* 802190B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802190B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802190B8  7C 7F 1B 78 */	mr r31, r3
/* 802190BC  80 63 02 F8 */	lwz r3, 0x2f8(r3)
/* 802190C0  48 03 C7 69 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802190C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802190C8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802190CC  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 802190D0  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 802190D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802190D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802190DC  41 82 00 44 */	beq lbl_80219120
/* 802190E0  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 802190E4  FC 20 00 90 */	fmr f1, f0
/* 802190E8  48 03 C6 E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802190EC  7F E3 FB 78 */	mr r3, r31
/* 802190F0  80 9F 02 F8 */	lwz r4, 0x2f8(r31)
/* 802190F4  38 A0 00 05 */	li r5, 5
/* 802190F8  48 00 19 AD */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
/* 802190FC  80 1F 04 B8 */	lwz r0, 0x4b8(r31)
/* 80219100  28 00 00 00 */	cmplwi r0, 0
/* 80219104  41 82 00 1C */	beq lbl_80219120
/* 80219108  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 8021910C  48 03 C7 1D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219110  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 80219114  EC 20 00 72 */	fmuls f1, f0, f1
/* 80219118  80 7F 04 B8 */	lwz r3, 0x4b8(r31)
/* 8021911C  48 03 C6 B5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80219120:
/* 80219120  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80219124  A8 03 00 16 */	lha r0, 0x16(r3)
/* 80219128  2C 00 00 05 */	cmpwi r0, 5
/* 8021912C  40 82 00 34 */	bne lbl_80219160
/* 80219130  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80219134  38 83 01 88 */	addi r4, r3, g_meter2_info@l /* 0x80430188@l */
/* 80219138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021913C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80219140  88 03 4E 0C */	lbz r0, 0x4e0c(r3)
/* 80219144  7C 00 07 74 */	extsb r0, r0
/* 80219148  7C 64 02 14 */	add r3, r4, r0
/* 8021914C  8C 03 00 E3 */	lbzu r0, 0xe3(r3)
/* 80219150  28 00 00 01 */	cmplwi r0, 1
/* 80219154  40 82 00 0C */	bne lbl_80219160
/* 80219158  38 00 00 02 */	li r0, 2
/* 8021915C  98 03 00 00 */	stb r0, 0(r3)
lbl_80219160:
/* 80219160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80219164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80219168  7C 08 03 A6 */	mtlr r0
/* 8021916C  38 21 00 10 */	addi r1, r1, 0x10
/* 80219170  4E 80 00 20 */	blr 
