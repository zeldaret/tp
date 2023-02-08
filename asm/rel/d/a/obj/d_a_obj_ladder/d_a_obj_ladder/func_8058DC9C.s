lbl_8058DC9C:
/* 8058DC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DCA0  7C 08 02 A6 */	mflr r0
/* 8058DCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DCA8  4B AE AC A9 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 8058DCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DCB0  7C 08 03 A6 */	mtlr r0
/* 8058DCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DCB8  4E 80 00 20 */	blr 
