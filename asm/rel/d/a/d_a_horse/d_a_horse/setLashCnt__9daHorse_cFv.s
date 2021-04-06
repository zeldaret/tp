lbl_80840CE4:
/* 80840CE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80840CE8  7C 08 02 A6 */	mflr r0
/* 80840CEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80840CF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80840CF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80840CF8  7C 7E 1B 78 */	mr r30, r3
/* 80840CFC  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 80840D00  3B E3 54 AC */	addi r31, r3, lit_3894@l /* 0x808454AC@l */
/* 80840D04  80 1E 17 4C */	lwz r0, 0x174c(r30)
/* 80840D08  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80840D0C  41 82 01 94 */	beq lbl_80840EA0
/* 80840D10  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 80840D14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80840D18  41 82 01 88 */	beq lbl_80840EA0
/* 80840D1C  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80840D20  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80840D24  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80840D28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80840D2C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80840D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80840D34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80840D38  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80840D3C  38 80 00 04 */	li r4, 4
/* 80840D40  38 A0 00 01 */	li r5, 1
/* 80840D44  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80840D48  4B 82 EC DD */	bl StartShock__12dVibration_cFii4cXyz
/* 80840D4C  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 80840D50  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80840D54  40 82 00 10 */	bne lbl_80840D64
/* 80840D58  A8 1E 17 00 */	lha r0, 0x1700(r30)
/* 80840D5C  2C 00 00 00 */	cmpwi r0, 0
/* 80840D60  40 81 01 14 */	ble lbl_80840E74
lbl_80840D64:
/* 80840D64  38 00 00 3F */	li r0, 0x3f
/* 80840D68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80840D6C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80840D70  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80840D74  80 63 00 00 */	lwz r3, 0(r3)
/* 80840D78  38 81 00 10 */	addi r4, r1, 0x10
/* 80840D7C  38 A0 00 00 */	li r5, 0
/* 80840D80  38 C0 00 00 */	li r6, 0
/* 80840D84  38 E0 00 00 */	li r7, 0
/* 80840D88  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80840D8C  FC 40 08 90 */	fmr f2, f1
/* 80840D90  C0 7F 01 B8 */	lfs f3, 0x1b8(r31)
/* 80840D94  FC 80 18 90 */	fmr f4, f3
/* 80840D98  39 00 00 00 */	li r8, 0
/* 80840D9C  4B A6 AB E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80840DA0  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 80840DA4  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80840DA8  40 82 00 3C */	bne lbl_80840DE4
/* 80840DAC  A8 7E 17 00 */	lha r3, 0x1700(r30)
/* 80840DB0  38 03 FF FF */	addi r0, r3, -1
/* 80840DB4  B0 1E 17 00 */	sth r0, 0x1700(r30)
/* 80840DB8  A8 1E 17 00 */	lha r0, 0x1700(r30)
/* 80840DBC  2C 00 00 00 */	cmpwi r0, 0
/* 80840DC0  40 82 00 14 */	bne lbl_80840DD4
/* 80840DC4  38 7F 00 20 */	addi r3, r31, 0x20
/* 80840DC8  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80840DCC  B0 1E 16 FE */	sth r0, 0x16fe(r30)
/* 80840DD0  48 00 00 20 */	b lbl_80840DF0
lbl_80840DD4:
/* 80840DD4  38 7F 00 20 */	addi r3, r31, 0x20
/* 80840DD8  A8 03 00 0C */	lha r0, 0xc(r3)
/* 80840DDC  B0 1E 16 FE */	sth r0, 0x16fe(r30)
/* 80840DE0  48 00 00 10 */	b lbl_80840DF0
lbl_80840DE4:
/* 80840DE4  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 80840DE8  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 80840DEC  90 1E 17 44 */	stw r0, 0x1744(r30)
lbl_80840DF0:
/* 80840DF0  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 80840DF4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80840DF8  41 82 00 14 */	beq lbl_80840E0C
/* 80840DFC  38 7F 00 20 */	addi r3, r31, 0x20
/* 80840E00  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 80840E04  B0 1E 16 F8 */	sth r0, 0x16f8(r30)
/* 80840E08  48 00 00 10 */	b lbl_80840E18
lbl_80840E0C:
/* 80840E0C  38 7F 00 20 */	addi r3, r31, 0x20
/* 80840E10  A8 03 00 04 */	lha r0, 4(r3)
/* 80840E14  B0 1E 16 F8 */	sth r0, 0x16f8(r30)
lbl_80840E18:
/* 80840E18  80 1E 17 48 */	lwz r0, 0x1748(r30)
/* 80840E1C  60 00 00 08 */	ori r0, r0, 8
/* 80840E20  90 1E 17 48 */	stw r0, 0x1748(r30)
/* 80840E24  7F C3 F3 78 */	mr r3, r30
/* 80840E28  38 80 00 0E */	li r4, 0xe
/* 80840E2C  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80840E30  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80840E34  38 A0 FF FF */	li r5, -1
/* 80840E38  4B FF FD 51 */	bl setNeckAnime__9daHorse_cFUsffs
/* 80840E3C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005000C@ha */
/* 80840E40  38 03 00 0C */	addi r0, r3, 0x000C /* 0x0005000C@l */
/* 80840E44  90 01 00 18 */	stw r0, 0x18(r1)
/* 80840E48  38 7E 10 A4 */	addi r3, r30, 0x10a4
/* 80840E4C  38 81 00 18 */	addi r4, r1, 0x18
/* 80840E50  38 A0 FF FF */	li r5, -1
/* 80840E54  81 9E 10 A4 */	lwz r12, 0x10a4(r30)
/* 80840E58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80840E5C  7D 89 03 A6 */	mtctr r12
/* 80840E60  4E 80 04 21 */	bctrl 
/* 80840E64  80 1E 17 4C */	lwz r0, 0x174c(r30)
/* 80840E68  60 00 04 00 */	ori r0, r0, 0x400
/* 80840E6C  90 1E 17 4C */	stw r0, 0x174c(r30)
/* 80840E70  48 00 01 58 */	b lbl_80840FC8
lbl_80840E74:
/* 80840E74  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005000B@ha */
/* 80840E78  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0005000B@l */
/* 80840E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80840E80  38 7E 10 A4 */	addi r3, r30, 0x10a4
/* 80840E84  38 81 00 14 */	addi r4, r1, 0x14
/* 80840E88  38 A0 FF FF */	li r5, -1
/* 80840E8C  81 9E 10 A4 */	lwz r12, 0x10a4(r30)
/* 80840E90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80840E94  7D 89 03 A6 */	mtctr r12
/* 80840E98  4E 80 04 21 */	bctrl 
/* 80840E9C  48 00 01 2C */	b lbl_80840FC8
lbl_80840EA0:
/* 80840EA0  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 80840EA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80840EA8  41 82 01 14 */	beq lbl_80840FBC
/* 80840EAC  A8 7E 16 F8 */	lha r3, 0x16f8(r30)
/* 80840EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80840EB4  40 81 00 0C */	ble lbl_80840EC0
/* 80840EB8  38 03 FF FF */	addi r0, r3, -1
/* 80840EBC  B0 1E 16 F8 */	sth r0, 0x16f8(r30)
lbl_80840EC0:
/* 80840EC0  A8 7E 16 FE */	lha r3, 0x16fe(r30)
/* 80840EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80840EC8  40 81 01 00 */	ble lbl_80840FC8
/* 80840ECC  38 03 FF FF */	addi r0, r3, -1
/* 80840ED0  B0 1E 16 FE */	sth r0, 0x16fe(r30)
/* 80840ED4  A8 1E 16 FE */	lha r0, 0x16fe(r30)
/* 80840ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80840EDC  40 82 00 EC */	bne lbl_80840FC8
/* 80840EE0  A8 7E 17 00 */	lha r3, 0x1700(r30)
/* 80840EE4  2C 03 00 00 */	cmpwi r3, 0
/* 80840EE8  40 82 00 60 */	bne lbl_80840F48
/* 80840EEC  38 00 00 06 */	li r0, 6
/* 80840EF0  B0 1E 17 00 */	sth r0, 0x1700(r30)
/* 80840EF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80840EF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80840EFC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80840F00  28 00 00 00 */	cmplwi r0, 0
/* 80840F04  40 82 00 C4 */	bne lbl_80840FC8
/* 80840F08  38 00 00 41 */	li r0, 0x41
/* 80840F0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80840F10  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80840F14  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80840F18  80 63 00 00 */	lwz r3, 0(r3)
/* 80840F1C  38 81 00 0C */	addi r4, r1, 0xc
/* 80840F20  38 A0 00 00 */	li r5, 0
/* 80840F24  38 C0 00 00 */	li r6, 0
/* 80840F28  38 E0 00 00 */	li r7, 0
/* 80840F2C  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80840F30  FC 40 08 90 */	fmr f2, f1
/* 80840F34  C0 7F 01 B8 */	lfs f3, 0x1b8(r31)
/* 80840F38  FC 80 18 90 */	fmr f4, f3
/* 80840F3C  39 00 00 00 */	li r8, 0
/* 80840F40  4B A6 AA 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80840F44  48 00 00 84 */	b lbl_80840FC8
lbl_80840F48:
/* 80840F48  38 03 00 01 */	addi r0, r3, 1
/* 80840F4C  B0 1E 17 00 */	sth r0, 0x1700(r30)
/* 80840F50  A8 1E 17 00 */	lha r0, 0x1700(r30)
/* 80840F54  2C 00 00 06 */	cmpwi r0, 6
/* 80840F58  40 80 00 10 */	bge lbl_80840F68
/* 80840F5C  38 7F 00 20 */	addi r3, r31, 0x20
/* 80840F60  A8 03 00 10 */	lha r0, 0x10(r3)
/* 80840F64  B0 1E 16 FE */	sth r0, 0x16fe(r30)
lbl_80840F68:
/* 80840F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80840F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80840F70  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80840F74  28 00 00 00 */	cmplwi r0, 0
/* 80840F78  40 82 00 50 */	bne lbl_80840FC8
/* 80840F7C  38 00 00 40 */	li r0, 0x40
/* 80840F80  90 01 00 08 */	stw r0, 8(r1)
/* 80840F84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80840F88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80840F8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80840F90  38 81 00 08 */	addi r4, r1, 8
/* 80840F94  38 A0 00 00 */	li r5, 0
/* 80840F98  38 C0 00 00 */	li r6, 0
/* 80840F9C  38 E0 00 00 */	li r7, 0
/* 80840FA0  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80840FA4  FC 40 08 90 */	fmr f2, f1
/* 80840FA8  C0 7F 01 B8 */	lfs f3, 0x1b8(r31)
/* 80840FAC  FC 80 18 90 */	fmr f4, f3
/* 80840FB0  39 00 00 00 */	li r8, 0
/* 80840FB4  4B A6 A9 D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80840FB8  48 00 00 10 */	b lbl_80840FC8
lbl_80840FBC:
/* 80840FBC  38 00 00 00 */	li r0, 0
/* 80840FC0  B0 1E 16 F8 */	sth r0, 0x16f8(r30)
/* 80840FC4  B0 1E 16 FE */	sth r0, 0x16fe(r30)
lbl_80840FC8:
/* 80840FC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80840FCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80840FD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80840FD4  7C 08 03 A6 */	mtlr r0
/* 80840FD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80840FDC  4E 80 00 20 */	blr 
