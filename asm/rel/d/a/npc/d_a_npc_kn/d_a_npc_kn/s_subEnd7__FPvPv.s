lbl_80A30FBC:
/* 80A30FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A30FC0  7C 08 02 A6 */	mflr r0
/* 80A30FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A30FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A30FCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A30FD0  7C 7E 1B 78 */	mr r30, r3
/* 80A30FD4  7C 9F 23 78 */	mr r31, r4
/* 80A30FD8  4B 5E 7D 09 */	bl fopAc_IsActor__FPv
/* 80A30FDC  2C 03 00 00 */	cmpwi r3, 0
/* 80A30FE0  41 82 00 2C */	beq lbl_80A3100C
/* 80A30FE4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A30FE8  2C 00 02 5A */	cmpwi r0, 0x25a
/* 80A30FEC  40 82 00 20 */	bne lbl_80A3100C
/* 80A30FF0  7C 1E F8 40 */	cmplw r30, r31
/* 80A30FF4  41 82 00 18 */	beq lbl_80A3100C
/* 80A30FF8  88 1E 15 AE */	lbz r0, 0x15ae(r30)
/* 80A30FFC  2C 00 00 17 */	cmpwi r0, 0x17
/* 80A31000  41 82 00 0C */	beq lbl_80A3100C
/* 80A31004  38 00 00 17 */	li r0, 0x17
/* 80A31008  98 1E 15 AE */	stb r0, 0x15ae(r30)
lbl_80A3100C:
/* 80A3100C  38 60 00 00 */	li r3, 0
/* 80A31010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A31014  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A31018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3101C  7C 08 03 A6 */	mtlr r0
/* 80A31020  38 21 00 10 */	addi r1, r1, 0x10
/* 80A31024  4E 80 00 20 */	blr 
