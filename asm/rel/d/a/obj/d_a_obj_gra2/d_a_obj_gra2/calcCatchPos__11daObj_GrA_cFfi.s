lbl_80C0BF34:
/* 80C0BF34  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80C0BF38  7C 08 02 A6 */	mflr r0
/* 80C0BF3C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C0BF40  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80C0BF44  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80C0BF48  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80C0BF4C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80C0BF50  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C0BF54  4B 75 62 80 */	b _savegpr_27
/* 80C0BF58  7C 7C 1B 78 */	mr r28, r3
/* 80C0BF5C  FF C0 08 90 */	fmr f30, f1
/* 80C0BF60  7C 9D 23 78 */	mr r29, r4
/* 80C0BF64  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C0BF68  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l
/* 80C0BF6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0BF70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0BF74  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C0BF78  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C0BF7C  C0 1C 0A 10 */	lfs f0, 0xa10(r28)
/* 80C0BF80  EF E1 00 28 */	fsubs f31, f1, f0
/* 80C0BF84  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80C0BF88  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C0BF8C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C0BF90  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C0BF94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C0BF98  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C0BF9C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C0BFA0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C0BFA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C0BFA8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C0BFAC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C0BFB0  38 61 00 0C */	addi r3, r1, 0xc
/* 80C0BFB4  38 81 00 18 */	addi r4, r1, 0x18
/* 80C0BFB8  4B 73 B3 E4 */	b PSVECSquareDistance
/* 80C0BFBC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0BFC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0BFC4  40 81 00 58 */	ble lbl_80C0C01C
/* 80C0BFC8  FC 00 08 34 */	frsqrte f0, f1
/* 80C0BFCC  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C0BFD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0BFD4  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C0BFD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0BFDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0BFE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0BFE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0BFE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0BFEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0BFF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0BFF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0BFF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0BFFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0C000  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0C004  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0C008  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0C00C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C0C010  FC 21 00 32 */	fmul f1, f1, f0
/* 80C0C014  FC 20 08 18 */	frsp f1, f1
/* 80C0C018  48 00 00 88 */	b lbl_80C0C0A0
lbl_80C0C01C:
/* 80C0C01C  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C0C020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0C024  40 80 00 10 */	bge lbl_80C0C034
/* 80C0C028  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0C02C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C0C030  48 00 00 70 */	b lbl_80C0C0A0
lbl_80C0C034:
/* 80C0C034  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0C038  80 81 00 08 */	lwz r4, 8(r1)
/* 80C0C03C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C0C040  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C0C044  7C 03 00 00 */	cmpw r3, r0
/* 80C0C048  41 82 00 14 */	beq lbl_80C0C05C
/* 80C0C04C  40 80 00 40 */	bge lbl_80C0C08C
/* 80C0C050  2C 03 00 00 */	cmpwi r3, 0
/* 80C0C054  41 82 00 20 */	beq lbl_80C0C074
/* 80C0C058  48 00 00 34 */	b lbl_80C0C08C
lbl_80C0C05C:
/* 80C0C05C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0C060  41 82 00 0C */	beq lbl_80C0C06C
/* 80C0C064  38 00 00 01 */	li r0, 1
/* 80C0C068  48 00 00 28 */	b lbl_80C0C090
lbl_80C0C06C:
/* 80C0C06C  38 00 00 02 */	li r0, 2
/* 80C0C070  48 00 00 20 */	b lbl_80C0C090
lbl_80C0C074:
/* 80C0C074  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0C078  41 82 00 0C */	beq lbl_80C0C084
/* 80C0C07C  38 00 00 05 */	li r0, 5
/* 80C0C080  48 00 00 10 */	b lbl_80C0C090
lbl_80C0C084:
/* 80C0C084  38 00 00 03 */	li r0, 3
/* 80C0C088  48 00 00 08 */	b lbl_80C0C090
lbl_80C0C08C:
/* 80C0C08C  38 00 00 04 */	li r0, 4
lbl_80C0C090:
/* 80C0C090  2C 00 00 01 */	cmpwi r0, 1
/* 80C0C094  40 82 00 0C */	bne lbl_80C0C0A0
/* 80C0C098  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C0C09C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C0C0A0:
/* 80C0C0A0  FC 40 F8 90 */	fmr f2, f31
/* 80C0C0A4  4B 65 B5 D0 */	b cM_atan2s__Fff
/* 80C0C0A8  7C 60 07 34 */	extsh r0, r3
/* 80C0C0AC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0C0B0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80C0C0B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C0C0B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80C0C0BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C0C0C0  7C 64 02 14 */	add r3, r4, r0
/* 80C0C0C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C0C0C8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C0C0CC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C0C0D0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80C0C0D4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C0C0D8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80C0C0DC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C0C0E0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80C0C0E4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C0C0E8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80C0C0EC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C0C0F0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80C0C0F4  7F C3 F3 78 */	mr r3, r30
/* 80C0C0F8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C0C0FC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C0C100  7D 89 03 A6 */	mtctr r12
/* 80C0C104  4E 80 04 21 */	bctrl 
/* 80C0C108  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C0C10C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C0C110  4B 73 A3 A0 */	b PSMTXCopy
/* 80C0C114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0C118  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 80C0C11C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80C0C120  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C0C124  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80C0C128  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C0C12C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80C0C130  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C0C134  7F C3 F3 78 */	mr r3, r30
/* 80C0C138  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C0C13C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80C0C140  7D 89 03 A6 */	mtctr r12
/* 80C0C144  4E 80 04 21 */	bctrl 
/* 80C0C148  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C0C14C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C0C150  4B 73 A3 60 */	b PSMTXCopy
/* 80C0C154  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80C0C158  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C0C15C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80C0C160  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C0C164  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80C0C168  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C0C16C  38 61 00 30 */	addi r3, r1, 0x30
/* 80C0C170  38 81 00 84 */	addi r4, r1, 0x84
/* 80C0C174  38 A1 00 78 */	addi r5, r1, 0x78
/* 80C0C178  4B 65 A9 6C */	b __pl__4cXyzCFRC3Vec
/* 80C0C17C  38 61 00 24 */	addi r3, r1, 0x24
/* 80C0C180  38 81 00 30 */	addi r4, r1, 0x30
/* 80C0C184  C0 3F 02 60 */	lfs f1, 0x260(r31)
/* 80C0C188  4B 65 AA 90 */	b __dv__4cXyzCFf
/* 80C0C18C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C0C190  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C0C194  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C0C198  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C0C19C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C0C1A0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C0C1A4  7F C3 F3 78 */	mr r3, r30
/* 80C0C1A8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C0C1AC  81 8C 01 34 */	lwz r12, 0x134(r12)
/* 80C0C1B0  7D 89 03 A6 */	mtctr r12
/* 80C0C1B4  4E 80 04 21 */	bctrl 
/* 80C0C1B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C0C1BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C0C1C0  4B 73 A2 F0 */	b PSMTXCopy
/* 80C0C1C4  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80C0C1C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C0C1CC  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80C0C1D0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C0C1D4  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80C0C1D8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C0C1DC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C0C1E0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C0C1E4  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C0C1E8  38 81 00 60 */	addi r4, r1, 0x60
/* 80C0C1EC  4B 66 4A 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0C1F0  7C 7B 07 34 */	extsh r27, r3
/* 80C0C1F4  2C 1D 00 00 */	cmpwi r29, 0
/* 80C0C1F8  41 82 00 94 */	beq lbl_80C0C28C
/* 80C0C1FC  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80C0C200  38 7F 00 00 */	addi r3, r31, 0
/* 80C0C204  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80C0C208  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C0C20C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C0C210  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C0C214  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C0C218  38 61 00 54 */	addi r3, r1, 0x54
/* 80C0C21C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C0C220  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C0C224  3C A5 00 01 */	addis r5, r5, 1
/* 80C0C228  38 05 80 00 */	addi r0, r5, -32768
/* 80C0C22C  7C 05 07 34 */	extsh r5, r0
/* 80C0C230  38 C1 00 9C */	addi r6, r1, 0x9c
/* 80C0C234  4B 66 4B 8C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C0C238  2C 1D 00 01 */	cmpwi r29, 1
/* 80C0C23C  40 82 00 18 */	bne lbl_80C0C254
/* 80C0C240  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C0C244  38 81 00 54 */	addi r4, r1, 0x54
/* 80C0C248  C0 3F 02 34 */	lfs f1, 0x234(r31)
/* 80C0C24C  4B 66 45 60 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C0C250  48 00 00 D0 */	b lbl_80C0C320
lbl_80C0C254:
/* 80C0C254  2C 1D 00 02 */	cmpwi r29, 2
/* 80C0C258  40 82 00 C8 */	bne lbl_80C0C320
/* 80C0C25C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C0C260  38 81 00 54 */	addi r4, r1, 0x54
/* 80C0C264  C0 3F 02 FC */	lfs f1, 0x2fc(r31)
/* 80C0C268  4B 66 45 44 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C0C26C  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80C0C270  7F 64 DB 78 */	mr r4, r27
/* 80C0C274  38 A0 00 08 */	li r5, 8
/* 80C0C278  38 C0 04 00 */	li r6, 0x400
/* 80C0C27C  4B 66 43 8C */	b cLib_addCalcAngleS2__FPssss
/* 80C0C280  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80C0C284  B0 1C 09 1C */	sth r0, 0x91c(r28)
/* 80C0C288  48 00 00 98 */	b lbl_80C0C320
lbl_80C0C28C:
/* 80C0C28C  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80C0C290  38 7F 00 00 */	addi r3, r31, 0
/* 80C0C294  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80C0C298  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C0C29C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C0C2A0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C0C2A4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C0C2A8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0C2AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C0C2B0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C0C2B4  D3 C1 00 44 */	stfs f30, 0x44(r1)
/* 80C0C2B8  38 61 00 48 */	addi r3, r1, 0x48
/* 80C0C2BC  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C0C2C0  7F 65 DB 78 */	mr r5, r27
/* 80C0C2C4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80C0C2C8  4B 66 4A F8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C0C2CC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C0C2D0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80C0C2D4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C0C2D8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80C0C2DC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C0C2E0  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80C0C2E4  88 1C 1F FC */	lbz r0, 0x1ffc(r28)
/* 80C0C2E8  28 00 00 00 */	cmplwi r0, 0
/* 80C0C2EC  41 82 00 10 */	beq lbl_80C0C2FC
/* 80C0C2F0  38 1B 50 00 */	addi r0, r27, 0x5000
/* 80C0C2F4  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C0C2F8  48 00 00 0C */	b lbl_80C0C304
lbl_80C0C2FC:
/* 80C0C2FC  38 1B B0 00 */	addi r0, r27, -20480
/* 80C0C300  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_80C0C304:
/* 80C0C304  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80C0C308  7F 64 DB 78 */	mr r4, r27
/* 80C0C30C  38 A0 00 02 */	li r5, 2
/* 80C0C310  38 C0 20 00 */	li r6, 0x2000
/* 80C0C314  4B 66 42 F4 */	b cLib_addCalcAngleS2__FPssss
/* 80C0C318  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80C0C31C  B0 1C 09 1C */	sth r0, 0x91c(r28)
lbl_80C0C320:
/* 80C0C320  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80C0C324  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80C0C328  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80C0C32C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80C0C330  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C0C334  4B 75 5E EC */	b _restgpr_27
/* 80C0C338  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80C0C33C  7C 08 03 A6 */	mtlr r0
/* 80C0C340  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80C0C344  4E 80 00 20 */	blr 
