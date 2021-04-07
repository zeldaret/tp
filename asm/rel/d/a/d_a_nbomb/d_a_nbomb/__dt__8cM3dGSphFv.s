lbl_804C7CC8:
/* 804C7CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C7CCC  7C 08 02 A6 */	mflr r0
/* 804C7CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C7CD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C7CDC  41 82 00 1C */	beq lbl_804C7CF8
/* 804C7CE0  3C A0 80 4D */	lis r5, __vt__8cM3dGSph@ha /* 0x804CC610@ha */
/* 804C7CE4  38 05 C6 10 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x804CC610@l */
/* 804C7CE8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804C7CEC  7C 80 07 35 */	extsh. r0, r4
/* 804C7CF0  40 81 00 08 */	ble lbl_804C7CF8
/* 804C7CF4  4B E0 70 49 */	bl __dl__FPv
lbl_804C7CF8:
/* 804C7CF8  7F E3 FB 78 */	mr r3, r31
/* 804C7CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C7D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7D04  7C 08 03 A6 */	mtlr r0
/* 804C7D08  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7D0C  4E 80 00 20 */	blr 
