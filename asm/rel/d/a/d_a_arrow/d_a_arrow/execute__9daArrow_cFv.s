lbl_8049CEA0:
/* 8049CEA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049CEA4  7C 08 02 A6 */	mflr r0
/* 8049CEA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049CEAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049CEB0  7C 7F 1B 78 */	mr r31, r3
/* 8049CEB4  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 8049CEB8  4B CC 1D 90 */	b setActor__16daPy_actorKeep_cFv
/* 8049CEBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8049CEC0  7C 03 07 74 */	extsb r3, r0
/* 8049CEC4  4B B9 01 A8 */	b dComIfGp_getReverb__Fi
/* 8049CEC8  98 7F 09 48 */	stb r3, 0x948(r31)
/* 8049CECC  88 1F 09 45 */	lbz r0, 0x945(r31)
/* 8049CED0  28 00 00 00 */	cmplwi r0, 0
/* 8049CED4  40 82 00 40 */	bne lbl_8049CF14
/* 8049CED8  88 1F 09 43 */	lbz r0, 0x943(r31)
/* 8049CEDC  28 00 00 00 */	cmplwi r0, 0
/* 8049CEE0  40 82 00 34 */	bne lbl_8049CF14
/* 8049CEE4  C0 1F 09 D8 */	lfs f0, 0x9d8(r31)
/* 8049CEE8  D0 1F 09 E4 */	stfs f0, 0x9e4(r31)
/* 8049CEEC  C0 1F 09 DC */	lfs f0, 0x9dc(r31)
/* 8049CEF0  D0 1F 09 E8 */	stfs f0, 0x9e8(r31)
/* 8049CEF4  C0 1F 09 E0 */	lfs f0, 0x9e0(r31)
/* 8049CEF8  D0 1F 09 EC */	stfs f0, 0x9ec(r31)
/* 8049CEFC  C0 1F 09 CC */	lfs f0, 0x9cc(r31)
/* 8049CF00  D0 1F 09 D8 */	stfs f0, 0x9d8(r31)
/* 8049CF04  C0 1F 09 D0 */	lfs f0, 0x9d0(r31)
/* 8049CF08  D0 1F 09 DC */	stfs f0, 0x9dc(r31)
/* 8049CF0C  C0 1F 09 D4 */	lfs f0, 0x9d4(r31)
/* 8049CF10  D0 1F 09 E0 */	stfs f0, 0x9e0(r31)
lbl_8049CF14:
/* 8049CF14  88 1F 09 3F */	lbz r0, 0x93f(r31)
/* 8049CF18  28 00 00 00 */	cmplwi r0, 0
/* 8049CF1C  41 82 00 20 */	beq lbl_8049CF3C
/* 8049CF20  7F E3 FB 78 */	mr r3, r31
/* 8049CF24  38 80 00 01 */	li r4, 1
/* 8049CF28  4B FF D2 C5 */	bl setLightChargeEffect__9daArrow_cFi
/* 8049CF2C  7F E3 FB 78 */	mr r3, r31
/* 8049CF30  4B B7 CD 4C */	b fopAcM_delete__FP10fopAc_ac_c
/* 8049CF34  38 60 00 01 */	li r3, 1
/* 8049CF38  48 00 01 60 */	b lbl_8049D098
lbl_8049CF3C:
/* 8049CF3C  A8 9F 09 4E */	lha r4, 0x94e(r31)
/* 8049CF40  3C 60 80 45 */	lis r3, struct_80450D88+0x0@ha
/* 8049CF44  A8 03 0D 88 */	lha r0, struct_80450D88+0x0@l(r3)
/* 8049CF48  7C 04 00 00 */	cmpw r4, r0
/* 8049CF4C  40 82 00 0C */	bne lbl_8049CF58
/* 8049CF50  38 00 00 01 */	li r0, 1
/* 8049CF54  98 1F 09 44 */	stb r0, 0x944(r31)
lbl_8049CF58:
/* 8049CF58  88 7F 09 42 */	lbz r3, 0x942(r31)
/* 8049CF5C  28 03 00 00 */	cmplwi r3, 0
/* 8049CF60  41 82 00 0C */	beq lbl_8049CF6C
/* 8049CF64  38 03 FF FF */	addi r0, r3, -1
/* 8049CF68  98 1F 09 42 */	stb r0, 0x942(r31)
lbl_8049CF6C:
/* 8049CF6C  7F E3 FB 78 */	mr r3, r31
/* 8049CF70  39 9F 0A 28 */	addi r12, r31, 0xa28
/* 8049CF74  4B EC 51 10 */	b __ptmf_scall
/* 8049CF78  60 00 00 00 */	nop 
/* 8049CF7C  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 8049CF80  28 00 00 01 */	cmplwi r0, 1
/* 8049CF84  40 82 00 A4 */	bne lbl_8049D028
/* 8049CF88  88 1F 09 3F */	lbz r0, 0x93f(r31)
/* 8049CF8C  28 00 00 00 */	cmplwi r0, 0
/* 8049CF90  40 82 00 98 */	bne lbl_8049D028
/* 8049CF94  A8 7F 09 50 */	lha r3, 0x950(r31)
/* 8049CF98  2C 03 00 00 */	cmpwi r3, 0
/* 8049CF9C  41 82 00 10 */	beq lbl_8049CFAC
/* 8049CFA0  38 03 FF FF */	addi r0, r3, -1
/* 8049CFA4  B0 1F 09 50 */	sth r0, 0x950(r31)
/* 8049CFA8  48 00 00 80 */	b lbl_8049D028
lbl_8049CFAC:
/* 8049CFAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049CFB0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8049CFB4  38 A4 00 04 */	addi r5, r4, 4
/* 8049CFB8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8049CFBC  54 06 04 38 */	rlwinm r6, r0, 0, 0x10, 0x1c
/* 8049CFC0  7C 05 34 2E */	lfsx f0, r5, r6
/* 8049CFC4  3C 60 80 4A */	lis r3, lit_4868@ha
/* 8049CFC8  C0 43 DD BC */	lfs f2, lit_4868@l(r3)
/* 8049CFCC  EC 82 00 32 */	fmuls f4, f2, f0
/* 8049CFD0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8049CFD4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8049CFD8  7C 05 04 2E */	lfsx f0, r5, r0
/* 8049CFDC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8049CFE0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8049CFE4  EC 61 00 2A */	fadds f3, f1, f0
/* 8049CFE8  7C 04 34 2E */	lfsx f0, r4, r6
/* 8049CFEC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8049CFF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049CFF4  EC 41 00 2A */	fadds f2, f1, f0
/* 8049CFF8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8049CFFC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8049D000  EC 04 00 32 */	fmuls f0, f4, f0
/* 8049D004  EC 01 00 2A */	fadds f0, f1, f0
/* 8049D008  D0 01 00 08 */	stfs f0, 8(r1)
/* 8049D00C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8049D010  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8049D014  7F E3 FB 78 */	mr r3, r31
/* 8049D018  38 81 00 08 */	addi r4, r1, 8
/* 8049D01C  4B FF DC 69 */	bl setBombArrowExplode__9daArrow_cFP4cXyz
/* 8049D020  38 60 00 01 */	li r3, 1
/* 8049D024  48 00 00 74 */	b lbl_8049D098
lbl_8049D028:
/* 8049D028  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 8049D02C  28 00 00 02 */	cmplwi r0, 2
/* 8049D030  40 82 00 10 */	bne lbl_8049D040
/* 8049D034  7F E3 FB 78 */	mr r3, r31
/* 8049D038  38 80 00 00 */	li r4, 0
/* 8049D03C  4B FF D1 B1 */	bl setLightChargeEffect__9daArrow_cFi
lbl_8049D040:
/* 8049D040  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8049D044  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8049D048  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8049D04C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8049D050  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8049D054  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8049D058  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8049D05C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8049D060  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8049D064  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8049D068  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8049D06C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8049D070  7F E3 FB 78 */	mr r3, r31
/* 8049D074  4B FF DC 6D */	bl setRoomInfo__9daArrow_cFv
/* 8049D078  38 7F 09 04 */	addi r3, r31, 0x904
/* 8049D07C  38 80 00 00 */	li r4, 0
/* 8049D080  88 BF 09 48 */	lbz r5, 0x948(r31)
/* 8049D084  81 9F 09 14 */	lwz r12, 0x914(r31)
/* 8049D088  81 8C 00 08 */	lwz r12, 8(r12)
/* 8049D08C  7D 89 03 A6 */	mtctr r12
/* 8049D090  4E 80 04 21 */	bctrl 
/* 8049D094  38 60 00 01 */	li r3, 1
lbl_8049D098:
/* 8049D098  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049D09C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049D0A0  7C 08 03 A6 */	mtlr r0
/* 8049D0A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8049D0A8  4E 80 00 20 */	blr 
