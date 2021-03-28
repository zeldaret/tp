lbl_8058D710:
/* 8058D710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D714  7C 08 02 A6 */	mflr r0
/* 8058D718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D71C  A8 C3 06 10 */	lha r6, 0x610(r3)
/* 8058D720  3C 80 80 59 */	lis r4, data_8058DD50@ha
/* 8058D724  38 A4 DD 50 */	addi r5, r4, data_8058DD50@l
/* 8058D728  A8 05 00 16 */	lha r0, 0x16(r5)
/* 8058D72C  7C 06 02 14 */	add r0, r6, r0
/* 8058D730  B0 03 06 10 */	sth r0, 0x610(r3)
/* 8058D734  A8 83 06 12 */	lha r4, 0x612(r3)
/* 8058D738  A8 05 00 18 */	lha r0, 0x18(r5)
/* 8058D73C  7C 04 02 14 */	add r0, r4, r0
/* 8058D740  B0 03 06 12 */	sth r0, 0x612(r3)
/* 8058D744  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8058D748  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8058D74C  38 84 00 04 */	addi r4, r4, 4
/* 8058D750  A8 03 06 10 */	lha r0, 0x610(r3)
/* 8058D754  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8058D758  7C 24 04 2E */	lfsx f1, r4, r0
/* 8058D75C  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 8058D760  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058D764  D0 03 06 14 */	stfs f0, 0x614(r3)
/* 8058D768  A8 03 06 12 */	lha r0, 0x612(r3)
/* 8058D76C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8058D770  7C 24 04 2E */	lfsx f1, r4, r0
/* 8058D774  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 8058D778  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058D77C  D0 03 06 18 */	stfs f0, 0x618(r3)
/* 8058D780  A8 83 05 B4 */	lha r4, 0x5b4(r3)
/* 8058D784  38 04 FF FF */	addi r0, r4, -1
/* 8058D788  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 8058D78C  7C 00 07 35 */	extsh. r0, r0
/* 8058D790  41 81 00 08 */	bgt lbl_8058D798
/* 8058D794  48 00 00 15 */	bl mode_drop_init__Q211daObjLadder5Act_cFv
lbl_8058D798:
/* 8058D798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D79C  7C 08 03 A6 */	mtlr r0
/* 8058D7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D7A4  4E 80 00 20 */	blr 
