lbl_80090478:
/* 80090478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009047C  7C 08 02 A6 */	mflr r0
/* 80090480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80090484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80090488  7C 7F 1B 78 */	mr r31, r3
/* 8009048C  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80090490  28 00 00 00 */	cmplwi r0, 0
/* 80090494  40 82 00 10 */	bne lbl_800904A4
/* 80090498  38 00 00 00 */	li r0, 0
/* 8009049C  90 1F 04 F0 */	stw r0, 0x4f0(r31)
/* 800904A0  90 1F 01 60 */	stw r0, 0x160(r31)
lbl_800904A4:
/* 800904A4  7F E3 FB 78 */	mr r3, r31
/* 800904A8  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 800904AC  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 800904B0  38 85 01 71 */	addi r4, r5, 0x171
/* 800904B4  38 A5 01 76 */	addi r5, r5, 0x176
/* 800904B8  4B FF 8F 65 */	bl getEvStringPntData__9dCamera_cFPcPc
/* 800904BC  7C 64 1B 78 */	mr r4, r3
/* 800904C0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 800904C4  80 84 00 00 */	lwz r4, 0(r4)
/* 800904C8  4B FF 81 59 */	bl SearchStyle__11dCamParam_cFUl
/* 800904CC  7C 64 1B 78 */	mr r4, r3
/* 800904D0  7F E3 FB 78 */	mr r3, r31
/* 800904D4  80 BF 0A F4 */	lwz r5, 0xaf4(r31)
/* 800904D8  1C 04 00 78 */	mulli r0, r4, 0x78
/* 800904DC  7C A5 02 14 */	add r5, r5, r0
/* 800904E0  A0 05 00 04 */	lhz r0, 4(r5)
/* 800904E4  1C C0 00 0C */	mulli r6, r0, 0xc
/* 800904E8  3C A0 80 3C */	lis r5, engine_tbl__9dCamera_c@ha
/* 800904EC  38 05 A2 5C */	addi r0, r5, engine_tbl__9dCamera_c@l
/* 800904F0  7D 80 32 14 */	add r12, r0, r6
/* 800904F4  48 2D 1B 91 */	bl __ptmf_scall
/* 800904F8  60 00 00 00 */	nop 
/* 800904FC  88 7F 01 58 */	lbz r3, 0x158(r31)
/* 80090500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80090504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80090508  7C 08 03 A6 */	mtlr r0
/* 8009050C  38 21 00 10 */	addi r1, r1, 0x10
/* 80090510  4E 80 00 20 */	blr 
