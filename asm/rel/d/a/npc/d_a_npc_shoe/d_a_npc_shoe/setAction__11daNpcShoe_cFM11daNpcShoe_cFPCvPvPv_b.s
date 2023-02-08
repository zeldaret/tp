lbl_80AE895C:
/* 80AE895C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE8960  7C 08 02 A6 */	mflr r0
/* 80AE8964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE8968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE896C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE8970  7C 7E 1B 78 */	mr r30, r3
/* 80AE8974  7C 9F 23 78 */	mr r31, r4
/* 80AE8978  38 00 00 03 */	li r0, 3
/* 80AE897C  B0 03 0E 18 */	sth r0, 0xe18(r3)
/* 80AE8980  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AE8984  4B 87 96 95 */	bl __ptmf_test
/* 80AE8988  2C 03 00 00 */	cmpwi r3, 0
/* 80AE898C  41 82 00 18 */	beq lbl_80AE89A4
/* 80AE8990  7F C3 F3 78 */	mr r3, r30
/* 80AE8994  38 80 00 00 */	li r4, 0
/* 80AE8998  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AE899C  4B 87 96 E9 */	bl __ptmf_scall
/* 80AE89A0  60 00 00 00 */	nop 
lbl_80AE89A4:
/* 80AE89A4  38 00 00 00 */	li r0, 0
/* 80AE89A8  B0 1E 0E 18 */	sth r0, 0xe18(r30)
/* 80AE89AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AE89B0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AE89B4  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 80AE89B8  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80AE89BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AE89C0  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80AE89C4  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AE89C8  4B 87 96 51 */	bl __ptmf_test
/* 80AE89CC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE89D0  41 82 00 18 */	beq lbl_80AE89E8
/* 80AE89D4  7F C3 F3 78 */	mr r3, r30
/* 80AE89D8  38 80 00 00 */	li r4, 0
/* 80AE89DC  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AE89E0  4B 87 96 A5 */	bl __ptmf_scall
/* 80AE89E4  60 00 00 00 */	nop 
lbl_80AE89E8:
/* 80AE89E8  38 60 00 01 */	li r3, 1
/* 80AE89EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE89F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE89F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE89F8  7C 08 03 A6 */	mtlr r0
/* 80AE89FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE8A00  4E 80 00 20 */	blr 
