lbl_804A9734:
/* 804A9734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A9738  7C 08 02 A6 */	mflr r0
/* 804A973C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9740  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9744  4B EB 8A 94 */	b _savegpr_28
/* 804A9748  2C 04 00 00 */	cmpwi r4, 0
/* 804A974C  40 82 00 90 */	bne lbl_804A97DC
/* 804A9750  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 804A9754  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804A9758  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 804A975C  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 804A9760  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 804A9764  28 1C 00 00 */	cmplwi r28, 0
/* 804A9768  41 82 00 74 */	beq lbl_804A97DC
/* 804A976C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804A9770  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A9774  1F BF 00 30 */	mulli r29, r31, 0x30
/* 804A9778  7C 60 EA 14 */	add r3, r0, r29
/* 804A977C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804A9780  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804A9784  80 84 00 00 */	lwz r4, 0(r4)
/* 804A9788  4B E9 CD 28 */	b PSMTXCopy
/* 804A978C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804A9790  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804A9794  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9798  57 E0 08 3C */	slwi r0, r31, 1
/* 804A979C  7C 9C 02 14 */	add r4, r28, r0
/* 804A97A0  A8 84 10 1A */	lha r4, 0x101a(r4)
/* 804A97A4  4B B6 2B F8 */	b mDoMtx_XrotM__FPA4_fs
/* 804A97A8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804A97AC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804A97B0  80 63 00 00 */	lwz r3, 0(r3)
/* 804A97B4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 804A97B8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804A97BC  7C 80 EA 14 */	add r4, r0, r29
/* 804A97C0  4B E9 CC F0 */	b PSMTXCopy
/* 804A97C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804A97C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804A97CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804A97D0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 804A97D4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 804A97D8  4B E9 CC D8 */	b PSMTXCopy
lbl_804A97DC:
/* 804A97DC  38 60 00 01 */	li r3, 1
/* 804A97E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A97E4  4B EB 8A 40 */	b _restgpr_28
/* 804A97E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A97EC  7C 08 03 A6 */	mtlr r0
/* 804A97F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804A97F4  4E 80 00 20 */	blr 
