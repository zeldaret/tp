lbl_80854A4C:
/* 80854A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80854A50  7C 08 02 A6 */	mflr r0
/* 80854A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80854A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80854A5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80854A60  41 82 00 1C */	beq lbl_80854A7C
/* 80854A64  3C A0 80 85 */	lis r5, __vt__12daKago_HIO_c@ha
/* 80854A68  38 05 4F 54 */	addi r0, r5, __vt__12daKago_HIO_c@l
/* 80854A6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80854A70  7C 80 07 35 */	extsh. r0, r4
/* 80854A74  40 81 00 08 */	ble lbl_80854A7C
/* 80854A78  4B A7 A2 C4 */	b __dl__FPv
lbl_80854A7C:
/* 80854A7C  7F E3 FB 78 */	mr r3, r31
/* 80854A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80854A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80854A88  7C 08 03 A6 */	mtlr r0
/* 80854A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80854A90  4E 80 00 20 */	blr 
