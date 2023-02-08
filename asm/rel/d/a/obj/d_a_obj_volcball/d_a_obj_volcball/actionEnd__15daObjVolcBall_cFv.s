lbl_80D22CD4:
/* 80D22CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D22CD8  7C 08 02 A6 */	mflr r0
/* 80D22CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D22CE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D22CE4  7C 7F 1B 78 */	mr r31, r3
/* 80D22CE8  88 03 06 00 */	lbz r0, 0x600(r3)
/* 80D22CEC  28 00 00 01 */	cmplwi r0, 1
/* 80D22CF0  40 82 00 D8 */	bne lbl_80D22DC8
/* 80D22CF4  40 82 00 2C */	bne lbl_80D22D20
/* 80D22CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D22CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D22D00  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D22D04  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D22D08  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D22D0C  7C 05 07 74 */	extsb r5, r0
/* 80D22D10  4B 31 26 51 */	bl isSwitch__10dSv_info_cCFii
/* 80D22D14  2C 03 00 00 */	cmpwi r3, 0
/* 80D22D18  41 82 00 08 */	beq lbl_80D22D20
/* 80D22D1C  48 00 00 AC */	b lbl_80D22DC8
lbl_80D22D20:
/* 80D22D20  80 1F 29 20 */	lwz r0, 0x2920(r31)
/* 80D22D24  90 01 00 08 */	stw r0, 8(r1)
/* 80D22D28  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80D22D2C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80D22D30  38 81 00 08 */	addi r4, r1, 8
/* 80D22D34  4B 2F 6A C5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D22D38  28 03 00 00 */	cmplwi r3, 0
/* 80D22D3C  41 82 00 8C */	beq lbl_80D22DC8
/* 80D22D40  88 1F 29 24 */	lbz r0, 0x2924(r31)
/* 80D22D44  2C 00 00 02 */	cmpwi r0, 2
/* 80D22D48  41 82 00 54 */	beq lbl_80D22D9C
/* 80D22D4C  40 80 00 14 */	bge lbl_80D22D60
/* 80D22D50  2C 00 00 00 */	cmpwi r0, 0
/* 80D22D54  41 82 00 18 */	beq lbl_80D22D6C
/* 80D22D58  40 80 00 20 */	bge lbl_80D22D78
/* 80D22D5C  48 00 00 6C */	b lbl_80D22DC8
lbl_80D22D60:
/* 80D22D60  2C 00 00 04 */	cmpwi r0, 4
/* 80D22D64  40 80 00 64 */	bge lbl_80D22DC8
/* 80D22D68  48 00 00 58 */	b lbl_80D22DC0
lbl_80D22D6C:
/* 80D22D6C  38 00 00 01 */	li r0, 1
/* 80D22D70  98 03 09 60 */	stb r0, 0x960(r3)
/* 80D22D74  98 1F 29 24 */	stb r0, 0x2924(r31)
lbl_80D22D78:
/* 80D22D78  88 1F 29 25 */	lbz r0, 0x2925(r31)
/* 80D22D7C  28 00 00 3C */	cmplwi r0, 0x3c
/* 80D22D80  40 82 00 0C */	bne lbl_80D22D8C
/* 80D22D84  38 00 00 02 */	li r0, 2
/* 80D22D88  98 1F 29 24 */	stb r0, 0x2924(r31)
lbl_80D22D8C:
/* 80D22D8C  88 7F 29 25 */	lbz r3, 0x2925(r31)
/* 80D22D90  38 03 00 01 */	addi r0, r3, 1
/* 80D22D94  98 1F 29 25 */	stb r0, 0x2925(r31)
/* 80D22D98  48 00 00 30 */	b lbl_80D22DC8
lbl_80D22D9C:
/* 80D22D9C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D22DA0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D22DA4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D22DA8  38 A0 00 FF */	li r5, 0xff
/* 80D22DAC  38 C0 00 01 */	li r6, 1
/* 80D22DB0  4B 32 5B 91 */	bl orderEvent__17dEvLib_callback_cFiii
/* 80D22DB4  38 00 00 03 */	li r0, 3
/* 80D22DB8  98 1F 29 24 */	stb r0, 0x2924(r31)
/* 80D22DBC  48 00 00 0C */	b lbl_80D22DC8
lbl_80D22DC0:
/* 80D22DC0  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D22DC4  4B 32 5A A9 */	bl eventUpdate__17dEvLib_callback_cFv
lbl_80D22DC8:
/* 80D22DC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D22DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D22DD0  7C 08 03 A6 */	mtlr r0
/* 80D22DD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D22DD8  4E 80 00 20 */	blr 
