lbl_801F42FC:
/* 801F42FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F4300  7C 08 02 A6 */	mflr r0
/* 801F4304  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4308  39 61 00 20 */	addi r11, r1, 0x20
/* 801F430C  48 16 DE CD */	bl _savegpr_28
/* 801F4310  7C 7F 1B 78 */	mr r31, r3
/* 801F4314  38 00 00 AD */	li r0, 0xad
/* 801F4318  90 01 00 08 */	stw r0, 8(r1)
/* 801F431C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F4320  38 81 00 08 */	addi r4, r1, 8
/* 801F4324  38 A0 00 00 */	li r5, 0
/* 801F4328  38 C0 00 00 */	li r6, 0
/* 801F432C  38 E0 00 00 */	li r7, 0
/* 801F4330  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F4334  FC 40 08 90 */	fmr f2, f1
/* 801F4338  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F433C  FC 80 18 90 */	fmr f4, f3
/* 801F4340  39 00 00 00 */	li r8, 0
/* 801F4344  48 0B 81 C9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F4348  7F E3 FB 78 */	mr r3, r31
/* 801F434C  48 00 05 DD */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F4350  7C 7C 1B 78 */	mr r28, r3
/* 801F4354  7F E3 FB 78 */	mr r3, r31
/* 801F4358  48 00 15 71 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F435C  7C 7D 1B 78 */	mr r29, r3
/* 801F4360  7F E3 FB 78 */	mr r3, r31
/* 801F4364  48 00 1F 15 */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F4368  7C 7E 1B 78 */	mr r30, r3
/* 801F436C  7F E3 FB 78 */	mr r3, r31
/* 801F4370  48 00 1D B1 */	bl modoruTxtDispAnm__12dMenu_save_cFv
/* 801F4374  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 801F4378  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 801F437C  30 04 FF FF */	addic r0, r4, -1
/* 801F4380  7C 00 21 10 */	subfe r0, r0, r4
/* 801F4384  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801F4388  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801F438C  28 00 00 01 */	cmplwi r0, 1
/* 801F4390  40 82 00 50 */	bne lbl_801F43E0
/* 801F4394  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F4398  28 00 00 01 */	cmplwi r0, 1
/* 801F439C  40 82 00 44 */	bne lbl_801F43E0
/* 801F43A0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F43A4  28 00 00 01 */	cmplwi r0, 1
/* 801F43A8  40 82 00 38 */	bne lbl_801F43E0
/* 801F43AC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F43B0  28 00 00 01 */	cmplwi r0, 1
/* 801F43B4  40 82 00 2C */	bne lbl_801F43E0
/* 801F43B8  28 04 00 01 */	cmplwi r4, 1
/* 801F43BC  40 82 00 24 */	bne lbl_801F43E0
/* 801F43C0  3C 60 80 43 */	lis r3, g_msHIO@ha /* 0x8042E84C@ha */
/* 801F43C4  38 63 E8 4C */	addi r3, r3, g_msHIO@l /* 0x8042E84C@l */
/* 801F43C8  88 03 00 06 */	lbz r0, 6(r3)
/* 801F43CC  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F43D0  7F E3 FB 78 */	mr r3, r31
/* 801F43D4  4B FF E4 6D */	bl dataWrite__12dMenu_save_cFv
/* 801F43D8  38 00 00 1F */	li r0, 0x1f
/* 801F43DC  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F43E0:
/* 801F43E0  39 61 00 20 */	addi r11, r1, 0x20
/* 801F43E4  48 16 DE 41 */	bl _restgpr_28
/* 801F43E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F43EC  7C 08 03 A6 */	mtlr r0
/* 801F43F0  38 21 00 20 */	addi r1, r1, 0x20
/* 801F43F4  4E 80 00 20 */	blr 
