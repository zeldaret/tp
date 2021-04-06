lbl_80C58018:
/* 80C58018  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5801C  7C 08 02 A6 */	mflr r0
/* 80C58020  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C58024  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C58028  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C5802C  7C 7E 1B 78 */	mr r30, r3
/* 80C58030  3C 60 80 C6 */	lis r3, mCcDObjInfo__13daLv3Candle_c@ha /* 0x80C58564@ha */
/* 80C58034  3B E3 85 64 */	addi r31, r3, mCcDObjInfo__13daLv3Candle_c@l /* 0x80C58564@l */
/* 80C58038  88 1E 07 08 */	lbz r0, 0x708(r30)
/* 80C5803C  28 00 00 00 */	cmplwi r0, 0
/* 80C58040  40 82 00 48 */	bne lbl_80C58088
/* 80C58044  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C58048  90 01 00 08 */	stw r0, 8(r1)
/* 80C5804C  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80C58050  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C58054  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80C58058  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80C5805C  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80C58060  4B 61 79 1D */	bl cLib_addCalc__FPfffff
/* 80C58064  C0 3E 07 0C */	lfs f1, 0x70c(r30)
/* 80C58068  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C5806C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C58070  4C 41 13 82 */	cror 2, 1, 2
/* 80C58074  40 82 00 14 */	bne lbl_80C58088
/* 80C58078  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 80C5807C  38 81 00 08 */	addi r4, r1, 8
/* 80C58080  38 A0 00 00 */	li r5, 0
/* 80C58084  4B 55 1C DD */	bl dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80C58088:
/* 80C58088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C5808C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C58090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C58094  7C 08 03 A6 */	mtlr r0
/* 80C58098  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5809C  4E 80 00 20 */	blr 
