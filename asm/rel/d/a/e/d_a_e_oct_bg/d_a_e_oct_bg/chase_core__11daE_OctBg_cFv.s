lbl_80737678:
/* 80737678  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8073767C  7C 08 02 A6 */	mflr r0
/* 80737680  90 01 00 84 */	stw r0, 0x84(r1)
/* 80737684  39 61 00 80 */	addi r11, r1, 0x80
/* 80737688  4B C2 AB 50 */	b _savegpr_28
/* 8073768C  7C 7D 1B 78 */	mr r29, r3
/* 80737690  3C 60 80 74 */	lis r3, cNullVec__6Z2Calc@ha
/* 80737694  3B C3 9E 54 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80737698  3C 60 80 74 */	lis r3, lit_3768@ha
/* 8073769C  3B E3 9D 60 */	addi r31, r3, lit_3768@l
/* 807376A0  80 1D 0B 70 */	lwz r0, 0xb70(r29)
/* 807376A4  2C 00 00 00 */	cmpwi r0, 0
/* 807376A8  40 82 00 50 */	bne lbl_807376F8
/* 807376AC  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 807376B0  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l
/* 807376B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807376B8  4B B3 02 9C */	b cM_rndF__Ff
/* 807376BC  7F A3 EB 78 */	mr r3, r29
/* 807376C0  38 9D 06 60 */	addi r4, r29, 0x660
/* 807376C4  4B FF FE B1 */	bl setChasePos__11daE_OctBg_cFR4cXyzf
/* 807376C8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 807376CC  4B B3 02 C0 */	b cM_rndFX__Ff
/* 807376D0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807376D4  EC 00 08 2A */	fadds f0, f0, f1
/* 807376D8  FC 00 00 1E */	fctiwz f0, f0
/* 807376DC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 807376E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807376E4  98 1D 0B AF */	stb r0, 0xbaf(r29)
/* 807376E8  80 7D 0B 70 */	lwz r3, 0xb70(r29)
/* 807376EC  38 03 00 01 */	addi r0, r3, 1
/* 807376F0  90 1D 0B 70 */	stw r0, 0xb70(r29)
/* 807376F4  48 00 05 3C */	b lbl_80737C30
lbl_807376F8:
/* 807376F8  2C 00 FF FF */	cmpwi r0, -1
/* 807376FC  41 82 05 34 */	beq lbl_80737C30
/* 80737700  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80737704  38 81 00 10 */	addi r4, r1, 0x10
/* 80737708  4B 8E 22 B4 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8073770C  2C 03 00 00 */	cmpwi r3, 0
/* 80737710  41 82 00 10 */	beq lbl_80737720
/* 80737714  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80737718  28 04 00 00 */	cmplwi r4, 0
/* 8073771C  40 82 00 2C */	bne lbl_80737748
lbl_80737720:
/* 80737720  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 80737724  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 80737728  90 61 00 44 */	stw r3, 0x44(r1)
/* 8073772C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80737730  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 80737734  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80737738  7F A3 EB 78 */	mr r3, r29
/* 8073773C  38 81 00 44 */	addi r4, r1, 0x44
/* 80737740  4B FF EB 2D */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 80737744  48 00 04 EC */	b lbl_80737C30
lbl_80737748:
/* 80737748  C0 44 04 D4 */	lfs f2, 0x4d4(r4)
/* 8073774C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80737750  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 80737754  3B 83 A1 4C */	addi r28, r3, struct_8073A14C+0x0@l
/* 80737758  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8073775C  EC 01 00 2A */	fadds f0, f1, f0
/* 80737760  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80737764  40 80 00 4C */	bge lbl_807377B0
/* 80737768  38 61 00 38 */	addi r3, r1, 0x38
/* 8073776C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80737770  38 BD 06 60 */	addi r5, r29, 0x660
/* 80737774  4B B2 F3 70 */	b __pl__4cXyzCFRC3Vec
/* 80737778  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8073777C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80737780  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80737784  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80737788  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8073778C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80737790  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80737794  4B B3 01 C0 */	b cM_rndF__Ff
/* 80737798  C0 5D 04 AC */	lfs f2, 0x4ac(r29)
/* 8073779C  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 807377A0  EC 02 00 2A */	fadds f0, f2, f0
/* 807377A4  EC 00 08 2A */	fadds f0, f0, f1
/* 807377A8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807377AC  48 00 00 2C */	b lbl_807377D8
lbl_807377B0:
/* 807377B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807377B4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 807377B8  38 BD 06 60 */	addi r5, r29, 0x660
/* 807377BC  4B B2 F3 28 */	b __pl__4cXyzCFRC3Vec
/* 807377C0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807377C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807377C8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807377CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807377D0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807377D4  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_807377D8:
/* 807377D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807377DC  38 81 00 50 */	addi r4, r1, 0x50
/* 807377E0  4B B3 94 24 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807377E4  B0 7D 0B 96 */	sth r3, 0xb96(r29)
/* 807377E8  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 807377EC  A8 1D 0B 96 */	lha r0, 0xb96(r29)
/* 807377F0  7C 03 00 50 */	subf r0, r3, r0
/* 807377F4  B0 1D 0B 8C */	sth r0, 0xb8c(r29)
/* 807377F8  A8 7D 0B 96 */	lha r3, 0xb96(r29)
/* 807377FC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80737800  7C 63 00 50 */	subf r3, r3, r0
/* 80737804  4B C2 D8 CC */	b abs
/* 80737808  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8073780C  40 81 01 B0 */	ble lbl_807379BC
/* 80737810  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80737814  A8 9D 0B 96 */	lha r4, 0xb96(r29)
/* 80737818  38 A0 04 00 */	li r5, 0x400
/* 8073781C  4B B3 93 74 */	b cLib_chaseAngleS__FPsss
/* 80737820  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80737824  38 81 00 50 */	addi r4, r1, 0x50
/* 80737828  4B B3 94 4C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8073782C  7C 03 00 D0 */	neg r0, r3
/* 80737830  7C 04 07 34 */	extsh r4, r0
/* 80737834  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80737838  38 A0 04 00 */	li r5, 0x400
/* 8073783C  4B B3 93 54 */	b cLib_chaseAngleS__FPsss
/* 80737840  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80737844  38 81 00 50 */	addi r4, r1, 0x50
/* 80737848  4B C0 FB 54 */	b PSVECSquareDistance
/* 8073784C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80737850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80737854  40 81 00 58 */	ble lbl_807378AC
/* 80737858  FC 00 08 34 */	frsqrte f0, f1
/* 8073785C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80737860  FC 44 00 32 */	fmul f2, f4, f0
/* 80737864  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80737868  FC 00 00 32 */	fmul f0, f0, f0
/* 8073786C  FC 01 00 32 */	fmul f0, f1, f0
/* 80737870  FC 03 00 28 */	fsub f0, f3, f0
/* 80737874  FC 02 00 32 */	fmul f0, f2, f0
/* 80737878  FC 44 00 32 */	fmul f2, f4, f0
/* 8073787C  FC 00 00 32 */	fmul f0, f0, f0
/* 80737880  FC 01 00 32 */	fmul f0, f1, f0
/* 80737884  FC 03 00 28 */	fsub f0, f3, f0
/* 80737888  FC 02 00 32 */	fmul f0, f2, f0
/* 8073788C  FC 44 00 32 */	fmul f2, f4, f0
/* 80737890  FC 00 00 32 */	fmul f0, f0, f0
/* 80737894  FC 01 00 32 */	fmul f0, f1, f0
/* 80737898  FC 03 00 28 */	fsub f0, f3, f0
/* 8073789C  FC 02 00 32 */	fmul f0, f2, f0
/* 807378A0  FC 21 00 32 */	fmul f1, f1, f0
/* 807378A4  FC 20 08 18 */	frsp f1, f1
/* 807378A8  48 00 00 88 */	b lbl_80737930
lbl_807378AC:
/* 807378AC  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 807378B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807378B4  40 80 00 10 */	bge lbl_807378C4
/* 807378B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807378BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807378C0  48 00 00 70 */	b lbl_80737930
lbl_807378C4:
/* 807378C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807378C8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807378CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807378D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807378D4  7C 03 00 00 */	cmpw r3, r0
/* 807378D8  41 82 00 14 */	beq lbl_807378EC
/* 807378DC  40 80 00 40 */	bge lbl_8073791C
/* 807378E0  2C 03 00 00 */	cmpwi r3, 0
/* 807378E4  41 82 00 20 */	beq lbl_80737904
/* 807378E8  48 00 00 34 */	b lbl_8073791C
lbl_807378EC:
/* 807378EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807378F0  41 82 00 0C */	beq lbl_807378FC
/* 807378F4  38 00 00 01 */	li r0, 1
/* 807378F8  48 00 00 28 */	b lbl_80737920
lbl_807378FC:
/* 807378FC  38 00 00 02 */	li r0, 2
/* 80737900  48 00 00 20 */	b lbl_80737920
lbl_80737904:
/* 80737904  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80737908  41 82 00 0C */	beq lbl_80737914
/* 8073790C  38 00 00 05 */	li r0, 5
/* 80737910  48 00 00 10 */	b lbl_80737920
lbl_80737914:
/* 80737914  38 00 00 03 */	li r0, 3
/* 80737918  48 00 00 08 */	b lbl_80737920
lbl_8073791C:
/* 8073791C  38 00 00 04 */	li r0, 4
lbl_80737920:
/* 80737920  2C 00 00 01 */	cmpwi r0, 1
/* 80737924  40 82 00 0C */	bne lbl_80737930
/* 80737928  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8073792C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80737930:
/* 80737930  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 80737934  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l
/* 80737938  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 8073793C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80737940  EC 02 00 28 */	fsubs f0, f2, f0
/* 80737944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80737948  40 80 02 1C */	bge lbl_80737B64
/* 8073794C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737950  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737954  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80737958  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8073795C  7C 63 02 14 */	add r3, r3, r0
/* 80737960  C0 23 00 04 */	lfs f1, 4(r3)
/* 80737964  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80737968  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8073796C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737970  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80737974  4B B3 8D CC */	b cLib_chaseF__FPfff
/* 80737978  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8073797C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80737980  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737984  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737988  7C 23 04 2E */	lfsx f1, r3, r0
/* 8073798C  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80737990  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80737994  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737998  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8073799C  4B B3 8D A4 */	b cLib_chaseF__FPfff
/* 807379A0  38 7D 0B 80 */	addi r3, r29, 0xb80
/* 807379A4  38 80 0C 00 */	li r4, 0xc00
/* 807379A8  38 A0 00 20 */	li r5, 0x20
/* 807379AC  38 C0 04 00 */	li r6, 0x400
/* 807379B0  38 E0 00 80 */	li r7, 0x80
/* 807379B4  4B B3 8B 8C */	b cLib_addCalcAngleS__FPsssss
/* 807379B8  48 00 01 AC */	b lbl_80737B64
lbl_807379BC:
/* 807379BC  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807379C0  A8 9D 0B 96 */	lha r4, 0xb96(r29)
/* 807379C4  38 A0 02 00 */	li r5, 0x200
/* 807379C8  4B B3 91 C8 */	b cLib_chaseAngleS__FPsss
/* 807379CC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807379D0  38 81 00 50 */	addi r4, r1, 0x50
/* 807379D4  4B B3 92 A0 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 807379D8  7C 03 00 D0 */	neg r0, r3
/* 807379DC  7C 04 07 34 */	extsh r4, r0
/* 807379E0  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 807379E4  38 A0 02 00 */	li r5, 0x200
/* 807379E8  4B B3 91 A8 */	b cLib_chaseAngleS__FPsss
/* 807379EC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807379F0  38 81 00 50 */	addi r4, r1, 0x50
/* 807379F4  4B C0 F9 A8 */	b PSVECSquareDistance
/* 807379F8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 807379FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80737A00  40 81 00 58 */	ble lbl_80737A58
/* 80737A04  FC 00 08 34 */	frsqrte f0, f1
/* 80737A08  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80737A0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80737A10  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80737A14  FC 00 00 32 */	fmul f0, f0, f0
/* 80737A18  FC 01 00 32 */	fmul f0, f1, f0
/* 80737A1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80737A20  FC 02 00 32 */	fmul f0, f2, f0
/* 80737A24  FC 44 00 32 */	fmul f2, f4, f0
/* 80737A28  FC 00 00 32 */	fmul f0, f0, f0
/* 80737A2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80737A30  FC 03 00 28 */	fsub f0, f3, f0
/* 80737A34  FC 02 00 32 */	fmul f0, f2, f0
/* 80737A38  FC 44 00 32 */	fmul f2, f4, f0
/* 80737A3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80737A40  FC 01 00 32 */	fmul f0, f1, f0
/* 80737A44  FC 03 00 28 */	fsub f0, f3, f0
/* 80737A48  FC 02 00 32 */	fmul f0, f2, f0
/* 80737A4C  FC 21 00 32 */	fmul f1, f1, f0
/* 80737A50  FC 20 08 18 */	frsp f1, f1
/* 80737A54  48 00 00 88 */	b lbl_80737ADC
lbl_80737A58:
/* 80737A58  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80737A5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80737A60  40 80 00 10 */	bge lbl_80737A70
/* 80737A64  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80737A68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80737A6C  48 00 00 70 */	b lbl_80737ADC
lbl_80737A70:
/* 80737A70  D0 21 00 08 */	stfs f1, 8(r1)
/* 80737A74  80 81 00 08 */	lwz r4, 8(r1)
/* 80737A78  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80737A7C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80737A80  7C 03 00 00 */	cmpw r3, r0
/* 80737A84  41 82 00 14 */	beq lbl_80737A98
/* 80737A88  40 80 00 40 */	bge lbl_80737AC8
/* 80737A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80737A90  41 82 00 20 */	beq lbl_80737AB0
/* 80737A94  48 00 00 34 */	b lbl_80737AC8
lbl_80737A98:
/* 80737A98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80737A9C  41 82 00 0C */	beq lbl_80737AA8
/* 80737AA0  38 00 00 01 */	li r0, 1
/* 80737AA4  48 00 00 28 */	b lbl_80737ACC
lbl_80737AA8:
/* 80737AA8  38 00 00 02 */	li r0, 2
/* 80737AAC  48 00 00 20 */	b lbl_80737ACC
lbl_80737AB0:
/* 80737AB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80737AB4  41 82 00 0C */	beq lbl_80737AC0
/* 80737AB8  38 00 00 05 */	li r0, 5
/* 80737ABC  48 00 00 10 */	b lbl_80737ACC
lbl_80737AC0:
/* 80737AC0  38 00 00 03 */	li r0, 3
/* 80737AC4  48 00 00 08 */	b lbl_80737ACC
lbl_80737AC8:
/* 80737AC8  38 00 00 04 */	li r0, 4
lbl_80737ACC:
/* 80737ACC  2C 00 00 01 */	cmpwi r0, 1
/* 80737AD0  40 82 00 0C */	bne lbl_80737ADC
/* 80737AD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80737AD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80737ADC:
/* 80737ADC  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 80737AE0  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l
/* 80737AE4  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80737AE8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80737AEC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80737AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80737AF4  40 81 00 70 */	ble lbl_80737B64
/* 80737AF8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737AFC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737B00  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80737B04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80737B08  7C 63 02 14 */	add r3, r3, r0
/* 80737B0C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80737B10  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80737B14  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80737B18  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737B1C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80737B20  4B B3 8C 20 */	b cLib_chaseF__FPfff
/* 80737B24  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80737B28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80737B2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80737B30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80737B34  7C 23 04 2E */	lfsx f1, r3, r0
/* 80737B38  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80737B3C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80737B40  EC 20 00 72 */	fmuls f1, f0, f1
/* 80737B44  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80737B48  4B B3 8B F8 */	b cLib_chaseF__FPfff
/* 80737B4C  38 7D 0B 80 */	addi r3, r29, 0xb80
/* 80737B50  38 80 24 00 */	li r4, 0x2400
/* 80737B54  38 A0 00 20 */	li r5, 0x20
/* 80737B58  38 C0 04 00 */	li r6, 0x400
/* 80737B5C  38 E0 00 80 */	li r7, 0x80
/* 80737B60  4B B3 89 E0 */	b cLib_addCalcAngleS__FPsssss
lbl_80737B64:
/* 80737B64  A8 7D 0B 7C */	lha r3, 0xb7c(r29)
/* 80737B68  A8 1D 0B 80 */	lha r0, 0xb80(r29)
/* 80737B6C  7C 03 02 14 */	add r0, r3, r0
/* 80737B70  B0 1D 0B 7C */	sth r0, 0xb7c(r29)
/* 80737B74  7F A3 EB 78 */	mr r3, r29
/* 80737B78  4B FF FA B5 */	bl checkCoreFishAttack__11daE_OctBg_cFv
/* 80737B7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80737B80  41 82 00 2C */	beq lbl_80737BAC
/* 80737B84  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80737B88  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 80737B8C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80737B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80737B94  80 1E 01 14 */	lwz r0, 0x114(r30)
/* 80737B98  90 01 00 28 */	stw r0, 0x28(r1)
/* 80737B9C  7F A3 EB 78 */	mr r3, r29
/* 80737BA0  38 81 00 20 */	addi r4, r1, 0x20
/* 80737BA4  4B FF E6 C9 */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 80737BA8  48 00 00 88 */	b lbl_80737C30
lbl_80737BAC:
/* 80737BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80737BB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80737BB4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80737BB8  28 00 00 00 */	cmplwi r0, 0
/* 80737BBC  41 82 00 2C */	beq lbl_80737BE8
/* 80737BC0  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 80737BC4  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 80737BC8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80737BCC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80737BD0  80 1E 01 20 */	lwz r0, 0x120(r30)
/* 80737BD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80737BD8  7F A3 EB 78 */	mr r3, r29
/* 80737BDC  38 81 00 14 */	addi r4, r1, 0x14
/* 80737BE0  4B FF E6 8D */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 80737BE4  48 00 00 4C */	b lbl_80737C30
lbl_80737BE8:
/* 80737BE8  88 1D 0B AF */	lbz r0, 0xbaf(r29)
/* 80737BEC  28 00 00 00 */	cmplwi r0, 0
/* 80737BF0  40 82 00 40 */	bne lbl_80737C30
/* 80737BF4  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 80737BF8  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l
/* 80737BFC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80737C00  4B B2 FD 54 */	b cM_rndF__Ff
/* 80737C04  7F A3 EB 78 */	mr r3, r29
/* 80737C08  38 9D 06 60 */	addi r4, r29, 0x660
/* 80737C0C  4B FF F9 69 */	bl setChasePos__11daE_OctBg_cFR4cXyzf
/* 80737C10  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80737C14  4B B2 FD 78 */	b cM_rndFX__Ff
/* 80737C18  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80737C1C  EC 00 08 2A */	fadds f0, f0, f1
/* 80737C20  FC 00 00 1E */	fctiwz f0, f0
/* 80737C24  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80737C28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80737C2C  98 1D 0B AF */	stb r0, 0xbaf(r29)
lbl_80737C30:
/* 80737C30  39 61 00 80 */	addi r11, r1, 0x80
/* 80737C34  4B C2 A5 F0 */	b _restgpr_28
/* 80737C38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80737C3C  7C 08 03 A6 */	mtlr r0
/* 80737C40  38 21 00 80 */	addi r1, r1, 0x80
/* 80737C44  4E 80 00 20 */	blr 
