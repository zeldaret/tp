lbl_80352E44:
/* 80352E44  7C 08 02 A6 */	mflr r0
/* 80352E48  38 A0 00 04 */	li r5, 4
/* 80352E4C  90 01 00 04 */	stw r0, 4(r1)
/* 80352E50  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80352E54  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80352E58  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80352E5C  3B C4 00 00 */	addi r30, r4, 0
/* 80352E60  38 80 00 00 */	li r4, 0
/* 80352E64  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80352E68  3B A3 00 00 */	addi r29, r3, 0
/* 80352E6C  4B FF 09 FD */	bl EXISelect
/* 80352E70  2C 03 00 00 */	cmpwi r3, 0
/* 80352E74  40 82 00 0C */	bne lbl_80352E80
/* 80352E78  38 60 FF FD */	li r3, -3
/* 80352E7C  48 00 00 9C */	b lbl_80352F18
lbl_80352E80:
/* 80352E80  3C 00 83 00 */	lis r0, 0x8300
/* 80352E84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80352E88  38 7D 00 00 */	addi r3, r29, 0
/* 80352E8C  38 81 00 10 */	addi r4, r1, 0x10
/* 80352E90  38 A0 00 02 */	li r5, 2
/* 80352E94  38 C0 00 01 */	li r6, 1
/* 80352E98  38 E0 00 00 */	li r7, 0
/* 80352E9C  4B FE FE 65 */	bl EXIImm
/* 80352EA0  7C 60 00 34 */	cntlzw r0, r3
/* 80352EA4  38 7D 00 00 */	addi r3, r29, 0
/* 80352EA8  54 1F D9 7E */	srwi r31, r0, 5
/* 80352EAC  4B FF 02 3D */	bl EXISync
/* 80352EB0  7C 60 00 34 */	cntlzw r0, r3
/* 80352EB4  54 00 D9 7E */	srwi r0, r0, 5
/* 80352EB8  38 7D 00 00 */	addi r3, r29, 0
/* 80352EBC  38 9E 00 00 */	addi r4, r30, 0
/* 80352EC0  7F FF 03 78 */	or r31, r31, r0
/* 80352EC4  38 A0 00 01 */	li r5, 1
/* 80352EC8  38 C0 00 00 */	li r6, 0
/* 80352ECC  38 E0 00 00 */	li r7, 0
/* 80352ED0  4B FE FE 31 */	bl EXIImm
/* 80352ED4  7C 60 00 34 */	cntlzw r0, r3
/* 80352ED8  54 00 D9 7E */	srwi r0, r0, 5
/* 80352EDC  38 7D 00 00 */	addi r3, r29, 0
/* 80352EE0  7F FF 03 78 */	or r31, r31, r0
/* 80352EE4  4B FF 02 05 */	bl EXISync
/* 80352EE8  7C 60 00 34 */	cntlzw r0, r3
/* 80352EEC  54 00 D9 7E */	srwi r0, r0, 5
/* 80352EF0  38 7D 00 00 */	addi r3, r29, 0
/* 80352EF4  7F FF 03 78 */	or r31, r31, r0
/* 80352EF8  4B FF 0A 9D */	bl EXIDeselect
/* 80352EFC  7C 60 00 34 */	cntlzw r0, r3
/* 80352F00  54 00 D9 7E */	srwi r0, r0, 5
/* 80352F04  7F FF 03 79 */	or. r31, r31, r0
/* 80352F08  41 82 00 0C */	beq lbl_80352F14
/* 80352F0C  38 60 FF FD */	li r3, -3
/* 80352F10  48 00 00 08 */	b lbl_80352F18
lbl_80352F14:
/* 80352F14  38 60 00 00 */	li r3, 0
lbl_80352F18:
/* 80352F18  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80352F1C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80352F20  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80352F24  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80352F28  38 21 00 28 */	addi r1, r1, 0x28
/* 80352F2C  7C 08 03 A6 */	mtlr r0
/* 80352F30  4E 80 00 20 */	blr 
