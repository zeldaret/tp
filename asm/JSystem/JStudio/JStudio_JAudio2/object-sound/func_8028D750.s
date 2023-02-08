lbl_8028D750:
/* 8028D750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D754  7C 08 02 A6 */	mflr r0
/* 8028D758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D75C  38 80 00 00 */	li r4, 0
/* 8028D760  38 63 00 48 */	addi r3, r3, 0x48
/* 8028D764  48 01 57 59 */	bl movePan__18JAISoundParamsMoveFfUl
/* 8028D768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D76C  7C 08 03 A6 */	mtlr r0
/* 8028D770  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D774  4E 80 00 20 */	blr 
