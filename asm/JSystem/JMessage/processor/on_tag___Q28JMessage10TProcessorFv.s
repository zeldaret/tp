lbl_802A7FE4:
/* 802A7FE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A7FE8  7C 08 02 A6 */	mflr r0
/* 802A7FEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A7FF0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A7FF4  48 0B A1 E5 */	bl _savegpr_28
/* 802A7FF8  7C 7C 1B 78 */	mr r28, r3
/* 802A7FFC  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 802A8000  8B FE 00 00 */	lbz r31, 0(r30)
/* 802A8004  38 1F FF FF */	addi r0, r31, -1
/* 802A8008  7C 1E 02 14 */	add r0, r30, r0
/* 802A800C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A8010  88 9E 00 01 */	lbz r4, 1(r30)
/* 802A8014  8B BE 00 02 */	lbz r29, 2(r30)
/* 802A8018  50 9D 44 2E */	rlwimi r29, r4, 8, 0x10, 0x17
/* 802A801C  57 BD 40 2E */	slwi r29, r29, 8
/* 802A8020  88 1E 00 03 */	lbz r0, 3(r30)
/* 802A8024  7F BD 03 78 */	or r29, r29, r0
/* 802A8028  7F A4 EB 78 */	mr r4, r29
/* 802A802C  38 BE 00 04 */	addi r5, r30, 4
/* 802A8030  38 DF FF FB */	addi r6, r31, -5
/* 802A8034  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8038  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A803C  7D 89 03 A6 */	mtctr r12
/* 802A8040  4E 80 04 21 */	bctrl 
/* 802A8044  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A8048  40 82 00 24 */	bne lbl_802A806C
/* 802A804C  7F 83 E3 78 */	mr r3, r28
/* 802A8050  7F A4 EB 78 */	mr r4, r29
/* 802A8054  38 BE 00 04 */	addi r5, r30, 4
/* 802A8058  38 DF FF FB */	addi r6, r31, -5
/* 802A805C  81 9C 00 00 */	lwz r12, 0(r28)
/* 802A8060  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802A8064  7D 89 03 A6 */	mtctr r12
/* 802A8068  4E 80 04 21 */	bctrl 
lbl_802A806C:
/* 802A806C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A8070  48 0B A1 B5 */	bl _restgpr_28
/* 802A8074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8078  7C 08 03 A6 */	mtlr r0
/* 802A807C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A8080  4E 80 00 20 */	blr 
