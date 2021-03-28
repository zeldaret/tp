lbl_80CB0378:
/* 80CB0378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB037C  7C 08 02 A6 */	mflr r0
/* 80CB0380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB0388  7C 7F 1B 78 */	mr r31, r3
/* 80CB038C  A8 83 07 36 */	lha r4, 0x736(r3)
/* 80CB0390  7C 80 07 35 */	extsh. r0, r4
/* 80CB0394  40 81 00 10 */	ble lbl_80CB03A4
/* 80CB0398  38 04 FF FF */	addi r0, r4, -1
/* 80CB039C  B0 1F 07 36 */	sth r0, 0x736(r31)
/* 80CB03A0  48 00 00 18 */	b lbl_80CB03B8
lbl_80CB03A4:
/* 80CB03A4  7C 80 07 35 */	extsh. r0, r4
/* 80CB03A8  40 82 00 10 */	bne lbl_80CB03B8
/* 80CB03AC  4B FF F8 5D */	bl on_switch__10daPillar_cFv
/* 80CB03B0  38 00 00 02 */	li r0, 2
/* 80CB03B4  98 1F 07 33 */	stb r0, 0x733(r31)
lbl_80CB03B8:
/* 80CB03B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB03BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB03C0  7C 08 03 A6 */	mtlr r0
/* 80CB03C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB03C8  4E 80 00 20 */	blr 
