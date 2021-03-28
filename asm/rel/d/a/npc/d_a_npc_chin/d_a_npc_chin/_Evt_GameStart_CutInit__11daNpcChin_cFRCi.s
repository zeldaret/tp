lbl_8098FE28:
/* 8098FE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098FE2C  7C 08 02 A6 */	mflr r0
/* 8098FE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098FE34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098FE38  7C 7F 1B 78 */	mr r31, r3
/* 8098FE3C  3C A0 80 99 */	lis r5, sLoadResPat_Normal@ha
/* 8098FE40  38 E5 18 F8 */	addi r7, r5, sLoadResPat_Normal@l
/* 8098FE44  80 04 00 00 */	lwz r0, 0(r4)
/* 8098FE48  2C 00 00 14 */	cmpwi r0, 0x14
/* 8098FE4C  41 82 00 40 */	beq lbl_8098FE8C
/* 8098FE50  40 80 00 10 */	bge lbl_8098FE60
/* 8098FE54  2C 00 00 0A */	cmpwi r0, 0xa
/* 8098FE58  41 82 00 14 */	beq lbl_8098FE6C
/* 8098FE5C  48 00 00 BC */	b lbl_8098FF18
lbl_8098FE60:
/* 8098FE60  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8098FE64  41 82 00 B4 */	beq lbl_8098FF18
/* 8098FE68  48 00 00 B0 */	b lbl_8098FF18
lbl_8098FE6C:
/* 8098FE6C  38 00 00 00 */	li r0, 0
/* 8098FE70  98 1F 0E 6C */	stb r0, 0xe6c(r31)
/* 8098FE74  C0 07 00 84 */	lfs f0, 0x84(r7)
/* 8098FE78  D0 1F 0E 40 */	stfs f0, 0xe40(r31)
/* 8098FE7C  4B FF FE E1 */	bl SphereReset__11daNpcChin_cFv
/* 8098FE80  38 00 00 01 */	li r0, 1
/* 8098FE84  98 1F 0E 08 */	stb r0, 0xe08(r31)
/* 8098FE88  48 00 00 90 */	b lbl_8098FF18
lbl_8098FE8C:
/* 8098FE8C  88 7F 0E 07 */	lbz r3, 0xe07(r31)
/* 8098FE90  7C 60 07 75 */	extsb. r0, r3
/* 8098FE94  40 82 00 10 */	bne lbl_8098FEA4
/* 8098FE98  38 00 75 30 */	li r0, 0x7530
/* 8098FE9C  90 1F 0E 10 */	stw r0, 0xe10(r31)
/* 8098FEA0  48 00 00 38 */	b lbl_8098FED8
lbl_8098FEA4:
/* 8098FEA4  7C 60 07 74 */	extsb r0, r3
/* 8098FEA8  2C 00 00 01 */	cmpwi r0, 1
/* 8098FEAC  40 82 00 14 */	bne lbl_8098FEC0
/* 8098FEB0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00015F90@ha */
/* 8098FEB4  38 03 5F 90 */	addi r0, r3, 0x5F90 /* 0x00015F90@l */
/* 8098FEB8  90 1F 0E 10 */	stw r0, 0xe10(r31)
/* 8098FEBC  48 00 00 1C */	b lbl_8098FED8
lbl_8098FEC0:
/* 8098FEC0  2C 00 00 02 */	cmpwi r0, 2
/* 8098FEC4  40 82 00 14 */	bne lbl_8098FED8
/* 8098FEC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098FECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098FED0  80 03 09 44 */	lwz r0, 0x944(r3)
/* 8098FED4  90 1F 0E 10 */	stw r0, 0xe10(r31)
lbl_8098FED8:
/* 8098FED8  38 60 00 06 */	li r3, 6
/* 8098FEDC  80 9F 0E 10 */	lwz r4, 0xe10(r31)
/* 8098FEE0  38 A0 00 01 */	li r5, 1
/* 8098FEE4  38 C0 00 00 */	li r6, 0
/* 8098FEE8  C0 27 04 38 */	lfs f1, 0x438(r7)
/* 8098FEEC  C0 47 04 3C */	lfs f2, 0x43c(r7)
/* 8098FEF0  C0 67 04 40 */	lfs f3, 0x440(r7)
/* 8098FEF4  C0 87 04 44 */	lfs f4, 0x444(r7)
/* 8098FEF8  4B 8D 10 94 */	b dTimer_createTimer__FlUlUcUcffff
/* 8098FEFC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098FF00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098FF04  80 63 00 00 */	lwz r3, 0(r3)
/* 8098FF08  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8098FF0C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000078@ha */
/* 8098FF10  38 84 00 78 */	addi r4, r4, 0x0078 /* 0x01000078@l */
/* 8098FF14  4B 91 F5 88 */	b subBgmStart__8Z2SeqMgrFUl
lbl_8098FF18:
/* 8098FF18  38 60 00 01 */	li r3, 1
/* 8098FF1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098FF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098FF24  7C 08 03 A6 */	mtlr r0
/* 8098FF28  38 21 00 10 */	addi r1, r1, 0x10
/* 8098FF2C  4E 80 00 20 */	blr 
