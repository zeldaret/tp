lbl_802C56C0:
/* 802C56C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C56C4  7C 08 02 A6 */	mflr r0
/* 802C56C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C56CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C56D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802C56D4  7C 9E 23 78 */	mr r30, r4
/* 802C56D8  3C 80 00 06 */	lis r4, 0x0006 /* 0x00060051@ha */
/* 802C56DC  38 04 00 51 */	addi r0, r4, 0x0051 /* 0x00060051@l */
/* 802C56E0  90 01 00 08 */	stw r0, 8(r1)
/* 802C56E4  38 81 00 08 */	addi r4, r1, 8
/* 802C56E8  38 A0 00 00 */	li r5, 0
/* 802C56EC  38 C0 FF FF */	li r6, -1
/* 802C56F0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C56F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C56F8  7D 89 03 A6 */	mtctr r12
/* 802C56FC  4E 80 04 21 */	bctrl 
/* 802C5700  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C5704  41 82 00 A0 */	beq lbl_802C57A4
/* 802C5708  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C570C  28 00 00 00 */	cmplwi r0, 0
/* 802C5710  41 82 00 94 */	beq lbl_802C57A4
/* 802C5714  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802C5718  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C571C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5720  3C 00 43 30 */	lis r0, 0x4330
/* 802C5724  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C5728  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C572C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C5730  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C5734  C0 62 C3 34 */	lfs f3, lit_4645(r2)
/* 802C5738  C0 82 C3 38 */	lfs f4, lit_4646(r2)
/* 802C573C  C0 A2 C3 3C */	lfs f5, lit_4647(r2)
/* 802C5740  C0 C2 C3 2C */	lfs f6, lit_4624(r2)
/* 802C5744  38 60 00 01 */	li r3, 1
/* 802C5748  4B FE 3F AD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C574C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C5750  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5754  38 80 00 00 */	li r4, 0
/* 802C5758  4B FD D6 B5 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C575C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802C5760  C8 22 C3 10 */	lfd f1, lit_3954(r2)
/* 802C5764  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C5768  3C 00 43 30 */	lis r0, 0x4330
/* 802C576C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C5770  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C5774  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C5778  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C577C  C0 62 C3 34 */	lfs f3, lit_4645(r2)
/* 802C5780  C0 82 C3 38 */	lfs f4, lit_4646(r2)
/* 802C5784  C0 A2 C2 FC */	lfs f5, lit_3946(r2)
/* 802C5788  C0 C2 C2 98 */	lfs f6, lit_3721(r2)
/* 802C578C  38 60 00 01 */	li r3, 1
/* 802C5790  4B FE 3F 65 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5794  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C5798  38 63 00 48 */	addi r3, r3, 0x48
/* 802C579C  38 80 00 00 */	li r4, 0
/* 802C57A0  4B FD D6 15 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C57A4:
/* 802C57A4  7F E3 FB 78 */	mr r3, r31
/* 802C57A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C57AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802C57B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C57B4  7C 08 03 A6 */	mtlr r0
/* 802C57B8  38 21 00 30 */	addi r1, r1, 0x30
/* 802C57BC  4E 80 00 20 */	blr 
