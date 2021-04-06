lbl_80A20734:
/* 80A20734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20738  7C 08 02 A6 */	mflr r0
/* 80A2073C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20744  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A20748  41 82 00 1C */	beq lbl_80A20764
/* 80A2074C  3C A0 80 A2 */	lis r5, __vt__16daNpcF_SPCurve_c@ha /* 0x80A217D0@ha */
/* 80A20750  38 05 17 D0 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l /* 0x80A217D0@l */
/* 80A20754  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80A20758  7C 80 07 35 */	extsh. r0, r4
/* 80A2075C  40 81 00 08 */	ble lbl_80A20764
/* 80A20760  4B 8A E5 DD */	bl __dl__FPv
lbl_80A20764:
/* 80A20764  7F E3 FB 78 */	mr r3, r31
/* 80A20768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2076C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20770  7C 08 03 A6 */	mtlr r0
/* 80A20774  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20778  4E 80 00 20 */	blr 
