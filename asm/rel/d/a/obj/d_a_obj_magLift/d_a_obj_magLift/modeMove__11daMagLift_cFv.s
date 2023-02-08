lbl_80C8DF2C:
/* 80C8DF2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C8DF30  7C 08 02 A6 */	mflr r0
/* 80C8DF34  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C8DF38  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C8DF3C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C8DF40  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80C8DF44  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80C8DF48  7C 7E 1B 78 */	mr r30, r3
/* 80C8DF4C  3C 60 80 C9 */	lis r3, mSpeed__11daMagLift_c@ha /* 0x80C8E65C@ha */
/* 80C8DF50  3B E3 E6 5C */	addi r31, r3, mSpeed__11daMagLift_c@l /* 0x80C8E65C@l */
/* 80C8DF54  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 80C8DF58  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C8DF5C  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80C8DF60  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C8DF64  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 80C8DF68  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C8DF6C  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80C8DF70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C8DF74  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 80C8DF78  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C8DF7C  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80C8DF80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C8DF84  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C8DF88  38 81 00 34 */	addi r4, r1, 0x34
/* 80C8DF8C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80C8DF90  4B 5D 8B A5 */	bl __mi__4cXyzCFRC3Vec
/* 80C8DF94  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C8DF98  4B 6B 91 A1 */	bl PSVECSquareMag
/* 80C8DF9C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C8DFA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8DFA4  40 81 00 58 */	ble lbl_80C8DFFC
/* 80C8DFA8  FC 00 08 34 */	frsqrte f0, f1
/* 80C8DFAC  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80C8DFB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8DFB4  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80C8DFB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8DFBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8DFC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8DFC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8DFC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8DFCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8DFD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8DFD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8DFD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8DFDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8DFE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8DFE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8DFE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8DFEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8DFF0  FC 21 00 32 */	fmul f1, f1, f0
/* 80C8DFF4  FC 20 08 18 */	frsp f1, f1
/* 80C8DFF8  48 00 00 88 */	b lbl_80C8E080
lbl_80C8DFFC:
/* 80C8DFFC  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80C8E000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8E004  40 80 00 10 */	bge lbl_80C8E014
/* 80C8E008  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8E00C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C8E010  48 00 00 70 */	b lbl_80C8E080
lbl_80C8E014:
/* 80C8E014  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C8E018  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C8E01C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C8E020  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C8E024  7C 03 00 00 */	cmpw r3, r0
/* 80C8E028  41 82 00 14 */	beq lbl_80C8E03C
/* 80C8E02C  40 80 00 40 */	bge lbl_80C8E06C
/* 80C8E030  2C 03 00 00 */	cmpwi r3, 0
/* 80C8E034  41 82 00 20 */	beq lbl_80C8E054
/* 80C8E038  48 00 00 34 */	b lbl_80C8E06C
lbl_80C8E03C:
/* 80C8E03C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8E040  41 82 00 0C */	beq lbl_80C8E04C
/* 80C8E044  38 00 00 01 */	li r0, 1
/* 80C8E048  48 00 00 28 */	b lbl_80C8E070
lbl_80C8E04C:
/* 80C8E04C  38 00 00 02 */	li r0, 2
/* 80C8E050  48 00 00 20 */	b lbl_80C8E070
lbl_80C8E054:
/* 80C8E054  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8E058  41 82 00 0C */	beq lbl_80C8E064
/* 80C8E05C  38 00 00 05 */	li r0, 5
/* 80C8E060  48 00 00 10 */	b lbl_80C8E070
lbl_80C8E064:
/* 80C8E064  38 00 00 03 */	li r0, 3
/* 80C8E068  48 00 00 08 */	b lbl_80C8E070
lbl_80C8E06C:
/* 80C8E06C  38 00 00 04 */	li r0, 4
lbl_80C8E070:
/* 80C8E070  2C 00 00 01 */	cmpwi r0, 1
/* 80C8E074  40 82 00 0C */	bne lbl_80C8E080
/* 80C8E078  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8E07C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C8E080:
/* 80C8E080  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C8E084  EF E0 00 72 */	fmuls f31, f0, f1
/* 80C8E088  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C8E08C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C8E090  40 80 00 08 */	bge lbl_80C8E098
/* 80C8E094  FF E0 00 90 */	fmr f31, f0
lbl_80C8E098:
/* 80C8E098  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80C8E09C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C8E0A0  40 81 00 08 */	ble lbl_80C8E0A8
/* 80C8E0A4  FF E0 00 90 */	fmr f31, f0
lbl_80C8E0A8:
/* 80C8E0A8  38 61 00 10 */	addi r3, r1, 0x10
/* 80C8E0AC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8E0B0  38 BE 05 B4 */	addi r5, r30, 0x5b4
/* 80C8E0B4  4B 5D 8A 81 */	bl __mi__4cXyzCFRC3Vec
/* 80C8E0B8  38 61 00 10 */	addi r3, r1, 0x10
/* 80C8E0BC  4B 6B 90 7D */	bl PSVECSquareMag
/* 80C8E0C0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C8E0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8E0C8  40 81 00 58 */	ble lbl_80C8E120
/* 80C8E0CC  FC 00 08 34 */	frsqrte f0, f1
/* 80C8E0D0  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80C8E0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8E0D8  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80C8E0DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8E0E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8E0E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8E0E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8E0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8E0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8E0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8E0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8E0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8E100  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8E104  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8E108  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8E10C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8E110  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8E114  FC 21 00 32 */	fmul f1, f1, f0
/* 80C8E118  FC 20 08 18 */	frsp f1, f1
/* 80C8E11C  48 00 00 88 */	b lbl_80C8E1A4
lbl_80C8E120:
/* 80C8E120  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80C8E124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8E128  40 80 00 10 */	bge lbl_80C8E138
/* 80C8E12C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8E130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C8E134  48 00 00 70 */	b lbl_80C8E1A4
lbl_80C8E138:
/* 80C8E138  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C8E13C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C8E140  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C8E144  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C8E148  7C 03 00 00 */	cmpw r3, r0
/* 80C8E14C  41 82 00 14 */	beq lbl_80C8E160
/* 80C8E150  40 80 00 40 */	bge lbl_80C8E190
/* 80C8E154  2C 03 00 00 */	cmpwi r3, 0
/* 80C8E158  41 82 00 20 */	beq lbl_80C8E178
/* 80C8E15C  48 00 00 34 */	b lbl_80C8E190
lbl_80C8E160:
/* 80C8E160  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8E164  41 82 00 0C */	beq lbl_80C8E170
/* 80C8E168  38 00 00 01 */	li r0, 1
/* 80C8E16C  48 00 00 28 */	b lbl_80C8E194
lbl_80C8E170:
/* 80C8E170  38 00 00 02 */	li r0, 2
/* 80C8E174  48 00 00 20 */	b lbl_80C8E194
lbl_80C8E178:
/* 80C8E178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8E17C  41 82 00 0C */	beq lbl_80C8E188
/* 80C8E180  38 00 00 05 */	li r0, 5
/* 80C8E184  48 00 00 10 */	b lbl_80C8E194
lbl_80C8E188:
/* 80C8E188  38 00 00 03 */	li r0, 3
/* 80C8E18C  48 00 00 08 */	b lbl_80C8E194
lbl_80C8E190:
/* 80C8E190  38 00 00 04 */	li r0, 4
lbl_80C8E194:
/* 80C8E194  2C 00 00 01 */	cmpwi r0, 1
/* 80C8E198  40 82 00 0C */	bne lbl_80C8E1A4
/* 80C8E19C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8E1A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C8E1A4:
/* 80C8E1A4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C8E1A8  40 81 00 0C */	ble lbl_80C8E1B4
/* 80C8E1AC  7F C3 F3 78 */	mr r3, r30
/* 80C8E1B0  48 00 00 3D */	bl init_modeBrk__11daMagLift_cFv
lbl_80C8E1B4:
/* 80C8E1B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C8E1B8  38 9E 05 B4 */	addi r4, r30, 0x5b4
/* 80C8E1BC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C8E1C0  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C8E1C4  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80C8E1C8  4B 5E 18 F1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C8E1CC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C8E1D0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C8E1D4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80C8E1D8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80C8E1DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C8E1E0  7C 08 03 A6 */	mtlr r0
/* 80C8E1E4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C8E1E8  4E 80 00 20 */	blr 
