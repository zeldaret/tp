lbl_801097A0:
/* 801097A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801097A4  7C 08 02 A6 */	mflr r0
/* 801097A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801097AC  39 61 00 20 */	addi r11, r1, 0x20
/* 801097B0  48 25 8A 2D */	bl _savegpr_29
/* 801097B4  7C 7D 1B 78 */	mr r29, r3
/* 801097B8  4B FF EF 25 */	bl resetHookshotMode__9daAlink_cFv
/* 801097BC  7F A3 EB 78 */	mr r3, r29
/* 801097C0  38 80 00 00 */	li r4, 0
/* 801097C4  4B FA D9 CD */	bl cancelItemUseQuake__9daAlink_cFi
/* 801097C8  7F A3 EB 78 */	mr r3, r29
/* 801097CC  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004B@ha */
/* 801097D0  38 84 00 4B */	addi r4, r4, 0x004B /* 0x0002004B@l */
/* 801097D4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 801097D8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801097DC  7D 89 03 A6 */	mtctr r12
/* 801097E0  4E 80 04 21 */	bctrl 
/* 801097E4  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 801097E8  28 00 01 8D */	cmplwi r0, 0x18d
/* 801097EC  40 82 00 24 */	bne lbl_80109810
/* 801097F0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801097F4  D0 1D 1F 50 */	stfs f0, 0x1f50(r29)
/* 801097F8  80 7D 20 60 */	lwz r3, 0x2060(r29)
/* 801097FC  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 80109800  A0 9D 30 A8 */	lhz r4, 0x30a8(r29)
/* 80109804  A0 BD 30 AA */	lhz r5, 0x30aa(r29)
/* 80109808  4B F0 60 41 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 8010980C  48 00 00 64 */	b lbl_80109870
lbl_80109810:
/* 80109810  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80109814  28 00 01 8C */	cmplwi r0, 0x18c
/* 80109818  40 82 00 58 */	bne lbl_80109870
/* 8010981C  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 80109820  3B C0 00 01 */	li r30, 1
/* 80109824  7F E3 FB 78 */	mr r3, r31
/* 80109828  4B F6 9F BD */	bl LockonTruth__12dAttention_cFv
/* 8010982C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80109830  40 82 00 14 */	bne lbl_80109844
/* 80109834  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80109838  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8010983C  40 82 00 08 */	bne lbl_80109844
/* 80109840  3B C0 00 00 */	li r30, 0
lbl_80109844:
/* 80109844  7F A3 EB 78 */	mr r3, r29
/* 80109848  38 80 01 8D */	li r4, 0x18d
/* 8010984C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80109850  41 82 00 14 */	beq lbl_80109864
/* 80109854  3C A0 80 39 */	lis r5, m__22daAlinkHIO_hookshot_c0@ha /* 0x8038E9C0@ha */
/* 80109858  38 A5 E9 C0 */	addi r5, r5, m__22daAlinkHIO_hookshot_c0@l /* 0x8038E9C0@l */
/* 8010985C  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 80109860  48 00 00 08 */	b lbl_80109868
lbl_80109864:
/* 80109864  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_80109868:
/* 80109868  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8010986C  4B FA 3B 3D */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
lbl_80109870:
/* 80109870  38 00 00 00 */	li r0, 0
/* 80109874  B0 1D 30 8E */	sth r0, 0x308e(r29)
/* 80109878  39 61 00 20 */	addi r11, r1, 0x20
/* 8010987C  48 25 89 AD */	bl _restgpr_29
/* 80109880  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80109884  7C 08 03 A6 */	mtlr r0
/* 80109888  38 21 00 20 */	addi r1, r1, 0x20
/* 8010988C  4E 80 00 20 */	blr 
