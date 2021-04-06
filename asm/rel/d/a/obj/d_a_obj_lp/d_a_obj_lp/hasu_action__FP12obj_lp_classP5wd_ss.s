lbl_80C546D8:
/* 80C546D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C546DC  7C 08 02 A6 */	mflr r0
/* 80C546E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C546E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C546E8  4B 70 DA F5 */	bl _savegpr_29
/* 80C546EC  7C 7D 1B 78 */	mr r29, r3
/* 80C546F0  7C 9E 23 78 */	mr r30, r4
/* 80C546F4  3C A0 80 C5 */	lis r5, lit_3916@ha /* 0x80C55A10@ha */
/* 80C546F8  3B E5 5A 10 */	addi r31, r5, lit_3916@l /* 0x80C55A10@l */
/* 80C546FC  4B FF FC 79 */	bl hit_check__FP12obj_lp_classP5wd_ss
/* 80C54700  2C 03 00 00 */	cmpwi r3, 0
/* 80C54704  40 82 00 78 */	bne lbl_80C5477C
/* 80C54708  38 7E 00 28 */	addi r3, r30, 0x28
/* 80C5470C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C54710  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C54714  4B 61 B3 6D */	bl cLib_addCalc0__FPfff
/* 80C54718  38 7E 00 34 */	addi r3, r30, 0x34
/* 80C5471C  38 80 00 00 */	li r4, 0
/* 80C54720  38 A0 00 30 */	li r5, 0x30
/* 80C54724  38 C0 00 64 */	li r6, 0x64
/* 80C54728  4B 61 BE E1 */	bl cLib_addCalcAngleS2__FPssss
/* 80C5472C  38 7E 00 36 */	addi r3, r30, 0x36
/* 80C54730  38 80 00 00 */	li r4, 0
/* 80C54734  38 A0 00 20 */	li r5, 0x20
/* 80C54738  38 C0 00 C8 */	li r6, 0xc8
/* 80C5473C  4B 61 BE CD */	bl cLib_addCalcAngleS2__FPssss
/* 80C54740  38 7E 00 10 */	addi r3, r30, 0x10
/* 80C54744  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C54748  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80C5474C  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C54750  4B 61 B2 ED */	bl cLib_addCalc2__FPffff
/* 80C54754  38 7E 00 18 */	addi r3, r30, 0x18
/* 80C54758  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C5475C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80C54760  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C54764  4B 61 B2 D9 */	bl cLib_addCalc2__FPffff
/* 80C54768  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C5476C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80C54770  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C54774  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80C54778  4B 61 B2 C5 */	bl cLib_addCalc2__FPffff
lbl_80C5477C:
/* 80C5477C  38 61 00 0C */	addi r3, r1, 0xc
/* 80C54780  3C 9D 00 01 */	addis r4, r29, 1
/* 80C54784  38 84 AD 9C */	addi r4, r4, -21092
/* 80C54788  38 BE 00 10 */	addi r5, r30, 0x10
/* 80C5478C  4B 61 23 A9 */	bl __mi__4cXyzCFRC3Vec
/* 80C54790  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C54794  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C54798  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C5479C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C547A0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C547A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C547A8  38 61 00 24 */	addi r3, r1, 0x24
/* 80C547AC  4B 6F 29 8D */	bl PSVECSquareMag
/* 80C547B0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C547B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C547B8  40 81 00 58 */	ble lbl_80C54810
/* 80C547BC  FC 00 08 34 */	frsqrte f0, f1
/* 80C547C0  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80C547C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C547C8  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80C547CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C547D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C547D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C547D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C547DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C547E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C547E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C547E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C547EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C547F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C547F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C547F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C547FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C54800  FC 02 00 32 */	fmul f0, f2, f0
/* 80C54804  FC 21 00 32 */	fmul f1, f1, f0
/* 80C54808  FC 20 08 18 */	frsp f1, f1
/* 80C5480C  48 00 00 88 */	b lbl_80C54894
lbl_80C54810:
/* 80C54810  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80C54814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54818  40 80 00 10 */	bge lbl_80C54828
/* 80C5481C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C54820  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C54824  48 00 00 70 */	b lbl_80C54894
lbl_80C54828:
/* 80C54828  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C5482C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C54830  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C54834  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C54838  7C 03 00 00 */	cmpw r3, r0
/* 80C5483C  41 82 00 14 */	beq lbl_80C54850
/* 80C54840  40 80 00 40 */	bge lbl_80C54880
/* 80C54844  2C 03 00 00 */	cmpwi r3, 0
/* 80C54848  41 82 00 20 */	beq lbl_80C54868
/* 80C5484C  48 00 00 34 */	b lbl_80C54880
lbl_80C54850:
/* 80C54850  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C54854  41 82 00 0C */	beq lbl_80C54860
/* 80C54858  38 00 00 01 */	li r0, 1
/* 80C5485C  48 00 00 28 */	b lbl_80C54884
lbl_80C54860:
/* 80C54860  38 00 00 02 */	li r0, 2
/* 80C54864  48 00 00 20 */	b lbl_80C54884
lbl_80C54868:
/* 80C54868  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C5486C  41 82 00 0C */	beq lbl_80C54878
/* 80C54870  38 00 00 05 */	li r0, 5
/* 80C54874  48 00 00 10 */	b lbl_80C54884
lbl_80C54878:
/* 80C54878  38 00 00 03 */	li r0, 3
/* 80C5487C  48 00 00 08 */	b lbl_80C54884
lbl_80C54880:
/* 80C54880  38 00 00 04 */	li r0, 4
lbl_80C54884:
/* 80C54884  2C 00 00 01 */	cmpwi r0, 1
/* 80C54888  40 82 00 0C */	bne lbl_80C54894
/* 80C5488C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C54890  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C54894:
/* 80C54894  3C 7D 00 01 */	addis r3, r29, 1
/* 80C54898  C0 03 AD AC */	lfs f0, -0x5254(r3)
/* 80C5489C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C548A0  FC 00 02 10 */	fabs f0, f0
/* 80C548A4  FC 20 00 18 */	frsp f1, f0
/* 80C548A8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C548AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C548B0  40 80 00 3C */	bge lbl_80C548EC
/* 80C548B4  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80C548B8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C548BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C548C0  40 80 00 2C */	bge lbl_80C548EC
/* 80C548C4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C548C8  C0 03 AD A8 */	lfs f0, -0x5258(r3)
/* 80C548CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C548D0  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80C548D4  38 00 00 00 */	li r0, 0
/* 80C548D8  B0 1E 00 40 */	sth r0, 0x40(r30)
/* 80C548DC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C548E0  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80C548E4  4B 61 2D 91 */	bl cM_atan2s__Fff
/* 80C548E8  B0 7E 00 42 */	sth r3, 0x42(r30)
lbl_80C548EC:
/* 80C548EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C548F0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C548F4  A8 1E 00 40 */	lha r0, 0x40(r30)
/* 80C548F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C548FC  7C 64 02 14 */	add r3, r4, r0
/* 80C54900  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C54904  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80C54908  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C5490C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C54910  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80C54914  A8 1E 00 40 */	lha r0, 0x40(r30)
/* 80C54918  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C5491C  7C 44 04 2E */	lfsx f2, r4, r0
/* 80C54920  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C54924  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80C54928  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C5492C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C54930  FC 00 00 1E */	fctiwz f0, f0
/* 80C54934  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C54938  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C5493C  B0 1E 00 44 */	sth r0, 0x44(r30)
/* 80C54940  A8 7E 00 40 */	lha r3, 0x40(r30)
/* 80C54944  38 03 09 C4 */	addi r0, r3, 0x9c4
/* 80C54948  B0 1E 00 40 */	sth r0, 0x40(r30)
/* 80C5494C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80C54950  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C54954  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C54958  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80C5495C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C54960  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C54964  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80C54968  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80C5496C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80C54970  EC 42 00 2A */	fadds f2, f2, f0
/* 80C54974  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80C54978  4B 6F 1F 71 */	bl PSMTXTrans
/* 80C5497C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C54980  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C54984  A8 9E 00 42 */	lha r4, 0x42(r30)
/* 80C54988  4B 3B 7A AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80C5498C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C54990  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C54994  A8 9E 00 44 */	lha r4, 0x44(r30)
/* 80C54998  4B 3B 7A 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C5499C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C549A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C549A4  A8 9E 00 42 */	lha r4, 0x42(r30)
/* 80C549A8  A8 1E 00 34 */	lha r0, 0x34(r30)
/* 80C549AC  7C 04 00 50 */	subf r0, r4, r0
/* 80C549B0  7C 04 07 34 */	extsh r4, r0
/* 80C549B4  4B 3B 7A 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C549B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C549BC  FC 40 08 90 */	fmr f2, f1
/* 80C549C0  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 80C549C4  4B 3B 83 D9 */	bl transM__14mDoMtx_stack_cFfff
/* 80C549C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C549CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C549D0  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 80C549D4  4B 3B 79 C9 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C549D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C549DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C549E0  A8 9E 00 38 */	lha r4, 0x38(r30)
/* 80C549E4  4B 3B 7A 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C549E8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C549EC  FC 40 08 90 */	fmr f2, f1
/* 80C549F0  FC 60 08 90 */	fmr f3, f1
/* 80C549F4  4B 3B 84 45 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C549F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C549FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C54A00  80 9E 00 00 */	lwz r4, 0(r30)
/* 80C54A04  38 84 00 24 */	addi r4, r4, 0x24
/* 80C54A08  4B 6F 1A A9 */	bl PSMTXCopy
/* 80C54A0C  3C 9D 00 01 */	addis r4, r29, 1
/* 80C54A10  88 04 AD B1 */	lbz r0, -0x524f(r4)
/* 80C54A14  28 00 00 00 */	cmplwi r0, 0
/* 80C54A18  41 82 00 F0 */	beq lbl_80C54B08
/* 80C54A1C  88 04 AD B2 */	lbz r0, -0x524e(r4)
/* 80C54A20  28 00 00 00 */	cmplwi r0, 0
/* 80C54A24  40 82 00 E4 */	bne lbl_80C54B08
/* 80C54A28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C54A2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C54A30  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C54A34  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C54A38  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C54A3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C54A40  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C54A44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C54A48  80 64 AD 94 */	lwz r3, -0x526c(r4)
/* 80C54A4C  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80C54A50  54 00 28 34 */	slwi r0, r0, 5
/* 80C54A54  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C54A58  38 80 00 00 */	li r4, 0
/* 80C54A5C  38 00 00 03 */	li r0, 3
/* 80C54A60  7C 09 03 A6 */	mtctr r0
lbl_80C54A64:
/* 80C54A64  2C 04 00 00 */	cmpwi r4, 0
/* 80C54A68  40 82 00 20 */	bne lbl_80C54A88
/* 80C54A6C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C54A70  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C54A74  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C54A78  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C54A7C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C54A80  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C54A84  48 00 00 78 */	b lbl_80C54AFC
lbl_80C54A88:
/* 80C54A88  2C 04 00 02 */	cmpwi r4, 2
/* 80C54A8C  40 82 00 20 */	bne lbl_80C54AAC
/* 80C54A90  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C54A94  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C54A98  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C54A9C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C54AA0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80C54AA4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C54AA8  48 00 00 54 */	b lbl_80C54AFC
lbl_80C54AAC:
/* 80C54AAC  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80C54AB0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80C54AB4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C54AB8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C54ABC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C54AC0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C54AC4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C54AC8  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80C54ACC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C54AD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C54AD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C54AD8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C54ADC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C54AE0  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80C54AE4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C54AE8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C54AEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C54AF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C54AF4  EC 02 00 2A */	fadds f0, f2, f0
/* 80C54AF8  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80C54AFC:
/* 80C54AFC  38 84 00 01 */	addi r4, r4, 1
/* 80C54B00  38 63 00 0C */	addi r3, r3, 0xc
/* 80C54B04  42 00 FF 60 */	bdnz lbl_80C54A64
lbl_80C54B08:
/* 80C54B08  39 61 00 50 */	addi r11, r1, 0x50
/* 80C54B0C  4B 70 D7 1D */	bl _restgpr_29
/* 80C54B10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C54B14  7C 08 03 A6 */	mtlr r0
/* 80C54B18  38 21 00 50 */	addi r1, r1, 0x50
/* 80C54B1C  4E 80 00 20 */	blr 
