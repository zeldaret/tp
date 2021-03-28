lbl_80D4347C:
/* 80D4347C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D43480  7C 08 02 A6 */	mflr r0
/* 80D43484  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D43488  39 61 00 20 */	addi r11, r1, 0x20
/* 80D4348C  4B 61 ED 48 */	b _savegpr_27
/* 80D43490  7C 7B 1B 78 */	mr r27, r3
/* 80D43494  7C 9C 23 78 */	mr r28, r4
/* 80D43498  7C BD 2B 78 */	mr r29, r5
/* 80D4349C  7C FE 3B 78 */	mr r30, r7
/* 80D434A0  7D 1F 43 78 */	mr r31, r8
/* 80D434A4  98 C3 03 C8 */	stb r6, 0x3c8(r3)
/* 80D434A8  48 00 00 51 */	bl loadModel__16_ZraMark_Hahen_cFv
/* 80D434AC  2C 03 00 00 */	cmpwi r3, 0
/* 80D434B0  41 82 00 2C */	beq lbl_80D434DC
/* 80D434B4  7F 63 DB 78 */	mr r3, r27
/* 80D434B8  7F 84 E3 78 */	mr r4, r28
/* 80D434BC  7F A5 EB 78 */	mr r5, r29
/* 80D434C0  7F C6 F3 78 */	mr r6, r30
/* 80D434C4  7F E7 FB 78 */	mr r7, r31
/* 80D434C8  48 00 00 B5 */	bl init__16_ZraMark_Hahen_cFRC4cXyzScScSc
/* 80D434CC  7F 63 DB 78 */	mr r3, r27
/* 80D434D0  48 00 03 95 */	bl setMtx__16_ZraMark_Hahen_cFv
/* 80D434D4  38 60 00 01 */	li r3, 1
/* 80D434D8  48 00 00 08 */	b lbl_80D434E0
lbl_80D434DC:
/* 80D434DC  38 60 00 00 */	li r3, 0
lbl_80D434E0:
/* 80D434E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D434E4  4B 61 ED 3C */	b _restgpr_27
/* 80D434E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D434EC  7C 08 03 A6 */	mtlr r0
/* 80D434F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D434F4  4E 80 00 20 */	blr 
