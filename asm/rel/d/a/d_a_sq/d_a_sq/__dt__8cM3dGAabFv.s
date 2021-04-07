lbl_805A0FF8:
/* 805A0FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0FFC  7C 08 02 A6 */	mflr r0
/* 805A1000  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1008  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A100C  41 82 00 1C */	beq lbl_805A1028
/* 805A1010  3C A0 80 5A */	lis r5, __vt__8cM3dGAab@ha /* 0x805A12E0@ha */
/* 805A1014  38 05 12 E0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x805A12E0@l */
/* 805A1018  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805A101C  7C 80 07 35 */	extsh. r0, r4
/* 805A1020  40 81 00 08 */	ble lbl_805A1028
/* 805A1024  4B D2 DD 19 */	bl __dl__FPv
lbl_805A1028:
/* 805A1028  7F E3 FB 78 */	mr r3, r31
/* 805A102C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1034  7C 08 03 A6 */	mtlr r0
/* 805A1038  38 21 00 10 */	addi r1, r1, 0x10
/* 805A103C  4E 80 00 20 */	blr 
