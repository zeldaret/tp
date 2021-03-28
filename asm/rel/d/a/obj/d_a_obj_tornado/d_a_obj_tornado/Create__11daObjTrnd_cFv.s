lbl_80D1BE6C:
/* 80D1BE6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D1BE70  7C 08 02 A6 */	mflr r0
/* 80D1BE74  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D1BE78  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D1BE7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D1BE80  7C 7E 1B 78 */	mr r30, r3
/* 80D1BE84  3C 80 80 D2 */	lis r4, lit_3628@ha
/* 80D1BE88  3B E4 C3 54 */	addi r31, r4, lit_3628@l
/* 80D1BE8C  38 00 00 00 */	li r0, 0
/* 80D1BE90  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80D1BE94  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80D1BE98  B0 03 04 B8 */	sth r0, 0x4b8(r3)
/* 80D1BE9C  4B FF FF 69 */	bl initBaseMtx__11daObjTrnd_cFv
/* 80D1BEA0  38 1E 07 08 */	addi r0, r30, 0x708
/* 80D1BEA4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D1BEA8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D1BEAC  38 80 00 FF */	li r4, 0xff
/* 80D1BEB0  38 A0 00 FF */	li r5, 0xff
/* 80D1BEB4  7F C6 F3 78 */	mr r6, r30
/* 80D1BEB8  4B 36 79 A8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D1BEBC  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80D1BEC0  3C 80 80 D2 */	lis r4, l_cps_src@ha
/* 80D1BEC4  38 84 C3 B4 */	addi r4, r4, l_cps_src@l
/* 80D1BEC8  4B 36 89 08 */	b Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80D1BECC  38 1E 05 68 */	addi r0, r30, 0x568
/* 80D1BED0  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80D1BED4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D1BED8  C0 7E 04 EC */	lfs f3, 0x4ec(r30)
/* 80D1BEDC  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80D1BEE0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D1BEE4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D1BEE8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80D1BEEC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D1BEF0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D1BEF4  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80D1BEF8  D0 81 00 08 */	stfs f4, 8(r1)
/* 80D1BEFC  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80D1BF00  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D1BF04  EC A3 00 32 */	fmuls f5, f3, f0
/* 80D1BF08  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80D1BF0C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80D1BF10  7F C3 F3 78 */	mr r3, r30
/* 80D1BF14  FC 60 08 90 */	fmr f3, f1
/* 80D1BF18  FC C0 20 90 */	fmr f6, f4
/* 80D1BF1C  4B 2F E6 2C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D1BF20  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1BF24  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D1BF28  28 00 00 FF */	cmplwi r0, 0xff
/* 80D1BF2C  41 82 00 0C */	beq lbl_80D1BF38
/* 80D1BF30  28 00 00 00 */	cmplwi r0, 0
/* 80D1BF34  40 82 00 10 */	bne lbl_80D1BF44
lbl_80D1BF38:
/* 80D1BF38  38 00 FF FF */	li r0, -1
/* 80D1BF3C  B0 1E 07 38 */	sth r0, 0x738(r30)
/* 80D1BF40  48 00 00 0C */	b lbl_80D1BF4C
lbl_80D1BF44:
/* 80D1BF44  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80D1BF48  B0 1E 07 38 */	sth r0, 0x738(r30)
lbl_80D1BF4C:
/* 80D1BF4C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D1BF50  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D1BF54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1BF58  D0 1E 07 00 */	stfs f0, 0x700(r30)
/* 80D1BF5C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D1BF60  D0 1E 06 E8 */	stfs f0, 0x6e8(r30)
/* 80D1BF64  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D1BF68  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 80D1BF6C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D1BF70  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 80D1BF74  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80D1BF78  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D1BF7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1BF80  D0 1E 07 3C */	stfs f0, 0x73c(r30)
/* 80D1BF84  C0 1E 07 3C */	lfs f0, 0x73c(r30)
/* 80D1BF88  D0 1E 07 04 */	stfs f0, 0x704(r30)
/* 80D1BF8C  7F C3 F3 78 */	mr r3, r30
/* 80D1BF90  4B FF FA 09 */	bl setPntWind__11daObjTrnd_cFv
/* 80D1BF94  38 60 00 01 */	li r3, 1
/* 80D1BF98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D1BF9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D1BFA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D1BFA4  7C 08 03 A6 */	mtlr r0
/* 80D1BFA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D1BFAC  4E 80 00 20 */	blr 
