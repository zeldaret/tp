lbl_806087A8:
/* 806087A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806087AC  7C 08 02 A6 */	mflr r0
/* 806087B0  90 01 00 74 */	stw r0, 0x74(r1)
/* 806087B4  39 61 00 70 */	addi r11, r1, 0x70
/* 806087B8  4B D5 9A 21 */	bl _savegpr_28
/* 806087BC  7C 7C 1B 78 */	mr r28, r3
/* 806087C0  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 806087C4  3B A3 FD E0 */	addi r29, r3, lit_3928@l /* 0x8060FDE0@l */
/* 806087C8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806087CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806087D0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806087D4  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 806087D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806087DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806087E0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806087E4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 806087E8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806087EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806087F0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806087F4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806087F8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806087FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80608800  38 61 00 4C */	addi r3, r1, 0x4c
/* 80608804  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80608808  4B C6 83 FD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8060880C  7C 7F 1B 78 */	mr r31, r3
/* 80608810  88 9C 0A FA */	lbz r4, 0xafa(r28)
/* 80608814  28 04 00 0A */	cmplwi r4, 0xa
/* 80608818  41 81 06 C8 */	bgt lbl_80608EE0
/* 8060881C  3C 60 80 61 */	lis r3, lit_5702@ha /* 0x806101F4@ha */
/* 80608820  38 63 01 F4 */	addi r3, r3, lit_5702@l /* 0x806101F4@l */
/* 80608824  54 80 10 3A */	slwi r0, r4, 2
/* 80608828  7C 03 00 2E */	lwzx r0, r3, r0
/* 8060882C  7C 09 03 A6 */	mtctr r0
/* 80608830  4E 80 04 20 */	bctr 
lbl_80608834:
/* 80608834  28 04 00 01 */	cmplwi r4, 1
/* 80608838  40 82 00 10 */	bne lbl_80608848
/* 8060883C  38 00 00 64 */	li r0, 0x64
/* 80608840  90 1C 0A A8 */	stw r0, 0xaa8(r28)
/* 80608844  48 00 00 14 */	b lbl_80608858
lbl_80608848:
/* 80608848  38 00 00 1E */	li r0, 0x1e
/* 8060884C  90 1C 0A A8 */	stw r0, 0xaa8(r28)
/* 80608850  38 00 00 01 */	li r0, 1
/* 80608854  98 1C 0A FA */	stb r0, 0xafa(r28)
lbl_80608858:
/* 80608858  7F 83 E3 78 */	mr r3, r28
/* 8060885C  38 80 00 06 */	li r4, 6
/* 80608860  4B FF F1 6D */	bl checkBck__9daB_MGN_cFi
/* 80608864  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80608868  41 82 00 28 */	beq lbl_80608890
/* 8060886C  7F 83 E3 78 */	mr r3, r28
/* 80608870  38 80 00 09 */	li r4, 9
/* 80608874  38 A0 00 02 */	li r5, 2
/* 80608878  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060887C  3C C0 80 61 */	lis r6, l_HIO@ha /* 0x80610450@ha */
/* 80608880  38 C6 04 50 */	addi r6, r6, l_HIO@l /* 0x80610450@l */
/* 80608884  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 80608888  4B FF F0 9D */	bl setBck__9daB_MGN_cFiUcff
/* 8060888C  48 00 00 4C */	b lbl_806088D8
lbl_80608890:
/* 80608890  7F 83 E3 78 */	mr r3, r28
/* 80608894  38 80 00 13 */	li r4, 0x13
/* 80608898  4B FF F1 35 */	bl checkBck__9daB_MGN_cFi
/* 8060889C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806088A0  40 82 00 38 */	bne lbl_806088D8
/* 806088A4  7F 83 E3 78 */	mr r3, r28
/* 806088A8  38 80 00 0C */	li r4, 0xc
/* 806088AC  4B FF F1 21 */	bl checkBck__9daB_MGN_cFi
/* 806088B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806088B4  40 82 00 24 */	bne lbl_806088D8
/* 806088B8  7F 83 E3 78 */	mr r3, r28
/* 806088BC  38 80 00 09 */	li r4, 9
/* 806088C0  38 A0 00 02 */	li r5, 2
/* 806088C4  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 806088C8  3C C0 80 61 */	lis r6, l_HIO@ha /* 0x80610450@ha */
/* 806088CC  38 C6 04 50 */	addi r6, r6, l_HIO@l /* 0x80610450@l */
/* 806088D0  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 806088D4  4B FF F0 51 */	bl setBck__9daB_MGN_cFiUcff
lbl_806088D8:
/* 806088D8  B3 FC 0A 90 */	sth r31, 0xa90(r28)
/* 806088DC  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 806088E0  A8 1C 0A 90 */	lha r0, 0xa90(r28)
/* 806088E4  7C 03 00 50 */	subf r0, r3, r0
/* 806088E8  7C 00 07 35 */	extsh. r0, r0
/* 806088EC  40 80 00 10 */	bge lbl_806088FC
/* 806088F0  38 00 08 00 */	li r0, 0x800
/* 806088F4  B0 1C 0A 92 */	sth r0, 0xa92(r28)
/* 806088F8  48 00 00 0C */	b lbl_80608904
lbl_806088FC:
/* 806088FC  38 00 F8 00 */	li r0, -2048
/* 80608900  B0 1C 0A 92 */	sth r0, 0xa92(r28)
lbl_80608904:
/* 80608904  A8 7C 0A 90 */	lha r3, 0xa90(r28)
/* 80608908  A8 1C 0A 92 */	lha r0, 0xa92(r28)
/* 8060890C  7C 03 02 14 */	add r0, r3, r0
/* 80608910  B0 1C 0A 90 */	sth r0, 0xa90(r28)
/* 80608914  88 7C 0A FA */	lbz r3, 0xafa(r28)
/* 80608918  38 03 00 02 */	addi r0, r3, 2
/* 8060891C  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80608920  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80608924  4B C5 F0 69 */	bl cM_rndFX__Ff
/* 80608928  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 8060892C  EC 00 08 2A */	fadds f0, f0, f1
/* 80608930  FC 00 00 1E */	fctiwz f0, f0
/* 80608934  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80608938  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8060893C  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 80608940  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 80608944  60 00 00 01 */	ori r0, r0, 1
/* 80608948  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 8060894C  38 00 00 02 */	li r0, 2
/* 80608950  98 1C 1F D0 */	stb r0, 0x1fd0(r28)
/* 80608954  3C 60 80 61 */	lis r3, l_HIO@ha /* 0x80610450@ha */
/* 80608958  38 63 04 50 */	addi r3, r3, l_HIO@l /* 0x80610450@l */
/* 8060895C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80608960  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80608964  38 00 00 00 */	li r0, 0
/* 80608968  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_8060896C:
/* 8060896C  7F 83 E3 78 */	mr r3, r28
/* 80608970  4B FF D4 09 */	bl setDashSmokeEffect__9daB_MGN_cFv
/* 80608974  7F 83 E3 78 */	mr r3, r28
/* 80608978  4B FF E9 25 */	bl setBloodEffect__9daB_MGN_cFv
lbl_8060897C:
/* 8060897C  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80608980  38 80 00 01 */	li r4, 1
/* 80608984  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80608988  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060898C  40 82 00 18 */	bne lbl_806089A4
/* 80608990  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80608994  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80608998  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060899C  41 82 00 08 */	beq lbl_806089A4
/* 806089A0  38 80 00 00 */	li r4, 0
lbl_806089A4:
/* 806089A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806089A8  41 82 00 44 */	beq lbl_806089EC
/* 806089AC  7F 83 E3 78 */	mr r3, r28
/* 806089B0  38 80 00 13 */	li r4, 0x13
/* 806089B4  4B FF F0 19 */	bl checkBck__9daB_MGN_cFi
/* 806089B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806089BC  40 82 00 18 */	bne lbl_806089D4
/* 806089C0  7F 83 E3 78 */	mr r3, r28
/* 806089C4  38 80 00 0C */	li r4, 0xc
/* 806089C8  4B FF F0 05 */	bl checkBck__9daB_MGN_cFi
/* 806089CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806089D0  41 82 00 1C */	beq lbl_806089EC
lbl_806089D4:
/* 806089D4  7F 83 E3 78 */	mr r3, r28
/* 806089D8  38 80 00 09 */	li r4, 9
/* 806089DC  38 A0 00 02 */	li r5, 2
/* 806089E0  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 806089E4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 806089E8  4B FF EF 3D */	bl setBck__9daB_MGN_cFiUcff
lbl_806089EC:
/* 806089EC  A8 1C 0A 90 */	lha r0, 0xa90(r28)
/* 806089F0  7C 1F 00 50 */	subf r0, r31, r0
/* 806089F4  7C 03 07 34 */	extsh r3, r0
/* 806089F8  4B D5 C6 D9 */	bl abs
/* 806089FC  2C 03 08 00 */	cmpwi r3, 0x800
/* 80608A00  40 80 00 14 */	bge lbl_80608A14
/* 80608A04  A8 7C 0A 90 */	lha r3, 0xa90(r28)
/* 80608A08  A8 1C 0A 92 */	lha r0, 0xa92(r28)
/* 80608A0C  7C 03 02 14 */	add r0, r3, r0
/* 80608A10  B0 1C 0A 90 */	sth r0, 0xa90(r28)
lbl_80608A14:
/* 80608A14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80608A18  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80608A1C  A8 1C 0A 90 */	lha r0, 0xa90(r28)
/* 80608A20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80608A24  7C 64 02 14 */	add r3, r4, r0
/* 80608A28  C0 43 00 04 */	lfs f2, 4(r3)
/* 80608A2C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80608A30  C0 3D 00 F0 */	lfs f1, 0xf0(r29)
/* 80608A34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80608A38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80608A3C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80608A40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80608A44  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80608A48  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80608A4C  38 61 00 40 */	addi r3, r1, 0x40
/* 80608A50  38 81 00 4C */	addi r4, r1, 0x4c
/* 80608A54  7C 65 1B 78 */	mr r5, r3
/* 80608A58  4B D3 E6 39 */	bl PSVECAdd
/* 80608A5C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80608A60  3C 80 80 61 */	lis r4, l_HIO@ha /* 0x80610450@ha */
/* 80608A64  38 84 04 50 */	addi r4, r4, l_HIO@l /* 0x80610450@l */
/* 80608A68  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80608A6C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80608A70  4B C6 7C D1 */	bl cLib_chaseF__FPfff
/* 80608A74  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80608A78  38 81 00 40 */	addi r4, r1, 0x40
/* 80608A7C  4B C6 81 89 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80608A80  7C 7E 1B 78 */	mr r30, r3
/* 80608A84  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80608A88  7F C4 F3 78 */	mr r4, r30
/* 80608A8C  38 A0 00 08 */	li r5, 8
/* 80608A90  38 C0 04 00 */	li r6, 0x400
/* 80608A94  4B C6 7B 75 */	bl cLib_addCalcAngleS2__FPssss
/* 80608A98  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80608A9C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80608AA0  7F 83 E3 78 */	mr r3, r28
/* 80608AA4  7F C4 F3 78 */	mr r4, r30
/* 80608AA8  4B FF FC 91 */	bl calcJointAngle__9daB_MGN_cFs
/* 80608AAC  88 1C 0A FA */	lbz r0, 0xafa(r28)
/* 80608AB0  28 00 00 02 */	cmplwi r0, 2
/* 80608AB4  40 82 01 64 */	bne lbl_80608C18
/* 80608AB8  80 1C 0A 9C */	lwz r0, 0xa9c(r28)
/* 80608ABC  2C 00 00 00 */	cmpwi r0, 0
/* 80608AC0  40 82 04 20 */	bne lbl_80608EE0
/* 80608AC4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80608AC8  38 81 00 34 */	addi r4, r1, 0x34
/* 80608ACC  4B D3 E8 D1 */	bl PSVECSquareDistance
/* 80608AD0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80608AD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80608AD8  40 81 00 58 */	ble lbl_80608B30
/* 80608ADC  FC 00 08 34 */	frsqrte f0, f1
/* 80608AE0  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 80608AE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80608AE8  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 80608AEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80608AF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80608AF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80608AF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80608AFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80608B00  FC 00 00 32 */	fmul f0, f0, f0
/* 80608B04  FC 01 00 32 */	fmul f0, f1, f0
/* 80608B08  FC 03 00 28 */	fsub f0, f3, f0
/* 80608B0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80608B10  FC 44 00 32 */	fmul f2, f4, f0
/* 80608B14  FC 00 00 32 */	fmul f0, f0, f0
/* 80608B18  FC 01 00 32 */	fmul f0, f1, f0
/* 80608B1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80608B20  FC 02 00 32 */	fmul f0, f2, f0
/* 80608B24  FC 21 00 32 */	fmul f1, f1, f0
/* 80608B28  FC 20 08 18 */	frsp f1, f1
/* 80608B2C  48 00 00 88 */	b lbl_80608BB4
lbl_80608B30:
/* 80608B30  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 80608B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80608B38  40 80 00 10 */	bge lbl_80608B48
/* 80608B3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80608B40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80608B44  48 00 00 70 */	b lbl_80608BB4
lbl_80608B48:
/* 80608B48  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80608B4C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80608B50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80608B54  3C 00 7F 80 */	lis r0, 0x7f80
/* 80608B58  7C 03 00 00 */	cmpw r3, r0
/* 80608B5C  41 82 00 14 */	beq lbl_80608B70
/* 80608B60  40 80 00 40 */	bge lbl_80608BA0
/* 80608B64  2C 03 00 00 */	cmpwi r3, 0
/* 80608B68  41 82 00 20 */	beq lbl_80608B88
/* 80608B6C  48 00 00 34 */	b lbl_80608BA0
lbl_80608B70:
/* 80608B70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80608B74  41 82 00 0C */	beq lbl_80608B80
/* 80608B78  38 00 00 01 */	li r0, 1
/* 80608B7C  48 00 00 28 */	b lbl_80608BA4
lbl_80608B80:
/* 80608B80  38 00 00 02 */	li r0, 2
/* 80608B84  48 00 00 20 */	b lbl_80608BA4
lbl_80608B88:
/* 80608B88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80608B8C  41 82 00 0C */	beq lbl_80608B98
/* 80608B90  38 00 00 05 */	li r0, 5
/* 80608B94  48 00 00 10 */	b lbl_80608BA4
lbl_80608B98:
/* 80608B98  38 00 00 03 */	li r0, 3
/* 80608B9C  48 00 00 08 */	b lbl_80608BA4
lbl_80608BA0:
/* 80608BA0  38 00 00 04 */	li r0, 4
lbl_80608BA4:
/* 80608BA4  2C 00 00 01 */	cmpwi r0, 1
/* 80608BA8  40 82 00 0C */	bne lbl_80608BB4
/* 80608BAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80608BB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80608BB4:
/* 80608BB4  C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 80608BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80608BBC  40 81 03 24 */	ble lbl_80608EE0
/* 80608BC0  38 00 00 05 */	li r0, 5
/* 80608BC4  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80608BC8  80 1C 1F BC */	lwz r0, 0x1fbc(r28)
/* 80608BCC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80608BD0  90 1C 1F BC */	stw r0, 0x1fbc(r28)
/* 80608BD4  A8 1C 0A 92 */	lha r0, 0xa92(r28)
/* 80608BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80608BDC  40 81 00 20 */	ble lbl_80608BFC
/* 80608BE0  7F 83 E3 78 */	mr r3, r28
/* 80608BE4  38 80 00 23 */	li r4, 0x23
/* 80608BE8  38 A0 00 02 */	li r5, 2
/* 80608BEC  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80608BF0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80608BF4  4B FF ED 31 */	bl setBck__9daB_MGN_cFiUcff
/* 80608BF8  48 00 02 E8 */	b lbl_80608EE0
lbl_80608BFC:
/* 80608BFC  7F 83 E3 78 */	mr r3, r28
/* 80608C00  38 80 00 22 */	li r4, 0x22
/* 80608C04  38 A0 00 02 */	li r5, 2
/* 80608C08  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80608C0C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80608C10  4B FF ED 15 */	bl setBck__9daB_MGN_cFiUcff
/* 80608C14  48 00 02 CC */	b lbl_80608EE0
lbl_80608C18:
/* 80608C18  28 00 00 03 */	cmplwi r0, 3
/* 80608C1C  40 82 00 20 */	bne lbl_80608C3C
/* 80608C20  80 1C 0A A8 */	lwz r0, 0xaa8(r28)
/* 80608C24  2C 00 00 00 */	cmpwi r0, 0
/* 80608C28  40 82 02 B8 */	bne lbl_80608EE0
/* 80608C2C  7F 83 E3 78 */	mr r3, r28
/* 80608C30  38 80 00 01 */	li r4, 1
/* 80608C34  4B FF EE 4D */	bl setExitMode__9daB_MGN_cFi
/* 80608C38  48 00 02 A8 */	b lbl_80608EE0
lbl_80608C3C:
/* 80608C3C  38 7C 0A E8 */	addi r3, r28, 0xae8
/* 80608C40  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80608C44  C0 5D 00 F4 */	lfs f2, 0xf4(r29)
/* 80608C48  4B C6 7A F9 */	bl cLib_chaseF__FPfff
/* 80608C4C  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80608C50  C0 3D 00 64 */	lfs f1, 0x64(r29)
/* 80608C54  4B D1 F7 D9 */	bl checkPass__12J3DFrameCtrlFf
/* 80608C58  2C 03 00 00 */	cmpwi r3, 0
/* 80608C5C  41 82 00 C8 */	beq lbl_80608D24
/* 80608C60  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80608C64  4B A0 41 01 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80608C68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80608C6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80608C70  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80608C74  4B A0 37 C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80608C78  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80608C7C  FC 40 08 90 */	fmr f2, f1
/* 80608C80  C0 7D 00 E8 */	lfs f3, 0xe8(r29)
/* 80608C84  4B A0 41 19 */	bl transM__14mDoMtx_stack_cFfff
/* 80608C88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80608C8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80608C90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80608C94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80608C98  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80608C9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80608CA0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80608CA4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80608CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80608CAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80608CB0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80608CB4  38 80 00 00 */	li r4, 0
/* 80608CB8  90 81 00 08 */	stw r4, 8(r1)
/* 80608CBC  38 00 FF FF */	li r0, -1
/* 80608CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80608CC4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80608CC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80608CCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80608CD0  38 80 00 00 */	li r4, 0
/* 80608CD4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C1C@ha */
/* 80608CD8  38 A5 8C 1C */	addi r5, r5, 0x8C1C /* 0x00008C1C@l */
/* 80608CDC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80608CE0  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80608CE4  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 80608CE8  39 20 00 00 */	li r9, 0
/* 80608CEC  39 40 00 FF */	li r10, 0xff
/* 80608CF0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80608CF4  4B A4 3D 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80608CF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F7@ha */
/* 80608CFC  38 03 04 F7 */	addi r0, r3, 0x04F7 /* 0x000704F7@l */
/* 80608D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80608D04  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 80608D08  38 81 00 24 */	addi r4, r1, 0x24
/* 80608D0C  38 A0 00 00 */	li r5, 0
/* 80608D10  38 C0 FF FF */	li r6, -1
/* 80608D14  81 9C 09 E0 */	lwz r12, 0x9e0(r28)
/* 80608D18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80608D1C  7D 89 03 A6 */	mtctr r12
/* 80608D20  4E 80 04 21 */	bctrl 
lbl_80608D24:
/* 80608D24  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80608D28  38 80 00 01 */	li r4, 1
/* 80608D2C  88 03 00 05 */	lbz r0, 5(r3)
/* 80608D30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80608D34  40 82 00 18 */	bne lbl_80608D4C
/* 80608D38  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80608D3C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80608D40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80608D44  41 82 00 08 */	beq lbl_80608D4C
/* 80608D48  38 80 00 00 */	li r4, 0
lbl_80608D4C:
/* 80608D4C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80608D50  41 82 01 90 */	beq lbl_80608EE0
/* 80608D54  7F 83 E3 78 */	mr r3, r28
/* 80608D58  38 80 00 07 */	li r4, 7
/* 80608D5C  38 A0 00 00 */	li r5, 0
/* 80608D60  4B FF EC CD */	bl setActionMode__9daB_MGN_cFii
/* 80608D64  48 00 01 7C */	b lbl_80608EE0
lbl_80608D68:
/* 80608D68  7F 83 E3 78 */	mr r3, r28
/* 80608D6C  4B FF D5 55 */	bl setSlideSmokeEffect__9daB_MGN_cFv
/* 80608D70  7F 83 E3 78 */	mr r3, r28
/* 80608D74  4B FF E5 29 */	bl setBloodEffect__9daB_MGN_cFv
/* 80608D78  A8 1C 0A 90 */	lha r0, 0xa90(r28)
/* 80608D7C  7C 1F 00 50 */	subf r0, r31, r0
/* 80608D80  7C 03 07 34 */	extsh r3, r0
/* 80608D84  4B D5 C3 4D */	bl abs
/* 80608D88  2C 03 08 00 */	cmpwi r3, 0x800
/* 80608D8C  40 80 00 14 */	bge lbl_80608DA0
/* 80608D90  A8 7C 0A 90 */	lha r3, 0xa90(r28)
/* 80608D94  A8 1C 0A 92 */	lha r0, 0xa92(r28)
/* 80608D98  7C 03 02 14 */	add r0, r3, r0
/* 80608D9C  B0 1C 0A 90 */	sth r0, 0xa90(r28)
lbl_80608DA0:
/* 80608DA0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80608DA4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80608DA8  A8 1C 0A 90 */	lha r0, 0xa90(r28)
/* 80608DAC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80608DB0  7C 64 02 14 */	add r3, r4, r0
/* 80608DB4  C0 43 00 04 */	lfs f2, 4(r3)
/* 80608DB8  7C 04 04 2E */	lfsx f0, r4, r0
/* 80608DBC  C0 3D 00 F0 */	lfs f1, 0xf0(r29)
/* 80608DC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80608DC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80608DC8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80608DCC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80608DD0  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80608DD4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80608DD8  38 61 00 40 */	addi r3, r1, 0x40
/* 80608DDC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80608DE0  7C 65 1B 78 */	mr r5, r3
/* 80608DE4  4B D3 E2 AD */	bl PSVECAdd
/* 80608DE8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80608DEC  38 81 00 40 */	addi r4, r1, 0x40
/* 80608DF0  4B C6 7E 15 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80608DF4  7C 64 1B 78 */	mr r4, r3
/* 80608DF8  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80608DFC  38 A0 00 08 */	li r5, 8
/* 80608E00  38 C0 04 00 */	li r6, 0x400
/* 80608E04  4B C6 78 05 */	bl cLib_addCalcAngleS2__FPssss
/* 80608E08  7F 83 E3 78 */	mr r3, r28
/* 80608E0C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80608E10  4B A1 19 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80608E14  7C 7E 1B 78 */	mr r30, r3
/* 80608E18  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80608E1C  7F C4 F3 78 */	mr r4, r30
/* 80608E20  38 A0 00 08 */	li r5, 8
/* 80608E24  38 C0 04 00 */	li r6, 0x400
/* 80608E28  4B C6 77 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 80608E2C  7F 83 E3 78 */	mr r3, r28
/* 80608E30  7F C4 F3 78 */	mr r4, r30
/* 80608E34  4B FF F9 05 */	bl calcJointAngle__9daB_MGN_cFs
/* 80608E38  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80608E3C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80608E40  C0 5D 00 F8 */	lfs f2, 0xf8(r29)
/* 80608E44  4B C6 78 FD */	bl cLib_chaseF__FPfff
/* 80608E48  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80608E4C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80608E50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80608E54  40 82 00 8C */	bne lbl_80608EE0
/* 80608E58  7F 83 E3 78 */	mr r3, r28
/* 80608E5C  38 80 00 25 */	li r4, 0x25
/* 80608E60  38 A0 00 02 */	li r5, 2
/* 80608E64  C0 3D 00 FC */	lfs f1, 0xfc(r29)
/* 80608E68  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80608E6C  4B FF EA B9 */	bl setBck__9daB_MGN_cFiUcff
/* 80608E70  38 00 00 1E */	li r0, 0x1e
/* 80608E74  90 1C 0A 9C */	stw r0, 0xa9c(r28)
/* 80608E78  38 00 00 06 */	li r0, 6
/* 80608E7C  98 1C 0A FA */	stb r0, 0xafa(r28)
/* 80608E80  48 00 00 60 */	b lbl_80608EE0
lbl_80608E84:
/* 80608E84  7F 83 E3 78 */	mr r3, r28
/* 80608E88  4B FF E4 15 */	bl setBloodEffect__9daB_MGN_cFv
/* 80608E8C  7F 83 E3 78 */	mr r3, r28
/* 80608E90  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80608E94  4B A1 18 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80608E98  7C 7D 1B 78 */	mr r29, r3
/* 80608E9C  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80608EA0  7F A4 EB 78 */	mr r4, r29
/* 80608EA4  38 A0 00 08 */	li r5, 8
/* 80608EA8  38 C0 08 00 */	li r6, 0x800
/* 80608EAC  4B C6 77 5D */	bl cLib_addCalcAngleS2__FPssss
/* 80608EB0  7F 83 E3 78 */	mr r3, r28
/* 80608EB4  7F A4 EB 78 */	mr r4, r29
/* 80608EB8  4B FF F8 81 */	bl calcJointAngle__9daB_MGN_cFs
/* 80608EBC  80 1C 0A 9C */	lwz r0, 0xa9c(r28)
/* 80608EC0  2C 00 00 00 */	cmpwi r0, 0
/* 80608EC4  40 82 00 1C */	bne lbl_80608EE0
/* 80608EC8  38 00 00 00 */	li r0, 0
/* 80608ECC  98 1C 0A FD */	stb r0, 0xafd(r28)
/* 80608ED0  7F 83 E3 78 */	mr r3, r28
/* 80608ED4  38 80 00 02 */	li r4, 2
/* 80608ED8  38 A0 00 00 */	li r5, 0
/* 80608EDC  4B FF EB 51 */	bl setActionMode__9daB_MGN_cFii
lbl_80608EE0:
/* 80608EE0  39 61 00 70 */	addi r11, r1, 0x70
/* 80608EE4  4B D5 93 41 */	bl _restgpr_28
/* 80608EE8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80608EEC  7C 08 03 A6 */	mtlr r0
/* 80608EF0  38 21 00 70 */	addi r1, r1, 0x70
/* 80608EF4  4E 80 00 20 */	blr 
