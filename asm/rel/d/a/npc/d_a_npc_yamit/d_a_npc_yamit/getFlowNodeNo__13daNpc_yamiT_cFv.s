lbl_80B4A638:
/* 80B4A638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A63C  7C 08 02 A6 */	mflr r0
/* 80B4A640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4A648  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4A64C  7C 7E 1B 78 */	mr r30, r3
/* 80B4A650  3B E0 FF FF */	li r31, -1
/* 80B4A654  38 60 02 3A */	li r3, 0x23a
/* 80B4A658  4B 60 24 54 */	b daNpcT_chkEvtBit__FUl
/* 80B4A65C  2C 03 00 00 */	cmpwi r3, 0
/* 80B4A660  41 82 00 0C */	beq lbl_80B4A66C
/* 80B4A664  3B E0 03 26 */	li r31, 0x326
/* 80B4A668  48 00 00 18 */	b lbl_80B4A680
lbl_80B4A66C:
/* 80B4A66C  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80B4A670  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B4A674  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B4A678  41 82 00 08 */	beq lbl_80B4A680
/* 80B4A67C  7C 1F 03 78 */	mr r31, r0
lbl_80B4A680:
/* 80B4A680  7F E3 FB 78 */	mr r3, r31
/* 80B4A684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4A688  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4A68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A690  7C 08 03 A6 */	mtlr r0
/* 80B4A694  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A698  4E 80 00 20 */	blr 
