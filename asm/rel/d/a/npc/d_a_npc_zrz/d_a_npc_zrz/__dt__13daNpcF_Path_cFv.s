lbl_80B9A5BC:
/* 80B9A5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A5C0  7C 08 02 A6 */	mflr r0
/* 80B9A5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9A5CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9A5D0  41 82 00 34 */	beq lbl_80B9A604
/* 80B9A5D4  3C 60 80 BA */	lis r3, __vt__13daNpcF_Path_c@ha
/* 80B9A5D8  38 03 B8 3C */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 80B9A5DC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B9A5E0  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80B9A5E4  41 82 00 10 */	beq lbl_80B9A5F4
/* 80B9A5E8  3C 60 80 BA */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 80B9A5EC  38 03 B8 30 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 80B9A5F0  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80B9A5F4:
/* 80B9A5F4  7C 80 07 35 */	extsh. r0, r4
/* 80B9A5F8  40 81 00 0C */	ble lbl_80B9A604
/* 80B9A5FC  7F E3 FB 78 */	mr r3, r31
/* 80B9A600  4B 73 47 3C */	b __dl__FPv
lbl_80B9A604:
/* 80B9A604  7F E3 FB 78 */	mr r3, r31
/* 80B9A608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9A60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A610  7C 08 03 A6 */	mtlr r0
/* 80B9A614  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A618  4E 80 00 20 */	blr 
