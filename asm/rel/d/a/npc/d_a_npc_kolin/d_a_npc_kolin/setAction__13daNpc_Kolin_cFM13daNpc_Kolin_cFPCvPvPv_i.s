lbl_80555F54:
/* 80555F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555F58  7C 08 02 A6 */	mflr r0
/* 80555F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555F64  93 C1 00 08 */	stw r30, 8(r1)
/* 80555F68  7C 7E 1B 78 */	mr r30, r3
/* 80555F6C  7C 9F 23 78 */	mr r31, r4
/* 80555F70  38 00 00 03 */	li r0, 3
/* 80555F74  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80555F78  38 7E 0F E4 */	addi r3, r30, 0xfe4
/* 80555F7C  4B E0 C0 9C */	b __ptmf_test
/* 80555F80  2C 03 00 00 */	cmpwi r3, 0
/* 80555F84  41 82 00 18 */	beq lbl_80555F9C
/* 80555F88  7F C3 F3 78 */	mr r3, r30
/* 80555F8C  38 80 00 00 */	li r4, 0
/* 80555F90  39 9E 0F E4 */	addi r12, r30, 0xfe4
/* 80555F94  4B E0 C0 F0 */	b __ptmf_scall
/* 80555F98  60 00 00 00 */	nop 
lbl_80555F9C:
/* 80555F9C  38 00 00 00 */	li r0, 0
/* 80555FA0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80555FA4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80555FA8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80555FAC  90 7E 0F E4 */	stw r3, 0xfe4(r30)
/* 80555FB0  90 1E 0F E8 */	stw r0, 0xfe8(r30)
/* 80555FB4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80555FB8  90 1E 0F EC */	stw r0, 0xfec(r30)
/* 80555FBC  38 7E 0F E4 */	addi r3, r30, 0xfe4
/* 80555FC0  4B E0 C0 58 */	b __ptmf_test
/* 80555FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80555FC8  41 82 00 18 */	beq lbl_80555FE0
/* 80555FCC  7F C3 F3 78 */	mr r3, r30
/* 80555FD0  38 80 00 00 */	li r4, 0
/* 80555FD4  39 9E 0F E4 */	addi r12, r30, 0xfe4
/* 80555FD8  4B E0 C0 AC */	b __ptmf_scall
/* 80555FDC  60 00 00 00 */	nop 
lbl_80555FE0:
/* 80555FE0  38 60 00 01 */	li r3, 1
/* 80555FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555FF0  7C 08 03 A6 */	mtlr r0
/* 80555FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80555FF8  4E 80 00 20 */	blr 
