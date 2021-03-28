lbl_80C55CB4:
/* 80C55CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C55CB8  7C 08 02 A6 */	mflr r0
/* 80C55CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C55CC4  3C 60 80 C5 */	lis r3, __global_destructor_chain@ha
/* 80C55CC8  3B E3 6B 88 */	addi r31, r3, __global_destructor_chain@l
/* 80C55CCC  48 00 00 20 */	b lbl_80C55CEC
lbl_80C55CD0:
/* 80C55CD0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C55CD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C55CD8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C55CDC  38 80 FF FF */	li r4, -1
/* 80C55CE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C55CE4  7D 89 03 A6 */	mtctr r12
/* 80C55CE8  4E 80 04 21 */	bctrl 
lbl_80C55CEC:
/* 80C55CEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C55CF0  28 05 00 00 */	cmplwi r5, 0
/* 80C55CF4  40 82 FF DC */	bne lbl_80C55CD0
/* 80C55CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C55CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55D00  7C 08 03 A6 */	mtlr r0
/* 80C55D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55D08  4E 80 00 20 */	blr 
