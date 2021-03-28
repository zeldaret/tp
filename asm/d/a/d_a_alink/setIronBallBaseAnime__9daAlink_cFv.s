lbl_801151E0:
/* 801151E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801151E4  7C 08 02 A6 */	mflr r0
/* 801151E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801151EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801151F0  7C 7F 1B 78 */	mr r31, r3
/* 801151F4  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 801151F8  28 00 01 9B */	cmplwi r0, 0x19b
/* 801151FC  40 82 00 44 */	bne lbl_80115240
/* 80115200  38 80 01 63 */	li r4, 0x163
/* 80115204  4B F9 73 55 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80115208  2C 03 00 00 */	cmpwi r3, 0
/* 8011520C  40 82 00 34 */	bne lbl_80115240
/* 80115210  7F E3 FB 78 */	mr r3, r31
/* 80115214  38 80 01 63 */	li r4, 0x163
/* 80115218  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha
/* 8011521C  38 A5 EA 70 */	addi r5, r5, m__22daAlinkHIO_ironBall_c0@l
/* 80115220  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 80115224  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 80115228  4B F9 7D B9 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8011522C  C0 1F 20 58 */	lfs f0, 0x2058(r31)
/* 80115230  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 80115234  C0 1F 20 58 */	lfs f0, 0x2058(r31)
/* 80115238  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 8011523C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80115240:
/* 80115240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80115244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80115248  7C 08 03 A6 */	mtlr r0
/* 8011524C  38 21 00 10 */	addi r1, r1, 0x10
/* 80115250  4E 80 00 20 */	blr 
