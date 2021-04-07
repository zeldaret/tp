lbl_8029C900:
/* 8029C900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C904  7C 08 02 A6 */	mflr r0
/* 8029C908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C90C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029C910  93 C1 00 08 */	stw r30, 8(r1)
/* 8029C914  80 6D 8D 24 */	lwz r3, sDspDacWriteBuffer__9JASDriver(r13)
/* 8029C918  38 63 00 01 */	addi r3, r3, 1
/* 8029C91C  88 0D 82 28 */	lbz r0, data_804507A8(r13)
/* 8029C920  7C 03 00 00 */	cmpw r3, r0
/* 8029C924  40 82 00 08 */	bne lbl_8029C92C
/* 8029C928  38 60 00 00 */	li r3, 0
lbl_8029C92C:
/* 8029C92C  80 0D 8D 28 */	lwz r0, sDspDacReadBuffer__9JASDriver(r13)
/* 8029C930  7C 03 00 00 */	cmpw r3, r0
/* 8029C934  40 82 00 10 */	bne lbl_8029C944
/* 8029C938  38 00 00 00 */	li r0, 0
/* 8029C93C  90 0D 8D 2C */	stw r0, sDspStatus__9JASDriver(r13)
/* 8029C940  48 00 00 84 */	b lbl_8029C9C4
lbl_8029C944:
/* 8029C944  90 6D 8D 24 */	stw r3, sDspDacWriteBuffer__9JASDriver(r13)
/* 8029C948  48 00 00 A9 */	bl getSubFrames__9JASDriverFv
/* 8029C94C  90 6D 8D 58 */	stw r3, snIntCount__14JASAudioThread(r13)
/* 8029C950  38 60 00 07 */	li r3, 7
/* 8029C954  3C 80 80 3A */	lis r4, JASAiCtrl__stringBase0@ha /* 0x8039B2F0@ha */
/* 8029C958  38 84 B2 F0 */	addi r4, r4, JASAiCtrl__stringBase0@l /* 0x8039B2F0@l */
/* 8029C95C  38 84 00 1C */	addi r4, r4, 0x1c
/* 8029C960  4B FF 45 85 */	bl start__8JASProbeFlPCc
/* 8029C964  48 00 00 A1 */	bl getFrameSamples__9JASDriverFv
/* 8029C968  7C 7E 1B 78 */	mr r30, r3
/* 8029C96C  80 6D 8D 20 */	lwz r3, sDspDacBuffer__9JASDriver(r13)
/* 8029C970  80 0D 8D 24 */	lwz r0, sDspDacWriteBuffer__9JASDriver(r13)
/* 8029C974  54 00 10 3A */	slwi r0, r0, 2
/* 8029C978  7F E3 00 2E */	lwzx r31, r3, r0
/* 8029C97C  48 00 00 75 */	bl getSubFrames__9JASDriverFv
/* 8029C980  7F E4 FB 78 */	mr r4, r31
/* 8029C984  57 C0 08 3C */	slwi r0, r30, 1
/* 8029C988  7C BF 02 14 */	add r5, r31, r0
/* 8029C98C  48 00 10 59 */	bl syncFrame__6JASDspFUlUlUl
/* 8029C990  38 00 00 01 */	li r0, 1
/* 8029C994  90 0D 8D 2C */	stw r0, sDspStatus__9JASDriver(r13)
/* 8029C998  4B FF FD 2D */	bl updateDSP__9JASDriverFv
/* 8029C99C  81 8D 8D 30 */	lwz r12, sDspDacCallback__9JASDriver(r13)
/* 8029C9A0  28 0C 00 00 */	cmplwi r12, 0
/* 8029C9A4  41 82 00 20 */	beq lbl_8029C9C4
/* 8029C9A8  80 6D 8D 20 */	lwz r3, sDspDacBuffer__9JASDriver(r13)
/* 8029C9AC  80 0D 8D 24 */	lwz r0, sDspDacWriteBuffer__9JASDriver(r13)
/* 8029C9B0  54 00 10 3A */	slwi r0, r0, 2
/* 8029C9B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8029C9B8  7F C4 F3 78 */	mr r4, r30
/* 8029C9BC  7D 89 03 A6 */	mtctr r12
/* 8029C9C0  4E 80 04 21 */	bctrl 
lbl_8029C9C4:
/* 8029C9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029C9C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029C9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C9D0  7C 08 03 A6 */	mtlr r0
/* 8029C9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C9D8  4E 80 00 20 */	blr 
