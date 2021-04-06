lbl_80050E7C:
/* 80050E7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80050E80  7C 08 02 A6 */	mflr r0
/* 80050E84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80050E88  39 61 00 40 */	addi r11, r1, 0x40
/* 80050E8C  48 31 13 51 */	bl _savegpr_29
/* 80050E90  7C CC 33 78 */	mr r12, r6
/* 80050E94  7D 1E 43 78 */	mr r30, r8
/* 80050E98  7D 2B 4B 78 */	mr r11, r9
/* 80050E9C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80050EA0  88 C1 00 4F */	lbz r6, 0x4f(r1)
/* 80050EA4  83 A1 00 50 */	lwz r29, 0x50(r1)
/* 80050EA8  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 80050EAC  28 0A 00 00 */	cmplwi r10, 0
/* 80050EB0  41 82 00 F4 */	beq lbl_80050FA4
/* 80050EB4  C0 0A 00 00 */	lfs f0, 0(r10)
/* 80050EB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80050EBC  C0 0A 00 04 */	lfs f0, 4(r10)
/* 80050EC0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80050EC4  C0 0A 00 08 */	lfs f0, 8(r10)
/* 80050EC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80050ECC  2C 05 00 01 */	cmpwi r5, 1
/* 80050ED0  40 82 00 18 */	bne lbl_80050EE8
/* 80050ED4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80050ED8  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 80050EDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80050EE0  38 A3 01 80 */	addi r5, r3, 0x180
/* 80050EE4  48 00 00 18 */	b lbl_80050EFC
lbl_80050EE8:
/* 80050EE8  2C 05 00 02 */	cmpwi r5, 2
/* 80050EEC  40 82 00 08 */	bne lbl_80050EF4
/* 80050EF0  65 6B 80 00 */	oris r11, r11, 0x8000
lbl_80050EF4:
/* 80050EF4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80050EF8  38 A3 00 F0 */	addi r5, r3, 0xf0
lbl_80050EFC:
/* 80050EFC  90 01 00 08 */	stw r0, 8(r1)
/* 80050F00  38 00 00 00 */	li r0, 0
/* 80050F04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80050F08  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80050F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80050F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80050F14  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80050F18  7C E6 3B 78 */	mr r6, r7
/* 80050F1C  38 E1 00 18 */	addi r7, r1, 0x18
/* 80050F20  7D 88 63 78 */	mr r8, r12
/* 80050F24  7F C9 F3 78 */	mr r9, r30
/* 80050F28  7D 6A 5B 78 */	mr r10, r11
/* 80050F2C  4B FF CA 5D */	bl setCommonPoly__13dPa_control_cFPUlP13cBgS_PolyInfoPC4cXyzPC4cXyzPC12dKy_tevstr_cUlUlPC5csXyzPC4cXyzSc
/* 80050F30  98 7D 00 00 */	stb r3, 0(r29)
/* 80050F34  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80050F38  98 1D 00 01 */	stb r0, 1(r29)
/* 80050F3C  88 7D 00 00 */	lbz r3, 0(r29)
/* 80050F40  28 03 00 FF */	cmplwi r3, 0xff
/* 80050F44  41 82 00 2C */	beq lbl_80050F70
/* 80050F48  38 00 00 01 */	li r0, 1
/* 80050F4C  7C 00 18 30 */	slw r0, r0, r3
/* 80050F50  7F C0 00 39 */	and. r0, r30, r0
/* 80050F54  41 82 00 10 */	beq lbl_80050F64
/* 80050F58  38 00 00 00 */	li r0, 0
/* 80050F5C  98 1F 00 00 */	stb r0, 0(r31)
/* 80050F60  48 00 00 90 */	b lbl_80050FF0
lbl_80050F64:
/* 80050F64  38 00 00 14 */	li r0, 0x14
/* 80050F68  98 1F 00 00 */	stb r0, 0(r31)
/* 80050F6C  48 00 00 84 */	b lbl_80050FF0
lbl_80050F70:
/* 80050F70  88 7D 00 01 */	lbz r3, 1(r29)
/* 80050F74  28 03 00 FF */	cmplwi r3, 0xff
/* 80050F78  41 82 00 78 */	beq lbl_80050FF0
/* 80050F7C  38 00 00 01 */	li r0, 1
/* 80050F80  7C 00 18 30 */	slw r0, r0, r3
/* 80050F84  7F C0 00 39 */	and. r0, r30, r0
/* 80050F88  41 82 00 10 */	beq lbl_80050F98
/* 80050F8C  38 00 00 00 */	li r0, 0
/* 80050F90  98 1F 00 00 */	stb r0, 0(r31)
/* 80050F94  48 00 00 5C */	b lbl_80050FF0
lbl_80050F98:
/* 80050F98  38 00 00 14 */	li r0, 0x14
/* 80050F9C  98 1F 00 00 */	stb r0, 0(r31)
/* 80050FA0  48 00 00 50 */	b lbl_80050FF0
lbl_80050FA4:
/* 80050FA4  88 7F 00 00 */	lbz r3, 0(r31)
/* 80050FA8  28 03 00 00 */	cmplwi r3, 0
/* 80050FAC  41 82 00 44 */	beq lbl_80050FF0
/* 80050FB0  38 03 FF FF */	addi r0, r3, -1
/* 80050FB4  98 1F 00 00 */	stb r0, 0(r31)
/* 80050FB8  7C 9F 23 78 */	mr r31, r4
/* 80050FBC  3B A0 00 00 */	li r29, 0
/* 80050FC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80050FC4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80050FC8:
/* 80050FC8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80050FCC  28 04 00 00 */	cmplwi r4, 0
/* 80050FD0  41 82 00 10 */	beq lbl_80050FE0
/* 80050FD4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80050FD8  4B FF C7 99 */	bl setStopContinue__13dPa_control_cFUl
/* 80050FDC  90 7F 00 00 */	stw r3, 0(r31)
lbl_80050FE0:
/* 80050FE0  3B BD 00 01 */	addi r29, r29, 1
/* 80050FE4  2C 1D 00 08 */	cmpwi r29, 8
/* 80050FE8  3B FF 00 04 */	addi r31, r31, 4
/* 80050FEC  41 80 FF DC */	blt lbl_80050FC8
lbl_80050FF0:
/* 80050FF0  39 61 00 40 */	addi r11, r1, 0x40
/* 80050FF4  48 31 12 35 */	bl _restgpr_29
/* 80050FF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80050FFC  7C 08 03 A6 */	mtlr r0
/* 80051000  38 21 00 40 */	addi r1, r1, 0x40
/* 80051004  4E 80 00 20 */	blr 
