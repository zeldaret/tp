lbl_800E1EB0:
/* 800E1EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1EB4  7C 08 02 A6 */	mflr r0
/* 800E1EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1EC0  7C 7F 1B 78 */	mr r31, r3
/* 800E1EC4  4B FD 54 21 */	bl checkItemActorPointer__9daAlink_cFv
/* 800E1EC8  2C 03 00 00 */	cmpwi r3, 0
/* 800E1ECC  40 82 00 0C */	bne lbl_800E1ED8
/* 800E1ED0  38 60 00 01 */	li r3, 1
/* 800E1ED4  48 00 00 80 */	b lbl_800E1F54
lbl_800E1ED8:
/* 800E1ED8  38 60 00 00 */	li r3, 0
/* 800E1EDC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E1EE0  28 00 00 46 */	cmplwi r0, 0x46
/* 800E1EE4  40 82 00 14 */	bne lbl_800E1EF8
/* 800E1EE8  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E1EEC  28 00 00 54 */	cmplwi r0, 0x54
/* 800E1EF0  40 82 00 08 */	bne lbl_800E1EF8
/* 800E1EF4  38 60 00 01 */	li r3, 1
lbl_800E1EF8:
/* 800E1EF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1EFC  41 82 00 10 */	beq lbl_800E1F0C
/* 800E1F00  7F E3 FB 78 */	mr r3, r31
/* 800E1F04  38 80 00 12 */	li r4, 0x12
/* 800E1F08  4B FD 13 49 */	bl setDoStatus__9daAlink_cFUc
lbl_800E1F0C:
/* 800E1F0C  7F E3 FB 78 */	mr r3, r31
/* 800E1F10  38 80 00 00 */	li r4, 0
/* 800E1F14  4B FD 18 21 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800E1F18  7F E3 FB 78 */	mr r3, r31
/* 800E1F1C  38 80 00 00 */	li r4, 0
/* 800E1F20  4B FD 81 B1 */	bl checkNextAction__9daAlink_cFi
/* 800E1F24  2C 03 00 00 */	cmpwi r3, 0
/* 800E1F28  40 82 00 20 */	bne lbl_800E1F48
/* 800E1F2C  7F E3 FB 78 */	mr r3, r31
/* 800E1F30  4B FE C9 71 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 800E1F34  2C 03 00 00 */	cmpwi r3, 0
/* 800E1F38  41 82 00 18 */	beq lbl_800E1F50
/* 800E1F3C  7F E3 FB 78 */	mr r3, r31
/* 800E1F40  4B FF FE 2D */	bl setCopyRodSight__9daAlink_cFv
/* 800E1F44  48 00 00 0C */	b lbl_800E1F50
lbl_800E1F48:
/* 800E1F48  38 00 00 00 */	li r0, 0
/* 800E1F4C  98 1F 20 68 */	stb r0, 0x2068(r31)
lbl_800E1F50:
/* 800E1F50  38 60 00 01 */	li r3, 1
lbl_800E1F54:
/* 800E1F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1F5C  7C 08 03 A6 */	mtlr r0
/* 800E1F60  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1F64  4E 80 00 20 */	blr 
