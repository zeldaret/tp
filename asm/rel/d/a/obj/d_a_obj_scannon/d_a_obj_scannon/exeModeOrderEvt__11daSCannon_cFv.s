lbl_80CC7C48:
/* 80CC7C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7C4C  7C 08 02 A6 */	mflr r0
/* 80CC7C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7C58  7C 7F 1B 78 */	mr r31, r3
/* 80CC7C5C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CC7C60  28 00 00 02 */	cmplwi r0, 2
/* 80CC7C64  40 82 00 5C */	bne lbl_80CC7CC0
/* 80CC7C68  88 1F 06 18 */	lbz r0, 0x618(r31)
/* 80CC7C6C  28 00 00 02 */	cmplwi r0, 2
/* 80CC7C70  40 82 00 14 */	bne lbl_80CC7C84
/* 80CC7C74  3C 60 80 CD */	lis r3, struct_80CC9224+0x0@ha
/* 80CC7C78  38 63 92 24 */	addi r3, r3, struct_80CC9224+0x0@l
/* 80CC7C7C  38 83 00 97 */	addi r4, r3, 0x97
/* 80CC7C80  48 00 00 0C */	b lbl_80CC7C8C
lbl_80CC7C84:
/* 80CC7C84  3C 60 80 CD */	lis r3, l_staffName@ha
/* 80CC7C88  80 83 93 34 */	lwz r4, l_staffName@l(r3)
lbl_80CC7C8C:
/* 80CC7C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC7C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC7C94  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC7C98  38 A0 00 00 */	li r5, 0
/* 80CC7C9C  38 C0 00 00 */	li r6, 0
/* 80CC7CA0  4B 37 FE 7C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CC7CA4  90 7F 06 04 */	stw r3, 0x604(r31)
/* 80CC7CA8  38 00 00 02 */	li r0, 2
/* 80CC7CAC  98 1F 06 16 */	stb r0, 0x616(r31)
/* 80CC7CB0  7F E3 FB 78 */	mr r3, r31
/* 80CC7CB4  38 80 00 00 */	li r4, 0
/* 80CC7CB8  48 00 02 F5 */	bl demoModeInit__11daSCannon_cFi
/* 80CC7CBC  48 00 00 44 */	b lbl_80CC7D00
lbl_80CC7CC0:
/* 80CC7CC0  A8 9F 06 10 */	lha r4, 0x610(r31)
/* 80CC7CC4  38 A0 00 FF */	li r5, 0xff
/* 80CC7CC8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CC7CCC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CC7CD0  88 FF 06 18 */	lbz r7, 0x618(r31)
/* 80CC7CD4  38 07 FF FF */	addi r0, r7, -1
/* 80CC7CD8  30 00 FF FF */	addic r0, r0, -1
/* 80CC7CDC  7C E0 01 10 */	subfe r7, r0, r0
/* 80CC7CE0  38 00 00 02 */	li r0, 2
/* 80CC7CE4  7C 00 38 78 */	andc r0, r0, r7
/* 80CC7CE8  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 80CC7CEC  39 00 00 01 */	li r8, 1
/* 80CC7CF0  4B 35 39 8C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CC7CF4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CC7CF8  60 00 00 02 */	ori r0, r0, 2
/* 80CC7CFC  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CC7D00:
/* 80CC7D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC7D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC7D08  7C 08 03 A6 */	mtlr r0
/* 80CC7D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7D10  4E 80 00 20 */	blr 
