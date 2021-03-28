lbl_8012BFA8:
/* 8012BFA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8012BFAC  7C 08 02 A6 */	mflr r0
/* 8012BFB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8012BFB4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8012BFB8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8012BFBC  7C 7F 1B 78 */	mr r31, r3
/* 8012BFC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8012BFC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8012BFC8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8012BFCC  7F C3 F3 78 */	mr r3, r30
/* 8012BFD0  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 8012BFD4  4B F4 86 8D */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8012BFD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012BFDC  41 82 00 1C */	beq lbl_8012BFF8
/* 8012BFE0  88 1F 2F A8 */	lbz r0, 0x2fa8(r31)
/* 8012BFE4  28 00 00 06 */	cmplwi r0, 6
/* 8012BFE8  41 82 00 10 */	beq lbl_8012BFF8
/* 8012BFEC  80 1F 31 74 */	lwz r0, 0x3174(r31)
/* 8012BFF0  2C 00 00 08 */	cmpwi r0, 8
/* 8012BFF4  40 82 00 0C */	bne lbl_8012C000
lbl_8012BFF8:
/* 8012BFF8  38 60 00 00 */	li r3, 0
/* 8012BFFC  48 00 01 E0 */	b lbl_8012C1DC
lbl_8012C000:
/* 8012C000  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8012C004  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8012C008  90 01 00 28 */	stw r0, 0x28(r1)
/* 8012C00C  7F C3 F3 78 */	mr r3, r30
/* 8012C010  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 8012C014  38 A1 00 18 */	addi r5, r1, 0x18
/* 8012C018  4B F4 87 2D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8012C01C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012C020  41 82 00 14 */	beq lbl_8012C034
/* 8012C024  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8012C028  48 13 C1 BD */	bl cBgW_CheckBGround__Ff
/* 8012C02C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012C030  40 82 00 18 */	bne lbl_8012C048
lbl_8012C034:
/* 8012C034  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8012C038  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8012C03C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8012C040  38 60 00 00 */	li r3, 0
/* 8012C044  48 00 01 98 */	b lbl_8012C1DC
lbl_8012C048:
/* 8012C048  88 1F 2F A8 */	lbz r0, 0x2fa8(r31)
/* 8012C04C  28 00 00 05 */	cmplwi r0, 5
/* 8012C050  40 82 00 58 */	bne lbl_8012C0A8
/* 8012C054  C0 22 94 D4 */	lfs f1, lit_18929(r2)
/* 8012C058  3C 60 80 39 */	lis r3, m__19daAlinkHIO_slide_c0@ha
/* 8012C05C  38 63 D8 CC */	addi r3, r3, m__19daAlinkHIO_slide_c0@l
/* 8012C060  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 8012C064  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012C068  FC 00 00 1E */	fctiwz f0, f0
/* 8012C06C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8012C070  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012C074  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8012C078  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8012C07C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012C080  7C 63 02 14 */	add r3, r3, r0
/* 8012C084  C0 23 00 04 */	lfs f1, 4(r3)
/* 8012C088  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8012C08C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012C090  40 80 00 18 */	bge lbl_8012C0A8
/* 8012C094  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8012C098  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8012C09C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8012C0A0  38 60 00 01 */	li r3, 1
/* 8012C0A4  48 00 01 38 */	b lbl_8012C1DC
lbl_8012C0A8:
/* 8012C0A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8012C0AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012C0B0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012C0B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8012C0B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8012C0BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8012C0C0  38 61 00 0C */	addi r3, r1, 0xc
/* 8012C0C4  48 21 B0 75 */	bl PSVECSquareMag
/* 8012C0C8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012C0CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C0D0  40 81 00 58 */	ble lbl_8012C128
/* 8012C0D4  FC 00 08 34 */	frsqrte f0, f1
/* 8012C0D8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012C0DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C0E0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012C0E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C0E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C0EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C0F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C0F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C0F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C0FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C100  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C104  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C108  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C10C  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C110  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C114  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C118  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C11C  FC 21 00 32 */	fmul f1, f1, f0
/* 8012C120  FC 20 08 18 */	frsp f1, f1
/* 8012C124  48 00 00 88 */	b lbl_8012C1AC
lbl_8012C128:
/* 8012C128  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012C12C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C130  40 80 00 10 */	bge lbl_8012C140
/* 8012C134  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8012C138  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8012C13C  48 00 00 70 */	b lbl_8012C1AC
lbl_8012C140:
/* 8012C140  D0 21 00 08 */	stfs f1, 8(r1)
/* 8012C144  80 81 00 08 */	lwz r4, 8(r1)
/* 8012C148  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012C14C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012C150  7C 03 00 00 */	cmpw r3, r0
/* 8012C154  41 82 00 14 */	beq lbl_8012C168
/* 8012C158  40 80 00 40 */	bge lbl_8012C198
/* 8012C15C  2C 03 00 00 */	cmpwi r3, 0
/* 8012C160  41 82 00 20 */	beq lbl_8012C180
/* 8012C164  48 00 00 34 */	b lbl_8012C198
lbl_8012C168:
/* 8012C168  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012C16C  41 82 00 0C */	beq lbl_8012C178
/* 8012C170  38 00 00 01 */	li r0, 1
/* 8012C174  48 00 00 28 */	b lbl_8012C19C
lbl_8012C178:
/* 8012C178  38 00 00 02 */	li r0, 2
/* 8012C17C  48 00 00 20 */	b lbl_8012C19C
lbl_8012C180:
/* 8012C180  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012C184  41 82 00 0C */	beq lbl_8012C190
/* 8012C188  38 00 00 05 */	li r0, 5
/* 8012C18C  48 00 00 10 */	b lbl_8012C19C
lbl_8012C190:
/* 8012C190  38 00 00 03 */	li r0, 3
/* 8012C194  48 00 00 08 */	b lbl_8012C19C
lbl_8012C198:
/* 8012C198  38 00 00 04 */	li r0, 4
lbl_8012C19C:
/* 8012C19C  2C 00 00 01 */	cmpwi r0, 1
/* 8012C1A0  40 82 00 0C */	bne lbl_8012C1AC
/* 8012C1A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8012C1A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8012C1AC:
/* 8012C1AC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8012C1B0  48 13 B4 C5 */	bl cM_atan2s__Fff
/* 8012C1B4  7C 64 07 34 */	extsh r4, r3
/* 8012C1B8  A8 1F 31 22 */	lha r0, 0x3122(r31)
/* 8012C1BC  7C 80 02 78 */	xor r0, r4, r0
/* 8012C1C0  7C 03 0E 70 */	srawi r3, r0, 1
/* 8012C1C4  7C 00 20 38 */	and r0, r0, r4
/* 8012C1C8  7C 00 18 50 */	subf r0, r0, r3
/* 8012C1CC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8012C1D0  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 8012C1D4  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8012C1D8  90 01 00 28 */	stw r0, 0x28(r1)
lbl_8012C1DC:
/* 8012C1DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8012C1E0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8012C1E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012C1E8  7C 08 03 A6 */	mtlr r0
/* 8012C1EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8012C1F0  4E 80 00 20 */	blr 
