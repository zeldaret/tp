lbl_80499978:
/* 80499978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049997C  7C 08 02 A6 */	mflr r0
/* 80499980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80499988  93 C1 00 08 */	stw r30, 8(r1)
/* 8049998C  7C 7E 1B 78 */	mr r30, r3
/* 80499990  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80499994  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80499998  40 82 00 40 */	bne lbl_804999D8
/* 8049999C  7F C0 F3 79 */	or. r0, r30, r30
/* 804999A0  41 82 00 2C */	beq lbl_804999CC
/* 804999A4  7C 1F 03 78 */	mr r31, r0
/* 804999A8  4B B7 F1 BC */	b __ct__10fopAc_ac_cFv
/* 804999AC  3C 60 80 4A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 804999B0  38 03 9B 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 804999B4  94 1F 05 80 */	stwu r0, 0x580(r31)
/* 804999B8  7F E3 FB 78 */	mr r3, r31
/* 804999BC  38 80 00 00 */	li r4, 0
/* 804999C0  4B E8 EA 3C */	b init__12J3DFrameCtrlFs
/* 804999C4  38 00 00 00 */	li r0, 0
/* 804999C8  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_804999CC:
/* 804999CC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804999D0  60 00 00 08 */	ori r0, r0, 8
/* 804999D4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_804999D8:
/* 804999D8  3B E0 00 04 */	li r31, 4
/* 804999DC  7F C3 F3 78 */	mr r3, r30
/* 804999E0  3C 80 80 4A */	lis r4, daVrbox2_solidHeapCB__FP10fopAc_ac_c@ha
/* 804999E4  38 84 98 3C */	addi r4, r4, daVrbox2_solidHeapCB__FP10fopAc_ac_c@l
/* 804999E8  3C A0 80 00 */	lis r5, 0x8000 /* 0x80004340@ha */
/* 804999EC  38 A5 43 40 */	addi r5, r5, 0x4340 /* 0x80004340@l */
/* 804999F0  4B B8 0A C0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804999F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804999F8  40 82 00 08 */	bne lbl_80499A00
/* 804999FC  3B E0 00 05 */	li r31, 5
lbl_80499A00:
/* 80499A00  7F E3 FB 78 */	mr r3, r31
/* 80499A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80499A08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80499A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499A10  7C 08 03 A6 */	mtlr r0
/* 80499A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80499A18  4E 80 00 20 */	blr 
