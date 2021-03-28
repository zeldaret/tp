lbl_80C9D82C:
/* 80C9D82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D830  7C 08 02 A6 */	mflr r0
/* 80C9D834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D83C  7C 7F 1B 78 */	mr r31, r3
/* 80C9D840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9D844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9D848  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D84C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9D850  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C9D854  7C 05 07 74 */	extsb r5, r0
/* 80C9D858  4B 39 7B 08 */	b isSwitch__10dSv_info_cCFii
/* 80C9D85C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9D860  41 82 00 14 */	beq lbl_80C9D874
/* 80C9D864  38 00 00 03 */	li r0, 3
/* 80C9D868  98 1F 06 3D */	stb r0, 0x63d(r31)
/* 80C9D86C  38 60 00 01 */	li r3, 1
/* 80C9D870  48 00 00 68 */	b lbl_80C9D8D8
lbl_80C9D874:
/* 80C9D874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9D878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9D87C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D880  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C9D884  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C9D888  7C 05 07 74 */	extsb r5, r0
/* 80C9D88C  4B 39 7A D4 */	b isSwitch__10dSv_info_cCFii
/* 80C9D890  88 1F 06 3F */	lbz r0, 0x63f(r31)
/* 80C9D894  7C 00 18 00 */	cmpw r0, r3
/* 80C9D898  41 82 00 3C */	beq lbl_80C9D8D4
/* 80C9D89C  38 00 00 01 */	li r0, 1
/* 80C9D8A0  98 1F 06 3D */	stb r0, 0x63d(r31)
/* 80C9D8A4  7F E3 FB 78 */	mr r3, r31
/* 80C9D8A8  A8 9F 06 40 */	lha r4, 0x640(r31)
/* 80C9D8AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D8B0  54 05 86 3E */	rlwinm r5, r0, 0x10, 0x18, 0x1f
/* 80C9D8B4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80C9D8B8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80C9D8BC  38 E0 00 00 */	li r7, 0
/* 80C9D8C0  39 00 00 01 */	li r8, 1
/* 80C9D8C4  4B 37 DD B8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80C9D8C8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C9D8CC  60 00 00 02 */	ori r0, r0, 2
/* 80C9D8D0  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80C9D8D4:
/* 80C9D8D4  38 60 00 01 */	li r3, 1
lbl_80C9D8D8:
/* 80C9D8D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D8E0  7C 08 03 A6 */	mtlr r0
/* 80C9D8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D8E8  4E 80 00 20 */	blr 
