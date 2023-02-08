lbl_80580C80:
/* 80580C80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80580C84  7C 08 02 A6 */	mflr r0
/* 80580C88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80580C8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80580C90  4B DE 15 45 */	bl _savegpr_27
/* 80580C94  7C 7B 1B 78 */	mr r27, r3
/* 80580C98  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80580C9C  2C 00 00 02 */	cmpwi r0, 2
/* 80580CA0  40 82 00 6C */	bne lbl_80580D0C
/* 80580CA4  3B 80 00 00 */	li r28, 0
/* 80580CA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80580CAC  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80580CB0  48 00 00 4C */	b lbl_80580CFC
lbl_80580CB4:
/* 80580CB4  7F 9E 07 34 */	extsh r30, r28
/* 80580CB8  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 80580CBC  7F BB 02 14 */	add r29, r27, r0
/* 80580CC0  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 80580CC4  4B A8 C0 A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80580CC8  1C 7E 00 06 */	mulli r3, r30, 6
/* 80580CCC  38 63 0C BC */	addi r3, r3, 0xcbc
/* 80580CD0  7C 7B 1A 14 */	add r3, r27, r3
/* 80580CD4  4B A8 C2 71 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80580CD8  38 7D 0A 60 */	addi r3, r29, 0xa60
/* 80580CDC  4B A8 C1 95 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80580CE0  7F E3 FB 78 */	mr r3, r31
/* 80580CE4  57 C4 10 3A */	slwi r4, r30, 2
/* 80580CE8  38 04 0F 50 */	addi r0, r4, 0xf50
/* 80580CEC  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80580CF0  38 84 00 24 */	addi r4, r4, 0x24
/* 80580CF4  4B DC 57 BD */	bl PSMTXCopy
/* 80580CF8  3B 9C 00 01 */	addi r28, r28, 1
lbl_80580CFC:
/* 80580CFC  7F 80 07 34 */	extsh r0, r28
/* 80580D00  2C 00 00 32 */	cmpwi r0, 0x32
/* 80580D04  41 80 FF B0 */	blt lbl_80580CB4
/* 80580D08  48 00 00 28 */	b lbl_80580D30
lbl_80580D0C:
/* 80580D0C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80580D10  4B A8 C0 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80580D14  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 80580D18  4B A8 C2 2D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80580D1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80580D20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80580D24  80 9B 0F 4C */	lwz r4, 0xf4c(r27)
/* 80580D28  38 84 00 24 */	addi r4, r4, 0x24
/* 80580D2C  4B DC 57 85 */	bl PSMTXCopy
lbl_80580D30:
/* 80580D30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80580D34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80580D38  38 9B 05 6C */	addi r4, r27, 0x56c
/* 80580D3C  4B DC 57 75 */	bl PSMTXCopy
/* 80580D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80580D44  4B DE 14 DD */	bl _restgpr_27
/* 80580D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80580D4C  7C 08 03 A6 */	mtlr r0
/* 80580D50  38 21 00 20 */	addi r1, r1, 0x20
/* 80580D54  4E 80 00 20 */	blr 
