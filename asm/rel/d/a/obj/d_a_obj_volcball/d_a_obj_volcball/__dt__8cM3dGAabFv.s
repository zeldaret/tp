lbl_80D222A0:
/* 80D222A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D222A4  7C 08 02 A6 */	mflr r0
/* 80D222A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D222AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D222B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D222B4  41 82 00 1C */	beq lbl_80D222D0
/* 80D222B8  3C A0 80 D2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D240CC@ha */
/* 80D222BC  38 05 40 CC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D240CC@l */
/* 80D222C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D222C4  7C 80 07 35 */	extsh. r0, r4
/* 80D222C8  40 81 00 08 */	ble lbl_80D222D0
/* 80D222CC  4B 5A CA 71 */	bl __dl__FPv
lbl_80D222D0:
/* 80D222D0  7F E3 FB 78 */	mr r3, r31
/* 80D222D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D222D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D222DC  7C 08 03 A6 */	mtlr r0
/* 80D222E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D222E4  4E 80 00 20 */	blr 
