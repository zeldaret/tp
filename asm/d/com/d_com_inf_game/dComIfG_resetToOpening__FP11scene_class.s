lbl_8002CD44:
/* 8002CD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CD48  7C 08 02 A6 */	mflr r0
/* 8002CD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CD50  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 8002CD54  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8002CD58  2C 00 00 00 */	cmpwi r0, 0
/* 8002CD5C  40 82 00 20 */	bne lbl_8002CD7C
/* 8002CD60  80 04 00 00 */	lwz r0, 0(r4)
/* 8002CD64  2C 00 00 00 */	cmpwi r0, 0
/* 8002CD68  41 82 00 14 */	beq lbl_8002CD7C
/* 8002CD6C  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 8002CD70  80 04 00 04 */	lwz r0, 4(r4)
/* 8002CD74  2C 00 00 02 */	cmpwi r0, 2
/* 8002CD78  40 82 00 0C */	bne lbl_8002CD84
lbl_8002CD7C:
/* 8002CD7C  38 60 00 00 */	li r3, 0
/* 8002CD80  48 00 00 28 */	b lbl_8002CDA8
lbl_8002CD84:
/* 8002CD84  38 80 00 0C */	li r4, 0xc
/* 8002CD88  4B FF FE CD */	bl dComIfG_changeOpeningScene__FP11scene_classs
/* 8002CD8C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8002CD90  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8002CD94  38 80 00 1E */	li r4, 0x1e
/* 8002CD98  38 A0 00 00 */	li r5, 0
/* 8002CD9C  48 28 26 6D */	bl bgmStop__8Z2SeqMgrFUll
/* 8002CDA0  4B FD A4 E5 */	bl mDoAud_resetProcess__Fv
/* 8002CDA4  38 60 00 01 */	li r3, 1
lbl_8002CDA8:
/* 8002CDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CDAC  7C 08 03 A6 */	mtlr r0
/* 8002CDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CDB4  4E 80 00 20 */	blr 
