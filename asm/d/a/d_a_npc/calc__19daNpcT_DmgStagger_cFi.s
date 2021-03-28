lbl_80147E3C:
/* 80147E3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80147E40  7C 08 02 A6 */	mflr r0
/* 80147E44  90 01 00 64 */	stw r0, 0x64(r1)
/* 80147E48  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80147E4C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80147E50  39 61 00 50 */	addi r11, r1, 0x50
/* 80147E54  48 21 A3 79 */	bl _savegpr_25
/* 80147E58  7C 7E 1B 78 */	mr r30, r3
/* 80147E5C  7C 9F 23 78 */	mr r31, r4
/* 80147E60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80147E64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80147E68  A8 9E 00 16 */	lha r4, 0x16(r30)
/* 80147E6C  4B EC 45 71 */	bl mDoMtx_YrotS__FPA4_fs
/* 80147E70  38 7E 00 10 */	addi r3, r30, 0x10
/* 80147E74  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 80147E78  C0 42 9A 38 */	lfs f2, lit_5459(r2)
/* 80147E7C  C0 62 9A 3C */	lfs f3, lit_5460(r2)
/* 80147E80  48 12 7B BD */	bl cLib_addCalc2__FPffff
/* 80147E84  38 7E 00 0C */	addi r3, r30, 0xc
/* 80147E88  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 80147E8C  C0 42 9A 38 */	lfs f2, lit_5459(r2)
/* 80147E90  C0 62 9A 3C */	lfs f3, lit_5460(r2)
/* 80147E94  48 12 7B A9 */	bl cLib_addCalc2__FPffff
/* 80147E98  3B 20 00 00 */	li r25, 0
/* 80147E9C  3B A0 00 00 */	li r29, 0
/* 80147EA0  3B 80 00 00 */	li r28, 0
/* 80147EA4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80147EA8  3B 43 9A 20 */	addi r26, r3, sincosTable___5JMath@l
/* 80147EAC  C3 E2 99 D8 */	lfs f31, lit_4116(r2)
/* 80147EB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80147EB4  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
lbl_80147EB8:
/* 80147EB8  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 80147EBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80147EC0  7C 3A 04 2E */	lfsx f1, r26, r0
/* 80147EC4  38 1C 00 0C */	addi r0, r28, 0xc
/* 80147EC8  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80147ECC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80147ED0  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 80147ED4  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 80147ED8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80147EDC  7F 63 DB 78 */	mr r3, r27
/* 80147EE0  38 81 00 14 */	addi r4, r1, 0x14
/* 80147EE4  38 A1 00 08 */	addi r5, r1, 8
/* 80147EE8  48 1F EE 85 */	bl PSMTXMultVec
/* 80147EEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80147EF0  FC 00 00 50 */	fneg f0, f0
/* 80147EF4  FC 00 00 1E */	fctiwz f0, f0
/* 80147EF8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80147EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80147F00  7C 7E EA 14 */	add r3, r30, r29
/* 80147F04  B0 03 00 00 */	sth r0, 0(r3)
/* 80147F08  C0 01 00 08 */	lfs f0, 8(r1)
/* 80147F0C  FC 00 00 50 */	fneg f0, f0
/* 80147F10  FC 00 00 1E */	fctiwz f0, f0
/* 80147F14  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80147F18  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80147F1C  B0 03 00 04 */	sth r0, 4(r3)
/* 80147F20  3B 39 00 01 */	addi r25, r25, 1
/* 80147F24  2C 19 00 02 */	cmpwi r25, 2
/* 80147F28  3B BD 00 06 */	addi r29, r29, 6
/* 80147F2C  3B 9C 00 04 */	addi r28, r28, 4
/* 80147F30  41 80 FF 88 */	blt lbl_80147EB8
/* 80147F34  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 80147F38  2C 00 00 00 */	cmpwi r0, 0
/* 80147F3C  41 82 00 40 */	beq lbl_80147F7C
/* 80147F40  38 7E 00 14 */	addi r3, r30, 0x14
/* 80147F44  38 80 00 00 */	li r4, 0
/* 80147F48  38 A0 05 55 */	li r5, 0x555
/* 80147F4C  48 12 87 85 */	bl cLib_chaseS__FPsss
/* 80147F50  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 80147F54  2C 00 00 00 */	cmpwi r0, 0
/* 80147F58  40 82 00 2C */	bne lbl_80147F84
/* 80147F5C  2C 1F 00 00 */	cmpwi r31, 0
/* 80147F60  41 82 00 10 */	beq lbl_80147F70
/* 80147F64  38 00 00 01 */	li r0, 1
/* 80147F68  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 80147F6C  48 00 00 18 */	b lbl_80147F84
lbl_80147F70:
/* 80147F70  38 00 00 01 */	li r0, 1
/* 80147F74  98 1E 00 18 */	stb r0, 0x18(r30)
/* 80147F78  48 00 00 0C */	b lbl_80147F84
lbl_80147F7C:
/* 80147F7C  38 00 00 00 */	li r0, 0
/* 80147F80  98 1E 00 18 */	stb r0, 0x18(r30)
lbl_80147F84:
/* 80147F84  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80147F88  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80147F8C  39 61 00 50 */	addi r11, r1, 0x50
/* 80147F90  48 21 A2 89 */	bl _restgpr_25
/* 80147F94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80147F98  7C 08 03 A6 */	mtlr r0
/* 80147F9C  38 21 00 60 */	addi r1, r1, 0x60
/* 80147FA0  4E 80 00 20 */	blr 
