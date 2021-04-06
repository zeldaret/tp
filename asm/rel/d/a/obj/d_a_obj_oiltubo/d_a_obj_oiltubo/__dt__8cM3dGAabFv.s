lbl_80CA695C:
/* 80CA695C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6960  7C 08 02 A6 */	mflr r0
/* 80CA6964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA696C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA6970  41 82 00 1C */	beq lbl_80CA698C
/* 80CA6974  3C A0 80 CA */	lis r5, __vt__8cM3dGAab@ha /* 0x80CA7A88@ha */
/* 80CA6978  38 05 7A 88 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CA7A88@l */
/* 80CA697C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CA6980  7C 80 07 35 */	extsh. r0, r4
/* 80CA6984  40 81 00 08 */	ble lbl_80CA698C
/* 80CA6988  4B 62 83 B5 */	bl __dl__FPv
lbl_80CA698C:
/* 80CA698C  7F E3 FB 78 */	mr r3, r31
/* 80CA6990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6998  7C 08 03 A6 */	mtlr r0
/* 80CA699C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA69A0  4E 80 00 20 */	blr 
