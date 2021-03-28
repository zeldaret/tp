lbl_80D61E5C:
/* 80D61E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61E60  7C 08 02 A6 */	mflr r0
/* 80D61E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61E6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D61E70  41 82 00 1C */	beq lbl_80D61E8C
/* 80D61E74  3C A0 80 D6 */	lis r5, __vt__8cM3dGAab@ha
/* 80D61E78  38 05 2D 18 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D61E7C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D61E80  7C 80 07 35 */	extsh. r0, r4
/* 80D61E84  40 81 00 08 */	ble lbl_80D61E8C
/* 80D61E88  4B 56 CE B4 */	b __dl__FPv
lbl_80D61E8C:
/* 80D61E8C  7F E3 FB 78 */	mr r3, r31
/* 80D61E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D61E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61E98  7C 08 03 A6 */	mtlr r0
/* 80D61E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61EA0  4E 80 00 20 */	blr 
