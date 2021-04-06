lbl_80C6A9C0:
/* 80C6A9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A9C4  7C 08 02 A6 */	mflr r0
/* 80C6A9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A9D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6A9D4  41 82 00 1C */	beq lbl_80C6A9F0
/* 80C6A9D8  3C A0 80 C7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C6B294@ha */
/* 80C6A9DC  38 05 B2 94 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C6B294@l */
/* 80C6A9E0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C6A9E4  7C 80 07 35 */	extsh. r0, r4
/* 80C6A9E8  40 81 00 08 */	ble lbl_80C6A9F0
/* 80C6A9EC  4B 66 43 51 */	bl __dl__FPv
lbl_80C6A9F0:
/* 80C6A9F0  7F E3 FB 78 */	mr r3, r31
/* 80C6A9F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A9FC  7C 08 03 A6 */	mtlr r0
/* 80C6AA00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6AA04  4E 80 00 20 */	blr 
