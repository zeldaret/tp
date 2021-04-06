lbl_80CCD8F8:
/* 80CCD8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD8FC  7C 08 02 A6 */	mflr r0
/* 80CCD900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD904  4B 3A AF D9 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CCD908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD90C  7C 08 03 A6 */	mtlr r0
/* 80CCD910  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD914  4E 80 00 20 */	blr 
