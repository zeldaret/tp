lbl_8073AF70:
/* 8073AF70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073AF74  7C 08 02 A6 */	mflr r0
/* 8073AF78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073AF7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073AF80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8073AF84  7C 7F 1B 78 */	mr r31, r3
/* 8073AF88  3C 80 80 74 */	lis r4, lit_3910@ha
/* 8073AF8C  3B C4 CE A8 */	addi r30, r4, lit_3910@l
/* 8073AF90  88 03 06 92 */	lbz r0, 0x692(r3)
/* 8073AF94  28 00 00 00 */	cmplwi r0, 0
/* 8073AF98  41 82 00 1C */	beq lbl_8073AFB4
/* 8073AF9C  80 9F 06 70 */	lwz r4, 0x670(r31)
/* 8073AFA0  88 04 07 82 */	lbz r0, 0x782(r4)
/* 8073AFA4  28 00 00 00 */	cmplwi r0, 0
/* 8073AFA8  41 82 00 0C */	beq lbl_8073AFB4
/* 8073AFAC  4B 8D EC D0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8073AFB0  48 00 01 08 */	b lbl_8073B0B8
lbl_8073AFB4:
/* 8073AFB4  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 8073AFB8  2C 00 00 01 */	cmpwi r0, 1
/* 8073AFBC  41 82 00 BC */	beq lbl_8073B078
/* 8073AFC0  40 80 00 F8 */	bge lbl_8073B0B8
/* 8073AFC4  2C 00 00 00 */	cmpwi r0, 0
/* 8073AFC8  40 80 00 08 */	bge lbl_8073AFD0
/* 8073AFCC  48 00 00 EC */	b lbl_8073B0B8
lbl_8073AFD0:
/* 8073AFD0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8073AFD4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8073AFD8  38 00 00 01 */	li r0, 1
/* 8073AFDC  98 1F 06 93 */	stb r0, 0x693(r31)
/* 8073AFE0  90 1F 06 78 */	stw r0, 0x678(r31)
/* 8073AFE4  7F E3 FB 78 */	mr r3, r31
/* 8073AFE8  38 80 00 06 */	li r4, 6
/* 8073AFEC  38 A0 00 00 */	li r5, 0
/* 8073AFF0  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8073AFF4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8073AFF8  4B FF F4 5D */	bl setBck__8daE_OT_cFiUcff
/* 8073AFFC  38 00 00 01 */	li r0, 1
/* 8073B000  90 1F 06 78 */	stw r0, 0x678(r31)
/* 8073B004  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070239@ha */
/* 8073B008  38 03 02 39 */	addi r0, r3, 0x0239 /* 0x00070239@l */
/* 8073B00C  90 01 00 08 */	stw r0, 8(r1)
/* 8073B010  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8073B014  38 81 00 08 */	addi r4, r1, 8
/* 8073B018  38 A0 00 00 */	li r5, 0
/* 8073B01C  38 C0 FF FF */	li r6, -1
/* 8073B020  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 8073B024  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8073B028  7D 89 03 A6 */	mtctr r12
/* 8073B02C  4E 80 04 21 */	bctrl 
/* 8073B030  88 1F 06 92 */	lbz r0, 0x692(r31)
/* 8073B034  28 00 00 03 */	cmplwi r0, 3
/* 8073B038  40 82 00 14 */	bne lbl_8073B04C
/* 8073B03C  38 00 00 00 */	li r0, 0
/* 8073B040  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8073B044  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8073B048  48 00 00 20 */	b lbl_8073B068
lbl_8073B04C:
/* 8073B04C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8073B050  4B B2 C9 3C */	b cM_rndFX__Ff
/* 8073B054  FC 00 08 1E */	fctiwz f0, f1
/* 8073B058  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8073B05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073B060  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8073B064  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_8073B068:
/* 8073B068  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8073B06C  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8073B070  90 1F 09 14 */	stw r0, 0x914(r31)
/* 8073B074  48 00 00 44 */	b lbl_8073B0B8
lbl_8073B078:
/* 8073B078  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8073B07C  38 80 00 01 */	li r4, 1
/* 8073B080  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8073B084  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073B088  40 82 00 18 */	bne lbl_8073B0A0
/* 8073B08C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8073B090  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8073B094  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073B098  41 82 00 08 */	beq lbl_8073B0A0
/* 8073B09C  38 80 00 00 */	li r4, 0
lbl_8073B0A0:
/* 8073B0A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8073B0A4  41 82 00 14 */	beq lbl_8073B0B8
/* 8073B0A8  7F E3 FB 78 */	mr r3, r31
/* 8073B0AC  38 80 00 02 */	li r4, 2
/* 8073B0B0  38 A0 00 00 */	li r5, 0
/* 8073B0B4  4B FF F4 45 */	bl setActionMode__8daE_OT_cFii
lbl_8073B0B8:
/* 8073B0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073B0BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8073B0C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073B0C4  7C 08 03 A6 */	mtlr r0
/* 8073B0C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8073B0CC  4E 80 00 20 */	blr 
