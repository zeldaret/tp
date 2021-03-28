lbl_80136DE4:
/* 80136DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136DE8  7C 08 02 A6 */	mflr r0
/* 80136DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136DF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80136DF8  7C 7E 1B 78 */	mr r30, r3
/* 80136DFC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80136E00  80 03 31 98 */	lwz r0, 0x3198(r3)
/* 80136E04  2C 00 00 00 */	cmpwi r0, 0
/* 80136E08  41 82 00 4C */	beq lbl_80136E54
/* 80136E0C  7F E3 FB 78 */	mr r3, r31
/* 80136E10  48 02 76 BD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80136E14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80136E18  41 82 00 14 */	beq lbl_80136E2C
/* 80136E1C  7F C3 F3 78 */	mr r3, r30
/* 80136E20  38 80 00 00 */	li r4, 0
/* 80136E24  4B FF 2D 21 */	bl checkNextActionWolf__9daAlink_cFi
/* 80136E28  48 00 00 80 */	b lbl_80136EA8
lbl_80136E2C:
/* 80136E2C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80136E30  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlDamFall_c0@ha
/* 80136E34  38 63 F3 74 */	addi r3, r3, m__23daAlinkHIO_wlDamFall_c0@l
/* 80136E38  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80136E3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136E40  40 81 00 68 */	ble lbl_80136EA8
/* 80136E44  7F C3 F3 78 */	mr r3, r30
/* 80136E48  38 80 00 01 */	li r4, 1
/* 80136E4C  4B FF 2C F9 */	bl checkNextActionWolf__9daAlink_cFi
/* 80136E50  48 00 00 58 */	b lbl_80136EA8
lbl_80136E54:
/* 80136E54  7F E3 FB 78 */	mr r3, r31
/* 80136E58  48 02 76 75 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80136E5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80136E60  41 82 00 48 */	beq lbl_80136EA8
/* 80136E64  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 80136E68  2C 03 00 00 */	cmpwi r3, 0
/* 80136E6C  40 81 00 10 */	ble lbl_80136E7C
/* 80136E70  38 03 FF FF */	addi r0, r3, -1
/* 80136E74  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 80136E78  48 00 00 30 */	b lbl_80136EA8
lbl_80136E7C:
/* 80136E7C  7F C3 F3 78 */	mr r3, r30
/* 80136E80  38 80 00 61 */	li r4, 0x61
/* 80136E84  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlDamFall_c0@ha
/* 80136E88  38 A5 F3 74 */	addi r5, r5, m__23daAlinkHIO_wlDamFall_c0@l
/* 80136E8C  38 A5 00 14 */	addi r5, r5, 0x14
/* 80136E90  4B FF 29 B9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80136E94  7F C3 F3 78 */	mr r3, r30
/* 80136E98  38 80 00 96 */	li r4, 0x96
/* 80136E9C  4B F7 8A 05 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80136EA0  38 00 00 01 */	li r0, 1
/* 80136EA4  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_80136EA8:
/* 80136EA8  38 60 00 01 */	li r3, 1
/* 80136EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136EB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80136EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136EB8  7C 08 03 A6 */	mtlr r0
/* 80136EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80136EC0  4E 80 00 20 */	blr 
