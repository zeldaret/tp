lbl_8085B9F4:
/* 8085B9F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085B9F8  7C 08 02 A6 */	mflr r0
/* 8085B9FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085BA00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085BA04  7C 7F 1B 79 */	or. r31, r3, r3
/* 8085BA08  41 82 00 1C */	beq lbl_8085BA24
/* 8085BA0C  3C A0 80 86 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8085BA10  38 05 BA B0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8085BA14  90 1F 00 00 */	stw r0, 0(r31)
/* 8085BA18  7C 80 07 35 */	extsh. r0, r4
/* 8085BA1C  40 81 00 08 */	ble lbl_8085BA24
/* 8085BA20  4B A7 33 1C */	b __dl__FPv
lbl_8085BA24:
/* 8085BA24  7F E3 FB 78 */	mr r3, r31
/* 8085BA28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8085BA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085BA30  7C 08 03 A6 */	mtlr r0
/* 8085BA34  38 21 00 10 */	addi r1, r1, 0x10
/* 8085BA38  4E 80 00 20 */	blr 
