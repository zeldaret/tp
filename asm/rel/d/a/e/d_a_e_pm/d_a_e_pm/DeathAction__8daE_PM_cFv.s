lbl_80745C44:
/* 80745C44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80745C48  7C 08 02 A6 */	mflr r0
/* 80745C4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80745C50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80745C54  7C 7F 1B 78 */	mr r31, r3
/* 80745C58  3C 80 80 75 */	lis r4, lit_3910@ha /* 0x8074BF3C@ha */
/* 80745C5C  38 C4 BF 3C */	addi r6, r4, lit_3910@l /* 0x8074BF3C@l */
/* 80745C60  88 A3 06 11 */	lbz r5, 0x611(r3)
/* 80745C64  2C 05 00 01 */	cmpwi r5, 1
/* 80745C68  41 82 00 54 */	beq lbl_80745CBC
/* 80745C6C  40 80 00 10 */	bge lbl_80745C7C
/* 80745C70  2C 05 00 00 */	cmpwi r5, 0
/* 80745C74  40 80 00 14 */	bge lbl_80745C88
/* 80745C78  48 00 01 24 */	b lbl_80745D9C
lbl_80745C7C:
/* 80745C7C  2C 05 00 03 */	cmpwi r5, 3
/* 80745C80  40 80 01 1C */	bge lbl_80745D9C
/* 80745C84  48 00 00 94 */	b lbl_80745D18
lbl_80745C88:
/* 80745C88  38 00 00 00 */	li r0, 0
/* 80745C8C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80745C90  C0 06 00 04 */	lfs f0, 4(r6)
/* 80745C94  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80745C98  38 80 00 08 */	li r4, 8
/* 80745C9C  38 A0 00 00 */	li r5, 0
/* 80745CA0  C0 26 00 E4 */	lfs f1, 0xe4(r6)
/* 80745CA4  C0 46 00 08 */	lfs f2, 8(r6)
/* 80745CA8  4B FF C9 CD */	bl SetAnm__8daE_PM_cFiiff
/* 80745CAC  88 7F 06 11 */	lbz r3, 0x611(r31)
/* 80745CB0  38 03 00 01 */	addi r0, r3, 1
/* 80745CB4  98 1F 06 11 */	stb r0, 0x611(r31)
/* 80745CB8  48 00 00 E4 */	b lbl_80745D9C
lbl_80745CBC:
/* 80745CBC  80 9F 07 04 */	lwz r4, 0x704(r31)
/* 80745CC0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80745CC4  C0 06 00 34 */	lfs f0, 0x34(r6)
/* 80745CC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80745CCC  40 81 00 D0 */	ble lbl_80745D9C
/* 80745CD0  38 05 00 01 */	addi r0, r5, 1
/* 80745CD4  98 1F 06 11 */	stb r0, 0x611(r31)
/* 80745CD8  38 80 00 11 */	li r4, 0x11
/* 80745CDC  38 A0 00 00 */	li r5, 0
/* 80745CE0  C0 26 00 E4 */	lfs f1, 0xe4(r6)
/* 80745CE4  C0 46 00 08 */	lfs f2, 8(r6)
/* 80745CE8  4B FF C9 8D */	bl SetAnm__8daE_PM_cFiiff
/* 80745CEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070059@ha */
/* 80745CF0  38 03 00 59 */	addi r0, r3, 0x0059 /* 0x00070059@l */
/* 80745CF4  90 01 00 08 */	stw r0, 8(r1)
/* 80745CF8  38 7F 07 20 */	addi r3, r31, 0x720
/* 80745CFC  38 81 00 08 */	addi r4, r1, 8
/* 80745D00  38 A0 FF FF */	li r5, -1
/* 80745D04  81 9F 07 20 */	lwz r12, 0x720(r31)
/* 80745D08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80745D0C  7D 89 03 A6 */	mtctr r12
/* 80745D10  4E 80 04 21 */	bctrl 
/* 80745D14  48 00 00 88 */	b lbl_80745D9C
lbl_80745D18:
/* 80745D18  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 80745D1C  38 80 00 01 */	li r4, 1
/* 80745D20  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80745D24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80745D28  40 82 00 18 */	bne lbl_80745D40
/* 80745D2C  C0 26 00 04 */	lfs f1, 4(r6)
/* 80745D30  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80745D34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80745D38  41 82 00 08 */	beq lbl_80745D40
/* 80745D3C  38 80 00 00 */	li r4, 0
lbl_80745D40:
/* 80745D40  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80745D44  41 82 00 58 */	beq lbl_80745D9C
/* 80745D48  88 9F 06 1B */	lbz r4, 0x61b(r31)
/* 80745D4C  28 04 00 FF */	cmplwi r4, 0xff
/* 80745D50  41 82 00 38 */	beq lbl_80745D88
/* 80745D54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80745D58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80745D5C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80745D60  7C 05 07 74 */	extsb r5, r0
/* 80745D64  4B 8E F5 FD */	bl isSwitch__10dSv_info_cCFii
/* 80745D68  2C 03 00 00 */	cmpwi r3, 0
/* 80745D6C  40 82 00 1C */	bne lbl_80745D88
/* 80745D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80745D74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80745D78  88 9F 06 1B */	lbz r4, 0x61b(r31)
/* 80745D7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80745D80  7C 05 07 74 */	extsb r5, r0
/* 80745D84  4B 8E F4 7D */	bl onSwitch__10dSv_info_cFii
lbl_80745D88:
/* 80745D88  38 00 00 06 */	li r0, 6
/* 80745D8C  98 1F 06 10 */	stb r0, 0x610(r31)
/* 80745D90  38 00 00 00 */	li r0, 0
/* 80745D94  98 1F 06 11 */	stb r0, 0x611(r31)
/* 80745D98  98 1F 06 12 */	stb r0, 0x612(r31)
lbl_80745D9C:
/* 80745D9C  3C 60 80 75 */	lis r3, data_8074C3E8@ha /* 0x8074C3E8@ha */
/* 80745DA0  A8 03 C3 E8 */	lha r0, data_8074C3E8@l(r3)  /* 0x8074C3E8@l */
/* 80745DA4  B0 1F 06 02 */	sth r0, 0x602(r31)
/* 80745DA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80745DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80745DB0  7C 08 03 A6 */	mtlr r0
/* 80745DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80745DB8  4E 80 00 20 */	blr 
