lbl_8009D790:
/* 8009D790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009D794  7C 08 02 A6 */	mflr r0
/* 8009D798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009D79C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 8009D7A0  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8009D7A4  2C 00 00 00 */	cmpwi r0, 0
/* 8009D7A8  40 82 00 18 */	bne lbl_8009D7C0
/* 8009D7AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8009D7B0  2C 00 00 00 */	cmpwi r0, 0
/* 8009D7B4  40 82 00 0C */	bne lbl_8009D7C0
/* 8009D7B8  38 60 00 00 */	li r3, 0
/* 8009D7BC  48 00 00 B0 */	b lbl_8009D86C
lbl_8009D7C0:
/* 8009D7C0  88 0D 81 08 */	lbz r0, data_80450688(r13)
/* 8009D7C4  28 00 00 FF */	cmplwi r0, 0xff
/* 8009D7C8  40 82 00 4C */	bne lbl_8009D814
/* 8009D7CC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8009D7D0  88 03 05 18 */	lbz r0, 0x518(r3)
/* 8009D7D4  28 00 00 00 */	cmplwi r0, 0
/* 8009D7D8  41 82 00 20 */	beq lbl_8009D7F8
/* 8009D7DC  4B F6 9A E9 */	bl mDoAud_resetRecover__Fv
/* 8009D7E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009D7E4  40 82 00 14 */	bne lbl_8009D7F8
/* 8009D7E8  88 6D 81 08 */	lbz r3, data_80450688(r13)
/* 8009D7EC  4B FF FC 25 */	bl drawCapture__FUc
/* 8009D7F0  38 60 00 01 */	li r3, 1
/* 8009D7F4  48 00 00 78 */	b lbl_8009D86C
lbl_8009D7F8:
/* 8009D7F8  88 0D 86 38 */	lbz r0, mInitFlag__17mDoAud_zelAudio_c+0x0(r13)
/* 8009D7FC  28 00 00 00 */	cmplwi r0, 0
/* 8009D800  41 82 00 14 */	beq lbl_8009D814
/* 8009D804  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8009D808  38 80 00 10 */	li r4, 0x10
/* 8009D80C  38 A0 00 01 */	li r5, 1
/* 8009D810  48 23 01 65 */	bl resetProcess__10Z2AudioMgrFUlb
lbl_8009D814:
/* 8009D814  88 6D 81 08 */	lbz r3, data_80450688(r13)
/* 8009D818  4B FF FB F9 */	bl drawCapture__FUc
/* 8009D81C  38 6D 81 08 */	la r3, data_80450688(r13) /* 80450688-_SDA_BASE_ */
/* 8009D820  38 80 00 00 */	li r4, 0
/* 8009D824  38 A0 00 0F */	li r5, 0xf
/* 8009D828  48 1D 2E 35 */	bl cLib_chaseUC__FPUcUcUc
/* 8009D82C  2C 03 00 00 */	cmpwi r3, 0
/* 8009D830  41 82 00 38 */	beq lbl_8009D868
/* 8009D834  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 8009D838  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8009D83C  2C 00 00 00 */	cmpwi r0, 0
/* 8009D840  41 82 00 18 */	beq lbl_8009D858
/* 8009D844  38 60 00 01 */	li r3, 1
/* 8009D848  3C 80 80 00 */	lis r4, 0x8000
/* 8009D84C  38 A0 00 00 */	li r5, 0
/* 8009D850  4B F7 7D C5 */	bl mDoRst_reset__FiUli
/* 8009D854  48 00 00 14 */	b lbl_8009D868
lbl_8009D858:
/* 8009D858  38 60 00 01 */	li r3, 1
/* 8009D85C  38 80 00 01 */	li r4, 1
/* 8009D860  38 A0 00 01 */	li r5, 1
/* 8009D864  4B F7 7D B1 */	bl mDoRst_reset__FiUli
lbl_8009D868:
/* 8009D868  38 60 00 01 */	li r3, 1
lbl_8009D86C:
/* 8009D86C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009D870  7C 08 03 A6 */	mtlr r0
/* 8009D874  38 21 00 10 */	addi r1, r1, 0x10
/* 8009D878  4E 80 00 20 */	blr 
