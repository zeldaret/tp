lbl_80257AE0:
/* 80257AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257AE4  7C 08 02 A6 */	mflr r0
/* 80257AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80257AF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80257AF4  7C 7E 1B 78 */	mr r30, r3
/* 80257AF8  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 80257AFC  7F C4 F3 78 */	mr r4, r30
/* 80257B00  4B FF FF B5 */	bl resLoad__FP30request_of_phase_process_classP10dScnLogo_c
/* 80257B04  7C 7F 1B 78 */	mr r31, r3
/* 80257B08  2C 1F 00 04 */	cmpwi r31, 4
/* 80257B0C  41 82 00 08 */	beq lbl_80257B14
/* 80257B10  48 00 01 3C */	b lbl_80257C4C
lbl_80257B14:
/* 80257B14  80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 80257B18  4B DB 76 B5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80257B1C  90 7E 01 D8 */	stw r3, 0x1d8(r30)
/* 80257B20  7F C3 F3 78 */	mr r3, r30
/* 80257B24  48 00 01 41 */	bl logoInitGC__10dScnLogo_cFv
/* 80257B28  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 80257B2C  48 07 69 0D */	bl becomeCurrentHeap__7JKRHeapFv
/* 80257B30  7F C3 F3 78 */	mr r3, r30
/* 80257B34  48 00 04 B9 */	bl dvdDataLoad__10dScnLogo_cFv
/* 80257B38  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80257B3C  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 80257B40  48 06 2A 2D */	bl loadStaticWaves__10Z2SceneMgrFv
/* 80257B44  80 8D 8C 40 */	lwz r4, sManager__10JFWDisplay(r13)
/* 80257B48  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80257B4C  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80257B50  54 03 F0 BE */	srwi r3, r0, 2
/* 80257B54  38 00 00 3C */	li r0, 0x3c
/* 80257B58  7C 03 03 96 */	divwu r0, r3, r0
/* 80257B5C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80257B60  38 00 00 00 */	li r0, 0
/* 80257B64  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 80257B68  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80257B6C  38 80 00 00 */	li r4, 0
/* 80257B70  48 01 B0 F1 */	bl waitBlanking__10JFWDisplayFi
/* 80257B74  38 00 00 00 */	li r0, 0
/* 80257B78  98 1E 02 0A */	stb r0, 0x20a(r30)
/* 80257B7C  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80257B80  80 63 00 04 */	lwz r3, 4(r3)
/* 80257B84  28 03 00 00 */	cmplwi r3, 0
/* 80257B88  41 82 00 18 */	beq lbl_80257BA0
/* 80257B8C  38 80 00 1E */	li r4, 0x1e
/* 80257B90  81 83 00 00 */	lwz r12, 0(r3)
/* 80257B94  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80257B98  7D 89 03 A6 */	mtctr r12
/* 80257B9C  4E 80 04 21 */	bctrl 
lbl_80257BA0:
/* 80257BA0  7F C3 F3 78 */	mr r3, r30
/* 80257BA4  4B FF E5 F5 */	bl checkProgSelect__10dScnLogo_cFv
/* 80257BA8  88 1E 02 0A */	lbz r0, 0x20a(r30)
/* 80257BAC  28 00 00 00 */	cmplwi r0, 0
/* 80257BB0  41 82 00 28 */	beq lbl_80257BD8
/* 80257BB4  38 00 00 08 */	li r0, 8
/* 80257BB8  98 1E 02 08 */	stb r0, 0x208(r30)
/* 80257BBC  38 00 00 1E */	li r0, 0x1e
/* 80257BC0  B0 1E 02 0C */	sth r0, 0x20c(r30)
/* 80257BC4  7F C3 F3 78 */	mr r3, r30
/* 80257BC8  48 00 09 35 */	bl getProgressiveMode__10dScnLogo_cFv
/* 80257BCC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80257BD0  90 1E 02 18 */	stw r0, 0x218(r30)
/* 80257BD4  48 00 00 44 */	b lbl_80257C18
lbl_80257BD8:
/* 80257BD8  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80257BDC  88 03 00 15 */	lbz r0, 0x15(r3)
/* 80257BE0  28 00 00 00 */	cmplwi r0, 0
/* 80257BE4  41 82 00 18 */	beq lbl_80257BFC
/* 80257BE8  38 00 00 5A */	li r0, 0x5a
/* 80257BEC  B0 1E 02 0C */	sth r0, 0x20c(r30)
/* 80257BF0  38 00 00 03 */	li r0, 3
/* 80257BF4  98 1E 02 08 */	stb r0, 0x208(r30)
/* 80257BF8  48 00 00 14 */	b lbl_80257C0C
lbl_80257BFC:
/* 80257BFC  38 00 00 78 */	li r0, 0x78
/* 80257C00  B0 1E 02 0C */	sth r0, 0x20c(r30)
/* 80257C04  38 00 00 00 */	li r0, 0
/* 80257C08  98 1E 02 08 */	stb r0, 0x208(r30)
lbl_80257C0C:
/* 80257C0C  38 00 00 01 */	li r0, 1
/* 80257C10  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80257C14  98 03 00 13 */	stb r0, 0x13(r3)
lbl_80257C18:
/* 80257C18  38 80 00 00 */	li r4, 0
/* 80257C1C  98 8D 8F 81 */	stb r4, struct_80451500+0x1(r13)
/* 80257C20  3C 60 80 01 */	lis r3, mDoRst_resetCallBack__FiPv@ha /* 0x8001574C@ha */
/* 80257C24  38 03 57 4C */	addi r0, r3, mDoRst_resetCallBack__FiPv@l /* 0x8001574C@l */
/* 80257C28  90 0D 8F 6C */	stw r0, sCallback__Q210JUTGamePad13C3ButtonReset(r13)
/* 80257C2C  90 8D 8F 70 */	stw r4, sCallbackArg__Q210JUTGamePad13C3ButtonReset(r13)
/* 80257C30  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80257C34  90 83 00 00 */	stw r4, 0(r3)
/* 80257C38  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80257C3C  90 83 00 04 */	stw r4, 4(r3)
/* 80257C40  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80257C44  90 83 00 04 */	stw r4, 4(r3)
/* 80257C48  7F E3 FB 78 */	mr r3, r31
lbl_80257C4C:
/* 80257C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257C50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80257C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257C58  7C 08 03 A6 */	mtlr r0
/* 80257C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80257C60  4E 80 00 20 */	blr 
