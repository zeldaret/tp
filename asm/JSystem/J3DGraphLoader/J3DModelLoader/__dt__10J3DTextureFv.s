lbl_803366A4:
/* 803366A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803366A8  7C 08 02 A6 */	mflr r0
/* 803366AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803366B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803366B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803366B8  41 82 00 1C */	beq lbl_803366D4
/* 803366BC  3C A0 80 3D */	lis r5, __vt__10J3DTexture@ha /* 0x803CF1E8@ha */
/* 803366C0  38 05 F1 E8 */	addi r0, r5, __vt__10J3DTexture@l /* 0x803CF1E8@l */
/* 803366C4  90 1F 00 08 */	stw r0, 8(r31)
/* 803366C8  7C 80 07 35 */	extsh. r0, r4
/* 803366CC  40 81 00 08 */	ble lbl_803366D4
/* 803366D0  4B F9 86 6D */	bl __dl__FPv
lbl_803366D4:
/* 803366D4  7F E3 FB 78 */	mr r3, r31
/* 803366D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803366DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803366E0  7C 08 03 A6 */	mtlr r0
/* 803366E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803366E8  4E 80 00 20 */	blr 
