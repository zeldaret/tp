lbl_80288B30:
/* 80288B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288B34  7C 08 02 A6 */	mflr r0
/* 80288B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80288B40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80288B44  41 82 00 1C */	beq lbl_80288B60
/* 80288B48  3C A0 80 3C */	lis r5, __vt__Q37JStudio3stb7TObject@ha
/* 80288B4C  38 05 57 00 */	addi r0, r5, __vt__Q37JStudio3stb7TObject@l
/* 80288B50  90 1F 00 08 */	stw r0, 8(r31)
/* 80288B54  7C 80 07 35 */	extsh. r0, r4
/* 80288B58  40 81 00 08 */	ble lbl_80288B60
/* 80288B5C  48 04 61 E1 */	bl __dl__FPv
lbl_80288B60:
/* 80288B60  7F E3 FB 78 */	mr r3, r31
/* 80288B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288B6C  7C 08 03 A6 */	mtlr r0
/* 80288B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80288B74  4E 80 00 20 */	blr 
