lbl_80014FC8:
/* 80014FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014FCC  7C 08 02 A6 */	mflr r0
/* 80014FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80014FD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80014FDC  41 82 00 40 */	beq lbl_8001501C
/* 80014FE0  3C 60 80 3A */	lis r3, data_803A3410@ha /* 0x803A3410@ha */
/* 80014FE4  38 03 34 10 */	addi r0, r3, data_803A3410@l /* 0x803A3410@l */
/* 80014FE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80014FEC  41 82 00 20 */	beq lbl_8001500C
/* 80014FF0  3C 60 80 3A */	lis r3, __vt__17J3DMtxCalcAnmBase@ha /* 0x803A343C@ha */
/* 80014FF4  38 03 34 3C */	addi r0, r3, __vt__17J3DMtxCalcAnmBase@l /* 0x803A343C@l */
/* 80014FF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80014FFC  41 82 00 10 */	beq lbl_8001500C
/* 80015000  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha /* 0x803A3468@ha */
/* 80015004  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l /* 0x803A3468@l */
/* 80015008  90 1F 00 00 */	stw r0, 0(r31)
lbl_8001500C:
/* 8001500C  7C 80 07 35 */	extsh. r0, r4
/* 80015010  40 81 00 0C */	ble lbl_8001501C
/* 80015014  7F E3 FB 78 */	mr r3, r31
/* 80015018  48 2B 9D 25 */	bl __dl__FPv
lbl_8001501C:
/* 8001501C  7F E3 FB 78 */	mr r3, r31
/* 80015020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015028  7C 08 03 A6 */	mtlr r0
/* 8001502C  38 21 00 10 */	addi r1, r1, 0x10
/* 80015030  4E 80 00 20 */	blr 
