lbl_80B6D290:
/* 80B6D290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D294  7C 08 02 A6 */	mflr r0
/* 80B6D298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D29C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6D2A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6D2A4  7C 7E 1B 78 */	mr r30, r3
/* 80B6D2A8  7C 9F 23 78 */	mr r31, r4
/* 80B6D2AC  38 00 00 03 */	li r0, 3
/* 80B6D2B0  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B6D2B4  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B6D2B8  4B 7F 4D 61 */	bl __ptmf_test
/* 80B6D2BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B6D2C0  41 82 00 18 */	beq lbl_80B6D2D8
/* 80B6D2C4  7F C3 F3 78 */	mr r3, r30
/* 80B6D2C8  38 80 00 00 */	li r4, 0
/* 80B6D2CC  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B6D2D0  4B 7F 4D B5 */	bl __ptmf_scall
/* 80B6D2D4  60 00 00 00 */	nop 
lbl_80B6D2D8:
/* 80B6D2D8  38 00 00 00 */	li r0, 0
/* 80B6D2DC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B6D2E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B6D2E4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B6D2E8  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 80B6D2EC  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80B6D2F0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B6D2F4  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80B6D2F8  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B6D2FC  4B 7F 4D 1D */	bl __ptmf_test
/* 80B6D300  2C 03 00 00 */	cmpwi r3, 0
/* 80B6D304  41 82 00 18 */	beq lbl_80B6D31C
/* 80B6D308  7F C3 F3 78 */	mr r3, r30
/* 80B6D30C  38 80 00 00 */	li r4, 0
/* 80B6D310  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B6D314  4B 7F 4D 71 */	bl __ptmf_scall
/* 80B6D318  60 00 00 00 */	nop 
lbl_80B6D31C:
/* 80B6D31C  38 60 00 01 */	li r3, 1
/* 80B6D320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6D324  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6D328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6D32C  7C 08 03 A6 */	mtlr r0
/* 80B6D330  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6D334  4E 80 00 20 */	blr 
