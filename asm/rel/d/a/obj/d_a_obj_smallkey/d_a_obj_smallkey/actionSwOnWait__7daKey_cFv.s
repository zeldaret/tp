lbl_80CDADD4:
/* 80CDADD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDADD8  7C 08 02 A6 */	mflr r0
/* 80CDADDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDADE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDADE4  7C 7F 1B 78 */	mr r31, r3
/* 80CDADE8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CDADEC  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CDADF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDADF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDADF8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CDADFC  7C 05 07 74 */	extsb r5, r0
/* 80CDAE00  4B 35 A5 61 */	bl isSwitch__10dSv_info_cCFii
/* 80CDAE04  2C 03 00 00 */	cmpwi r3, 0
/* 80CDAE08  41 82 00 24 */	beq lbl_80CDAE2C
/* 80CDAE0C  38 7F 09 35 */	addi r3, r31, 0x935
/* 80CDAE10  48 00 09 B1 */	bl func_80CDB7C0
/* 80CDAE14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDAE18  40 82 00 14 */	bne lbl_80CDAE2C
/* 80CDAE1C  7F E3 FB 78 */	mr r3, r31
/* 80CDAE20  4B 35 CC 55 */	bl show__12daItemBase_cFv
/* 80CDAE24  7F E3 FB 78 */	mr r3, r31
/* 80CDAE28  4B FF FB 85 */	bl actionWaitInit__7daKey_cFv
lbl_80CDAE2C:
/* 80CDAE2C  7F E3 FB 78 */	mr r3, r31
/* 80CDAE30  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800D6@ha */
/* 80CDAE34  38 84 00 D6 */	addi r4, r4, 0x00D6 /* 0x000800D6@l */
/* 80CDAE38  48 00 04 A9 */	bl seStartTwinkle_private__7daKey_cFUl
/* 80CDAE3C  38 60 00 01 */	li r3, 1
/* 80CDAE40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDAE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDAE48  7C 08 03 A6 */	mtlr r0
/* 80CDAE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDAE50  4E 80 00 20 */	blr 
