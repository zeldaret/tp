lbl_80D5FF40:
/* 80D5FF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FF44  7C 08 02 A6 */	mflr r0
/* 80D5FF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FF4C  4B FF FC A1 */	bl Delete__14daTagRmbitSw_cFv
/* 80D5FF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FF54  7C 08 03 A6 */	mtlr r0
/* 80D5FF58  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FF5C  4E 80 00 20 */	blr 
