lbl_80C8A738:
/* 80C8A738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8A73C  7C 08 02 A6 */	mflr r0
/* 80C8A740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8A744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8A748  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8A74C  41 82 00 1C */	beq lbl_80C8A768
/* 80C8A750  3C A0 80 C9 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C8BB8C@ha */
/* 80C8A754  38 05 BB 8C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C8BB8C@l */
/* 80C8A758  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8A75C  7C 80 07 35 */	extsh. r0, r4
/* 80C8A760  40 81 00 08 */	ble lbl_80C8A768
/* 80C8A764  4B 64 45 D9 */	bl __dl__FPv
lbl_80C8A768:
/* 80C8A768  7F E3 FB 78 */	mr r3, r31
/* 80C8A76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8A770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8A774  7C 08 03 A6 */	mtlr r0
/* 80C8A778  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8A77C  4E 80 00 20 */	blr 
