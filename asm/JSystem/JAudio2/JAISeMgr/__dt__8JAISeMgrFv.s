lbl_802A08FC:
/* 802A08FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0900  7C 08 02 A6 */	mflr r0
/* 802A0904  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A090C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A0910  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A0914  7C 9F 23 78 */	mr r31, r4
/* 802A0918  41 82 00 60 */	beq lbl_802A0978
/* 802A091C  3C 60 80 3D */	lis r3, __vt__8JAISeMgr@ha
/* 802A0920  38 03 98 B0 */	addi r0, r3, __vt__8JAISeMgr@l
/* 802A0924  90 1E 00 00 */	stw r0, 0(r30)
/* 802A0928  38 7E 00 14 */	addi r3, r30, 0x14
/* 802A092C  3C 80 80 00 */	lis r4, __dt__16JAISeCategoryMgrFv@ha
/* 802A0930  38 84 78 DC */	addi r4, r4, __dt__16JAISeCategoryMgrFv@l
/* 802A0934  38 A0 00 6C */	li r5, 0x6c
/* 802A0938  38 C0 00 10 */	li r6, 0x10
/* 802A093C  48 0C 13 AD */	bl __destroy_arr
/* 802A0940  7F C3 F3 78 */	mr r3, r30
/* 802A0944  38 80 00 00 */	li r4, 0
/* 802A0948  48 00 0E 2D */	bl __dt__14JAISeqDataUserFv
/* 802A094C  28 1E 00 00 */	cmplwi r30, 0
/* 802A0950  41 82 00 18 */	beq lbl_802A0968
/* 802A0954  80 0D 85 EC */	lwz r0, data_80450B6C(r13)
/* 802A0958  7C 00 F0 40 */	cmplw r0, r30
/* 802A095C  40 82 00 0C */	bne lbl_802A0968
/* 802A0960  38 00 00 00 */	li r0, 0
/* 802A0964  90 0D 85 EC */	stw r0, data_80450B6C(r13)
lbl_802A0968:
/* 802A0968  7F E0 07 35 */	extsh. r0, r31
/* 802A096C  40 81 00 0C */	ble lbl_802A0978
/* 802A0970  7F C3 F3 78 */	mr r3, r30
/* 802A0974  48 02 E3 C9 */	bl __dl__FPv
lbl_802A0978:
/* 802A0978  7F C3 F3 78 */	mr r3, r30
/* 802A097C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0980  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A0984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0988  7C 08 03 A6 */	mtlr r0
/* 802A098C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0990  4E 80 00 20 */	blr 
