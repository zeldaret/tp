lbl_80740E70:
/* 80740E70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80740E74  7C 08 02 A6 */	mflr r0
/* 80740E78  90 01 00 44 */	stw r0, 0x44(r1)
/* 80740E7C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80740E80  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80740E84  7C 7E 1B 78 */	mr r30, r3
/* 80740E88  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 80740E8C  3B E3 1B F4 */	addi r31, r3, lit_3767@l /* 0x80741BF4@l */
/* 80740E90  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 80740E94  38 63 1D D0 */	addi r3, r3, l_HIO@l /* 0x80741DD0@l */
/* 80740E98  C0 23 00 08 */	lfs f1, 8(r3)
/* 80740E9C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80740EA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80740EA4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80740EA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80740EAC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80740EB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80740EB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80740EB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740EBC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80740EC0  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80740EC4  41 82 00 14 */	beq lbl_80740ED8
/* 80740EC8  80 1E 0A 10 */	lwz r0, 0xa10(r30)
/* 80740ECC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80740ED0  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 80740ED4  48 00 00 10 */	b lbl_80740EE4
lbl_80740ED8:
/* 80740ED8  80 1E 0A 10 */	lwz r0, 0xa10(r30)
/* 80740EDC  60 00 00 01 */	ori r0, r0, 1
/* 80740EE0  90 1E 0A 10 */	stw r0, 0xa10(r30)
lbl_80740EE4:
/* 80740EE4  A8 1E 05 AE */	lha r0, 0x5ae(r30)
/* 80740EE8  2C 00 00 00 */	cmpwi r0, 0
/* 80740EEC  40 81 00 90 */	ble lbl_80740F7C
/* 80740EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80740EF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740EF8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80740EFC  28 1E 00 00 */	cmplwi r30, 0
/* 80740F00  41 82 00 0C */	beq lbl_80740F0C
/* 80740F04  80 9E 00 04 */	lwz r4, 4(r30)
/* 80740F08  48 00 00 08 */	b lbl_80740F10
lbl_80740F0C:
/* 80740F0C  38 80 FF FF */	li r4, -1
lbl_80740F10:
/* 80740F10  38 A1 00 24 */	addi r5, r1, 0x24
/* 80740F14  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80740F18  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80740F1C  7D 89 03 A6 */	mtctr r12
/* 80740F20  4E 80 04 21 */	bctrl 
/* 80740F24  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80740F28  38 80 00 00 */	li r4, 0
/* 80740F2C  38 A0 01 00 */	li r5, 0x100
/* 80740F30  4B B2 FC 61 */	bl cLib_chaseAngleS__FPsss
/* 80740F34  38 7E 06 30 */	addi r3, r30, 0x630
/* 80740F38  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80740F3C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80740F40  4B B2 F8 01 */	bl cLib_chaseF__FPfff
/* 80740F44  38 7E 06 24 */	addi r3, r30, 0x624
/* 80740F48  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80740F4C  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80740F50  4B B2 F7 F1 */	bl cLib_chaseF__FPfff
/* 80740F54  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80740F58  C0 1E 06 30 */	lfs f0, 0x630(r30)
/* 80740F5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80740F60  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80740F64  38 7E 09 74 */	addi r3, r30, 0x974
/* 80740F68  81 9E 09 B0 */	lwz r12, 0x9b0(r30)
/* 80740F6C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80740F70  7D 89 03 A6 */	mtctr r12
/* 80740F74  4E 80 04 21 */	bctrl 
/* 80740F78  48 00 01 20 */	b lbl_80741098
lbl_80740F7C:
/* 80740F7C  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 80740F80  60 00 00 01 */	ori r0, r0, 1
/* 80740F84  90 1E 09 8C */	stw r0, 0x98c(r30)
/* 80740F88  38 7E 09 74 */	addi r3, r30, 0x974
/* 80740F8C  4B 94 34 D5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80740F90  28 03 00 00 */	cmplwi r3, 0
/* 80740F94  41 82 01 04 */	beq lbl_80741098
/* 80740F98  38 7E 09 74 */	addi r3, r30, 0x974
/* 80740F9C  4B 94 35 5D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80740FA0  90 7E 0A AC */	stw r3, 0xaac(r30)
/* 80740FA4  38 7E 09 74 */	addi r3, r30, 0x974
/* 80740FA8  4B 94 35 51 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80740FAC  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80740FB0  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 80740FB4  38 00 00 0F */	li r0, 0xf
/* 80740FB8  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 80740FBC  38 80 10 00 */	li r4, 0x1000
/* 80740FC0  B0 9E 06 16 */	sth r4, 0x616(r30)
/* 80740FC4  B0 9E 06 18 */	sth r4, 0x618(r30)
/* 80740FC8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80740FCC  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80740FD0  41 82 00 28 */	beq lbl_80740FF8
/* 80740FD4  B0 9E 06 16 */	sth r4, 0x616(r30)
/* 80740FD8  B0 9E 06 18 */	sth r4, 0x618(r30)
/* 80740FDC  7F C3 F3 78 */	mr r3, r30
/* 80740FE0  38 80 00 0B */	li r4, 0xb
/* 80740FE4  38 A0 00 00 */	li r5, 0
/* 80740FE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80740FEC  FC 40 08 90 */	fmr f2, f1
/* 80740FF0  4B FF CB 39 */	bl SetAnm__8daE_PH_cFiiff
/* 80740FF4  48 00 00 1C */	b lbl_80741010
lbl_80740FF8:
/* 80740FF8  7F C3 F3 78 */	mr r3, r30
/* 80740FFC  38 80 00 06 */	li r4, 6
/* 80741000  38 A0 00 00 */	li r5, 0
/* 80741004  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80741008  FC 40 08 90 */	fmr f2, f1
/* 8074100C  4B FF CB 1D */	bl SetAnm__8daE_PH_cFiiff
lbl_80741010:
/* 80741010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80741014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80741018  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8074101C  38 80 00 00 */	li r4, 0
/* 80741020  90 81 00 08 */	stw r4, 8(r1)
/* 80741024  38 00 FF FF */	li r0, -1
/* 80741028  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074102C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80741030  90 81 00 14 */	stw r4, 0x14(r1)
/* 80741034  90 81 00 18 */	stw r4, 0x18(r1)
/* 80741038  38 80 00 00 */	li r4, 0
/* 8074103C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000878E@ha */
/* 80741040  38 A5 87 8E */	addi r5, r5, 0x878E /* 0x0000878E@l */
/* 80741044  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80741048  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8074104C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80741050  39 20 00 00 */	li r9, 0
/* 80741054  39 40 00 FF */	li r10, 0xff
/* 80741058  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8074105C  4B 90 BA 35 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80741060  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070461@ha */
/* 80741064  38 03 04 61 */	addi r0, r3, 0x0461 /* 0x00070461@l */
/* 80741068  90 01 00 20 */	stw r0, 0x20(r1)
/* 8074106C  38 7E 06 74 */	addi r3, r30, 0x674
/* 80741070  38 81 00 20 */	addi r4, r1, 0x20
/* 80741074  38 A0 00 00 */	li r5, 0
/* 80741078  38 C0 FF FF */	li r6, -1
/* 8074107C  81 9E 06 74 */	lwz r12, 0x674(r30)
/* 80741080  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80741084  7D 89 03 A6 */	mtctr r12
/* 80741088  4E 80 04 21 */	bctrl 
/* 8074108C  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 80741090  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80741094  90 1E 09 8C */	stw r0, 0x98c(r30)
lbl_80741098:
/* 80741098  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8074109C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807410A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807410A4  7C 08 03 A6 */	mtlr r0
/* 807410A8  38 21 00 40 */	addi r1, r1, 0x40
/* 807410AC  4E 80 00 20 */	blr 
