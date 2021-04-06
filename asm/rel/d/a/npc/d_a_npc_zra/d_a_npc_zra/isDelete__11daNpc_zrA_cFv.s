lbl_80B7C644:
/* 80B7C644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7C648  7C 08 02 A6 */	mflr r0
/* 80B7C64C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7C650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7C654  7C 7F 1B 78 */	mr r31, r3
/* 80B7C658  88 03 14 E8 */	lbz r0, 0x14e8(r3)
/* 80B7C65C  28 00 00 05 */	cmplwi r0, 5
/* 80B7C660  40 82 00 24 */	bne lbl_80B7C684
/* 80B7C664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7C668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7C66C  88 9F 15 0E */	lbz r4, 0x150e(r31)
/* 80B7C670  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B7C674  7C 05 07 74 */	extsb r5, r0
/* 80B7C678  4B 4B 8C E9 */	bl isSwitch__10dSv_info_cCFii
/* 80B7C67C  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C680  40 82 00 7C */	bne lbl_80B7C6FC
lbl_80B7C684:
/* 80B7C684  88 1F 14 E8 */	lbz r0, 0x14e8(r31)
/* 80B7C688  28 00 00 06 */	cmplwi r0, 6
/* 80B7C68C  40 82 00 14 */	bne lbl_80B7C6A0
/* 80B7C690  38 60 01 0A */	li r3, 0x10a
/* 80B7C694  4B 5D 8F A1 */	bl daNpcF_chkEvtBit__FUl
/* 80B7C698  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C69C  41 82 00 60 */	beq lbl_80B7C6FC
lbl_80B7C6A0:
/* 80B7C6A0  88 1F 14 E8 */	lbz r0, 0x14e8(r31)
/* 80B7C6A4  28 00 00 03 */	cmplwi r0, 3
/* 80B7C6A8  40 82 00 5C */	bne lbl_80B7C704
/* 80B7C6AC  88 1F 15 0D */	lbz r0, 0x150d(r31)
/* 80B7C6B0  28 00 00 03 */	cmplwi r0, 3
/* 80B7C6B4  40 82 00 50 */	bne lbl_80B7C704
/* 80B7C6B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7C6BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7C6C0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80B7C6C4  3C 80 80 B9 */	lis r4, d_a_npc_zra__stringBase0@ha /* 0x80B8CD30@ha */
/* 80B7C6C8  38 84 CD 30 */	addi r4, r4, d_a_npc_zra__stringBase0@l /* 0x80B8CD30@l */
/* 80B7C6CC  38 84 01 47 */	addi r4, r4, 0x147
/* 80B7C6D0  4B 7E C2 C5 */	bl strcmp
/* 80B7C6D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B7C6D8  40 82 00 24 */	bne lbl_80B7C6FC
/* 80B7C6DC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B7C6E0  7C 00 07 75 */	extsb. r0, r0
/* 80B7C6E4  40 82 00 18 */	bne lbl_80B7C6FC
/* 80B7C6E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7C6EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7C6F0  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 80B7C6F4  2C 00 00 02 */	cmpwi r0, 2
/* 80B7C6F8  41 82 00 0C */	beq lbl_80B7C704
lbl_80B7C6FC:
/* 80B7C6FC  38 60 00 01 */	li r3, 1
/* 80B7C700  48 00 00 08 */	b lbl_80B7C708
lbl_80B7C704:
/* 80B7C704  38 60 00 00 */	li r3, 0
lbl_80B7C708:
/* 80B7C708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7C70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7C710  7C 08 03 A6 */	mtlr r0
/* 80B7C714  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7C718  4E 80 00 20 */	blr 
