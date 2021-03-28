lbl_80691C24:
/* 80691C24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80691C28  7C 08 02 A6 */	mflr r0
/* 80691C2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80691C30  39 61 00 30 */	addi r11, r1, 0x30
/* 80691C34  4B CD 05 A8 */	b _savegpr_29
/* 80691C38  7C 7D 1B 78 */	mr r29, r3
/* 80691C3C  3C 80 80 69 */	lis r4, lit_3788@ha
/* 80691C40  3B E4 46 90 */	addi r31, r4, lit_3788@l
/* 80691C44  80 83 05 C0 */	lwz r4, 0x5c0(r3)
/* 80691C48  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80691C4C  FC 00 00 1E */	fctiwz f0, f0
/* 80691C50  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80691C54  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 80691C58  A8 03 06 74 */	lha r0, 0x674(r3)
/* 80691C5C  2C 00 00 02 */	cmpwi r0, 2
/* 80691C60  41 82 00 70 */	beq lbl_80691CD0
/* 80691C64  40 80 00 14 */	bge lbl_80691C78
/* 80691C68  2C 00 00 00 */	cmpwi r0, 0
/* 80691C6C  41 82 00 18 */	beq lbl_80691C84
/* 80691C70  40 80 00 34 */	bge lbl_80691CA4
/* 80691C74  48 00 01 38 */	b lbl_80691DAC
lbl_80691C78:
/* 80691C78  2C 00 00 04 */	cmpwi r0, 4
/* 80691C7C  40 80 01 30 */	bge lbl_80691DAC
/* 80691C80  48 00 00 F8 */	b lbl_80691D78
lbl_80691C84:
/* 80691C84  38 80 00 06 */	li r4, 6
/* 80691C88  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80691C8C  38 A0 00 00 */	li r5, 0
/* 80691C90  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80691C94  4B FF F5 BD */	bl anm_init__FP10e_bu_classifUcf
/* 80691C98  38 00 00 01 */	li r0, 1
/* 80691C9C  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80691CA0  48 00 01 0C */	b lbl_80691DAC
lbl_80691CA4:
/* 80691CA4  C0 3D 06 8C */	lfs f1, 0x68c(r29)
/* 80691CA8  38 80 00 01 */	li r4, 1
/* 80691CAC  4B FF F9 31 */	bl pl_check__FP10e_bu_classfs
/* 80691CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80691CB4  41 82 00 F8 */	beq lbl_80691DAC
/* 80691CB8  38 00 00 02 */	li r0, 2
/* 80691CBC  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80691CC0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80691CC4  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80691CC8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80691CCC  48 00 00 E0 */	b lbl_80691DAC
lbl_80691CD0:
/* 80691CD0  2C 1E 00 24 */	cmpwi r30, 0x24
/* 80691CD4  40 82 00 30 */	bne lbl_80691D04
/* 80691CD8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070361@ha */
/* 80691CDC  38 03 03 61 */	addi r0, r3, 0x0361 /* 0x00070361@l */
/* 80691CE0  90 01 00 08 */	stw r0, 8(r1)
/* 80691CE4  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80691CE8  38 81 00 08 */	addi r4, r1, 8
/* 80691CEC  38 A0 00 00 */	li r5, 0
/* 80691CF0  38 C0 FF FF */	li r6, -1
/* 80691CF4  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80691CF8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80691CFC  7D 89 03 A6 */	mtctr r12
/* 80691D00  4E 80 04 21 */	bctrl 
lbl_80691D04:
/* 80691D04  2C 1E 00 25 */	cmpwi r30, 0x25
/* 80691D08  41 80 00 20 */	blt lbl_80691D28
/* 80691D0C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80691D10  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80691D14  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80691D18  EC 21 00 2A */	fadds f1, f1, f0
/* 80691D1C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80691D20  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80691D24  4B BD DD 18 */	b cLib_addCalc2__FPffff
lbl_80691D28:
/* 80691D28  2C 1E 00 29 */	cmpwi r30, 0x29
/* 80691D2C  41 80 00 80 */	blt lbl_80691DAC
/* 80691D30  38 00 00 03 */	li r0, 3
/* 80691D34  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80691D38  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80691D3C  4B BD 5C 18 */	b cM_rndF__Ff
/* 80691D40  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80691D44  EC 40 08 2A */	fadds f2, f0, f1
/* 80691D48  7F A3 EB 78 */	mr r3, r29
/* 80691D4C  38 80 00 07 */	li r4, 7
/* 80691D50  FC 20 00 90 */	fmr f1, f0
/* 80691D54  38 A0 00 02 */	li r5, 2
/* 80691D58  4B FF F4 F9 */	bl anm_init__FP10e_bu_classifUcf
/* 80691D5C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80691D60  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80691D64  EC 01 00 2A */	fadds f0, f1, f0
/* 80691D68  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80691D6C  38 00 00 1E */	li r0, 0x1e
/* 80691D70  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80691D74  48 00 00 38 */	b lbl_80691DAC
lbl_80691D78:
/* 80691D78  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80691D7C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80691D80  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80691D84  EC 21 00 2A */	fadds f1, f1, f0
/* 80691D88  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80691D8C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80691D90  4B BD DC AC */	b cLib_addCalc2__FPffff
/* 80691D94  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 80691D98  2C 00 00 00 */	cmpwi r0, 0
/* 80691D9C  40 82 00 10 */	bne lbl_80691DAC
/* 80691DA0  38 00 00 01 */	li r0, 1
/* 80691DA4  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80691DA8  B0 1D 06 74 */	sth r0, 0x674(r29)
lbl_80691DAC:
/* 80691DAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80691DB0  4B CD 04 78 */	b _restgpr_29
/* 80691DB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80691DB8  7C 08 03 A6 */	mtlr r0
/* 80691DBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80691DC0  4E 80 00 20 */	blr 
