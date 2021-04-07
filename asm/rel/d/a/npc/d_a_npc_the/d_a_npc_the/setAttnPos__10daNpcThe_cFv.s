lbl_80AFAEC8:
/* 80AFAEC8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AFAECC  7C 08 02 A6 */	mflr r0
/* 80AFAED0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AFAED4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80AFAED8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80AFAEDC  7C 7E 1B 78 */	mr r30, r3
/* 80AFAEE0  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha /* 0x80AFBE0C@ha */
/* 80AFAEE4  3B E3 BE 0C */	addi r31, r3, m__16daNpcThe_Param_c@l /* 0x80AFBE0C@l */
/* 80AFAEE8  A8 1E 0E 18 */	lha r0, 0xe18(r30)
/* 80AFAEEC  2C 00 00 01 */	cmpwi r0, 1
/* 80AFAEF0  40 82 00 34 */	bne lbl_80AFAF24
/* 80AFAEF4  38 60 00 00 */	li r3, 0
/* 80AFAEF8  7C 66 1B 78 */	mr r6, r3
/* 80AFAEFC  7C 65 1B 78 */	mr r5, r3
/* 80AFAF00  7C 64 1B 78 */	mr r4, r3
/* 80AFAF04  38 00 00 03 */	li r0, 3
/* 80AFAF08  7C 09 03 A6 */	mtctr r0
lbl_80AFAF0C:
/* 80AFAF0C  7C FE 1A 14 */	add r7, r30, r3
/* 80AFAF10  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80AFAF14  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80AFAF18  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80AFAF1C  38 63 00 06 */	addi r3, r3, 6
/* 80AFAF20  42 00 FF EC */	bdnz lbl_80AFAF0C
lbl_80AFAF24:
/* 80AFAF24  7F C3 F3 78 */	mr r3, r30
/* 80AFAF28  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFAF2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AFAF30  7D 89 03 A6 */	mtctr r12
/* 80AFAF34  4E 80 04 21 */	bctrl 
/* 80AFAF38  7F C3 F3 78 */	mr r3, r30
/* 80AFAF3C  48 00 02 89 */	bl lookat__10daNpcThe_cFv
/* 80AFAF40  C0 1F 03 24 */	lfs f0, 0x324(r31)
/* 80AFAF44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AFAF48  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80AFAF4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AFAF50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AFAF54  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AFAF58  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFAF5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AFAF60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AFAF64  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80AFAF68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFAF6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFAF70  4B 84 B5 41 */	bl PSMTXCopy
/* 80AFAF74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFAF78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFAF7C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AFAF80  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80AFAF84  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AFAF88  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80AFAF8C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80AFAF90  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80AFAF94  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFAF98  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AFAF9C  4B 84 BD D1 */	bl PSMTXMultVec
/* 80AFAFA0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80AFAFA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AFAFA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFAFAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFAFB0  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFAFB4  7C 85 23 78 */	mr r5, r4
/* 80AFAFB8  4B 84 BD B5 */	bl PSMTXMultVec
/* 80AFAFBC  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80AFAFC0  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFAFC4  4B 77 5C B1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80AFAFC8  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80AFAFCC  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80AFAFD0  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFAFD4  4B 77 5C 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AFAFD8  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80AFAFDC  80 9E 0C 0C */	lwz r4, 0xc0c(r30)
/* 80AFAFE0  28 04 00 00 */	cmplwi r4, 0
/* 80AFAFE4  41 82 01 70 */	beq lbl_80AFB154
/* 80AFAFE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80AFAFEC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AFAFF0  4B 76 BB 45 */	bl __mi__4cXyzCFRC3Vec
/* 80AFAFF4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80AFAFF8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80AFAFFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AFB000  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AFB004  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80AFB008  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80AFB00C  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 80AFB010  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80AFB014  7C 03 02 14 */	add r0, r3, r0
/* 80AFB018  7C 00 00 D0 */	neg r0, r0
/* 80AFB01C  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80AFB020  4B 76 C6 55 */	bl cM_atan2s__Fff
/* 80AFB024  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 80AFB028  7C 00 1A 14 */	add r0, r0, r3
/* 80AFB02C  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80AFB030  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80AFB034  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AFB038  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80AFB03C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AFB040  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80AFB044  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AFB048  38 61 00 0C */	addi r3, r1, 0xc
/* 80AFB04C  4B 84 C0 ED */	bl PSVECSquareMag
/* 80AFB050  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80AFB054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFB058  40 81 00 58 */	ble lbl_80AFB0B0
/* 80AFB05C  FC 00 08 34 */	frsqrte f0, f1
/* 80AFB060  C8 9F 03 28 */	lfd f4, 0x328(r31)
/* 80AFB064  FC 44 00 32 */	fmul f2, f4, f0
/* 80AFB068  C8 7F 03 30 */	lfd f3, 0x330(r31)
/* 80AFB06C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AFB070  FC 01 00 32 */	fmul f0, f1, f0
/* 80AFB074  FC 03 00 28 */	fsub f0, f3, f0
/* 80AFB078  FC 02 00 32 */	fmul f0, f2, f0
/* 80AFB07C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AFB080  FC 00 00 32 */	fmul f0, f0, f0
/* 80AFB084  FC 01 00 32 */	fmul f0, f1, f0
/* 80AFB088  FC 03 00 28 */	fsub f0, f3, f0
/* 80AFB08C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AFB090  FC 44 00 32 */	fmul f2, f4, f0
/* 80AFB094  FC 00 00 32 */	fmul f0, f0, f0
/* 80AFB098  FC 01 00 32 */	fmul f0, f1, f0
/* 80AFB09C  FC 03 00 28 */	fsub f0, f3, f0
/* 80AFB0A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80AFB0A4  FC 41 00 32 */	fmul f2, f1, f0
/* 80AFB0A8  FC 40 10 18 */	frsp f2, f2
/* 80AFB0AC  48 00 00 90 */	b lbl_80AFB13C
lbl_80AFB0B0:
/* 80AFB0B0  C8 1F 03 38 */	lfd f0, 0x338(r31)
/* 80AFB0B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFB0B8  40 80 00 10 */	bge lbl_80AFB0C8
/* 80AFB0BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AFB0C0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AFB0C4  48 00 00 78 */	b lbl_80AFB13C
lbl_80AFB0C8:
/* 80AFB0C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AFB0CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80AFB0D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AFB0D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AFB0D8  7C 03 00 00 */	cmpw r3, r0
/* 80AFB0DC  41 82 00 14 */	beq lbl_80AFB0F0
/* 80AFB0E0  40 80 00 40 */	bge lbl_80AFB120
/* 80AFB0E4  2C 03 00 00 */	cmpwi r3, 0
/* 80AFB0E8  41 82 00 20 */	beq lbl_80AFB108
/* 80AFB0EC  48 00 00 34 */	b lbl_80AFB120
lbl_80AFB0F0:
/* 80AFB0F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AFB0F4  41 82 00 0C */	beq lbl_80AFB100
/* 80AFB0F8  38 00 00 01 */	li r0, 1
/* 80AFB0FC  48 00 00 28 */	b lbl_80AFB124
lbl_80AFB100:
/* 80AFB100  38 00 00 02 */	li r0, 2
/* 80AFB104  48 00 00 20 */	b lbl_80AFB124
lbl_80AFB108:
/* 80AFB108  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AFB10C  41 82 00 0C */	beq lbl_80AFB118
/* 80AFB110  38 00 00 05 */	li r0, 5
/* 80AFB114  48 00 00 10 */	b lbl_80AFB124
lbl_80AFB118:
/* 80AFB118  38 00 00 03 */	li r0, 3
/* 80AFB11C  48 00 00 08 */	b lbl_80AFB124
lbl_80AFB120:
/* 80AFB120  38 00 00 04 */	li r0, 4
lbl_80AFB124:
/* 80AFB124  2C 00 00 01 */	cmpwi r0, 1
/* 80AFB128  40 82 00 10 */	bne lbl_80AFB138
/* 80AFB12C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AFB130  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AFB134  48 00 00 08 */	b lbl_80AFB13C
lbl_80AFB138:
/* 80AFB138  FC 40 08 90 */	fmr f2, f1
lbl_80AFB13C:
/* 80AFB13C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AFB140  4B 76 C5 35 */	bl cM_atan2s__Fff
/* 80AFB144  A8 1E 09 02 */	lha r0, 0x902(r30)
/* 80AFB148  7C 03 00 50 */	subf r0, r3, r0
/* 80AFB14C  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80AFB150  48 00 00 10 */	b lbl_80AFB160
lbl_80AFB154:
/* 80AFB154  38 00 00 00 */	li r0, 0
/* 80AFB158  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80AFB15C  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_80AFB160:
/* 80AFB160  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80AFB164  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80AFB168  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AFB16C  EC 21 00 2A */	fadds f1, f1, f0
/* 80AFB170  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AFB174  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AFB178  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80AFB17C  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80AFB180  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 80AFB184  28 00 00 00 */	cmplwi r0, 0
/* 80AFB188  40 82 00 24 */	bne lbl_80AFB1AC
/* 80AFB18C  38 7E 0D B8 */	addi r3, r30, 0xdb8
/* 80AFB190  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AFB194  4B 77 40 49 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AFB198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFB19C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFB1A0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AFB1A4  38 9E 0C 94 */	addi r4, r30, 0xc94
/* 80AFB1A8  4B 76 9A 01 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AFB1AC:
/* 80AFB1AC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80AFB1B0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80AFB1B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AFB1B8  7C 08 03 A6 */	mtlr r0
/* 80AFB1BC  38 21 00 50 */	addi r1, r1, 0x50
/* 80AFB1C0  4E 80 00 20 */	blr 
