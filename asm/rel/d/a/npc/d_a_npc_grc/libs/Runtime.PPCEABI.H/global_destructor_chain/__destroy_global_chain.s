lbl_809CB474:
/* 809CB474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CB478  7C 08 02 A6 */	mflr r0
/* 809CB47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CB480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CB484  3C 60 80 9D */	lis r3, __global_destructor_chain@ha
/* 809CB488  3B E3 FB 60 */	addi r31, r3, __global_destructor_chain@l
/* 809CB48C  48 00 00 20 */	b lbl_809CB4AC
lbl_809CB490:
/* 809CB490  80 05 00 00 */	lwz r0, 0(r5)
/* 809CB494  90 1F 00 00 */	stw r0, 0(r31)
/* 809CB498  80 65 00 08 */	lwz r3, 8(r5)
/* 809CB49C  38 80 FF FF */	li r4, -1
/* 809CB4A0  81 85 00 04 */	lwz r12, 4(r5)
/* 809CB4A4  7D 89 03 A6 */	mtctr r12
/* 809CB4A8  4E 80 04 21 */	bctrl 
lbl_809CB4AC:
/* 809CB4AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 809CB4B0  28 05 00 00 */	cmplwi r5, 0
/* 809CB4B4  40 82 FF DC */	bne lbl_809CB490
/* 809CB4B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CB4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CB4C0  7C 08 03 A6 */	mtlr r0
/* 809CB4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809CB4C8  4E 80 00 20 */	blr 
