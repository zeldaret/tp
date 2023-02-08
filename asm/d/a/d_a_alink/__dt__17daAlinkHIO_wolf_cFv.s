lbl_80140B98:
/* 80140B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140B9C  7C 08 02 A6 */	mflr r0
/* 80140BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140BA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80140BAC  41 82 00 10 */	beq lbl_80140BBC
/* 80140BB0  7C 80 07 35 */	extsh. r0, r4
/* 80140BB4  40 81 00 08 */	ble lbl_80140BBC
/* 80140BB8  48 18 E1 85 */	bl __dl__FPv
lbl_80140BBC:
/* 80140BBC  7F E3 FB 78 */	mr r3, r31
/* 80140BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140BC8  7C 08 03 A6 */	mtlr r0
/* 80140BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80140BD0  4E 80 00 20 */	blr 
