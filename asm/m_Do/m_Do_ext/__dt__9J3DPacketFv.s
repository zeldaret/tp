lbl_8000E680:
/* 8000E680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000E684  7C 08 02 A6 */	mflr r0
/* 8000E688  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000E68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000E690  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000E694  41 82 00 1C */	beq lbl_8000E6B0
/* 8000E698  3C A0 80 3D */	lis r5, __vt__9J3DPacket@ha
/* 8000E69C  38 05 D9 7C */	addi r0, r5, __vt__9J3DPacket@l
/* 8000E6A0  90 1F 00 00 */	stw r0, 0(r31)
/* 8000E6A4  7C 80 07 35 */	extsh. r0, r4
/* 8000E6A8  40 81 00 08 */	ble lbl_8000E6B0
/* 8000E6AC  48 2C 06 91 */	bl __dl__FPv
lbl_8000E6B0:
/* 8000E6B0  7F E3 FB 78 */	mr r3, r31
/* 8000E6B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000E6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000E6BC  7C 08 03 A6 */	mtlr r0
/* 8000E6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8000E6C4  4E 80 00 20 */	blr 
