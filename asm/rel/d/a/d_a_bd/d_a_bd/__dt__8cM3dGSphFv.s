lbl_804D9BB8:
/* 804D9BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9BBC  7C 08 02 A6 */	mflr r0
/* 804D9BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D9BC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D9BCC  41 82 00 1C */	beq lbl_804D9BE8
/* 804D9BD0  3C A0 80 4E */	lis r5, __vt__8cM3dGSph@ha /* 0x804DA2C4@ha */
/* 804D9BD4  38 05 A2 C4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x804DA2C4@l */
/* 804D9BD8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804D9BDC  7C 80 07 35 */	extsh. r0, r4
/* 804D9BE0  40 81 00 08 */	ble lbl_804D9BE8
/* 804D9BE4  4B DF 51 59 */	bl __dl__FPv
lbl_804D9BE8:
/* 804D9BE8  7F E3 FB 78 */	mr r3, r31
/* 804D9BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D9BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9BF4  7C 08 03 A6 */	mtlr r0
/* 804D9BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9BFC  4E 80 00 20 */	blr 
