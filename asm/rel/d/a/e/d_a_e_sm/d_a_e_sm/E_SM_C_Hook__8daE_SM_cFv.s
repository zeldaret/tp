lbl_80795E64:
/* 80795E64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80795E68  7C 08 02 A6 */	mflr r0
/* 80795E6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80795E70  39 61 00 30 */	addi r11, r1, 0x30
/* 80795E74  4B BC C3 69 */	bl _savegpr_29
/* 80795E78  7C 7E 1B 78 */	mr r30, r3
/* 80795E7C  3C 60 80 7A */	lis r3, lit_3920@ha /* 0x807985E0@ha */
/* 80795E80  3B E3 85 E0 */	addi r31, r3, lit_3920@l /* 0x807985E0@l */
/* 80795E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80795E88  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80795E8C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80795E90  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80795E94  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 80795E98  7D 89 03 A6 */	mtctr r12
/* 80795E9C  4E 80 04 21 */	bctrl 
/* 80795EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80795EA4  41 82 00 10 */	beq lbl_80795EB4
/* 80795EA8  80 1E 0A 8C */	lwz r0, 0xa8c(r30)
/* 80795EAC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80795EB0  41 82 00 68 */	beq lbl_80795F18
lbl_80795EB4:
/* 80795EB4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80795EB8  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80795EBC  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80795EC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80795EC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80795EC8  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80795ECC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80795ED0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80795ED4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80795ED8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80795EDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80795EE0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80795EE4  38 00 00 03 */	li r0, 3
/* 80795EE8  B0 1E 06 B0 */	sth r0, 0x6b0(r30)
/* 80795EEC  38 00 00 00 */	li r0, 0
/* 80795EF0  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 80795EF4  7F C3 F3 78 */	mr r3, r30
/* 80795EF8  38 80 00 12 */	li r4, 0x12
/* 80795EFC  38 A0 00 00 */	li r5, 0
/* 80795F00  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80795F04  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80795F08  4B FF C3 59 */	bl SetAnm__8daE_SM_cFiiff
/* 80795F0C  38 00 00 00 */	li r0, 0
/* 80795F10  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 80795F14  48 00 01 34 */	b lbl_80796048
lbl_80795F18:
/* 80795F18  3C 60 80 7A */	lis r3, d_a_e_sm__stringBase0@ha /* 0x80798780@ha */
/* 80795F1C  38 63 87 80 */	addi r3, r3, d_a_e_sm__stringBase0@l /* 0x80798780@l */
/* 80795F20  38 63 00 05 */	addi r3, r3, 5
/* 80795F24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80795F28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80795F2C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80795F30  4B BD 2A 65 */	bl strcmp
/* 80795F34  2C 03 00 00 */	cmpwi r3, 0
/* 80795F38  40 82 00 7C */	bne lbl_80795FB4
/* 80795F3C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80795F40  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 80795F44  C0 1E 09 94 */	lfs f0, 0x994(r30)
/* 80795F48  EC 01 00 2A */	fadds f0, f1, f0
/* 80795F4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80795F50  40 81 00 64 */	ble lbl_80795FB4
/* 80795F54  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80795F58  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80795F5C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80795F60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80795F64  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80795F68  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80795F6C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80795F70  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80795F74  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80795F78  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80795F7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80795F80  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80795F84  38 00 00 03 */	li r0, 3
/* 80795F88  B0 1E 06 B0 */	sth r0, 0x6b0(r30)
/* 80795F8C  38 00 00 00 */	li r0, 0
/* 80795F90  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 80795F94  7F C3 F3 78 */	mr r3, r30
/* 80795F98  38 80 00 12 */	li r4, 0x12
/* 80795F9C  38 A0 00 00 */	li r5, 0
/* 80795FA0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80795FA4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80795FA8  4B FF C2 B9 */	bl SetAnm__8daE_SM_cFiiff
/* 80795FAC  38 00 00 00 */	li r0, 0
/* 80795FB0  98 1E 06 AC */	stb r0, 0x6ac(r30)
lbl_80795FB4:
/* 80795FB4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80795FB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80795FBC  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80795FC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80795FC4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80795FC8  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80795FCC  28 1E 00 00 */	cmplwi r30, 0
/* 80795FD0  41 82 00 0C */	beq lbl_80795FDC
/* 80795FD4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80795FD8  48 00 00 08 */	b lbl_80795FE0
lbl_80795FDC:
/* 80795FDC  38 80 FF FF */	li r4, -1
lbl_80795FE0:
/* 80795FE0  38 A1 00 08 */	addi r5, r1, 8
/* 80795FE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80795FE8  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80795FEC  7D 89 03 A6 */	mtctr r12
/* 80795FF0  4E 80 04 21 */	bctrl 
/* 80795FF4  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80795FF8  2C 00 00 10 */	cmpwi r0, 0x10
/* 80795FFC  40 82 00 4C */	bne lbl_80796048
/* 80796000  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80796004  38 80 00 01 */	li r4, 1
/* 80796008  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8079600C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80796010  40 82 00 18 */	bne lbl_80796028
/* 80796014  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80796018  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8079601C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80796020  41 82 00 08 */	beq lbl_80796028
/* 80796024  38 80 00 00 */	li r4, 0
lbl_80796028:
/* 80796028  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8079602C  41 82 00 1C */	beq lbl_80796048
/* 80796030  7F C3 F3 78 */	mr r3, r30
/* 80796034  38 80 00 0E */	li r4, 0xe
/* 80796038  38 A0 00 02 */	li r5, 2
/* 8079603C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80796040  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80796044  4B FF C2 1D */	bl SetAnm__8daE_SM_cFiiff
lbl_80796048:
/* 80796048  39 61 00 30 */	addi r11, r1, 0x30
/* 8079604C  4B BC C1 DD */	bl _restgpr_29
/* 80796050  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80796054  7C 08 03 A6 */	mtlr r0
/* 80796058  38 21 00 30 */	addi r1, r1, 0x30
/* 8079605C  4E 80 00 20 */	blr 
