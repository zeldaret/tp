lbl_80D5F2F8:
/* 80D5F2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F2FC  7C 08 02 A6 */	mflr r0
/* 80D5F300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5F308  7C 7F 1B 78 */	mr r31, r3
/* 80D5F30C  38 00 00 FF */	li r0, 0xff
/* 80D5F310  98 03 05 72 */	stb r0, 0x572(r3)
/* 80D5F314  3C 60 80 D6 */	lis r3, l_arcName@ha /* 0x80D5F9A0@ha */
/* 80D5F318  80 03 F9 A0 */	lwz r0, l_arcName@l(r3)  /* 0x80D5F9A0@l */
/* 80D5F31C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D5F320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5F324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5F328  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D5F32C  7F E4 FB 78 */	mr r4, r31
/* 80D5F330  3C A0 80 D6 */	lis r5, l_evName@ha /* 0x80D5F9A4@ha */
/* 80D5F334  38 A5 F9 A4 */	addi r5, r5, l_evName@l /* 0x80D5F9A4@l */
/* 80D5F338  80 A5 00 00 */	lwz r5, 0(r5)
/* 80D5F33C  38 C0 00 FF */	li r6, 0xff
/* 80D5F340  4B 2E 84 19 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D5F344  B0 7F 05 74 */	sth r3, 0x574(r31)
/* 80D5F348  38 60 00 01 */	li r3, 1
/* 80D5F34C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5F350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F354  7C 08 03 A6 */	mtlr r0
/* 80D5F358  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F35C  4E 80 00 20 */	blr 
