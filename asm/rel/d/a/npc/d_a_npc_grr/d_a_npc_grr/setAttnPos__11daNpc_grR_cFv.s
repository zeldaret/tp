lbl_809E0B5C:
/* 809E0B5C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 809E0B60  7C 08 02 A6 */	mflr r0
/* 809E0B64  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809E0B68  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 809E0B6C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 809E0B70  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 809E0B74  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 809E0B78  39 61 00 90 */	addi r11, r1, 0x90
/* 809E0B7C  4B 98 16 4D */	bl _savegpr_24
/* 809E0B80  7C 7D 1B 78 */	mr r29, r3
/* 809E0B84  3C 60 80 9E */	lis r3, lit_1109@ha /* 0x809E3EF8@ha */
/* 809E0B88  3B C3 3E F8 */	addi r30, r3, lit_1109@l /* 0x809E3EF8@l */
/* 809E0B8C  3C 60 80 9E */	lis r3, m__17daNpc_grR_Param_c@ha /* 0x809E38D8@ha */
/* 809E0B90  3B E3 38 D8 */	addi r31, r3, m__17daNpc_grR_Param_c@l /* 0x809E38D8@l */
/* 809E0B94  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809E0B98  7C 00 07 75 */	extsb. r0, r0
/* 809E0B9C  40 82 00 38 */	bne lbl_809E0BD4
/* 809E0BA0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809E0BA4  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809E0BA8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 809E0BAC  38 7E 00 60 */	addi r3, r30, 0x60
/* 809E0BB0  D0 03 00 04 */	stfs f0, 4(r3)
/* 809E0BB4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809E0BB8  D0 03 00 08 */	stfs f0, 8(r3)
/* 809E0BBC  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha /* 0x809E31B4@ha */
/* 809E0BC0  38 84 31 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809E31B4@l */
/* 809E0BC4  38 BE 00 50 */	addi r5, r30, 0x50
/* 809E0BC8  4B FF EC 91 */	bl __register_global_object
/* 809E0BCC  38 00 00 01 */	li r0, 1
/* 809E0BD0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809E0BD4:
/* 809E0BD4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 809E0BD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E0BDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E0BE0  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 809E0BE4  4B 62 B7 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 809E0BE8  38 7D 09 84 */	addi r3, r29, 0x984
/* 809E0BEC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 809E0BF0  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 809E0BF4  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 809E0BF8  4B 88 EE 45 */	bl cLib_addCalc2__FPffff
/* 809E0BFC  38 7D 09 8C */	addi r3, r29, 0x98c
/* 809E0C00  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 809E0C04  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 809E0C08  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 809E0C0C  4B 88 EE 31 */	bl cLib_addCalc2__FPffff
/* 809E0C10  3B 00 00 00 */	li r24, 0
/* 809E0C14  3B 80 00 00 */	li r28, 0
/* 809E0C18  3B 60 00 00 */	li r27, 0
/* 809E0C1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809E0C20  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809E0C24  C3 DF 00 90 */	lfs f30, 0x90(r31)
/* 809E0C28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E0C2C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_809E0C30:
/* 809E0C30  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 809E0C34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E0C38  7C 39 04 2E */	lfsx f1, r25, r0
/* 809E0C3C  38 1B 09 84 */	addi r0, r27, 0x984
/* 809E0C40  7C 1D 04 2E */	lfsx f0, r29, r0
/* 809E0C44  EC 00 00 72 */	fmuls f0, f0, f1
/* 809E0C48  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 809E0C4C  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 809E0C50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809E0C54  7F 43 D3 78 */	mr r3, r26
/* 809E0C58  38 81 00 30 */	addi r4, r1, 0x30
/* 809E0C5C  38 A1 00 24 */	addi r5, r1, 0x24
/* 809E0C60  4B 96 61 0D */	bl PSMTXMultVec
/* 809E0C64  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809E0C68  FC 00 00 50 */	fneg f0, f0
/* 809E0C6C  FC 00 00 1E */	fctiwz f0, f0
/* 809E0C70  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809E0C74  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809E0C78  7C 7D E2 14 */	add r3, r29, r28
/* 809E0C7C  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809E0C80  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809E0C84  FC 00 00 50 */	fneg f0, f0
/* 809E0C88  FC 00 00 1E */	fctiwz f0, f0
/* 809E0C8C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809E0C90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809E0C94  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809E0C98  3B 18 00 01 */	addi r24, r24, 1
/* 809E0C9C  2C 18 00 03 */	cmpwi r24, 3
/* 809E0CA0  3B 9C 00 06 */	addi r28, r28, 6
/* 809E0CA4  3B 7B 00 04 */	addi r27, r27, 4
/* 809E0CA8  41 80 FF 88 */	blt lbl_809E0C30
/* 809E0CAC  38 7D 09 92 */	addi r3, r29, 0x992
/* 809E0CB0  38 80 00 00 */	li r4, 0
/* 809E0CB4  38 A0 05 55 */	li r5, 0x555
/* 809E0CB8  4B 88 FA 19 */	bl cLib_chaseS__FPsss
/* 809E0CBC  A8 1D 0E 0C */	lha r0, 0xe0c(r29)
/* 809E0CC0  2C 00 00 01 */	cmpwi r0, 1
/* 809E0CC4  40 82 00 2C */	bne lbl_809E0CF0
/* 809E0CC8  38 60 00 00 */	li r3, 0
/* 809E0CCC  38 80 00 00 */	li r4, 0
/* 809E0CD0  38 00 00 03 */	li r0, 3
/* 809E0CD4  7C 09 03 A6 */	mtctr r0
lbl_809E0CD8:
/* 809E0CD8  7C BD 1A 14 */	add r5, r29, r3
/* 809E0CDC  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809E0CE0  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809E0CE4  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809E0CE8  38 63 00 06 */	addi r3, r3, 6
/* 809E0CEC  42 00 FF EC */	bdnz lbl_809E0CD8
lbl_809E0CF0:
/* 809E0CF0  7F A3 EB 78 */	mr r3, r29
/* 809E0CF4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E0CF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809E0CFC  7D 89 03 A6 */	mtctr r12
/* 809E0D00  4E 80 04 21 */	bctrl 
/* 809E0D04  7F A3 EB 78 */	mr r3, r29
/* 809E0D08  48 00 17 9D */	bl lookat__11daNpc_grR_cFv
/* 809E0D0C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809E0D10  80 63 00 04 */	lwz r3, 4(r3)
/* 809E0D14  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E0D18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E0D1C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809E0D20  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E0D24  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E0D28  4B 96 57 89 */	bl PSMTXCopy
/* 809E0D2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E0D30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E0D34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809E0D38  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 809E0D3C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809E0D40  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 809E0D44  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809E0D48  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 809E0D4C  38 9E 00 60 */	addi r4, r30, 0x60
/* 809E0D50  38 BD 05 38 */	addi r5, r29, 0x538
/* 809E0D54  4B 96 60 19 */	bl PSMTXMultVec
/* 809E0D58  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809E0D5C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809E0D60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E0D64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E0D68  38 9E 00 60 */	addi r4, r30, 0x60
/* 809E0D6C  38 A1 00 30 */	addi r5, r1, 0x30
/* 809E0D70  4B 96 5F FD */	bl PSMTXMultVec
/* 809E0D74  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809E0D78  38 81 00 30 */	addi r4, r1, 0x30
/* 809E0D7C  4B 88 FE F9 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809E0D80  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 809E0D84  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809E0D88  38 81 00 30 */	addi r4, r1, 0x30
/* 809E0D8C  4B 88 FE 79 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809E0D90  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 809E0D94  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 809E0D98  28 04 00 00 */	cmplwi r4, 0
/* 809E0D9C  41 82 01 74 */	beq lbl_809E0F10
/* 809E0DA0  38 61 00 18 */	addi r3, r1, 0x18
/* 809E0DA4  38 BD 05 38 */	addi r5, r29, 0x538
/* 809E0DA8  4B 88 5D 8D */	bl __mi__4cXyzCFRC3Vec
/* 809E0DAC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809E0DB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E0DB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809E0DB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E0DBC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809E0DC0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809E0DC4  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 809E0DC8  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809E0DCC  7C 03 02 14 */	add r0, r3, r0
/* 809E0DD0  7C 00 00 D0 */	neg r0, r0
/* 809E0DD4  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E0DD8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 809E0DDC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 809E0DE0  4B 88 68 95 */	bl cM_atan2s__Fff
/* 809E0DE4  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 809E0DE8  7C 00 1A 14 */	add r0, r0, r3
/* 809E0DEC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E0DF0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809E0DF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809E0DF8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809E0DFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809E0E00  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809E0E04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809E0E08  38 61 00 0C */	addi r3, r1, 0xc
/* 809E0E0C  4B 96 63 2D */	bl PSVECSquareMag
/* 809E0E10  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809E0E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809E0E18  40 81 00 58 */	ble lbl_809E0E70
/* 809E0E1C  FC 00 08 34 */	frsqrte f0, f1
/* 809E0E20  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 809E0E24  FC 44 00 32 */	fmul f2, f4, f0
/* 809E0E28  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 809E0E2C  FC 00 00 32 */	fmul f0, f0, f0
/* 809E0E30  FC 01 00 32 */	fmul f0, f1, f0
/* 809E0E34  FC 03 00 28 */	fsub f0, f3, f0
/* 809E0E38  FC 02 00 32 */	fmul f0, f2, f0
/* 809E0E3C  FC 44 00 32 */	fmul f2, f4, f0
/* 809E0E40  FC 00 00 32 */	fmul f0, f0, f0
/* 809E0E44  FC 01 00 32 */	fmul f0, f1, f0
/* 809E0E48  FC 03 00 28 */	fsub f0, f3, f0
/* 809E0E4C  FC 02 00 32 */	fmul f0, f2, f0
/* 809E0E50  FC 44 00 32 */	fmul f2, f4, f0
/* 809E0E54  FC 00 00 32 */	fmul f0, f0, f0
/* 809E0E58  FC 01 00 32 */	fmul f0, f1, f0
/* 809E0E5C  FC 03 00 28 */	fsub f0, f3, f0
/* 809E0E60  FC 02 00 32 */	fmul f0, f2, f0
/* 809E0E64  FC 41 00 32 */	fmul f2, f1, f0
/* 809E0E68  FC 40 10 18 */	frsp f2, f2
/* 809E0E6C  48 00 00 90 */	b lbl_809E0EFC
lbl_809E0E70:
/* 809E0E70  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 809E0E74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809E0E78  40 80 00 10 */	bge lbl_809E0E88
/* 809E0E7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809E0E80  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809E0E84  48 00 00 78 */	b lbl_809E0EFC
lbl_809E0E88:
/* 809E0E88  D0 21 00 08 */	stfs f1, 8(r1)
/* 809E0E8C  80 81 00 08 */	lwz r4, 8(r1)
/* 809E0E90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809E0E94  3C 00 7F 80 */	lis r0, 0x7f80
/* 809E0E98  7C 03 00 00 */	cmpw r3, r0
/* 809E0E9C  41 82 00 14 */	beq lbl_809E0EB0
/* 809E0EA0  40 80 00 40 */	bge lbl_809E0EE0
/* 809E0EA4  2C 03 00 00 */	cmpwi r3, 0
/* 809E0EA8  41 82 00 20 */	beq lbl_809E0EC8
/* 809E0EAC  48 00 00 34 */	b lbl_809E0EE0
lbl_809E0EB0:
/* 809E0EB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809E0EB4  41 82 00 0C */	beq lbl_809E0EC0
/* 809E0EB8  38 00 00 01 */	li r0, 1
/* 809E0EBC  48 00 00 28 */	b lbl_809E0EE4
lbl_809E0EC0:
/* 809E0EC0  38 00 00 02 */	li r0, 2
/* 809E0EC4  48 00 00 20 */	b lbl_809E0EE4
lbl_809E0EC8:
/* 809E0EC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809E0ECC  41 82 00 0C */	beq lbl_809E0ED8
/* 809E0ED0  38 00 00 05 */	li r0, 5
/* 809E0ED4  48 00 00 10 */	b lbl_809E0EE4
lbl_809E0ED8:
/* 809E0ED8  38 00 00 03 */	li r0, 3
/* 809E0EDC  48 00 00 08 */	b lbl_809E0EE4
lbl_809E0EE0:
/* 809E0EE0  38 00 00 04 */	li r0, 4
lbl_809E0EE4:
/* 809E0EE4  2C 00 00 01 */	cmpwi r0, 1
/* 809E0EE8  40 82 00 10 */	bne lbl_809E0EF8
/* 809E0EEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809E0EF0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809E0EF4  48 00 00 08 */	b lbl_809E0EFC
lbl_809E0EF8:
/* 809E0EF8  FC 40 08 90 */	fmr f2, f1
lbl_809E0EFC:
/* 809E0EFC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 809E0F00  4B 88 67 75 */	bl cM_atan2s__Fff
/* 809E0F04  7C 03 00 D0 */	neg r0, r3
/* 809E0F08  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809E0F0C  48 00 00 10 */	b lbl_809E0F1C
lbl_809E0F10:
/* 809E0F10  38 00 00 00 */	li r0, 0
/* 809E0F14  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E0F18  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_809E0F1C:
/* 809E0F1C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809E0F20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E0F24  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E0F28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809E0F2C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809E0F30  4B 62 BE 35 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809E0F34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E0F38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E0F3C  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 809E0F40  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 809E0F44  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 809E0F48  4B 62 B3 59 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 809E0F4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E0F50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E0F54  38 81 00 3C */	addi r4, r1, 0x3c
/* 809E0F58  38 A1 00 48 */	addi r5, r1, 0x48
/* 809E0F5C  4B 96 5E 11 */	bl PSMTXMultVec
/* 809E0F60  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 809E0F64  C0 1D 08 E8 */	lfs f0, 0x8e8(r29)
/* 809E0F68  EC 20 F8 2A */	fadds f1, f0, f31
/* 809E0F6C  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 809E0F70  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809E0F74  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809E0F78  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809E0F7C  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809E0F80  28 00 00 00 */	cmplwi r0, 0
/* 809E0F84  40 82 00 9C */	bne lbl_809E1020
/* 809E0F88  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809E0F8C  28 00 00 00 */	cmplwi r0, 0
/* 809E0F90  40 82 00 90 */	bne lbl_809E1020
/* 809E0F94  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809E0F98  28 00 00 00 */	cmplwi r0, 0
/* 809E0F9C  40 82 00 28 */	bne lbl_809E0FC4
/* 809E0FA0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809E0FA4  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809E0FA8  90 1D 0C B4 */	stw r0, 0xcb4(r29)
/* 809E0FAC  38 00 00 1F */	li r0, 0x1f
/* 809E0FB0  90 1D 0C A4 */	stw r0, 0xca4(r29)
/* 809E0FB4  80 1D 0D 28 */	lwz r0, 0xd28(r29)
/* 809E0FB8  60 00 00 04 */	ori r0, r0, 4
/* 809E0FBC  90 1D 0D 28 */	stw r0, 0xd28(r29)
/* 809E0FC0  48 00 00 10 */	b lbl_809E0FD0
lbl_809E0FC4:
/* 809E0FC4  38 00 00 00 */	li r0, 0
/* 809E0FC8  90 1D 0C B4 */	stw r0, 0xcb4(r29)
/* 809E0FCC  90 1D 0C A4 */	stw r0, 0xca4(r29)
lbl_809E0FD0:
/* 809E0FD0  38 7D 0D B0 */	addi r3, r29, 0xdb0
/* 809E0FD4  38 81 00 48 */	addi r4, r1, 0x48
/* 809E0FD8  4B 88 E2 05 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809E0FDC  38 7D 0D B0 */	addi r3, r29, 0xdb0
/* 809E0FE0  38 9F 00 00 */	addi r4, r31, 0
/* 809E0FE4  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809E0FE8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809E0FEC  EC 21 00 2A */	fadds f1, f1, f0
/* 809E0FF0  4B 88 E2 09 */	bl SetH__8cM3dGCylFf
/* 809E0FF4  38 7D 0D B0 */	addi r3, r29, 0xdb0
/* 809E0FF8  38 9F 00 00 */	addi r4, r31, 0
/* 809E0FFC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809E1000  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809E1004  EC 21 00 2A */	fadds f1, f1, f0
/* 809E1008  4B 88 E1 F9 */	bl SetR__8cM3dGCylFf
/* 809E100C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E1010  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E1014  38 63 23 3C */	addi r3, r3, 0x233c
/* 809E1018  38 9D 0C 8C */	addi r4, r29, 0xc8c
/* 809E101C  4B 88 3B 8D */	bl Set__4cCcSFP8cCcD_Obj
lbl_809E1020:
/* 809E1020  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 809E1024  81 9D 0C C8 */	lwz r12, 0xcc8(r29)
/* 809E1028  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809E102C  7D 89 03 A6 */	mtctr r12
/* 809E1030  4E 80 04 21 */	bctrl 
/* 809E1034  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 809E1038  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 809E103C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 809E1040  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 809E1044  39 61 00 90 */	addi r11, r1, 0x90
/* 809E1048  4B 98 11 CD */	bl _restgpr_24
/* 809E104C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 809E1050  7C 08 03 A6 */	mtlr r0
/* 809E1054  38 21 00 B0 */	addi r1, r1, 0xb0
/* 809E1058  4E 80 00 20 */	blr 
