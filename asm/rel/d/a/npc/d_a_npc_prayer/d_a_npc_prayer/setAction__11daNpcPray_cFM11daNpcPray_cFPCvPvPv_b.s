lbl_80AB3F54:
/* 80AB3F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB3F58  7C 08 02 A6 */	mflr r0
/* 80AB3F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB3F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB3F64  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB3F68  7C 7E 1B 78 */	mr r30, r3
/* 80AB3F6C  7C 9F 23 78 */	mr r31, r4
/* 80AB3F70  38 00 00 03 */	li r0, 3
/* 80AB3F74  B0 03 0E 0C */	sth r0, 0xe0c(r3)
/* 80AB3F78  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AB3F7C  4B 8A E0 9C */	b __ptmf_test
/* 80AB3F80  2C 03 00 00 */	cmpwi r3, 0
/* 80AB3F84  41 82 00 18 */	beq lbl_80AB3F9C
/* 80AB3F88  7F C3 F3 78 */	mr r3, r30
/* 80AB3F8C  38 80 00 00 */	li r4, 0
/* 80AB3F90  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AB3F94  4B 8A E0 F0 */	b __ptmf_scall
/* 80AB3F98  60 00 00 00 */	nop 
lbl_80AB3F9C:
/* 80AB3F9C  38 00 00 00 */	li r0, 0
/* 80AB3FA0  B0 1E 0E 0C */	sth r0, 0xe0c(r30)
/* 80AB3FA4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AB3FA8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AB3FAC  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 80AB3FB0  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80AB3FB4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AB3FB8  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80AB3FBC  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AB3FC0  4B 8A E0 58 */	b __ptmf_test
/* 80AB3FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80AB3FC8  41 82 00 18 */	beq lbl_80AB3FE0
/* 80AB3FCC  7F C3 F3 78 */	mr r3, r30
/* 80AB3FD0  38 80 00 00 */	li r4, 0
/* 80AB3FD4  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AB3FD8  4B 8A E0 AC */	b __ptmf_scall
/* 80AB3FDC  60 00 00 00 */	nop 
lbl_80AB3FE0:
/* 80AB3FE0  38 60 00 01 */	li r3, 1
/* 80AB3FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB3FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB3FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB3FF0  7C 08 03 A6 */	mtlr r0
/* 80AB3FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB3FF8  4E 80 00 20 */	blr 
