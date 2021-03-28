lbl_80138C44:
/* 80138C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138C48  7C 08 02 A6 */	mflr r0
/* 80138C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138C54  93 C1 00 08 */	stw r30, 8(r1)
/* 80138C58  7C 7E 1B 78 */	mr r30, r3
/* 80138C5C  3B FE 20 48 */	addi r31, r30, 0x2048
/* 80138C60  7F E3 FB 78 */	mr r3, r31
/* 80138C64  48 02 58 69 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80138C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80138C6C  41 82 00 18 */	beq lbl_80138C84
/* 80138C70  7F C3 F3 78 */	mr r3, r30
/* 80138C74  38 80 00 02 */	li r4, 2
/* 80138C78  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 80138C7C  4B F7 4A A9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 80138C80  48 00 00 20 */	b lbl_80138CA0
lbl_80138C84:
/* 80138C84  7F E3 FB 78 */	mr r3, r31
/* 80138C88  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 80138C8C  48 1E F7 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 80138C90  2C 03 00 00 */	cmpwi r3, 0
/* 80138C94  41 82 00 0C */	beq lbl_80138CA0
/* 80138C98  7F C3 F3 78 */	mr r3, r30
/* 80138C9C  4B FF FF 69 */	bl resetWolfEnemyBiteAll__9daAlink_cFv
lbl_80138CA0:
/* 80138CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138CAC  7C 08 03 A6 */	mtlr r0
/* 80138CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80138CB4  4E 80 00 20 */	blr 
