lbl_80A206D4:
/* 80A206D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A206D8  7C 08 02 A6 */	mflr r0
/* 80A206DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A206E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A206E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A206E8  41 82 00 34 */	beq lbl_80A2071C
/* 80A206EC  3C 60 80 A2 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80A217DC@ha */
/* 80A206F0  38 03 17 DC */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80A217DC@l */
/* 80A206F4  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A206F8  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80A206FC  41 82 00 10 */	beq lbl_80A2070C
/* 80A20700  3C 60 80 A2 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80A217D0@ha */
/* 80A20704  38 03 17 D0 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80A217D0@l */
/* 80A20708  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80A2070C:
/* 80A2070C  7C 80 07 35 */	extsh. r0, r4
/* 80A20710  40 81 00 0C */	ble lbl_80A2071C
/* 80A20714  7F E3 FB 78 */	mr r3, r31
/* 80A20718  4B 8A E6 25 */	bl __dl__FPv
lbl_80A2071C:
/* 80A2071C  7F E3 FB 78 */	mr r3, r31
/* 80A20720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20728  7C 08 03 A6 */	mtlr r0
/* 80A2072C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20730  4E 80 00 20 */	blr 
