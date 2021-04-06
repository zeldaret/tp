lbl_8052BFF8:
/* 8052BFF8  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8052BFFC  7C 08 02 A6 */	mflr r0
/* 8052C000  90 01 01 24 */	stw r0, 0x124(r1)
/* 8052C004  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8052C008  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 8052C00C  39 61 01 10 */	addi r11, r1, 0x110
/* 8052C010  4B E3 61 C1 */	bl _savegpr_26
/* 8052C014  7C 7B 1B 78 */	mr r27, r3
/* 8052C018  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 8052C01C  3B C3 61 68 */	addi r30, r3, lit_3679@l /* 0x80536168@l */
/* 8052C020  C3 FE 00 84 */	lfs f31, 0x84(r30)
/* 8052C024  38 60 00 00 */	li r3, 0
/* 8052C028  7C 65 1B 78 */	mr r5, r3
/* 8052C02C  38 81 00 30 */	addi r4, r1, 0x30
/* 8052C030  38 00 00 32 */	li r0, 0x32
/* 8052C034  7C 09 03 A6 */	mtctr r0
lbl_8052C038:
/* 8052C038  7C A4 19 2E */	stwx r5, r4, r3
/* 8052C03C  38 63 00 04 */	addi r3, r3, 4
/* 8052C040  42 00 FF F8 */	bdnz lbl_8052C038
/* 8052C044  3B 80 00 00 */	li r28, 0
/* 8052C048  3C 60 80 53 */	lis r3, swim_path127@ha /* 0x805364E4@ha */
/* 8052C04C  3B E3 64 E4 */	addi r31, r3, swim_path127@l /* 0x805364E4@l */
/* 8052C050  48 00 01 B0 */	b lbl_8052C200
lbl_8052C054:
/* 8052C054  7F 83 07 34 */	extsh r3, r28
/* 8052C058  54 60 20 36 */	slwi r0, r3, 4
/* 8052C05C  7C 9F 02 14 */	add r4, r31, r0
/* 8052C060  A8 04 00 00 */	lha r0, 0(r4)
/* 8052C064  2C 00 00 00 */	cmpwi r0, 0
/* 8052C068  41 80 01 74 */	blt lbl_8052C1DC
/* 8052C06C  54 7A 10 3A */	slwi r26, r3, 2
/* 8052C070  3B A1 00 30 */	addi r29, r1, 0x30
/* 8052C074  7C 1D D0 2E */	lwzx r0, r29, r26
/* 8052C078  2C 00 00 00 */	cmpwi r0, 0
/* 8052C07C  40 82 01 60 */	bne lbl_8052C1DC
/* 8052C080  C0 04 00 04 */	lfs f0, 4(r4)
/* 8052C084  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8052C088  C0 04 00 08 */	lfs f0, 8(r4)
/* 8052C08C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052C090  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8052C094  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052C098  38 61 00 0C */	addi r3, r1, 0xc
/* 8052C09C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8052C0A0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8052C0A4  4B D3 AA 91 */	bl __mi__4cXyzCFRC3Vec
/* 8052C0A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8052C0AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8052C0B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8052C0B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052C0B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8052C0BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052C0C0  38 61 00 24 */	addi r3, r1, 0x24
/* 8052C0C4  4B E1 B0 75 */	bl PSVECSquareMag
/* 8052C0C8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052C0CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C0D0  40 81 00 58 */	ble lbl_8052C128
/* 8052C0D4  FC 00 08 34 */	frsqrte f0, f1
/* 8052C0D8  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 8052C0DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C0E0  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 8052C0E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C0E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C0EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C0F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C0F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C0F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C0FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C100  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C104  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C108  FC 44 00 32 */	fmul f2, f4, f0
/* 8052C10C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052C110  FC 01 00 32 */	fmul f0, f1, f0
/* 8052C114  FC 03 00 28 */	fsub f0, f3, f0
/* 8052C118  FC 02 00 32 */	fmul f0, f2, f0
/* 8052C11C  FC 21 00 32 */	fmul f1, f1, f0
/* 8052C120  FC 20 08 18 */	frsp f1, f1
/* 8052C124  48 00 00 88 */	b lbl_8052C1AC
lbl_8052C128:
/* 8052C128  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 8052C12C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052C130  40 80 00 10 */	bge lbl_8052C140
/* 8052C134  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052C138  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052C13C  48 00 00 70 */	b lbl_8052C1AC
lbl_8052C140:
/* 8052C140  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052C144  80 81 00 08 */	lwz r4, 8(r1)
/* 8052C148  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052C14C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052C150  7C 03 00 00 */	cmpw r3, r0
/* 8052C154  41 82 00 14 */	beq lbl_8052C168
/* 8052C158  40 80 00 40 */	bge lbl_8052C198
/* 8052C15C  2C 03 00 00 */	cmpwi r3, 0
/* 8052C160  41 82 00 20 */	beq lbl_8052C180
/* 8052C164  48 00 00 34 */	b lbl_8052C198
lbl_8052C168:
/* 8052C168  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052C16C  41 82 00 0C */	beq lbl_8052C178
/* 8052C170  38 00 00 01 */	li r0, 1
/* 8052C174  48 00 00 28 */	b lbl_8052C19C
lbl_8052C178:
/* 8052C178  38 00 00 02 */	li r0, 2
/* 8052C17C  48 00 00 20 */	b lbl_8052C19C
lbl_8052C180:
/* 8052C180  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052C184  41 82 00 0C */	beq lbl_8052C190
/* 8052C188  38 00 00 05 */	li r0, 5
/* 8052C18C  48 00 00 10 */	b lbl_8052C19C
lbl_8052C190:
/* 8052C190  38 00 00 03 */	li r0, 3
/* 8052C194  48 00 00 08 */	b lbl_8052C19C
lbl_8052C198:
/* 8052C198  38 00 00 04 */	li r0, 4
lbl_8052C19C:
/* 8052C19C  2C 00 00 01 */	cmpwi r0, 1
/* 8052C1A0  40 82 00 0C */	bne lbl_8052C1AC
/* 8052C1A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052C1A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8052C1AC:
/* 8052C1AC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8052C1B0  40 80 00 4C */	bge lbl_8052C1FC
/* 8052C1B4  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8052C1B8  38 81 00 18 */	addi r4, r1, 0x18
/* 8052C1BC  4B FF FD AD */	bl pos_bg_check__FP4cXyzP4cXyz
/* 8052C1C0  2C 03 00 00 */	cmpwi r3, 0
/* 8052C1C4  41 82 00 10 */	beq lbl_8052C1D4
/* 8052C1C8  38 00 00 01 */	li r0, 1
/* 8052C1CC  7C 1D D1 2E */	stwx r0, r29, r26
/* 8052C1D0  48 00 00 2C */	b lbl_8052C1FC
lbl_8052C1D4:
/* 8052C1D4  7F 83 E3 78 */	mr r3, r28
/* 8052C1D8  48 00 00 38 */	b lbl_8052C210
lbl_8052C1DC:
/* 8052C1DC  3B 80 FF FF */	li r28, -1
/* 8052C1E0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8052C1E4  EF FF 00 2A */	fadds f31, f31, f0
/* 8052C1E8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8052C1EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8052C1F0  40 81 00 0C */	ble lbl_8052C1FC
/* 8052C1F4  38 60 FF FF */	li r3, -1
/* 8052C1F8  48 00 00 18 */	b lbl_8052C210
lbl_8052C1FC:
/* 8052C1FC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8052C200:
/* 8052C200  7F 80 07 34 */	extsh r0, r28
/* 8052C204  2C 00 00 32 */	cmpwi r0, 0x32
/* 8052C208  41 80 FE 4C */	blt lbl_8052C054
/* 8052C20C  38 60 FF FF */	li r3, -1
lbl_8052C210:
/* 8052C210  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 8052C214  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8052C218  39 61 01 10 */	addi r11, r1, 0x110
/* 8052C21C  4B E3 60 01 */	bl _restgpr_26
/* 8052C220  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8052C224  7C 08 03 A6 */	mtlr r0
/* 8052C228  38 21 01 20 */	addi r1, r1, 0x120
/* 8052C22C  4E 80 00 20 */	blr 
