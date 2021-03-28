lbl_80499D8C:
/* 80499D8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80499D90  7C 08 02 A6 */	mflr r0
/* 80499D94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80499D98  39 61 00 30 */	addi r11, r1, 0x30
/* 80499D9C  4B EC 84 38 */	b _savegpr_27
/* 80499DA0  7C 7C 1B 78 */	mr r28, r3
/* 80499DA4  7C 9F 23 78 */	mr r31, r4
/* 80499DA8  7C BD 2B 78 */	mr r29, r5
/* 80499DAC  7C DE 33 78 */	mr r30, r6
/* 80499DB0  3C 60 80 4A */	lis r3, lit_3768@ha
/* 80499DB4  3B 63 DC 84 */	addi r27, r3, lit_3768@l
/* 80499DB8  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 80499DBC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80499DC0  41 82 00 24 */	beq lbl_80499DE4
/* 80499DC4  28 1D 00 00 */	cmplwi r29, 0
/* 80499DC8  41 82 01 BC */	beq lbl_80499F84
/* 80499DCC  A8 1D 00 08 */	lha r0, 8(r29)
/* 80499DD0  2C 00 01 E4 */	cmpwi r0, 0x1e4
/* 80499DD4  40 82 01 B0 */	bne lbl_80499F84
/* 80499DD8  38 00 00 01 */	li r0, 1
/* 80499DDC  98 1D 08 45 */	stb r0, 0x845(r29)
/* 80499DE0  48 00 01 A4 */	b lbl_80499F84
lbl_80499DE4:
/* 80499DE4  28 1D 00 00 */	cmplwi r29, 0
/* 80499DE8  41 82 01 9C */	beq lbl_80499F84
/* 80499DEC  7F A3 EB 78 */	mr r3, r29
/* 80499DF0  4B B7 EE F0 */	b fopAc_IsActor__FPv
/* 80499DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80499DF8  41 82 01 8C */	beq lbl_80499F84
/* 80499DFC  3B FF 00 78 */	addi r31, r31, 0x78
/* 80499E00  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80499E04  7F E4 FB 78 */	mr r4, r31
/* 80499E08  4B EA D5 94 */	b PSVECSquareDistance
/* 80499E0C  C0 1B 00 98 */	lfs f0, 0x98(r27)
/* 80499E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80499E14  40 81 00 58 */	ble lbl_80499E6C
/* 80499E18  FC 00 08 34 */	frsqrte f0, f1
/* 80499E1C  C8 9B 00 A0 */	lfd f4, 0xa0(r27)
/* 80499E20  FC 44 00 32 */	fmul f2, f4, f0
/* 80499E24  C8 7B 00 A8 */	lfd f3, 0xa8(r27)
/* 80499E28  FC 00 00 32 */	fmul f0, f0, f0
/* 80499E2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80499E30  FC 03 00 28 */	fsub f0, f3, f0
/* 80499E34  FC 02 00 32 */	fmul f0, f2, f0
/* 80499E38  FC 44 00 32 */	fmul f2, f4, f0
/* 80499E3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80499E40  FC 01 00 32 */	fmul f0, f1, f0
/* 80499E44  FC 03 00 28 */	fsub f0, f3, f0
/* 80499E48  FC 02 00 32 */	fmul f0, f2, f0
/* 80499E4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80499E50  FC 00 00 32 */	fmul f0, f0, f0
/* 80499E54  FC 01 00 32 */	fmul f0, f1, f0
/* 80499E58  FC 03 00 28 */	fsub f0, f3, f0
/* 80499E5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80499E60  FC 21 00 32 */	fmul f1, f1, f0
/* 80499E64  FC 20 08 18 */	frsp f1, f1
/* 80499E68  48 00 00 88 */	b lbl_80499EF0
lbl_80499E6C:
/* 80499E6C  C8 1B 00 B0 */	lfd f0, 0xb0(r27)
/* 80499E70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80499E74  40 80 00 10 */	bge lbl_80499E84
/* 80499E78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80499E7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80499E80  48 00 00 70 */	b lbl_80499EF0
lbl_80499E84:
/* 80499E84  D0 21 00 08 */	stfs f1, 8(r1)
/* 80499E88  80 81 00 08 */	lwz r4, 8(r1)
/* 80499E8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80499E90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80499E94  7C 03 00 00 */	cmpw r3, r0
/* 80499E98  41 82 00 14 */	beq lbl_80499EAC
/* 80499E9C  40 80 00 40 */	bge lbl_80499EDC
/* 80499EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80499EA4  41 82 00 20 */	beq lbl_80499EC4
/* 80499EA8  48 00 00 34 */	b lbl_80499EDC
lbl_80499EAC:
/* 80499EAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80499EB0  41 82 00 0C */	beq lbl_80499EBC
/* 80499EB4  38 00 00 01 */	li r0, 1
/* 80499EB8  48 00 00 28 */	b lbl_80499EE0
lbl_80499EBC:
/* 80499EBC  38 00 00 02 */	li r0, 2
/* 80499EC0  48 00 00 20 */	b lbl_80499EE0
lbl_80499EC4:
/* 80499EC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80499EC8  41 82 00 0C */	beq lbl_80499ED4
/* 80499ECC  38 00 00 05 */	li r0, 5
/* 80499ED0  48 00 00 10 */	b lbl_80499EE0
lbl_80499ED4:
/* 80499ED4  38 00 00 03 */	li r0, 3
/* 80499ED8  48 00 00 08 */	b lbl_80499EE0
lbl_80499EDC:
/* 80499EDC  38 00 00 04 */	li r0, 4
lbl_80499EE0:
/* 80499EE0  2C 00 00 01 */	cmpwi r0, 1
/* 80499EE4  40 82 00 0C */	bne lbl_80499EF0
/* 80499EE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80499EEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80499EF0:
/* 80499EF0  C0 1C 09 98 */	lfs f0, 0x998(r28)
/* 80499EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80499EF8  40 80 00 8C */	bge lbl_80499F84
/* 80499EFC  D0 3C 09 98 */	stfs f1, 0x998(r28)
/* 80499F00  28 1D 00 00 */	cmplwi r29, 0
/* 80499F04  41 82 00 0C */	beq lbl_80499F10
/* 80499F08  80 1D 00 04 */	lwz r0, 4(r29)
/* 80499F0C  48 00 00 08 */	b lbl_80499F14
lbl_80499F10:
/* 80499F10  38 00 FF FF */	li r0, -1
lbl_80499F14:
/* 80499F14  90 1C 09 94 */	stw r0, 0x994(r28)
/* 80499F18  88 1C 09 3C */	lbz r0, 0x93c(r28)
/* 80499F1C  28 00 00 01 */	cmplwi r0, 1
/* 80499F20  40 82 00 20 */	bne lbl_80499F40
/* 80499F24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80499F28  D0 1C 09 A8 */	stfs f0, 0x9a8(r28)
/* 80499F2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80499F30  D0 1C 09 AC */	stfs f0, 0x9ac(r28)
/* 80499F34  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80499F38  D0 1C 09 B0 */	stfs f0, 0x9b0(r28)
/* 80499F3C  48 00 00 48 */	b lbl_80499F84
lbl_80499F40:
/* 80499F40  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 80499F44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80499F48  41 82 00 10 */	beq lbl_80499F58
/* 80499F4C  38 00 00 01 */	li r0, 1
/* 80499F50  98 1C 09 3E */	stb r0, 0x93e(r28)
/* 80499F54  48 00 00 30 */	b lbl_80499F84
lbl_80499F58:
/* 80499F58  38 00 00 00 */	li r0, 0
/* 80499F5C  98 1C 09 3E */	stb r0, 0x93e(r28)
/* 80499F60  80 7D 05 28 */	lwz r3, 0x528(r29)
/* 80499F64  28 03 00 00 */	cmplwi r3, 0
/* 80499F68  41 82 00 1C */	beq lbl_80499F84
/* 80499F6C  7F E4 FB 78 */	mr r4, r31
/* 80499F70  38 BC 04 E4 */	addi r5, r28, 0x4e4
/* 80499F74  38 DC 09 A8 */	addi r6, r28, 0x9a8
/* 80499F78  38 FC 09 B4 */	addi r7, r28, 0x9b4
/* 80499F7C  4B B9 CB 70 */	b getArrowOffsetPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP4cXyz
/* 80499F80  90 7C 09 60 */	stw r3, 0x960(r28)
lbl_80499F84:
/* 80499F84  39 61 00 30 */	addi r11, r1, 0x30
/* 80499F88  4B EC 82 98 */	b _restgpr_27
/* 80499F8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80499F90  7C 08 03 A6 */	mtlr r0
/* 80499F94  38 21 00 30 */	addi r1, r1, 0x30
/* 80499F98  4E 80 00 20 */	blr 
