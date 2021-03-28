lbl_807D3F2C:
/* 807D3F2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D3F30  7C 08 02 A6 */	mflr r0
/* 807D3F34  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D3F38  39 61 00 30 */	addi r11, r1, 0x30
/* 807D3F3C  4B B8 E2 90 */	b _savegpr_25
/* 807D3F40  7C 79 1B 78 */	mr r25, r3
/* 807D3F44  3B 60 00 00 */	li r27, 0
/* 807D3F48  3B 40 00 00 */	li r26, 0
/* 807D3F4C  3B E0 00 00 */	li r31, 0
/* 807D3F50  3B C0 00 00 */	li r30, 0
/* 807D3F54  3C 60 80 7E */	lis r3, yaa@ha
/* 807D3F58  3B 83 2F 9C */	addi r28, r3, yaa@l
/* 807D3F5C  3C 60 80 7E */	lis r3, saku_bit@ha
/* 807D3F60  3B A3 2F A4 */	addi r29, r3, saku_bit@l
lbl_807D3F64:
/* 807D3F64  7F 23 CB 78 */	mr r3, r25
/* 807D3F68  7C 9C F2 AE */	lhax r4, r28, r30
/* 807D3F6C  4B FF FE 29 */	bl e_wb_saku_check_sub__FP10e_wb_classs
/* 807D3F70  2C 03 00 00 */	cmpwi r3, 0
/* 807D3F74  41 82 00 0C */	beq lbl_807D3F80
/* 807D3F78  7C 1D F8 2E */	lwzx r0, r29, r31
/* 807D3F7C  7F 7B 03 78 */	or r27, r27, r0
lbl_807D3F80:
/* 807D3F80  3B 5A 00 01 */	addi r26, r26, 1
/* 807D3F84  2C 1A 00 03 */	cmpwi r26, 3
/* 807D3F88  3B FF 00 04 */	addi r31, r31, 4
/* 807D3F8C  3B DE 00 02 */	addi r30, r30, 2
/* 807D3F90  41 80 FF D4 */	blt lbl_807D3F64
/* 807D3F94  7F 63 DB 78 */	mr r3, r27
/* 807D3F98  39 61 00 30 */	addi r11, r1, 0x30
/* 807D3F9C  4B B8 E2 7C */	b _restgpr_25
/* 807D3FA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D3FA4  7C 08 03 A6 */	mtlr r0
/* 807D3FA8  38 21 00 30 */	addi r1, r1, 0x30
/* 807D3FAC  4E 80 00 20 */	blr 
