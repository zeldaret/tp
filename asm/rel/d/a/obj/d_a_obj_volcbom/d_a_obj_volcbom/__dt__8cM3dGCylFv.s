lbl_80D268A8:
/* 80D268A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D268AC  7C 08 02 A6 */	mflr r0
/* 80D268B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D268B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D268B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D268BC  41 82 00 1C */	beq lbl_80D268D8
/* 80D268C0  3C A0 80 D2 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D26E38@ha */
/* 80D268C4  38 05 6E 38 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D26E38@l */
/* 80D268C8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D268CC  7C 80 07 35 */	extsh. r0, r4
/* 80D268D0  40 81 00 08 */	ble lbl_80D268D8
/* 80D268D4  4B 5A 84 69 */	bl __dl__FPv
lbl_80D268D8:
/* 80D268D8  7F E3 FB 78 */	mr r3, r31
/* 80D268DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D268E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D268E4  7C 08 03 A6 */	mtlr r0
/* 80D268E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D268EC  4E 80 00 20 */	blr 
