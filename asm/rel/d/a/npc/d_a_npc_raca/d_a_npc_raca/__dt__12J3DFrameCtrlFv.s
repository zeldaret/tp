lbl_80AB8828:
/* 80AB8828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB882C  7C 08 02 A6 */	mflr r0
/* 80AB8830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB8838  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB883C  41 82 00 1C */	beq lbl_80AB8858
/* 80AB8840  3C A0 80 AC */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AB93B8@ha */
/* 80AB8844  38 05 93 B8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AB93B8@l */
/* 80AB8848  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB884C  7C 80 07 35 */	extsh. r0, r4
/* 80AB8850  40 81 00 08 */	ble lbl_80AB8858
/* 80AB8854  4B 81 64 E9 */	bl __dl__FPv
lbl_80AB8858:
/* 80AB8858  7F E3 FB 78 */	mr r3, r31
/* 80AB885C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB8860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8864  7C 08 03 A6 */	mtlr r0
/* 80AB8868  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB886C  4E 80 00 20 */	blr 
