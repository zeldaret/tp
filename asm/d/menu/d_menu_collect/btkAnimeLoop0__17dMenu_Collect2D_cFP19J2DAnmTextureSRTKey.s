lbl_801B1CE0:
/* 801B1CE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B1CE4  7C 08 02 A6 */	mflr r0
/* 801B1CE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B1CEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B1CF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B1CF4  7C 7E 1B 78 */	mr r30, r3
/* 801B1CF8  7C 9F 23 79 */	or. r31, r4, r4
/* 801B1CFC  41 82 00 70 */	beq lbl_801B1D6C
/* 801B1D00  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 801B1D04  C0 02 A5 2C */	lfs f0, lit_4482(r2)
/* 801B1D08  EC 01 00 2A */	fadds f0, f1, f0
/* 801B1D0C  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 801B1D10  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 801B1D14  A8 9F 00 06 */	lha r4, 6(r31)
/* 801B1D18  C8 22 A5 38 */	lfd f1, lit_5199(r2)
/* 801B1D1C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801B1D20  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B1D24  3C 60 43 30 */	lis r3, 0x4330
/* 801B1D28  90 61 00 08 */	stw r3, 8(r1)
/* 801B1D2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B1D30  EC 00 08 28 */	fsubs f0, f0, f1
/* 801B1D34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801B1D38  4C 41 13 82 */	cror 2, 1, 2
/* 801B1D3C  40 82 00 24 */	bne lbl_801B1D60
/* 801B1D40  7C 80 07 34 */	extsh r0, r4
/* 801B1D44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B1D48  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B1D4C  90 61 00 08 */	stw r3, 8(r1)
/* 801B1D50  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B1D54  EC 00 08 28 */	fsubs f0, f0, f1
/* 801B1D58  EC 02 00 28 */	fsubs f0, f2, f0
/* 801B1D5C  D0 1E 00 38 */	stfs f0, 0x38(r30)
lbl_801B1D60:
/* 801B1D60  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801B1D64  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801B1D68  48 00 00 0C */	b lbl_801B1D74
lbl_801B1D6C:
/* 801B1D6C  C0 02 A5 28 */	lfs f0, lit_4481(r2)
/* 801B1D70  D0 1E 00 38 */	stfs f0, 0x38(r30)
lbl_801B1D74:
/* 801B1D74  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B1D78  3C 80 6C 62 */	lis r4, 0x6C62 /* 0x6C626730@ha */
/* 801B1D7C  38 C4 67 30 */	addi r6, r4, 0x6730 /* 0x6C626730@l */
/* 801B1D80  3C 80 6D 6F */	lis r4, 0x6D6F /* 0x6D6F6465@ha */
/* 801B1D84  38 A4 64 65 */	addi r5, r4, 0x6465 /* 0x6D6F6465@l */
/* 801B1D88  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1D8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1D90  7D 89 03 A6 */	mtctr r12
/* 801B1D94  4E 80 04 21 */	bctrl 
/* 801B1D98  7F E4 FB 78 */	mr r4, r31
/* 801B1D9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1DA0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801B1DA4  7D 89 03 A6 */	mtctr r12
/* 801B1DA8  4E 80 04 21 */	bctrl 
/* 801B1DAC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B1DB0  3C 80 6C 62 */	lis r4, 0x6C62 /* 0x6C626731@ha */
/* 801B1DB4  38 C4 67 31 */	addi r6, r4, 0x6731 /* 0x6C626731@l */
/* 801B1DB8  3C 80 6D 6F */	lis r4, 0x6D6F /* 0x6D6F6465@ha */
/* 801B1DBC  38 A4 64 65 */	addi r5, r4, 0x6465 /* 0x6D6F6465@l */
/* 801B1DC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1DC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1DC8  7D 89 03 A6 */	mtctr r12
/* 801B1DCC  4E 80 04 21 */	bctrl 
/* 801B1DD0  7F E4 FB 78 */	mr r4, r31
/* 801B1DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1DD8  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801B1DDC  7D 89 03 A6 */	mtctr r12
/* 801B1DE0  4E 80 04 21 */	bctrl 
/* 801B1DE4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B1DE8  3C 80 6C 62 */	lis r4, 0x6C62 /* 0x6C626732@ha */
/* 801B1DEC  38 C4 67 32 */	addi r6, r4, 0x6732 /* 0x6C626732@l */
/* 801B1DF0  3C 80 6D 6F */	lis r4, 0x6D6F /* 0x6D6F6465@ha */
/* 801B1DF4  38 A4 64 65 */	addi r5, r4, 0x6465 /* 0x6D6F6465@l */
/* 801B1DF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1DFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1E00  7D 89 03 A6 */	mtctr r12
/* 801B1E04  4E 80 04 21 */	bctrl 
/* 801B1E08  7F E4 FB 78 */	mr r4, r31
/* 801B1E0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1E10  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801B1E14  7D 89 03 A6 */	mtctr r12
/* 801B1E18  4E 80 04 21 */	bctrl 
/* 801B1E1C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B1E20  3C 80 6C 62 */	lis r4, 0x6C62 /* 0x6C626733@ha */
/* 801B1E24  38 C4 67 33 */	addi r6, r4, 0x6733 /* 0x6C626733@l */
/* 801B1E28  3C 80 6D 6F */	lis r4, 0x6D6F /* 0x6D6F6465@ha */
/* 801B1E2C  38 A4 64 65 */	addi r5, r4, 0x6465 /* 0x6D6F6465@l */
/* 801B1E30  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1E34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1E38  7D 89 03 A6 */	mtctr r12
/* 801B1E3C  4E 80 04 21 */	bctrl 
/* 801B1E40  7F E4 FB 78 */	mr r4, r31
/* 801B1E44  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1E48  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801B1E4C  7D 89 03 A6 */	mtctr r12
/* 801B1E50  4E 80 04 21 */	bctrl 
/* 801B1E54  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B1E58  3C 80 6C 62 */	lis r4, 0x6C62 /* 0x6C626734@ha */
/* 801B1E5C  38 C4 67 34 */	addi r6, r4, 0x6734 /* 0x6C626734@l */
/* 801B1E60  3C 80 6D 6F */	lis r4, 0x6D6F /* 0x6D6F6465@ha */
/* 801B1E64  38 A4 64 65 */	addi r5, r4, 0x6465 /* 0x6D6F6465@l */
/* 801B1E68  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1E6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1E70  7D 89 03 A6 */	mtctr r12
/* 801B1E74  4E 80 04 21 */	bctrl 
/* 801B1E78  7F E4 FB 78 */	mr r4, r31
/* 801B1E7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1E80  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801B1E84  7D 89 03 A6 */	mtctr r12
/* 801B1E88  4E 80 04 21 */	bctrl 
/* 801B1E8C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B1E90  3C 80 6C 62 */	lis r4, 0x6C62 /* 0x6C626735@ha */
/* 801B1E94  38 C4 67 35 */	addi r6, r4, 0x6735 /* 0x6C626735@l */
/* 801B1E98  3C 80 6D 6F */	lis r4, 0x6D6F /* 0x6D6F6465@ha */
/* 801B1E9C  38 A4 64 65 */	addi r5, r4, 0x6465 /* 0x6D6F6465@l */
/* 801B1EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1EA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1EA8  7D 89 03 A6 */	mtctr r12
/* 801B1EAC  4E 80 04 21 */	bctrl 
/* 801B1EB0  7F E4 FB 78 */	mr r4, r31
/* 801B1EB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1EB8  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801B1EBC  7D 89 03 A6 */	mtctr r12
/* 801B1EC0  4E 80 04 21 */	bctrl 
/* 801B1EC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B1EC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B1ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B1ED0  7C 08 03 A6 */	mtlr r0
/* 801B1ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 801B1ED8  4E 80 00 20 */	blr 
