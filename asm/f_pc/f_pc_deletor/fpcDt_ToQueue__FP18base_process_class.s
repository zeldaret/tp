lbl_8002110C:
/* 8002110C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021110  7C 08 02 A6 */	mflr r0
/* 80021114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002111C  7C 7F 1B 78 */	mr r31, r3
/* 80021120  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80021124  2C 00 00 01 */	cmpwi r0, 1
/* 80021128  41 82 00 48 */	beq lbl_80021170
/* 8002112C  4B FF F6 35 */	bl fpcBs_IsDelete__FP18base_process_class
/* 80021130  2C 03 00 01 */	cmpwi r3, 1
/* 80021134  40 82 00 3C */	bne lbl_80021170
/* 80021138  38 7F 00 68 */	addi r3, r31, 0x68
/* 8002113C  48 00 1F F5 */	bl fpcPi_IsInQueue__FP22process_priority_class
/* 80021140  2C 03 00 01 */	cmpwi r3, 1
/* 80021144  40 82 00 0C */	bne lbl_80021150
/* 80021148  38 7F 00 68 */	addi r3, r31, 0x68
/* 8002114C  48 00 21 1D */	bl fpcPi_Delete__FP22process_priority_class
lbl_80021150:
/* 80021150  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80021154  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80021158  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8002115C  4B FF FD ED */	bl fpcDtTg_ToDeleteQ__FP16delete_tag_class
/* 80021160  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80021164  48 00 05 15 */	bl fpcLy_DeletingMesg__FP11layer_class
/* 80021168  38 60 00 01 */	li r3, 1
/* 8002116C  48 00 00 08 */	b lbl_80021174
lbl_80021170:
/* 80021170  38 60 00 00 */	li r3, 0
lbl_80021174:
/* 80021174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002117C  7C 08 03 A6 */	mtlr r0
/* 80021180  38 21 00 10 */	addi r1, r1, 0x10
/* 80021184  4E 80 00 20 */	blr 
