lbl_80BE85B0:
/* 80BE85B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE85B4  7C 08 02 A6 */	mflr r0
/* 80BE85B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE85BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE85C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE85C4  41 82 00 1C */	beq lbl_80BE85E0
/* 80BE85C8  3C A0 80 BF */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BE9044@ha */
/* 80BE85CC  38 05 90 44 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BE9044@l */
/* 80BE85D0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BE85D4  7C 80 07 35 */	extsh. r0, r4
/* 80BE85D8  40 81 00 08 */	ble lbl_80BE85E0
/* 80BE85DC  4B 6E 67 61 */	bl __dl__FPv
lbl_80BE85E0:
/* 80BE85E0  7F E3 FB 78 */	mr r3, r31
/* 80BE85E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE85E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE85EC  7C 08 03 A6 */	mtlr r0
/* 80BE85F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE85F4  4E 80 00 20 */	blr 
