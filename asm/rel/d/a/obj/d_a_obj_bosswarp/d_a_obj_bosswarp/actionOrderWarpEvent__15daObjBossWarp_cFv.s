lbl_8057A6E0:
/* 8057A6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A6E4  7C 08 02 A6 */	mflr r0
/* 8057A6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A6F0  7C 7F 1B 78 */	mr r31, r3
/* 8057A6F4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8057A6F8  28 00 00 02 */	cmplwi r0, 2
/* 8057A6FC  40 82 00 40 */	bne lbl_8057A73C
/* 8057A700  38 00 00 05 */	li r0, 5
/* 8057A704  98 1F 05 90 */	stb r0, 0x590(r31)
/* 8057A708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A70C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057A710  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8057A714  3C 80 80 58 */	lis r4, struct_8057B4EC+0x0@ha
/* 8057A718  38 84 B4 EC */	addi r4, r4, struct_8057B4EC+0x0@l
/* 8057A71C  38 84 00 C3 */	addi r4, r4, 0xc3
/* 8057A720  38 A0 00 00 */	li r5, 0
/* 8057A724  38 C0 00 00 */	li r6, 0
/* 8057A728  4B AC D3 F4 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8057A72C  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 8057A730  7F E3 FB 78 */	mr r3, r31
/* 8057A734  48 00 03 61 */	bl demoProc__15daObjBossWarp_cFv
/* 8057A738  48 00 00 2C */	b lbl_8057A764
lbl_8057A73C:
/* 8057A73C  A8 9F 05 96 */	lha r4, 0x596(r31)
/* 8057A740  88 BF 05 98 */	lbz r5, 0x598(r31)
/* 8057A744  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A748  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057A74C  38 E0 00 00 */	li r7, 0
/* 8057A750  39 00 00 01 */	li r8, 1
/* 8057A754  4B AA 0F 28 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057A758  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8057A75C  60 00 00 02 */	ori r0, r0, 2
/* 8057A760  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8057A764:
/* 8057A764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A76C  7C 08 03 A6 */	mtlr r0
/* 8057A770  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A774  4E 80 00 20 */	blr 
