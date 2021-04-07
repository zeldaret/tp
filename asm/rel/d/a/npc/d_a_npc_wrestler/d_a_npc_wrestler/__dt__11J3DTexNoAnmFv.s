lbl_80B2FC9C:
/* 80B2FC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2FCA0  7C 08 02 A6 */	mflr r0
/* 80B2FCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2FCA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2FCAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2FCB0  41 82 00 1C */	beq lbl_80B2FCCC
/* 80B2FCB4  3C A0 80 B4 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B42D28@ha */
/* 80B2FCB8  38 05 2D 28 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B42D28@l */
/* 80B2FCBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80B2FCC0  7C 80 07 35 */	extsh. r0, r4
/* 80B2FCC4  40 81 00 08 */	ble lbl_80B2FCCC
/* 80B2FCC8  4B 79 F0 75 */	bl __dl__FPv
lbl_80B2FCCC:
/* 80B2FCCC  7F E3 FB 78 */	mr r3, r31
/* 80B2FCD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2FCD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2FCD8  7C 08 03 A6 */	mtlr r0
/* 80B2FCDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2FCE0  4E 80 00 20 */	blr 
