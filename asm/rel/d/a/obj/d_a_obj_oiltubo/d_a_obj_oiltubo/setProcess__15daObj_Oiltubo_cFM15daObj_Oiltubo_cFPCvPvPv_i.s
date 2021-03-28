lbl_80CA720C:
/* 80CA720C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7210  7C 08 02 A6 */	mflr r0
/* 80CA7214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA721C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA7220  7C 7E 1B 78 */	mr r30, r3
/* 80CA7224  7C 9F 23 78 */	mr r31, r4
/* 80CA7228  38 00 00 02 */	li r0, 2
/* 80CA722C  B0 03 0A CC */	sth r0, 0xacc(r3)
/* 80CA7230  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 80CA7234  4B 6B AD E4 */	b __ptmf_test
/* 80CA7238  2C 03 00 00 */	cmpwi r3, 0
/* 80CA723C  41 82 00 18 */	beq lbl_80CA7254
/* 80CA7240  7F C3 F3 78 */	mr r3, r30
/* 80CA7244  38 80 00 00 */	li r4, 0
/* 80CA7248  39 9E 0A 98 */	addi r12, r30, 0xa98
/* 80CA724C  4B 6B AE 38 */	b __ptmf_scall
/* 80CA7250  60 00 00 00 */	nop 
lbl_80CA7254:
/* 80CA7254  38 00 00 00 */	li r0, 0
/* 80CA7258  B0 1E 0A CC */	sth r0, 0xacc(r30)
/* 80CA725C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80CA7260  80 1F 00 04 */	lwz r0, 4(r31)
/* 80CA7264  90 7E 0A 98 */	stw r3, 0xa98(r30)
/* 80CA7268  90 1E 0A 9C */	stw r0, 0xa9c(r30)
/* 80CA726C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80CA7270  90 1E 0A A0 */	stw r0, 0xaa0(r30)
/* 80CA7274  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 80CA7278  4B 6B AD A0 */	b __ptmf_test
/* 80CA727C  2C 03 00 00 */	cmpwi r3, 0
/* 80CA7280  41 82 00 18 */	beq lbl_80CA7298
/* 80CA7284  7F C3 F3 78 */	mr r3, r30
/* 80CA7288  38 80 00 00 */	li r4, 0
/* 80CA728C  39 9E 0A 98 */	addi r12, r30, 0xa98
/* 80CA7290  4B 6B AD F4 */	b __ptmf_scall
/* 80CA7294  60 00 00 00 */	nop 
lbl_80CA7298:
/* 80CA7298  38 00 00 01 */	li r0, 1
/* 80CA729C  B0 1E 0A CC */	sth r0, 0xacc(r30)
/* 80CA72A0  38 60 00 01 */	li r3, 1
/* 80CA72A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA72A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA72AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA72B0  7C 08 03 A6 */	mtlr r0
/* 80CA72B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA72B8  4E 80 00 20 */	blr 
