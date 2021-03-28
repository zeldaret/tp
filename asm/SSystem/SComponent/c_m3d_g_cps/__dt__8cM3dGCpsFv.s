lbl_8026EFA4:
/* 8026EFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026EFA8  7C 08 02 A6 */	mflr r0
/* 8026EFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026EFB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026EFB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8026EFB8  41 82 00 30 */	beq lbl_8026EFE8
/* 8026EFBC  3C 60 80 3C */	lis r3, __vt__8cM3dGCps@ha
/* 8026EFC0  38 03 3F F8 */	addi r0, r3, __vt__8cM3dGCps@l
/* 8026EFC4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8026EFC8  41 82 00 10 */	beq lbl_8026EFD8
/* 8026EFCC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 8026EFD0  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 8026EFD4  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8026EFD8:
/* 8026EFD8  7C 80 07 35 */	extsh. r0, r4
/* 8026EFDC  40 81 00 0C */	ble lbl_8026EFE8
/* 8026EFE0  7F E3 FB 78 */	mr r3, r31
/* 8026EFE4  48 05 FD 59 */	bl __dl__FPv
lbl_8026EFE8:
/* 8026EFE8  7F E3 FB 78 */	mr r3, r31
/* 8026EFEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026EFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026EFF4  7C 08 03 A6 */	mtlr r0
/* 8026EFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8026EFFC  4E 80 00 20 */	blr 
