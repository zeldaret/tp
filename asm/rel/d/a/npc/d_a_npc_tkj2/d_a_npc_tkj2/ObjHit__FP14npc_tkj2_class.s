lbl_80B12D20:
/* 80B12D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B12D24  7C 08 02 A6 */	mflr r0
/* 80B12D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B12D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B12D30  93 C1 00 08 */	stw r30, 8(r1)
/* 80B12D34  7C 7E 1B 78 */	mr r30, r3
/* 80B12D38  3C 60 80 B1 */	lis r3, lit_3648@ha
/* 80B12D3C  3B E3 42 DC */	addi r31, r3, lit_3648@l
/* 80B12D40  A8 7E 06 20 */	lha r3, 0x620(r30)
/* 80B12D44  38 03 FF FF */	addi r0, r3, -1
/* 80B12D48  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80B12D4C  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80B12D50  2C 00 00 00 */	cmpwi r0, 0
/* 80B12D54  41 81 00 0C */	bgt lbl_80B12D60
/* 80B12D58  38 00 00 00 */	li r0, 0
/* 80B12D5C  B0 1E 06 20 */	sth r0, 0x620(r30)
lbl_80B12D60:
/* 80B12D60  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80B12D64  2C 00 00 00 */	cmpwi r0, 0
/* 80B12D68  40 81 00 4C */	ble lbl_80B12DB4
/* 80B12D6C  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B12D70  81 9E 08 C8 */	lwz r12, 0x8c8(r30)
/* 80B12D74  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B12D78  7D 89 03 A6 */	mtctr r12
/* 80B12D7C  4E 80 04 21 */	bctrl 
/* 80B12D80  88 1E 06 30 */	lbz r0, 0x630(r30)
/* 80B12D84  28 00 00 00 */	cmplwi r0, 0
/* 80B12D88  40 82 00 E8 */	bne lbl_80B12E70
/* 80B12D8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B12D90  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B12D94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B12D98  41 82 00 D8 */	beq lbl_80B12E70
/* 80B12D9C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B12DA0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B12DA4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B12DA8  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80B12DAC  4B 75 CC 90 */	b cLib_addCalc2__FPffff
/* 80B12DB0  48 00 00 C0 */	b lbl_80B12E70
lbl_80B12DB4:
/* 80B12DB4  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B12DB8  4B 57 16 A8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80B12DBC  28 03 00 00 */	cmplwi r3, 0
/* 80B12DC0  41 82 00 B0 */	beq lbl_80B12E70
/* 80B12DC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B12DC8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B12DCC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B12DD0  40 82 00 84 */	bne lbl_80B12E54
/* 80B12DD4  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B12DD8  81 9E 08 C8 */	lwz r12, 0x8c8(r30)
/* 80B12DDC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B12DE0  7D 89 03 A6 */	mtctr r12
/* 80B12DE4  4E 80 04 21 */	bctrl 
/* 80B12DE8  38 60 00 00 */	li r3, 0
/* 80B12DEC  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 80B12DF0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B12DF4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B12DF8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80B12DFC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B12E00  38 00 00 02 */	li r0, 2
/* 80B12E04  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B12E08  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 80B12E0C  7F C3 F3 78 */	mr r3, r30
/* 80B12E10  38 80 00 06 */	li r4, 6
/* 80B12E14  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B12E18  38 A0 00 02 */	li r5, 2
/* 80B12E1C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80B12E20  4B FF E0 01 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B12E24  A8 7E 06 0A */	lha r3, 0x60a(r30)
/* 80B12E28  38 03 00 01 */	addi r0, r3, 1
/* 80B12E2C  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B12E30  38 00 00 32 */	li r0, 0x32
/* 80B12E34  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80B12E38  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80B12E3C  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 80B12E40  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80B12E44  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80B12E48  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80B12E4C  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80B12E50  48 00 00 20 */	b lbl_80B12E70
lbl_80B12E54:
/* 80B12E54  38 00 00 14 */	li r0, 0x14
/* 80B12E58  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80B12E5C  38 00 00 28 */	li r0, 0x28
/* 80B12E60  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80B12E64  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B12E68  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80B12E6C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B12E70:
/* 80B12E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B12E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B12E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B12E7C  7C 08 03 A6 */	mtlr r0
/* 80B12E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80B12E84  4E 80 00 20 */	blr 
