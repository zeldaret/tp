lbl_8053D820:
/* 8053D820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D824  7C 08 02 A6 */	mflr r0
/* 8053D828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D830  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053D834  41 82 00 1C */	beq lbl_8053D850
/* 8053D838  3C A0 80 54 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8053FD8C@ha */
/* 8053D83C  38 05 FD 8C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8053FD8C@l */
/* 8053D840  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8053D844  7C 80 07 35 */	extsh. r0, r4
/* 8053D848  40 81 00 08 */	ble lbl_8053D850
/* 8053D84C  4B D9 14 F1 */	bl __dl__FPv
lbl_8053D850:
/* 8053D850  7F E3 FB 78 */	mr r3, r31
/* 8053D854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D85C  7C 08 03 A6 */	mtlr r0
/* 8053D860  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D864  4E 80 00 20 */	blr 
