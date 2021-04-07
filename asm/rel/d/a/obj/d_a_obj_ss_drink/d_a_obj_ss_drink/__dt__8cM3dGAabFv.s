lbl_80CE67A0:
/* 80CE67A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE67A4  7C 08 02 A6 */	mflr r0
/* 80CE67A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE67AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE67B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE67B4  41 82 00 1C */	beq lbl_80CE67D0
/* 80CE67B8  3C A0 80 CE */	lis r5, __vt__8cM3dGAab@ha /* 0x80CE6B58@ha */
/* 80CE67BC  38 05 6B 58 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CE6B58@l */
/* 80CE67C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CE67C4  7C 80 07 35 */	extsh. r0, r4
/* 80CE67C8  40 81 00 08 */	ble lbl_80CE67D0
/* 80CE67CC  4B 5E 85 71 */	bl __dl__FPv
lbl_80CE67D0:
/* 80CE67D0  7F E3 FB 78 */	mr r3, r31
/* 80CE67D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE67D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE67DC  7C 08 03 A6 */	mtlr r0
/* 80CE67E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE67E4  4E 80 00 20 */	blr 
