lbl_80196BA4:
/* 80196BA4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80196BA8  7C 08 02 A6 */	mflr r0
/* 80196BAC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80196BB0  39 61 00 80 */	addi r11, r1, 0x80
/* 80196BB4  48 1C B6 11 */	bl _savegpr_23
/* 80196BB8  7C 78 1B 78 */	mr r24, r3
/* 80196BBC  7C 99 23 78 */	mr r25, r4
/* 80196BC0  7C BA 2B 78 */	mr r26, r5
/* 80196BC4  7C DB 33 78 */	mr r27, r6
/* 80196BC8  7C FC 3B 78 */	mr r28, r7
/* 80196BCC  3B C0 00 00 */	li r30, 0
/* 80196BD0  3A E0 00 00 */	li r23, 0
lbl_80196BD4:
/* 80196BD4  38 17 00 04 */	addi r0, r23, 4
/* 80196BD8  7C 78 00 2E */	lwzx r3, r24, r0
/* 80196BDC  3C 03 00 01 */	addis r0, r3, 1
/* 80196BE0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80196BE4  41 82 04 8C */	beq lbl_80197070
/* 80196BE8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80196BEC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80196BF0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80196BF4  38 81 00 18 */	addi r4, r1, 0x18
/* 80196BF8  4B E8 2C 01 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80196BFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80196C00  41 82 04 70 */	beq lbl_80197070
/* 80196C04  4B EA 10 19 */	bl getPosP__12daShopItem_cFv
/* 80196C08  7C 7D 1B 78 */	mr r29, r3
/* 80196C0C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80196C10  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80196C14  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80196C18  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80196C1C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80196C20  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80196C24  38 61 00 28 */	addi r3, r1, 0x28
/* 80196C28  7F 44 D3 78 */	mr r4, r26
/* 80196C2C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80196C30  48 0C FF 05 */	bl __mi__4cXyzCFRC3Vec
/* 80196C34  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80196C38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80196C3C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80196C40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80196C44  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80196C48  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80196C4C  A8 1F 09 60 */	lha r0, 0x960(r31)
/* 80196C50  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80196C54  A8 1F 09 62 */	lha r0, 0x962(r31)
/* 80196C58  B0 01 00 08 */	sth r0, 8(r1)
/* 80196C5C  38 19 FF FF */	addi r0, r25, -1
/* 80196C60  7C 1E 00 00 */	cmpw r30, r0
/* 80196C64  40 82 01 60 */	bne lbl_80196DC4
/* 80196C68  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80196C6C  28 00 00 01 */	cmplwi r0, 1
/* 80196C70  40 82 01 54 */	bne lbl_80196DC4
/* 80196C74  38 61 00 40 */	addi r3, r1, 0x40
/* 80196C78  48 1B 04 C1 */	bl PSVECSquareMag
/* 80196C7C  C0 02 A0 D0 */	lfs f0, lit_3659(r2)
/* 80196C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196C84  40 81 00 58 */	ble lbl_80196CDC
/* 80196C88  FC 00 08 34 */	frsqrte f0, f1
/* 80196C8C  C8 82 A0 D8 */	lfd f4, lit_3838(r2)
/* 80196C90  FC 44 00 32 */	fmul f2, f4, f0
/* 80196C94  C8 62 A0 E0 */	lfd f3, lit_3839(r2)
/* 80196C98  FC 00 00 32 */	fmul f0, f0, f0
/* 80196C9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80196CA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80196CA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80196CA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80196CAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80196CB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80196CB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80196CB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80196CBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80196CC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80196CC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80196CC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80196CCC  FC 02 00 32 */	fmul f0, f2, f0
/* 80196CD0  FC 41 00 32 */	fmul f2, f1, f0
/* 80196CD4  FC 40 10 18 */	frsp f2, f2
/* 80196CD8  48 00 00 90 */	b lbl_80196D68
lbl_80196CDC:
/* 80196CDC  C8 02 A0 E8 */	lfd f0, lit_3840(r2)
/* 80196CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196CE4  40 80 00 10 */	bge lbl_80196CF4
/* 80196CE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80196CEC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80196CF0  48 00 00 78 */	b lbl_80196D68
lbl_80196CF4:
/* 80196CF4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80196CF8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80196CFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80196D00  3C 00 7F 80 */	lis r0, 0x7f80
/* 80196D04  7C 03 00 00 */	cmpw r3, r0
/* 80196D08  41 82 00 14 */	beq lbl_80196D1C
/* 80196D0C  40 80 00 40 */	bge lbl_80196D4C
/* 80196D10  2C 03 00 00 */	cmpwi r3, 0
/* 80196D14  41 82 00 20 */	beq lbl_80196D34
/* 80196D18  48 00 00 34 */	b lbl_80196D4C
lbl_80196D1C:
/* 80196D1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196D20  41 82 00 0C */	beq lbl_80196D2C
/* 80196D24  38 00 00 01 */	li r0, 1
/* 80196D28  48 00 00 28 */	b lbl_80196D50
lbl_80196D2C:
/* 80196D2C  38 00 00 02 */	li r0, 2
/* 80196D30  48 00 00 20 */	b lbl_80196D50
lbl_80196D34:
/* 80196D34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196D38  41 82 00 0C */	beq lbl_80196D44
/* 80196D3C  38 00 00 05 */	li r0, 5
/* 80196D40  48 00 00 10 */	b lbl_80196D50
lbl_80196D44:
/* 80196D44  38 00 00 03 */	li r0, 3
/* 80196D48  48 00 00 08 */	b lbl_80196D50
lbl_80196D4C:
/* 80196D4C  38 00 00 04 */	li r0, 4
lbl_80196D50:
/* 80196D50  2C 00 00 01 */	cmpwi r0, 1
/* 80196D54  40 82 00 10 */	bne lbl_80196D64
/* 80196D58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80196D5C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80196D60  48 00 00 08 */	b lbl_80196D68
lbl_80196D64:
/* 80196D64  FC 40 08 90 */	fmr f2, f1
lbl_80196D68:
/* 80196D68  7F A3 EB 78 */	mr r3, r29
/* 80196D6C  7F 44 D3 78 */	mr r4, r26
/* 80196D70  C0 22 A0 F0 */	lfs f1, lit_3841(r2)
/* 80196D74  C0 02 A0 F4 */	lfs f0, lit_3842(r2)
/* 80196D78  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80196D7C  48 0D 93 FD */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80196D80  38 61 00 0A */	addi r3, r1, 0xa
/* 80196D84  7F 64 DB 78 */	mr r4, r27
/* 80196D88  38 A0 00 04 */	li r5, 4
/* 80196D8C  38 C0 08 00 */	li r6, 0x800
/* 80196D90  38 E0 00 80 */	li r7, 0x80
/* 80196D94  48 0D 97 AD */	bl cLib_addCalcAngleS__FPsssss
/* 80196D98  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80196D9C  B0 1F 09 60 */	sth r0, 0x960(r31)
/* 80196DA0  38 61 00 08 */	addi r3, r1, 8
/* 80196DA4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80196DA8  38 A0 00 04 */	li r5, 4
/* 80196DAC  38 C0 08 00 */	li r6, 0x800
/* 80196DB0  38 E0 00 80 */	li r7, 0x80
/* 80196DB4  48 0D 97 8D */	bl cLib_addCalcAngleS__FPsssss
/* 80196DB8  A8 01 00 08 */	lha r0, 8(r1)
/* 80196DBC  B0 1F 09 62 */	sth r0, 0x962(r31)
/* 80196DC0  48 00 02 B0 */	b lbl_80197070
lbl_80196DC4:
/* 80196DC4  38 61 00 40 */	addi r3, r1, 0x40
/* 80196DC8  48 1B 03 71 */	bl PSVECSquareMag
/* 80196DCC  C0 02 A0 D0 */	lfs f0, lit_3659(r2)
/* 80196DD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196DD4  40 81 00 58 */	ble lbl_80196E2C
/* 80196DD8  FC 00 08 34 */	frsqrte f0, f1
/* 80196DDC  C8 82 A0 D8 */	lfd f4, lit_3838(r2)
/* 80196DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80196DE4  C8 62 A0 E0 */	lfd f3, lit_3839(r2)
/* 80196DE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80196DEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80196DF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80196DF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80196DF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80196DFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80196E00  FC 01 00 32 */	fmul f0, f1, f0
/* 80196E04  FC 03 00 28 */	fsub f0, f3, f0
/* 80196E08  FC 02 00 32 */	fmul f0, f2, f0
/* 80196E0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80196E10  FC 00 00 32 */	fmul f0, f0, f0
/* 80196E14  FC 01 00 32 */	fmul f0, f1, f0
/* 80196E18  FC 03 00 28 */	fsub f0, f3, f0
/* 80196E1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80196E20  FC 41 00 32 */	fmul f2, f1, f0
/* 80196E24  FC 40 10 18 */	frsp f2, f2
/* 80196E28  48 00 00 90 */	b lbl_80196EB8
lbl_80196E2C:
/* 80196E2C  C8 02 A0 E8 */	lfd f0, lit_3840(r2)
/* 80196E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196E34  40 80 00 10 */	bge lbl_80196E44
/* 80196E38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80196E3C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80196E40  48 00 00 78 */	b lbl_80196EB8
lbl_80196E44:
/* 80196E44  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80196E48  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80196E4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80196E50  3C 00 7F 80 */	lis r0, 0x7f80
/* 80196E54  7C 03 00 00 */	cmpw r3, r0
/* 80196E58  41 82 00 14 */	beq lbl_80196E6C
/* 80196E5C  40 80 00 40 */	bge lbl_80196E9C
/* 80196E60  2C 03 00 00 */	cmpwi r3, 0
/* 80196E64  41 82 00 20 */	beq lbl_80196E84
/* 80196E68  48 00 00 34 */	b lbl_80196E9C
lbl_80196E6C:
/* 80196E6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196E70  41 82 00 0C */	beq lbl_80196E7C
/* 80196E74  38 00 00 01 */	li r0, 1
/* 80196E78  48 00 00 28 */	b lbl_80196EA0
lbl_80196E7C:
/* 80196E7C  38 00 00 02 */	li r0, 2
/* 80196E80  48 00 00 20 */	b lbl_80196EA0
lbl_80196E84:
/* 80196E84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196E88  41 82 00 0C */	beq lbl_80196E94
/* 80196E8C  38 00 00 05 */	li r0, 5
/* 80196E90  48 00 00 10 */	b lbl_80196EA0
lbl_80196E94:
/* 80196E94  38 00 00 03 */	li r0, 3
/* 80196E98  48 00 00 08 */	b lbl_80196EA0
lbl_80196E9C:
/* 80196E9C  38 00 00 04 */	li r0, 4
lbl_80196EA0:
/* 80196EA0  2C 00 00 01 */	cmpwi r0, 1
/* 80196EA4  40 82 00 10 */	bne lbl_80196EB4
/* 80196EA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80196EAC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80196EB0  48 00 00 08 */	b lbl_80196EB8
lbl_80196EB4:
/* 80196EB4  FC 40 08 90 */	fmr f2, f1
lbl_80196EB8:
/* 80196EB8  7F A3 EB 78 */	mr r3, r29
/* 80196EBC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80196EC0  C0 22 A0 F0 */	lfs f1, lit_3841(r2)
/* 80196EC4  C0 02 A0 F8 */	lfs f0, lit_3843(r2)
/* 80196EC8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80196ECC  48 0D 92 AD */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80196ED0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80196ED4  7F A4 EB 78 */	mr r4, r29
/* 80196ED8  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80196EDC  48 0C FC 59 */	bl __mi__4cXyzCFRC3Vec
/* 80196EE0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80196EE4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80196EE8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80196EEC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80196EF0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80196EF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80196EF8  38 61 00 34 */	addi r3, r1, 0x34
/* 80196EFC  48 1B 02 3D */	bl PSVECSquareMag
/* 80196F00  C0 02 A0 D0 */	lfs f0, lit_3659(r2)
/* 80196F04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196F08  40 81 00 58 */	ble lbl_80196F60
/* 80196F0C  FC 00 08 34 */	frsqrte f0, f1
/* 80196F10  C8 82 A0 D8 */	lfd f4, lit_3838(r2)
/* 80196F14  FC 44 00 32 */	fmul f2, f4, f0
/* 80196F18  C8 62 A0 E0 */	lfd f3, lit_3839(r2)
/* 80196F1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80196F20  FC 01 00 32 */	fmul f0, f1, f0
/* 80196F24  FC 03 00 28 */	fsub f0, f3, f0
/* 80196F28  FC 02 00 32 */	fmul f0, f2, f0
/* 80196F2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80196F30  FC 00 00 32 */	fmul f0, f0, f0
/* 80196F34  FC 01 00 32 */	fmul f0, f1, f0
/* 80196F38  FC 03 00 28 */	fsub f0, f3, f0
/* 80196F3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80196F40  FC 44 00 32 */	fmul f2, f4, f0
/* 80196F44  FC 00 00 32 */	fmul f0, f0, f0
/* 80196F48  FC 01 00 32 */	fmul f0, f1, f0
/* 80196F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80196F50  FC 02 00 32 */	fmul f0, f2, f0
/* 80196F54  FC 21 00 32 */	fmul f1, f1, f0
/* 80196F58  FC 20 08 18 */	frsp f1, f1
/* 80196F5C  48 00 00 88 */	b lbl_80196FE4
lbl_80196F60:
/* 80196F60  C8 02 A0 E8 */	lfd f0, lit_3840(r2)
/* 80196F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196F68  40 80 00 10 */	bge lbl_80196F78
/* 80196F6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80196F70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80196F74  48 00 00 70 */	b lbl_80196FE4
lbl_80196F78:
/* 80196F78  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80196F7C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80196F80  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80196F84  3C 00 7F 80 */	lis r0, 0x7f80
/* 80196F88  7C 03 00 00 */	cmpw r3, r0
/* 80196F8C  41 82 00 14 */	beq lbl_80196FA0
/* 80196F90  40 80 00 40 */	bge lbl_80196FD0
/* 80196F94  2C 03 00 00 */	cmpwi r3, 0
/* 80196F98  41 82 00 20 */	beq lbl_80196FB8
/* 80196F9C  48 00 00 34 */	b lbl_80196FD0
lbl_80196FA0:
/* 80196FA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196FA4  41 82 00 0C */	beq lbl_80196FB0
/* 80196FA8  38 00 00 01 */	li r0, 1
/* 80196FAC  48 00 00 28 */	b lbl_80196FD4
lbl_80196FB0:
/* 80196FB0  38 00 00 02 */	li r0, 2
/* 80196FB4  48 00 00 20 */	b lbl_80196FD4
lbl_80196FB8:
/* 80196FB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80196FBC  41 82 00 0C */	beq lbl_80196FC8
/* 80196FC0  38 00 00 05 */	li r0, 5
/* 80196FC4  48 00 00 10 */	b lbl_80196FD4
lbl_80196FC8:
/* 80196FC8  38 00 00 03 */	li r0, 3
/* 80196FCC  48 00 00 08 */	b lbl_80196FD4
lbl_80196FD0:
/* 80196FD0  38 00 00 04 */	li r0, 4
lbl_80196FD4:
/* 80196FD4  2C 00 00 01 */	cmpwi r0, 1
/* 80196FD8  40 82 00 0C */	bne lbl_80196FE4
/* 80196FDC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80196FE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80196FE4:
/* 80196FE4  C0 02 A0 FC */	lfs f0, lit_3844(r2)
/* 80196FE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80196FEC  40 80 00 1C */	bge lbl_80197008
/* 80196FF0  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80196FF4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80196FF8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80196FFC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80197000  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80197004  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_80197008:
/* 80197008  38 61 00 0A */	addi r3, r1, 0xa
/* 8019700C  38 80 00 00 */	li r4, 0
/* 80197010  38 A0 00 04 */	li r5, 4
/* 80197014  38 C0 08 00 */	li r6, 0x800
/* 80197018  38 E0 00 80 */	li r7, 0x80
/* 8019701C  48 0D 95 25 */	bl cLib_addCalcAngleS__FPsssss
/* 80197020  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80197024  2C 00 00 80 */	cmpwi r0, 0x80
/* 80197028  41 81 00 0C */	bgt lbl_80197034
/* 8019702C  38 00 00 00 */	li r0, 0
/* 80197030  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_80197034:
/* 80197034  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80197038  B0 1F 09 60 */	sth r0, 0x960(r31)
/* 8019703C  38 61 00 08 */	addi r3, r1, 8
/* 80197040  38 80 00 00 */	li r4, 0
/* 80197044  38 A0 00 04 */	li r5, 4
/* 80197048  38 C0 08 00 */	li r6, 0x800
/* 8019704C  38 E0 00 80 */	li r7, 0x80
/* 80197050  48 0D 94 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 80197054  A8 01 00 08 */	lha r0, 8(r1)
/* 80197058  2C 00 00 80 */	cmpwi r0, 0x80
/* 8019705C  41 81 00 0C */	bgt lbl_80197068
/* 80197060  38 00 00 00 */	li r0, 0
/* 80197064  B0 01 00 08 */	sth r0, 8(r1)
lbl_80197068:
/* 80197068  A8 01 00 08 */	lha r0, 8(r1)
/* 8019706C  B0 1F 09 62 */	sth r0, 0x962(r31)
lbl_80197070:
/* 80197070  3B DE 00 01 */	addi r30, r30, 1
/* 80197074  2C 1E 00 07 */	cmpwi r30, 7
/* 80197078  3A F7 00 04 */	addi r23, r23, 4
/* 8019707C  41 80 FB 58 */	blt lbl_80196BD4
/* 80197080  39 61 00 80 */	addi r11, r1, 0x80
/* 80197084  48 1C B1 8D */	bl _restgpr_23
/* 80197088  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8019708C  7C 08 03 A6 */	mtlr r0
/* 80197090  38 21 00 80 */	addi r1, r1, 0x80
/* 80197094  4E 80 00 20 */	blr 
