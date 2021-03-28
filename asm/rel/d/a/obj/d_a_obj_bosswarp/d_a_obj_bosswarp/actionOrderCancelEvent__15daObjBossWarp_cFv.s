lbl_8057A994:
/* 8057A994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A998  7C 08 02 A6 */	mflr r0
/* 8057A99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A9A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A9A4  7C 7F 1B 78 */	mr r31, r3
/* 8057A9A8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8057A9AC  28 00 00 02 */	cmplwi r0, 2
/* 8057A9B0  40 82 00 40 */	bne lbl_8057A9F0
/* 8057A9B4  38 00 00 0A */	li r0, 0xa
/* 8057A9B8  98 1F 05 90 */	stb r0, 0x590(r31)
/* 8057A9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A9C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057A9C4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8057A9C8  3C 80 80 58 */	lis r4, struct_8057B4EC+0x0@ha
/* 8057A9CC  38 84 B4 EC */	addi r4, r4, struct_8057B4EC+0x0@l
/* 8057A9D0  38 84 00 C3 */	addi r4, r4, 0xc3
/* 8057A9D4  38 A0 00 00 */	li r5, 0
/* 8057A9D8  38 C0 00 00 */	li r6, 0
/* 8057A9DC  4B AC D1 40 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8057A9E0  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 8057A9E4  7F E3 FB 78 */	mr r3, r31
/* 8057A9E8  48 00 00 AD */	bl demoProc__15daObjBossWarp_cFv
/* 8057A9EC  48 00 00 2C */	b lbl_8057AA18
lbl_8057A9F0:
/* 8057A9F0  A8 9F 06 1E */	lha r4, 0x61e(r31)
/* 8057A9F4  38 A0 00 FF */	li r5, 0xff
/* 8057A9F8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A9FC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057AA00  38 E0 00 00 */	li r7, 0
/* 8057AA04  39 00 00 01 */	li r8, 1
/* 8057AA08  4B AA 0C 74 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057AA0C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8057AA10  60 00 00 02 */	ori r0, r0, 2
/* 8057AA14  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8057AA18:
/* 8057AA18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057AA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057AA20  7C 08 03 A6 */	mtlr r0
/* 8057AA24  38 21 00 10 */	addi r1, r1, 0x10
/* 8057AA28  4E 80 00 20 */	blr 
