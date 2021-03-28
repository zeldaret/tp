lbl_80357EA4:
/* 80357EA4  7C 08 02 A6 */	mflr r0
/* 80357EA8  90 01 00 04 */	stw r0, 4(r1)
/* 80357EAC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80357EB0  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80357EB4  7C 9B 23 78 */	mr r27, r4
/* 80357EB8  83 83 01 0C */	lwz r28, 0x10c(r3)
/* 80357EBC  4B FF FE 21 */	bl __CARDAccess
/* 80357EC0  3B A3 00 00 */	addi r29, r3, 0
/* 80357EC4  2C 1D FF F6 */	cmpwi r29, -10
/* 80357EC8  40 82 00 9C */	bne lbl_80357F64
/* 80357ECC  88 7B 00 34 */	lbz r3, 0x34(r27)
/* 80357ED0  88 0D 84 F2 */	lbz r0, struct_80450A70+0x2(r13)
/* 80357ED4  7C 60 00 38 */	and r0, r3, r0
/* 80357ED8  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80357EDC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80357EE0  41 82 00 44 */	beq lbl_80357F24
/* 80357EE4  3C 60 80 45 */	lis r3, __CARDDiskNone@ha
/* 80357EE8  3B E3 CD E0 */	addi r31, r3, __CARDDiskNone@l
/* 80357EEC  38 7B 00 00 */	addi r3, r27, 0
/* 80357EF0  38 9F 00 00 */	addi r4, r31, 0
/* 80357EF4  38 A0 00 04 */	li r5, 4
/* 80357EF8  48 00 E1 95 */	bl memcmp
/* 80357EFC  2C 03 00 00 */	cmpwi r3, 0
/* 80357F00  40 82 00 24 */	bne lbl_80357F24
/* 80357F04  38 7B 00 04 */	addi r3, r27, 4
/* 80357F08  38 9F 00 04 */	addi r4, r31, 4
/* 80357F0C  38 A0 00 02 */	li r5, 2
/* 80357F10  48 00 E1 7D */	bl memcmp
/* 80357F14  2C 03 00 00 */	cmpwi r3, 0
/* 80357F18  40 82 00 0C */	bne lbl_80357F24
/* 80357F1C  3B A0 00 00 */	li r29, 0
/* 80357F20  48 00 00 44 */	b lbl_80357F64
lbl_80357F24:
/* 80357F24  57 C0 06 73 */	rlwinm. r0, r30, 0, 0x19, 0x19
/* 80357F28  41 82 00 3C */	beq lbl_80357F64
/* 80357F2C  3C 60 80 45 */	lis r3, __CARDDiskNone@ha
/* 80357F30  38 83 CD E0 */	addi r4, r3, __CARDDiskNone@l
/* 80357F34  38 7B 00 00 */	addi r3, r27, 0
/* 80357F38  38 A0 00 04 */	li r5, 4
/* 80357F3C  48 00 E1 51 */	bl memcmp
/* 80357F40  2C 03 00 00 */	cmpwi r3, 0
/* 80357F44  40 82 00 20 */	bne lbl_80357F64
/* 80357F48  38 7B 00 04 */	addi r3, r27, 4
/* 80357F4C  38 9C 00 04 */	addi r4, r28, 4
/* 80357F50  38 A0 00 02 */	li r5, 2
/* 80357F54  48 00 E1 39 */	bl memcmp
/* 80357F58  2C 03 00 00 */	cmpwi r3, 0
/* 80357F5C  40 82 00 08 */	bne lbl_80357F64
/* 80357F60  3B A0 00 00 */	li r29, 0
lbl_80357F64:
/* 80357F64  2C 1D FF F6 */	cmpwi r29, -10
/* 80357F68  40 82 00 18 */	bne lbl_80357F80
/* 80357F6C  88 1B 00 34 */	lbz r0, 0x34(r27)
/* 80357F70  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80357F74  41 82 00 0C */	beq lbl_80357F80
/* 80357F78  38 60 00 00 */	li r3, 0
/* 80357F7C  48 00 00 08 */	b lbl_80357F84
lbl_80357F80:
/* 80357F80  7F A3 EB 78 */	mr r3, r29
lbl_80357F84:
/* 80357F84  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80357F88  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80357F8C  38 21 00 28 */	addi r1, r1, 0x28
/* 80357F90  7C 08 03 A6 */	mtlr r0
/* 80357F94  4E 80 00 20 */	blr 
