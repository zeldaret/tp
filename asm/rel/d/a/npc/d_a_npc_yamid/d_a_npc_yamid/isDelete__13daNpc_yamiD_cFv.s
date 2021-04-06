lbl_80B43998:
/* 80B43998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4399C  7C 08 02 A6 */	mflr r0
/* 80B439A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B439A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B439A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B439AC  7C 7E 1B 78 */	mr r30, r3
/* 80B439B0  3B E0 00 00 */	li r31, 0
/* 80B439B4  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B439B8  2C 00 00 02 */	cmpwi r0, 2
/* 80B439BC  40 80 00 48 */	bge lbl_80B43A04
/* 80B439C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B439C4  40 80 00 08 */	bge lbl_80B439CC
/* 80B439C8  48 00 00 3C */	b lbl_80B43A04
lbl_80B439CC:
/* 80B439CC  38 60 02 3A */	li r3, 0x23a
/* 80B439D0  4B 60 90 DD */	bl daNpcT_chkEvtBit__FUl
/* 80B439D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B439D8  40 82 00 2C */	bne lbl_80B43A04
/* 80B439DC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B439E0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B439E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B439E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B439EC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B439F0  7C 05 07 74 */	extsb r5, r0
/* 80B439F4  4B 4F 19 6D */	bl isSwitch__10dSv_info_cCFii
/* 80B439F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B439FC  40 82 00 08 */	bne lbl_80B43A04
/* 80B43A00  3B E0 00 01 */	li r31, 1
lbl_80B43A04:
/* 80B43A04  7F E3 FB 78 */	mr r3, r31
/* 80B43A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B43A0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B43A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B43A14  7C 08 03 A6 */	mtlr r0
/* 80B43A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80B43A1C  4E 80 00 20 */	blr 
