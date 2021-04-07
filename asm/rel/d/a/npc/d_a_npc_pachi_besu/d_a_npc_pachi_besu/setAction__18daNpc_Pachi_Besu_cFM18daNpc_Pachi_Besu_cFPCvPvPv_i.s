lbl_80A946D0:
/* 80A946D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A946D4  7C 08 02 A6 */	mflr r0
/* 80A946D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A946DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A946E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A946E4  7C 7E 1B 78 */	mr r30, r3
/* 80A946E8  7C 9F 23 78 */	mr r31, r4
/* 80A946EC  38 00 00 03 */	li r0, 3
/* 80A946F0  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A946F4  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80A946F8  4B 8C D9 21 */	bl __ptmf_test
/* 80A946FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A94700  41 82 00 18 */	beq lbl_80A94718
/* 80A94704  7F C3 F3 78 */	mr r3, r30
/* 80A94708  38 80 00 00 */	li r4, 0
/* 80A9470C  39 9E 0F BC */	addi r12, r30, 0xfbc
/* 80A94710  4B 8C D9 75 */	bl __ptmf_scall
/* 80A94714  60 00 00 00 */	nop 
lbl_80A94718:
/* 80A94718  38 00 00 00 */	li r0, 0
/* 80A9471C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A94720  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A94724  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A94728  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 80A9472C  90 1E 0F C0 */	stw r0, 0xfc0(r30)
/* 80A94730  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A94734  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80A94738  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80A9473C  4B 8C D8 DD */	bl __ptmf_test
/* 80A94740  2C 03 00 00 */	cmpwi r3, 0
/* 80A94744  41 82 00 18 */	beq lbl_80A9475C
/* 80A94748  7F C3 F3 78 */	mr r3, r30
/* 80A9474C  38 80 00 00 */	li r4, 0
/* 80A94750  39 9E 0F BC */	addi r12, r30, 0xfbc
/* 80A94754  4B 8C D9 31 */	bl __ptmf_scall
/* 80A94758  60 00 00 00 */	nop 
lbl_80A9475C:
/* 80A9475C  38 60 00 01 */	li r3, 1
/* 80A94760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A94764  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A94768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9476C  7C 08 03 A6 */	mtlr r0
/* 80A94770  38 21 00 10 */	addi r1, r1, 0x10
/* 80A94774  4E 80 00 20 */	blr 
