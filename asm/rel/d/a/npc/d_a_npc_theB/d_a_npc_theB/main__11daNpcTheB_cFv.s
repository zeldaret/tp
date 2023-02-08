lbl_80AFD6F0:
/* 80AFD6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD6F4  7C 08 02 A6 */	mflr r0
/* 80AFD6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD6FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFD700  93 C1 00 08 */	stw r30, 8(r1)
/* 80AFD704  7C 7F 1B 78 */	mr r31, r3
/* 80AFD708  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AFD70C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80AFD710  7D 89 03 A6 */	mtctr r12
/* 80AFD714  4E 80 04 21 */	bctrl 
/* 80AFD718  7F E3 FB 78 */	mr r3, r31
/* 80AFD71C  48 00 12 F9 */	bl doEvent__11daNpcTheB_cFv
/* 80AFD720  2C 03 00 00 */	cmpwi r3, 0
/* 80AFD724  40 82 00 0C */	bne lbl_80AFD730
/* 80AFD728  7F E3 FB 78 */	mr r3, r31
/* 80AFD72C  48 00 11 F5 */	bl doNormalAction__11daNpcTheB_cFv
lbl_80AFD730:
/* 80AFD730  88 1F 09 EE */	lbz r0, 0x9ee(r31)
/* 80AFD734  28 00 00 00 */	cmplwi r0, 0
/* 80AFD738  41 82 00 1C */	beq lbl_80AFD754
/* 80AFD73C  3C 60 80 B0 */	lis r3, lit_4248@ha /* 0x80B00DF0@ha */
/* 80AFD740  C0 03 0D F0 */	lfs f0, lit_4248@l(r3)  /* 0x80B00DF0@l */
/* 80AFD744  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80AFD748  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80AFD74C  38 00 00 00 */	li r0, 0
/* 80AFD750  98 1F 09 EE */	stb r0, 0x9ee(r31)
lbl_80AFD754:
/* 80AFD754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFD758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFD75C  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80AFD760  28 03 00 00 */	cmplwi r3, 0
/* 80AFD764  41 82 00 30 */	beq lbl_80AFD794
/* 80AFD768  88 1F 09 ED */	lbz r0, 0x9ed(r31)
/* 80AFD76C  28 00 00 00 */	cmplwi r0, 0
/* 80AFD770  41 82 01 68 */	beq lbl_80AFD8D8
/* 80AFD774  38 00 00 00 */	li r0, 0
/* 80AFD778  28 03 00 00 */	cmplwi r3, 0
/* 80AFD77C  41 82 00 0C */	beq lbl_80AFD788
/* 80AFD780  28 03 00 02 */	cmplwi r3, 2
/* 80AFD784  40 82 00 08 */	bne lbl_80AFD78C
lbl_80AFD788:
/* 80AFD788  38 00 00 01 */	li r0, 1
lbl_80AFD78C:
/* 80AFD78C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AFD790  41 82 01 48 */	beq lbl_80AFD8D8
lbl_80AFD794:
/* 80AFD794  38 00 00 00 */	li r0, 0
/* 80AFD798  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AFD79C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFD7A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFD7A4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80AFD7A8  3C 80 80 B0 */	lis r4, d_a_npc_theB__stringBase0@ha /* 0x80B00FA0@ha */
/* 80AFD7AC  38 84 0F A0 */	addi r4, r4, d_a_npc_theB__stringBase0@l /* 0x80B00FA0@l */
/* 80AFD7B0  38 84 00 6E */	addi r4, r4, 0x6e
/* 80AFD7B4  4B 86 B1 E1 */	bl strcmp
/* 80AFD7B8  2C 03 00 00 */	cmpwi r3, 0
/* 80AFD7BC  40 82 00 D0 */	bne lbl_80AFD88C
/* 80AFD7C0  38 60 00 00 */	li r3, 0
/* 80AFD7C4  4B 52 F1 B9 */	bl getLayerNo__14dComIfG_play_cFi
/* 80AFD7C8  2C 03 00 03 */	cmpwi r3, 3
/* 80AFD7CC  40 82 00 94 */	bne lbl_80AFD860
/* 80AFD7D0  88 1F 0E 0E */	lbz r0, 0xe0e(r31)
/* 80AFD7D4  28 00 00 00 */	cmplwi r0, 0
/* 80AFD7D8  40 82 00 3C */	bne lbl_80AFD814
/* 80AFD7DC  38 00 00 01 */	li r0, 1
/* 80AFD7E0  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AFD7E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFD7E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFD7EC  3B C3 09 78 */	addi r30, r3, 0x978
/* 80AFD7F0  7F C3 F3 78 */	mr r3, r30
/* 80AFD7F4  38 80 00 34 */	li r4, 0x34
/* 80AFD7F8  4B 53 73 C9 */	bl offSwitch__12dSv_danBit_cFi
/* 80AFD7FC  7F C3 F3 78 */	mr r3, r30
/* 80AFD800  38 80 00 35 */	li r4, 0x35
/* 80AFD804  4B 53 73 BD */	bl offSwitch__12dSv_danBit_cFi
/* 80AFD808  38 00 00 01 */	li r0, 1
/* 80AFD80C  98 1F 0E 0E */	stb r0, 0xe0e(r31)
/* 80AFD810  48 00 00 7C */	b lbl_80AFD88C
lbl_80AFD814:
/* 80AFD814  7F E3 FB 78 */	mr r3, r31
/* 80AFD818  38 80 00 05 */	li r4, 5
/* 80AFD81C  38 A0 00 00 */	li r5, 0
/* 80AFD820  4B 65 6A 81 */	bl getEvtAreaTagP__8daNpcF_cFii
/* 80AFD824  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AFD828  41 82 00 64 */	beq lbl_80AFD88C
/* 80AFD82C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFD830  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFD834  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AFD838  4B 51 CF A9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AFD83C  3C 60 80 B0 */	lis r3, lit_4523@ha /* 0x80B00E30@ha */
/* 80AFD840  C0 43 0E 30 */	lfs f2, lit_4523@l(r3)  /* 0x80B00E30@l */
/* 80AFD844  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80AFD848  EC 02 00 32 */	fmuls f0, f2, f0
/* 80AFD84C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFD850  40 80 00 3C */	bge lbl_80AFD88C
/* 80AFD854  38 00 00 02 */	li r0, 2
/* 80AFD858  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AFD85C  48 00 00 30 */	b lbl_80AFD88C
lbl_80AFD860:
/* 80AFD860  88 1F 0E 0C */	lbz r0, 0xe0c(r31)
/* 80AFD864  28 00 00 00 */	cmplwi r0, 0
/* 80AFD868  41 82 00 10 */	beq lbl_80AFD878
/* 80AFD86C  38 00 00 04 */	li r0, 4
/* 80AFD870  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AFD874  48 00 00 18 */	b lbl_80AFD88C
lbl_80AFD878:
/* 80AFD878  88 1F 0E 0D */	lbz r0, 0xe0d(r31)
/* 80AFD87C  28 00 00 00 */	cmplwi r0, 0
/* 80AFD880  41 82 00 0C */	beq lbl_80AFD88C
/* 80AFD884  38 00 00 05 */	li r0, 5
/* 80AFD888  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
lbl_80AFD88C:
/* 80AFD88C  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80AFD890  28 00 00 00 */	cmplwi r0, 0
/* 80AFD894  41 82 00 10 */	beq lbl_80AFD8A4
/* 80AFD898  3C 60 80 B0 */	lis r3, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFD89C  80 03 10 E4 */	lwz r0, l_arcName@l(r3)  /* 0x80B010E4@l */
/* 80AFD8A0  90 1F 01 00 */	stw r0, 0x100(r31)
lbl_80AFD8A4:
/* 80AFD8A4  7F E3 FB 78 */	mr r3, r31
/* 80AFD8A8  88 9F 09 E9 */	lbz r4, 0x9e9(r31)
/* 80AFD8AC  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80AFD8B0  54 00 10 3A */	slwi r0, r0, 2
/* 80AFD8B4  3C A0 80 B0 */	lis r5, l_evtNames@ha /* 0x80B010CC@ha */
/* 80AFD8B8  38 A5 10 CC */	addi r5, r5, l_evtNames@l /* 0x80B010CC@l */
/* 80AFD8BC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AFD8C0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AFD8C4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AFD8C8  38 E0 00 04 */	li r7, 4
/* 80AFD8CC  39 00 00 FF */	li r8, 0xff
/* 80AFD8D0  39 20 00 01 */	li r9, 1
/* 80AFD8D4  4B 65 5F A9 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80AFD8D8:
/* 80AFD8D8  7F E3 FB 78 */	mr r3, r31
/* 80AFD8DC  48 00 0C 99 */	bl playExpression__11daNpcTheB_cFv
/* 80AFD8E0  7F E3 FB 78 */	mr r3, r31
/* 80AFD8E4  48 00 0E 21 */	bl playMotion__11daNpcTheB_cFv
/* 80AFD8E8  7F E3 FB 78 */	mr r3, r31
/* 80AFD8EC  4B 65 56 55 */	bl playAllAnm__8daNpcF_cFv
/* 80AFD8F0  7F E3 FB 78 */	mr r3, r31
/* 80AFD8F4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AFD8F8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AFD8FC  7D 89 03 A6 */	mtctr r12
/* 80AFD900  4E 80 04 21 */	bctrl 
/* 80AFD904  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80AFD908  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 80AFD90C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AFD910  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80AFD914  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80AFD918  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80AFD91C  38 60 00 01 */	li r3, 1
/* 80AFD920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFD924  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AFD928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD92C  7C 08 03 A6 */	mtlr r0
/* 80AFD930  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD934  4E 80 00 20 */	blr 
