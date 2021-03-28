lbl_809E9BB4:
/* 809E9BB4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 809E9BB8  7C 08 02 A6 */	mflr r0
/* 809E9BBC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 809E9BC0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 809E9BC4  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 809E9BC8  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 809E9BCC  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 809E9BD0  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 809E9BD4  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 809E9BD8  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 809E9BDC  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 809E9BE0  39 61 00 90 */	addi r11, r1, 0x90
/* 809E9BE4  4B 97 85 E4 */	b _savegpr_24
/* 809E9BE8  7C 7D 1B 78 */	mr r29, r3
/* 809E9BEC  3C 60 80 9F */	lis r3, lit_1109@ha
/* 809E9BF0  3B C3 FC 08 */	addi r30, r3, lit_1109@l
/* 809E9BF4  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha
/* 809E9BF8  3B E3 F1 F4 */	addi r31, r3, m__17daNpc_Grz_Param_c@l
/* 809E9BFC  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809E9C00  7C 00 07 75 */	extsb. r0, r0
/* 809E9C04  40 82 00 38 */	bne lbl_809E9C3C
/* 809E9C08  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 809E9C0C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809E9C10  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809E9C14  38 7E 00 60 */	addi r3, r30, 0x60
/* 809E9C18  D0 03 00 04 */	stfs f0, 4(r3)
/* 809E9C1C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809E9C20  D0 03 00 08 */	stfs f0, 8(r3)
/* 809E9C24  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha
/* 809E9C28  38 84 EA 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 809E9C2C  38 BE 00 50 */	addi r5, r30, 0x50
/* 809E9C30  4B FF E7 69 */	bl __register_global_object
/* 809E9C34  38 00 00 01 */	li r0, 1
/* 809E9C38  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809E9C3C:
/* 809E9C3C  C3 FF 00 00 */	lfs f31, 0(r31)
/* 809E9C40  C3 DF 00 A8 */	lfs f30, 0xa8(r31)
/* 809E9C44  FF A0 F0 90 */	fmr f29, f30
/* 809E9C48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E9C4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E9C50  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 809E9C54  4B 62 27 88 */	b mDoMtx_YrotS__FPA4_fs
/* 809E9C58  38 7D 09 84 */	addi r3, r29, 0x984
/* 809E9C5C  FC 20 F0 90 */	fmr f1, f30
/* 809E9C60  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 809E9C64  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 809E9C68  4B 88 5D D4 */	b cLib_addCalc2__FPffff
/* 809E9C6C  38 7D 09 8C */	addi r3, r29, 0x98c
/* 809E9C70  FC 20 F0 90 */	fmr f1, f30
/* 809E9C74  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 809E9C78  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 809E9C7C  4B 88 5D C0 */	b cLib_addCalc2__FPffff
/* 809E9C80  3B 00 00 00 */	li r24, 0
/* 809E9C84  3B 80 00 00 */	li r28, 0
/* 809E9C88  3B 60 00 00 */	li r27, 0
/* 809E9C8C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809E9C90  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 809E9C94  FF 80 F0 90 */	fmr f28, f30
/* 809E9C98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E9C9C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_809E9CA0:
/* 809E9CA0  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 809E9CA4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E9CA8  7C 39 04 2E */	lfsx f1, r25, r0
/* 809E9CAC  38 1B 09 84 */	addi r0, r27, 0x984
/* 809E9CB0  7C 1D 04 2E */	lfsx f0, r29, r0
/* 809E9CB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 809E9CB8  D3 81 00 30 */	stfs f28, 0x30(r1)
/* 809E9CBC  D3 81 00 34 */	stfs f28, 0x34(r1)
/* 809E9CC0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809E9CC4  7F 43 D3 78 */	mr r3, r26
/* 809E9CC8  38 81 00 30 */	addi r4, r1, 0x30
/* 809E9CCC  38 A1 00 24 */	addi r5, r1, 0x24
/* 809E9CD0  4B 95 D0 9C */	b PSMTXMultVec
/* 809E9CD4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809E9CD8  FC 00 00 50 */	fneg f0, f0
/* 809E9CDC  FC 00 00 1E */	fctiwz f0, f0
/* 809E9CE0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809E9CE4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809E9CE8  7C 7D E2 14 */	add r3, r29, r28
/* 809E9CEC  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809E9CF0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809E9CF4  FC 00 00 50 */	fneg f0, f0
/* 809E9CF8  FC 00 00 1E */	fctiwz f0, f0
/* 809E9CFC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809E9D00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809E9D04  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809E9D08  3B 18 00 01 */	addi r24, r24, 1
/* 809E9D0C  2C 18 00 03 */	cmpwi r24, 3
/* 809E9D10  3B 9C 00 06 */	addi r28, r28, 6
/* 809E9D14  3B 7B 00 04 */	addi r27, r27, 4
/* 809E9D18  41 80 FF 88 */	blt lbl_809E9CA0
/* 809E9D1C  38 7D 09 92 */	addi r3, r29, 0x992
/* 809E9D20  38 80 00 00 */	li r4, 0
/* 809E9D24  38 A0 05 55 */	li r5, 0x555
/* 809E9D28  4B 88 69 A8 */	b cLib_chaseS__FPsss
/* 809E9D2C  A8 1D 1A 78 */	lha r0, 0x1a78(r29)
/* 809E9D30  2C 00 00 01 */	cmpwi r0, 1
/* 809E9D34  40 82 00 2C */	bne lbl_809E9D60
/* 809E9D38  38 60 00 00 */	li r3, 0
/* 809E9D3C  38 80 00 00 */	li r4, 0
/* 809E9D40  38 00 00 03 */	li r0, 3
/* 809E9D44  7C 09 03 A6 */	mtctr r0
lbl_809E9D48:
/* 809E9D48  7C BD 1A 14 */	add r5, r29, r3
/* 809E9D4C  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809E9D50  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809E9D54  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809E9D58  38 63 00 06 */	addi r3, r3, 6
/* 809E9D5C  42 00 FF EC */	bdnz lbl_809E9D48
lbl_809E9D60:
/* 809E9D60  7F A3 EB 78 */	mr r3, r29
/* 809E9D64  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E9D68  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809E9D6C  7D 89 03 A6 */	mtctr r12
/* 809E9D70  4E 80 04 21 */	bctrl 
/* 809E9D74  7F A3 EB 78 */	mr r3, r29
/* 809E9D78  48 00 24 11 */	bl lookat__11daNpc_Grz_cFv
/* 809E9D7C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809E9D80  80 63 00 04 */	lwz r3, 4(r3)
/* 809E9D84  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E9D88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E9D8C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809E9D90  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809E9D94  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809E9D98  4B 95 C7 18 */	b PSMTXCopy
/* 809E9D9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E9DA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E9DA4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809E9DA8  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 809E9DAC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809E9DB0  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 809E9DB4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809E9DB8  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 809E9DBC  38 9E 00 60 */	addi r4, r30, 0x60
/* 809E9DC0  38 BD 05 38 */	addi r5, r29, 0x538
/* 809E9DC4  4B 95 CF A8 */	b PSMTXMultVec
/* 809E9DC8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809E9DCC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809E9DD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E9DD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E9DD8  38 9E 00 60 */	addi r4, r30, 0x60
/* 809E9DDC  38 A1 00 30 */	addi r5, r1, 0x30
/* 809E9DE0  4B 95 CF 8C */	b PSMTXMultVec
/* 809E9DE4  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809E9DE8  38 81 00 30 */	addi r4, r1, 0x30
/* 809E9DEC  4B 88 6E 88 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809E9DF0  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 809E9DF4  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809E9DF8  38 81 00 30 */	addi r4, r1, 0x30
/* 809E9DFC  4B 88 6E 08 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809E9E00  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 809E9E04  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 809E9E08  28 04 00 00 */	cmplwi r4, 0
/* 809E9E0C  41 82 01 74 */	beq lbl_809E9F80
/* 809E9E10  38 61 00 18 */	addi r3, r1, 0x18
/* 809E9E14  38 BD 05 38 */	addi r5, r29, 0x538
/* 809E9E18  4B 87 CD 1C */	b __mi__4cXyzCFRC3Vec
/* 809E9E1C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809E9E20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E9E24  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809E9E28  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E9E2C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809E9E30  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809E9E34  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 809E9E38  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809E9E3C  7C 03 02 14 */	add r0, r3, r0
/* 809E9E40  7C 00 00 D0 */	neg r0, r0
/* 809E9E44  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E9E48  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 809E9E4C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 809E9E50  4B 87 D8 24 */	b cM_atan2s__Fff
/* 809E9E54  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 809E9E58  7C 00 1A 14 */	add r0, r0, r3
/* 809E9E5C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E9E60  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809E9E64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809E9E68  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809E9E6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809E9E70  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809E9E74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809E9E78  38 61 00 0C */	addi r3, r1, 0xc
/* 809E9E7C  4B 95 D2 BC */	b PSVECSquareMag
/* 809E9E80  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809E9E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809E9E88  40 81 00 58 */	ble lbl_809E9EE0
/* 809E9E8C  FC 00 08 34 */	frsqrte f0, f1
/* 809E9E90  C8 9F 00 D0 */	lfd f4, 0xd0(r31)
/* 809E9E94  FC 44 00 32 */	fmul f2, f4, f0
/* 809E9E98  C8 7F 00 D8 */	lfd f3, 0xd8(r31)
/* 809E9E9C  FC 00 00 32 */	fmul f0, f0, f0
/* 809E9EA0  FC 01 00 32 */	fmul f0, f1, f0
/* 809E9EA4  FC 03 00 28 */	fsub f0, f3, f0
/* 809E9EA8  FC 02 00 32 */	fmul f0, f2, f0
/* 809E9EAC  FC 44 00 32 */	fmul f2, f4, f0
/* 809E9EB0  FC 00 00 32 */	fmul f0, f0, f0
/* 809E9EB4  FC 01 00 32 */	fmul f0, f1, f0
/* 809E9EB8  FC 03 00 28 */	fsub f0, f3, f0
/* 809E9EBC  FC 02 00 32 */	fmul f0, f2, f0
/* 809E9EC0  FC 44 00 32 */	fmul f2, f4, f0
/* 809E9EC4  FC 00 00 32 */	fmul f0, f0, f0
/* 809E9EC8  FC 01 00 32 */	fmul f0, f1, f0
/* 809E9ECC  FC 03 00 28 */	fsub f0, f3, f0
/* 809E9ED0  FC 02 00 32 */	fmul f0, f2, f0
/* 809E9ED4  FC 41 00 32 */	fmul f2, f1, f0
/* 809E9ED8  FC 40 10 18 */	frsp f2, f2
/* 809E9EDC  48 00 00 90 */	b lbl_809E9F6C
lbl_809E9EE0:
/* 809E9EE0  C8 1F 00 E0 */	lfd f0, 0xe0(r31)
/* 809E9EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809E9EE8  40 80 00 10 */	bge lbl_809E9EF8
/* 809E9EEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809E9EF0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809E9EF4  48 00 00 78 */	b lbl_809E9F6C
lbl_809E9EF8:
/* 809E9EF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 809E9EFC  80 81 00 08 */	lwz r4, 8(r1)
/* 809E9F00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809E9F04  3C 00 7F 80 */	lis r0, 0x7f80
/* 809E9F08  7C 03 00 00 */	cmpw r3, r0
/* 809E9F0C  41 82 00 14 */	beq lbl_809E9F20
/* 809E9F10  40 80 00 40 */	bge lbl_809E9F50
/* 809E9F14  2C 03 00 00 */	cmpwi r3, 0
/* 809E9F18  41 82 00 20 */	beq lbl_809E9F38
/* 809E9F1C  48 00 00 34 */	b lbl_809E9F50
lbl_809E9F20:
/* 809E9F20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809E9F24  41 82 00 0C */	beq lbl_809E9F30
/* 809E9F28  38 00 00 01 */	li r0, 1
/* 809E9F2C  48 00 00 28 */	b lbl_809E9F54
lbl_809E9F30:
/* 809E9F30  38 00 00 02 */	li r0, 2
/* 809E9F34  48 00 00 20 */	b lbl_809E9F54
lbl_809E9F38:
/* 809E9F38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809E9F3C  41 82 00 0C */	beq lbl_809E9F48
/* 809E9F40  38 00 00 05 */	li r0, 5
/* 809E9F44  48 00 00 10 */	b lbl_809E9F54
lbl_809E9F48:
/* 809E9F48  38 00 00 03 */	li r0, 3
/* 809E9F4C  48 00 00 08 */	b lbl_809E9F54
lbl_809E9F50:
/* 809E9F50  38 00 00 04 */	li r0, 4
lbl_809E9F54:
/* 809E9F54  2C 00 00 01 */	cmpwi r0, 1
/* 809E9F58  40 82 00 10 */	bne lbl_809E9F68
/* 809E9F5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809E9F60  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809E9F64  48 00 00 08 */	b lbl_809E9F6C
lbl_809E9F68:
/* 809E9F68  FC 40 08 90 */	fmr f2, f1
lbl_809E9F6C:
/* 809E9F6C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 809E9F70  4B 87 D7 04 */	b cM_atan2s__Fff
/* 809E9F74  7C 03 00 D0 */	neg r0, r3
/* 809E9F78  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809E9F7C  48 00 00 10 */	b lbl_809E9F8C
lbl_809E9F80:
/* 809E9F80  38 00 00 00 */	li r0, 0
/* 809E9F84  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809E9F88  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_809E9F8C:
/* 809E9F8C  80 1D 1A 84 */	lwz r0, 0x1a84(r29)
/* 809E9F90  2C 00 00 02 */	cmpwi r0, 2
/* 809E9F94  40 82 00 70 */	bne lbl_809EA004
/* 809E9F98  C3 BF 00 E8 */	lfs f29, 0xe8(r31)
/* 809E9F9C  C3 DF 00 EC */	lfs f30, 0xec(r31)
/* 809E9FA0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809E9FA4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E9FA8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E9FAC  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 809E9FB0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809E9FB4  4B 62 2D B0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809E9FB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E9FBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E9FC0  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809E9FC4  4B 62 24 70 */	b mDoMtx_YrotM__FPA4_fs
/* 809E9FC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E9FCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E9FD0  38 81 00 3C */	addi r4, r1, 0x3c
/* 809E9FD4  38 A1 00 48 */	addi r5, r1, 0x48
/* 809E9FD8  4B 95 CD 94 */	b PSMTXMultVec
/* 809E9FDC  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 809E9FE0  FC 20 F0 90 */	fmr f1, f30
/* 809E9FE4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 809E9FE8  EC 00 F8 2A */	fadds f0, f0, f31
/* 809E9FEC  EC 21 00 2A */	fadds f1, f1, f0
/* 809E9FF0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809E9FF4  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809E9FF8  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809E9FFC  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809EA000  48 00 00 E4 */	b lbl_809EA0E4
lbl_809EA004:
/* 809EA004  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 809EA008  2C 00 00 08 */	cmpwi r0, 8
/* 809EA00C  40 82 00 30 */	bne lbl_809EA03C
/* 809EA010  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809EA014  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809EA018  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809EA01C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 809EA020  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 809EA024  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 809EA028  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 809EA02C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 809EA030  EC 01 00 2A */	fadds f0, f1, f0
/* 809EA034  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 809EA038  48 00 00 AC */	b lbl_809EA0E4
lbl_809EA03C:
/* 809EA03C  C3 BF 00 F4 */	lfs f29, 0xf4(r31)
/* 809EA040  C3 DF 00 F8 */	lfs f30, 0xf8(r31)
/* 809EA044  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809EA048  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809EA04C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809EA050  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809EA054  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809EA058  4B 62 2D 0C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809EA05C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EA060  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EA064  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809EA068  4B 62 23 CC */	b mDoMtx_YrotM__FPA4_fs
/* 809EA06C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EA070  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EA074  38 81 00 3C */	addi r4, r1, 0x3c
/* 809EA078  38 A1 00 48 */	addi r5, r1, 0x48
/* 809EA07C  4B 95 CC F0 */	b PSMTXMultVec
/* 809EA080  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 809EA084  C0 1D 08 E8 */	lfs f0, 0x8e8(r29)
/* 809EA088  EC 20 F8 2A */	fadds f1, f0, f31
/* 809EA08C  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 809EA090  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809EA094  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809EA098  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809EA09C  88 1D 1A 7C */	lbz r0, 0x1a7c(r29)
/* 809EA0A0  28 00 00 02 */	cmplwi r0, 2
/* 809EA0A4  40 82 00 40 */	bne lbl_809EA0E4
/* 809EA0A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EA0AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EA0B0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809EA0B4  28 00 00 00 */	cmplwi r0, 0
/* 809EA0B8  40 82 00 2C */	bne lbl_809EA0E4
/* 809EA0BC  C3 BF 00 FC */	lfs f29, 0xfc(r31)
/* 809EA0C0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809EA0C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809EA0C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809EA0CC  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 809EA0D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EA0D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EA0D8  38 81 00 3C */	addi r4, r1, 0x3c
/* 809EA0DC  38 A1 00 48 */	addi r5, r1, 0x48
/* 809EA0E0  4B 95 CC 8C */	b PSMTXMultVec
lbl_809EA0E4:
/* 809EA0E4  38 7D 07 C4 */	addi r3, r29, 0x7c4
/* 809EA0E8  4B 69 97 48 */	b Move__10dCcD_GSttsFv
/* 809EA0EC  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809EA0F0  28 00 00 00 */	cmplwi r0, 0
/* 809EA0F4  40 82 00 94 */	bne lbl_809EA188
/* 809EA0F8  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809EA0FC  28 00 00 00 */	cmplwi r0, 0
/* 809EA100  40 82 00 88 */	bne lbl_809EA188
/* 809EA104  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809EA108  28 00 00 00 */	cmplwi r0, 0
/* 809EA10C  40 82 00 28 */	bne lbl_809EA134
/* 809EA110  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809EA114  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809EA118  90 1D 12 F4 */	stw r0, 0x12f4(r29)
/* 809EA11C  38 00 00 1F */	li r0, 0x1f
/* 809EA120  90 1D 12 E4 */	stw r0, 0x12e4(r29)
/* 809EA124  80 1D 13 68 */	lwz r0, 0x1368(r29)
/* 809EA128  60 00 00 04 */	ori r0, r0, 4
/* 809EA12C  90 1D 13 68 */	stw r0, 0x1368(r29)
/* 809EA130  48 00 00 10 */	b lbl_809EA140
lbl_809EA134:
/* 809EA134  38 00 00 00 */	li r0, 0
/* 809EA138  90 1D 12 F4 */	stw r0, 0x12f4(r29)
/* 809EA13C  90 1D 12 E4 */	stw r0, 0x12e4(r29)
lbl_809EA140:
/* 809EA140  38 7D 13 F0 */	addi r3, r29, 0x13f0
/* 809EA144  38 81 00 48 */	addi r4, r1, 0x48
/* 809EA148  4B 88 50 94 */	b SetC__8cM3dGCylFRC4cXyz
/* 809EA14C  38 7D 13 F0 */	addi r3, r29, 0x13f0
/* 809EA150  38 9F 00 00 */	addi r4, r31, 0
/* 809EA154  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 809EA158  EC 20 F0 2A */	fadds f1, f0, f30
/* 809EA15C  4B 88 50 9C */	b SetH__8cM3dGCylFf
/* 809EA160  38 7D 13 F0 */	addi r3, r29, 0x13f0
/* 809EA164  38 9F 00 00 */	addi r4, r31, 0
/* 809EA168  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 809EA16C  EC 20 E8 2A */	fadds f1, f0, f29
/* 809EA170  4B 88 50 90 */	b SetR__8cM3dGCylFf
/* 809EA174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EA178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EA17C  38 63 23 3C */	addi r3, r3, 0x233c
/* 809EA180  38 9D 12 CC */	addi r4, r29, 0x12cc
/* 809EA184  4B 87 AA 24 */	b Set__4cCcSFP8cCcD_Obj
lbl_809EA188:
/* 809EA188  38 7D 12 CC */	addi r3, r29, 0x12cc
/* 809EA18C  81 9D 13 08 */	lwz r12, 0x1308(r29)
/* 809EA190  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809EA194  7D 89 03 A6 */	mtctr r12
/* 809EA198  4E 80 04 21 */	bctrl 
/* 809EA19C  7F A3 EB 78 */	mr r3, r29
/* 809EA1A0  48 00 00 3D */	bl setCollisionPunch__11daNpc_Grz_cFv
/* 809EA1A4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 809EA1A8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 809EA1AC  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 809EA1B0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 809EA1B4  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 809EA1B8  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 809EA1BC  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 809EA1C0  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 809EA1C4  39 61 00 90 */	addi r11, r1, 0x90
/* 809EA1C8  4B 97 80 4C */	b _restgpr_24
/* 809EA1CC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 809EA1D0  7C 08 03 A6 */	mtlr r0
/* 809EA1D4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 809EA1D8  4E 80 00 20 */	blr 
