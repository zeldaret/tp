lbl_80CB2FD4:
/* 80CB2FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2FD8  7C 08 02 A6 */	mflr r0
/* 80CB2FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2FE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB2FE8  41 82 00 24 */	beq lbl_80CB300C
/* 80CB2FEC  4B 36 5C F5 */	bl fopAc_IsActor__FPv
/* 80CB2FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80CB2FF4  41 82 00 18 */	beq lbl_80CB300C
/* 80CB2FF8  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80CB2FFC  2C 00 01 7A */	cmpwi r0, 0x17a
/* 80CB3000  40 82 00 0C */	bne lbl_80CB300C
/* 80CB3004  7F E3 FB 78 */	mr r3, r31
/* 80CB3008  48 00 00 08 */	b lbl_80CB3010
lbl_80CB300C:
/* 80CB300C  38 60 00 00 */	li r3, 0
lbl_80CB3010:
/* 80CB3010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB3014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3018  7C 08 03 A6 */	mtlr r0
/* 80CB301C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3020  4E 80 00 20 */	blr 
