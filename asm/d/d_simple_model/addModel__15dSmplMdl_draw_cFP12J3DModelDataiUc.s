lbl_80048F70:
/* 80048F70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80048F74  7C 08 02 A6 */	mflr r0
/* 80048F78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80048F7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80048F80  48 31 92 4D */	bl _savegpr_25
/* 80048F84  7C 79 1B 78 */	mr r25, r3
/* 80048F88  7C 9A 23 78 */	mr r26, r4
/* 80048F8C  7C BB 2B 78 */	mr r27, r5
/* 80048F90  7C DC 33 78 */	mr r28, r6
/* 80048F94  3B A0 00 00 */	li r29, 0
/* 80048F98  3B E0 00 00 */	li r31, 0
lbl_80048F9C:
/* 80048F9C  3B DF 00 04 */	addi r30, r31, 4
/* 80048FA0  7F D9 F2 14 */	add r30, r25, r30
/* 80048FA4  7F C3 F3 78 */	mr r3, r30
/* 80048FA8  7F 44 D3 78 */	mr r4, r26
/* 80048FAC  7F 65 DB 78 */	mr r5, r27
/* 80048FB0  48 00 03 D9 */	bl isSame__12diff_model_cFP12J3DModelDatai
/* 80048FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80048FB8  41 82 00 24 */	beq lbl_80048FDC
/* 80048FBC  7F C3 F3 78 */	mr r3, r30
/* 80048FC0  7F 44 D3 78 */	mr r4, r26
/* 80048FC4  7F 65 DB 78 */	mr r5, r27
/* 80048FC8  7F 86 E3 78 */	mr r6, r28
/* 80048FCC  48 00 01 21 */	bl create__12diff_model_cFP12J3DModelDataiUc
/* 80048FD0  30 03 FF FF */	addic r0, r3, -1
/* 80048FD4  7C 60 19 10 */	subfe r3, r0, r3
/* 80048FD8  48 00 00 68 */	b lbl_80049040
lbl_80048FDC:
/* 80048FDC  3B BD 00 01 */	addi r29, r29, 1
/* 80048FE0  2C 1D 00 08 */	cmpwi r29, 8
/* 80048FE4  3B FF 00 14 */	addi r31, r31, 0x14
/* 80048FE8  41 80 FF B4 */	blt lbl_80048F9C
/* 80048FEC  3B A0 00 00 */	li r29, 0
/* 80048FF0  3B E0 00 00 */	li r31, 0
lbl_80048FF4:
/* 80048FF4  3B DF 00 04 */	addi r30, r31, 4
/* 80048FF8  7F D9 F2 14 */	add r30, r25, r30
/* 80048FFC  7F C3 F3 78 */	mr r3, r30
/* 80049000  48 00 01 F5 */	bl getModelData__12diff_model_cFv
/* 80049004  28 03 00 00 */	cmplwi r3, 0
/* 80049008  40 82 00 24 */	bne lbl_8004902C
/* 8004900C  7F C3 F3 78 */	mr r3, r30
/* 80049010  7F 44 D3 78 */	mr r4, r26
/* 80049014  7F 65 DB 78 */	mr r5, r27
/* 80049018  7F 86 E3 78 */	mr r6, r28
/* 8004901C  48 00 00 D1 */	bl create__12diff_model_cFP12J3DModelDataiUc
/* 80049020  30 03 FF FF */	addic r0, r3, -1
/* 80049024  7C 60 19 10 */	subfe r3, r0, r3
/* 80049028  48 00 00 18 */	b lbl_80049040
lbl_8004902C:
/* 8004902C  3B BD 00 01 */	addi r29, r29, 1
/* 80049030  2C 1D 00 08 */	cmpwi r29, 8
/* 80049034  3B FF 00 14 */	addi r31, r31, 0x14
/* 80049038  41 80 FF BC */	blt lbl_80048FF4
/* 8004903C  38 60 00 00 */	li r3, 0
lbl_80049040:
/* 80049040  39 61 00 30 */	addi r11, r1, 0x30
/* 80049044  48 31 91 D5 */	bl _restgpr_25
/* 80049048  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004904C  7C 08 03 A6 */	mtlr r0
/* 80049050  38 21 00 30 */	addi r1, r1, 0x30
/* 80049054  4E 80 00 20 */	blr 
