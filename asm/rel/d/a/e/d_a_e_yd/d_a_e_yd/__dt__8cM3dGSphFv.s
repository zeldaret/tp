lbl_807F7390:
/* 807F7390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7394  7C 08 02 A6 */	mflr r0
/* 807F7398  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F739C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F73A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F73A4  41 82 00 1C */	beq lbl_807F73C0
/* 807F73A8  3C A0 80 7F */	lis r5, __vt__8cM3dGSph@ha /* 0x807F7D1C@ha */
/* 807F73AC  38 05 7D 1C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x807F7D1C@l */
/* 807F73B0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807F73B4  7C 80 07 35 */	extsh. r0, r4
/* 807F73B8  40 81 00 08 */	ble lbl_807F73C0
/* 807F73BC  4B AD 79 81 */	bl __dl__FPv
lbl_807F73C0:
/* 807F73C0  7F E3 FB 78 */	mr r3, r31
/* 807F73C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F73C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F73CC  7C 08 03 A6 */	mtlr r0
/* 807F73D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807F73D4  4E 80 00 20 */	blr 
