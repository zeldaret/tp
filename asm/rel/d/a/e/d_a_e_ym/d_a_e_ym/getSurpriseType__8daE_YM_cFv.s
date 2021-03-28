lbl_8080C05C:
/* 8080C05C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8080C060  7C 08 02 A6 */	mflr r0
/* 8080C064  90 01 00 34 */	stw r0, 0x34(r1)
/* 8080C068  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8080C06C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8080C070  7C 7E 1B 78 */	mr r30, r3
/* 8080C074  3C 60 80 81 */	lis r3, lit_3925@ha
/* 8080C078  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 8080C07C  38 61 00 0C */	addi r3, r1, 0xc
/* 8080C080  38 9E 06 70 */	addi r4, r30, 0x670
/* 8080C084  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8080C088  4B A5 AA AC */	b __mi__4cXyzCFRC3Vec
/* 8080C08C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8080C090  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8080C094  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8080C098  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8080C09C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8080C0A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8080C0A4  38 61 00 18 */	addi r3, r1, 0x18
/* 8080C0A8  4B B3 B0 90 */	b PSVECSquareMag
/* 8080C0AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080C0B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C0B4  40 81 00 58 */	ble lbl_8080C10C
/* 8080C0B8  FC 00 08 34 */	frsqrte f0, f1
/* 8080C0BC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080C0C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C0C4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080C0C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C0CC  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C0D0  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C0D4  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C0D8  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C0DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C0E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C0E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C0E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080C0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8080C0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8080C0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8080C0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8080C100  FC 21 00 32 */	fmul f1, f1, f0
/* 8080C104  FC 20 08 18 */	frsp f1, f1
/* 8080C108  48 00 00 88 */	b lbl_8080C190
lbl_8080C10C:
/* 8080C10C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080C110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C114  40 80 00 10 */	bge lbl_8080C124
/* 8080C118  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080C11C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080C120  48 00 00 70 */	b lbl_8080C190
lbl_8080C124:
/* 8080C124  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080C128  80 81 00 08 */	lwz r4, 8(r1)
/* 8080C12C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080C130  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080C134  7C 03 00 00 */	cmpw r3, r0
/* 8080C138  41 82 00 14 */	beq lbl_8080C14C
/* 8080C13C  40 80 00 40 */	bge lbl_8080C17C
/* 8080C140  2C 03 00 00 */	cmpwi r3, 0
/* 8080C144  41 82 00 20 */	beq lbl_8080C164
/* 8080C148  48 00 00 34 */	b lbl_8080C17C
lbl_8080C14C:
/* 8080C14C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C150  41 82 00 0C */	beq lbl_8080C15C
/* 8080C154  38 00 00 01 */	li r0, 1
/* 8080C158  48 00 00 28 */	b lbl_8080C180
lbl_8080C15C:
/* 8080C15C  38 00 00 02 */	li r0, 2
/* 8080C160  48 00 00 20 */	b lbl_8080C180
lbl_8080C164:
/* 8080C164  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080C168  41 82 00 0C */	beq lbl_8080C174
/* 8080C16C  38 00 00 05 */	li r0, 5
/* 8080C170  48 00 00 10 */	b lbl_8080C180
lbl_8080C174:
/* 8080C174  38 00 00 03 */	li r0, 3
/* 8080C178  48 00 00 08 */	b lbl_8080C180
lbl_8080C17C:
/* 8080C17C  38 00 00 04 */	li r0, 4
lbl_8080C180:
/* 8080C180  2C 00 00 01 */	cmpwi r0, 1
/* 8080C184  40 82 00 0C */	bne lbl_8080C190
/* 8080C188  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080C18C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080C190:
/* 8080C190  3C 60 80 81 */	lis r3, l_HIO@ha
/* 8080C194  38 63 5D 38 */	addi r3, r3, l_HIO@l
/* 8080C198  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8080C19C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C1A0  40 81 00 0C */	ble lbl_8080C1AC
/* 8080C1A4  3B C0 00 02 */	li r30, 2
/* 8080C1A8  48 00 00 38 */	b lbl_8080C1E0
lbl_8080C1AC:
/* 8080C1AC  A8 7E 06 EA */	lha r3, 0x6ea(r30)
/* 8080C1B0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8080C1B4  4B A6 4C 70 */	b cLib_distanceAngleS__Fss
/* 8080C1B8  7C 60 07 34 */	extsh r0, r3
/* 8080C1BC  3B C0 00 01 */	li r30, 1
/* 8080C1C0  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8080C1C4  40 80 00 1C */	bge lbl_8080C1E0
/* 8080C1C8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8080C1CC  4B A5 B7 88 */	b cM_rndF__Ff
/* 8080C1D0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8080C1D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C1D8  40 81 00 08 */	ble lbl_8080C1E0
/* 8080C1DC  3B C0 00 00 */	li r30, 0
lbl_8080C1E0:
/* 8080C1E0  7F C3 F3 78 */	mr r3, r30
/* 8080C1E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8080C1E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8080C1EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8080C1F0  7C 08 03 A6 */	mtlr r0
/* 8080C1F4  38 21 00 30 */	addi r1, r1, 0x30
/* 8080C1F8  4E 80 00 20 */	blr 
