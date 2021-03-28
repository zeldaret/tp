lbl_8010BCA4:
/* 8010BCA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010BCA8  7C 08 02 A6 */	mflr r0
/* 8010BCAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010BCB0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8010BCB4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8010BCB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010BCBC  7C 7F 1B 78 */	mr r31, r3
/* 8010BCC0  4B FF D2 A5 */	bl cancelHookshotMove__9daAlink_cFv
/* 8010BCC4  7F E3 FB 78 */	mr r3, r31
/* 8010BCC8  38 80 00 00 */	li r4, 0
/* 8010BCCC  4B FA E4 05 */	bl checkNextAction__9daAlink_cFi
/* 8010BCD0  2C 03 00 00 */	cmpwi r3, 0
/* 8010BCD4  40 82 00 9C */	bne lbl_8010BD70
/* 8010BCD8  C3 E2 92 BC */	lfs f31, lit_6041(r2)
/* 8010BCDC  7F E3 FB 78 */	mr r3, r31
/* 8010BCE0  4B FA 7C 25 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8010BCE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010BCE8  41 82 00 34 */	beq lbl_8010BD1C
/* 8010BCEC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010BCF0  60 00 00 01 */	ori r0, r0, 1
/* 8010BCF4  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8010BCF8  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 8010BCFC  28 00 00 02 */	cmplwi r0, 2
/* 8010BD00  41 82 00 28 */	beq lbl_8010BD28
/* 8010BD04  38 00 00 02 */	li r0, 2
/* 8010BD08  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 8010BD0C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha
/* 8010BD10  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l
/* 8010BD14  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8010BD18  48 00 00 10 */	b lbl_8010BD28
lbl_8010BD1C:
/* 8010BD1C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010BD20  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8010BD24  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8010BD28:
/* 8010BD28  7F E3 FB 78 */	mr r3, r31
/* 8010BD2C  4B FF CC ED */	bl checkHookshotWait__9daAlink_cCFv
/* 8010BD30  2C 03 00 00 */	cmpwi r3, 0
/* 8010BD34  41 82 00 20 */	beq lbl_8010BD54
/* 8010BD38  7F E3 FB 78 */	mr r3, r31
/* 8010BD3C  FC 20 F8 90 */	fmr f1, f31
/* 8010BD40  4B FA 2D 31 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 8010BD44  7F E3 FB 78 */	mr r3, r31
/* 8010BD48  38 80 00 00 */	li r4, 0
/* 8010BD4C  4B FA F5 65 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 8010BD50  48 00 00 20 */	b lbl_8010BD70
lbl_8010BD54:
/* 8010BD54  7F E3 FB 78 */	mr r3, r31
/* 8010BD58  4B FF CB 71 */	bl checkChaseHookshot__9daAlink_cFv
/* 8010BD5C  2C 03 00 00 */	cmpwi r3, 0
/* 8010BD60  41 82 00 10 */	beq lbl_8010BD70
/* 8010BD64  7F E3 FB 78 */	mr r3, r31
/* 8010BD68  38 80 00 00 */	li r4, 0
/* 8010BD6C  4B FA F5 45 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
lbl_8010BD70:
/* 8010BD70  38 60 00 01 */	li r3, 1
/* 8010BD74  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8010BD78  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8010BD7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010BD80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010BD84  7C 08 03 A6 */	mtlr r0
/* 8010BD88  38 21 00 20 */	addi r1, r1, 0x20
/* 8010BD8C  4E 80 00 20 */	blr 
