lbl_809EADE8:
/* 809EADE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EADEC  7C 08 02 A6 */	mflr r0
/* 809EADF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EADF4  7C 65 1B 78 */	mr r5, r3
/* 809EADF8  88 03 1A 7C */	lbz r0, 0x1a7c(r3)
/* 809EADFC  28 00 00 03 */	cmplwi r0, 3
/* 809EAE00  41 82 00 0C */	beq lbl_809EAE0C
/* 809EAE04  28 00 00 01 */	cmplwi r0, 1
/* 809EAE08  40 82 00 0C */	bne lbl_809EAE14
lbl_809EAE0C:
/* 809EAE0C  38 60 00 00 */	li r3, 0
/* 809EAE10  48 00 00 68 */	b lbl_809EAE78
lbl_809EAE14:
/* 809EAE14  28 00 00 00 */	cmplwi r0, 0
/* 809EAE18  40 82 00 2C */	bne lbl_809EAE44
/* 809EAE1C  38 60 01 0B */	li r3, 0x10b
/* 809EAE20  4B 76 A8 15 */	bl daNpcF_chkEvtBit__FUl
/* 809EAE24  2C 03 00 00 */	cmpwi r3, 0
/* 809EAE28  41 82 00 4C */	beq lbl_809EAE74
/* 809EAE2C  38 60 01 1F */	li r3, 0x11f
/* 809EAE30  4B 76 A8 05 */	bl daNpcF_chkEvtBit__FUl
/* 809EAE34  2C 03 00 00 */	cmpwi r3, 0
/* 809EAE38  40 82 00 3C */	bne lbl_809EAE74
/* 809EAE3C  38 60 00 00 */	li r3, 0
/* 809EAE40  48 00 00 38 */	b lbl_809EAE78
lbl_809EAE44:
/* 809EAE44  28 00 00 02 */	cmplwi r0, 2
/* 809EAE48  40 82 00 2C */	bne lbl_809EAE74
/* 809EAE4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EAE50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EAE54  88 85 1A 98 */	lbz r4, 0x1a98(r5)
/* 809EAE58  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 809EAE5C  7C 05 07 74 */	extsb r5, r0
/* 809EAE60  4B 64 A5 01 */	bl isSwitch__10dSv_info_cCFii
/* 809EAE64  2C 03 00 00 */	cmpwi r3, 0
/* 809EAE68  40 82 00 0C */	bne lbl_809EAE74
/* 809EAE6C  38 60 00 00 */	li r3, 0
/* 809EAE70  48 00 00 08 */	b lbl_809EAE78
lbl_809EAE74:
/* 809EAE74  38 60 00 01 */	li r3, 1
lbl_809EAE78:
/* 809EAE78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EAE7C  7C 08 03 A6 */	mtlr r0
/* 809EAE80  38 21 00 10 */	addi r1, r1, 0x10
/* 809EAE84  4E 80 00 20 */	blr 
