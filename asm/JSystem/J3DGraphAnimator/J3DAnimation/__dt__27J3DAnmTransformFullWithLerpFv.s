lbl_8032C228:
/* 8032C228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C22C  7C 08 02 A6 */	mflr r0
/* 8032C230  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C238  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032C23C  41 82 00 50 */	beq lbl_8032C28C
/* 8032C240  3C 60 80 3D */	lis r3, __vt__27J3DAnmTransformFullWithLerp@ha /* 0x803CEE34@ha */
/* 8032C244  38 03 EE 34 */	addi r0, r3, __vt__27J3DAnmTransformFullWithLerp@l /* 0x803CEE34@l */
/* 8032C248  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C24C  41 82 00 30 */	beq lbl_8032C27C
/* 8032C250  3C 60 80 3D */	lis r3, __vt__19J3DAnmTransformFull@ha /* 0x803CEE48@ha */
/* 8032C254  38 03 EE 48 */	addi r0, r3, __vt__19J3DAnmTransformFull@l /* 0x803CEE48@l */
/* 8032C258  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C25C  41 82 00 20 */	beq lbl_8032C27C
/* 8032C260  3C 60 80 3A */	lis r3, __vt__15J3DAnmTransform@ha /* 0x803A7C48@ha */
/* 8032C264  38 03 7C 48 */	addi r0, r3, __vt__15J3DAnmTransform@l /* 0x803A7C48@l */
/* 8032C268  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C26C  41 82 00 10 */	beq lbl_8032C27C
/* 8032C270  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032C274  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032C278  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032C27C:
/* 8032C27C  7C 80 07 35 */	extsh. r0, r4
/* 8032C280  40 81 00 0C */	ble lbl_8032C28C
/* 8032C284  7F E3 FB 78 */	mr r3, r31
/* 8032C288  4B FA 2A B5 */	bl __dl__FPv
lbl_8032C28C:
/* 8032C28C  7F E3 FB 78 */	mr r3, r31
/* 8032C290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C298  7C 08 03 A6 */	mtlr r0
/* 8032C29C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C2A0  4E 80 00 20 */	blr 
