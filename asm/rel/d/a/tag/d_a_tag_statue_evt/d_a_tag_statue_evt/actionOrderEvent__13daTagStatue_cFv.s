lbl_805A7714:
/* 805A7714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7718  7C 08 02 A6 */	mflr r0
/* 805A771C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7724  7C 7F 1B 78 */	mr r31, r3
/* 805A7728  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 805A772C  28 00 00 02 */	cmplwi r0, 2
/* 805A7730  40 82 00 34 */	bne lbl_805A7764
/* 805A7734  38 00 00 02 */	li r0, 2
/* 805A7738  98 1F 05 94 */	stb r0, 0x594(r31)
/* 805A773C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805A7740  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805A7744  80 63 00 00 */	lwz r3, 0(r3)
/* 805A7748  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805A774C  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000A4@ha */
/* 805A7750  38 84 00 A4 */	addi r4, r4, 0x00A4 /* 0x010000A4@l */
/* 805A7754  4B D0 7D 49 */	bl subBgmStart__8Z2SeqMgrFUl
/* 805A7758  7F E3 FB 78 */	mr r3, r31
/* 805A775C  48 00 00 F1 */	bl demoProc__13daTagStatue_cFv
/* 805A7760  48 00 00 2C */	b lbl_805A778C
lbl_805A7764:
/* 805A7764  A8 9F 05 98 */	lha r4, 0x598(r31)
/* 805A7768  88 BF 05 96 */	lbz r5, 0x596(r31)
/* 805A776C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 805A7770  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 805A7774  38 E0 00 00 */	li r7, 0
/* 805A7778  39 00 00 01 */	li r8, 1
/* 805A777C  4B A7 3F 01 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 805A7780  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A7784  60 00 00 02 */	ori r0, r0, 2
/* 805A7788  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_805A778C:
/* 805A778C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7794  7C 08 03 A6 */	mtlr r0
/* 805A7798  38 21 00 10 */	addi r1, r1, 0x10
/* 805A779C  4E 80 00 20 */	blr 
