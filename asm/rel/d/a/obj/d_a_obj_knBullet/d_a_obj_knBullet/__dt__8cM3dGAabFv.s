lbl_80C472B8:
/* 80C472B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C472BC  7C 08 02 A6 */	mflr r0
/* 80C472C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C472C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C472C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C472CC  41 82 00 1C */	beq lbl_80C472E8
/* 80C472D0  3C A0 80 C4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C47A28@ha */
/* 80C472D4  38 05 7A 28 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C47A28@l */
/* 80C472D8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C472DC  7C 80 07 35 */	extsh. r0, r4
/* 80C472E0  40 81 00 08 */	ble lbl_80C472E8
/* 80C472E4  4B 68 7A 59 */	bl __dl__FPv
lbl_80C472E8:
/* 80C472E8  7F E3 FB 78 */	mr r3, r31
/* 80C472EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C472F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C472F4  7C 08 03 A6 */	mtlr r0
/* 80C472F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C472FC  4E 80 00 20 */	blr 
