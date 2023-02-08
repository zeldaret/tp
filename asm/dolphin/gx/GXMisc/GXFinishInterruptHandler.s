lbl_8035C5F0:
/* 8035C5F0  7C 08 02 A6 */	mflr r0
/* 8035C5F4  38 60 00 01 */	li r3, 1
/* 8035C5F8  90 01 00 04 */	stw r0, 4(r1)
/* 8035C5FC  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8035C600  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8035C604  3B E4 00 00 */	addi r31, r4, 0
/* 8035C608  80 AD 93 A8 */	lwz r5, __peReg(r13)
/* 8035C60C  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 8035C610  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8035C614  B0 05 00 0A */	sth r0, 0xa(r5)
/* 8035C618  80 0D 93 EC */	lwz r0, DrawDoneCB(r13)
/* 8035C61C  98 6D 93 F0 */	stb r3, data_80451970(r13)
/* 8035C620  28 00 00 00 */	cmplwi r0, 0
/* 8035C624  41 82 00 30 */	beq lbl_8035C654
/* 8035C628  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C62C  4B FD F9 D5 */	bl OSClearContext
/* 8035C630  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C634  4B FD F8 05 */	bl OSSetCurrentContext
/* 8035C638  81 8D 93 EC */	lwz r12, DrawDoneCB(r13)
/* 8035C63C  7D 88 03 A6 */	mtlr r12
/* 8035C640  4E 80 00 21 */	blrl 
/* 8035C644  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C648  4B FD F9 B9 */	bl OSClearContext
/* 8035C64C  7F E3 FB 78 */	mr r3, r31
/* 8035C650  4B FD F7 E9 */	bl OSSetCurrentContext
lbl_8035C654:
/* 8035C654  38 6D 93 F4 */	la r3, FinishQueue(r13) /* 80451974-_SDA_BASE_ */
/* 8035C658  4B FE 56 41 */	bl OSWakeupThread
/* 8035C65C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8035C660  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8035C664  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8035C668  7C 08 03 A6 */	mtlr r0
/* 8035C66C  4E 80 00 20 */	blr 
