lbl_8025C56C:
/* 8025C56C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C570  7C 08 02 A6 */	mflr r0
/* 8025C574  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C57C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C580  41 82 00 1C */	beq lbl_8025C59C
/* 8025C584  3C A0 80 3C */	lis r5, __vt__26dSvBit_childSwDungeonHIO_c@ha /* 0x803C3378@ha */
/* 8025C588  38 05 33 78 */	addi r0, r5, __vt__26dSvBit_childSwDungeonHIO_c@l /* 0x803C3378@l */
/* 8025C58C  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C590  7C 80 07 35 */	extsh. r0, r4
/* 8025C594  40 81 00 08 */	ble lbl_8025C59C
/* 8025C598  48 07 27 A5 */	bl __dl__FPv
lbl_8025C59C:
/* 8025C59C  7F E3 FB 78 */	mr r3, r31
/* 8025C5A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C5A8  7C 08 03 A6 */	mtlr r0
/* 8025C5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C5B0  4E 80 00 20 */	blr 
