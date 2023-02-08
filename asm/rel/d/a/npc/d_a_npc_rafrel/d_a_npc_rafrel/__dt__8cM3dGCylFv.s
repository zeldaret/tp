lbl_80AB97B0:
/* 80AB97B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB97B4  7C 08 02 A6 */	mflr r0
/* 80AB97B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB97BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB97C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB97C4  41 82 00 1C */	beq lbl_80AB97E0
/* 80AB97C8  3C A0 80 AC */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AC02DC@ha */
/* 80AB97CC  38 05 02 DC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AC02DC@l */
/* 80AB97D0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AB97D4  7C 80 07 35 */	extsh. r0, r4
/* 80AB97D8  40 81 00 08 */	ble lbl_80AB97E0
/* 80AB97DC  4B 81 55 61 */	bl __dl__FPv
lbl_80AB97E0:
/* 80AB97E0  7F E3 FB 78 */	mr r3, r31
/* 80AB97E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB97E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB97EC  7C 08 03 A6 */	mtlr r0
/* 80AB97F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB97F4  4E 80 00 20 */	blr 
