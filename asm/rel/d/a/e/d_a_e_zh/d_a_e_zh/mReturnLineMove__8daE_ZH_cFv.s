lbl_80829AD8:
/* 80829AD8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80829ADC  7C 08 02 A6 */	mflr r0
/* 80829AE0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80829AE4  39 61 00 80 */	addi r11, r1, 0x80
/* 80829AE8  4B B3 86 F4 */	b _savegpr_29
/* 80829AEC  7C 7F 1B 78 */	mr r31, r3
/* 80829AF0  3C 80 80 83 */	lis r4, lit_1109@ha
/* 80829AF4  3B A4 F6 E8 */	addi r29, r4, lit_1109@l
/* 80829AF8  3C 80 80 83 */	lis r4, lit_3778@ha
/* 80829AFC  3B C4 F2 08 */	addi r30, r4, lit_3778@l
/* 80829B00  80 03 06 64 */	lwz r0, 0x664(r3)
/* 80829B04  28 00 00 00 */	cmplwi r0, 0
/* 80829B08  40 82 00 18 */	bne lbl_80829B20
/* 80829B0C  38 80 00 08 */	li r4, 8
/* 80829B10  38 A0 00 00 */	li r5, 0
/* 80829B14  4B FF F9 41 */	bl setActionMode__8daE_ZH_cFii
/* 80829B18  38 60 00 00 */	li r3, 0
/* 80829B1C  48 00 03 10 */	b lbl_80829E2C
lbl_80829B20:
/* 80829B20  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 80829B24  7C 00 07 75 */	extsb. r0, r0
/* 80829B28  40 82 01 70 */	bne lbl_80829C98
/* 80829B2C  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80829B30  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80829B34  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80829B38  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80829B3C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80829B40  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80829B44  D0 5D 00 B8 */	stfs f2, 0xb8(r29)
/* 80829B48  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 80829B4C  D0 23 00 04 */	stfs f1, 4(r3)
/* 80829B50  D0 03 00 08 */	stfs f0, 8(r3)
/* 80829B54  3C 80 80 83 */	lis r4, __dt__4cXyzFv@ha
/* 80829B58  38 84 93 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80829B5C  38 BD 00 6C */	addi r5, r29, 0x6c
/* 80829B60  4B FF F4 59 */	bl __register_global_object
/* 80829B64  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80829B68  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80829B6C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80829B70  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80829B74  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80829B78  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80829B7C  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 80829B80  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80829B84  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80829B88  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80829B8C  38 63 00 0C */	addi r3, r3, 0xc
/* 80829B90  3C 80 80 83 */	lis r4, __dt__4cXyzFv@ha
/* 80829B94  38 84 93 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80829B98  38 BD 00 7C */	addi r5, r29, 0x7c
/* 80829B9C  4B FF F4 1D */	bl __register_global_object
/* 80829BA0  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80829BA4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80829BA8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80829BAC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80829BB0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80829BB4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80829BB8  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 80829BBC  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80829BC0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80829BC4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80829BC8  38 63 00 18 */	addi r3, r3, 0x18
/* 80829BCC  3C 80 80 83 */	lis r4, __dt__4cXyzFv@ha
/* 80829BD0  38 84 93 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80829BD4  38 BD 00 88 */	addi r5, r29, 0x88
/* 80829BD8  4B FF F3 E1 */	bl __register_global_object
/* 80829BDC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80829BE0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80829BE4  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80829BE8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80829BEC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80829BF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80829BF4  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 80829BF8  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80829BFC  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80829C00  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80829C04  38 63 00 24 */	addi r3, r3, 0x24
/* 80829C08  3C 80 80 83 */	lis r4, __dt__4cXyzFv@ha
/* 80829C0C  38 84 93 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80829C10  38 BD 00 94 */	addi r5, r29, 0x94
/* 80829C14  4B FF F3 A5 */	bl __register_global_object
/* 80829C18  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80829C1C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80829C20  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80829C24  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80829C28  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80829C2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80829C30  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 80829C34  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80829C38  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80829C3C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80829C40  38 63 00 30 */	addi r3, r3, 0x30
/* 80829C44  3C 80 80 83 */	lis r4, __dt__4cXyzFv@ha
/* 80829C48  38 84 93 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80829C4C  38 BD 00 A0 */	addi r5, r29, 0xa0
/* 80829C50  4B FF F3 69 */	bl __register_global_object
/* 80829C54  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80829C58  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80829C5C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80829C60  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80829C64  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80829C68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80829C6C  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 80829C70  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80829C74  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80829C78  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80829C7C  38 63 00 3C */	addi r3, r3, 0x3c
/* 80829C80  3C 80 80 83 */	lis r4, __dt__4cXyzFv@ha
/* 80829C84  38 84 93 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80829C88  38 BD 00 AC */	addi r5, r29, 0xac
/* 80829C8C  4B FF F3 2D */	bl __register_global_object
/* 80829C90  38 00 00 01 */	li r0, 1
/* 80829C94  98 1D 00 78 */	stb r0, 0x78(r29)
lbl_80829C98:
/* 80829C98  38 E0 00 00 */	li r7, 0
/* 80829C9C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80829CA0  7C 00 07 74 */	extsb r0, r0
/* 80829CA4  2C 00 00 03 */	cmpwi r0, 3
/* 80829CA8  41 82 00 3C */	beq lbl_80829CE4
/* 80829CAC  40 80 00 14 */	bge lbl_80829CC0
/* 80829CB0  2C 00 00 01 */	cmpwi r0, 1
/* 80829CB4  41 82 00 30 */	beq lbl_80829CE4
/* 80829CB8  40 80 00 18 */	bge lbl_80829CD0
/* 80829CBC  48 00 00 28 */	b lbl_80829CE4
lbl_80829CC0:
/* 80829CC0  2C 00 00 05 */	cmpwi r0, 5
/* 80829CC4  41 82 00 1C */	beq lbl_80829CE0
/* 80829CC8  40 80 00 1C */	bge lbl_80829CE4
/* 80829CCC  48 00 00 0C */	b lbl_80829CD8
lbl_80829CD0:
/* 80829CD0  38 E0 00 01 */	li r7, 1
/* 80829CD4  48 00 00 10 */	b lbl_80829CE4
lbl_80829CD8:
/* 80829CD8  38 E0 00 02 */	li r7, 2
/* 80829CDC  48 00 00 08 */	b lbl_80829CE4
lbl_80829CE0:
/* 80829CE0  38 E0 00 03 */	li r7, 3
lbl_80829CE4:
/* 80829CE4  88 1F 07 AB */	lbz r0, 0x7ab(r31)
/* 80829CE8  28 00 00 00 */	cmplwi r0, 0
/* 80829CEC  40 82 00 34 */	bne lbl_80829D20
/* 80829CF0  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80829CF4  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 80829CF8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80829CFC  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 80829D00  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80829D04  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 80829D08  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80829D0C  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 80829D10  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 80829D14  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80829D18  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 80829D1C  48 00 00 54 */	b lbl_80829D70
lbl_80829D20:
/* 80829D20  1C 67 00 0C */	mulli r3, r7, 0xc
/* 80829D24  38 BD 00 B8 */	addi r5, r29, 0xb8
/* 80829D28  7C 05 1C 2E */	lfsx f0, r5, r3
/* 80829D2C  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 80829D30  7C C5 1A 14 */	add r6, r5, r3
/* 80829D34  C0 06 00 04 */	lfs f0, 4(r6)
/* 80829D38  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 80829D3C  38 85 00 08 */	addi r4, r5, 8
/* 80829D40  7C 04 1C 2E */	lfsx f0, r4, r3
/* 80829D44  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 80829D48  68 E0 00 01 */	xori r0, r7, 1
/* 80829D4C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80829D50  7C 04 04 2E */	lfsx f0, r4, r0
/* 80829D54  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 80829D58  7C 05 1C 2E */	lfsx f0, r5, r3
/* 80829D5C  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 80829D60  C0 06 00 04 */	lfs f0, 4(r6)
/* 80829D64  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 80829D68  7C 04 1C 2E */	lfsx f0, r4, r3
/* 80829D6C  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
lbl_80829D70:
/* 80829D70  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80829D74  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 80829D78  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80829D7C  C0 3F 06 98 */	lfs f1, 0x698(r31)
/* 80829D80  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80829D84  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80829D88  4B A4 5C B4 */	b cLib_addCalc2__FPffff
/* 80829D8C  38 61 00 08 */	addi r3, r1, 8
/* 80829D90  38 9F 06 98 */	addi r4, r31, 0x698
/* 80829D94  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80829D98  4B A3 CD 9C */	b __mi__4cXyzCFRC3Vec
/* 80829D9C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80829DA0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80829DA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80829DA8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80829DAC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80829DB0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80829DB4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80829DB8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80829DBC  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 80829DC0  38 80 04 00 */	li r4, 0x400
/* 80829DC4  38 A0 00 08 */	li r5, 8
/* 80829DC8  38 C0 00 40 */	li r6, 0x40
/* 80829DCC  4B A4 68 3C */	b cLib_addCalcAngleS2__FPssss
/* 80829DD0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80829DD4  4B A3 D3 54 */	b atan2sX_Z__4cXyzCFv
/* 80829DD8  7C 64 07 34 */	extsh r4, r3
/* 80829DDC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80829DE0  38 A0 00 08 */	li r5, 8
/* 80829DE4  A8 DF 07 B0 */	lha r6, 0x7b0(r31)
/* 80829DE8  4B A4 68 20 */	b cLib_addCalcAngleS2__FPssss
/* 80829DEC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80829DF0  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80829DF4  38 A0 00 08 */	li r5, 8
/* 80829DF8  A8 DF 07 B0 */	lha r6, 0x7b0(r31)
/* 80829DFC  4B A4 68 0C */	b cLib_addCalcAngleS2__FPssss
/* 80829E00  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80829E04  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80829E08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80829E0C  FC 00 02 10 */	fabs f0, f0
/* 80829E10  FC 20 00 18 */	frsp f1, f0
/* 80829E14  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80829E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80829E1C  40 80 00 0C */	bge lbl_80829E28
/* 80829E20  38 60 00 01 */	li r3, 1
/* 80829E24  48 00 00 08 */	b lbl_80829E2C
lbl_80829E28:
/* 80829E28  38 60 00 00 */	li r3, 0
lbl_80829E2C:
/* 80829E2C  39 61 00 80 */	addi r11, r1, 0x80
/* 80829E30  4B B3 83 F8 */	b _restgpr_29
/* 80829E34  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80829E38  7C 08 03 A6 */	mtlr r0
/* 80829E3C  38 21 00 80 */	addi r1, r1, 0x80
/* 80829E40  4E 80 00 20 */	blr 
