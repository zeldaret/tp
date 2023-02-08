lbl_8045A160:
/* 8045A160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A164  7C 08 02 A6 */	mflr r0
/* 8045A168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A16C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A170  7C 7F 1B 78 */	mr r31, r3
/* 8045A174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045A178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045A17C  A0 1F 0C CC */	lhz r0, 0xccc(r31)
/* 8045A180  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8045A184  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045A188  7C 05 07 74 */	extsb r5, r0
/* 8045A18C  4B BD B1 D5 */	bl isSwitch__10dSv_info_cCFii
/* 8045A190  2C 03 00 00 */	cmpwi r3, 0
/* 8045A194  41 82 00 30 */	beq lbl_8045A1C4
/* 8045A198  38 00 00 01 */	li r0, 1
/* 8045A19C  98 1F 0C C8 */	stb r0, 0xcc8(r31)
/* 8045A1A0  7F E3 FB 78 */	mr r3, r31
/* 8045A1A4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8045A1A8  4B FF F9 BD */	bl release__9daBgObj_cFP4dBgW
/* 8045A1AC  7F E3 FB 78 */	mr r3, r31
/* 8045A1B0  80 9F 05 D8 */	lwz r4, 0x5d8(r31)
/* 8045A1B4  4B FF FA 01 */	bl regist__9daBgObj_cFP4dBgW
/* 8045A1B8  38 00 00 03 */	li r0, 3
/* 8045A1BC  98 1F 0C C5 */	stb r0, 0xcc5(r31)
/* 8045A1C0  48 00 00 10 */	b lbl_8045A1D0
lbl_8045A1C4:
/* 8045A1C4  38 00 00 00 */	li r0, 0
/* 8045A1C8  98 1F 0C C8 */	stb r0, 0xcc8(r31)
/* 8045A1CC  98 1F 0C C5 */	stb r0, 0xcc5(r31)
lbl_8045A1D0:
/* 8045A1D0  7F E3 FB 78 */	mr r3, r31
/* 8045A1D4  4B FF FB 69 */	bl initBaseMtx__9daBgObj_cFv
/* 8045A1D8  88 9F 0C C8 */	lbz r4, 0xcc8(r31)
/* 8045A1DC  28 04 00 01 */	cmplwi r4, 1
/* 8045A1E0  40 82 00 28 */	bne lbl_8045A208
/* 8045A1E4  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 8045A1E8  7C 7F 02 14 */	add r3, r31, r0
/* 8045A1EC  80 03 05 A8 */	lwz r0, 0x5a8(r3)
/* 8045A1F0  28 00 00 00 */	cmplwi r0, 0
/* 8045A1F4  40 82 00 14 */	bne lbl_8045A208
/* 8045A1F8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8045A1FC  38 03 00 24 */	addi r0, r3, 0x24
/* 8045A200  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8045A204  48 00 00 18 */	b lbl_8045A21C
lbl_8045A208:
/* 8045A208  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 8045A20C  7C 7F 02 14 */	add r3, r31, r0
/* 8045A210  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 8045A214  38 03 00 24 */	addi r0, r3, 0x24
/* 8045A218  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_8045A21C:
/* 8045A21C  7F E3 FB 78 */	mr r3, r31
/* 8045A220  88 9F 0C C8 */	lbz r4, 0xcc8(r31)
/* 8045A224  4B FF FB E1 */	bl settingCullSizeBoxForCo__9daBgObj_cFi
/* 8045A228  3C 60 80 46 */	lis r3, lit_3873@ha /* 0x8045CA00@ha */
/* 8045A22C  C0 03 CA 00 */	lfs f0, lit_3873@l(r3)  /* 0x8045CA00@l */
/* 8045A230  C0 3F 0C F0 */	lfs f1, 0xcf0(r31)
/* 8045A234  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8045A238  41 82 00 08 */	beq lbl_8045A240
/* 8045A23C  D0 3F 05 20 */	stfs f1, 0x520(r31)
lbl_8045A240:
/* 8045A240  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8045A244  38 80 00 FF */	li r4, 0xff
/* 8045A248  38 A0 00 FF */	li r5, 0xff
/* 8045A24C  7F E6 FB 78 */	mr r6, r31
/* 8045A250  4B C2 96 11 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8045A254  7F E3 FB 78 */	mr r3, r31
/* 8045A258  48 00 08 99 */	bl setColCommon__9daBgObj_cFv
/* 8045A25C  7F E3 FB 78 */	mr r3, r31
/* 8045A260  88 9F 0C C8 */	lbz r4, 0xcc8(r31)
/* 8045A264  4B FF FC B1 */	bl settingCullSizeBoxForCull__9daBgObj_cFi
/* 8045A268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045A26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045A270  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8045A274  7F E4 FB 78 */	mr r4, r31
/* 8045A278  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8045A27C  54 05 5E 3E */	rlwinm r5, r0, 0xb, 0x18, 0x1f
/* 8045A280  4B BE D4 19 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 8045A284  B0 7F 0C C6 */	sth r3, 0xcc6(r31)
/* 8045A288  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8045A28C  28 03 00 00 */	cmplwi r3, 0
/* 8045A290  41 82 00 08 */	beq lbl_8045A298
/* 8045A294  4B C2 17 2D */	bl Move__4dBgWFv
lbl_8045A298:
/* 8045A298  7F E3 FB 78 */	mr r3, r31
/* 8045A29C  4B FF F9 51 */	bl initAtt__9daBgObj_cFv
/* 8045A2A0  38 60 00 01 */	li r3, 1
/* 8045A2A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045A2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A2AC  7C 08 03 A6 */	mtlr r0
/* 8045A2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A2B4  4E 80 00 20 */	blr 
