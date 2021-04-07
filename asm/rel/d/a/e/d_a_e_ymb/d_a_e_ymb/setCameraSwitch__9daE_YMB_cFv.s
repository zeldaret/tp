lbl_80816E78:
/* 80816E78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80816E7C  7C 08 02 A6 */	mflr r0
/* 80816E80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80816E84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80816E88  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80816E8C  7C 7F 1B 78 */	mr r31, r3
/* 80816E90  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 80816E94  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
/* 80816E98  38 00 00 00 */	li r0, 0
/* 80816E9C  98 1F 07 13 */	stb r0, 0x713(r31)
/* 80816EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80816EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80816EA8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80816EAC  C0 5F 06 A4 */	lfs f2, 0x6a4(r31)
/* 80816EB0  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 80816EB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80816EB8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80816EBC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80816EC0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80816EC4  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80816EC8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80816ECC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80816ED0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80816ED4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80816ED8  38 61 00 0C */	addi r3, r1, 0xc
/* 80816EDC  38 81 00 18 */	addi r4, r1, 0x18
/* 80816EE0  4B B3 04 BD */	bl PSVECSquareDistance
/* 80816EE4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80816EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80816EEC  40 81 00 58 */	ble lbl_80816F44
/* 80816EF0  FC 00 08 34 */	frsqrte f0, f1
/* 80816EF4  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80816EF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80816EFC  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80816F00  FC 00 00 32 */	fmul f0, f0, f0
/* 80816F04  FC 01 00 32 */	fmul f0, f1, f0
/* 80816F08  FC 03 00 28 */	fsub f0, f3, f0
/* 80816F0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80816F10  FC 44 00 32 */	fmul f2, f4, f0
/* 80816F14  FC 00 00 32 */	fmul f0, f0, f0
/* 80816F18  FC 01 00 32 */	fmul f0, f1, f0
/* 80816F1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80816F20  FC 02 00 32 */	fmul f0, f2, f0
/* 80816F24  FC 44 00 32 */	fmul f2, f4, f0
/* 80816F28  FC 00 00 32 */	fmul f0, f0, f0
/* 80816F2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80816F30  FC 03 00 28 */	fsub f0, f3, f0
/* 80816F34  FC 02 00 32 */	fmul f0, f2, f0
/* 80816F38  FC 21 00 32 */	fmul f1, f1, f0
/* 80816F3C  FC 20 08 18 */	frsp f1, f1
/* 80816F40  48 00 00 88 */	b lbl_80816FC8
lbl_80816F44:
/* 80816F44  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80816F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80816F4C  40 80 00 10 */	bge lbl_80816F5C
/* 80816F50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80816F54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80816F58  48 00 00 70 */	b lbl_80816FC8
lbl_80816F5C:
/* 80816F5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80816F60  80 81 00 08 */	lwz r4, 8(r1)
/* 80816F64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80816F68  3C 00 7F 80 */	lis r0, 0x7f80
/* 80816F6C  7C 03 00 00 */	cmpw r3, r0
/* 80816F70  41 82 00 14 */	beq lbl_80816F84
/* 80816F74  40 80 00 40 */	bge lbl_80816FB4
/* 80816F78  2C 03 00 00 */	cmpwi r3, 0
/* 80816F7C  41 82 00 20 */	beq lbl_80816F9C
/* 80816F80  48 00 00 34 */	b lbl_80816FB4
lbl_80816F84:
/* 80816F84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80816F88  41 82 00 0C */	beq lbl_80816F94
/* 80816F8C  38 00 00 01 */	li r0, 1
/* 80816F90  48 00 00 28 */	b lbl_80816FB8
lbl_80816F94:
/* 80816F94  38 00 00 02 */	li r0, 2
/* 80816F98  48 00 00 20 */	b lbl_80816FB8
lbl_80816F9C:
/* 80816F9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80816FA0  41 82 00 0C */	beq lbl_80816FAC
/* 80816FA4  38 00 00 05 */	li r0, 5
/* 80816FA8  48 00 00 10 */	b lbl_80816FB8
lbl_80816FAC:
/* 80816FAC  38 00 00 03 */	li r0, 3
/* 80816FB0  48 00 00 08 */	b lbl_80816FB8
lbl_80816FB4:
/* 80816FB4  38 00 00 04 */	li r0, 4
lbl_80816FB8:
/* 80816FB8  2C 00 00 01 */	cmpwi r0, 1
/* 80816FBC  40 82 00 0C */	bne lbl_80816FC8
/* 80816FC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80816FC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80816FC8:
/* 80816FC8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80816FCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80816FD0  40 80 00 0C */	bge lbl_80816FDC
/* 80816FD4  38 00 00 01 */	li r0, 1
/* 80816FD8  98 1F 07 13 */	stb r0, 0x713(r31)
lbl_80816FDC:
/* 80816FDC  88 1F 07 13 */	lbz r0, 0x713(r31)
/* 80816FE0  28 00 00 00 */	cmplwi r0, 0
/* 80816FE4  41 82 00 20 */	beq lbl_80817004
/* 80816FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80816FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80816FF0  38 80 00 05 */	li r4, 5
/* 80816FF4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80816FF8  7C 05 07 74 */	extsb r5, r0
/* 80816FFC  4B 81 E2 05 */	bl onSwitch__10dSv_info_cFii
/* 80817000  48 00 00 1C */	b lbl_8081701C
lbl_80817004:
/* 80817004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80817008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081700C  38 80 00 05 */	li r4, 5
/* 80817010  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80817014  7C 05 07 74 */	extsb r5, r0
/* 80817018  4B 81 E2 99 */	bl offSwitch__10dSv_info_cFii
lbl_8081701C:
/* 8081701C  88 1F 07 14 */	lbz r0, 0x714(r31)
/* 80817020  28 00 00 00 */	cmplwi r0, 0
/* 80817024  41 82 00 18 */	beq lbl_8081703C
/* 80817028  38 60 00 0F */	li r3, 0xf
/* 8081702C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80817030  7C 04 07 74 */	extsb r4, r0
/* 80817034  4B 81 6A 69 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 80817038  48 00 00 14 */	b lbl_8081704C
lbl_8081703C:
/* 8081703C  38 60 00 0F */	li r3, 0xf
/* 80817040  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80817044  7C 04 07 74 */	extsb r4, r0
/* 80817048  4B 81 6A B9 */	bl dComIfGs_offOneZoneSwitch__Fii
lbl_8081704C:
/* 8081704C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80817050  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80817054  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80817058  7C 08 03 A6 */	mtlr r0
/* 8081705C  38 21 00 30 */	addi r1, r1, 0x30
/* 80817060  4E 80 00 20 */	blr 
