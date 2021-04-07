lbl_80AC828C:
/* 80AC828C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8290  7C 08 02 A6 */	mflr r0
/* 80AC8294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC829C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC82A0  7C 7E 1B 78 */	mr r30, r3
/* 80AC82A4  7C 9F 23 78 */	mr r31, r4
/* 80AC82A8  38 00 00 03 */	li r0, 3
/* 80AC82AC  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AC82B0  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80AC82B4  4B 89 9D 65 */	bl __ptmf_test
/* 80AC82B8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC82BC  41 82 00 18 */	beq lbl_80AC82D4
/* 80AC82C0  7F C3 F3 78 */	mr r3, r30
/* 80AC82C4  38 80 00 00 */	li r4, 0
/* 80AC82C8  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80AC82CC  4B 89 9D B9 */	bl __ptmf_scall
/* 80AC82D0  60 00 00 00 */	nop 
lbl_80AC82D4:
/* 80AC82D4  38 00 00 00 */	li r0, 0
/* 80AC82D8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AC82DC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AC82E0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AC82E4  90 7E 0E 54 */	stw r3, 0xe54(r30)
/* 80AC82E8  90 1E 0E 58 */	stw r0, 0xe58(r30)
/* 80AC82EC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AC82F0  90 1E 0E 5C */	stw r0, 0xe5c(r30)
/* 80AC82F4  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80AC82F8  4B 89 9D 21 */	bl __ptmf_test
/* 80AC82FC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC8300  41 82 00 18 */	beq lbl_80AC8318
/* 80AC8304  7F C3 F3 78 */	mr r3, r30
/* 80AC8308  38 80 00 00 */	li r4, 0
/* 80AC830C  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80AC8310  4B 89 9D 75 */	bl __ptmf_scall
/* 80AC8314  60 00 00 00 */	nop 
lbl_80AC8318:
/* 80AC8318  38 60 00 01 */	li r3, 1
/* 80AC831C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8320  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC8324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8328  7C 08 03 A6 */	mtlr r0
/* 80AC832C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8330  4E 80 00 20 */	blr 
