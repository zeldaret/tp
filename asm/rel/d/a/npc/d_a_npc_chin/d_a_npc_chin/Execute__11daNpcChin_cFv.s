lbl_8098CD18:
/* 8098CD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CD1C  7C 08 02 A6 */	mflr r0
/* 8098CD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098CD28  7C 7F 1B 78 */	mr r31, r3
/* 8098CD2C  4B 7C 52 E8 */	b execute__8daNpcF_cFv
/* 8098CD30  88 1F 0E 6C */	lbz r0, 0xe6c(r31)
/* 8098CD34  2C 00 00 01 */	cmpwi r0, 1
/* 8098CD38  40 82 00 24 */	bne lbl_8098CD5C
/* 8098CD3C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8098CD40  D0 1F 0E 4C */	stfs f0, 0xe4c(r31)
/* 8098CD44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8098CD48  D0 1F 0E 50 */	stfs f0, 0xe50(r31)
/* 8098CD4C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8098CD50  D0 1F 0E 54 */	stfs f0, 0xe54(r31)
/* 8098CD54  38 7F 0E 34 */	addi r3, r31, 0xe34
/* 8098CD58  4B 68 06 D0 */	b play__14mDoExt_baseAnmFv
lbl_8098CD5C:
/* 8098CD5C  38 60 00 01 */	li r3, 1
/* 8098CD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098CD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098CD68  7C 08 03 A6 */	mtlr r0
/* 8098CD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8098CD70  4E 80 00 20 */	blr 
