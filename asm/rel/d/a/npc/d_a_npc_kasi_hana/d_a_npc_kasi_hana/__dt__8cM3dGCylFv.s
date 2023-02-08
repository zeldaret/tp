lbl_80A205CC:
/* 80A205CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A205D0  7C 08 02 A6 */	mflr r0
/* 80A205D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A205D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A205DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A205E0  41 82 00 1C */	beq lbl_80A205FC
/* 80A205E4  3C A0 80 A2 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A217B8@ha */
/* 80A205E8  38 05 17 B8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A217B8@l */
/* 80A205EC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A205F0  7C 80 07 35 */	extsh. r0, r4
/* 80A205F4  40 81 00 08 */	ble lbl_80A205FC
/* 80A205F8  4B 8A E7 45 */	bl __dl__FPv
lbl_80A205FC:
/* 80A205FC  7F E3 FB 78 */	mr r3, r31
/* 80A20600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20608  7C 08 03 A6 */	mtlr r0
/* 80A2060C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20610  4E 80 00 20 */	blr 
