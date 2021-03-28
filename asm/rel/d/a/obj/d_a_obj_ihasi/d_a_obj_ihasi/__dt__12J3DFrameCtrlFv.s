lbl_80C264F8:
/* 80C264F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C264FC  7C 08 02 A6 */	mflr r0
/* 80C26500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C26508  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2650C  41 82 00 1C */	beq lbl_80C26528
/* 80C26510  3C A0 80 C2 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C26514  38 05 69 28 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C26518  90 1F 00 00 */	stw r0, 0(r31)
/* 80C2651C  7C 80 07 35 */	extsh. r0, r4
/* 80C26520  40 81 00 08 */	ble lbl_80C26528
/* 80C26524  4B 6A 88 18 */	b __dl__FPv
lbl_80C26528:
/* 80C26528  7F E3 FB 78 */	mr r3, r31
/* 80C2652C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C26530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26534  7C 08 03 A6 */	mtlr r0
/* 80C26538  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2653C  4E 80 00 20 */	blr 
