lbl_8000E5F8:
/* 8000E5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000E5FC  7C 08 02 A6 */	mflr r0
/* 8000E600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000E604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000E608  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000E60C  41 82 00 30 */	beq lbl_8000E63C
/* 8000E610  3C 60 80 3A */	lis r3, __vt__19mDoExt_invJntPacket@ha /* 0x803A3270@ha */
/* 8000E614  38 03 32 70 */	addi r0, r3, __vt__19mDoExt_invJntPacket@l /* 0x803A3270@l */
/* 8000E618  90 1F 00 00 */	stw r0, 0(r31)
/* 8000E61C  41 82 00 10 */	beq lbl_8000E62C
/* 8000E620  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 8000E624  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 8000E628  90 1F 00 00 */	stw r0, 0(r31)
lbl_8000E62C:
/* 8000E62C  7C 80 07 35 */	extsh. r0, r4
/* 8000E630  40 81 00 0C */	ble lbl_8000E63C
/* 8000E634  7F E3 FB 78 */	mr r3, r31
/* 8000E638  48 2C 07 05 */	bl __dl__FPv
lbl_8000E63C:
/* 8000E63C  7F E3 FB 78 */	mr r3, r31
/* 8000E640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000E644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000E648  7C 08 03 A6 */	mtlr r0
/* 8000E64C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000E650  4E 80 00 20 */	blr 
