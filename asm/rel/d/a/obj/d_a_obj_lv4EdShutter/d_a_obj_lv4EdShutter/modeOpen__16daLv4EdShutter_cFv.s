lbl_80C5E394:
/* 80C5E394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E398  7C 08 02 A6 */	mflr r0
/* 80C5E39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E3A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5E3A8  7C 7E 1B 78 */	mr r30, r3
/* 80C5E3AC  3C 60 80 C6 */	lis r3, lit_3634@ha /* 0x80C5E8DC@ha */
/* 80C5E3B0  3B E3 E8 DC */	addi r31, r3, lit_3634@l /* 0x80C5E8DC@l */
/* 80C5E3B4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80C5E3B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C5E3BC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C5E3C0  C0 7E 05 D8 */	lfs f3, 0x5d8(r30)
/* 80C5E3C4  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80C5E3C8  4B 61 15 B5 */	bl cLib_addCalc__FPfffff
/* 80C5E3CC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C5E3D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C5E3D4  40 82 00 78 */	bne lbl_80C5E44C
/* 80C5E3D8  38 00 00 00 */	li r0, 0
/* 80C5E3DC  98 1E 05 CA */	stb r0, 0x5ca(r30)
/* 80C5E3E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5E3E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5E3E8  88 9E 05 C8 */	lbz r4, 0x5c8(r30)
/* 80C5E3EC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5E3F0  7C 05 07 74 */	extsb r5, r0
/* 80C5E3F4  4B 3D 6E BD */	bl offSwitch__10dSv_info_cFii
/* 80C5E3F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5E3FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5E400  88 9E 05 C9 */	lbz r4, 0x5c9(r30)
/* 80C5E404  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5E408  7C 05 07 74 */	extsb r5, r0
/* 80C5E40C  4B 3D 6E A5 */	bl offSwitch__10dSv_info_cFii
/* 80C5E410  88 9E 05 CC */	lbz r4, 0x5cc(r30)
/* 80C5E414  28 04 00 FF */	cmplwi r4, 0xff
/* 80C5E418  41 82 00 2C */	beq lbl_80C5E444
/* 80C5E41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5E420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5E424  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5E428  7C 05 07 74 */	extsb r5, r0
/* 80C5E42C  4B 3D 6F 35 */	bl isSwitch__10dSv_info_cCFii
/* 80C5E430  2C 03 00 00 */	cmpwi r3, 0
/* 80C5E434  41 82 00 10 */	beq lbl_80C5E444
/* 80C5E438  7F C3 F3 78 */	mr r3, r30
/* 80C5E43C  48 00 01 49 */	bl init_modeEnd__16daLv4EdShutter_cFv
/* 80C5E440  48 00 00 0C */	b lbl_80C5E44C
lbl_80C5E444:
/* 80C5E444  7F C3 F3 78 */	mr r3, r30
/* 80C5E448  4B FF FD 69 */	bl init_modeWait__16daLv4EdShutter_cFv
lbl_80C5E44C:
/* 80C5E44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E450  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5E454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E458  7C 08 03 A6 */	mtlr r0
/* 80C5E45C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E460  4E 80 00 20 */	blr 
