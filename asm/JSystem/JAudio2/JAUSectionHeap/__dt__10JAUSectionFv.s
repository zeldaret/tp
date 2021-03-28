lbl_802A6468:
/* 802A6468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A646C  7C 08 02 A6 */	mflr r0
/* 802A6470  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6478  93 C1 00 08 */	stw r30, 8(r1)
/* 802A647C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A6480  7C 9F 23 78 */	mr r31, r4
/* 802A6484  41 82 00 D4 */	beq lbl_802A6558
/* 802A6488  3C 60 80 3D */	lis r3, __vt__10JAUSection@ha
/* 802A648C  38 03 9B 24 */	addi r0, r3, __vt__10JAUSection@l
/* 802A6490  90 1E 00 00 */	stw r0, 0(r30)
/* 802A6494  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A6498  41 82 00 90 */	beq lbl_802A6528
/* 802A649C  34 7E 00 C4 */	addic. r3, r30, 0xc4
/* 802A64A0  41 82 00 0C */	beq lbl_802A64AC
/* 802A64A4  38 80 00 00 */	li r4, 0
/* 802A64A8  48 03 5A 05 */	bl __dt__10JSUPtrListFv
lbl_802A64AC:
/* 802A64AC  34 7E 00 AC */	addic. r3, r30, 0xac
/* 802A64B0  41 82 00 14 */	beq lbl_802A64C4
/* 802A64B4  28 03 00 00 */	cmplwi r3, 0
/* 802A64B8  41 82 00 0C */	beq lbl_802A64C4
/* 802A64BC  38 80 00 00 */	li r4, 0
/* 802A64C0  48 03 59 ED */	bl __dt__10JSUPtrListFv
lbl_802A64C4:
/* 802A64C4  34 7E 00 60 */	addic. r3, r30, 0x60
/* 802A64C8  41 82 00 0C */	beq lbl_802A64D4
/* 802A64CC  38 80 00 00 */	li r4, 0
/* 802A64D0  48 03 59 DD */	bl __dt__10JSUPtrListFv
lbl_802A64D4:
/* 802A64D4  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A64D8  41 82 00 50 */	beq lbl_802A6528
/* 802A64DC  34 7E 00 50 */	addic. r3, r30, 0x50
/* 802A64E0  41 82 00 14 */	beq lbl_802A64F4
/* 802A64E4  28 03 00 00 */	cmplwi r3, 0
/* 802A64E8  41 82 00 0C */	beq lbl_802A64F4
/* 802A64EC  38 80 00 00 */	li r4, 0
/* 802A64F0  48 03 59 BD */	bl __dt__10JSUPtrListFv
lbl_802A64F4:
/* 802A64F4  34 7E 00 44 */	addic. r3, r30, 0x44
/* 802A64F8  41 82 00 14 */	beq lbl_802A650C
/* 802A64FC  28 03 00 00 */	cmplwi r3, 0
/* 802A6500  41 82 00 0C */	beq lbl_802A650C
/* 802A6504  38 80 00 00 */	li r4, 0
/* 802A6508  48 03 59 A5 */	bl __dt__10JSUPtrListFv
lbl_802A650C:
/* 802A650C  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A6510  41 82 00 18 */	beq lbl_802A6528
/* 802A6514  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A6518  41 82 00 10 */	beq lbl_802A6528
/* 802A651C  38 7E 00 38 */	addi r3, r30, 0x38
/* 802A6520  38 80 00 00 */	li r4, 0
/* 802A6524  48 03 59 89 */	bl __dt__10JSUPtrListFv
lbl_802A6528:
/* 802A6528  34 1E 00 18 */	addic. r0, r30, 0x18
/* 802A652C  41 82 00 10 */	beq lbl_802A653C
/* 802A6530  38 7E 00 18 */	addi r3, r30, 0x18
/* 802A6534  38 80 00 00 */	li r4, 0
/* 802A6538  48 03 58 DD */	bl __dt__10JSUPtrLinkFv
lbl_802A653C:
/* 802A653C  7F C3 F3 78 */	mr r3, r30
/* 802A6540  38 80 00 00 */	li r4, 0
/* 802A6544  48 02 AF A1 */	bl __dt__11JKRDisposerFv
/* 802A6548  7F E0 07 35 */	extsh. r0, r31
/* 802A654C  40 81 00 0C */	ble lbl_802A6558
/* 802A6550  7F C3 F3 78 */	mr r3, r30
/* 802A6554  48 02 87 E9 */	bl __dl__FPv
lbl_802A6558:
/* 802A6558  7F C3 F3 78 */	mr r3, r30
/* 802A655C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A6560  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A6564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A6568  7C 08 03 A6 */	mtlr r0
/* 802A656C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A6570  4E 80 00 20 */	blr 
