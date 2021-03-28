lbl_80CB41F4:
/* 80CB41F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB41F8  7C 08 02 A6 */	mflr r0
/* 80CB41FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4204  3C 60 80 CB */	lis r3, __global_destructor_chain@ha
/* 80CB4208  3B E3 51 20 */	addi r31, r3, __global_destructor_chain@l
/* 80CB420C  48 00 00 20 */	b lbl_80CB422C
lbl_80CB4210:
/* 80CB4210  80 05 00 00 */	lwz r0, 0(r5)
/* 80CB4214  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB4218  80 65 00 08 */	lwz r3, 8(r5)
/* 80CB421C  38 80 FF FF */	li r4, -1
/* 80CB4220  81 85 00 04 */	lwz r12, 4(r5)
/* 80CB4224  7D 89 03 A6 */	mtctr r12
/* 80CB4228  4E 80 04 21 */	bctrl 
lbl_80CB422C:
/* 80CB422C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CB4230  28 05 00 00 */	cmplwi r5, 0
/* 80CB4234  40 82 FF DC */	bne lbl_80CB4210
/* 80CB4238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB423C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4240  7C 08 03 A6 */	mtlr r0
/* 80CB4244  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4248  4E 80 00 20 */	blr 
