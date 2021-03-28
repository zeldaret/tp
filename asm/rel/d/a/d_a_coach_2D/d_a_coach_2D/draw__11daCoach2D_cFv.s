lbl_80656DE4:
/* 80656DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80656DE8  7C 08 02 A6 */	mflr r0
/* 80656DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80656DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80656DF4  7C 7F 1B 78 */	mr r31, r3
/* 80656DF8  88 03 07 82 */	lbz r0, 0x782(r3)
/* 80656DFC  28 00 00 00 */	cmplwi r0, 0
/* 80656E00  41 82 00 68 */	beq lbl_80656E68
/* 80656E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80656E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80656E0C  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 80656E10  28 00 00 00 */	cmplwi r0, 0
/* 80656E14  40 82 00 54 */	bne lbl_80656E68
/* 80656E18  4B BE 14 14 */	b getStatus__12dMsgObject_cFv
/* 80656E1C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80656E20  20 60 00 01 */	subfic r3, r0, 1
/* 80656E24  30 03 FF FF */	addic r0, r3, -1
/* 80656E28  7C 00 19 10 */	subfe r0, r0, r3
/* 80656E2C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80656E30  40 82 00 38 */	bne lbl_80656E68
/* 80656E34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80656E38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80656E3C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80656E40  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80656E44  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80656E48  38 DF 07 70 */	addi r6, r31, 0x770
/* 80656E4C  4B 9F F9 48 */	b set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80656E50  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80656E54  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80656E58  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 80656E5C  60 00 00 01 */	ori r0, r0, 1
/* 80656E60  B0 03 00 A2 */	sth r0, 0xa2(r3)
/* 80656E64  48 00 00 18 */	b lbl_80656E7C
lbl_80656E68:
/* 80656E68  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80656E6C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80656E70  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 80656E74  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80656E78  B0 03 00 A2 */	sth r0, 0xa2(r3)
lbl_80656E7C:
/* 80656E7C  38 60 00 01 */	li r3, 1
/* 80656E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80656E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80656E88  7C 08 03 A6 */	mtlr r0
/* 80656E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80656E90  4E 80 00 20 */	blr 
