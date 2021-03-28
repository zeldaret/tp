lbl_80BA94B8:
/* 80BA94B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA94BC  7C 08 02 A6 */	mflr r0
/* 80BA94C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA94C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA94C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA94CC  41 82 00 1C */	beq lbl_80BA94E8
/* 80BA94D0  3C A0 80 BB */	lis r5, __vt__8cM3dGCyl@ha
/* 80BA94D4  38 05 9C B8 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BA94D8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BA94DC  7C 80 07 35 */	extsh. r0, r4
/* 80BA94E0  40 81 00 08 */	ble lbl_80BA94E8
/* 80BA94E4  4B 72 58 58 */	b __dl__FPv
lbl_80BA94E8:
/* 80BA94E8  7F E3 FB 78 */	mr r3, r31
/* 80BA94EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA94F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA94F4  7C 08 03 A6 */	mtlr r0
/* 80BA94F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA94FC  4E 80 00 20 */	blr 
