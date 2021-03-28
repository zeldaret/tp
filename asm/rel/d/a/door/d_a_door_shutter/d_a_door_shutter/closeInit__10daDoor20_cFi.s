lbl_80462738:
/* 80462738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046273C  7C 08 02 A6 */	mflr r0
/* 80462740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80462744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80462748  7C 7F 1B 78 */	mr r31, r3
/* 8046274C  A0 03 06 8E */	lhz r0, 0x68e(r3)
/* 80462750  60 00 00 02 */	ori r0, r0, 2
/* 80462754  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 80462758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046275C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80462760  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80462764  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80462768  7F E5 FB 78 */	mr r5, r31
/* 8046276C  4B C1 22 9C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80462770  7F E3 FB 78 */	mr r3, r31
/* 80462774  4B BD 7A 14 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80462778  2C 03 00 02 */	cmpwi r3, 2
/* 8046277C  41 82 00 1C */	beq lbl_80462798
/* 80462780  40 80 00 14 */	bge lbl_80462794
/* 80462784  2C 03 00 00 */	cmpwi r3, 0
/* 80462788  41 82 00 10 */	beq lbl_80462798
/* 8046278C  40 80 00 18 */	bge lbl_804627A4
/* 80462790  48 00 00 08 */	b lbl_80462798
lbl_80462794:
/* 80462794  2C 03 00 0A */	cmpwi r3, 0xa
lbl_80462798:
/* 80462798  7F E3 FB 78 */	mr r3, r31
/* 8046279C  4B FF FB FD */	bl closeInit_0__10daDoor20_cFv
/* 804627A0  48 00 00 0C */	b lbl_804627AC
lbl_804627A4:
/* 804627A4  7F E3 FB 78 */	mr r3, r31
/* 804627A8  4B FF FE C5 */	bl closeInit_1__10daDoor20_cFv
lbl_804627AC:
/* 804627AC  38 60 00 01 */	li r3, 1
/* 804627B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804627B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804627B8  7C 08 03 A6 */	mtlr r0
/* 804627BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804627C0  4E 80 00 20 */	blr 
