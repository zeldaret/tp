lbl_80BADA00:
/* 80BADA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADA04  7C 08 02 A6 */	mflr r0
/* 80BADA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADA10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BADA14  41 82 00 1C */	beq lbl_80BADA30
/* 80BADA18  3C A0 80 BB */	lis r5, __vt__8cM3dGLin@ha /* 0x80BAE228@ha */
/* 80BADA1C  38 05 E2 28 */	addi r0, r5, __vt__8cM3dGLin@l /* 0x80BAE228@l */
/* 80BADA20  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BADA24  7C 80 07 35 */	extsh. r0, r4
/* 80BADA28  40 81 00 08 */	ble lbl_80BADA30
/* 80BADA2C  4B 72 13 11 */	bl __dl__FPv
lbl_80BADA30:
/* 80BADA30  7F E3 FB 78 */	mr r3, r31
/* 80BADA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADA3C  7C 08 03 A6 */	mtlr r0
/* 80BADA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADA44  4E 80 00 20 */	blr 
