lbl_80D3FF18:
/* 80D3FF18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3FF1C  7C 08 02 A6 */	mflr r0
/* 80D3FF20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3FF24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3FF28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3FF2C  41 82 00 1C */	beq lbl_80D3FF48
/* 80D3FF30  3C A0 80 D4 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D4040C@ha */
/* 80D3FF34  38 05 04 0C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D4040C@l */
/* 80D3FF38  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D3FF3C  7C 80 07 35 */	extsh. r0, r4
/* 80D3FF40  40 81 00 08 */	ble lbl_80D3FF48
/* 80D3FF44  4B 58 ED F9 */	bl __dl__FPv
lbl_80D3FF48:
/* 80D3FF48  7F E3 FB 78 */	mr r3, r31
/* 80D3FF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3FF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3FF54  7C 08 03 A6 */	mtlr r0
/* 80D3FF58  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3FF5C  4E 80 00 20 */	blr 
