lbl_807CEC40:
/* 807CEC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CEC44  7C 08 02 A6 */	mflr r0
/* 807CEC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CEC4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CEC50  7C 7F 1B 79 */	or. r31, r3, r3
/* 807CEC54  41 82 00 10 */	beq lbl_807CEC64
/* 807CEC58  7C 80 07 35 */	extsh. r0, r4
/* 807CEC5C  40 81 00 08 */	ble lbl_807CEC64
/* 807CEC60  4B B0 00 DC */	b __dl__FPv
lbl_807CEC64:
/* 807CEC64  7F E3 FB 78 */	mr r3, r31
/* 807CEC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CEC6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CEC70  7C 08 03 A6 */	mtlr r0
/* 807CEC74  38 21 00 10 */	addi r1, r1, 0x10
/* 807CEC78  4E 80 00 20 */	blr 
