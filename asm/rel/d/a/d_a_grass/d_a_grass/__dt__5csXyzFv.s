lbl_8051EB4C:
/* 8051EB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EB50  7C 08 02 A6 */	mflr r0
/* 8051EB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EB58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051EB5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051EB60  41 82 00 10 */	beq lbl_8051EB70
/* 8051EB64  7C 80 07 35 */	extsh. r0, r4
/* 8051EB68  40 81 00 08 */	ble lbl_8051EB70
/* 8051EB6C  4B DB 01 D0 */	b __dl__FPv
lbl_8051EB70:
/* 8051EB70  7F E3 FB 78 */	mr r3, r31
/* 8051EB74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051EB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EB7C  7C 08 03 A6 */	mtlr r0
/* 8051EB80  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EB84  4E 80 00 20 */	blr 
