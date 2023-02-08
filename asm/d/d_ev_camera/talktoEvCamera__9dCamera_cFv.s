lbl_80090174:
/* 80090174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80090178  7C 08 02 A6 */	mflr r0
/* 8009017C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090184  7C 7F 1B 78 */	mr r31, r3
/* 80090188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009018C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80090190  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80090194  80 84 4F 8C */	lwz r4, 0x4f8c(r4)
/* 80090198  4B FB 31 55 */	bl convPId__14dEvt_control_cFUi
/* 8009019C  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 800901A0  80 1F 04 F4 */	lwz r0, 0x4f4(r31)
/* 800901A4  1C 00 00 44 */	mulli r0, r0, 0x44
/* 800901A8  7C 63 02 14 */	add r3, r3, r0
/* 800901AC  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 800901B0  1C 00 00 16 */	mulli r0, r0, 0x16
/* 800901B4  7C 63 02 14 */	add r3, r3, r0
/* 800901B8  A8 83 00 1E */	lha r4, 0x1e(r3)
/* 800901BC  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 800901C0  28 00 00 00 */	cmplwi r0, 0
/* 800901C4  40 82 00 10 */	bne lbl_800901D4
/* 800901C8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 800901CC  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 800901D0  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_800901D4:
/* 800901D4  2C 04 00 00 */	cmpwi r4, 0
/* 800901D8  40 80 00 18 */	bge lbl_800901F0
/* 800901DC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 800901E0  3C 80 54 54 */	lis r4, 0x5454 /* 0x54543031@ha */
/* 800901E4  38 84 30 31 */	addi r4, r4, 0x3031 /* 0x54543031@l */
/* 800901E8  4B FF 84 39 */	bl SearchStyle__11dCamParam_cFUl
/* 800901EC  7C 64 1B 78 */	mr r4, r3
lbl_800901F0:
/* 800901F0  7F E3 FB 78 */	mr r3, r31
/* 800901F4  80 BF 0A F4 */	lwz r5, 0xaf4(r31)
/* 800901F8  1C 04 00 78 */	mulli r0, r4, 0x78
/* 800901FC  7C A5 02 14 */	add r5, r5, r0
/* 80090200  A0 05 00 04 */	lhz r0, 4(r5)
/* 80090204  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80090208  3C A0 80 3C */	lis r5, engine_tbl__9dCamera_c@ha /* 0x803BA25C@ha */
/* 8009020C  38 05 A2 5C */	addi r0, r5, engine_tbl__9dCamera_c@l /* 0x803BA25C@l */
/* 80090210  7D 80 32 14 */	add r12, r0, r6
/* 80090214  48 2D 1E 71 */	bl __ptmf_scall
/* 80090218  60 00 00 00 */	nop 
/* 8009021C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090224  7C 08 03 A6 */	mtlr r0
/* 80090228  38 21 00 10 */	addi r1, r1, 0x10
/* 8009022C  4E 80 00 20 */	blr 
