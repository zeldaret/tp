lbl_80C69B50:
/* 80C69B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69B54  7C 08 02 A6 */	mflr r0
/* 80C69B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C69B60  7C 7F 1B 78 */	mr r31, r3
/* 80C69B64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C69B68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C69B6C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C69B70  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C69B74  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C69B78  7C 05 07 74 */	extsb r5, r0
/* 80C69B7C  4B 3C B7 E4 */	b isSwitch__10dSv_info_cCFii
/* 80C69B80  2C 03 00 00 */	cmpwi r3, 0
/* 80C69B84  40 82 00 20 */	bne lbl_80C69BA4
/* 80C69B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C69B8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C69B90  38 63 09 58 */	addi r3, r3, 0x958
/* 80C69B94  38 80 00 03 */	li r4, 3
/* 80C69B98  4B 3C AD 9C */	b isDungeonItem__12dSv_memBit_cCFi
/* 80C69B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80C69BA0  41 82 00 38 */	beq lbl_80C69BD8
lbl_80C69BA4:
/* 80C69BA4  3C 60 80 C7 */	lis r3, lit_3679@ha
/* 80C69BA8  C0 03 A3 B8 */	lfs f0, lit_3679@l(r3)
/* 80C69BAC  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80C69BB0  7F E3 FB 78 */	mr r3, r31
/* 80C69BB4  48 00 04 E9 */	bl mode_init_dead__14daObjLv4Sand_cFv
/* 80C69BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C69BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C69BC0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C69BC4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C69BC8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C69BCC  7C 05 07 74 */	extsb r5, r0
/* 80C69BD0  4B 3C B6 30 */	b onSwitch__10dSv_info_cFii
/* 80C69BD4  48 00 00 18 */	b lbl_80C69BEC
lbl_80C69BD8:
/* 80C69BD8  3C 60 80 C7 */	lis r3, lit_3680@ha
/* 80C69BDC  C0 03 A3 BC */	lfs f0, lit_3680@l(r3)
/* 80C69BE0  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80C69BE4  7F E3 FB 78 */	mr r3, r31
/* 80C69BE8  48 00 03 D5 */	bl mode_init_wait__14daObjLv4Sand_cFv
lbl_80C69BEC:
/* 80C69BEC  7F E3 FB 78 */	mr r3, r31
/* 80C69BF0  4B FF FE A9 */	bl initBaseMtx__14daObjLv4Sand_cFv
/* 80C69BF4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80C69BF8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C69BFC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C69C00  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80C69C04  80 83 00 04 */	lwz r4, 4(r3)
/* 80C69C08  7F E3 FB 78 */	mr r3, r31
/* 80C69C0C  4B 3B 09 6C */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C69C10  38 60 00 01 */	li r3, 1
/* 80C69C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C69C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69C1C  7C 08 03 A6 */	mtlr r0
/* 80C69C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69C24  4E 80 00 20 */	blr 
