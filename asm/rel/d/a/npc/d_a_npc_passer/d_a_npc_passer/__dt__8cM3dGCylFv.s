lbl_80AA67B4:
/* 80AA67B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA67B8  7C 08 02 A6 */	mflr r0
/* 80AA67BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA67C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA67C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA67C8  41 82 00 1C */	beq lbl_80AA67E4
/* 80AA67CC  3C A0 80 AA */	lis r5, __vt__8cM3dGCyl@ha
/* 80AA67D0  38 05 74 20 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AA67D4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AA67D8  7C 80 07 35 */	extsh. r0, r4
/* 80AA67DC  40 81 00 08 */	ble lbl_80AA67E4
/* 80AA67E0  4B 82 85 5C */	b __dl__FPv
lbl_80AA67E4:
/* 80AA67E4  7F E3 FB 78 */	mr r3, r31
/* 80AA67E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA67EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA67F0  7C 08 03 A6 */	mtlr r0
/* 80AA67F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA67F8  4E 80 00 20 */	blr 
