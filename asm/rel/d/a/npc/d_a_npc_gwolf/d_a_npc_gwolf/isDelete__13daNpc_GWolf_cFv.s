lbl_809F4F00:
/* 809F4F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F4F04  7C 08 02 A6 */	mflr r0
/* 809F4F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F4F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F4F10  7C 7F 1B 78 */	mr r31, r3
/* 809F4F14  88 03 0E 10 */	lbz r0, 0xe10(r3)
/* 809F4F18  28 00 00 03 */	cmplwi r0, 3
/* 809F4F1C  41 82 00 0C */	beq lbl_809F4F28
/* 809F4F20  28 00 00 02 */	cmplwi r0, 2
/* 809F4F24  40 82 00 0C */	bne lbl_809F4F30
lbl_809F4F28:
/* 809F4F28  38 60 00 00 */	li r3, 0
/* 809F4F2C  48 00 00 B4 */	b lbl_809F4FE0
lbl_809F4F30:
/* 809F4F30  28 00 00 01 */	cmplwi r0, 1
/* 809F4F34  40 82 00 40 */	bne lbl_809F4F74
/* 809F4F38  88 1F 0E 11 */	lbz r0, 0xe11(r31)
/* 809F4F3C  7C 00 07 74 */	extsb r0, r0
/* 809F4F40  2C 00 FF FF */	cmpwi r0, -1
/* 809F4F44  41 82 00 98 */	beq lbl_809F4FDC
/* 809F4F48  54 00 08 3C */	slwi r0, r0, 1
/* 809F4F4C  3C 60 80 A0 */	lis r3, l_playerNoList@ha /* 0x809F8A7C@ha */
/* 809F4F50  38 63 8A 7C */	addi r3, r3, l_playerNoList@l /* 0x809F8A7C@l */
/* 809F4F54  7C 83 02 AE */	lhax r4, r3, r0
/* 809F4F58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F4F5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F4F60  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 809F4F64  7C 04 00 00 */	cmpw r4, r0
/* 809F4F68  40 82 00 74 */	bne lbl_809F4FDC
/* 809F4F6C  38 60 00 00 */	li r3, 0
/* 809F4F70  48 00 00 70 */	b lbl_809F4FE0
lbl_809F4F74:
/* 809F4F74  28 00 00 00 */	cmplwi r0, 0
/* 809F4F78  40 82 00 64 */	bne lbl_809F4FDC
/* 809F4F7C  88 1F 0E 11 */	lbz r0, 0xe11(r31)
/* 809F4F80  7C 00 07 74 */	extsb r0, r0
/* 809F4F84  2C 00 FF FF */	cmpwi r0, -1
/* 809F4F88  41 82 00 4C */	beq lbl_809F4FD4
/* 809F4F8C  54 00 08 3C */	slwi r0, r0, 1
/* 809F4F90  3C 60 80 A0 */	lis r3, l_delFlag@ha /* 0x809F8A6C@ha */
/* 809F4F94  38 63 8A 6C */	addi r3, r3, l_delFlag@l /* 0x809F8A6C@l */
/* 809F4F98  7C 63 02 AE */	lhax r3, r3, r0
/* 809F4F9C  4B 75 7B 11 */	bl daNpcT_chkEvtBit__FUl
/* 809F4FA0  2C 03 00 00 */	cmpwi r3, 0
/* 809F4FA4  41 82 00 28 */	beq lbl_809F4FCC
/* 809F4FA8  88 9F 0E 1E */	lbz r4, 0xe1e(r31)
/* 809F4FAC  28 04 00 FF */	cmplwi r4, 0xff
/* 809F4FB0  41 82 00 2C */	beq lbl_809F4FDC
/* 809F4FB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F4FB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F4FBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809F4FC0  7C 05 07 74 */	extsb r5, r0
/* 809F4FC4  4B 64 02 ED */	bl offSwitch__10dSv_info_cFii
/* 809F4FC8  48 00 00 14 */	b lbl_809F4FDC
lbl_809F4FCC:
/* 809F4FCC  38 60 00 00 */	li r3, 0
/* 809F4FD0  48 00 00 10 */	b lbl_809F4FE0
lbl_809F4FD4:
/* 809F4FD4  38 60 00 00 */	li r3, 0
/* 809F4FD8  48 00 00 08 */	b lbl_809F4FE0
lbl_809F4FDC:
/* 809F4FDC  38 60 00 01 */	li r3, 1
lbl_809F4FE0:
/* 809F4FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F4FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F4FE8  7C 08 03 A6 */	mtlr r0
/* 809F4FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 809F4FF0  4E 80 00 20 */	blr 
