lbl_80CC1AF0:
/* 80CC1AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC1AF4  7C 08 02 A6 */	mflr r0
/* 80CC1AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC1AFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC1B00  4B 6A 06 DD */	bl _savegpr_29
/* 80CC1B04  7C 7D 1B 78 */	mr r29, r3
/* 80CC1B08  7C 9E 23 78 */	mr r30, r4
/* 80CC1B0C  48 00 00 99 */	bl move_proc_call__15daObjRotStair_cFv
/* 80CC1B10  7F A3 EB 78 */	mr r3, r29
/* 80CC1B14  48 00 05 11 */	bl event_proc_call__15daObjRotStair_cFv
/* 80CC1B18  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80CC1B1C  90 1E 00 00 */	stw r0, 0(r30)
/* 80CC1B20  7F A3 EB 78 */	mr r3, r29
/* 80CC1B24  4B FF FA F1 */	bl setBaseMtx__15daObjRotStair_cFv
/* 80CC1B28  88 1D 05 BC */	lbz r0, 0x5bc(r29)
/* 80CC1B2C  28 00 00 00 */	cmplwi r0, 0
/* 80CC1B30  41 82 00 0C */	beq lbl_80CC1B3C
/* 80CC1B34  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80CC1B38  4B 3B 9E 89 */	bl Move__4dBgWFv
lbl_80CC1B3C:
/* 80CC1B3C  3B C0 00 00 */	li r30, 0
/* 80CC1B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC1B44  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80CC1B48:
/* 80CC1B48  7F E3 FB 78 */	mr r3, r31
/* 80CC1B4C  A0 1D 05 CA */	lhz r0, 0x5ca(r29)
/* 80CC1B50  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CC1B54  7C 9E 02 14 */	add r4, r30, r0
/* 80CC1B58  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CC1B5C  7C 05 07 74 */	extsb r5, r0
/* 80CC1B60  4B 37 38 01 */	bl isSwitch__10dSv_info_cCFii
/* 80CC1B64  38 1E 05 D6 */	addi r0, r30, 0x5d6
/* 80CC1B68  7C 7D 01 AE */	stbx r3, r29, r0
/* 80CC1B6C  3B DE 00 01 */	addi r30, r30, 1
/* 80CC1B70  2C 1E 00 04 */	cmpwi r30, 4
/* 80CC1B74  41 80 FF D4 */	blt lbl_80CC1B48
/* 80CC1B78  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80CC1B7C  4B 34 B8 AD */	bl play__14mDoExt_baseAnmFv
/* 80CC1B80  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80CC1B84  4B 34 B8 A5 */	bl play__14mDoExt_baseAnmFv
/* 80CC1B88  38 60 00 01 */	li r3, 1
/* 80CC1B8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC1B90  4B 6A 06 99 */	bl _restgpr_29
/* 80CC1B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC1B98  7C 08 03 A6 */	mtlr r0
/* 80CC1B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC1BA0  4E 80 00 20 */	blr 
