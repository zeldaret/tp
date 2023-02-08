lbl_80200F50:
/* 80200F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200F54  7C 08 02 A6 */	mflr r0
/* 80200F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200F60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200F64  41 82 00 1C */	beq lbl_80200F80
/* 80200F68  3C A0 80 3C */	lis r5, __vt__22dMeter_drawLetterHIO_c@ha /* 0x803BF178@ha */
/* 80200F6C  38 05 F1 78 */	addi r0, r5, __vt__22dMeter_drawLetterHIO_c@l /* 0x803BF178@l */
/* 80200F70  90 1F 00 00 */	stw r0, 0(r31)
/* 80200F74  7C 80 07 35 */	extsh. r0, r4
/* 80200F78  40 81 00 08 */	ble lbl_80200F80
/* 80200F7C  48 0C DD C1 */	bl __dl__FPv
lbl_80200F80:
/* 80200F80  7F E3 FB 78 */	mr r3, r31
/* 80200F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200F8C  7C 08 03 A6 */	mtlr r0
/* 80200F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80200F94  4E 80 00 20 */	blr 
