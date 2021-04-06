lbl_8068AED0:
/* 8068AED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8068AED4  7C 08 02 A6 */	mflr r0
/* 8068AED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068AEDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8068AEE0  7C 7F 1B 78 */	mr r31, r3
/* 8068AEE4  3C 80 80 69 */	lis r4, lit_3903@ha /* 0x8068D7EC@ha */
/* 8068AEE8  38 C4 D7 EC */	addi r6, r4, lit_3903@l /* 0x8068D7EC@l */
/* 8068AEEC  A8 03 06 70 */	lha r0, 0x670(r3)
/* 8068AEF0  2C 00 00 01 */	cmpwi r0, 1
/* 8068AEF4  41 82 00 6C */	beq lbl_8068AF60
/* 8068AEF8  40 80 00 10 */	bge lbl_8068AF08
/* 8068AEFC  2C 00 00 00 */	cmpwi r0, 0
/* 8068AF00  40 80 00 14 */	bge lbl_8068AF14
/* 8068AF04  48 00 00 D4 */	b lbl_8068AFD8
lbl_8068AF08:
/* 8068AF08  2C 00 00 03 */	cmpwi r0, 3
/* 8068AF0C  40 80 00 CC */	bge lbl_8068AFD8
/* 8068AF10  48 00 00 A4 */	b lbl_8068AFB4
lbl_8068AF14:
/* 8068AF14  38 80 00 0B */	li r4, 0xb
/* 8068AF18  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 8068AF1C  38 A0 00 00 */	li r5, 0
/* 8068AF20  C0 46 00 08 */	lfs f2, 8(r6)
/* 8068AF24  4B FF F7 11 */	bl anm_init__FP10e_bi_classifUcf
/* 8068AF28  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EE@ha */
/* 8068AF2C  38 03 00 EE */	addi r0, r3, 0x00EE /* 0x000700EE@l */
/* 8068AF30  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068AF34  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8068AF38  38 81 00 0C */	addi r4, r1, 0xc
/* 8068AF3C  38 A0 00 00 */	li r5, 0
/* 8068AF40  38 C0 FF FF */	li r6, -1
/* 8068AF44  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8068AF48  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068AF4C  7D 89 03 A6 */	mtctr r12
/* 8068AF50  4E 80 04 21 */	bctrl 
/* 8068AF54  38 00 00 01 */	li r0, 1
/* 8068AF58  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068AF5C  48 00 00 7C */	b lbl_8068AFD8
lbl_8068AF60:
/* 8068AF60  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068AF64  38 80 00 01 */	li r4, 1
/* 8068AF68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8068AF6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8068AF70  40 82 00 18 */	bne lbl_8068AF88
/* 8068AF74  C0 26 00 04 */	lfs f1, 4(r6)
/* 8068AF78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068AF7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8068AF80  41 82 00 08 */	beq lbl_8068AF88
/* 8068AF84  38 80 00 00 */	li r4, 0
lbl_8068AF88:
/* 8068AF88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8068AF8C  41 82 00 4C */	beq lbl_8068AFD8
/* 8068AF90  7F E3 FB 78 */	mr r3, r31
/* 8068AF94  38 80 00 08 */	li r4, 8
/* 8068AF98  C0 26 00 44 */	lfs f1, 0x44(r6)
/* 8068AF9C  38 A0 00 02 */	li r5, 2
/* 8068AFA0  C0 46 00 08 */	lfs f2, 8(r6)
/* 8068AFA4  4B FF F6 91 */	bl anm_init__FP10e_bi_classifUcf
/* 8068AFA8  38 00 00 02 */	li r0, 2
/* 8068AFAC  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068AFB0  48 00 00 28 */	b lbl_8068AFD8
lbl_8068AFB4:
/* 8068AFB4  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068AFB8  38 84 DB 2C */	addi r4, r4, l_HIO@l /* 0x8068DB2C@l */
/* 8068AFBC  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8068AFC0  4B FF F9 4D */	bl pl_check__FP10e_bi_classf
/* 8068AFC4  2C 03 00 00 */	cmpwi r3, 0
/* 8068AFC8  41 82 00 10 */	beq lbl_8068AFD8
/* 8068AFCC  38 00 00 00 */	li r0, 0
/* 8068AFD0  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8068AFD4  B0 1F 06 70 */	sth r0, 0x670(r31)
lbl_8068AFD8:
/* 8068AFD8  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8068AFDC  A8 9F 06 84 */	lha r4, 0x684(r31)
/* 8068AFE0  38 A0 00 04 */	li r5, 4
/* 8068AFE4  38 C0 08 00 */	li r6, 0x800
/* 8068AFE8  4B BE 56 21 */	bl cLib_addCalcAngleS2__FPssss
/* 8068AFEC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8068AFF0  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8068AFF4  38 A0 00 04 */	li r5, 4
/* 8068AFF8  38 C0 20 00 */	li r6, 0x2000
/* 8068AFFC  4B BE 56 0D */	bl cLib_addCalcAngleS2__FPssss
/* 8068B000  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 8068B004  28 00 00 01 */	cmplwi r0, 1
/* 8068B008  40 82 00 4C */	bne lbl_8068B054
/* 8068B00C  A8 1F 06 70 */	lha r0, 0x670(r31)
/* 8068B010  2C 00 00 02 */	cmpwi r0, 2
/* 8068B014  41 80 00 40 */	blt lbl_8068B054
/* 8068B018  80 1F 0B A8 */	lwz r0, 0xba8(r31)
/* 8068B01C  90 01 00 08 */	stw r0, 8(r1)
/* 8068B020  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8068B024  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8068B028  38 81 00 08 */	addi r4, r1, 8
/* 8068B02C  4B 98 E7 CD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8068B030  28 03 00 00 */	cmplwi r3, 0
/* 8068B034  41 82 00 20 */	beq lbl_8068B054
/* 8068B038  88 03 05 67 */	lbz r0, 0x567(r3)
/* 8068B03C  7C 00 07 75 */	extsb. r0, r0
/* 8068B040  41 82 00 14 */	beq lbl_8068B054
/* 8068B044  38 00 00 07 */	li r0, 7
/* 8068B048  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8068B04C  38 00 00 00 */	li r0, 0
/* 8068B050  B0 1F 06 70 */	sth r0, 0x670(r31)
lbl_8068B054:
/* 8068B054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8068B058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068B05C  7C 08 03 A6 */	mtlr r0
/* 8068B060  38 21 00 20 */	addi r1, r1, 0x20
/* 8068B064  4E 80 00 20 */	blr 
