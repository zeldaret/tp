lbl_80BFEB90:
/* 80BFEB90  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BFEB94  7C 08 02 A6 */	mflr r0
/* 80BFEB98  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BFEB9C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BFEBA0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BFEBA4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BFEBA8  4B 76 36 20 */	b _savegpr_24
/* 80BFEBAC  7C 7E 1B 78 */	mr r30, r3
/* 80BFEBB0  3C 60 80 C0 */	lis r3, ccSphSrc@ha
/* 80BFEBB4  3B 43 FC 1C */	addi r26, r3, ccSphSrc@l
/* 80BFEBB8  3B E0 00 00 */	li r31, 0
/* 80BFEBBC  3B A0 00 00 */	li r29, 0
/* 80BFEBC0  3B 80 00 00 */	li r28, 0
/* 80BFEBC4  3B 60 00 00 */	li r27, 0
/* 80BFEBC8  C3 FA 00 58 */	lfs f31, 0x58(r26)
lbl_80BFEBCC:
/* 80BFEBCC  7F 3E DA 14 */	add r25, r30, r27
/* 80BFEBD0  C0 19 05 B0 */	lfs f0, 0x5b0(r25)
/* 80BFEBD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BFEBD8  C0 19 05 B4 */	lfs f0, 0x5b4(r25)
/* 80BFEBDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BFEBE0  C0 19 05 B8 */	lfs f0, 0x5b8(r25)
/* 80BFEBE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFEBE8  C0 59 05 B8 */	lfs f2, 0x5b8(r25)
/* 80BFEBEC  C0 19 05 B4 */	lfs f0, 0x5b4(r25)
/* 80BFEBF0  EC 3F 00 2A */	fadds f1, f31, f0
/* 80BFEBF4  C0 19 05 B0 */	lfs f0, 0x5b0(r25)
/* 80BFEBF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFEBFC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BFEC00  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BFEC04  38 61 00 14 */	addi r3, r1, 0x14
/* 80BFEC08  4B 41 F1 7C */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80BFEC0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BFEC10  41 82 00 BC */	beq lbl_80BFECCC
/* 80BFEC14  C0 59 05 B4 */	lfs f2, 0x5b4(r25)
/* 80BFEC18  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 80BFEC1C  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)
/* 80BFEC20  C0 1A 00 A8 */	lfs f0, 0xa8(r26)
/* 80BFEC24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFEC28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BFEC2C  4C 40 13 82 */	cror 2, 0, 2
/* 80BFEC30  40 82 00 38 */	bne lbl_80BFEC68
/* 80BFEC34  D0 19 05 B4 */	stfs f0, 0x5b4(r25)
/* 80BFEC38  C0 1A 00 44 */	lfs f0, 0x44(r26)
/* 80BFEC3C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BFEC40  7F C3 F3 78 */	mr r3, r30
/* 80BFEC44  38 99 05 B0 */	addi r4, r25, 0x5b0
/* 80BFEC48  38 B9 06 58 */	addi r5, r25, 0x658
/* 80BFEC4C  38 1C 06 D4 */	addi r0, r28, 0x6d4
/* 80BFEC50  7C 3E 04 2E */	lfsx f1, r30, r0
/* 80BFEC54  4B FF FE 0D */	bl getWaterStream__15daObjGOMIKABE_cFR4cXyzR4cXyzf
/* 80BFEC58  38 60 00 01 */	li r3, 1
/* 80BFEC5C  38 1F 06 D0 */	addi r0, r31, 0x6d0
/* 80BFEC60  7C 7E 01 AE */	stbx r3, r30, r0
/* 80BFEC64  48 00 00 88 */	b lbl_80BFECEC
lbl_80BFEC68:
/* 80BFEC68  3B 1F 06 D0 */	addi r24, r31, 0x6d0
/* 80BFEC6C  7C 1E C0 AE */	lbzx r0, r30, r24
/* 80BFEC70  28 00 00 00 */	cmplwi r0, 0
/* 80BFEC74  40 82 00 28 */	bne lbl_80BFEC9C
/* 80BFEC78  C0 39 06 5C */	lfs f1, 0x65c(r25)
/* 80BFEC7C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80BFEC80  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFEC84  D0 19 06 5C */	stfs f0, 0x65c(r25)
/* 80BFEC88  C0 39 05 B4 */	lfs f1, 0x5b4(r25)
/* 80BFEC8C  C0 19 06 5C */	lfs f0, 0x65c(r25)
/* 80BFEC90  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFEC94  D0 19 05 B4 */	stfs f0, 0x5b4(r25)
/* 80BFEC98  48 00 00 54 */	b lbl_80BFECEC
lbl_80BFEC9C:
/* 80BFEC9C  D0 19 05 B4 */	stfs f0, 0x5b4(r25)
/* 80BFECA0  C0 1A 00 44 */	lfs f0, 0x44(r26)
/* 80BFECA4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BFECA8  7F C3 F3 78 */	mr r3, r30
/* 80BFECAC  38 99 05 B0 */	addi r4, r25, 0x5b0
/* 80BFECB0  38 B9 06 58 */	addi r5, r25, 0x658
/* 80BFECB4  38 1C 06 D4 */	addi r0, r28, 0x6d4
/* 80BFECB8  7C 3E 04 2E */	lfsx f1, r30, r0
/* 80BFECBC  4B FF FD A5 */	bl getWaterStream__15daObjGOMIKABE_cFR4cXyzR4cXyzf
/* 80BFECC0  38 00 00 01 */	li r0, 1
/* 80BFECC4  7C 1E C1 AE */	stbx r0, r30, r24
/* 80BFECC8  48 00 00 24 */	b lbl_80BFECEC
lbl_80BFECCC:
/* 80BFECCC  C0 39 06 5C */	lfs f1, 0x65c(r25)
/* 80BFECD0  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80BFECD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFECD8  D0 19 06 5C */	stfs f0, 0x65c(r25)
/* 80BFECDC  C0 39 05 B4 */	lfs f1, 0x5b4(r25)
/* 80BFECE0  C0 19 06 5C */	lfs f0, 0x65c(r25)
/* 80BFECE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFECE8  D0 19 05 B4 */	stfs f0, 0x5b4(r25)
lbl_80BFECEC:
/* 80BFECEC  C0 39 05 B0 */	lfs f1, 0x5b0(r25)
/* 80BFECF0  C0 19 06 58 */	lfs f0, 0x658(r25)
/* 80BFECF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFECF8  D0 19 05 B0 */	stfs f0, 0x5b0(r25)
/* 80BFECFC  C0 39 05 B8 */	lfs f1, 0x5b8(r25)
/* 80BFED00  C0 19 06 60 */	lfs f0, 0x660(r25)
/* 80BFED04  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFED08  D0 19 05 B8 */	stfs f0, 0x5b8(r25)
/* 80BFED0C  7C 9E EA 14 */	add r4, r30, r29
/* 80BFED10  38 64 06 10 */	addi r3, r4, 0x610
/* 80BFED14  38 84 06 88 */	addi r4, r4, 0x688
/* 80BFED18  4B 66 87 44 */	b __apl__5csXyzFR5csXyz
/* 80BFED1C  3B FF 00 01 */	addi r31, r31, 1
/* 80BFED20  2C 1F 00 04 */	cmpwi r31, 4
/* 80BFED24  3B BD 00 06 */	addi r29, r29, 6
/* 80BFED28  3B 9C 00 04 */	addi r28, r28, 4
/* 80BFED2C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BFED30  41 80 FE 9C */	blt lbl_80BFEBCC
/* 80BFED34  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BFED38  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BFED3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BFED40  4B 76 34 D4 */	b _restgpr_24
/* 80BFED44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BFED48  7C 08 03 A6 */	mtlr r0
/* 80BFED4C  38 21 00 50 */	addi r1, r1, 0x50
/* 80BFED50  4E 80 00 20 */	blr 
