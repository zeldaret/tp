lbl_80BA5360:
/* 80BA5360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5364  7C 08 02 A6 */	mflr r0
/* 80BA5368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA536C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5370  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA5374  41 82 00 1C */	beq lbl_80BA5390
/* 80BA5378  3C A0 80 BA */	lis r5, __vt__14daObj_AriHIO_c@ha /* 0x80BA55CC@ha */
/* 80BA537C  38 05 55 CC */	addi r0, r5, __vt__14daObj_AriHIO_c@l /* 0x80BA55CC@l */
/* 80BA5380  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA5384  7C 80 07 35 */	extsh. r0, r4
/* 80BA5388  40 81 00 08 */	ble lbl_80BA5390
/* 80BA538C  4B 72 99 B1 */	bl __dl__FPv
lbl_80BA5390:
/* 80BA5390  7F E3 FB 78 */	mr r3, r31
/* 80BA5394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA539C  7C 08 03 A6 */	mtlr r0
/* 80BA53A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA53A4  4E 80 00 20 */	blr 
