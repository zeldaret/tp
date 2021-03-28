lbl_804653B0:
/* 804653B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804653B4  7C 08 02 A6 */	mflr r0
/* 804653B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804653BC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 804653C0  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l
/* 804653C4  A8 03 04 B6 */	lha r0, 0x4b6(r3)
/* 804653C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804653CC  7C 85 02 14 */	add r4, r5, r0
/* 804653D0  C0 24 00 04 */	lfs f1, 4(r4)
/* 804653D4  7C 05 04 2E */	lfsx f0, r5, r0
/* 804653D8  D0 03 06 80 */	stfs f0, 0x680(r3)
/* 804653DC  3C 80 80 46 */	lis r4, lit_4256@ha
/* 804653E0  C0 04 68 2C */	lfs f0, lit_4256@l(r4)
/* 804653E4  D0 03 06 84 */	stfs f0, 0x684(r3)
/* 804653E8  D0 23 06 88 */	stfs f1, 0x688(r3)
/* 804653EC  4B FF FB 79 */	bl makeEventId__10daDoor20_cFv
/* 804653F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804653F4  7C 08 03 A6 */	mtlr r0
/* 804653F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804653FC  4E 80 00 20 */	blr 
