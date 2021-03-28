lbl_807FD474:
/* 807FD474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FD478  7C 08 02 A6 */	mflr r0
/* 807FD47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FD480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FD484  3C 60 80 80 */	lis r3, __global_destructor_chain@ha
/* 807FD488  3B E3 47 10 */	addi r31, r3, __global_destructor_chain@l
/* 807FD48C  48 00 00 20 */	b lbl_807FD4AC
lbl_807FD490:
/* 807FD490  80 05 00 00 */	lwz r0, 0(r5)
/* 807FD494  90 1F 00 00 */	stw r0, 0(r31)
/* 807FD498  80 65 00 08 */	lwz r3, 8(r5)
/* 807FD49C  38 80 FF FF */	li r4, -1
/* 807FD4A0  81 85 00 04 */	lwz r12, 4(r5)
/* 807FD4A4  7D 89 03 A6 */	mtctr r12
/* 807FD4A8  4E 80 04 21 */	bctrl 
lbl_807FD4AC:
/* 807FD4AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807FD4B0  28 05 00 00 */	cmplwi r5, 0
/* 807FD4B4  40 82 FF DC */	bne lbl_807FD490
/* 807FD4B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FD4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FD4C0  7C 08 03 A6 */	mtlr r0
/* 807FD4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 807FD4C8  4E 80 00 20 */	blr 
