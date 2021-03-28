lbl_80709BB4:
/* 80709BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80709BB8  7C 08 02 A6 */	mflr r0
/* 80709BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80709BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80709BC4  7C 7F 1B 78 */	mr r31, r3
/* 80709BC8  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80709BCC  2C 00 00 04 */	cmpwi r0, 4
/* 80709BD0  41 82 00 2C */	beq lbl_80709BFC
/* 80709BD4  40 80 00 54 */	bge lbl_80709C28
/* 80709BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80709BDC  41 82 00 08 */	beq lbl_80709BE4
/* 80709BE0  48 00 00 48 */	b lbl_80709C28
lbl_80709BE4:
/* 80709BE4  4B FF FD 49 */	bl WaitAction__8daE_MD_cFv
/* 80709BE8  7F E3 FB 78 */	mr r3, r31
/* 80709BEC  3C 80 80 71 */	lis r4, lit_4064@ha
/* 80709BF0  C0 24 A5 4C */	lfs f1, lit_4064@l(r4)
/* 80709BF4  4B FF F2 7D */	bl setCcCylinder__8daE_MD_cFf
/* 80709BF8  48 00 00 30 */	b lbl_80709C28
lbl_80709BFC:
/* 80709BFC  4B FF F7 7D */	bl CheckHit__8daE_MD_cFv
/* 80709C00  7F E3 FB 78 */	mr r3, r31
/* 80709C04  4B FF FE 01 */	bl VibAction__8daE_MD_cFv
/* 80709C08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80709C0C  41 82 00 0C */	beq lbl_80709C18
/* 80709C10  38 00 00 00 */	li r0, 0
/* 80709C14  90 1F 05 AC */	stw r0, 0x5ac(r31)
lbl_80709C18:
/* 80709C18  7F E3 FB 78 */	mr r3, r31
/* 80709C1C  3C 80 80 71 */	lis r4, lit_4064@ha
/* 80709C20  C0 24 A5 4C */	lfs f1, lit_4064@l(r4)
/* 80709C24  4B FF F2 4D */	bl setCcCylinder__8daE_MD_cFf
lbl_80709C28:
/* 80709C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80709C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80709C30  7C 08 03 A6 */	mtlr r0
/* 80709C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80709C38  4E 80 00 20 */	blr 
