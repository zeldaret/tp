lbl_805A2C48:
/* 805A2C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2C4C  7C 08 02 A6 */	mflr r0
/* 805A2C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2C58  7C 7F 1B 78 */	mr r31, r3
/* 805A2C5C  48 00 00 4D */	bl action__14daTagAtkItem_cFv
/* 805A2C60  7F E3 FB 78 */	mr r3, r31
/* 805A2C64  4B FF FC F5 */	bl setBaseMtx__14daTagAtkItem_cFv
/* 805A2C68  38 7F 05 68 */	addi r3, r31, 0x568
/* 805A2C6C  4B AA 5C 00 */	b eventUpdate__17dEvLib_callback_cFv
/* 805A2C70  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 805A2C74  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805A2C78  4B CC C5 64 */	b SetC__8cM3dGCylFRC4cXyz
/* 805A2C7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A2C80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A2C84  38 63 23 3C */	addi r3, r3, 0x233c
/* 805A2C88  38 9F 05 C0 */	addi r4, r31, 0x5c0
/* 805A2C8C  4B CC 1F 1C */	b Set__4cCcSFP8cCcD_Obj
/* 805A2C90  38 60 00 01 */	li r3, 1
/* 805A2C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2C9C  7C 08 03 A6 */	mtlr r0
/* 805A2CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2CA4  4E 80 00 20 */	blr 
