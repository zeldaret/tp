lbl_800E0FA0:
/* 800E0FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0FA4  7C 08 02 A6 */	mflr r0
/* 800E0FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0FB0  7C 7F 1B 78 */	mr r31, r3
/* 800E0FB4  4B FD 63 31 */	bl checkItemActorPointer__9daAlink_cFv
/* 800E0FB8  2C 03 00 00 */	cmpwi r3, 0
/* 800E0FBC  40 82 00 0C */	bne lbl_800E0FC8
/* 800E0FC0  38 60 00 01 */	li r3, 1
/* 800E0FC4  48 00 00 88 */	b lbl_800E104C
lbl_800E0FC8:
/* 800E0FC8  38 60 00 00 */	li r3, 0
/* 800E0FCC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E0FD0  28 00 00 40 */	cmplwi r0, 0x40
/* 800E0FD4  41 82 00 0C */	beq lbl_800E0FE0
/* 800E0FD8  28 00 01 02 */	cmplwi r0, 0x102
/* 800E0FDC  40 82 00 14 */	bne lbl_800E0FF0
lbl_800E0FE0:
/* 800E0FE0  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E0FE4  28 00 00 54 */	cmplwi r0, 0x54
/* 800E0FE8  40 82 00 08 */	bne lbl_800E0FF0
/* 800E0FEC  38 60 00 01 */	li r3, 1
lbl_800E0FF0:
/* 800E0FF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0FF4  41 82 00 10 */	beq lbl_800E1004
/* 800E0FF8  7F E3 FB 78 */	mr r3, r31
/* 800E0FFC  38 80 00 12 */	li r4, 0x12
/* 800E1000  4B FD 22 51 */	bl setDoStatus__9daAlink_cFUc
lbl_800E1004:
/* 800E1004  7F E3 FB 78 */	mr r3, r31
/* 800E1008  38 80 00 00 */	li r4, 0
/* 800E100C  4B FD 27 29 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800E1010  7F E3 FB 78 */	mr r3, r31
/* 800E1014  38 80 00 00 */	li r4, 0
/* 800E1018  4B FD 90 B9 */	bl checkNextAction__9daAlink_cFi
/* 800E101C  2C 03 00 00 */	cmpwi r3, 0
/* 800E1020  40 82 00 20 */	bne lbl_800E1040
/* 800E1024  7F E3 FB 78 */	mr r3, r31
/* 800E1028  4B FE D8 79 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 800E102C  2C 03 00 00 */	cmpwi r3, 0
/* 800E1030  41 82 00 18 */	beq lbl_800E1048
/* 800E1034  7F E3 FB 78 */	mr r3, r31
/* 800E1038  4B FF FE 2D */	bl setBoomerangSight__9daAlink_cFv
/* 800E103C  48 00 00 0C */	b lbl_800E1048
lbl_800E1040:
/* 800E1040  38 00 00 00 */	li r0, 0
/* 800E1044  98 1F 20 68 */	stb r0, 0x2068(r31)
lbl_800E1048:
/* 800E1048  38 60 00 01 */	li r3, 1
lbl_800E104C:
/* 800E104C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1054  7C 08 03 A6 */	mtlr r0
/* 800E1058  38 21 00 10 */	addi r1, r1, 0x10
/* 800E105C  4E 80 00 20 */	blr 
