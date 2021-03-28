lbl_80AB5064:
/* 80AB5064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5068  7C 08 02 A6 */	mflr r0
/* 80AB506C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB5070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB5074  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB5078  41 82 00 10 */	beq lbl_80AB5088
/* 80AB507C  7C 80 07 35 */	extsh. r0, r4
/* 80AB5080  40 81 00 08 */	ble lbl_80AB5088
/* 80AB5084  4B 81 9C B8 */	b __dl__FPv
lbl_80AB5088:
/* 80AB5088  7F E3 FB 78 */	mr r3, r31
/* 80AB508C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB5090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5094  7C 08 03 A6 */	mtlr r0
/* 80AB5098  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB509C  4E 80 00 20 */	blr 
