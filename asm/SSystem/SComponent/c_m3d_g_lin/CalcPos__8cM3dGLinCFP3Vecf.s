lbl_8026F350:
/* 8026F350  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026F354  7C 08 02 A6 */	mflr r0
/* 8026F358  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026F35C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8026F360  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8026F364  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8026F368  7C 7E 1B 78 */	mr r30, r3
/* 8026F36C  7C 9F 23 78 */	mr r31, r4
/* 8026F370  FF E0 08 90 */	fmr f31, f1
/* 8026F374  38 7E 00 0C */	addi r3, r30, 0xc
/* 8026F378  7F C4 F3 78 */	mr r4, r30
/* 8026F37C  38 A1 00 08 */	addi r5, r1, 8
/* 8026F380  48 0D 7D 35 */	bl PSVECSubtract
/* 8026F384  38 61 00 08 */	addi r3, r1, 8
/* 8026F388  7C 64 1B 78 */	mr r4, r3
/* 8026F38C  FC 20 F8 90 */	fmr f1, f31
/* 8026F390  48 0D 7D 49 */	bl PSVECScale
/* 8026F394  38 61 00 08 */	addi r3, r1, 8
/* 8026F398  7F C4 F3 78 */	mr r4, r30
/* 8026F39C  7F E5 FB 78 */	mr r5, r31
/* 8026F3A0  48 0D 7C F1 */	bl PSVECAdd
/* 8026F3A4  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8026F3A8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8026F3AC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8026F3B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026F3B4  7C 08 03 A6 */	mtlr r0
/* 8026F3B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8026F3BC  4E 80 00 20 */	blr 
