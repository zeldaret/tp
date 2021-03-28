lbl_80785BF8:
/* 80785BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80785BFC  7C 08 02 A6 */	mflr r0
/* 80785C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80785C04  39 61 00 20 */	addi r11, r1, 0x20
/* 80785C08  4B BD C5 D4 */	b _savegpr_29
/* 80785C0C  7C 7F 1B 78 */	mr r31, r3
/* 80785C10  3C 80 80 79 */	lis r4, lit_3908@ha
/* 80785C14  3B C4 9C 38 */	addi r30, r4, lit_3908@l
/* 80785C18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80785C1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80785C20  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80785C24  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80785C28  2C 00 00 01 */	cmpwi r0, 1
/* 80785C2C  41 82 00 7C */	beq lbl_80785CA8
/* 80785C30  40 80 00 E8 */	bge lbl_80785D18
/* 80785C34  2C 00 00 00 */	cmpwi r0, 0
/* 80785C38  40 80 00 08 */	bge lbl_80785C40
/* 80785C3C  48 00 00 DC */	b lbl_80785D18
lbl_80785C40:
/* 80785C40  38 80 00 08 */	li r4, 8
/* 80785C44  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80785C48  38 A0 00 00 */	li r5, 0
/* 80785C4C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80785C50  4B FF F5 39 */	bl anm_init__FP10e_sf_classifUcf
/* 80785C54  38 00 00 01 */	li r0, 1
/* 80785C58  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80785C5C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80785C60  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80785C64  38 00 00 0A */	li r0, 0xa
/* 80785C68  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
/* 80785C6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070091@ha */
/* 80785C70  38 03 00 91 */	addi r0, r3, 0x0091 /* 0x00070091@l */
/* 80785C74  90 01 00 08 */	stw r0, 8(r1)
/* 80785C78  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80785C7C  38 81 00 08 */	addi r4, r1, 8
/* 80785C80  38 A0 FF FF */	li r5, -1
/* 80785C84  81 9F 05 E4 */	lwz r12, 0x5e4(r31)
/* 80785C88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80785C8C  7D 89 03 A6 */	mtctr r12
/* 80785C90  4E 80 04 21 */	bctrl 
/* 80785C94  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80785C98  3C 63 00 01 */	addis r3, r3, 1
/* 80785C9C  38 03 80 00 */	addi r0, r3, -32768
/* 80785CA0  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 80785CA4  48 00 00 74 */	b lbl_80785D18
lbl_80785CA8:
/* 80785CA8  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 80785CAC  60 00 00 80 */	ori r0, r0, 0x80
/* 80785CB0  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 80785CB4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80785CB8  A8 9F 05 D0 */	lha r4, 0x5d0(r31)
/* 80785CBC  38 A0 00 04 */	li r5, 4
/* 80785CC0  38 C0 04 00 */	li r6, 0x400
/* 80785CC4  4B AE A9 44 */	b cLib_addCalcAngleS2__FPssss
/* 80785CC8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80785CCC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80785CD0  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80785CD4  4B AE 9D AC */	b cLib_addCalc0__FPfff
/* 80785CD8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80785CDC  38 80 00 01 */	li r4, 1
/* 80785CE0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80785CE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80785CE8  40 82 00 18 */	bne lbl_80785D00
/* 80785CEC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80785CF0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80785CF4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80785CF8  41 82 00 08 */	beq lbl_80785D00
/* 80785CFC  38 80 00 00 */	li r4, 0
lbl_80785D00:
/* 80785D00  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80785D04  41 82 00 14 */	beq lbl_80785D18
/* 80785D08  38 00 00 03 */	li r0, 3
/* 80785D0C  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 80785D10  38 00 00 00 */	li r0, 0
/* 80785D14  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_80785D18:
/* 80785D18  39 61 00 20 */	addi r11, r1, 0x20
/* 80785D1C  4B BD C5 0C */	b _restgpr_29
/* 80785D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80785D24  7C 08 03 A6 */	mtlr r0
/* 80785D28  38 21 00 20 */	addi r1, r1, 0x20
/* 80785D2C  4E 80 00 20 */	blr 
