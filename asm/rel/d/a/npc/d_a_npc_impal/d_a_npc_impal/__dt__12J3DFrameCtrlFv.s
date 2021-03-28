lbl_80A0C168:
/* 80A0C168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C16C  7C 08 02 A6 */	mflr r0
/* 80A0C170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0C178  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0C17C  41 82 00 1C */	beq lbl_80A0C198
/* 80A0C180  3C A0 80 A1 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A0C184  38 05 C8 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A0C188  90 1F 00 00 */	stw r0, 0(r31)
/* 80A0C18C  7C 80 07 35 */	extsh. r0, r4
/* 80A0C190  40 81 00 08 */	ble lbl_80A0C198
/* 80A0C194  4B 8C 2B A8 */	b __dl__FPv
lbl_80A0C198:
/* 80A0C198  7F E3 FB 78 */	mr r3, r31
/* 80A0C19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0C1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C1A4  7C 08 03 A6 */	mtlr r0
/* 80A0C1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C1AC  4E 80 00 20 */	blr 
