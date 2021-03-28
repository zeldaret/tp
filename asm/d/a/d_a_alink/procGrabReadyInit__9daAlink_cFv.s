lbl_800E5CBC:
/* 800E5CBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E5CC0  7C 08 02 A6 */	mflr r0
/* 800E5CC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E5CC8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E5CCC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E5CD0  7C 7F 1B 78 */	mr r31, r3
/* 800E5CD4  80 A3 27 F4 */	lwz r5, 0x27f4(r3)
/* 800E5CD8  80 05 04 9C */	lwz r0, 0x49c(r5)
/* 800E5CDC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800E5CE0  41 82 00 0C */	beq lbl_800E5CEC
/* 800E5CE4  4B FC FC 09 */	bl checkWaitAction__9daAlink_cFv
/* 800E5CE8  48 00 01 C8 */	b lbl_800E5EB0
lbl_800E5CEC:
/* 800E5CEC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E5CF0  28 00 00 FF */	cmplwi r0, 0xff
/* 800E5CF4  41 82 00 10 */	beq lbl_800E5D04
/* 800E5CF8  38 80 00 6C */	li r4, 0x6c
/* 800E5CFC  4B FD D0 E1 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800E5D00  48 00 01 B0 */	b lbl_800E5EB0
lbl_800E5D04:
/* 800E5D04  38 80 00 6C */	li r4, 0x6c
/* 800E5D08  4B FD C2 65 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E5D0C  7F E3 FB 78 */	mr r3, r31
/* 800E5D10  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800E5D14  4B FF FE A1 */	bl setGrabItemActor__9daAlink_cFP10fopAc_ac_c
/* 800E5D18  7F E3 FB 78 */	mr r3, r31
/* 800E5D1C  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800E5D20  4B F3 4D 75 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800E5D24  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E5D28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E5D2C  40 81 00 14 */	ble lbl_800E5D40
/* 800E5D30  7F E3 FB 78 */	mr r3, r31
/* 800E5D34  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800E5D38  4B F3 49 D9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800E5D3C  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
lbl_800E5D40:
/* 800E5D40  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E5D44  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E5D48  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E5D4C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E5D50  38 61 00 08 */	addi r3, r1, 8
/* 800E5D54  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800E5D58  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 800E5D5C  38 BF 35 10 */	addi r5, r31, 0x3510
/* 800E5D60  48 18 0D D5 */	bl __mi__4cXyzCFRC3Vec
/* 800E5D64  C0 01 00 08 */	lfs f0, 8(r1)
/* 800E5D68  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800E5D6C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E5D70  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 800E5D74  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E5D78  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800E5D7C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E5D80  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E5D84  7F E3 FB 78 */	mr r3, r31
/* 800E5D88  4B FD 35 B9 */	bl checkEquipAnime__9daAlink_cCFv
/* 800E5D8C  2C 03 00 00 */	cmpwi r3, 0
/* 800E5D90  41 82 00 14 */	beq lbl_800E5DA4
/* 800E5D94  7F E3 FB 78 */	mr r3, r31
/* 800E5D98  38 80 00 02 */	li r4, 2
/* 800E5D9C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E5DA0  4B FC 79 85 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800E5DA4:
/* 800E5DA4  7F E3 FB 78 */	mr r3, r31
/* 800E5DA8  4B FF DF 4D */	bl checkGrabCarryActor__9daAlink_cFv
/* 800E5DAC  2C 03 00 00 */	cmpwi r3, 0
/* 800E5DB0  41 82 00 7C */	beq lbl_800E5E2C
/* 800E5DB4  7F E3 FB 78 */	mr r3, r31
/* 800E5DB8  38 80 00 B5 */	li r4, 0xb5
/* 800E5DBC  3C A0 80 39 */	lis r5, m__18daAlinkHIO_grab_c0@ha
/* 800E5DC0  3B C5 EC 48 */	addi r30, r5, m__18daAlinkHIO_grab_c0@l
/* 800E5DC4  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 800E5DC8  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 800E5DCC  38 A0 00 09 */	li r5, 9
/* 800E5DD0  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 800E5DD4  4B FC 72 39 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800E5DD8  38 00 00 01 */	li r0, 1
/* 800E5DDC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800E5DE0  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800E5DE4  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 800E5DE8  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 800E5DEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5DF0  EC 03 00 24 */	fdivs f0, f3, f0
/* 800E5DF4  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800E5DF8  80 7F 28 30 */	lwz r3, 0x2830(r31)
/* 800E5DFC  A8 03 00 08 */	lha r0, 8(r3)
/* 800E5E00  C0 42 93 24 */	lfs f2, lit_7450(r2)
/* 800E5E04  2C 00 01 0C */	cmpwi r0, 0x10c
/* 800E5E08  40 82 00 08 */	bne lbl_800E5E10
/* 800E5E0C  C0 62 94 6C */	lfs f3, lit_15106(r2)
lbl_800E5E10:
/* 800E5E10  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 800E5E14  EC 23 00 32 */	fmuls f1, f3, f0
/* 800E5E18  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E5E1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5E20  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E5E24  D0 1F 33 EC */	stfs f0, 0x33ec(r31)
/* 800E5E28  48 00 00 60 */	b lbl_800E5E88
lbl_800E5E2C:
/* 800E5E2C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E5E30  D0 1F 33 EC */	stfs f0, 0x33ec(r31)
/* 800E5E34  7F E3 FB 78 */	mr r3, r31
/* 800E5E38  38 80 00 AF */	li r4, 0xaf
/* 800E5E3C  3C A0 80 39 */	lis r5, m__18daAlinkHIO_grab_c0@ha
/* 800E5E40  38 A5 EC 48 */	addi r5, r5, m__18daAlinkHIO_grab_c0@l
/* 800E5E44  4B FC 72 B1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E5E48  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800E5E4C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_grab_c0@ha
/* 800E5E50  AC 03 EC 48 */	lhau r0, m__18daAlinkHIO_grab_c0@l(r3)
/* 800E5E54  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800E5E58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E5E5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800E5E60  3C 00 43 30 */	lis r0, 0x4330
/* 800E5E64  90 01 00 18 */	stw r0, 0x18(r1)
/* 800E5E68  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800E5E6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 800E5E70  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E5E74  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5E78  EC 02 00 24 */	fdivs f0, f2, f0
/* 800E5E7C  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800E5E80  38 00 00 00 */	li r0, 0
/* 800E5E84  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800E5E88:
/* 800E5E88  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800E5E8C  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 800E5E90  70 00 00 43 */	andi. r0, r0, 0x43
/* 800E5E94  41 82 00 10 */	beq lbl_800E5EA4
/* 800E5E98  38 00 00 01 */	li r0, 1
/* 800E5E9C  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800E5EA0  48 00 00 0C */	b lbl_800E5EAC
lbl_800E5EA4:
/* 800E5EA4  38 00 00 00 */	li r0, 0
/* 800E5EA8  90 1F 31 98 */	stw r0, 0x3198(r31)
lbl_800E5EAC:
/* 800E5EAC  38 60 00 01 */	li r3, 1
lbl_800E5EB0:
/* 800E5EB0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E5EB4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E5EB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E5EBC  7C 08 03 A6 */	mtlr r0
/* 800E5EC0  38 21 00 30 */	addi r1, r1, 0x30
/* 800E5EC4  4E 80 00 20 */	blr 
