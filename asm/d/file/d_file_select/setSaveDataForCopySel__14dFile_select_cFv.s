lbl_80187DB8:
/* 80187DB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80187DBC  7C 08 02 A6 */	mflr r0
/* 80187DC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80187DC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80187DC8  48 1D A4 01 */	bl _savegpr_24
/* 80187DCC  7C 7D 1B 78 */	mr r29, r3
/* 80187DD0  3B FD 03 B8 */	addi r31, r29, 0x3b8
/* 80187DD4  3B 80 00 00 */	li r28, 0
/* 80187DD8  3B 60 00 00 */	li r27, 0
/* 80187DDC  3B C0 00 00 */	li r30, 0
/* 80187DE0  3B 40 00 00 */	li r26, 0
lbl_80187DE4:
/* 80187DE4  88 1D 02 65 */	lbz r0, 0x265(r29)
/* 80187DE8  7C 1E 00 00 */	cmpw r30, r0
/* 80187DEC  40 82 00 0C */	bne lbl_80187DF8
/* 80187DF0  3B FF 0A 94 */	addi r31, r31, 0xa94
/* 80187DF4  48 00 00 B8 */	b lbl_80187EAC
lbl_80187DF8:
/* 80187DF8  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 80187DFC  3C 80 80 3C */	lis r4, l_tagName101@ha
/* 80187E00  38 04 AD 20 */	addi r0, r4, l_tagName101@l
/* 80187E04  7C 80 DA 14 */	add r4, r0, r27
/* 80187E08  80 A4 00 00 */	lwz r5, 0(r4)
/* 80187E0C  80 C4 00 04 */	lwz r6, 4(r4)
/* 80187E10  81 83 00 00 */	lwz r12, 0(r3)
/* 80187E14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80187E18  7D 89 03 A6 */	mtctr r12
/* 80187E1C  4E 80 04 21 */	bctrl 
/* 80187E20  3C 80 80 3C */	lis r4, l_numTex@ha
/* 80187E24  38 84 AD 30 */	addi r4, r4, l_numTex@l
/* 80187E28  7C 84 D0 2E */	lwzx r4, r4, r26
/* 80187E2C  38 A0 00 00 */	li r5, 0
/* 80187E30  81 83 00 00 */	lwz r12, 0(r3)
/* 80187E34  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80187E38  7D 89 03 A6 */	mtctr r12
/* 80187E3C  4E 80 04 21 */	bctrl 
/* 80187E40  38 1C 00 7C */	addi r0, r28, 0x7c
/* 80187E44  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80187E48  83 23 00 24 */	lwz r25, 0x24(r3)
/* 80187E4C  83 03 00 28 */	lwz r24, 0x28(r3)
/* 80187E50  7F E4 FB 78 */	mr r4, r31
/* 80187E54  38 1E 02 5B */	addi r0, r30, 0x25b
/* 80187E58  7C 1D 00 AE */	lbzx r0, r29, r0
/* 80187E5C  7C 00 00 34 */	cntlzw r0, r0
/* 80187E60  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 80187E64  57 C6 06 3E */	clrlwi r6, r30, 0x18
/* 80187E68  48 00 AA ED */	bl setSaveData__12dFile_info_cFP10dSv_save_ciUc
/* 80187E6C  2C 03 FF FF */	cmpwi r3, -1
/* 80187E70  41 82 00 0C */	beq lbl_80187E7C
/* 80187E74  2C 03 00 01 */	cmpwi r3, 1
/* 80187E78  40 82 00 18 */	bne lbl_80187E90
lbl_80187E7C:
/* 80187E7C  7F 23 CB 78 */	mr r3, r25
/* 80187E80  48 0C D7 89 */	bl hide__13CPaneMgrAlphaFv
/* 80187E84  7F 03 C3 78 */	mr r3, r24
/* 80187E88  48 0C D7 41 */	bl show__13CPaneMgrAlphaFv
/* 80187E8C  48 00 00 14 */	b lbl_80187EA0
lbl_80187E90:
/* 80187E90  7F 23 CB 78 */	mr r3, r25
/* 80187E94  48 0C D7 35 */	bl show__13CPaneMgrAlphaFv
/* 80187E98  7F 03 C3 78 */	mr r3, r24
/* 80187E9C  48 0C D7 6D */	bl hide__13CPaneMgrAlphaFv
lbl_80187EA0:
/* 80187EA0  3B FF 0A 94 */	addi r31, r31, 0xa94
/* 80187EA4  3B 9C 00 04 */	addi r28, r28, 4
/* 80187EA8  3B 7B 00 08 */	addi r27, r27, 8
lbl_80187EAC:
/* 80187EAC  3B DE 00 01 */	addi r30, r30, 1
/* 80187EB0  2C 1E 00 03 */	cmpwi r30, 3
/* 80187EB4  3B 5A 00 04 */	addi r26, r26, 4
/* 80187EB8  41 80 FF 2C */	blt lbl_80187DE4
/* 80187EBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80187EC0  48 1D A3 55 */	bl _restgpr_24
/* 80187EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80187EC8  7C 08 03 A6 */	mtlr r0
/* 80187ECC  38 21 00 30 */	addi r1, r1, 0x30
/* 80187ED0  4E 80 00 20 */	blr 
