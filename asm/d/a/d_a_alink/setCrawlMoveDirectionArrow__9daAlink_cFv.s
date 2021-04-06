lbl_800F7CE8:
/* 800F7CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7CEC  7C 08 02 A6 */	mflr r0
/* 800F7CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7CF8  93 C1 00 08 */	stw r30, 8(r1)
/* 800F7CFC  7C 7E 1B 78 */	mr r30, r3
/* 800F7D00  3B E0 00 00 */	li r31, 0
/* 800F7D04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7D08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7D0C  80 1E 31 7C */	lwz r0, 0x317c(r30)
/* 800F7D10  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800F7D14  7C 63 02 14 */	add r3, r3, r0
/* 800F7D18  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 800F7D1C  A8 63 02 32 */	lha r3, 0x232(r3)
/* 800F7D20  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800F7D24  48 17 91 01 */	bl cLib_distanceAngleS__Fss
/* 800F7D28  38 00 40 00 */	li r0, 0x4000
/* 800F7D2C  7C 60 02 78 */	xor r0, r3, r0
/* 800F7D30  7C 04 0E 70 */	srawi r4, r0, 1
/* 800F7D34  7C 00 18 38 */	and r0, r0, r3
/* 800F7D38  7C 00 20 50 */	subf r0, r0, r4
/* 800F7D3C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 800F7D40  80 7E 31 98 */	lwz r3, 0x3198(r30)
/* 800F7D44  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800F7D48  41 82 00 18 */	beq lbl_800F7D60
/* 800F7D4C  2C 04 00 00 */	cmpwi r4, 0
/* 800F7D50  40 82 00 0C */	bne lbl_800F7D5C
/* 800F7D54  8B E2 95 38 */	lbz r31, struct_80452F38+0x0(r2)
/* 800F7D58  48 00 00 08 */	b lbl_800F7D60
lbl_800F7D5C:
/* 800F7D5C  8B E2 95 39 */	lbz r31, struct_80452F38+0x1(r2)
lbl_800F7D60:
/* 800F7D60  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 800F7D64  41 82 00 20 */	beq lbl_800F7D84
/* 800F7D68  2C 04 00 00 */	cmpwi r4, 0
/* 800F7D6C  40 82 00 10 */	bne lbl_800F7D7C
/* 800F7D70  88 02 95 39 */	lbz r0, struct_80452F38+0x1(r2)
/* 800F7D74  7F FF 03 78 */	or r31, r31, r0
/* 800F7D78  48 00 00 0C */	b lbl_800F7D84
lbl_800F7D7C:
/* 800F7D7C  88 02 95 38 */	lbz r0, struct_80452F38+0x0(r2)
/* 800F7D80  7F FF 03 78 */	or r31, r31, r0
lbl_800F7D84:
/* 800F7D84  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800F7D88  41 82 00 50 */	beq lbl_800F7DD8
/* 800F7D8C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800F7D90  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800F7D94  7C 03 00 00 */	cmpw r3, r0
/* 800F7D98  40 82 00 24 */	bne lbl_800F7DBC
/* 800F7D9C  2C 04 00 00 */	cmpwi r4, 0
/* 800F7DA0  40 82 00 10 */	bne lbl_800F7DB0
/* 800F7DA4  63 E0 00 08 */	ori r0, r31, 8
/* 800F7DA8  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800F7DAC  48 00 00 2C */	b lbl_800F7DD8
lbl_800F7DB0:
/* 800F7DB0  63 E0 00 02 */	ori r0, r31, 2
/* 800F7DB4  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800F7DB8  48 00 00 20 */	b lbl_800F7DD8
lbl_800F7DBC:
/* 800F7DBC  2C 04 00 00 */	cmpwi r4, 0
/* 800F7DC0  40 82 00 10 */	bne lbl_800F7DD0
/* 800F7DC4  63 E0 00 02 */	ori r0, r31, 2
/* 800F7DC8  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800F7DCC  48 00 00 0C */	b lbl_800F7DD8
lbl_800F7DD0:
/* 800F7DD0  63 E0 00 08 */	ori r0, r31, 8
/* 800F7DD4  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_800F7DD8:
/* 800F7DD8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800F7DDC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800F7DE0  7C 03 00 00 */	cmpw r3, r0
/* 800F7DE4  40 82 00 24 */	bne lbl_800F7E08
/* 800F7DE8  2C 04 00 00 */	cmpwi r4, 0
/* 800F7DEC  40 82 00 10 */	bne lbl_800F7DFC
/* 800F7DF0  63 E0 00 02 */	ori r0, r31, 2
/* 800F7DF4  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800F7DF8  48 00 00 2C */	b lbl_800F7E24
lbl_800F7DFC:
/* 800F7DFC  63 E0 00 08 */	ori r0, r31, 8
/* 800F7E00  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800F7E04  48 00 00 20 */	b lbl_800F7E24
lbl_800F7E08:
/* 800F7E08  2C 04 00 00 */	cmpwi r4, 0
/* 800F7E0C  40 82 00 10 */	bne lbl_800F7E1C
/* 800F7E10  63 E0 00 08 */	ori r0, r31, 8
/* 800F7E14  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800F7E18  48 00 00 0C */	b lbl_800F7E24
lbl_800F7E1C:
/* 800F7E1C  63 E0 00 02 */	ori r0, r31, 2
/* 800F7E20  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_800F7E24:
/* 800F7E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7E28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7E2C  9B E3 5E 81 */	stb r31, 0x5e81(r3)
/* 800F7E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7E34  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F7E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7E3C  7C 08 03 A6 */	mtlr r0
/* 800F7E40  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7E44  4E 80 00 20 */	blr 
