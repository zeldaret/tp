lbl_80AB50A4:
/* 80AB50A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB50A8  7C 08 02 A6 */	mflr r0
/* 80AB50AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB50B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB50B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB50B8  41 82 00 10 */	beq lbl_80AB50C8
/* 80AB50BC  7C 80 07 35 */	extsh. r0, r4
/* 80AB50C0  40 81 00 08 */	ble lbl_80AB50C8
/* 80AB50C4  4B 81 9C 79 */	bl __dl__FPv
lbl_80AB50C8:
/* 80AB50C8  7F E3 FB 78 */	mr r3, r31
/* 80AB50CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB50D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB50D4  7C 08 03 A6 */	mtlr r0
/* 80AB50D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB50DC  4E 80 00 20 */	blr 
