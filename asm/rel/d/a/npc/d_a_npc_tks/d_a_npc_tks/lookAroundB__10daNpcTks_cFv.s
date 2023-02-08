lbl_80B17D44:
/* 80B17D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B17D48  7C 08 02 A6 */	mflr r0
/* 80B17D4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B17D50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B17D54  7C 7F 1B 78 */	mr r31, r3
/* 80B17D58  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B17D5C  2C 00 00 02 */	cmpwi r0, 2
/* 80B17D60  41 82 00 54 */	beq lbl_80B17DB4
/* 80B17D64  40 80 01 A0 */	bge lbl_80B17F04
/* 80B17D68  2C 00 00 00 */	cmpwi r0, 0
/* 80B17D6C  41 82 00 0C */	beq lbl_80B17D78
/* 80B17D70  48 00 01 94 */	b lbl_80B17F04
/* 80B17D74  48 00 01 90 */	b lbl_80B17F04
lbl_80B17D78:
/* 80B17D78  38 80 00 08 */	li r4, 8
/* 80B17D7C  3C A0 80 B2 */	lis r5, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B17D80  C0 25 DE 1C */	lfs f1, lit_5011@l(r5)  /* 0x80B1DE1C@l */
/* 80B17D84  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B17D88  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B17D8C  7D 89 03 A6 */	mtctr r12
/* 80B17D90  4E 80 04 21 */	bctrl 
/* 80B17D94  38 00 00 01 */	li r0, 1
/* 80B17D98  98 1F 13 8A */	stb r0, 0x138a(r31)
/* 80B17D9C  3C 60 80 B2 */	lis r3, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B17DA0  C0 03 DE 1C */	lfs f0, lit_5011@l(r3)  /* 0x80B1DE1C@l */
/* 80B17DA4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B17DA8  38 00 00 02 */	li r0, 2
/* 80B17DAC  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17DB0  48 00 01 54 */	b lbl_80B17F04
lbl_80B17DB4:
/* 80B17DB4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80B17DB8  38 A0 00 01 */	li r5, 1
/* 80B17DBC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B17DC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B17DC4  40 82 00 1C */	bne lbl_80B17DE0
/* 80B17DC8  3C 60 80 B2 */	lis r3, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B17DCC  C0 23 DE 1C */	lfs f1, lit_5011@l(r3)  /* 0x80B1DE1C@l */
/* 80B17DD0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80B17DD4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B17DD8  41 82 00 08 */	beq lbl_80B17DE0
/* 80B17DDC  38 A0 00 00 */	li r5, 0
lbl_80B17DE0:
/* 80B17DE0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80B17DE4  41 82 00 8C */	beq lbl_80B17E70
/* 80B17DE8  3C 60 80 B2 */	lis r3, lit_5665@ha /* 0x80B1E3B4@ha */
/* 80B17DEC  38 83 E3 B4 */	addi r4, r3, lit_5665@l /* 0x80B1E3B4@l */
/* 80B17DF0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B17DF4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B17DF8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B17DFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B17E00  80 04 00 08 */	lwz r0, 8(r4)
/* 80B17E04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B17E08  38 00 00 03 */	li r0, 3
/* 80B17E0C  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17E10  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17E14  4B 84 A2 05 */	bl __ptmf_test
/* 80B17E18  2C 03 00 00 */	cmpwi r3, 0
/* 80B17E1C  41 82 00 14 */	beq lbl_80B17E30
/* 80B17E20  7F E3 FB 78 */	mr r3, r31
/* 80B17E24  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17E28  4B 84 A2 5D */	bl __ptmf_scall
/* 80B17E2C  60 00 00 00 */	nop 
lbl_80B17E30:
/* 80B17E30  38 00 00 00 */	li r0, 0
/* 80B17E34  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17E38  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B17E3C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B17E40  90 7F 13 4C */	stw r3, 0x134c(r31)
/* 80B17E44  90 1F 13 50 */	stw r0, 0x1350(r31)
/* 80B17E48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B17E4C  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 80B17E50  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17E54  4B 84 A1 C5 */	bl __ptmf_test
/* 80B17E58  2C 03 00 00 */	cmpwi r3, 0
/* 80B17E5C  41 82 00 14 */	beq lbl_80B17E70
/* 80B17E60  7F E3 FB 78 */	mr r3, r31
/* 80B17E64  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17E68  4B 84 A2 1D */	bl __ptmf_scall
/* 80B17E6C  60 00 00 00 */	nop 
lbl_80B17E70:
/* 80B17E70  80 1F 13 78 */	lwz r0, 0x1378(r31)
/* 80B17E74  2C 00 00 01 */	cmpwi r0, 1
/* 80B17E78  40 82 00 8C */	bne lbl_80B17F04
/* 80B17E7C  3C 60 80 B2 */	lis r3, lit_5669@ha /* 0x80B1E3C0@ha */
/* 80B17E80  38 83 E3 C0 */	addi r4, r3, lit_5669@l /* 0x80B1E3C0@l */
/* 80B17E84  80 64 00 00 */	lwz r3, 0(r4)
/* 80B17E88  80 04 00 04 */	lwz r0, 4(r4)
/* 80B17E8C  90 61 00 08 */	stw r3, 8(r1)
/* 80B17E90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B17E94  80 04 00 08 */	lwz r0, 8(r4)
/* 80B17E98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B17E9C  38 00 00 03 */	li r0, 3
/* 80B17EA0  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17EA4  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17EA8  4B 84 A1 71 */	bl __ptmf_test
/* 80B17EAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B17EB0  41 82 00 14 */	beq lbl_80B17EC4
/* 80B17EB4  7F E3 FB 78 */	mr r3, r31
/* 80B17EB8  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17EBC  4B 84 A1 C9 */	bl __ptmf_scall
/* 80B17EC0  60 00 00 00 */	nop 
lbl_80B17EC4:
/* 80B17EC4  38 00 00 00 */	li r0, 0
/* 80B17EC8  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17ECC  80 61 00 08 */	lwz r3, 8(r1)
/* 80B17ED0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B17ED4  90 7F 13 4C */	stw r3, 0x134c(r31)
/* 80B17ED8  90 1F 13 50 */	stw r0, 0x1350(r31)
/* 80B17EDC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B17EE0  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 80B17EE4  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B17EE8  4B 84 A1 31 */	bl __ptmf_test
/* 80B17EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80B17EF0  41 82 00 14 */	beq lbl_80B17F04
/* 80B17EF4  7F E3 FB 78 */	mr r3, r31
/* 80B17EF8  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B17EFC  4B 84 A1 89 */	bl __ptmf_scall
/* 80B17F00  60 00 00 00 */	nop 
lbl_80B17F04:
/* 80B17F04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B17F08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B17F0C  7C 08 03 A6 */	mtlr r0
/* 80B17F10  38 21 00 30 */	addi r1, r1, 0x30
/* 80B17F14  4E 80 00 20 */	blr 
