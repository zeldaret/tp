lbl_802C57C0:
/* 802C57C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C57C4  7C 08 02 A6 */	mflr r0
/* 802C57C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C57CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802C57D0  48 09 CA 0D */	bl _savegpr_29
/* 802C57D4  7C 7D 1B 78 */	mr r29, r3
/* 802C57D8  7C 9E 23 78 */	mr r30, r4
/* 802C57DC  80 04 00 00 */	lwz r0, 0(r4)
/* 802C57E0  90 01 00 08 */	stw r0, 8(r1)
/* 802C57E4  38 81 00 08 */	addi r4, r1, 8
/* 802C57E8  4B FF 89 5D */	bl startSound__14Z2SoundObjBaseF10JAISoundIDUlSc
/* 802C57EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C57F0  41 82 00 80 */	beq lbl_802C5870
/* 802C57F4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C57F8  28 00 00 00 */	cmplwi r0, 0
/* 802C57FC  41 82 00 74 */	beq lbl_802C5870
/* 802C5800  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C5804  3C 03 FF FA */	addis r0, r3, 0xfffa
/* 802C5808  28 00 00 50 */	cmplwi r0, 0x50
/* 802C580C  40 82 00 64 */	bne lbl_802C5870
/* 802C5810  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 802C5814  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C5818  C0 62 C3 30 */	lfs f3, lit_4625(r2)
/* 802C581C  C0 82 C3 38 */	lfs f4, lit_4646(r2)
/* 802C5820  C0 A2 C3 3C */	lfs f5, lit_4647(r2)
/* 802C5824  C0 C2 C3 2C */	lfs f6, lit_4624(r2)
/* 802C5828  38 60 00 01 */	li r3, 1
/* 802C582C  4B FE 3E C9 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5830  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C5834  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5838  38 80 00 00 */	li r4, 0
/* 802C583C  4B FD D5 D1 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C5840  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 802C5844  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C5848  C0 62 C3 30 */	lfs f3, lit_4625(r2)
/* 802C584C  C0 82 C3 38 */	lfs f4, lit_4646(r2)
/* 802C5850  C0 A2 C2 F0 */	lfs f5, lit_3943(r2)
/* 802C5854  C0 C2 C2 98 */	lfs f6, lit_3721(r2)
/* 802C5858  38 60 00 01 */	li r3, 1
/* 802C585C  4B FE 3E 99 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5860  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C5864  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5868  38 80 00 00 */	li r4, 0
/* 802C586C  4B FD D5 49 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C5870:
/* 802C5870  7F E3 FB 78 */	mr r3, r31
/* 802C5874  39 61 00 20 */	addi r11, r1, 0x20
/* 802C5878  48 09 C9 B1 */	bl _restgpr_29
/* 802C587C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C5880  7C 08 03 A6 */	mtlr r0
/* 802C5884  38 21 00 20 */	addi r1, r1, 0x20
/* 802C5888  4E 80 00 20 */	blr 
