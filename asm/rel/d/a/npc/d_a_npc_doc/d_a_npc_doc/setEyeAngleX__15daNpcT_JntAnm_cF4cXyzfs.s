lbl_809A9E5C:
/* 809A9E5C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809A9E60  7C 08 02 A6 */	mflr r0
/* 809A9E64  90 01 00 74 */	stw r0, 0x74(r1)
/* 809A9E68  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809A9E6C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809A9E70  39 61 00 60 */	addi r11, r1, 0x60
/* 809A9E74  4B 9B 83 69 */	bl _savegpr_29
/* 809A9E78  7C 7F 1B 78 */	mr r31, r3
/* 809A9E7C  7C 80 23 78 */	mr r0, r4
/* 809A9E80  FF E0 08 90 */	fmr f31, f1
/* 809A9E84  7C BD 2B 78 */	mr r29, r5
/* 809A9E88  3C 60 80 9B */	lis r3, m__17daNpc_Doc_Param_c@ha /* 0x809AA31C@ha */
/* 809A9E8C  3B C3 A3 1C */	addi r30, r3, m__17daNpc_Doc_Param_c@l /* 0x809AA31C@l */
/* 809A9E90  38 A0 00 00 */	li r5, 0
/* 809A9E94  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 809A9E98  28 04 00 00 */	cmplwi r4, 0
/* 809A9E9C  41 82 01 40 */	beq lbl_809A9FDC
/* 809A9EA0  38 61 00 18 */	addi r3, r1, 0x18
/* 809A9EA4  7C 05 03 78 */	mr r5, r0
/* 809A9EA8  4B 8B CC 8D */	bl __mi__4cXyzCFRC3Vec
/* 809A9EAC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 809A9EB0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809A9EB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809A9EB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A9EBC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809A9EC0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809A9EC4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 809A9EC8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809A9ECC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809A9ED0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809A9ED4  38 61 00 0C */	addi r3, r1, 0xc
/* 809A9ED8  4B 99 D2 61 */	bl PSVECSquareMag
/* 809A9EDC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809A9EE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A9EE4  40 81 00 58 */	ble lbl_809A9F3C
/* 809A9EE8  FC 00 08 34 */	frsqrte f0, f1
/* 809A9EEC  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 809A9EF0  FC 44 00 32 */	fmul f2, f4, f0
/* 809A9EF4  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 809A9EF8  FC 00 00 32 */	fmul f0, f0, f0
/* 809A9EFC  FC 01 00 32 */	fmul f0, f1, f0
/* 809A9F00  FC 03 00 28 */	fsub f0, f3, f0
/* 809A9F04  FC 02 00 32 */	fmul f0, f2, f0
/* 809A9F08  FC 44 00 32 */	fmul f2, f4, f0
/* 809A9F0C  FC 00 00 32 */	fmul f0, f0, f0
/* 809A9F10  FC 01 00 32 */	fmul f0, f1, f0
/* 809A9F14  FC 03 00 28 */	fsub f0, f3, f0
/* 809A9F18  FC 02 00 32 */	fmul f0, f2, f0
/* 809A9F1C  FC 44 00 32 */	fmul f2, f4, f0
/* 809A9F20  FC 00 00 32 */	fmul f0, f0, f0
/* 809A9F24  FC 01 00 32 */	fmul f0, f1, f0
/* 809A9F28  FC 03 00 28 */	fsub f0, f3, f0
/* 809A9F2C  FC 02 00 32 */	fmul f0, f2, f0
/* 809A9F30  FC 41 00 32 */	fmul f2, f1, f0
/* 809A9F34  FC 40 10 18 */	frsp f2, f2
/* 809A9F38  48 00 00 90 */	b lbl_809A9FC8
lbl_809A9F3C:
/* 809A9F3C  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 809A9F40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A9F44  40 80 00 10 */	bge lbl_809A9F54
/* 809A9F48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A9F4C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A9F50  48 00 00 78 */	b lbl_809A9FC8
lbl_809A9F54:
/* 809A9F54  D0 21 00 08 */	stfs f1, 8(r1)
/* 809A9F58  80 81 00 08 */	lwz r4, 8(r1)
/* 809A9F5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A9F60  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A9F64  7C 03 00 00 */	cmpw r3, r0
/* 809A9F68  41 82 00 14 */	beq lbl_809A9F7C
/* 809A9F6C  40 80 00 40 */	bge lbl_809A9FAC
/* 809A9F70  2C 03 00 00 */	cmpwi r3, 0
/* 809A9F74  41 82 00 20 */	beq lbl_809A9F94
/* 809A9F78  48 00 00 34 */	b lbl_809A9FAC
lbl_809A9F7C:
/* 809A9F7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A9F80  41 82 00 0C */	beq lbl_809A9F8C
/* 809A9F84  38 00 00 01 */	li r0, 1
/* 809A9F88  48 00 00 28 */	b lbl_809A9FB0
lbl_809A9F8C:
/* 809A9F8C  38 00 00 02 */	li r0, 2
/* 809A9F90  48 00 00 20 */	b lbl_809A9FB0
lbl_809A9F94:
/* 809A9F94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A9F98  41 82 00 0C */	beq lbl_809A9FA4
/* 809A9F9C  38 00 00 05 */	li r0, 5
/* 809A9FA0  48 00 00 10 */	b lbl_809A9FB0
lbl_809A9FA4:
/* 809A9FA4  38 00 00 03 */	li r0, 3
/* 809A9FA8  48 00 00 08 */	b lbl_809A9FB0
lbl_809A9FAC:
/* 809A9FAC  38 00 00 04 */	li r0, 4
lbl_809A9FB0:
/* 809A9FB0  2C 00 00 01 */	cmpwi r0, 1
/* 809A9FB4  40 82 00 10 */	bne lbl_809A9FC4
/* 809A9FB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A9FBC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A9FC0  48 00 00 08 */	b lbl_809A9FC8
lbl_809A9FC4:
/* 809A9FC4  FC 40 08 90 */	fmr f2, f1
lbl_809A9FC8:
/* 809A9FC8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809A9FCC  4B 8B D6 A9 */	bl cM_atan2s__Fff
/* 809A9FD0  7C 03 00 D0 */	neg r0, r3
/* 809A9FD4  7C 05 07 34 */	extsh r5, r0
/* 809A9FD8  7C A5 EA 14 */	add r5, r5, r29
lbl_809A9FDC:
/* 809A9FDC  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 809A9FE0  7C A5 02 14 */	add r5, r5, r0
/* 809A9FE4  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 809A9FE8  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809A9FEC  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 809A9FF0  C8 5E 00 E0 */	lfd f2, 0xe0(r30)
/* 809A9FF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A9FF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A9FFC  3C 60 43 30 */	lis r3, 0x4330
/* 809AA000  90 61 00 30 */	stw r3, 0x30(r1)
/* 809AA004  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809AA008  EC 20 10 28 */	fsubs f1, f0, f2
/* 809AA00C  EC 03 20 28 */	fsubs f0, f3, f4
/* 809AA010  EC 21 00 32 */	fmuls f1, f1, f0
/* 809AA014  7C A0 07 34 */	extsh r0, r5
/* 809AA018  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809AA01C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809AA020  90 61 00 38 */	stw r3, 0x38(r1)
/* 809AA024  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809AA028  EC 00 10 28 */	fsubs f0, f0, f2
/* 809AA02C  EC 00 01 32 */	fmuls f0, f0, f4
/* 809AA030  EC 01 00 2A */	fadds f0, f1, f0
/* 809AA034  FC 00 00 1E */	fctiwz f0, f0
/* 809AA038  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809AA03C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809AA040  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 809AA044  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809AA048  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809AA04C  39 61 00 60 */	addi r11, r1, 0x60
/* 809AA050  4B 9B 81 D9 */	bl _restgpr_29
/* 809AA054  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809AA058  7C 08 03 A6 */	mtlr r0
/* 809AA05C  38 21 00 70 */	addi r1, r1, 0x70
/* 809AA060  4E 80 00 20 */	blr 
