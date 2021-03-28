lbl_801D7010:
/* 801D7010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7014  7C 08 02 A6 */	mflr r0
/* 801D7018  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D701C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D7020  48 18 B1 B9 */	bl _savegpr_28
/* 801D7024  7C 7C 1B 78 */	mr r28, r3
/* 801D7028  7C 9D 23 78 */	mr r29, r4
/* 801D702C  3B C0 00 00 */	li r30, 0
/* 801D7030  3B E0 00 00 */	li r31, 0
lbl_801D7034:
/* 801D7034  28 1D 00 00 */	cmplwi r29, 0
/* 801D7038  40 82 00 44 */	bne lbl_801D707C
/* 801D703C  80 7C 00 08 */	lwz r3, 8(r28)
/* 801D7040  3C 80 80 39 */	lis r4, farea_name_6125@ha
/* 801D7044  38 04 64 F0 */	addi r0, r4, farea_name_6125@l
/* 801D7048  7C 80 FA 14 */	add r4, r0, r31
/* 801D704C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D7050  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D7054  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7058  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D705C  7D 89 03 A6 */	mtctr r12
/* 801D7060  4E 80 04 21 */	bctrl 
/* 801D7064  48 12 95 F5 */	bl getStringPtr__10J2DTextBoxCFv
/* 801D7068  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha
/* 801D706C  38 84 65 D0 */	addi r4, r4, d_menu_d_menu_fmap2D__stringBase0@l
/* 801D7070  38 84 00 BB */	addi r4, r4, 0xbb
/* 801D7074  48 19 1A B9 */	bl strcpy
/* 801D7078  48 00 00 48 */	b lbl_801D70C0
lbl_801D707C:
/* 801D707C  80 7C 00 08 */	lwz r3, 8(r28)
/* 801D7080  3C 80 80 39 */	lis r4, farea_name_6125@ha
/* 801D7084  38 04 64 F0 */	addi r0, r4, farea_name_6125@l
/* 801D7088  7C 80 FA 14 */	add r4, r0, r31
/* 801D708C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D7090  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D7094  81 83 00 00 */	lwz r12, 0(r3)
/* 801D7098  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D709C  7D 89 03 A6 */	mtctr r12
/* 801D70A0  4E 80 04 21 */	bctrl 
/* 801D70A4  48 12 95 B5 */	bl getStringPtr__10J2DTextBoxCFv
/* 801D70A8  7C 65 1B 78 */	mr r5, r3
/* 801D70AC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D70B0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801D70B4  7F A4 EB 78 */	mr r4, r29
/* 801D70B8  38 C0 00 00 */	li r6, 0
/* 801D70BC  48 04 54 89 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_801D70C0:
/* 801D70C0  3B DE 00 01 */	addi r30, r30, 1
/* 801D70C4  2C 1E 00 03 */	cmpwi r30, 3
/* 801D70C8  3B FF 00 08 */	addi r31, r31, 8
/* 801D70CC  41 80 FF 68 */	blt lbl_801D7034
/* 801D70D0  39 61 00 20 */	addi r11, r1, 0x20
/* 801D70D4  48 18 B1 51 */	bl _restgpr_28
/* 801D70D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D70DC  7C 08 03 A6 */	mtlr r0
/* 801D70E0  38 21 00 20 */	addi r1, r1, 0x20
/* 801D70E4  4E 80 00 20 */	blr 
