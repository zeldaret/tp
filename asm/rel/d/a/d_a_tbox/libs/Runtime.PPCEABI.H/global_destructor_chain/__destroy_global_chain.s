lbl_80490CD4:
/* 80490CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490CD8  7C 08 02 A6 */	mflr r0
/* 80490CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80490CE4  3C 60 80 49 */	lis r3, __global_destructor_chain@ha
/* 80490CE8  3B E3 68 90 */	addi r31, r3, __global_destructor_chain@l
/* 80490CEC  48 00 00 20 */	b lbl_80490D0C
lbl_80490CF0:
/* 80490CF0  80 05 00 00 */	lwz r0, 0(r5)
/* 80490CF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80490CF8  80 65 00 08 */	lwz r3, 8(r5)
/* 80490CFC  38 80 FF FF */	li r4, -1
/* 80490D00  81 85 00 04 */	lwz r12, 4(r5)
/* 80490D04  7D 89 03 A6 */	mtctr r12
/* 80490D08  4E 80 04 21 */	bctrl 
lbl_80490D0C:
/* 80490D0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80490D10  28 05 00 00 */	cmplwi r5, 0
/* 80490D14  40 82 FF DC */	bne lbl_80490CF0
/* 80490D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80490D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490D20  7C 08 03 A6 */	mtlr r0
/* 80490D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80490D28  4E 80 00 20 */	blr 
