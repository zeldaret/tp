lbl_80D44124:
/* 80D44124  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80D44128  7C 08 02 A6 */	mflr r0
/* 80D4412C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80D44130  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80D44134  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80D44138  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80D4413C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80D44140  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80D44144  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80D44148  39 61 00 90 */	addi r11, r1, 0x90
/* 80D4414C  4B 61 E0 90 */	b _savegpr_29
/* 80D44150  3C 80 80 D4 */	lis r4, l_DATA@ha
/* 80D44154  3B C4 4B 48 */	addi r30, r4, l_DATA@l
/* 80D44158  C0 63 05 BC */	lfs f3, 0x5bc(r3)
/* 80D4415C  C0 43 05 C4 */	lfs f2, 0x5c4(r3)
/* 80D44160  C0 23 05 B4 */	lfs f1, 0x5b4(r3)
/* 80D44164  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D44168  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80D4416C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80D44170  C0 03 05 C0 */	lfs f0, 0x5c0(r3)
/* 80D44174  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D44178  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D4417C  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80D44180  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D44184  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80D44188  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80D4418C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D44190  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80D44194  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80D44198  C0 83 05 B8 */	lfs f4, 0x5b8(r3)
/* 80D4419C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80D441A0  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80D441A4  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80D441A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80D441AC  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80D441B0  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80D441B4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80D441B8  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 80D441BC  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80D441C0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D441C4  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 80D441C8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80D441CC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D441D0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D441D4  38 63 05 74 */	addi r3, r3, 0x574
/* 80D441D8  4B 60 22 D8 */	b PSMTXCopy
/* 80D441DC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D441E0  FC 40 08 90 */	fmr f2, f1
/* 80D441E4  FC 60 08 90 */	fmr f3, f1
/* 80D441E8  4B 2C 8B B4 */	b transM__14mDoMtx_stack_cFfff
/* 80D441EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D441F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D441F4  38 81 00 14 */	addi r4, r1, 0x14
/* 80D441F8  7C 85 23 78 */	mr r5, r4
/* 80D441FC  38 C0 00 08 */	li r6, 8
/* 80D44200  4B 60 2B C0 */	b PSMTXMultVecArray
/* 80D44204  3B A0 00 00 */	li r29, 0
/* 80D44208  3B E0 00 00 */	li r31, 0
/* 80D4420C  C3 BE 00 08 */	lfs f29, 8(r30)
/* 80D44210  C3 DE 00 0C */	lfs f30, 0xc(r30)
/* 80D44214  C3 FE 00 10 */	lfs f31, 0x10(r30)
lbl_80D44218:
/* 80D44218  38 61 00 14 */	addi r3, r1, 0x14
/* 80D4421C  7C 63 FA 14 */	add r3, r3, r31
/* 80D44220  38 81 00 08 */	addi r4, r1, 8
/* 80D44224  4B 2D 10 EC */	b mDoLib_project__FP3VecP3Vec
/* 80D44228  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D4422C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80D44230  40 80 00 20 */	bge lbl_80D44250
/* 80D44234  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80D44238  40 80 00 18 */	bge lbl_80D44250
/* 80D4423C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D44240  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80D44244  40 80 00 0C */	bge lbl_80D44250
/* 80D44248  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80D4424C  41 80 00 0C */	blt lbl_80D44258
lbl_80D44250:
/* 80D44250  38 60 00 00 */	li r3, 0
/* 80D44254  48 00 00 18 */	b lbl_80D4426C
lbl_80D44258:
/* 80D44258  3B BD 00 01 */	addi r29, r29, 1
/* 80D4425C  2C 1D 00 08 */	cmpwi r29, 8
/* 80D44260  3B FF 00 0C */	addi r31, r31, 0xc
/* 80D44264  41 80 FF B4 */	blt lbl_80D44218
/* 80D44268  38 60 00 01 */	li r3, 1
lbl_80D4426C:
/* 80D4426C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80D44270  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80D44274  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80D44278  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80D4427C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80D44280  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80D44284  39 61 00 90 */	addi r11, r1, 0x90
/* 80D44288  4B 61 DF A0 */	b _restgpr_29
/* 80D4428C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80D44290  7C 08 03 A6 */	mtlr r0
/* 80D44294  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80D44298  4E 80 00 20 */	blr 
