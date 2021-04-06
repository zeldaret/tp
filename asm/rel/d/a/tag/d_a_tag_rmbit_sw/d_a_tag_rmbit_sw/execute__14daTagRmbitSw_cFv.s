lbl_80D5FBFC:
/* 80D5FBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FC00  7C 08 02 A6 */	mflr r0
/* 80D5FC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FC08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5FC0C  7C 7F 1B 78 */	mr r31, r3
/* 80D5FC10  48 00 01 E1 */	bl chkPlyrInTag__14daTagRmbitSw_cFv
/* 80D5FC14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5FC18  41 82 01 88 */	beq lbl_80D5FDA0
/* 80D5FC1C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5FC20  54 03 7F FE */	rlwinm r3, r0, 0xf, 0x1f, 0x1f
/* 80D5FC24  28 03 00 01 */	cmplwi r3, 1
/* 80D5FC28  40 82 00 BC */	bne lbl_80D5FCE4
/* 80D5FC2C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80D5FC30  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D5FC34  41 82 00 20 */	beq lbl_80D5FC54
/* 80D5FC38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5FC3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5FC40  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5FC44  7C 05 07 74 */	extsb r5, r0
/* 80D5FC48  4B 2D 57 19 */	bl isSwitch__10dSv_info_cCFii
/* 80D5FC4C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5FC50  41 82 01 50 */	beq lbl_80D5FDA0
lbl_80D5FC54:
/* 80D5FC54  83 FF 00 B0 */	lwz r31, 0xb0(r31)
/* 80D5FC58  57 E0 87 FE */	rlwinm r0, r31, 0x10, 0x1f, 0x1f
/* 80D5FC5C  28 00 00 01 */	cmplwi r0, 1
/* 80D5FC60  40 82 00 40 */	bne lbl_80D5FCA0
/* 80D5FC64  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80D5FC68  7C 04 07 74 */	extsb r4, r0
/* 80D5FC6C  2C 04 FF FF */	cmpwi r4, -1
/* 80D5FC70  40 82 00 14 */	bne lbl_80D5FC84
/* 80D5FC74  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FC78  7C 03 07 74 */	extsb r3, r0
/* 80D5FC7C  4B 2C FF 05 */	bl dComIfGs_onVisitedRoom__Fi
/* 80D5FC80  48 00 01 20 */	b lbl_80D5FDA0
lbl_80D5FC84:
/* 80D5FC84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5FC88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5FC8C  4B 2D 54 1D */	bl getSave2__10dSv_save_cFi
/* 80D5FC90  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FC94  7C 04 07 74 */	extsb r4, r0
/* 80D5FC98  4B 2D 4E 0D */	bl onVisitedRoom__13dSv_memory2_cFi
/* 80D5FC9C  48 00 01 04 */	b lbl_80D5FDA0
lbl_80D5FCA0:
/* 80D5FCA0  28 00 00 00 */	cmplwi r0, 0
/* 80D5FCA4  40 82 00 FC */	bne lbl_80D5FDA0
/* 80D5FCA8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80D5FCAC  7C 04 07 74 */	extsb r4, r0
/* 80D5FCB0  2C 04 FF FF */	cmpwi r4, -1
/* 80D5FCB4  40 82 00 14 */	bne lbl_80D5FCC8
/* 80D5FCB8  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FCBC  7C 03 07 74 */	extsb r3, r0
/* 80D5FCC0  4B 2C FF 7D */	bl dComIfGs_offVisitedRoom__Fi
/* 80D5FCC4  48 00 00 DC */	b lbl_80D5FDA0
lbl_80D5FCC8:
/* 80D5FCC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5FCCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5FCD0  4B 2D 53 D9 */	bl getSave2__10dSv_save_cFi
/* 80D5FCD4  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FCD8  7C 04 07 74 */	extsb r4, r0
/* 80D5FCDC  4B 2D 4D ED */	bl offVisitedRoom__13dSv_memory2_cFi
/* 80D5FCE0  48 00 00 C0 */	b lbl_80D5FDA0
lbl_80D5FCE4:
/* 80D5FCE4  28 03 00 00 */	cmplwi r3, 0
/* 80D5FCE8  40 82 00 B8 */	bne lbl_80D5FDA0
/* 80D5FCEC  54 04 46 3E */	srwi r4, r0, 0x18
/* 80D5FCF0  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D5FCF4  41 82 00 20 */	beq lbl_80D5FD14
/* 80D5FCF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5FCFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5FD00  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5FD04  7C 05 07 74 */	extsb r5, r0
/* 80D5FD08  4B 2D 56 59 */	bl isSwitch__10dSv_info_cCFii
/* 80D5FD0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5FD10  40 82 00 90 */	bne lbl_80D5FDA0
lbl_80D5FD14:
/* 80D5FD14  83 FF 00 B0 */	lwz r31, 0xb0(r31)
/* 80D5FD18  57 E0 87 FE */	rlwinm r0, r31, 0x10, 0x1f, 0x1f
/* 80D5FD1C  28 00 00 01 */	cmplwi r0, 1
/* 80D5FD20  40 82 00 40 */	bne lbl_80D5FD60
/* 80D5FD24  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80D5FD28  7C 04 07 74 */	extsb r4, r0
/* 80D5FD2C  2C 04 FF FF */	cmpwi r4, -1
/* 80D5FD30  40 82 00 14 */	bne lbl_80D5FD44
/* 80D5FD34  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FD38  7C 03 07 74 */	extsb r3, r0
/* 80D5FD3C  4B 2C FE 45 */	bl dComIfGs_onVisitedRoom__Fi
/* 80D5FD40  48 00 00 60 */	b lbl_80D5FDA0
lbl_80D5FD44:
/* 80D5FD44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5FD48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5FD4C  4B 2D 53 5D */	bl getSave2__10dSv_save_cFi
/* 80D5FD50  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FD54  7C 04 07 74 */	extsb r4, r0
/* 80D5FD58  4B 2D 4D 4D */	bl onVisitedRoom__13dSv_memory2_cFi
/* 80D5FD5C  48 00 00 44 */	b lbl_80D5FDA0
lbl_80D5FD60:
/* 80D5FD60  28 00 00 00 */	cmplwi r0, 0
/* 80D5FD64  40 82 00 3C */	bne lbl_80D5FDA0
/* 80D5FD68  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80D5FD6C  7C 04 07 74 */	extsb r4, r0
/* 80D5FD70  2C 04 FF FF */	cmpwi r4, -1
/* 80D5FD74  40 82 00 14 */	bne lbl_80D5FD88
/* 80D5FD78  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FD7C  7C 03 07 74 */	extsb r3, r0
/* 80D5FD80  4B 2C FE BD */	bl dComIfGs_offVisitedRoom__Fi
/* 80D5FD84  48 00 00 1C */	b lbl_80D5FDA0
lbl_80D5FD88:
/* 80D5FD88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5FD8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5FD90  4B 2D 53 19 */	bl getSave2__10dSv_save_cFi
/* 80D5FD94  57 E0 C6 3E */	rlwinm r0, r31, 0x18, 0x18, 0x1f
/* 80D5FD98  7C 04 07 74 */	extsb r4, r0
/* 80D5FD9C  4B 2D 4D 2D */	bl offVisitedRoom__13dSv_memory2_cFi
lbl_80D5FDA0:
/* 80D5FDA0  38 60 00 01 */	li r3, 1
/* 80D5FDA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5FDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FDAC  7C 08 03 A6 */	mtlr r0
/* 80D5FDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FDB4  4E 80 00 20 */	blr 
