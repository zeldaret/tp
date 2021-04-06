lbl_80C38DAC:
/* 80C38DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38DB0  7C 08 02 A6 */	mflr r0
/* 80C38DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38DBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C38DC0  41 82 00 1C */	beq lbl_80C38DDC
/* 80C38DC4  3C A0 80 C4 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C397D0@ha */
/* 80C38DC8  38 05 97 D0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C397D0@l */
/* 80C38DCC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C38DD0  7C 80 07 35 */	extsh. r0, r4
/* 80C38DD4  40 81 00 08 */	ble lbl_80C38DDC
/* 80C38DD8  4B 69 5F 65 */	bl __dl__FPv
lbl_80C38DDC:
/* 80C38DDC  7F E3 FB 78 */	mr r3, r31
/* 80C38DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38DE8  7C 08 03 A6 */	mtlr r0
/* 80C38DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38DF0  4E 80 00 20 */	blr 
