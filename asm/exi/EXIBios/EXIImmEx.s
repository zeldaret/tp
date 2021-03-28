lbl_80342F5C:
/* 80342F5C  7C 08 02 A6 */	mflr r0
/* 80342F60  90 01 00 04 */	stw r0, 4(r1)
/* 80342F64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80342F68  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80342F6C  3B 63 00 00 */	addi r27, r3, 0
/* 80342F70  3B 84 00 00 */	addi r28, r4, 0
/* 80342F74  3B A5 00 00 */	addi r29, r5, 0
/* 80342F78  3B C6 00 00 */	addi r30, r6, 0
/* 80342F7C  48 00 00 60 */	b lbl_80342FDC
lbl_80342F80:
/* 80342F80  2C 1D 00 04 */	cmpwi r29, 4
/* 80342F84  40 80 00 0C */	bge lbl_80342F90
/* 80342F88  7F BF EB 78 */	mr r31, r29
/* 80342F8C  48 00 00 08 */	b lbl_80342F94
lbl_80342F90:
/* 80342F90  3B E0 00 04 */	li r31, 4
lbl_80342F94:
/* 80342F94  38 BF 00 00 */	addi r5, r31, 0
/* 80342F98  38 7B 00 00 */	addi r3, r27, 0
/* 80342F9C  38 9C 00 00 */	addi r4, r28, 0
/* 80342FA0  38 DE 00 00 */	addi r6, r30, 0
/* 80342FA4  38 E0 00 00 */	li r7, 0
/* 80342FA8  4B FF FD 59 */	bl EXIImm
/* 80342FAC  2C 03 00 00 */	cmpwi r3, 0
/* 80342FB0  40 82 00 0C */	bne lbl_80342FBC
/* 80342FB4  38 60 00 00 */	li r3, 0
/* 80342FB8  48 00 00 30 */	b lbl_80342FE8
lbl_80342FBC:
/* 80342FBC  7F 63 DB 78 */	mr r3, r27
/* 80342FC0  48 00 01 29 */	bl EXISync
/* 80342FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80342FC8  40 82 00 0C */	bne lbl_80342FD4
/* 80342FCC  38 60 00 00 */	li r3, 0
/* 80342FD0  48 00 00 18 */	b lbl_80342FE8
lbl_80342FD4:
/* 80342FD4  7F 9C FA 14 */	add r28, r28, r31
/* 80342FD8  7F BF E8 50 */	subf r29, r31, r29
lbl_80342FDC:
/* 80342FDC  2C 1D 00 00 */	cmpwi r29, 0
/* 80342FE0  40 82 FF A0 */	bne lbl_80342F80
/* 80342FE4  38 60 00 01 */	li r3, 1
lbl_80342FE8:
/* 80342FE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80342FEC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80342FF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80342FF4  7C 08 03 A6 */	mtlr r0
/* 80342FF8  4E 80 00 20 */	blr 
