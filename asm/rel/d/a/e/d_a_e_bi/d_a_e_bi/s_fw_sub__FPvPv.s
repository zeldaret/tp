lbl_8068C068:
/* 8068C068  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8068C06C  7C 08 02 A6 */	mflr r0
/* 8068C070  90 01 00 44 */	stw r0, 0x44(r1)
/* 8068C074  39 61 00 40 */	addi r11, r1, 0x40
/* 8068C078  4B CD 61 64 */	b _savegpr_29
/* 8068C07C  7C 7D 1B 78 */	mr r29, r3
/* 8068C080  7C 9E 23 78 */	mr r30, r4
/* 8068C084  3C 80 80 69 */	lis r4, lit_3903@ha
/* 8068C088  3B E4 D7 EC */	addi r31, r4, lit_3903@l
/* 8068C08C  4B 98 CC 54 */	b fopAc_IsActor__FPv
/* 8068C090  2C 03 00 00 */	cmpwi r3, 0
/* 8068C094  41 82 01 38 */	beq lbl_8068C1CC
/* 8068C098  A8 1D 00 08 */	lha r0, 8(r29)
/* 8068C09C  2C 00 02 F0 */	cmpwi r0, 0x2f0
/* 8068C0A0  40 82 01 2C */	bne lbl_8068C1CC
/* 8068C0A4  38 61 00 0C */	addi r3, r1, 0xc
/* 8068C0A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8068C0AC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8068C0B0  4B BD AA 84 */	b __mi__4cXyzCFRC3Vec
/* 8068C0B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8068C0B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8068C0BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8068C0C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068C0C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8068C0C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068C0CC  38 61 00 18 */	addi r3, r1, 0x18
/* 8068C0D0  4B CB B0 68 */	b PSVECSquareMag
/* 8068C0D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068C0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068C0DC  40 81 00 58 */	ble lbl_8068C134
/* 8068C0E0  FC 00 08 34 */	frsqrte f0, f1
/* 8068C0E4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8068C0E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8068C0EC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8068C0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8068C0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8068C0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8068C0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8068C100  FC 44 00 32 */	fmul f2, f4, f0
/* 8068C104  FC 00 00 32 */	fmul f0, f0, f0
/* 8068C108  FC 01 00 32 */	fmul f0, f1, f0
/* 8068C10C  FC 03 00 28 */	fsub f0, f3, f0
/* 8068C110  FC 02 00 32 */	fmul f0, f2, f0
/* 8068C114  FC 44 00 32 */	fmul f2, f4, f0
/* 8068C118  FC 00 00 32 */	fmul f0, f0, f0
/* 8068C11C  FC 01 00 32 */	fmul f0, f1, f0
/* 8068C120  FC 03 00 28 */	fsub f0, f3, f0
/* 8068C124  FC 02 00 32 */	fmul f0, f2, f0
/* 8068C128  FC 21 00 32 */	fmul f1, f1, f0
/* 8068C12C  FC 20 08 18 */	frsp f1, f1
/* 8068C130  48 00 00 88 */	b lbl_8068C1B8
lbl_8068C134:
/* 8068C134  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8068C138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068C13C  40 80 00 10 */	bge lbl_8068C14C
/* 8068C140  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068C144  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8068C148  48 00 00 70 */	b lbl_8068C1B8
lbl_8068C14C:
/* 8068C14C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8068C150  80 81 00 08 */	lwz r4, 8(r1)
/* 8068C154  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8068C158  3C 00 7F 80 */	lis r0, 0x7f80
/* 8068C15C  7C 03 00 00 */	cmpw r3, r0
/* 8068C160  41 82 00 14 */	beq lbl_8068C174
/* 8068C164  40 80 00 40 */	bge lbl_8068C1A4
/* 8068C168  2C 03 00 00 */	cmpwi r3, 0
/* 8068C16C  41 82 00 20 */	beq lbl_8068C18C
/* 8068C170  48 00 00 34 */	b lbl_8068C1A4
lbl_8068C174:
/* 8068C174  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068C178  41 82 00 0C */	beq lbl_8068C184
/* 8068C17C  38 00 00 01 */	li r0, 1
/* 8068C180  48 00 00 28 */	b lbl_8068C1A8
lbl_8068C184:
/* 8068C184  38 00 00 02 */	li r0, 2
/* 8068C188  48 00 00 20 */	b lbl_8068C1A8
lbl_8068C18C:
/* 8068C18C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068C190  41 82 00 0C */	beq lbl_8068C19C
/* 8068C194  38 00 00 05 */	li r0, 5
/* 8068C198  48 00 00 10 */	b lbl_8068C1A8
lbl_8068C19C:
/* 8068C19C  38 00 00 03 */	li r0, 3
/* 8068C1A0  48 00 00 08 */	b lbl_8068C1A8
lbl_8068C1A4:
/* 8068C1A4  38 00 00 04 */	li r0, 4
lbl_8068C1A8:
/* 8068C1A8  2C 00 00 01 */	cmpwi r0, 1
/* 8068C1AC  40 82 00 0C */	bne lbl_8068C1B8
/* 8068C1B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068C1B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8068C1B8:
/* 8068C1B8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8068C1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068C1C0  40 80 00 0C */	bge lbl_8068C1CC
/* 8068C1C4  7F A3 EB 78 */	mr r3, r29
/* 8068C1C8  48 00 00 08 */	b lbl_8068C1D0
lbl_8068C1CC:
/* 8068C1CC  38 60 00 00 */	li r3, 0
lbl_8068C1D0:
/* 8068C1D0  39 61 00 40 */	addi r11, r1, 0x40
/* 8068C1D4  4B CD 60 54 */	b _restgpr_29
/* 8068C1D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068C1DC  7C 08 03 A6 */	mtlr r0
/* 8068C1E0  38 21 00 40 */	addi r1, r1, 0x40
/* 8068C1E4  4E 80 00 20 */	blr 
