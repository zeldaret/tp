lbl_80B7045C:
/* 80B7045C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70460  7C 08 02 A6 */	mflr r0
/* 80B70464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7046C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B70470  7C 7E 1B 78 */	mr r30, r3
/* 80B70474  7C 9F 23 78 */	mr r31, r4
/* 80B70478  38 00 00 03 */	li r0, 3
/* 80B7047C  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B70480  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B70484  4B 7F 1B 95 */	bl __ptmf_test
/* 80B70488  2C 03 00 00 */	cmpwi r3, 0
/* 80B7048C  41 82 00 18 */	beq lbl_80B704A4
/* 80B70490  7F C3 F3 78 */	mr r3, r30
/* 80B70494  38 80 00 00 */	li r4, 0
/* 80B70498  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B7049C  4B 7F 1B E9 */	bl __ptmf_scall
/* 80B704A0  60 00 00 00 */	nop 
lbl_80B704A4:
/* 80B704A4  38 00 00 00 */	li r0, 0
/* 80B704A8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B704AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B704B0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B704B4  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 80B704B8  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80B704BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B704C0  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80B704C4  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B704C8  4B 7F 1B 51 */	bl __ptmf_test
/* 80B704CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B704D0  41 82 00 18 */	beq lbl_80B704E8
/* 80B704D4  7F C3 F3 78 */	mr r3, r30
/* 80B704D8  38 80 00 00 */	li r4, 0
/* 80B704DC  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B704E0  4B 7F 1B A5 */	bl __ptmf_scall
/* 80B704E4  60 00 00 00 */	nop 
lbl_80B704E8:
/* 80B704E8  38 60 00 01 */	li r3, 1
/* 80B704EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B704F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B704F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B704F8  7C 08 03 A6 */	mtlr r0
/* 80B704FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70500  4E 80 00 20 */	blr 
