lbl_80550D70:
/* 80550D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80550D74  7C 08 02 A6 */	mflr r0
/* 80550D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80550D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80550D80  93 C1 00 08 */	stw r30, 8(r1)
/* 80550D84  7C 7E 1B 78 */	mr r30, r3
/* 80550D88  7C 9F 23 78 */	mr r31, r4
/* 80550D8C  38 00 00 03 */	li r0, 3
/* 80550D90  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80550D94  38 7E 0F 98 */	addi r3, r30, 0xf98
/* 80550D98  4B E1 12 81 */	bl __ptmf_test
/* 80550D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80550DA0  41 82 00 18 */	beq lbl_80550DB8
/* 80550DA4  7F C3 F3 78 */	mr r3, r30
/* 80550DA8  38 80 00 00 */	li r4, 0
/* 80550DAC  39 9E 0F 98 */	addi r12, r30, 0xf98
/* 80550DB0  4B E1 12 D5 */	bl __ptmf_scall
/* 80550DB4  60 00 00 00 */	nop 
lbl_80550DB8:
/* 80550DB8  38 00 00 00 */	li r0, 0
/* 80550DBC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80550DC0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80550DC4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80550DC8  90 7E 0F 98 */	stw r3, 0xf98(r30)
/* 80550DCC  90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 80550DD0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80550DD4  90 1E 0F A0 */	stw r0, 0xfa0(r30)
/* 80550DD8  38 7E 0F 98 */	addi r3, r30, 0xf98
/* 80550DDC  4B E1 12 3D */	bl __ptmf_test
/* 80550DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80550DE4  41 82 00 18 */	beq lbl_80550DFC
/* 80550DE8  7F C3 F3 78 */	mr r3, r30
/* 80550DEC  38 80 00 00 */	li r4, 0
/* 80550DF0  39 9E 0F 98 */	addi r12, r30, 0xf98
/* 80550DF4  4B E1 12 91 */	bl __ptmf_scall
/* 80550DF8  60 00 00 00 */	nop 
lbl_80550DFC:
/* 80550DFC  38 60 00 01 */	li r3, 1
/* 80550E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80550E04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80550E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80550E0C  7C 08 03 A6 */	mtlr r0
/* 80550E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80550E14  4E 80 00 20 */	blr 
