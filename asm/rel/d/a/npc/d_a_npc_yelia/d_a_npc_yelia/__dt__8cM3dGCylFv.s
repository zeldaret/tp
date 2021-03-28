lbl_80B514AC:
/* 80B514AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B514B0  7C 08 02 A6 */	mflr r0
/* 80B514B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B514B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B514BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B514C0  41 82 00 1C */	beq lbl_80B514DC
/* 80B514C4  3C A0 80 B5 */	lis r5, __vt__8cM3dGCyl@ha
/* 80B514C8  38 05 33 00 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80B514CC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B514D0  7C 80 07 35 */	extsh. r0, r4
/* 80B514D4  40 81 00 08 */	ble lbl_80B514DC
/* 80B514D8  4B 77 D8 64 */	b __dl__FPv
lbl_80B514DC:
/* 80B514DC  7F E3 FB 78 */	mr r3, r31
/* 80B514E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B514E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B514E8  7C 08 03 A6 */	mtlr r0
/* 80B514EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B514F0  4E 80 00 20 */	blr 
