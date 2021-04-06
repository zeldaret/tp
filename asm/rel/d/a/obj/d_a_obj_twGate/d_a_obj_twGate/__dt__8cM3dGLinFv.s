lbl_80D1FF14:
/* 80D1FF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1FF18  7C 08 02 A6 */	mflr r0
/* 80D1FF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1FF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1FF24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1FF28  41 82 00 1C */	beq lbl_80D1FF44
/* 80D1FF2C  3C A0 80 D2 */	lis r5, __vt__8cM3dGLin@ha /* 0x80D20634@ha */
/* 80D1FF30  38 05 06 34 */	addi r0, r5, __vt__8cM3dGLin@l /* 0x80D20634@l */
/* 80D1FF34  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D1FF38  7C 80 07 35 */	extsh. r0, r4
/* 80D1FF3C  40 81 00 08 */	ble lbl_80D1FF44
/* 80D1FF40  4B 5A ED FD */	bl __dl__FPv
lbl_80D1FF44:
/* 80D1FF44  7F E3 FB 78 */	mr r3, r31
/* 80D1FF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1FF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1FF50  7C 08 03 A6 */	mtlr r0
/* 80D1FF54  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1FF58  4E 80 00 20 */	blr 
