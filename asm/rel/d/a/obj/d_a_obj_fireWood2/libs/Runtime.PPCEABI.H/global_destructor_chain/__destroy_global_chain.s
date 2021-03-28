lbl_80BE81F4:
/* 80BE81F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE81F8  7C 08 02 A6 */	mflr r0
/* 80BE81FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE8204  3C 60 80 BF */	lis r3, __global_destructor_chain@ha
/* 80BE8208  3B E3 90 78 */	addi r31, r3, __global_destructor_chain@l
/* 80BE820C  48 00 00 20 */	b lbl_80BE822C
lbl_80BE8210:
/* 80BE8210  80 05 00 00 */	lwz r0, 0(r5)
/* 80BE8214  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE8218  80 65 00 08 */	lwz r3, 8(r5)
/* 80BE821C  38 80 FF FF */	li r4, -1
/* 80BE8220  81 85 00 04 */	lwz r12, 4(r5)
/* 80BE8224  7D 89 03 A6 */	mtctr r12
/* 80BE8228  4E 80 04 21 */	bctrl 
lbl_80BE822C:
/* 80BE822C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BE8230  28 05 00 00 */	cmplwi r5, 0
/* 80BE8234  40 82 FF DC */	bne lbl_80BE8210
/* 80BE8238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE823C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8240  7C 08 03 A6 */	mtlr r0
/* 80BE8244  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8248  4E 80 00 20 */	blr 
