lbl_80265CCC:
/* 80265CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80265CD0  7C 08 02 A6 */	mflr r0
/* 80265CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80265CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80265CDC  7C 7F 1B 78 */	mr r31, r3
/* 80265CE0  4B FF FE D5 */	bl CalcArea__4cCcSFv
/* 80265CE4  7F E3 FB 78 */	mr r3, r31
/* 80265CE8  4B FF F2 59 */	bl ChkAtTg__4cCcSFv
/* 80265CEC  7F E3 FB 78 */	mr r3, r31
/* 80265CF0  4B FF F5 41 */	bl ChkCo__4cCcSFv
/* 80265CF4  7F E3 FB 78 */	mr r3, r31
/* 80265CF8  81 9F 28 48 */	lwz r12, 0x2848(r31)
/* 80265CFC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80265D00  7D 89 03 A6 */	mtctr r12
/* 80265D04  4E 80 04 21 */	bctrl 
/* 80265D08  38 00 00 00 */	li r0, 0
/* 80265D0C  B0 1F 28 00 */	sth r0, 0x2800(r31)
/* 80265D10  B0 1F 28 02 */	sth r0, 0x2802(r31)
/* 80265D14  B0 1F 28 04 */	sth r0, 0x2804(r31)
/* 80265D18  B0 1F 28 06 */	sth r0, 0x2806(r31)
/* 80265D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80265D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80265D24  7C 08 03 A6 */	mtlr r0
/* 80265D28  38 21 00 10 */	addi r1, r1, 0x10
/* 80265D2C  4E 80 00 20 */	blr 
