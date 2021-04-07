lbl_809CB698:
/* 809CB698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CB69C  7C 08 02 A6 */	mflr r0
/* 809CB6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CB6A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CB6A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CB6AC  41 82 00 1C */	beq lbl_809CB6C8
/* 809CB6B0  3C A0 80 9D */	lis r5, __vt__8cM3dGAab@ha /* 0x809CFB38@ha */
/* 809CB6B4  38 05 FB 38 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809CFB38@l */
/* 809CB6B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809CB6BC  7C 80 07 35 */	extsh. r0, r4
/* 809CB6C0  40 81 00 08 */	ble lbl_809CB6C8
/* 809CB6C4  4B 90 36 79 */	bl __dl__FPv
lbl_809CB6C8:
/* 809CB6C8  7F E3 FB 78 */	mr r3, r31
/* 809CB6CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CB6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CB6D4  7C 08 03 A6 */	mtlr r0
/* 809CB6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809CB6DC  4E 80 00 20 */	blr 
