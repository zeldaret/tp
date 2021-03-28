lbl_8032C2AC:
/* 8032C2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C2B0  7C 08 02 A6 */	mflr r0
/* 8032C2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C2BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032C2C0  41 82 00 40 */	beq lbl_8032C300
/* 8032C2C4  3C 60 80 3D */	lis r3, __vt__19J3DAnmTransformFull@ha
/* 8032C2C8  38 03 EE 48 */	addi r0, r3, __vt__19J3DAnmTransformFull@l
/* 8032C2CC  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C2D0  41 82 00 20 */	beq lbl_8032C2F0
/* 8032C2D4  3C 60 80 3A */	lis r3, __vt__15J3DAnmTransform@ha
/* 8032C2D8  38 03 7C 48 */	addi r0, r3, __vt__15J3DAnmTransform@l
/* 8032C2DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C2E0  41 82 00 10 */	beq lbl_8032C2F0
/* 8032C2E4  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032C2E8  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032C2EC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032C2F0:
/* 8032C2F0  7C 80 07 35 */	extsh. r0, r4
/* 8032C2F4  40 81 00 0C */	ble lbl_8032C300
/* 8032C2F8  7F E3 FB 78 */	mr r3, r31
/* 8032C2FC  4B FA 2A 41 */	bl __dl__FPv
lbl_8032C300:
/* 8032C300  7F E3 FB 78 */	mr r3, r31
/* 8032C304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C30C  7C 08 03 A6 */	mtlr r0
/* 8032C310  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C314  4E 80 00 20 */	blr 
