lbl_80577E24:
/* 80577E24  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80577E28  7C 08 02 A6 */	mflr r0
/* 80577E2C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80577E30  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80577E34  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80577E38  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80577E3C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80577E40  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80577E44  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80577E48  39 61 00 30 */	addi r11, r1, 0x30
/* 80577E4C  4B DE A3 85 */	bl _savegpr_26
/* 80577E50  7C 7D 1B 78 */	mr r29, r3
/* 80577E54  7C 9E 23 78 */	mr r30, r4
/* 80577E58  FF A0 08 90 */	fmr f29, f1
/* 80577E5C  FF C0 10 90 */	fmr f30, f2
/* 80577E60  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x80578A88@ha */
/* 80577E64  3B 83 8A 88 */	addi r28, r3, ccCylSrc@l /* 0x80578A88@l */
/* 80577E68  80 1D 05 A4 */	lwz r0, 0x5a4(r29)
/* 80577E6C  2C 00 00 02 */	cmpwi r0, 2
/* 80577E70  40 82 01 40 */	bne lbl_80577FB0
/* 80577E74  3B E0 00 00 */	li r31, 0
/* 80577E78  C3 FC 00 74 */	lfs f31, 0x74(r28)
/* 80577E7C  48 00 01 28 */	b lbl_80577FA4
lbl_80577E80:
/* 80577E80  7F C3 F3 78 */	mr r3, r30
/* 80577E84  7F E0 07 34 */	extsh r0, r31
/* 80577E88  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80577E8C  7F 5D 02 14 */	add r26, r29, r0
/* 80577E90  3B 7A 05 AC */	addi r27, r26, 0x5ac
/* 80577E94  7F 64 DB 78 */	mr r4, r27
/* 80577E98  4B DC F5 05 */	bl PSVECSquareDistance
/* 80577E9C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80577EA0  40 81 00 58 */	ble lbl_80577EF8
/* 80577EA4  FC 00 08 34 */	frsqrte f0, f1
/* 80577EA8  C8 9C 00 B8 */	lfd f4, 0xb8(r28)
/* 80577EAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80577EB0  C8 7C 00 C0 */	lfd f3, 0xc0(r28)
/* 80577EB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80577EB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80577EBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80577EC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80577EC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80577EC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80577ECC  FC 01 00 32 */	fmul f0, f1, f0
/* 80577ED0  FC 03 00 28 */	fsub f0, f3, f0
/* 80577ED4  FC 02 00 32 */	fmul f0, f2, f0
/* 80577ED8  FC 44 00 32 */	fmul f2, f4, f0
/* 80577EDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80577EE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80577EE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80577EE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80577EEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80577EF0  FC 20 08 18 */	frsp f1, f1
/* 80577EF4  48 00 00 88 */	b lbl_80577F7C
lbl_80577EF8:
/* 80577EF8  C8 1C 00 C8 */	lfd f0, 0xc8(r28)
/* 80577EFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577F00  40 80 00 10 */	bge lbl_80577F10
/* 80577F04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80577F08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80577F0C  48 00 00 70 */	b lbl_80577F7C
lbl_80577F10:
/* 80577F10  D0 21 00 08 */	stfs f1, 8(r1)
/* 80577F14  80 81 00 08 */	lwz r4, 8(r1)
/* 80577F18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80577F1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80577F20  7C 03 00 00 */	cmpw r3, r0
/* 80577F24  41 82 00 14 */	beq lbl_80577F38
/* 80577F28  40 80 00 40 */	bge lbl_80577F68
/* 80577F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80577F30  41 82 00 20 */	beq lbl_80577F50
/* 80577F34  48 00 00 34 */	b lbl_80577F68
lbl_80577F38:
/* 80577F38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80577F3C  41 82 00 0C */	beq lbl_80577F48
/* 80577F40  38 00 00 01 */	li r0, 1
/* 80577F44  48 00 00 28 */	b lbl_80577F6C
lbl_80577F48:
/* 80577F48  38 00 00 02 */	li r0, 2
/* 80577F4C  48 00 00 20 */	b lbl_80577F6C
lbl_80577F50:
/* 80577F50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80577F54  41 82 00 0C */	beq lbl_80577F60
/* 80577F58  38 00 00 05 */	li r0, 5
/* 80577F5C  48 00 00 10 */	b lbl_80577F6C
lbl_80577F60:
/* 80577F60  38 00 00 03 */	li r0, 3
/* 80577F64  48 00 00 08 */	b lbl_80577F6C
lbl_80577F68:
/* 80577F68  38 00 00 04 */	li r0, 4
lbl_80577F6C:
/* 80577F6C  2C 00 00 01 */	cmpwi r0, 1
/* 80577F70  40 82 00 0C */	bne lbl_80577F7C
/* 80577F74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80577F78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80577F7C:
/* 80577F7C  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80577F80  40 80 00 20 */	bge lbl_80577FA0
/* 80577F84  7F 63 DB 78 */	mr r3, r27
/* 80577F88  7F C4 F3 78 */	mr r4, r30
/* 80577F8C  FC 20 F0 90 */	fmr f1, f30
/* 80577F90  7F E5 FB 78 */	mr r5, r31
/* 80577F94  48 00 00 4D */	bl Roll_Set__7Hahen_cFP4cXyzfs
/* 80577F98  38 00 00 00 */	li r0, 0
/* 80577F9C  98 1A 05 DC */	stb r0, 0x5dc(r26)
lbl_80577FA0:
/* 80577FA0  3B FF 00 01 */	addi r31, r31, 1
lbl_80577FA4:
/* 80577FA4  7F E0 07 34 */	extsh r0, r31
/* 80577FA8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80577FAC  41 80 FE D4 */	blt lbl_80577E80
lbl_80577FB0:
/* 80577FB0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80577FB4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80577FB8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80577FBC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80577FC0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80577FC4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80577FC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80577FCC  4B DE A2 51 */	bl _restgpr_26
/* 80577FD0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80577FD4  7C 08 03 A6 */	mtlr r0
/* 80577FD8  38 21 00 60 */	addi r1, r1, 0x60
/* 80577FDC  4E 80 00 20 */	blr 
