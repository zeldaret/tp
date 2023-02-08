lbl_8036D71C:
/* 8036D71C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036D720  7C 08 02 A6 */	mflr r0
/* 8036D724  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036D728  38 00 00 00 */	li r0, 0
/* 8036D72C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8036D730  7C 9C 23 78 */	mr r28, r4
/* 8036D734  7C 7B 1B 78 */	mr r27, r3
/* 8036D738  3B C0 03 00 */	li r30, 0x300
/* 8036D73C  3B A0 00 00 */	li r29, 0
/* 8036D740  90 04 00 00 */	stw r0, 0(r4)
/* 8036D744  48 00 00 6C */	b lbl_8036D7B0
lbl_8036D748:
/* 8036D748  2C 1D 00 00 */	cmpwi r29, 0
/* 8036D74C  3B E0 00 00 */	li r31, 0
/* 8036D750  41 80 00 1C */	blt lbl_8036D76C
/* 8036D754  2C 1D 00 03 */	cmpwi r29, 3
/* 8036D758  40 80 00 14 */	bge lbl_8036D76C
/* 8036D75C  1C 9D 08 90 */	mulli r4, r29, 0x890
/* 8036D760  3C 60 80 45 */	lis r3, gTRKMsgBufs@ha /* 0x8044D8C0@ha */
/* 8036D764  38 03 D8 C0 */	addi r0, r3, gTRKMsgBufs@l /* 0x8044D8C0@l */
/* 8036D768  7F E0 22 14 */	add r31, r0, r4
lbl_8036D76C:
/* 8036D76C  7F E3 FB 78 */	mr r3, r31
/* 8036D770  48 00 1D 31 */	bl TRKAcquireMutex
/* 8036D774  80 1F 00 04 */	lwz r0, 4(r31)
/* 8036D778  2C 00 00 00 */	cmpwi r0, 0
/* 8036D77C  40 82 00 28 */	bne lbl_8036D7A4
/* 8036D780  38 60 00 00 */	li r3, 0
/* 8036D784  38 00 00 01 */	li r0, 1
/* 8036D788  90 7F 00 08 */	stw r3, 8(r31)
/* 8036D78C  3B C0 00 00 */	li r30, 0
/* 8036D790  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8036D794  90 1F 00 04 */	stw r0, 4(r31)
/* 8036D798  93 FC 00 00 */	stw r31, 0(r28)
/* 8036D79C  93 BB 00 00 */	stw r29, 0(r27)
/* 8036D7A0  3B A0 00 03 */	li r29, 3
lbl_8036D7A4:
/* 8036D7A4  7F E3 FB 78 */	mr r3, r31
/* 8036D7A8  48 00 1C F1 */	bl TRKReleaseMutex
/* 8036D7AC  3B BD 00 01 */	addi r29, r29, 1
lbl_8036D7B0:
/* 8036D7B0  2C 1D 00 03 */	cmpwi r29, 3
/* 8036D7B4  41 80 FF 94 */	blt lbl_8036D748
/* 8036D7B8  2C 1E 03 00 */	cmpwi r30, 0x300
/* 8036D7BC  40 82 00 10 */	bne lbl_8036D7CC
/* 8036D7C0  3C 60 80 3A */	lis r3, lit_618@ha /* 0x803A26E0@ha */
/* 8036D7C4  38 63 26 E0 */	addi r3, r3, lit_618@l /* 0x803A26E0@l */
/* 8036D7C8  48 00 03 4D */	bl usr_puts_serial
lbl_8036D7CC:
/* 8036D7CC  7F C3 F3 78 */	mr r3, r30
/* 8036D7D0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8036D7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036D7D8  7C 08 03 A6 */	mtlr r0
/* 8036D7DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8036D7E0  4E 80 00 20 */	blr 
