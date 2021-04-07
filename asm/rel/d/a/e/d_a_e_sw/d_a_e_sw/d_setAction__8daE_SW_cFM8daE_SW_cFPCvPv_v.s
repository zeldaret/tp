lbl_807ACA40:
/* 807ACA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807ACA44  7C 08 02 A6 */	mflr r0
/* 807ACA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 807ACA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807ACA50  93 C1 00 08 */	stw r30, 8(r1)
/* 807ACA54  7C 7E 1B 78 */	mr r30, r3
/* 807ACA58  7C 9F 23 78 */	mr r31, r4
/* 807ACA5C  38 7E 0A FC */	addi r3, r30, 0xafc
/* 807ACA60  4B BB 55 B9 */	bl __ptmf_test
/* 807ACA64  2C 03 00 00 */	cmpwi r3, 0
/* 807ACA68  41 82 00 1C */	beq lbl_807ACA84
/* 807ACA6C  38 00 FF FF */	li r0, -1
/* 807ACA70  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807ACA74  7F C3 F3 78 */	mr r3, r30
/* 807ACA78  39 9E 0A FC */	addi r12, r30, 0xafc
/* 807ACA7C  4B BB 56 09 */	bl __ptmf_scall
/* 807ACA80  60 00 00 00 */	nop 
lbl_807ACA84:
/* 807ACA84  80 7E 0A FC */	lwz r3, 0xafc(r30)
/* 807ACA88  80 1E 0B 00 */	lwz r0, 0xb00(r30)
/* 807ACA8C  90 7E 0B 08 */	stw r3, 0xb08(r30)
/* 807ACA90  90 1E 0B 0C */	stw r0, 0xb0c(r30)
/* 807ACA94  80 1E 0B 04 */	lwz r0, 0xb04(r30)
/* 807ACA98  90 1E 0B 10 */	stw r0, 0xb10(r30)
/* 807ACA9C  80 7F 00 00 */	lwz r3, 0(r31)
/* 807ACAA0  80 1F 00 04 */	lwz r0, 4(r31)
/* 807ACAA4  90 7E 0A FC */	stw r3, 0xafc(r30)
/* 807ACAA8  90 1E 0B 00 */	stw r0, 0xb00(r30)
/* 807ACAAC  80 1F 00 08 */	lwz r0, 8(r31)
/* 807ACAB0  90 1E 0B 04 */	stw r0, 0xb04(r30)
/* 807ACAB4  38 00 00 00 */	li r0, 0
/* 807ACAB8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807ACABC  7F C3 F3 78 */	mr r3, r30
/* 807ACAC0  39 9E 0A FC */	addi r12, r30, 0xafc
/* 807ACAC4  4B BB 55 C1 */	bl __ptmf_scall
/* 807ACAC8  60 00 00 00 */	nop 
/* 807ACACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807ACAD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807ACAD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807ACAD8  7C 08 03 A6 */	mtlr r0
/* 807ACADC  38 21 00 10 */	addi r1, r1, 0x10
/* 807ACAE0  4E 80 00 20 */	blr 
