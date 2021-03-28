lbl_8084DBFC:
/* 8084DBFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8084DC00  7C 08 02 A6 */	mflr r0
/* 8084DC04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084DC08  39 61 00 20 */	addi r11, r1, 0x20
/* 8084DC0C  4B B1 45 D0 */	b _savegpr_29
/* 8084DC10  7C 7D 1B 78 */	mr r29, r3
/* 8084DC14  4B 93 3A 2C */	b dCam_getBody__Fv
/* 8084DC18  7C 7E 1B 78 */	mr r30, r3
/* 8084DC1C  80 1D 07 3C */	lwz r0, 0x73c(r29)
/* 8084DC20  2C 00 00 00 */	cmpwi r0, 0
/* 8084DC24  40 82 00 54 */	bne lbl_8084DC78
/* 8084DC28  38 60 00 00 */	li r3, 0
/* 8084DC2C  4B 7D ED 50 */	b getLayerNo__14dComIfG_play_cFi
/* 8084DC30  2C 03 00 0D */	cmpwi r3, 0xd
/* 8084DC34  40 82 00 44 */	bne lbl_8084DC78
/* 8084DC38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084DC3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084DC40  3B E3 09 58 */	addi r31, r3, 0x958
/* 8084DC44  7F E3 FB 78 */	mr r3, r31
/* 8084DC48  38 80 00 10 */	li r4, 0x10
/* 8084DC4C  4B 7E 6C 14 */	b isSwitch__12dSv_memBit_cCFi
/* 8084DC50  2C 03 00 00 */	cmpwi r3, 0
/* 8084DC54  41 82 00 24 */	beq lbl_8084DC78
/* 8084DC58  7F E3 FB 78 */	mr r3, r31
/* 8084DC5C  38 80 00 1A */	li r4, 0x1a
/* 8084DC60  4B 7E 6B B0 */	b onSwitch__12dSv_memBit_cFi
/* 8084DC64  7F A3 EB 78 */	mr r3, r29
/* 8084DC68  38 80 00 04 */	li r4, 4
/* 8084DC6C  38 A0 00 00 */	li r5, 0
/* 8084DC70  4B FF CE 29 */	bl setActionMode__8daKago_cFii
/* 8084DC74  48 00 00 8C */	b lbl_8084DD00
lbl_8084DC78:
/* 8084DC78  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8084DC7C  28 00 00 02 */	cmplwi r0, 2
/* 8084DC80  41 82 00 2C */	beq lbl_8084DCAC
/* 8084DC84  7F A3 EB 78 */	mr r3, r29
/* 8084DC88  38 80 00 02 */	li r4, 2
/* 8084DC8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8084DC90  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8084DC94  38 C0 00 03 */	li r6, 3
/* 8084DC98  4B 7C DC 70 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8084DC9C  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8084DCA0  60 00 00 02 */	ori r0, r0, 2
/* 8084DCA4  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8084DCA8  48 00 00 58 */	b lbl_8084DD00
lbl_8084DCAC:
/* 8084DCAC  7F C3 F3 78 */	mr r3, r30
/* 8084DCB0  4B 91 38 20 */	b Stop__9dCamera_cFv
/* 8084DCB4  7F C3 F3 78 */	mr r3, r30
/* 8084DCB8  38 80 00 03 */	li r4, 3
/* 8084DCBC  4B 91 53 50 */	b SetTrimSize__9dCamera_cFl
/* 8084DCC0  38 00 00 00 */	li r0, 0
/* 8084DCC4  90 1D 07 48 */	stw r0, 0x748(r29)
/* 8084DCC8  90 1D 07 4C */	stw r0, 0x74c(r29)
/* 8084DCCC  7F A3 EB 78 */	mr r3, r29
/* 8084DCD0  38 80 00 03 */	li r4, 3
/* 8084DCD4  38 A0 00 00 */	li r5, 0
/* 8084DCD8  4B FF CD C1 */	bl setActionMode__8daKago_cFii
/* 8084DCDC  38 00 00 01 */	li r0, 1
/* 8084DCE0  98 1D 06 DC */	stb r0, 0x6dc(r29)
/* 8084DCE4  38 00 00 FF */	li r0, 0xff
/* 8084DCE8  98 1D 06 DE */	stb r0, 0x6de(r29)
/* 8084DCEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084DCF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084DCF4  38 63 09 58 */	addi r3, r3, 0x958
/* 8084DCF8  38 80 00 08 */	li r4, 8
/* 8084DCFC  4B 7E 6B 14 */	b onSwitch__12dSv_memBit_cFi
lbl_8084DD00:
/* 8084DD00  39 61 00 20 */	addi r11, r1, 0x20
/* 8084DD04  4B B1 45 24 */	b _restgpr_29
/* 8084DD08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8084DD0C  7C 08 03 A6 */	mtlr r0
/* 8084DD10  38 21 00 20 */	addi r1, r1, 0x20
/* 8084DD14  4E 80 00 20 */	blr 
