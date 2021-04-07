lbl_8094E2B0:
/* 8094E2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094E2B4  7C 08 02 A6 */	mflr r0
/* 8094E2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094E2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094E2C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8094E2C4  7C 7E 1B 78 */	mr r30, r3
/* 8094E2C8  3C 80 80 95 */	lis r4, lit_3958@ha /* 0x809511C0@ha */
/* 8094E2CC  3B E4 11 C0 */	addi r31, r4, lit_3958@l /* 0x809511C0@l */
/* 8094E2D0  A8 03 05 FC */	lha r0, 0x5fc(r3)
/* 8094E2D4  2C 00 00 01 */	cmpwi r0, 1
/* 8094E2D8  41 82 00 34 */	beq lbl_8094E30C
/* 8094E2DC  40 80 00 30 */	bge lbl_8094E30C
/* 8094E2E0  2C 00 00 00 */	cmpwi r0, 0
/* 8094E2E4  40 80 00 08 */	bge lbl_8094E2EC
/* 8094E2E8  48 00 00 24 */	b lbl_8094E30C
lbl_8094E2EC:
/* 8094E2EC  38 80 00 0B */	li r4, 0xb
/* 8094E2F0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094E2F4  38 A0 00 02 */	li r5, 2
/* 8094E2F8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8094E2FC  4B FF D9 AD */	bl anm_init__FP8ni_classifUcf
/* 8094E300  A8 7E 05 FC */	lha r3, 0x5fc(r30)
/* 8094E304  38 03 00 01 */	addi r0, r3, 1
/* 8094E308  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094E30C:
/* 8094E30C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8094E310  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094E314  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8094E318  4B 92 17 69 */	bl cLib_addCalc0__FPfff
/* 8094E31C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8094E320  A8 9E 05 E4 */	lha r4, 0x5e4(r30)
/* 8094E324  38 A0 00 02 */	li r5, 2
/* 8094E328  38 C0 10 00 */	li r6, 0x1000
/* 8094E32C  4B 92 22 DD */	bl cLib_addCalcAngleS2__FPssss
/* 8094E330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094E334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094E338  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8094E33C  28 00 00 00 */	cmplwi r0, 0
/* 8094E340  40 82 00 20 */	bne lbl_8094E360
/* 8094E344  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 8094E348  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8094E34C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094E350  40 81 00 10 */	ble lbl_8094E360
/* 8094E354  38 00 00 00 */	li r0, 0
/* 8094E358  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8094E35C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094E360:
/* 8094E360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094E364  83 C1 00 08 */	lwz r30, 8(r1)
/* 8094E368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094E36C  7C 08 03 A6 */	mtlr r0
/* 8094E370  38 21 00 10 */	addi r1, r1, 0x10
/* 8094E374  4E 80 00 20 */	blr 
