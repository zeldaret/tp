lbl_8003B1F8:
/* 8003B1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B1FC  7C 08 02 A6 */	mflr r0
/* 8003B200  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B208  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B20C  41 82 00 1C */	beq lbl_8003B228
/* 8003B210  3C A0 80 3A */	lis r5, __vt__11J3DTexNoAnm@ha
/* 8003B214  38 05 7C 84 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 8003B218  90 1F 00 00 */	stw r0, 0(r31)
/* 8003B21C  7C 80 07 35 */	extsh. r0, r4
/* 8003B220  40 81 00 08 */	ble lbl_8003B228
/* 8003B224  48 29 3B 19 */	bl __dl__FPv
lbl_8003B228:
/* 8003B228  7F E3 FB 78 */	mr r3, r31
/* 8003B22C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B234  7C 08 03 A6 */	mtlr r0
/* 8003B238  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B23C  4E 80 00 20 */	blr 
