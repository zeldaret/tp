lbl_80807094:
/* 80807094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80807098  7C 08 02 A6 */	mflr r0
/* 8080709C  90 01 00 14 */	stw r0, 0x14(r1)
/* 808070A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808070A4  7C 7F 1B 78 */	mr r31, r3
/* 808070A8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 808070AC  3C 80 80 80 */	lis r4, stringBase0@ha
/* 808070B0  38 84 7D 64 */	addi r4, r4, stringBase0@l
/* 808070B4  4B 82 5F 54 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 808070B8  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 808070BC  28 00 00 00 */	cmplwi r0, 0
/* 808070C0  41 82 00 10 */	beq lbl_808070D0
/* 808070C4  38 00 00 00 */	li r0, 0
/* 808070C8  3C 60 80 80 */	lis r3, data_80807EF8@ha
/* 808070CC  98 03 7E F8 */	stb r0, data_80807EF8@l(r3)
lbl_808070D0:
/* 808070D0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 808070D4  28 00 00 00 */	cmplwi r0, 0
/* 808070D8  41 82 00 0C */	beq lbl_808070E4
/* 808070DC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 808070E0  4B 80 A2 30 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_808070E4:
/* 808070E4  38 60 00 01 */	li r3, 1
/* 808070E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808070EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808070F0  7C 08 03 A6 */	mtlr r0
/* 808070F4  38 21 00 10 */	addi r1, r1, 0x10
/* 808070F8  4E 80 00 20 */	blr 
