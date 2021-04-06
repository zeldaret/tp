lbl_8052CD68:
/* 8052CD68  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8052CD6C  7C 08 02 A6 */	mflr r0
/* 8052CD70  90 01 00 74 */	stw r0, 0x74(r1)
/* 8052CD74  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8052CD78  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8052CD7C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8052CD80  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8052CD84  7C 7E 1B 78 */	mr r30, r3
/* 8052CD88  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 8052CD8C  3B E3 61 68 */	addi r31, r3, lit_3679@l /* 0x80536168@l */
/* 8052CD90  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 8052CD94  2C 00 00 01 */	cmpwi r0, 1
/* 8052CD98  41 82 01 EC */	beq lbl_8052CF84
/* 8052CD9C  40 80 00 14 */	bge lbl_8052CDB0
/* 8052CDA0  2C 00 FF FF */	cmpwi r0, -1
/* 8052CDA4  41 82 00 18 */	beq lbl_8052CDBC
/* 8052CDA8  40 80 00 74 */	bge lbl_8052CE1C
/* 8052CDAC  48 00 05 AC */	b lbl_8052D358
lbl_8052CDB0:
/* 8052CDB0  2C 00 00 05 */	cmpwi r0, 5
/* 8052CDB4  41 82 03 B0 */	beq lbl_8052D164
/* 8052CDB8  48 00 05 A0 */	b lbl_8052D358
lbl_8052CDBC:
/* 8052CDBC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8052CDC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052CDC4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8052CDC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052CDCC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8052CDD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8052CDD4  38 61 00 28 */	addi r3, r1, 0x28
/* 8052CDD8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8052CDDC  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 8052CDE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052CDE4  FC 00 00 1E */	fctiwz f0, f0
/* 8052CDE8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052CDEC  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8052CDF0  28 1E 00 00 */	cmplwi r30, 0
/* 8052CDF4  41 82 00 0C */	beq lbl_8052CE00
/* 8052CDF8  80 BE 00 04 */	lwz r5, 4(r30)
/* 8052CDFC  48 00 00 08 */	b lbl_8052CE04
lbl_8052CE00:
/* 8052CE00  38 A0 FF FF */	li r5, -1
lbl_8052CE04:
/* 8052CE04  38 C0 00 05 */	li r6, 5
/* 8052CE08  4B C7 B3 B9 */	bl dKy_Sound_set__F4cXyziUii
/* 8052CE0C  38 00 00 00 */	li r0, 0
/* 8052CE10  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8052CE14  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052CE18  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8052CE1C:
/* 8052CE1C  7F C3 F3 78 */	mr r3, r30
/* 8052CE20  4B FF D3 FD */	bl mouth_close__FP13mg_fish_class
/* 8052CE24  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8052CE28  4B D3 AB 65 */	bl cM_rndFX__Ff
/* 8052CE2C  FC 00 08 1E */	fctiwz f0, f1
/* 8052CE30  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052CE34  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8052CE38  A8 7E 05 F4 */	lha r3, 0x5f4(r30)
/* 8052CE3C  3C 03 00 01 */	addis r0, r3, 1
/* 8052CE40  7C 60 22 14 */	add r3, r0, r4
/* 8052CE44  38 03 80 00 */	addi r0, r3, -32768
/* 8052CE48  7C 04 07 34 */	extsh r4, r0
/* 8052CE4C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052CE50  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052CE54  80 63 00 00 */	lwz r3, 0(r3)
/* 8052CE58  4B AD F5 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 8052CE5C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052CE60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8052CE64  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052CE68  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8052CE6C  4B D3 AA E9 */	bl cM_rndF__Ff
/* 8052CE70  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8052CE74  EC 00 08 2A */	fadds f0, f0, f1
/* 8052CE78  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8052CE7C  38 61 00 34 */	addi r3, r1, 0x34
/* 8052CE80  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052CE84  4B D4 40 69 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8052CE88  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8052CE8C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8052CE90  7C 65 1B 78 */	mr r5, r3
/* 8052CE94  4B E1 A1 FD */	bl PSVECAdd
/* 8052CE98  7F C3 F3 78 */	mr r3, r30
/* 8052CE9C  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052CEA0  4B FF EB 2D */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 8052CEA4  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 8052CEA8  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 8052CEAC  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 8052CEB0  EC 22 00 28 */	fsubs f1, f2, f0
/* 8052CEB4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8052CEB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052CEBC  40 81 00 0C */	ble lbl_8052CEC8
/* 8052CEC0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8052CEC4  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
lbl_8052CEC8:
/* 8052CEC8  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052CECC  C3 FE 05 DC */	lfs f31, 0x5dc(r30)
/* 8052CED0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8052CED4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052CED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052CEDC  40 81 04 7C */	ble lbl_8052D358
/* 8052CEE0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8052CEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052CEE8  40 80 04 70 */	bge lbl_8052D358
/* 8052CEEC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8052CEF0  4B D3 AA 65 */	bl cM_rndF__Ff
/* 8052CEF4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8052CEF8  EC 20 08 2A */	fadds f1, f0, f1
/* 8052CEFC  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052CF00  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8052CF04  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052CF08  EC 1F 00 2A */	fadds f0, f31, f0
/* 8052CF0C  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052CF10  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 8052CF14  28 00 00 05 */	cmplwi r0, 5
/* 8052CF18  41 80 00 34 */	blt lbl_8052CF4C
/* 8052CF1C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8052CF20  4B D3 AA 35 */	bl cM_rndF__Ff
/* 8052CF24  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8052CF28  EC 00 08 2A */	fadds f0, f0, f1
/* 8052CF2C  FC 00 00 1E */	fctiwz f0, f0
/* 8052CF30  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052CF34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052CF38  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052CF3C  A8 7E 05 B8 */	lha r3, 0x5b8(r30)
/* 8052CF40  38 03 00 01 */	addi r0, r3, 1
/* 8052CF44  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052CF48  48 00 00 3C */	b lbl_8052CF84
lbl_8052CF4C:
/* 8052CF4C  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052CF50  2C 00 00 00 */	cmpwi r0, 0
/* 8052CF54  40 82 00 24 */	bne lbl_8052CF78
/* 8052CF58  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8052CF5C  4B D3 A9 F9 */	bl cM_rndF__Ff
/* 8052CF60  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8052CF64  EC 00 08 2A */	fadds f0, f0, f1
/* 8052CF68  FC 00 00 1E */	fctiwz f0, f0
/* 8052CF6C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052CF70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052CF74  B0 1E 06 24 */	sth r0, 0x624(r30)
lbl_8052CF78:
/* 8052CF78  38 00 00 05 */	li r0, 5
/* 8052CF7C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052CF80  48 00 03 D8 */	b lbl_8052D358
lbl_8052CF84:
/* 8052CF84  38 61 00 1C */	addi r3, r1, 0x1c
/* 8052CF88  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052CF8C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052CF90  4B D3 9B A5 */	bl __mi__4cXyzCFRC3Vec
/* 8052CF94  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8052CF98  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8052CF9C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8052CFA0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052CFA4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8052CFA8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8052CFAC  4B D3 A6 C9 */	bl cM_atan2s__Fff
/* 8052CFB0  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052CFB4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8052CFB8  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052CFBC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8052CFC0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052CFC4  EC 41 00 2A */	fadds f2, f1, f0
/* 8052CFC8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052CFCC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052CFD0  40 81 00 0C */	ble lbl_8052CFDC
/* 8052CFD4  FC 00 10 34 */	frsqrte f0, f2
/* 8052CFD8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052CFDC:
/* 8052CFDC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8052CFE0  4B D3 A6 95 */	bl cM_atan2s__Fff
/* 8052CFE4  7C 03 00 D0 */	neg r0, r3
/* 8052CFE8  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8052CFEC  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052CFF0  2C 00 00 00 */	cmpwi r0, 0
/* 8052CFF4  41 82 00 FC */	beq lbl_8052D0F0
/* 8052CFF8  38 61 00 34 */	addi r3, r1, 0x34
/* 8052CFFC  4B E1 A1 3D */	bl PSVECSquareMag
/* 8052D000  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D008  40 81 00 58 */	ble lbl_8052D060
/* 8052D00C  FC 00 08 34 */	frsqrte f0, f1
/* 8052D010  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052D014  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D018  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052D01C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D020  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D024  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D028  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D02C  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D030  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D034  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D038  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D03C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D040  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D044  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D048  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D04C  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D050  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D054  FC 21 00 32 */	fmul f1, f1, f0
/* 8052D058  FC 20 08 18 */	frsp f1, f1
/* 8052D05C  48 00 00 88 */	b lbl_8052D0E4
lbl_8052D060:
/* 8052D060  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052D064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D068  40 80 00 10 */	bge lbl_8052D078
/* 8052D06C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052D070  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052D074  48 00 00 70 */	b lbl_8052D0E4
lbl_8052D078:
/* 8052D078  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8052D07C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8052D080  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052D084  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052D088  7C 03 00 00 */	cmpw r3, r0
/* 8052D08C  41 82 00 14 */	beq lbl_8052D0A0
/* 8052D090  40 80 00 40 */	bge lbl_8052D0D0
/* 8052D094  2C 03 00 00 */	cmpwi r3, 0
/* 8052D098  41 82 00 20 */	beq lbl_8052D0B8
/* 8052D09C  48 00 00 34 */	b lbl_8052D0D0
lbl_8052D0A0:
/* 8052D0A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D0A4  41 82 00 0C */	beq lbl_8052D0B0
/* 8052D0A8  38 00 00 01 */	li r0, 1
/* 8052D0AC  48 00 00 28 */	b lbl_8052D0D4
lbl_8052D0B0:
/* 8052D0B0  38 00 00 02 */	li r0, 2
/* 8052D0B4  48 00 00 20 */	b lbl_8052D0D4
lbl_8052D0B8:
/* 8052D0B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D0BC  41 82 00 0C */	beq lbl_8052D0C8
/* 8052D0C0  38 00 00 05 */	li r0, 5
/* 8052D0C4  48 00 00 10 */	b lbl_8052D0D4
lbl_8052D0C8:
/* 8052D0C8  38 00 00 03 */	li r0, 3
/* 8052D0CC  48 00 00 08 */	b lbl_8052D0D4
lbl_8052D0D0:
/* 8052D0D0  38 00 00 04 */	li r0, 4
lbl_8052D0D4:
/* 8052D0D4  2C 00 00 01 */	cmpwi r0, 1
/* 8052D0D8  40 82 00 0C */	bne lbl_8052D0E4
/* 8052D0DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052D0E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8052D0E4:
/* 8052D0E4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052D0E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D0EC  40 80 02 6C */	bge lbl_8052D358
lbl_8052D0F0:
/* 8052D0F0  7F C3 F3 78 */	mr r3, r30
/* 8052D0F4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8052D0F8  4B FF CE 71 */	bl pl_check__FP13mg_fish_classf
/* 8052D0FC  2C 03 00 00 */	cmpwi r3, 0
/* 8052D100  40 82 00 58 */	bne lbl_8052D158
/* 8052D104  38 00 00 05 */	li r0, 5
/* 8052D108  B0 1E 05 B6 */	sth r0, 0x5b6(r30)
/* 8052D10C  38 00 00 00 */	li r0, 0
/* 8052D110  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D114  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8052D118  4B D3 A8 3D */	bl cM_rndF__Ff
/* 8052D11C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8052D120  EC 02 08 2A */	fadds f0, f2, f1
/* 8052D124  FC 00 00 1E */	fctiwz f0, f0
/* 8052D128  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052D12C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052D130  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052D134  FC 20 10 90 */	fmr f1, f2
/* 8052D138  4B D3 A8 1D */	bl cM_rndF__Ff
/* 8052D13C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8052D140  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D144  FC 00 00 1E */	fctiwz f0, f0
/* 8052D148  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052D14C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052D150  B0 1E 06 2E */	sth r0, 0x62e(r30)
/* 8052D154  48 00 02 04 */	b lbl_8052D358
lbl_8052D158:
/* 8052D158  38 00 00 00 */	li r0, 0
/* 8052D15C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D160  48 00 01 F8 */	b lbl_8052D358
lbl_8052D164:
/* 8052D164  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 8052D168  28 00 00 05 */	cmplwi r0, 5
/* 8052D16C  40 80 00 30 */	bge lbl_8052D19C
/* 8052D170  80 1E 08 FC */	lwz r0, 0x8fc(r30)
/* 8052D174  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8052D178  41 82 00 24 */	beq lbl_8052D19C
/* 8052D17C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8052D180  2C 00 00 00 */	cmpwi r0, 0
/* 8052D184  40 82 00 18 */	bne lbl_8052D19C
/* 8052D188  38 00 00 00 */	li r0, 0
/* 8052D18C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D190  38 00 00 28 */	li r0, 0x28
/* 8052D194  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8052D198  48 00 01 C0 */	b lbl_8052D358
lbl_8052D19C:
/* 8052D19C  38 61 00 10 */	addi r3, r1, 0x10
/* 8052D1A0  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052D1A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052D1A8  4B D3 99 8D */	bl __mi__4cXyzCFRC3Vec
/* 8052D1AC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8052D1B0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8052D1B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8052D1B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052D1BC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8052D1C0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8052D1C4  4B D3 A4 B1 */	bl cM_atan2s__Fff
/* 8052D1C8  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052D1CC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8052D1D0  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052D1D4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8052D1D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052D1DC  EC 41 00 2A */	fadds f2, f1, f0
/* 8052D1E0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D1E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052D1E8  40 81 00 0C */	ble lbl_8052D1F4
/* 8052D1EC  FC 00 10 34 */	frsqrte f0, f2
/* 8052D1F0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052D1F4:
/* 8052D1F4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8052D1F8  4B D3 A4 7D */	bl cM_atan2s__Fff
/* 8052D1FC  7C 03 00 D0 */	neg r0, r3
/* 8052D200  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8052D204  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052D208  2C 00 00 00 */	cmpwi r0, 0
/* 8052D20C  41 82 00 FC */	beq lbl_8052D308
/* 8052D210  38 61 00 34 */	addi r3, r1, 0x34
/* 8052D214  4B E1 9F 25 */	bl PSVECSquareMag
/* 8052D218  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D220  40 81 00 58 */	ble lbl_8052D278
/* 8052D224  FC 00 08 34 */	frsqrte f0, f1
/* 8052D228  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052D22C  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D230  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052D234  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D238  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D23C  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D240  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D244  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D248  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D24C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D250  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D254  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D258  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D25C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D260  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D264  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D268  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D26C  FC 21 00 32 */	fmul f1, f1, f0
/* 8052D270  FC 20 08 18 */	frsp f1, f1
/* 8052D274  48 00 00 88 */	b lbl_8052D2FC
lbl_8052D278:
/* 8052D278  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052D27C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D280  40 80 00 10 */	bge lbl_8052D290
/* 8052D284  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052D288  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052D28C  48 00 00 70 */	b lbl_8052D2FC
lbl_8052D290:
/* 8052D290  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052D294  80 81 00 08 */	lwz r4, 8(r1)
/* 8052D298  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052D29C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052D2A0  7C 03 00 00 */	cmpw r3, r0
/* 8052D2A4  41 82 00 14 */	beq lbl_8052D2B8
/* 8052D2A8  40 80 00 40 */	bge lbl_8052D2E8
/* 8052D2AC  2C 03 00 00 */	cmpwi r3, 0
/* 8052D2B0  41 82 00 20 */	beq lbl_8052D2D0
/* 8052D2B4  48 00 00 34 */	b lbl_8052D2E8
lbl_8052D2B8:
/* 8052D2B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D2BC  41 82 00 0C */	beq lbl_8052D2C8
/* 8052D2C0  38 00 00 01 */	li r0, 1
/* 8052D2C4  48 00 00 28 */	b lbl_8052D2EC
lbl_8052D2C8:
/* 8052D2C8  38 00 00 02 */	li r0, 2
/* 8052D2CC  48 00 00 20 */	b lbl_8052D2EC
lbl_8052D2D0:
/* 8052D2D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D2D4  41 82 00 0C */	beq lbl_8052D2E0
/* 8052D2D8  38 00 00 05 */	li r0, 5
/* 8052D2DC  48 00 00 10 */	b lbl_8052D2EC
lbl_8052D2E0:
/* 8052D2E0  38 00 00 03 */	li r0, 3
/* 8052D2E4  48 00 00 08 */	b lbl_8052D2EC
lbl_8052D2E8:
/* 8052D2E8  38 00 00 04 */	li r0, 4
lbl_8052D2EC:
/* 8052D2EC  2C 00 00 01 */	cmpwi r0, 1
/* 8052D2F0  40 82 00 0C */	bne lbl_8052D2FC
/* 8052D2F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052D2F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8052D2FC:
/* 8052D2FC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052D300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D304  40 80 00 54 */	bge lbl_8052D358
lbl_8052D308:
/* 8052D308  38 00 00 01 */	li r0, 1
/* 8052D30C  B0 1E 05 B6 */	sth r0, 0x5b6(r30)
/* 8052D310  38 00 00 02 */	li r0, 2
/* 8052D314  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D318  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8052D31C  4B D3 A6 39 */	bl cM_rndF__Ff
/* 8052D320  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8052D324  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D328  FC 00 00 1E */	fctiwz f0, f0
/* 8052D32C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052D330  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052D334  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052D338  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8052D33C  4B D3 A6 19 */	bl cM_rndF__Ff
/* 8052D340  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8052D344  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D348  FC 00 00 1E */	fctiwz f0, f0
/* 8052D34C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052D350  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052D354  B0 1E 06 2E */	sth r0, 0x62e(r30)
lbl_8052D358:
/* 8052D358  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8052D35C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8052D360  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8052D364  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 8052D368  4B D4 26 D5 */	bl cLib_addCalc2__FPffff
/* 8052D36C  38 00 08 00 */	li r0, 0x800
/* 8052D370  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8052D374  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8052D378  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8052D37C  38 A0 00 02 */	li r5, 2
/* 8052D380  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052D384  4B D4 32 85 */	bl cLib_addCalcAngleS2__FPssss
/* 8052D388  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8052D38C  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 8052D390  38 A0 00 02 */	li r5, 2
/* 8052D394  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052D398  4B D4 32 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8052D39C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8052D3A0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8052D3A4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8052D3A8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8052D3AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8052D3B0  7C 08 03 A6 */	mtlr r0
/* 8052D3B4  38 21 00 70 */	addi r1, r1, 0x70
/* 8052D3B8  4E 80 00 20 */	blr 
