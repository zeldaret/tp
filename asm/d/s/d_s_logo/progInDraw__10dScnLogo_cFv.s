lbl_80256264:
/* 80256264  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80256268  7C 08 02 A6 */	mflr r0
/* 8025626C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80256270  39 61 00 20 */	addi r11, r1, 0x20
/* 80256274  48 10 BF 65 */	bl _savegpr_28
/* 80256278  7C 7C 1B 78 */	mr r28, r3
/* 8025627C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80256280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256284  3B E3 5F 64 */	addi r31, r3, 0x5f64
/* 80256288  7F E3 FB 78 */	mr r3, r31
/* 8025628C  3B BF 01 B4 */	addi r29, r31, 0x1b4
/* 80256290  7F A4 EB 78 */	mr r4, r29
/* 80256294  3B DF 01 B8 */	addi r30, r31, 0x1b8
/* 80256298  7F C5 F3 78 */	mr r5, r30
/* 8025629C  80 DC 01 EC */	lwz r6, 0x1ec(r28)
/* 802562A0  4B E0 04 F5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 802562A4  7F E3 FB 78 */	mr r3, r31
/* 802562A8  7F A4 EB 78 */	mr r4, r29
/* 802562AC  7F C5 F3 78 */	mr r5, r30
/* 802562B0  80 DC 01 F0 */	lwz r6, 0x1f0(r28)
/* 802562B4  4B E0 04 E1 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 802562B8  7F E3 FB 78 */	mr r3, r31
/* 802562BC  7F A4 EB 78 */	mr r4, r29
/* 802562C0  7F C5 F3 78 */	mr r5, r30
/* 802562C4  80 DC 01 F4 */	lwz r6, 0x1f4(r28)
/* 802562C8  4B E0 04 CD */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 802562CC  A0 1C 02 0C */	lhz r0, 0x20c(r28)
/* 802562D0  28 00 00 00 */	cmplwi r0, 0
/* 802562D4  40 82 00 30 */	bne lbl_80256304
/* 802562D8  38 00 00 09 */	li r0, 9
/* 802562DC  98 1C 02 08 */	stb r0, 0x208(r28)
/* 802562E0  38 00 02 58 */	li r0, 0x258
/* 802562E4  B0 1C 02 0C */	sth r0, 0x20c(r28)
/* 802562E8  38 00 00 1E */	li r0, 0x1e
/* 802562EC  B0 1C 02 0E */	sth r0, 0x20e(r28)
/* 802562F0  A0 1C 02 0E */	lhz r0, 0x20e(r28)
/* 802562F4  B0 1C 02 10 */	sth r0, 0x210(r28)
/* 802562F8  38 00 00 00 */	li r0, 0
/* 802562FC  B0 1C 02 12 */	sth r0, 0x212(r28)
/* 80256300  98 1C 02 0B */	stb r0, 0x20b(r28)
lbl_80256304:
/* 80256304  39 61 00 20 */	addi r11, r1, 0x20
/* 80256308  48 10 BF 1D */	bl _restgpr_28
/* 8025630C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80256310  7C 08 03 A6 */	mtlr r0
/* 80256314  38 21 00 20 */	addi r1, r1, 0x20
/* 80256318  4E 80 00 20 */	blr 
