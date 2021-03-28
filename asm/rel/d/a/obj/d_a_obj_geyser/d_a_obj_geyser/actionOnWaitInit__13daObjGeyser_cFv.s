lbl_80BF82D0:
/* 80BF82D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF82D4  7C 08 02 A6 */	mflr r0
/* 80BF82D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF82DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF82E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF82E4  7C 7E 1B 78 */	mr r30, r3
/* 80BF82E8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BF82EC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BF82F0  7C 1F 03 78 */	mr r31, r0
/* 80BF82F4  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF82F8  40 82 00 08 */	bne lbl_80BF8300
/* 80BF82FC  3B E0 00 04 */	li r31, 4
lbl_80BF8300:
/* 80BF8300  7F C3 F3 78 */	mr r3, r30
/* 80BF8304  48 00 06 11 */	bl setEmitterPre00__13daObjGeyser_cFv
/* 80BF8308  7F C3 F3 78 */	mr r3, r30
/* 80BF830C  48 00 06 A1 */	bl setEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF8310  7F C3 F3 78 */	mr r3, r30
/* 80BF8314  48 00 06 9D */	bl setEmitterSrc01Smk__13daObjGeyser_cFv
/* 80BF8318  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80BF831C  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BF8320  B0 1E 07 60 */	sth r0, 0x760(r30)
/* 80BF8324  38 00 00 01 */	li r0, 1
/* 80BF8328  98 1E 07 62 */	stb r0, 0x762(r30)
/* 80BF832C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF8330  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF8334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8338  7C 08 03 A6 */	mtlr r0
/* 80BF833C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8340  4E 80 00 20 */	blr 
