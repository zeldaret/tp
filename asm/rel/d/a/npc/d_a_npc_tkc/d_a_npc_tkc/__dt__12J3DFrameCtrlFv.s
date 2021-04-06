lbl_80B1061C:
/* 80B1061C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B10620  7C 08 02 A6 */	mflr r0
/* 80B10624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B10628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1062C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B10630  41 82 00 1C */	beq lbl_80B1064C
/* 80B10634  3C A0 80 B1 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B10C60@ha */
/* 80B10638  38 05 0C 60 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B10C60@l */
/* 80B1063C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B10640  7C 80 07 35 */	extsh. r0, r4
/* 80B10644  40 81 00 08 */	ble lbl_80B1064C
/* 80B10648  4B 7B E6 F5 */	bl __dl__FPv
lbl_80B1064C:
/* 80B1064C  7F E3 FB 78 */	mr r3, r31
/* 80B10650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B10654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B10658  7C 08 03 A6 */	mtlr r0
/* 80B1065C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B10660  4E 80 00 20 */	blr 
