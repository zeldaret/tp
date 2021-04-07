lbl_80C57090:
/* 80C57090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57094  7C 08 02 A6 */	mflr r0
/* 80C57098  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5709C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C570A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C570A4  41 82 00 1C */	beq lbl_80C570C0
/* 80C570A8  3C A0 80 C5 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C5796C@ha */
/* 80C570AC  38 05 79 6C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C5796C@l */
/* 80C570B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C570B4  7C 80 07 35 */	extsh. r0, r4
/* 80C570B8  40 81 00 08 */	ble lbl_80C570C0
/* 80C570BC  4B 67 7C 81 */	bl __dl__FPv
lbl_80C570C0:
/* 80C570C0  7F E3 FB 78 */	mr r3, r31
/* 80C570C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C570C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C570CC  7C 08 03 A6 */	mtlr r0
/* 80C570D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C570D4  4E 80 00 20 */	blr 
