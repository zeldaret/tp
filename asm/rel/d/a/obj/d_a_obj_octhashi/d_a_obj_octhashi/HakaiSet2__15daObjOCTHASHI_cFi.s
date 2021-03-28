lbl_80CA4F24:
/* 80CA4F24  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80CA4F28  7C 08 02 A6 */	mflr r0
/* 80CA4F2C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80CA4F30  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80CA4F34  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80CA4F38  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80CA4F3C  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80CA4F40  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80CA4F44  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80CA4F48  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80CA4F4C  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 80CA4F50  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 80CA4F54  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 80CA4F58  39 61 00 80 */	addi r11, r1, 0x80
/* 80CA4F5C  4B 6B D2 5C */	b _savegpr_20
/* 80CA4F60  7C 7F 1B 78 */	mr r31, r3
/* 80CA4F64  7C 97 23 78 */	mr r23, r4
/* 80CA4F68  3C 60 80 CA */	lis r3, ccSphSrc@ha
/* 80CA4F6C  3B 63 64 80 */	addi r27, r3, ccSphSrc@l
/* 80CA4F70  3B 37 FF FF */	addi r25, r23, -1
/* 80CA4F74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA4F78  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80CA4F7C  C3 9B 00 60 */	lfs f28, 0x60(r27)
/* 80CA4F80  C3 BB 00 64 */	lfs f29, 0x64(r27)
/* 80CA4F84  C3 FB 00 48 */	lfs f31, 0x48(r27)
/* 80CA4F88  CB DB 00 50 */	lfd f30, 0x50(r27)
/* 80CA4F8C  3F C0 43 30 */	lis r30, 0x4330
/* 80CA4F90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA4F94  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 80CA4F98  C3 7B 00 6C */	lfs f27, 0x6c(r27)
/* 80CA4F9C  3E 80 00 01 */	lis r20, 1
/* 80CA4FA0  1E B9 00 0C */	mulli r21, r25, 0xc
/* 80CA4FA4  1E D9 00 06 */	mulli r22, r25, 6
/* 80CA4FA8  48 00 01 7C */	b lbl_80CA5124
lbl_80CA4FAC:
/* 80CA4FAC  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 80CA4FB0  EC 00 E0 2A */	fadds f0, f0, f28
/* 80CA4FB4  D0 1F 06 D8 */	stfs f0, 0x6d8(r31)
/* 80CA4FB8  C0 3F 06 D8 */	lfs f1, 0x6d8(r31)
/* 80CA4FBC  7F 5F AA 14 */	add r26, r31, r21
/* 80CA4FC0  C0 1A 06 10 */	lfs f0, 0x610(r26)
/* 80CA4FC4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80CA4FC8  D3 FA 06 00 */	stfs f31, 0x600(r26)
/* 80CA4FCC  D0 1A 06 04 */	stfs f0, 0x604(r26)
/* 80CA4FD0  D0 3A 06 08 */	stfs f1, 0x608(r26)
/* 80CA4FD4  C0 3B 00 68 */	lfs f1, 0x68(r27)
/* 80CA4FD8  4B 5C 29 B4 */	b cM_rndFX__Ff
/* 80CA4FDC  A8 1F 06 CC */	lha r0, 0x6cc(r31)
/* 80CA4FE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA4FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA4FE8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80CA4FEC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CA4FF0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CA4FF4  EC 00 08 2A */	fadds f0, f0, f1
/* 80CA4FF8  FC 00 00 1E */	fctiwz f0, f0
/* 80CA4FFC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CA5000  83 01 00 2C */	lwz r24, 0x2c(r1)
/* 80CA5004  7F A3 EB 78 */	mr r3, r29
/* 80CA5008  7F 04 07 34 */	extsh r4, r24
/* 80CA500C  4B 36 73 D0 */	b mDoMtx_YrotS__FPA4_fs
/* 80CA5010  38 9A 06 00 */	addi r4, r26, 0x600
/* 80CA5014  7F A3 EB 78 */	mr r3, r29
/* 80CA5018  7C 85 23 78 */	mr r5, r4
/* 80CA501C  4B 6A 1D 50 */	b PSMTXMultVec
/* 80CA5020  C0 1A 06 04 */	lfs f0, 0x604(r26)
/* 80CA5024  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80CA5028  40 81 00 0C */	ble lbl_80CA5034
/* 80CA502C  FC 00 00 50 */	fneg f0, f0
/* 80CA5030  D0 1A 06 04 */	stfs f0, 0x604(r26)
lbl_80CA5034:
/* 80CA5034  A8 1F 06 DC */	lha r0, 0x6dc(r31)
/* 80CA5038  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA503C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CA5040  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CA5044  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CA5048  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CA504C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80CA5050  FC 00 00 1E */	fctiwz f0, f0
/* 80CA5054  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80CA5058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA505C  B0 1F 06 DC */	sth r0, 0x6dc(r31)
/* 80CA5060  A8 1F 06 DE */	lha r0, 0x6de(r31)
/* 80CA5064  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA5068  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA506C  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80CA5070  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CA5074  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CA5078  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80CA507C  FC 00 00 1E */	fctiwz f0, f0
/* 80CA5080  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CA5084  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CA5088  B0 1F 06 DE */	sth r0, 0x6de(r31)
/* 80CA508C  7D 1F B2 14 */	add r8, r31, r22
/* 80CA5090  A8 08 06 9A */	lha r0, 0x69a(r8)
/* 80CA5094  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA5098  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CA509C  93 C1 00 40 */	stw r30, 0x40(r1)
/* 80CA50A0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CA50A4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CA50A8  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80CA50AC  FC 00 00 1E */	fctiwz f0, f0
/* 80CA50B0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80CA50B4  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80CA50B8  A8 1F 06 DC */	lha r0, 0x6dc(r31)
/* 80CA50BC  B0 08 06 90 */	sth r0, 0x690(r8)
/* 80CA50C0  38 80 00 00 */	li r4, 0
/* 80CA50C4  B0 88 06 92 */	sth r4, 0x692(r8)
/* 80CA50C8  B0 68 06 94 */	sth r3, 0x694(r8)
/* 80CA50CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80CA50D0  7C 00 C0 50 */	subf r0, r0, r24
/* 80CA50D4  B0 08 06 62 */	sth r0, 0x662(r8)
/* 80CA50D8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CA50DC  90 81 00 08 */	stw r4, 8(r1)
/* 80CA50E0  38 00 FF FF */	li r0, -1
/* 80CA50E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA50E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA50EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA50F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA50F4  38 80 00 00 */	li r4, 0
/* 80CA50F8  38 B4 87 EB */	addi r5, r20, -30741
/* 80CA50FC  38 DA 05 A0 */	addi r6, r26, 0x5a0
/* 80CA5100  38 E0 00 00 */	li r7, 0
/* 80CA5104  39 08 06 60 */	addi r8, r8, 0x660
/* 80CA5108  39 20 00 00 */	li r9, 0
/* 80CA510C  39 40 00 FF */	li r10, 0xff
/* 80CA5110  C0 3B 00 70 */	lfs f1, 0x70(r27)
/* 80CA5114  4B 3A 79 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA5118  3B 39 FF FF */	addi r25, r25, -1
/* 80CA511C  3A D6 FF FA */	addi r22, r22, -6
/* 80CA5120  3A B5 FF F4 */	addi r21, r21, -12
lbl_80CA5124:
/* 80CA5124  2C 19 00 00 */	cmpwi r25, 0
/* 80CA5128  40 80 FE 84 */	bge lbl_80CA4FAC
/* 80CA512C  3B 17 00 01 */	addi r24, r23, 1
/* 80CA5130  C3 DB 00 60 */	lfs f30, 0x60(r27)
/* 80CA5134  C3 FB 00 64 */	lfs f31, 0x64(r27)
/* 80CA5138  C3 7B 00 48 */	lfs f27, 0x48(r27)
/* 80CA513C  CB BB 00 50 */	lfd f29, 0x50(r27)
/* 80CA5140  3F A0 43 30 */	lis r29, 0x4330
/* 80CA5144  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA5148  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80CA514C  C3 9B 00 74 */	lfs f28, 0x74(r27)
/* 80CA5150  3E A0 00 01 */	lis r21, 1
/* 80CA5154  1E D8 00 0C */	mulli r22, r24, 0xc
/* 80CA5158  1E F8 00 06 */	mulli r23, r24, 6
/* 80CA515C  48 00 01 40 */	b lbl_80CA529C
lbl_80CA5160:
/* 80CA5160  C0 1F 06 D4 */	lfs f0, 0x6d4(r31)
/* 80CA5164  EC 00 F0 2A */	fadds f0, f0, f30
/* 80CA5168  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 80CA516C  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 80CA5170  7F 5F B2 14 */	add r26, r31, r22
/* 80CA5174  C0 1A 05 F8 */	lfs f0, 0x5f8(r26)
/* 80CA5178  FC 00 00 50 */	fneg f0, f0
/* 80CA517C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80CA5180  D3 7A 06 00 */	stfs f27, 0x600(r26)
/* 80CA5184  D0 1A 06 04 */	stfs f0, 0x604(r26)
/* 80CA5188  D0 3A 06 08 */	stfs f1, 0x608(r26)
/* 80CA518C  C0 3B 00 68 */	lfs f1, 0x68(r27)
/* 80CA5190  4B 5C 27 FC */	b cM_rndFX__Ff
/* 80CA5194  A8 1F 06 CC */	lha r0, 0x6cc(r31)
/* 80CA5198  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA519C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80CA51A0  93 A1 00 48 */	stw r29, 0x48(r1)
/* 80CA51A4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80CA51A8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80CA51AC  EC 00 08 2A */	fadds f0, f0, f1
/* 80CA51B0  FC 00 00 1E */	fctiwz f0, f0
/* 80CA51B4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CA51B8  83 21 00 44 */	lwz r25, 0x44(r1)
/* 80CA51BC  38 9A 06 00 */	addi r4, r26, 0x600
/* 80CA51C0  7F C3 F3 78 */	mr r3, r30
/* 80CA51C4  7C 85 23 78 */	mr r5, r4
/* 80CA51C8  4B 6A 1B A4 */	b PSMTXMultVec
/* 80CA51CC  C0 1A 06 04 */	lfs f0, 0x604(r26)
/* 80CA51D0  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 80CA51D4  40 80 00 0C */	bge lbl_80CA51E0
/* 80CA51D8  FC 00 00 50 */	fneg f0, f0
/* 80CA51DC  D0 1A 06 04 */	stfs f0, 0x604(r26)
lbl_80CA51E0:
/* 80CA51E0  7D 1F BA 14 */	add r8, r31, r23
/* 80CA51E4  A8 08 06 8E */	lha r0, 0x68e(r8)
/* 80CA51E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA51EC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80CA51F0  93 A1 00 48 */	stw r29, 0x48(r1)
/* 80CA51F4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80CA51F8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80CA51FC  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80CA5200  FC 00 00 1E */	fctiwz f0, f0
/* 80CA5204  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CA5208  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80CA520C  A8 08 06 8A */	lha r0, 0x68a(r8)
/* 80CA5210  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA5214  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CA5218  93 A1 00 38 */	stw r29, 0x38(r1)
/* 80CA521C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80CA5220  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80CA5224  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80CA5228  FC 00 00 1E */	fctiwz f0, f0
/* 80CA522C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CA5230  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA5234  B0 08 06 90 */	sth r0, 0x690(r8)
/* 80CA5238  38 80 00 00 */	li r4, 0
/* 80CA523C  B0 88 06 92 */	sth r4, 0x692(r8)
/* 80CA5240  B0 68 06 94 */	sth r3, 0x694(r8)
/* 80CA5244  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80CA5248  7C 00 C8 50 */	subf r0, r0, r25
/* 80CA524C  B0 08 06 62 */	sth r0, 0x662(r8)
/* 80CA5250  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CA5254  90 81 00 08 */	stw r4, 8(r1)
/* 80CA5258  38 00 FF FF */	li r0, -1
/* 80CA525C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA5260  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA5264  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA5268  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA526C  38 80 00 00 */	li r4, 0
/* 80CA5270  38 B5 87 EB */	addi r5, r21, -30741
/* 80CA5274  38 DA 05 A0 */	addi r6, r26, 0x5a0
/* 80CA5278  38 E0 00 00 */	li r7, 0
/* 80CA527C  39 08 06 60 */	addi r8, r8, 0x660
/* 80CA5280  39 20 00 00 */	li r9, 0
/* 80CA5284  39 40 00 FF */	li r10, 0xff
/* 80CA5288  C0 3B 00 70 */	lfs f1, 0x70(r27)
/* 80CA528C  4B 3A 78 04 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA5290  3B 18 00 01 */	addi r24, r24, 1
/* 80CA5294  3A F7 00 06 */	addi r23, r23, 6
/* 80CA5298  3A D6 00 0C */	addi r22, r22, 0xc
lbl_80CA529C:
/* 80CA529C  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80CA52A0  7C 18 00 00 */	cmpw r24, r0
/* 80CA52A4  41 80 FE BC */	blt lbl_80CA5160
/* 80CA52A8  38 00 00 01 */	li r0, 1
/* 80CA52AC  98 1F 06 C8 */	stb r0, 0x6c8(r31)
/* 80CA52B0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80CA52B4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80CA52B8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80CA52BC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80CA52C0  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80CA52C4  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80CA52C8  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 80CA52CC  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80CA52D0  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 80CA52D4  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 80CA52D8  39 61 00 80 */	addi r11, r1, 0x80
/* 80CA52DC  4B 6B CF 28 */	b _restgpr_20
/* 80CA52E0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80CA52E4  7C 08 03 A6 */	mtlr r0
/* 80CA52E8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80CA52EC  4E 80 00 20 */	blr 
