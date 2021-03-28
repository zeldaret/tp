lbl_80786C50:
/* 80786C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80786C54  7C 08 02 A6 */	mflr r0
/* 80786C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80786C5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80786C60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80786C64  7C 7E 1B 78 */	mr r30, r3
/* 80786C68  38 00 00 05 */	li r0, 5
/* 80786C6C  B0 03 06 A4 */	sth r0, 0x6a4(r3)
/* 80786C70  3B E0 00 00 */	li r31, 0
/* 80786C74  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80786C78  2C 00 00 01 */	cmpwi r0, 1
/* 80786C7C  41 82 00 54 */	beq lbl_80786CD0
/* 80786C80  40 80 00 10 */	bge lbl_80786C90
/* 80786C84  2C 00 00 00 */	cmpwi r0, 0
/* 80786C88  40 80 00 14 */	bge lbl_80786C9C
/* 80786C8C  48 00 01 18 */	b lbl_80786DA4
lbl_80786C90:
/* 80786C90  2C 00 00 03 */	cmpwi r0, 3
/* 80786C94  40 80 01 10 */	bge lbl_80786DA4
/* 80786C98  48 00 00 70 */	b lbl_80786D08
lbl_80786C9C:
/* 80786C9C  38 00 00 01 */	li r0, 1
/* 80786CA0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80786CA4  38 80 00 0B */	li r4, 0xb
/* 80786CA8  3C A0 80 79 */	lis r5, lit_3909@ha
/* 80786CAC  C0 25 9C 3C */	lfs f1, lit_3909@l(r5)
/* 80786CB0  38 A0 00 00 */	li r5, 0
/* 80786CB4  FC 40 08 90 */	fmr f2, f1
/* 80786CB8  4B FF E4 D1 */	bl anm_init__FP10e_sf_classifUcf
/* 80786CBC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80786CC0  54 00 00 3E */	slwi r0, r0, 0
/* 80786CC4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80786CC8  38 00 00 00 */	li r0, 0
/* 80786CCC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80786CD0:
/* 80786CD0  38 60 00 00 */	li r3, 0
/* 80786CD4  38 80 FF FF */	li r4, -1
/* 80786CD8  4B 8A 6E 8C */	b dComIfGs_isOneZoneSwitch__Fii
/* 80786CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80786CE0  41 82 00 C4 */	beq lbl_80786DA4
/* 80786CE4  38 00 00 02 */	li r0, 2
/* 80786CE8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80786CEC  3C 60 80 79 */	lis r3, lit_3910@ha
/* 80786CF0  C0 03 9C 40 */	lfs f0, lit_3910@l(r3)
/* 80786CF4  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80786CF8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80786CFC  38 00 00 01 */	li r0, 1
/* 80786D00  B0 1E 0F D8 */	sth r0, 0xfd8(r30)
/* 80786D04  48 00 00 A0 */	b lbl_80786DA4
lbl_80786D08:
/* 80786D08  3B E0 00 FF */	li r31, 0xff
/* 80786D0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007001F@ha */
/* 80786D10  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0007001F@l */
/* 80786D14  90 01 00 08 */	stw r0, 8(r1)
/* 80786D18  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80786D1C  38 81 00 08 */	addi r4, r1, 8
/* 80786D20  38 A0 FF FF */	li r5, -1
/* 80786D24  81 9E 05 E4 */	lwz r12, 0x5e4(r30)
/* 80786D28  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80786D2C  7D 89 03 A6 */	mtctr r12
/* 80786D30  4E 80 04 21 */	bctrl 
/* 80786D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80786D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80786D3C  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 80786D40  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80786D44  40 82 00 38 */	bne lbl_80786D7C
/* 80786D48  80 9E 05 D4 */	lwz r4, 0x5d4(r30)
/* 80786D4C  38 A0 00 01 */	li r5, 1
/* 80786D50  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80786D54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80786D58  40 82 00 1C */	bne lbl_80786D74
/* 80786D5C  3C 60 80 79 */	lis r3, lit_3909@ha
/* 80786D60  C0 23 9C 3C */	lfs f1, lit_3909@l(r3)
/* 80786D64  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80786D68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80786D6C  41 82 00 08 */	beq lbl_80786D74
/* 80786D70  38 A0 00 00 */	li r5, 0
lbl_80786D74:
/* 80786D74  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80786D78  41 82 00 2C */	beq lbl_80786DA4
lbl_80786D7C:
/* 80786D7C  38 00 00 03 */	li r0, 3
/* 80786D80  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 80786D84  38 00 FF F6 */	li r0, -10
/* 80786D88  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80786D8C  38 00 00 3C */	li r0, 0x3c
/* 80786D90  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80786D94  38 00 00 04 */	li r0, 4
/* 80786D98  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80786D9C  38 00 00 64 */	li r0, 0x64
/* 80786DA0  B0 1E 0F D8 */	sth r0, 0xfd8(r30)
lbl_80786DA4:
/* 80786DA4  7F E3 FB 78 */	mr r3, r31
/* 80786DA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80786DAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80786DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80786DB4  7C 08 03 A6 */	mtlr r0
/* 80786DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80786DBC  4E 80 00 20 */	blr 
