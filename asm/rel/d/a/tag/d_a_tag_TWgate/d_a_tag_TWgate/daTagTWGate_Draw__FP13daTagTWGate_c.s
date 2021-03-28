lbl_80D554E4:
/* 80D554E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D554E8  7C 08 02 A6 */	mflr r0
/* 80D554EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D554F0  88 03 05 E0 */	lbz r0, 0x5e0(r3)
/* 80D554F4  28 00 00 00 */	cmplwi r0, 0
/* 80D554F8  41 82 00 0C */	beq lbl_80D55504
/* 80D554FC  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80D55500  4B 2B BC C0 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_80D55504:
/* 80D55504  38 60 00 01 */	li r3, 1
/* 80D55508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5550C  7C 08 03 A6 */	mtlr r0
/* 80D55510  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55514  4E 80 00 20 */	blr 
