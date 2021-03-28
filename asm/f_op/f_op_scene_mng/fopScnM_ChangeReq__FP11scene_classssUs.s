lbl_8001ECE0:
/* 8001ECE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001ECE4  7C 08 02 A6 */	mflr r0
/* 8001ECE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001ECEC  7C 69 1B 78 */	mr r9, r3
/* 8001ECF0  7C 80 23 78 */	mr r0, r4
/* 8001ECF4  7C A7 2B 78 */	mr r7, r5
/* 8001ECF8  7C C8 33 78 */	mr r8, r6
/* 8001ECFC  38 60 00 02 */	li r3, 2
/* 8001ED00  7D 24 4B 78 */	mr r4, r9
/* 8001ED04  7C 05 03 78 */	mr r5, r0
/* 8001ED08  38 C0 00 00 */	li r6, 0
/* 8001ED0C  48 00 03 29 */	bl fopScnRq_Request__FiP11scene_classsPvsUs
/* 8001ED10  3C 03 00 01 */	addis r0, r3, 1
/* 8001ED14  28 00 FF FF */	cmplwi r0, 0xffff
/* 8001ED18  40 82 00 0C */	bne lbl_8001ED24
/* 8001ED1C  38 60 00 00 */	li r3, 0
/* 8001ED20  48 00 00 0C */	b lbl_8001ED2C
lbl_8001ED24:
/* 8001ED24  90 6D 80 38 */	stw r3, l_scnRqID(r13)
/* 8001ED28  38 60 00 01 */	li r3, 1
lbl_8001ED2C:
/* 8001ED2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001ED30  7C 08 03 A6 */	mtlr r0
/* 8001ED34  38 21 00 10 */	addi r1, r1, 0x10
/* 8001ED38  4E 80 00 20 */	blr 
