lbl_804D9D00:
/* 804D9D00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D9D04  7C 08 02 A6 */	mflr r0
/* 804D9D08  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D9D0C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804D9D10  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804D9D14  3C 60 80 4E */	lis r3, lit_1109@ha
/* 804D9D18  3B C3 A3 20 */	addi r30, r3, lit_1109@l
/* 804D9D1C  3C 60 80 4E */	lis r3, lit_3942@ha
/* 804D9D20  3B E3 9E 64 */	addi r31, r3, lit_3942@l
/* 804D9D24  38 7E 00 4C */	addi r3, r30, 0x4c
/* 804D9D28  4B FF CF 25 */	bl __ct__10daBd_HIO_cFv
/* 804D9D2C  3C 80 80 4E */	lis r4, __dt__10daBd_HIO_cFv@ha
/* 804D9D30  38 84 9C B8 */	addi r4, r4, __dt__10daBd_HIO_cFv@l
/* 804D9D34  38 BE 00 40 */	addi r5, r30, 0x40
/* 804D9D38  4B FF CE A1 */	bl __register_global_object
/* 804D9D3C  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 804D9D40  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 804D9D44  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 804D9D48  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804D9D4C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804D9D50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804D9D54  D0 5E 00 9C */	stfs f2, 0x9c(r30)
/* 804D9D58  38 7E 00 9C */	addi r3, r30, 0x9c
/* 804D9D5C  D0 23 00 04 */	stfs f1, 4(r3)
/* 804D9D60  D0 03 00 08 */	stfs f0, 8(r3)
/* 804D9D64  3C 80 80 4D */	lis r4, __dt__4cXyzFv@ha
/* 804D9D68  38 84 6E D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 804D9D6C  38 BE 00 6C */	addi r5, r30, 0x6c
/* 804D9D70  4B FF CE 69 */	bl __register_global_object
/* 804D9D74  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 804D9D78  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804D9D7C  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 804D9D80  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804D9D84  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 804D9D88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804D9D8C  38 7E 00 9C */	addi r3, r30, 0x9c
/* 804D9D90  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 804D9D94  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 804D9D98  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 804D9D9C  38 63 00 0C */	addi r3, r3, 0xc
/* 804D9DA0  3C 80 80 4D */	lis r4, __dt__4cXyzFv@ha
/* 804D9DA4  38 84 6E D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 804D9DA8  38 BE 00 78 */	addi r5, r30, 0x78
/* 804D9DAC  4B FF CE 2D */	bl __register_global_object
/* 804D9DB0  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 804D9DB4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804D9DB8  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 804D9DBC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804D9DC0  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 804D9DC4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D9DC8  38 7E 00 9C */	addi r3, r30, 0x9c
/* 804D9DCC  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 804D9DD0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 804D9DD4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804D9DD8  38 63 00 18 */	addi r3, r3, 0x18
/* 804D9DDC  3C 80 80 4D */	lis r4, __dt__4cXyzFv@ha
/* 804D9DE0  38 84 6E D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 804D9DE4  38 BE 00 84 */	addi r5, r30, 0x84
/* 804D9DE8  4B FF CD F1 */	bl __register_global_object
/* 804D9DEC  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 804D9DF0  D0 41 00 08 */	stfs f2, 8(r1)
/* 804D9DF4  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 804D9DF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D9DFC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 804D9E00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804D9E04  38 7E 00 9C */	addi r3, r30, 0x9c
/* 804D9E08  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 804D9E0C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 804D9E10  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 804D9E14  38 63 00 24 */	addi r3, r3, 0x24
/* 804D9E18  3C 80 80 4D */	lis r4, __dt__4cXyzFv@ha
/* 804D9E1C  38 84 6E D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 804D9E20  38 BE 00 90 */	addi r5, r30, 0x90
/* 804D9E24  4B FF CD B5 */	bl __register_global_object
/* 804D9E28  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D9E2C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804D9E30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D9E34  7C 08 03 A6 */	mtlr r0
/* 804D9E38  38 21 00 40 */	addi r1, r1, 0x40
/* 804D9E3C  4E 80 00 20 */	blr 
