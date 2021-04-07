lbl_80CD5364:
/* 80CD5364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD5368  7C 08 02 A6 */	mflr r0
/* 80CD536C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD5370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD5374  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD5378  41 82 00 30 */	beq lbl_80CD53A8
/* 80CD537C  3C 60 80 CD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CD67B4@ha */
/* 80CD5380  38 03 67 B4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CD67B4@l */
/* 80CD5384  90 1F 00 00 */	stw r0, 0(r31)
/* 80CD5388  41 82 00 10 */	beq lbl_80CD5398
/* 80CD538C  3C 60 80 CD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CD67A8@ha */
/* 80CD5390  38 03 67 A8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CD67A8@l */
/* 80CD5394  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CD5398:
/* 80CD5398  7C 80 07 35 */	extsh. r0, r4
/* 80CD539C  40 81 00 0C */	ble lbl_80CD53A8
/* 80CD53A0  7F E3 FB 78 */	mr r3, r31
/* 80CD53A4  4B 5F 99 99 */	bl __dl__FPv
lbl_80CD53A8:
/* 80CD53A8  7F E3 FB 78 */	mr r3, r31
/* 80CD53AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD53B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD53B4  7C 08 03 A6 */	mtlr r0
/* 80CD53B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD53BC  4E 80 00 20 */	blr 
