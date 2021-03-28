lbl_802BE4A4:
/* 802BE4A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE4A8  7C 08 02 A6 */	mflr r0
/* 802BE4AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE4B0  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE4B4  48 0A 3D 25 */	bl _savegpr_28
/* 802BE4B8  7C 7C 1B 78 */	mr r28, r3
/* 802BE4BC  7C 9D 23 78 */	mr r29, r4
/* 802BE4C0  7C BE 2B 78 */	mr r30, r5
/* 802BE4C4  28 06 00 00 */	cmplwi r6, 0
/* 802BE4C8  41 82 00 14 */	beq lbl_802BE4DC
/* 802BE4CC  7C C3 33 78 */	mr r3, r6
/* 802BE4D0  38 C0 00 00 */	li r6, 0
/* 802BE4D4  4B FF FF D1 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 802BE4D8  48 00 00 B0 */	b lbl_802BE588
lbl_802BE4DC:
/* 802BE4DC  28 1E 00 35 */	cmplwi r30, 0x35
/* 802BE4E0  40 81 00 08 */	ble lbl_802BE4E8
/* 802BE4E4  3B C0 00 00 */	li r30, 0
lbl_802BE4E8:
/* 802BE4E8  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802BE4EC  83 E3 02 20 */	lwz r31, 0x220(r3)
/* 802BE4F0  48 00 00 30 */	b lbl_802BE520
lbl_802BE4F4:
/* 802BE4F4  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BE4F8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802BE4FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BE500  7C 1D 00 40 */	cmplw r29, r0
/* 802BE504  40 82 00 18 */	bne lbl_802BE51C
/* 802BE508  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802BE50C  7C 1E 00 40 */	cmplw r30, r0
/* 802BE510  40 82 00 0C */	bne lbl_802BE51C
/* 802BE514  38 63 00 10 */	addi r3, r3, 0x10
/* 802BE518  4B FE 40 81 */	bl stop__8JAISoundFv
lbl_802BE51C:
/* 802BE51C  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802BE520:
/* 802BE520  28 1F 00 00 */	cmplwi r31, 0
/* 802BE524  40 82 FF D0 */	bne lbl_802BE4F4
/* 802BE528  93 A1 00 08 */	stw r29, 8(r1)
/* 802BE52C  7F 83 E3 78 */	mr r3, r28
/* 802BE530  38 81 00 08 */	addi r4, r1, 8
/* 802BE534  7F C5 F3 78 */	mr r5, r30
/* 802BE538  38 C0 FF FF */	li r6, -1
/* 802BE53C  4B FF FC 09 */	bl startSound__14Z2SoundObjBaseF10JAISoundIDUlSc
/* 802BE540  28 03 00 00 */	cmplwi r3, 0
/* 802BE544  41 82 00 44 */	beq lbl_802BE588
/* 802BE548  80 83 00 00 */	lwz r4, 0(r3)
/* 802BE54C  28 04 00 00 */	cmplwi r4, 0
/* 802BE550  41 82 00 38 */	beq lbl_802BE588
/* 802BE554  93 C4 00 20 */	stw r30, 0x20(r4)
/* 802BE558  28 1E 00 1E */	cmplwi r30, 0x1e
/* 802BE55C  41 80 00 2C */	blt lbl_802BE588
/* 802BE560  28 1E 00 34 */	cmplwi r30, 0x34
/* 802BE564  41 81 00 24 */	bgt lbl_802BE588
/* 802BE568  80 83 00 00 */	lwz r4, 0(r3)
/* 802BE56C  80 A4 00 08 */	lwz r5, 8(r4)
/* 802BE570  28 05 00 00 */	cmplwi r5, 0
/* 802BE574  41 82 00 14 */	beq lbl_802BE588
/* 802BE578  38 80 00 08 */	li r4, 8
/* 802BE57C  88 05 00 11 */	lbz r0, 0x11(r5)
/* 802BE580  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 802BE584  98 05 00 11 */	stb r0, 0x11(r5)
lbl_802BE588:
/* 802BE588  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE58C  48 0A 3C 99 */	bl _restgpr_28
/* 802BE590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE594  7C 08 03 A6 */	mtlr r0
/* 802BE598  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE59C  4E 80 00 20 */	blr 
