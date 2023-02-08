lbl_80D07E24:
/* 80D07E24  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D07E28  7C 08 02 A6 */	mflr r0
/* 80D07E2C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D07E30  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D07E34  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D07E38  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80D07E3C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80D07E40  39 61 00 40 */	addi r11, r1, 0x40
/* 80D07E44  4B 65 A3 8D */	bl _savegpr_26
/* 80D07E48  7C 7E 1B 78 */	mr r30, r3
/* 80D07E4C  7C 9F 23 78 */	mr r31, r4
/* 80D07E50  3C 60 80 D1 */	lis r3, lit_3867@ha /* 0x80D085C0@ha */
/* 80D07E54  3B 83 85 C0 */	addi r28, r3, lit_3867@l /* 0x80D085C0@l */
/* 80D07E58  3B 40 00 00 */	li r26, 0
/* 80D07E5C  3B A0 00 00 */	li r29, 0
/* 80D07E60  1C 7F 01 60 */	mulli r3, r31, 0x160
/* 80D07E64  3B 63 05 80 */	addi r27, r3, 0x580
/* 80D07E68  7F 7E DA 14 */	add r27, r30, r27
/* 80D07E6C  C3 FC 00 18 */	lfs f31, 0x18(r28)
/* 80D07E70  C3 DC 00 38 */	lfs f30, 0x38(r28)
/* 80D07E74  48 00 01 30 */	b lbl_80D07FA4
lbl_80D07E78:
/* 80D07E78  38 61 00 0C */	addi r3, r1, 0xc
/* 80D07E7C  38 9D 05 80 */	addi r4, r29, 0x580
/* 80D07E80  7C 9E 22 14 */	add r4, r30, r4
/* 80D07E84  7F 65 DB 78 */	mr r5, r27
/* 80D07E88  4B 55 EC AD */	bl __mi__4cXyzCFRC3Vec
/* 80D07E8C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D07E90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D07E94  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D07E98  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D07E9C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D07EA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D07EA4  38 61 00 18 */	addi r3, r1, 0x18
/* 80D07EA8  4B 63 F2 91 */	bl PSVECSquareMag
/* 80D07EAC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D07EB0  40 81 00 58 */	ble lbl_80D07F08
/* 80D07EB4  FC 00 08 34 */	frsqrte f0, f1
/* 80D07EB8  C8 9C 00 20 */	lfd f4, 0x20(r28)
/* 80D07EBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D07EC0  C8 7C 00 28 */	lfd f3, 0x28(r28)
/* 80D07EC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D07EC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D07ECC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D07ED0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D07ED4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D07ED8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D07EDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D07EE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D07EE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D07EE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D07EEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D07EF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D07EF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D07EF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D07EFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80D07F00  FC 20 08 18 */	frsp f1, f1
/* 80D07F04  48 00 00 88 */	b lbl_80D07F8C
lbl_80D07F08:
/* 80D07F08  C8 1C 00 30 */	lfd f0, 0x30(r28)
/* 80D07F0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D07F10  40 80 00 10 */	bge lbl_80D07F20
/* 80D07F14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D07F18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D07F1C  48 00 00 70 */	b lbl_80D07F8C
lbl_80D07F20:
/* 80D07F20  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D07F24  80 81 00 08 */	lwz r4, 8(r1)
/* 80D07F28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D07F2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D07F30  7C 03 00 00 */	cmpw r3, r0
/* 80D07F34  41 82 00 14 */	beq lbl_80D07F48
/* 80D07F38  40 80 00 40 */	bge lbl_80D07F78
/* 80D07F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80D07F40  41 82 00 20 */	beq lbl_80D07F60
/* 80D07F44  48 00 00 34 */	b lbl_80D07F78
lbl_80D07F48:
/* 80D07F48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D07F4C  41 82 00 0C */	beq lbl_80D07F58
/* 80D07F50  38 00 00 01 */	li r0, 1
/* 80D07F54  48 00 00 28 */	b lbl_80D07F7C
lbl_80D07F58:
/* 80D07F58  38 00 00 02 */	li r0, 2
/* 80D07F5C  48 00 00 20 */	b lbl_80D07F7C
lbl_80D07F60:
/* 80D07F60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D07F64  41 82 00 0C */	beq lbl_80D07F70
/* 80D07F68  38 00 00 05 */	li r0, 5
/* 80D07F6C  48 00 00 10 */	b lbl_80D07F7C
lbl_80D07F70:
/* 80D07F70  38 00 00 03 */	li r0, 3
/* 80D07F74  48 00 00 08 */	b lbl_80D07F7C
lbl_80D07F78:
/* 80D07F78  38 00 00 04 */	li r0, 4
lbl_80D07F7C:
/* 80D07F7C  2C 00 00 01 */	cmpwi r0, 1
/* 80D07F80  40 82 00 0C */	bne lbl_80D07F8C
/* 80D07F84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D07F88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D07F8C:
/* 80D07F8C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80D07F90  40 80 00 0C */	bge lbl_80D07F9C
/* 80D07F94  38 60 00 00 */	li r3, 0
/* 80D07F98  48 00 00 18 */	b lbl_80D07FB0
lbl_80D07F9C:
/* 80D07F9C  3B 5A 00 01 */	addi r26, r26, 1
/* 80D07FA0  3B BD 01 60 */	addi r29, r29, 0x160
lbl_80D07FA4:
/* 80D07FA4  7C 1A F8 00 */	cmpw r26, r31
/* 80D07FA8  41 80 FE D0 */	blt lbl_80D07E78
/* 80D07FAC  38 60 00 01 */	li r3, 1
lbl_80D07FB0:
/* 80D07FB0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D07FB4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D07FB8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80D07FBC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80D07FC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80D07FC4  4B 65 A2 59 */	bl _restgpr_26
/* 80D07FC8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D07FCC  7C 08 03 A6 */	mtlr r0
/* 80D07FD0  38 21 00 60 */	addi r1, r1, 0x60
/* 80D07FD4  4E 80 00 20 */	blr 
