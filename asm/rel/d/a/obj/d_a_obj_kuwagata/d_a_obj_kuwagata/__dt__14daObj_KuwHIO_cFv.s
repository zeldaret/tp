lbl_80C4D3E8:
/* 80C4D3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D3EC  7C 08 02 A6 */	mflr r0
/* 80C4D3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D3F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4D3F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4D3FC  41 82 00 1C */	beq lbl_80C4D418
/* 80C4D400  3C A0 80 C5 */	lis r5, __vt__14daObj_KuwHIO_c@ha /* 0x80C4D64C@ha */
/* 80C4D404  38 05 D6 4C */	addi r0, r5, __vt__14daObj_KuwHIO_c@l /* 0x80C4D64C@l */
/* 80C4D408  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4D40C  7C 80 07 35 */	extsh. r0, r4
/* 80C4D410  40 81 00 08 */	ble lbl_80C4D418
/* 80C4D414  4B 68 19 29 */	bl __dl__FPv
lbl_80C4D418:
/* 80C4D418  7F E3 FB 78 */	mr r3, r31
/* 80C4D41C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4D420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4D424  7C 08 03 A6 */	mtlr r0
/* 80C4D428  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4D42C  4E 80 00 20 */	blr 
