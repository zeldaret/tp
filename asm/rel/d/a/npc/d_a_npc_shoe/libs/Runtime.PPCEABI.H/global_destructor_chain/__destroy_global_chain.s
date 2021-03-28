lbl_80AE78F4:
/* 80AE78F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE78F8  7C 08 02 A6 */	mflr r0
/* 80AE78FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE7900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE7904  3C 60 80 AF */	lis r3, __global_destructor_chain@ha
/* 80AE7908  3B E3 A7 30 */	addi r31, r3, __global_destructor_chain@l
/* 80AE790C  48 00 00 20 */	b lbl_80AE792C
lbl_80AE7910:
/* 80AE7910  80 05 00 00 */	lwz r0, 0(r5)
/* 80AE7914  90 1F 00 00 */	stw r0, 0(r31)
/* 80AE7918  80 65 00 08 */	lwz r3, 8(r5)
/* 80AE791C  38 80 FF FF */	li r4, -1
/* 80AE7920  81 85 00 04 */	lwz r12, 4(r5)
/* 80AE7924  7D 89 03 A6 */	mtctr r12
/* 80AE7928  4E 80 04 21 */	bctrl 
lbl_80AE792C:
/* 80AE792C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AE7930  28 05 00 00 */	cmplwi r5, 0
/* 80AE7934  40 82 FF DC */	bne lbl_80AE7910
/* 80AE7938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE793C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE7940  7C 08 03 A6 */	mtlr r0
/* 80AE7944  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE7948  4E 80 00 20 */	blr 
