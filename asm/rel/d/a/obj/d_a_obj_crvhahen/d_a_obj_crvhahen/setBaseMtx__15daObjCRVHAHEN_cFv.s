lbl_80BD3C0C:
/* 80BD3C0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD3C10  7C 08 02 A6 */	mflr r0
/* 80BD3C14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD3C18  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD3C1C  4B 78 E5 B1 */	bl _savegpr_25
/* 80BD3C20  7C 79 1B 78 */	mr r25, r3
/* 80BD3C24  3B 40 00 00 */	li r26, 0
/* 80BD3C28  3B E0 00 00 */	li r31, 0
/* 80BD3C2C  3B C0 00 00 */	li r30, 0
/* 80BD3C30  3B A0 00 00 */	li r29, 0
/* 80BD3C34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD3C38  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80BD3C3C:
/* 80BD3C3C  7F 79 EA 14 */	add r27, r25, r29
/* 80BD3C40  38 7B 05 68 */	addi r3, r27, 0x568
/* 80BD3C44  4B 43 91 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD3C48  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 80BD3C4C  7C 79 1A 14 */	add r3, r25, r3
/* 80BD3C50  4B 43 92 F5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD3C54  38 7B 06 58 */	addi r3, r27, 0x658
/* 80BD3C58  4B 43 92 19 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BD3C5C  7F 83 E3 78 */	mr r3, r28
/* 80BD3C60  38 1F 07 60 */	addi r0, r31, 0x760
/* 80BD3C64  7C 99 00 2E */	lwzx r4, r25, r0
/* 80BD3C68  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD3C6C  4B 77 28 45 */	bl PSMTXCopy
/* 80BD3C70  3B 5A 00 01 */	addi r26, r26, 1
/* 80BD3C74  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80BD3C78  3B FF 00 04 */	addi r31, r31, 4
/* 80BD3C7C  3B DE 00 06 */	addi r30, r30, 6
/* 80BD3C80  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BD3C84  41 80 FF B8 */	blt lbl_80BD3C3C
/* 80BD3C88  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD3C8C  4B 78 E5 8D */	bl _restgpr_25
/* 80BD3C90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD3C94  7C 08 03 A6 */	mtlr r0
/* 80BD3C98  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD3C9C  4E 80 00 20 */	blr 
