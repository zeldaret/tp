lbl_80CE40FC:
/* 80CE40FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4100  7C 08 02 A6 */	mflr r0
/* 80CE4104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE410C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE4110  7C 7E 1B 78 */	mr r30, r3
/* 80CE4114  7C 9F 23 78 */	mr r31, r4
/* 80CE4118  48 00 00 35 */	bl moveLift__12daSpinLift_cFv
/* 80CE411C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CE4120  38 03 00 24 */	addi r0, r3, 0x24
/* 80CE4124  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE4128  7F C3 F3 78 */	mr r3, r30
/* 80CE412C  4B FF FD 01 */	bl setBaseMtx__12daSpinLift_cFv
/* 80CE4130  38 60 00 01 */	li r3, 1
/* 80CE4134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE4138  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE413C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4140  7C 08 03 A6 */	mtlr r0
/* 80CE4144  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4148  4E 80 00 20 */	blr 
