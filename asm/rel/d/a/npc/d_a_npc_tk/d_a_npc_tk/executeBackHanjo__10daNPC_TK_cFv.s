lbl_80B0686C:
/* 80B0686C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B06870  7C 08 02 A6 */	mflr r0
/* 80B06874  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B06878  39 61 00 90 */	addi r11, r1, 0x90
/* 80B0687C  4B 85 B9 5D */	bl _savegpr_28
/* 80B06880  7C 7E 1B 78 */	mr r30, r3
/* 80B06884  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B06888  3B E3 C1 C4 */	addi r31, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B0688C  3C 60 80 B0 */	lis r3, s_hanjo__FPvPv@ha /* 0x80B02208@ha */
/* 80B06890  38 63 22 08 */	addi r3, r3, s_hanjo__FPvPv@l /* 0x80B02208@l */
/* 80B06894  7F C4 F3 78 */	mr r4, r30
/* 80B06898  4B 51 AA A1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B0689C  90 7E 06 38 */	stw r3, 0x638(r30)
/* 80B068A0  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 80B068A4  28 00 00 00 */	cmplwi r0, 0
/* 80B068A8  41 82 08 54 */	beq lbl_80B070FC
/* 80B068AC  38 61 00 44 */	addi r3, r1, 0x44
/* 80B068B0  7F C4 F3 78 */	mr r4, r30
/* 80B068B4  4B FF F3 1D */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B068B8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B068BC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B068C0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B068C4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B068C8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B068CC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B068D0  7F C3 F3 78 */	mr r3, r30
/* 80B068D4  48 00 08 41 */	bl checkAttackDemo__10daNPC_TK_cFv
/* 80B068D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B068DC  40 82 08 20 */	bne lbl_80B070FC
/* 80B068E0  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80B068E4  2C 00 00 00 */	cmpwi r0, 0
/* 80B068E8  40 82 01 68 */	bne lbl_80B06A50
/* 80B068EC  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B068F0  2C 00 00 02 */	cmpwi r0, 2
/* 80B068F4  41 82 00 A0 */	beq lbl_80B06994
/* 80B068F8  40 80 00 14 */	bge lbl_80B0690C
/* 80B068FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B06900  41 82 00 18 */	beq lbl_80B06918
/* 80B06904  40 80 00 5C */	bge lbl_80B06960
/* 80B06908  48 00 01 3C */	b lbl_80B06A44
lbl_80B0690C:
/* 80B0690C  2C 00 00 04 */	cmpwi r0, 4
/* 80B06910  40 80 01 34 */	bge lbl_80B06A44
/* 80B06914  48 00 00 CC */	b lbl_80B069E0
lbl_80B06918:
/* 80B06918  80 1E 09 C4 */	lwz r0, 0x9c4(r30)
/* 80B0691C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B06920  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 80B06924  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B06928  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B0692C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80B06930  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B06934  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80B06938  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B0693C  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B06940  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B06944  80 BE 06 38 */	lwz r5, 0x638(r30)
/* 80B06948  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B0694C  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B06950  4B 76 A4 71 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B06954  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80B06958  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80B0695C  48 00 00 E8 */	b lbl_80B06A44
lbl_80B06960:
/* 80B06960  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80B06964  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B06968  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0696C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B06970  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80B06974  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B06978  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B0697C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B06980  80 BE 06 38 */	lwz r5, 0x638(r30)
/* 80B06984  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B06988  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B0698C  4B 76 A4 35 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B06990  48 00 00 B4 */	b lbl_80B06A44
lbl_80B06994:
/* 80B06994  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B06998  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B0699C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B069A0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B069A4  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80B069A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B069AC  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B069B0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B069B4  80 BE 06 38 */	lwz r5, 0x638(r30)
/* 80B069B8  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B069BC  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B069C0  4B 76 A4 01 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B069C4  7F C3 F3 78 */	mr r3, r30
/* 80B069C8  38 80 00 05 */	li r4, 5
/* 80B069CC  38 A0 00 02 */	li r5, 2
/* 80B069D0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B069D4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B069D8  4B FF AA C1 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B069DC  48 00 00 68 */	b lbl_80B06A44
lbl_80B069E0:
/* 80B069E0  38 61 00 38 */	addi r3, r1, 0x38
/* 80B069E4  7F C4 F3 78 */	mr r4, r30
/* 80B069E8  4B FF F1 E9 */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B069EC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B069F0  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80B069F4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B069F8  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 80B069FC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B06A00  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 80B06A04  7F C3 F3 78 */	mr r3, r30
/* 80B06A08  38 80 00 09 */	li r4, 9
/* 80B06A0C  38 A0 00 02 */	li r5, 2
/* 80B06A10  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B06A14  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B06A18  4B FF AA 81 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B06A1C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050026@ha */
/* 80B06A20  38 03 00 26 */	addi r0, r3, 0x0026 /* 0x00050026@l */
/* 80B06A24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B06A28  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B06A2C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B06A30  38 A0 FF FF */	li r5, -1
/* 80B06A34  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 80B06A38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B06A3C  7D 89 03 A6 */	mtctr r12
/* 80B06A40  4E 80 04 21 */	bctrl 
lbl_80B06A44:
/* 80B06A44  80 7E 06 98 */	lwz r3, 0x698(r30)
/* 80B06A48  38 03 00 01 */	addi r0, r3, 1
/* 80B06A4C  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_80B06A50:
/* 80B06A50  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B06A54  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B06A58  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B06A5C  4B 76 00 D9 */	bl __mi__4cXyzCFRC3Vec
/* 80B06A60  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80B06A64  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80B06A68  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B06A6C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B06A70  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80B06A74  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B06A78  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80B06A7C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B06A80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B06A84  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B06A88  38 61 00 20 */	addi r3, r1, 0x20
/* 80B06A8C  4B 84 06 AD */	bl PSVECSquareMag
/* 80B06A90  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B06A94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06A98  40 81 00 58 */	ble lbl_80B06AF0
/* 80B06A9C  FC 00 08 34 */	frsqrte f0, f1
/* 80B06AA0  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B06AA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06AA8  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B06AAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06AB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06AB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06AB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06ABC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06AC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06AC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06AC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06ACC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06AD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06AD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06AD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06ADC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06AE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06AE4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B06AE8  FC 20 08 18 */	frsp f1, f1
/* 80B06AEC  48 00 00 88 */	b lbl_80B06B74
lbl_80B06AF0:
/* 80B06AF0  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B06AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06AF8  40 80 00 10 */	bge lbl_80B06B08
/* 80B06AFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06B00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B06B04  48 00 00 70 */	b lbl_80B06B74
lbl_80B06B08:
/* 80B06B08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B06B0C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B06B10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B06B14  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B06B18  7C 03 00 00 */	cmpw r3, r0
/* 80B06B1C  41 82 00 14 */	beq lbl_80B06B30
/* 80B06B20  40 80 00 40 */	bge lbl_80B06B60
/* 80B06B24  2C 03 00 00 */	cmpwi r3, 0
/* 80B06B28  41 82 00 20 */	beq lbl_80B06B48
/* 80B06B2C  48 00 00 34 */	b lbl_80B06B60
lbl_80B06B30:
/* 80B06B30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06B34  41 82 00 0C */	beq lbl_80B06B40
/* 80B06B38  38 00 00 01 */	li r0, 1
/* 80B06B3C  48 00 00 28 */	b lbl_80B06B64
lbl_80B06B40:
/* 80B06B40  38 00 00 02 */	li r0, 2
/* 80B06B44  48 00 00 20 */	b lbl_80B06B64
lbl_80B06B48:
/* 80B06B48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06B4C  41 82 00 0C */	beq lbl_80B06B58
/* 80B06B50  38 00 00 05 */	li r0, 5
/* 80B06B54  48 00 00 10 */	b lbl_80B06B64
lbl_80B06B58:
/* 80B06B58  38 00 00 03 */	li r0, 3
/* 80B06B5C  48 00 00 08 */	b lbl_80B06B64
lbl_80B06B60:
/* 80B06B60  38 00 00 04 */	li r0, 4
lbl_80B06B64:
/* 80B06B64  2C 00 00 01 */	cmpwi r0, 1
/* 80B06B68  40 82 00 0C */	bne lbl_80B06B74
/* 80B06B6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06B70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B06B74:
/* 80B06B74  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 80B06B78  4B 76 0A FD */	bl cM_atan2s__Fff
/* 80B06B7C  7C 7D 07 34 */	extsh r29, r3
/* 80B06B80  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B06B84  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B06B88  4B 76 A0 7D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B06B8C  7C 7C 1B 78 */	mr r28, r3
/* 80B06B90  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B06B94  2C 00 00 01 */	cmpwi r0, 1
/* 80B06B98  41 82 00 20 */	beq lbl_80B06BB8
/* 80B06B9C  40 80 00 10 */	bge lbl_80B06BAC
/* 80B06BA0  2C 00 00 00 */	cmpwi r0, 0
/* 80B06BA4  40 80 00 24 */	bge lbl_80B06BC8
/* 80B06BA8  48 00 05 54 */	b lbl_80B070FC
lbl_80B06BAC:
/* 80B06BAC  2C 00 00 04 */	cmpwi r0, 4
/* 80B06BB0  40 80 05 4C */	bge lbl_80B070FC
/* 80B06BB4  48 00 01 8C */	b lbl_80B06D40
lbl_80B06BB8:
/* 80B06BB8  38 7E 06 78 */	addi r3, r30, 0x678
/* 80B06BBC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80B06BC0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B06BC4  4B 76 9B 7D */	bl cLib_chaseF__FPfff
lbl_80B06BC8:
/* 80B06BC8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B06BCC  7F 84 E3 78 */	mr r4, r28
/* 80B06BD0  38 A0 00 08 */	li r5, 8
/* 80B06BD4  38 C0 10 00 */	li r6, 0x1000
/* 80B06BD8  38 E0 01 00 */	li r7, 0x100
/* 80B06BDC  4B 76 99 65 */	bl cLib_addCalcAngleS__FPsssss
/* 80B06BE0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B06BE4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B06BE8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B06BEC  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B06BF0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B06BF4  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B06BF8  57 BD 04 38 */	rlwinm r29, r29, 0, 0x10, 0x1c
/* 80B06BFC  7C 80 EA 14 */	add r4, r0, r29
/* 80B06C00  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B06C04  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B06C08  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B06C0C  4B 76 9B 35 */	bl cLib_chaseF__FPfff
/* 80B06C10  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B06C14  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B06C18  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B06C1C  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B06C20  7C 04 EC 2E */	lfsx f0, r4, r29
/* 80B06C24  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B06C28  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B06C2C  4B 76 9B 15 */	bl cLib_chaseF__FPfff
/* 80B06C30  38 61 00 50 */	addi r3, r1, 0x50
/* 80B06C34  4B 84 05 05 */	bl PSVECSquareMag
/* 80B06C38  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B06C3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06C40  40 81 00 58 */	ble lbl_80B06C98
/* 80B06C44  FC 00 08 34 */	frsqrte f0, f1
/* 80B06C48  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B06C4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06C50  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B06C54  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06C58  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06C5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06C60  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06C64  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06C68  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06C6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06C70  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06C74  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06C78  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06C7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06C80  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06C84  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06C88  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06C8C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B06C90  FC 20 08 18 */	frsp f1, f1
/* 80B06C94  48 00 00 88 */	b lbl_80B06D1C
lbl_80B06C98:
/* 80B06C98  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B06C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06CA0  40 80 00 10 */	bge lbl_80B06CB0
/* 80B06CA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06CA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B06CAC  48 00 00 70 */	b lbl_80B06D1C
lbl_80B06CB0:
/* 80B06CB0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B06CB4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B06CB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B06CBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B06CC0  7C 03 00 00 */	cmpw r3, r0
/* 80B06CC4  41 82 00 14 */	beq lbl_80B06CD8
/* 80B06CC8  40 80 00 40 */	bge lbl_80B06D08
/* 80B06CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B06CD0  41 82 00 20 */	beq lbl_80B06CF0
/* 80B06CD4  48 00 00 34 */	b lbl_80B06D08
lbl_80B06CD8:
/* 80B06CD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06CDC  41 82 00 0C */	beq lbl_80B06CE8
/* 80B06CE0  38 00 00 01 */	li r0, 1
/* 80B06CE4  48 00 00 28 */	b lbl_80B06D0C
lbl_80B06CE8:
/* 80B06CE8  38 00 00 02 */	li r0, 2
/* 80B06CEC  48 00 00 20 */	b lbl_80B06D0C
lbl_80B06CF0:
/* 80B06CF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06CF4  41 82 00 0C */	beq lbl_80B06D00
/* 80B06CF8  38 00 00 05 */	li r0, 5
/* 80B06CFC  48 00 00 10 */	b lbl_80B06D0C
lbl_80B06D00:
/* 80B06D00  38 00 00 03 */	li r0, 3
/* 80B06D04  48 00 00 08 */	b lbl_80B06D0C
lbl_80B06D08:
/* 80B06D08  38 00 00 04 */	li r0, 4
lbl_80B06D0C:
/* 80B06D0C  2C 00 00 01 */	cmpwi r0, 1
/* 80B06D10  40 82 00 0C */	bne lbl_80B06D1C
/* 80B06D14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06D18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B06D1C:
/* 80B06D1C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B06D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06D24  40 80 03 D8 */	bge lbl_80B070FC
/* 80B06D28  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 80B06D2C  38 03 00 01 */	addi r0, r3, 1
/* 80B06D30  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B06D34  38 00 00 00 */	li r0, 0
/* 80B06D38  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B06D3C  48 00 03 C0 */	b lbl_80B070FC
lbl_80B06D40:
/* 80B06D40  38 7E 06 78 */	addi r3, r30, 0x678
/* 80B06D44  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B06D48  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B06D4C  4B 76 99 F5 */	bl cLib_chaseF__FPfff
/* 80B06D50  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B06D54  7F 84 E3 78 */	mr r4, r28
/* 80B06D58  38 A0 00 08 */	li r5, 8
/* 80B06D5C  38 C0 10 00 */	li r6, 0x1000
/* 80B06D60  38 E0 01 00 */	li r7, 0x100
/* 80B06D64  4B 76 97 DD */	bl cLib_addCalcAngleS__FPsssss
/* 80B06D68  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B06D6C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B06D70  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B06D74  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B06D78  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B06D7C  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B06D80  57 BD 04 38 */	rlwinm r29, r29, 0, 0x10, 0x1c
/* 80B06D84  7C 80 EA 14 */	add r4, r0, r29
/* 80B06D88  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B06D8C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B06D90  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B06D94  4B 76 99 AD */	bl cLib_chaseF__FPfff
/* 80B06D98  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B06D9C  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B06DA0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B06DA4  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B06DA8  7C 04 EC 2E */	lfsx f0, r4, r29
/* 80B06DAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B06DB0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B06DB4  4B 76 99 8D */	bl cLib_chaseF__FPfff
/* 80B06DB8  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B06DBC  2C 00 00 02 */	cmpwi r0, 2
/* 80B06DC0  40 82 02 34 */	bne lbl_80B06FF4
/* 80B06DC4  38 61 00 50 */	addi r3, r1, 0x50
/* 80B06DC8  4B 84 03 71 */	bl PSVECSquareMag
/* 80B06DCC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B06DD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06DD4  40 81 00 58 */	ble lbl_80B06E2C
/* 80B06DD8  FC 00 08 34 */	frsqrte f0, f1
/* 80B06DDC  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B06DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06DE4  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B06DE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06DEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06DF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06DF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06DF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06DFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06E00  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06E04  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06E08  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06E0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06E10  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06E14  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06E18  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06E1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06E20  FC 21 00 32 */	fmul f1, f1, f0
/* 80B06E24  FC 20 08 18 */	frsp f1, f1
/* 80B06E28  48 00 00 88 */	b lbl_80B06EB0
lbl_80B06E2C:
/* 80B06E2C  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B06E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06E34  40 80 00 10 */	bge lbl_80B06E44
/* 80B06E38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06E3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B06E40  48 00 00 70 */	b lbl_80B06EB0
lbl_80B06E44:
/* 80B06E44  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B06E48  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B06E4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B06E50  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B06E54  7C 03 00 00 */	cmpw r3, r0
/* 80B06E58  41 82 00 14 */	beq lbl_80B06E6C
/* 80B06E5C  40 80 00 40 */	bge lbl_80B06E9C
/* 80B06E60  2C 03 00 00 */	cmpwi r3, 0
/* 80B06E64  41 82 00 20 */	beq lbl_80B06E84
/* 80B06E68  48 00 00 34 */	b lbl_80B06E9C
lbl_80B06E6C:
/* 80B06E6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06E70  41 82 00 0C */	beq lbl_80B06E7C
/* 80B06E74  38 00 00 01 */	li r0, 1
/* 80B06E78  48 00 00 28 */	b lbl_80B06EA0
lbl_80B06E7C:
/* 80B06E7C  38 00 00 02 */	li r0, 2
/* 80B06E80  48 00 00 20 */	b lbl_80B06EA0
lbl_80B06E84:
/* 80B06E84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06E88  41 82 00 0C */	beq lbl_80B06E94
/* 80B06E8C  38 00 00 05 */	li r0, 5
/* 80B06E90  48 00 00 10 */	b lbl_80B06EA0
lbl_80B06E94:
/* 80B06E94  38 00 00 03 */	li r0, 3
/* 80B06E98  48 00 00 08 */	b lbl_80B06EA0
lbl_80B06E9C:
/* 80B06E9C  38 00 00 04 */	li r0, 4
lbl_80B06EA0:
/* 80B06EA0  2C 00 00 01 */	cmpwi r0, 1
/* 80B06EA4  40 82 00 0C */	bne lbl_80B06EB0
/* 80B06EA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06EAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B06EB0:
/* 80B06EB0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B06EB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06EB8  40 80 02 44 */	bge lbl_80B070FC
/* 80B06EBC  7F C3 F3 78 */	mr r3, r30
/* 80B06EC0  38 80 00 07 */	li r4, 7
/* 80B06EC4  4B FF A6 79 */	bl checkBck__10daNPC_TK_cFi
/* 80B06EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B06ECC  40 82 00 1C */	bne lbl_80B06EE8
/* 80B06ED0  7F C3 F3 78 */	mr r3, r30
/* 80B06ED4  38 80 00 07 */	li r4, 7
/* 80B06ED8  38 A0 00 02 */	li r5, 2
/* 80B06EDC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B06EE0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B06EE4  4B FF A5 B5 */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B06EE8:
/* 80B06EE8  38 61 00 50 */	addi r3, r1, 0x50
/* 80B06EEC  4B 84 02 4D */	bl PSVECSquareMag
/* 80B06EF0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B06EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06EF8  40 81 00 58 */	ble lbl_80B06F50
/* 80B06EFC  FC 00 08 34 */	frsqrte f0, f1
/* 80B06F00  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B06F04  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06F08  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B06F0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06F10  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06F14  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06F18  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06F1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06F20  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06F24  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06F28  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06F2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06F30  FC 44 00 32 */	fmul f2, f4, f0
/* 80B06F34  FC 00 00 32 */	fmul f0, f0, f0
/* 80B06F38  FC 01 00 32 */	fmul f0, f1, f0
/* 80B06F3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B06F40  FC 02 00 32 */	fmul f0, f2, f0
/* 80B06F44  FC 21 00 32 */	fmul f1, f1, f0
/* 80B06F48  FC 20 08 18 */	frsp f1, f1
/* 80B06F4C  48 00 00 88 */	b lbl_80B06FD4
lbl_80B06F50:
/* 80B06F50  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B06F54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06F58  40 80 00 10 */	bge lbl_80B06F68
/* 80B06F5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06F60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B06F64  48 00 00 70 */	b lbl_80B06FD4
lbl_80B06F68:
/* 80B06F68  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B06F6C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B06F70  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B06F74  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B06F78  7C 03 00 00 */	cmpw r3, r0
/* 80B06F7C  41 82 00 14 */	beq lbl_80B06F90
/* 80B06F80  40 80 00 40 */	bge lbl_80B06FC0
/* 80B06F84  2C 03 00 00 */	cmpwi r3, 0
/* 80B06F88  41 82 00 20 */	beq lbl_80B06FA8
/* 80B06F8C  48 00 00 34 */	b lbl_80B06FC0
lbl_80B06F90:
/* 80B06F90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06F94  41 82 00 0C */	beq lbl_80B06FA0
/* 80B06F98  38 00 00 01 */	li r0, 1
/* 80B06F9C  48 00 00 28 */	b lbl_80B06FC4
lbl_80B06FA0:
/* 80B06FA0  38 00 00 02 */	li r0, 2
/* 80B06FA4  48 00 00 20 */	b lbl_80B06FC4
lbl_80B06FA8:
/* 80B06FA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B06FAC  41 82 00 0C */	beq lbl_80B06FB8
/* 80B06FB0  38 00 00 05 */	li r0, 5
/* 80B06FB4  48 00 00 10 */	b lbl_80B06FC4
lbl_80B06FB8:
/* 80B06FB8  38 00 00 03 */	li r0, 3
/* 80B06FBC  48 00 00 08 */	b lbl_80B06FC4
lbl_80B06FC0:
/* 80B06FC0  38 00 00 04 */	li r0, 4
lbl_80B06FC4:
/* 80B06FC4  2C 00 00 01 */	cmpwi r0, 1
/* 80B06FC8  40 82 00 0C */	bne lbl_80B06FD4
/* 80B06FCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B06FD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B06FD4:
/* 80B06FD4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80B06FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B06FDC  40 80 01 20 */	bge lbl_80B070FC
/* 80B06FE0  38 00 00 03 */	li r0, 3
/* 80B06FE4  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B06FE8  38 00 00 00 */	li r0, 0
/* 80B06FEC  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B06FF0  48 00 01 0C */	b lbl_80B070FC
lbl_80B06FF4:
/* 80B06FF4  38 61 00 50 */	addi r3, r1, 0x50
/* 80B06FF8  4B 84 01 41 */	bl PSVECSquareMag
/* 80B06FFC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07004  40 81 00 58 */	ble lbl_80B0705C
/* 80B07008  FC 00 08 34 */	frsqrte f0, f1
/* 80B0700C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B07010  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07014  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B07018  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0701C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07020  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07024  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07028  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0702C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07030  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07034  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07038  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0703C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07040  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07044  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07048  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0704C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07050  FC 21 00 32 */	fmul f1, f1, f0
/* 80B07054  FC 20 08 18 */	frsp f1, f1
/* 80B07058  48 00 00 88 */	b lbl_80B070E0
lbl_80B0705C:
/* 80B0705C  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B07060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07064  40 80 00 10 */	bge lbl_80B07074
/* 80B07068  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B0706C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B07070  48 00 00 70 */	b lbl_80B070E0
lbl_80B07074:
/* 80B07074  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B07078  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0707C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B07080  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07084  7C 03 00 00 */	cmpw r3, r0
/* 80B07088  41 82 00 14 */	beq lbl_80B0709C
/* 80B0708C  40 80 00 40 */	bge lbl_80B070CC
/* 80B07090  2C 03 00 00 */	cmpwi r3, 0
/* 80B07094  41 82 00 20 */	beq lbl_80B070B4
/* 80B07098  48 00 00 34 */	b lbl_80B070CC
lbl_80B0709C:
/* 80B0709C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B070A0  41 82 00 0C */	beq lbl_80B070AC
/* 80B070A4  38 00 00 01 */	li r0, 1
/* 80B070A8  48 00 00 28 */	b lbl_80B070D0
lbl_80B070AC:
/* 80B070AC  38 00 00 02 */	li r0, 2
/* 80B070B0  48 00 00 20 */	b lbl_80B070D0
lbl_80B070B4:
/* 80B070B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B070B8  41 82 00 0C */	beq lbl_80B070C4
/* 80B070BC  38 00 00 05 */	li r0, 5
/* 80B070C0  48 00 00 10 */	b lbl_80B070D0
lbl_80B070C4:
/* 80B070C4  38 00 00 03 */	li r0, 3
/* 80B070C8  48 00 00 08 */	b lbl_80B070D0
lbl_80B070CC:
/* 80B070CC  38 00 00 04 */	li r0, 4
lbl_80B070D0:
/* 80B070D0  2C 00 00 01 */	cmpwi r0, 1
/* 80B070D4  40 82 00 0C */	bne lbl_80B070E0
/* 80B070D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B070DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B070E0:
/* 80B070E0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B070E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B070E8  4C 40 13 82 */	cror 2, 0, 2
/* 80B070EC  40 82 00 10 */	bne lbl_80B070FC
/* 80B070F0  7F C3 F3 78 */	mr r3, r30
/* 80B070F4  38 80 00 06 */	li r4, 6
/* 80B070F8  4B FF A7 81 */	bl setActionMode__10daNPC_TK_cFi
lbl_80B070FC:
/* 80B070FC  39 61 00 90 */	addi r11, r1, 0x90
/* 80B07100  4B 85 B1 25 */	bl _restgpr_28
/* 80B07104  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B07108  7C 08 03 A6 */	mtlr r0
/* 80B0710C  38 21 00 90 */	addi r1, r1, 0x90
/* 80B07110  4E 80 00 20 */	blr 
