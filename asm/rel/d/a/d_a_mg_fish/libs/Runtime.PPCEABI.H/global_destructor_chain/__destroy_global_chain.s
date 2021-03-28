lbl_80529CD4:
/* 80529CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529CD8  7C 08 02 A6 */	mflr r0
/* 80529CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80529CE4  3C 60 80 53 */	lis r3, __global_destructor_chain@ha
/* 80529CE8  3B E3 6B 78 */	addi r31, r3, __global_destructor_chain@l
/* 80529CEC  48 00 00 20 */	b lbl_80529D0C
lbl_80529CF0:
/* 80529CF0  80 05 00 00 */	lwz r0, 0(r5)
/* 80529CF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80529CF8  80 65 00 08 */	lwz r3, 8(r5)
/* 80529CFC  38 80 FF FF */	li r4, -1
/* 80529D00  81 85 00 04 */	lwz r12, 4(r5)
/* 80529D04  7D 89 03 A6 */	mtctr r12
/* 80529D08  4E 80 04 21 */	bctrl 
lbl_80529D0C:
/* 80529D0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80529D10  28 05 00 00 */	cmplwi r5, 0
/* 80529D14  40 82 FF DC */	bne lbl_80529CF0
/* 80529D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80529D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529D20  7C 08 03 A6 */	mtlr r0
/* 80529D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80529D28  4E 80 00 20 */	blr 
