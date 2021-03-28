lbl_80C411F4:
/* 80C411F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C411F8  7C 08 02 A6 */	mflr r0
/* 80C411FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C41200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C41204  3C 60 80 C4 */	lis r3, __global_destructor_chain@ha
/* 80C41208  3B E3 3C A0 */	addi r31, r3, __global_destructor_chain@l
/* 80C4120C  48 00 00 20 */	b lbl_80C4122C
lbl_80C41210:
/* 80C41210  80 05 00 00 */	lwz r0, 0(r5)
/* 80C41214  90 1F 00 00 */	stw r0, 0(r31)
/* 80C41218  80 65 00 08 */	lwz r3, 8(r5)
/* 80C4121C  38 80 FF FF */	li r4, -1
/* 80C41220  81 85 00 04 */	lwz r12, 4(r5)
/* 80C41224  7D 89 03 A6 */	mtctr r12
/* 80C41228  4E 80 04 21 */	bctrl 
lbl_80C4122C:
/* 80C4122C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C41230  28 05 00 00 */	cmplwi r5, 0
/* 80C41234  40 82 FF DC */	bne lbl_80C41210
/* 80C41238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4123C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C41240  7C 08 03 A6 */	mtlr r0
/* 80C41244  38 21 00 10 */	addi r1, r1, 0x10
/* 80C41248  4E 80 00 20 */	blr 
