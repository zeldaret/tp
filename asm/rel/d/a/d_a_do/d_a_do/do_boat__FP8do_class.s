lbl_8066BD3C:
/* 8066BD3C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8066BD40  7C 08 02 A6 */	mflr r0
/* 8066BD44  90 01 01 24 */	stw r0, 0x124(r1)
/* 8066BD48  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8066BD4C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 8066BD50  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 8066BD54  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 8066BD58  39 61 01 00 */	addi r11, r1, 0x100
/* 8066BD5C  4B CF 64 74 */	b _savegpr_26
/* 8066BD60  7C 7D 1B 78 */	mr r29, r3
/* 8066BD64  3C 60 80 67 */	lis r3, lit_3662@ha
/* 8066BD68  3B C3 ED E8 */	addi r30, r3, lit_3662@l
/* 8066BD6C  3B 80 00 01 */	li r28, 1
/* 8066BD70  38 00 00 0A */	li r0, 0xa
/* 8066BD74  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8066BD78  3C 60 80 67 */	lis r3, s_c_sub__FPvPv@ha
/* 8066BD7C  38 63 B7 74 */	addi r3, r3, s_c_sub__FPvPv@l
/* 8066BD80  7F A4 EB 78 */	mr r4, r29
/* 8066BD84  4B 9B 55 B4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8066BD88  7C 7F 1B 79 */	or. r31, r3, r3
/* 8066BD8C  40 82 00 0C */	bne lbl_8066BD98
/* 8066BD90  38 60 00 01 */	li r3, 1
/* 8066BD94  48 00 0A D8 */	b lbl_8066C86C
lbl_8066BD98:
/* 8066BD98  AB 7F 04 E6 */	lha r27, 0x4e6(r31)
/* 8066BD9C  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8066BDA0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8066BDA4  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8066BDA8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8066BDAC  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8066BDB0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8066BDB4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8066BDB8  38 63 00 24 */	addi r3, r3, 0x24
/* 8066BDBC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8066BDC0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8066BDC4  80 84 00 00 */	lwz r4, 0(r4)
/* 8066BDC8  4B CD A6 E8 */	b PSMTXCopy
/* 8066BDCC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066BDD0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8066BDD4  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 8066BDD8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066BDDC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8066BDE0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066BDE4  38 61 00 58 */	addi r3, r1, 0x58
/* 8066BDE8  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8066BDEC  4B C0 51 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066BDF0  38 61 00 40 */	addi r3, r1, 0x40
/* 8066BDF4  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8066BDF8  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8066BDFC  4B BF AD 38 */	b __mi__4cXyzCFRC3Vec
/* 8066BE00  38 61 00 40 */	addi r3, r1, 0x40
/* 8066BE04  4B CD B3 34 */	b PSVECSquareMag
/* 8066BE08  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066BE0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BE10  40 81 00 58 */	ble lbl_8066BE68
/* 8066BE14  FC 00 08 34 */	frsqrte f0, f1
/* 8066BE18  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 8066BE1C  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BE20  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 8066BE24  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BE28  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BE2C  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BE30  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BE34  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BE38  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BE3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BE40  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BE44  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BE48  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BE4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BE50  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BE54  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BE58  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BE5C  FC 21 00 32 */	fmul f1, f1, f0
/* 8066BE60  FC 20 08 18 */	frsp f1, f1
/* 8066BE64  48 00 00 88 */	b lbl_8066BEEC
lbl_8066BE68:
/* 8066BE68  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 8066BE6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BE70  40 80 00 10 */	bge lbl_8066BE80
/* 8066BE74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066BE78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8066BE7C  48 00 00 70 */	b lbl_8066BEEC
lbl_8066BE80:
/* 8066BE80  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8066BE84  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8066BE88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066BE8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8066BE90  7C 03 00 00 */	cmpw r3, r0
/* 8066BE94  41 82 00 14 */	beq lbl_8066BEA8
/* 8066BE98  40 80 00 40 */	bge lbl_8066BED8
/* 8066BE9C  2C 03 00 00 */	cmpwi r3, 0
/* 8066BEA0  41 82 00 20 */	beq lbl_8066BEC0
/* 8066BEA4  48 00 00 34 */	b lbl_8066BED8
lbl_8066BEA8:
/* 8066BEA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066BEAC  41 82 00 0C */	beq lbl_8066BEB8
/* 8066BEB0  38 00 00 01 */	li r0, 1
/* 8066BEB4  48 00 00 28 */	b lbl_8066BEDC
lbl_8066BEB8:
/* 8066BEB8  38 00 00 02 */	li r0, 2
/* 8066BEBC  48 00 00 20 */	b lbl_8066BEDC
lbl_8066BEC0:
/* 8066BEC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066BEC4  41 82 00 0C */	beq lbl_8066BED0
/* 8066BEC8  38 00 00 05 */	li r0, 5
/* 8066BECC  48 00 00 10 */	b lbl_8066BEDC
lbl_8066BED0:
/* 8066BED0  38 00 00 03 */	li r0, 3
/* 8066BED4  48 00 00 08 */	b lbl_8066BEDC
lbl_8066BED8:
/* 8066BED8  38 00 00 04 */	li r0, 4
lbl_8066BEDC:
/* 8066BEDC  2C 00 00 01 */	cmpwi r0, 1
/* 8066BEE0  40 82 00 0C */	bne lbl_8066BEEC
/* 8066BEE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066BEE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8066BEEC:
/* 8066BEEC  FF E0 08 90 */	fmr f31, f1
/* 8066BEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066BEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066BEF8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8066BEFC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066BF00  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8066BF04  7D 89 03 A6 */	mtctr r12
/* 8066BF08  4E 80 04 21 */	bctrl 
/* 8066BF0C  28 03 00 00 */	cmplwi r3, 0
/* 8066BF10  40 82 00 14 */	bne lbl_8066BF24
/* 8066BF14  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 8066BF18  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8066BF1C  41 82 00 08 */	beq lbl_8066BF24
/* 8066BF20  C3 FE 00 44 */	lfs f31, 0x44(r30)
lbl_8066BF24:
/* 8066BF24  3B 40 00 00 */	li r26, 0
/* 8066BF28  A8 1D 05 F6 */	lha r0, 0x5f6(r29)
/* 8066BF2C  28 00 00 07 */	cmplwi r0, 7
/* 8066BF30  41 81 07 7C */	bgt lbl_8066C6AC
/* 8066BF34  3C 60 80 67 */	lis r3, lit_5348@ha
/* 8066BF38  38 63 F0 C4 */	addi r3, r3, lit_5348@l
/* 8066BF3C  54 00 10 3A */	slwi r0, r0, 2
/* 8066BF40  7C 03 00 2E */	lwzx r0, r3, r0
/* 8066BF44  7C 09 03 A6 */	mtctr r0
/* 8066BF48  4E 80 04 20 */	bctr 
lbl_8066BF4C:
/* 8066BF4C  7F A3 EB 78 */	mr r3, r29
/* 8066BF50  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8066BF54  4B FF C3 11 */	bl daDo_other_bg_check2__FP8do_classP4cXyz
/* 8066BF58  2C 03 00 00 */	cmpwi r3, 0
/* 8066BF5C  41 82 00 28 */	beq lbl_8066BF84
/* 8066BF60  38 00 00 15 */	li r0, 0x15
/* 8066BF64  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 8066BF68  38 00 00 00 */	li r0, 0
/* 8066BF6C  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066BF70  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066BF74  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8066BF78  38 00 00 32 */	li r0, 0x32
/* 8066BF7C  B0 1D 06 00 */	sth r0, 0x600(r29)
/* 8066BF80  48 00 07 2C */	b lbl_8066C6AC
lbl_8066BF84:
/* 8066BF84  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8066BF88  2C 00 00 02 */	cmpwi r0, 2
/* 8066BF8C  40 82 00 1C */	bne lbl_8066BFA8
/* 8066BF90  7F A3 EB 78 */	mr r3, r29
/* 8066BF94  38 80 00 0E */	li r4, 0xe
/* 8066BF98  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8066BF9C  38 A0 00 00 */	li r5, 0
/* 8066BFA0  FC 40 08 90 */	fmr f2, f1
/* 8066BFA4  4B FF BE 05 */	bl anm_init__FP8do_classifUcf
lbl_8066BFA8:
/* 8066BFA8  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8066BFAC  2C 00 00 00 */	cmpwi r0, 0
/* 8066BFB0  40 82 06 FC */	bne lbl_8066C6AC
/* 8066BFB4  A8 7D 05 F6 */	lha r3, 0x5f6(r29)
/* 8066BFB8  38 03 00 01 */	addi r0, r3, 1
/* 8066BFBC  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066BFC0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8066BFC4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8066BFC8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066BFCC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8066BFD0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050024@ha */
/* 8066BFD4  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00050024@l */
/* 8066BFD8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8066BFDC  38 7D 0B E4 */	addi r3, r29, 0xbe4
/* 8066BFE0  38 81 00 18 */	addi r4, r1, 0x18
/* 8066BFE4  38 A0 00 00 */	li r5, 0
/* 8066BFE8  38 C0 FF FF */	li r6, -1
/* 8066BFEC  81 9D 0B F4 */	lwz r12, 0xbf4(r29)
/* 8066BFF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8066BFF4  7D 89 03 A6 */	mtctr r12
/* 8066BFF8  4E 80 04 21 */	bctrl 
/* 8066BFFC  38 00 00 07 */	li r0, 7
/* 8066C000  B0 1D 05 FE */	sth r0, 0x5fe(r29)
lbl_8066C004:
/* 8066C004  A8 1D 05 FE */	lha r0, 0x5fe(r29)
/* 8066C008  2C 00 00 00 */	cmpwi r0, 0
/* 8066C00C  41 82 00 08 */	beq lbl_8066C014
/* 8066C010  3B 80 00 00 */	li r28, 0
lbl_8066C014:
/* 8066C014  38 61 00 34 */	addi r3, r1, 0x34
/* 8066C018  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8066C01C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8066C020  4B BF AB 14 */	b __mi__4cXyzCFRC3Vec
/* 8066C024  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8066C028  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8066C02C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8066C030  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066C034  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8066C038  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066C03C  38 61 00 58 */	addi r3, r1, 0x58
/* 8066C040  4B CD B0 F8 */	b PSVECSquareMag
/* 8066C044  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066C04C  40 81 00 58 */	ble lbl_8066C0A4
/* 8066C050  FC 00 08 34 */	frsqrte f0, f1
/* 8066C054  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 8066C058  FC 44 00 32 */	fmul f2, f4, f0
/* 8066C05C  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 8066C060  FC 00 00 32 */	fmul f0, f0, f0
/* 8066C064  FC 01 00 32 */	fmul f0, f1, f0
/* 8066C068  FC 03 00 28 */	fsub f0, f3, f0
/* 8066C06C  FC 02 00 32 */	fmul f0, f2, f0
/* 8066C070  FC 44 00 32 */	fmul f2, f4, f0
/* 8066C074  FC 00 00 32 */	fmul f0, f0, f0
/* 8066C078  FC 01 00 32 */	fmul f0, f1, f0
/* 8066C07C  FC 03 00 28 */	fsub f0, f3, f0
/* 8066C080  FC 02 00 32 */	fmul f0, f2, f0
/* 8066C084  FC 44 00 32 */	fmul f2, f4, f0
/* 8066C088  FC 00 00 32 */	fmul f0, f0, f0
/* 8066C08C  FC 01 00 32 */	fmul f0, f1, f0
/* 8066C090  FC 03 00 28 */	fsub f0, f3, f0
/* 8066C094  FC 02 00 32 */	fmul f0, f2, f0
/* 8066C098  FF C1 00 32 */	fmul f30, f1, f0
/* 8066C09C  FF C0 F0 18 */	frsp f30, f30
/* 8066C0A0  48 00 00 90 */	b lbl_8066C130
lbl_8066C0A4:
/* 8066C0A4  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 8066C0A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066C0AC  40 80 00 10 */	bge lbl_8066C0BC
/* 8066C0B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066C0B4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8066C0B8  48 00 00 78 */	b lbl_8066C130
lbl_8066C0BC:
/* 8066C0BC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8066C0C0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8066C0C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066C0C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8066C0CC  7C 03 00 00 */	cmpw r3, r0
/* 8066C0D0  41 82 00 14 */	beq lbl_8066C0E4
/* 8066C0D4  40 80 00 40 */	bge lbl_8066C114
/* 8066C0D8  2C 03 00 00 */	cmpwi r3, 0
/* 8066C0DC  41 82 00 20 */	beq lbl_8066C0FC
/* 8066C0E0  48 00 00 34 */	b lbl_8066C114
lbl_8066C0E4:
/* 8066C0E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066C0E8  41 82 00 0C */	beq lbl_8066C0F4
/* 8066C0EC  38 00 00 01 */	li r0, 1
/* 8066C0F0  48 00 00 28 */	b lbl_8066C118
lbl_8066C0F4:
/* 8066C0F4  38 00 00 02 */	li r0, 2
/* 8066C0F8  48 00 00 20 */	b lbl_8066C118
lbl_8066C0FC:
/* 8066C0FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066C100  41 82 00 0C */	beq lbl_8066C10C
/* 8066C104  38 00 00 05 */	li r0, 5
/* 8066C108  48 00 00 10 */	b lbl_8066C118
lbl_8066C10C:
/* 8066C10C  38 00 00 03 */	li r0, 3
/* 8066C110  48 00 00 08 */	b lbl_8066C118
lbl_8066C114:
/* 8066C114  38 00 00 04 */	li r0, 4
lbl_8066C118:
/* 8066C118  2C 00 00 01 */	cmpwi r0, 1
/* 8066C11C  40 82 00 10 */	bne lbl_8066C12C
/* 8066C120  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066C124  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8066C128  48 00 00 08 */	b lbl_8066C130
lbl_8066C12C:
/* 8066C12C  FF C0 08 90 */	fmr f30, f1
lbl_8066C130:
/* 8066C130  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8066C134  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 8066C138  4B BF B5 3C */	b cM_atan2s__Fff
/* 8066C13C  7C 64 1B 78 */	mr r4, r3
/* 8066C140  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066C144  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066C148  80 63 00 00 */	lwz r3, 0(r3)
/* 8066C14C  4B 9A 02 90 */	b mDoMtx_YrotS__FPA4_fs
/* 8066C150  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C154  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8066C158  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066C15C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 8066C160  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 8066C164  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8066C168  EC 01 00 2A */	fadds f0, f1, f0
/* 8066C16C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066C170  38 61 00 58 */	addi r3, r1, 0x58
/* 8066C174  38 9D 06 98 */	addi r4, r29, 0x698
/* 8066C178  4B C0 4D 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066C17C  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 8066C180  FC 00 02 10 */	fabs f0, f0
/* 8066C184  FC 60 00 18 */	frsp f3, f0
/* 8066C188  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8066C18C  C0 3D 06 8C */	lfs f1, 0x68c(r29)
/* 8066C190  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066C194  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8066C198  EC 60 18 2A */	fadds f3, f0, f3
/* 8066C19C  4B C0 38 A0 */	b cLib_addCalc2__FPffff
/* 8066C1A0  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 8066C1A4  FC 00 02 10 */	fabs f0, f0
/* 8066C1A8  FC 60 00 18 */	frsp f3, f0
/* 8066C1AC  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8066C1B0  C0 3D 06 94 */	lfs f1, 0x694(r29)
/* 8066C1B4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066C1B8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8066C1BC  EC 60 18 2A */	fadds f3, f0, f3
/* 8066C1C0  4B C0 38 7C */	b cLib_addCalc2__FPffff
/* 8066C1C4  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8066C1C8  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 8066C1CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066C1D0  4C 40 13 82 */	cror 2, 0, 2
/* 8066C1D4  40 82 00 08 */	bne lbl_8066C1DC
/* 8066C1D8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8066C1DC:
/* 8066C1DC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066C1E0  C0 3D 06 90 */	lfs f1, 0x690(r29)
/* 8066C1E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8066C1E8  4C 40 13 82 */	cror 2, 0, 2
/* 8066C1EC  40 82 00 10 */	bne lbl_8066C1FC
/* 8066C1F0  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 8066C1F4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C1F8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8066C1FC:
/* 8066C1FC  38 61 00 28 */	addi r3, r1, 0x28
/* 8066C200  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8066C204  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8066C208  4B BF A9 2C */	b __mi__4cXyzCFRC3Vec
/* 8066C20C  38 61 00 28 */	addi r3, r1, 0x28
/* 8066C210  4B CD AF 28 */	b PSVECSquareMag
/* 8066C214  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066C21C  40 81 00 58 */	ble lbl_8066C274
/* 8066C220  FC 00 08 34 */	frsqrte f0, f1
/* 8066C224  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 8066C228  FC 44 00 32 */	fmul f2, f4, f0
/* 8066C22C  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 8066C230  FC 00 00 32 */	fmul f0, f0, f0
/* 8066C234  FC 01 00 32 */	fmul f0, f1, f0
/* 8066C238  FC 03 00 28 */	fsub f0, f3, f0
/* 8066C23C  FC 02 00 32 */	fmul f0, f2, f0
/* 8066C240  FC 44 00 32 */	fmul f2, f4, f0
/* 8066C244  FC 00 00 32 */	fmul f0, f0, f0
/* 8066C248  FC 01 00 32 */	fmul f0, f1, f0
/* 8066C24C  FC 03 00 28 */	fsub f0, f3, f0
/* 8066C250  FC 02 00 32 */	fmul f0, f2, f0
/* 8066C254  FC 44 00 32 */	fmul f2, f4, f0
/* 8066C258  FC 00 00 32 */	fmul f0, f0, f0
/* 8066C25C  FC 01 00 32 */	fmul f0, f1, f0
/* 8066C260  FC 03 00 28 */	fsub f0, f3, f0
/* 8066C264  FC 02 00 32 */	fmul f0, f2, f0
/* 8066C268  FC 21 00 32 */	fmul f1, f1, f0
/* 8066C26C  FC 20 08 18 */	frsp f1, f1
/* 8066C270  48 00 00 88 */	b lbl_8066C2F8
lbl_8066C274:
/* 8066C274  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 8066C278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066C27C  40 80 00 10 */	bge lbl_8066C28C
/* 8066C280  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066C284  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8066C288  48 00 00 70 */	b lbl_8066C2F8
lbl_8066C28C:
/* 8066C28C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8066C290  80 81 00 08 */	lwz r4, 8(r1)
/* 8066C294  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066C298  3C 00 7F 80 */	lis r0, 0x7f80
/* 8066C29C  7C 03 00 00 */	cmpw r3, r0
/* 8066C2A0  41 82 00 14 */	beq lbl_8066C2B4
/* 8066C2A4  40 80 00 40 */	bge lbl_8066C2E4
/* 8066C2A8  2C 03 00 00 */	cmpwi r3, 0
/* 8066C2AC  41 82 00 20 */	beq lbl_8066C2CC
/* 8066C2B0  48 00 00 34 */	b lbl_8066C2E4
lbl_8066C2B4:
/* 8066C2B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066C2B8  41 82 00 0C */	beq lbl_8066C2C4
/* 8066C2BC  38 00 00 01 */	li r0, 1
/* 8066C2C0  48 00 00 28 */	b lbl_8066C2E8
lbl_8066C2C4:
/* 8066C2C4  38 00 00 02 */	li r0, 2
/* 8066C2C8  48 00 00 20 */	b lbl_8066C2E8
lbl_8066C2CC:
/* 8066C2CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066C2D0  41 82 00 0C */	beq lbl_8066C2DC
/* 8066C2D4  38 00 00 05 */	li r0, 5
/* 8066C2D8  48 00 00 10 */	b lbl_8066C2E8
lbl_8066C2DC:
/* 8066C2DC  38 00 00 03 */	li r0, 3
/* 8066C2E0  48 00 00 08 */	b lbl_8066C2E8
lbl_8066C2E4:
/* 8066C2E4  38 00 00 04 */	li r0, 4
lbl_8066C2E8:
/* 8066C2E8  2C 00 00 01 */	cmpwi r0, 1
/* 8066C2EC  40 82 00 0C */	bne lbl_8066C2F8
/* 8066C2F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066C2F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8066C2F8:
/* 8066C2F8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8066C2FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066C300  4C 40 13 82 */	cror 2, 0, 2
/* 8066C304  40 82 03 A8 */	bne lbl_8066C6AC
/* 8066C308  38 00 00 02 */	li r0, 2
/* 8066C30C  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066C310  7F A3 EB 78 */	mr r3, r29
/* 8066C314  38 80 00 12 */	li r4, 0x12
/* 8066C318  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066C31C  38 A0 00 02 */	li r5, 2
/* 8066C320  FC 40 08 90 */	fmr f2, f1
/* 8066C324  4B FF BA 85 */	bl anm_init__FP8do_classifUcf
lbl_8066C328:
/* 8066C328  3B 80 00 00 */	li r28, 0
/* 8066C32C  38 00 00 01 */	li r0, 1
/* 8066C330  98 1D 06 16 */	stb r0, 0x616(r29)
/* 8066C334  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C338  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8066C33C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8066C340  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8066C344  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8066C348  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8066C34C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8066C350  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8066C354  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8066C358  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8066C35C  A8 9D 05 CC */	lha r4, 0x5cc(r29)
/* 8066C360  38 A0 00 02 */	li r5, 2
/* 8066C364  38 C0 08 00 */	li r6, 0x800
/* 8066C368  4B C0 42 A0 */	b cLib_addCalcAngleS2__FPssss
/* 8066C36C  38 00 0A 8C */	li r0, 0xa8c
/* 8066C370  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8066C374  80 1D 05 E4 */	lwz r0, 0x5e4(r29)
/* 8066C378  2C 00 00 12 */	cmpwi r0, 0x12
/* 8066C37C  40 82 00 40 */	bne lbl_8066C3BC
/* 8066C380  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8066C384  A8 1D 05 CC */	lha r0, 0x5cc(r29)
/* 8066C388  7C 03 00 50 */	subf r0, r3, r0
/* 8066C38C  7C 00 07 34 */	extsh r0, r0
/* 8066C390  2C 00 08 00 */	cmpwi r0, 0x800
/* 8066C394  40 80 03 18 */	bge lbl_8066C6AC
/* 8066C398  2C 00 F8 00 */	cmpwi r0, -2048
/* 8066C39C  40 81 03 10 */	ble lbl_8066C6AC
/* 8066C3A0  7F A3 EB 78 */	mr r3, r29
/* 8066C3A4  38 80 00 0D */	li r4, 0xd
/* 8066C3A8  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066C3AC  38 A0 00 02 */	li r5, 2
/* 8066C3B0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066C3B4  4B FF B9 F5 */	bl anm_init__FP8do_classifUcf
/* 8066C3B8  48 00 02 F4 */	b lbl_8066C6AC
lbl_8066C3BC:
/* 8066C3BC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8066C3C0  40 82 02 EC */	bne lbl_8066C6AC
/* 8066C3C4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066C3C8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8066C3CC  40 81 02 E0 */	ble lbl_8066C6AC
/* 8066C3D0  38 00 00 03 */	li r0, 3
/* 8066C3D4  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066C3D8  7F A3 EB 78 */	mr r3, r29
/* 8066C3DC  38 80 00 12 */	li r4, 0x12
/* 8066C3E0  38 A0 00 02 */	li r5, 2
/* 8066C3E4  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8066C3E8  4B FF B9 C1 */	bl anm_init__FP8do_classifUcf
/* 8066C3EC  48 00 02 C0 */	b lbl_8066C6AC
lbl_8066C3F0:
/* 8066C3F0  3B 80 00 00 */	li r28, 0
/* 8066C3F4  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8066C3F8  2C 00 00 00 */	cmpwi r0, 0
/* 8066C3FC  40 82 00 7C */	bne lbl_8066C478
/* 8066C400  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8066C404  4B BF B5 50 */	b cM_rndF__Ff
/* 8066C408  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8066C40C  EC 00 08 2A */	fadds f0, f0, f1
/* 8066C410  FC 00 00 1E */	fctiwz f0, f0
/* 8066C414  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 8066C418  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8066C41C  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8066C420  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066C424  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066C428  80 63 00 00 */	lwz r3, 0(r3)
/* 8066C42C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8066C430  4B 99 FF AC */	b mDoMtx_YrotS__FPA4_fs
/* 8066C434  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8066C438  4B BF B5 54 */	b cM_rndFX__Ff
/* 8066C43C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8066C440  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8066C444  4B BF B5 10 */	b cM_rndF__Ff
/* 8066C448  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8066C44C  EC 00 08 2A */	fadds f0, f0, f1
/* 8066C450  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066C454  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8066C458  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066C45C  38 61 00 58 */	addi r3, r1, 0x58
/* 8066C460  38 9D 06 18 */	addi r4, r29, 0x618
/* 8066C464  4B C0 4A 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066C468  38 7D 06 18 */	addi r3, r29, 0x618
/* 8066C46C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8066C470  7C 65 1B 78 */	mr r5, r3
/* 8066C474  4B CD AC 1C */	b PSVECAdd
lbl_8066C478:
/* 8066C478  38 00 00 02 */	li r0, 2
/* 8066C47C  B0 1D 06 24 */	sth r0, 0x624(r29)
/* 8066C480  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C484  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8066C488  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8066C48C  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8066C490  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8066C494  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8066C498  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8066C49C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8066C4A0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8066C4A4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8066C4A8  7F 64 DB 78 */	mr r4, r27
/* 8066C4AC  38 A0 00 02 */	li r5, 2
/* 8066C4B0  38 C0 08 00 */	li r6, 0x800
/* 8066C4B4  4B C0 41 54 */	b cLib_addCalcAngleS2__FPssss
/* 8066C4B8  38 00 F5 74 */	li r0, -2700
/* 8066C4BC  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8066C4C0  80 1D 05 E4 */	lwz r0, 0x5e4(r29)
/* 8066C4C4  2C 00 00 12 */	cmpwi r0, 0x12
/* 8066C4C8  40 82 00 3C */	bne lbl_8066C504
/* 8066C4CC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8066C4D0  7C 00 D8 50 */	subf r0, r0, r27
/* 8066C4D4  7C 00 07 34 */	extsh r0, r0
/* 8066C4D8  2C 00 08 00 */	cmpwi r0, 0x800
/* 8066C4DC  40 80 01 D0 */	bge lbl_8066C6AC
/* 8066C4E0  2C 00 F8 00 */	cmpwi r0, -2048
/* 8066C4E4  40 81 01 C8 */	ble lbl_8066C6AC
/* 8066C4E8  7F A3 EB 78 */	mr r3, r29
/* 8066C4EC  38 80 00 15 */	li r4, 0x15
/* 8066C4F0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066C4F4  38 A0 00 02 */	li r5, 2
/* 8066C4F8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066C4FC  4B FF B8 AD */	bl anm_init__FP8do_classifUcf
/* 8066C500  48 00 01 AC */	b lbl_8066C6AC
lbl_8066C504:
/* 8066C504  2C 00 00 15 */	cmpwi r0, 0x15
/* 8066C508  40 82 01 A4 */	bne lbl_8066C6AC
/* 8066C50C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8066C510  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8066C514  40 80 01 98 */	bge lbl_8066C6AC
/* 8066C518  3B 40 00 01 */	li r26, 1
/* 8066C51C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8066C520  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8066C524  40 80 01 88 */	bge lbl_8066C6AC
/* 8066C528  38 00 00 02 */	li r0, 2
/* 8066C52C  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066C530  7F A3 EB 78 */	mr r3, r29
/* 8066C534  38 80 00 12 */	li r4, 0x12
/* 8066C538  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066C53C  38 A0 00 02 */	li r5, 2
/* 8066C540  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8066C544  4B FF B8 65 */	bl anm_init__FP8do_classifUcf
/* 8066C548  48 00 01 64 */	b lbl_8066C6AC
lbl_8066C54C:
/* 8066C54C  7F A3 EB 78 */	mr r3, r29
/* 8066C550  38 80 00 0A */	li r4, 0xa
/* 8066C554  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 8066C558  38 A0 00 00 */	li r5, 0
/* 8066C55C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066C560  4B FF B8 49 */	bl anm_init__FP8do_classifUcf
/* 8066C564  38 00 00 14 */	li r0, 0x14
/* 8066C568  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8066C56C  A8 7D 05 F6 */	lha r3, 0x5f6(r29)
/* 8066C570  38 03 00 01 */	addi r0, r3, 1
/* 8066C574  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
lbl_8066C578:
/* 8066C578  3B 80 00 00 */	li r28, 0
/* 8066C57C  C0 1D 05 B8 */	lfs f0, 0x5b8(r29)
/* 8066C580  D0 1D 06 18 */	stfs f0, 0x618(r29)
/* 8066C584  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 8066C588  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 8066C58C  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 8066C590  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 8066C594  38 00 00 02 */	li r0, 2
/* 8066C598  B0 1D 06 24 */	sth r0, 0x624(r29)
/* 8066C59C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C5A0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8066C5A4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8066C5A8  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8066C5AC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8066C5B0  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8066C5B4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8066C5B8  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8066C5BC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8066C5C0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8066C5C4  38 9D 05 B8 */	addi r4, r29, 0x5b8
/* 8066C5C8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8066C5CC  4B BF A5 68 */	b __mi__4cXyzCFRC3Vec
/* 8066C5D0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8066C5D4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8066C5D8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8066C5DC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066C5E0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8066C5E4  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8066C5E8  4B BF B0 8C */	b cM_atan2s__Fff
/* 8066C5EC  7C 64 1B 78 */	mr r4, r3
/* 8066C5F0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8066C5F4  38 A0 00 02 */	li r5, 2
/* 8066C5F8  38 C0 08 00 */	li r6, 0x800
/* 8066C5FC  4B C0 40 0C */	b cLib_addCalcAngleS2__FPssss
/* 8066C600  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8066C604  2C 00 00 02 */	cmpwi r0, 2
/* 8066C608  40 82 00 1C */	bne lbl_8066C624
/* 8066C60C  7F A3 EB 78 */	mr r3, r29
/* 8066C610  38 80 00 0E */	li r4, 0xe
/* 8066C614  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8066C618  38 A0 00 00 */	li r5, 0
/* 8066C61C  FC 40 08 90 */	fmr f2, f1
/* 8066C620  4B FF B7 89 */	bl anm_init__FP8do_classifUcf
lbl_8066C624:
/* 8066C624  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8066C628  2C 00 00 00 */	cmpwi r0, 0
/* 8066C62C  40 82 00 80 */	bne lbl_8066C6AC
/* 8066C630  A8 7D 05 F6 */	lha r3, 0x5f6(r29)
/* 8066C634  38 03 00 01 */	addi r0, r3, 1
/* 8066C638  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066C63C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8066C640  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8066C644  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8066C648  38 00 00 00 */	li r0, 0
/* 8066C64C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8066C650  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050024@ha */
/* 8066C654  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00050024@l */
/* 8066C658  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066C65C  38 7D 0B E4 */	addi r3, r29, 0xbe4
/* 8066C660  38 81 00 14 */	addi r4, r1, 0x14
/* 8066C664  38 A0 00 00 */	li r5, 0
/* 8066C668  38 C0 FF FF */	li r6, -1
/* 8066C66C  81 9D 0B F4 */	lwz r12, 0xbf4(r29)
/* 8066C670  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8066C674  7D 89 03 A6 */	mtctr r12
/* 8066C678  4E 80 04 21 */	bctrl 
/* 8066C67C  48 00 00 30 */	b lbl_8066C6AC
lbl_8066C680:
/* 8066C680  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 8066C684  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8066C688  41 82 00 24 */	beq lbl_8066C6AC
/* 8066C68C  38 00 00 15 */	li r0, 0x15
/* 8066C690  B0 1D 05 F2 */	sth r0, 0x5f2(r29)
/* 8066C694  38 00 00 00 */	li r0, 0
/* 8066C698  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
/* 8066C69C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C6A0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8066C6A4  38 00 00 64 */	li r0, 0x64
/* 8066C6A8  B0 1D 06 00 */	sth r0, 0x600(r29)
lbl_8066C6AC:
/* 8066C6AC  7F 40 07 75 */	extsb. r0, r26
/* 8066C6B0  41 82 01 B8 */	beq lbl_8066C868
/* 8066C6B4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8066C6B8  D0 1D 0C 84 */	stfs f0, 0xc84(r29)
/* 8066C6BC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066C6C0  D0 1D 0C 88 */	stfs f0, 0xc88(r29)
/* 8066C6C4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8066C6C8  D0 1D 0C 8C */	stfs f0, 0xc8c(r29)
/* 8066C6CC  C0 3D 0C 88 */	lfs f1, 0xc88(r29)
/* 8066C6D0  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 8066C6D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8066C6D8  D0 1D 0C 88 */	stfs f0, 0xc88(r29)
/* 8066C6DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066C6E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066C6E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8066C6E8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8066C6EC  4B 99 FC F0 */	b mDoMtx_YrotS__FPA4_fs
/* 8066C6F0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C6F4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8066C6F8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066C6FC  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8066C700  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066C704  38 61 00 58 */	addi r3, r1, 0x58
/* 8066C708  38 9D 0C 90 */	addi r4, r29, 0xc90
/* 8066C70C  4B C0 47 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066C710  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 8066C714  38 9D 0C 84 */	addi r4, r29, 0xc84
/* 8066C718  7C 65 1B 78 */	mr r5, r3
/* 8066C71C  4B CD A9 74 */	b PSVECAdd
/* 8066C720  C0 1D 0C 90 */	lfs f0, 0xc90(r29)
/* 8066C724  D0 1D 0C 9C */	stfs f0, 0xc9c(r29)
/* 8066C728  C0 1D 0C 94 */	lfs f0, 0xc94(r29)
/* 8066C72C  D0 1D 0C A0 */	stfs f0, 0xca0(r29)
/* 8066C730  C0 1D 0C 98 */	lfs f0, 0xc98(r29)
/* 8066C734  D0 1D 0C A4 */	stfs f0, 0xca4(r29)
/* 8066C738  C0 3D 0C A0 */	lfs f1, 0xca0(r29)
/* 8066C73C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8066C740  EC 01 00 2A */	fadds f0, f1, f0
/* 8066C744  D0 1D 0C A0 */	stfs f0, 0xca0(r29)
/* 8066C748  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066C74C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8066C750  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8066C754  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 8066C758  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8066C75C  38 61 00 58 */	addi r3, r1, 0x58
/* 8066C760  38 9D 0C A8 */	addi r4, r29, 0xca8
/* 8066C764  4B C0 47 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066C768  38 7D 0C A8 */	addi r3, r29, 0xca8
/* 8066C76C  38 9D 0C 84 */	addi r4, r29, 0xc84
/* 8066C770  7C 65 1B 78 */	mr r5, r3
/* 8066C774  4B CD A9 1C */	b PSVECAdd
/* 8066C778  C0 1D 0C A8 */	lfs f0, 0xca8(r29)
/* 8066C77C  D0 1D 0C B4 */	stfs f0, 0xcb4(r29)
/* 8066C780  C0 1D 0C AC */	lfs f0, 0xcac(r29)
/* 8066C784  D0 1D 0C B8 */	stfs f0, 0xcb8(r29)
/* 8066C788  C0 1D 0C B0 */	lfs f0, 0xcb0(r29)
/* 8066C78C  D0 1D 0C BC */	stfs f0, 0xcbc(r29)
/* 8066C790  C0 3D 0C B8 */	lfs f1, 0xcb8(r29)
/* 8066C794  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8066C798  EC 01 00 2A */	fadds f0, f1, f0
/* 8066C79C  D0 1D 0C B8 */	stfs f0, 0xcb8(r29)
/* 8066C7A0  38 61 00 64 */	addi r3, r1, 0x64
/* 8066C7A4  4B A0 B4 C4 */	b __ct__11dBgS_LinChkFv
/* 8066C7A8  38 61 00 64 */	addi r3, r1, 0x64
/* 8066C7AC  38 9D 0C 84 */	addi r4, r29, 0xc84
/* 8066C7B0  38 BD 0C 90 */	addi r5, r29, 0xc90
/* 8066C7B4  7F A6 EB 78 */	mr r6, r29
/* 8066C7B8  4B A0 B5 AC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8066C7BC  38 00 00 01 */	li r0, 1
/* 8066C7C0  98 1D 0C 80 */	stb r0, 0xc80(r29)
/* 8066C7C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066C7C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066C7CC  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 8066C7D0  7F 43 D3 78 */	mr r3, r26
/* 8066C7D4  38 81 00 64 */	addi r4, r1, 0x64
/* 8066C7D8  4B A0 7B DC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8066C7DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066C7E0  40 82 00 7C */	bne lbl_8066C85C
/* 8066C7E4  38 61 00 64 */	addi r3, r1, 0x64
/* 8066C7E8  38 9D 0C A8 */	addi r4, r29, 0xca8
/* 8066C7EC  38 BD 0C B4 */	addi r5, r29, 0xcb4
/* 8066C7F0  7F A6 EB 78 */	mr r6, r29
/* 8066C7F4  4B A0 B5 70 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8066C7F8  7F 43 D3 78 */	mr r3, r26
/* 8066C7FC  38 81 00 64 */	addi r4, r1, 0x64
/* 8066C800  4B A0 7B B4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8066C804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066C808  41 82 00 54 */	beq lbl_8066C85C
/* 8066C80C  38 61 00 64 */	addi r3, r1, 0x64
/* 8066C810  38 9D 0C 90 */	addi r4, r29, 0xc90
/* 8066C814  38 BD 0C 9C */	addi r5, r29, 0xc9c
/* 8066C818  7F A6 EB 78 */	mr r6, r29
/* 8066C81C  4B A0 B5 48 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8066C820  7F 43 D3 78 */	mr r3, r26
/* 8066C824  38 81 00 64 */	addi r4, r1, 0x64
/* 8066C828  4B A0 7B 8C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8066C82C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066C830  41 82 00 2C */	beq lbl_8066C85C
/* 8066C834  38 00 00 00 */	li r0, 0
/* 8066C838  98 1D 0C 80 */	stb r0, 0xc80(r29)
/* 8066C83C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8066C840  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 8066C844  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8066C848  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 8066C84C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8066C850  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 8066C854  38 00 00 05 */	li r0, 5
/* 8066C858  B0 1D 05 F6 */	sth r0, 0x5f6(r29)
lbl_8066C85C:
/* 8066C85C  38 61 00 64 */	addi r3, r1, 0x64
/* 8066C860  38 80 FF FF */	li r4, -1
/* 8066C864  4B A0 B4 78 */	b __dt__11dBgS_LinChkFv
lbl_8066C868:
/* 8066C868  7F 83 E3 78 */	mr r3, r28
lbl_8066C86C:
/* 8066C86C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 8066C870  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8066C874  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 8066C878  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 8066C87C  39 61 01 00 */	addi r11, r1, 0x100
/* 8066C880  4B CF 59 9C */	b _restgpr_26
/* 8066C884  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8066C888  7C 08 03 A6 */	mtlr r0
/* 8066C88C  38 21 01 20 */	addi r1, r1, 0x120
/* 8066C890  4E 80 00 20 */	blr 
