lbl_80D4DE68:
/* 80D4DE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DE6C  7C 08 02 A6 */	mflr r0
/* 80D4DE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4DE78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4DE7C  41 82 00 1C */	beq lbl_80D4DE98
/* 80D4DE80  3C A0 80 D5 */	lis r5, __vt__16daNpcF_SPCurve_c@ha
/* 80D4DE84  38 05 DF 40 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l
/* 80D4DE88  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80D4DE8C  7C 80 07 35 */	extsh. r0, r4
/* 80D4DE90  40 81 00 08 */	ble lbl_80D4DE98
/* 80D4DE94  4B 58 0E A8 */	b __dl__FPv
lbl_80D4DE98:
/* 80D4DE98  7F E3 FB 78 */	mr r3, r31
/* 80D4DE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4DEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DEA4  7C 08 03 A6 */	mtlr r0
/* 80D4DEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DEAC  4E 80 00 20 */	blr 
