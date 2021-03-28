lbl_80836F78:
/* 80836F78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80836F7C  7C 08 02 A6 */	mflr r0
/* 80836F80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80836F84  39 61 00 30 */	addi r11, r1, 0x30
/* 80836F88  4B B2 B2 48 */	b _savegpr_26
/* 80836F8C  7C 7A 1B 78 */	mr r26, r3
/* 80836F90  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha
/* 80836F94  3B C3 78 A8 */	addi r30, r3, M_attr__10daFmtMng_c@l
/* 80836F98  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80836F9C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80836FA0  83 9A 05 6C */	lwz r28, 0x56c(r26)
/* 80836FA4  38 00 00 00 */	li r0, 0
/* 80836FA8  90 01 00 08 */	stw r0, 8(r1)
/* 80836FAC  3B 60 00 00 */	li r27, 0
/* 80836FB0  48 00 00 88 */	b lbl_80837038
lbl_80836FB4:
/* 80836FB4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80836FB8  38 81 00 08 */	addi r4, r1, 8
/* 80836FBC  4B 7E 2A 00 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80836FC0  83 A1 00 08 */	lwz r29, 8(r1)
/* 80836FC4  28 1D 00 00 */	cmplwi r29, 0
/* 80836FC8  41 82 00 68 */	beq lbl_80837030
/* 80836FCC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80836FD0  4B A3 09 84 */	b cM_rndF__Ff
/* 80836FD4  FC 00 08 1E */	fctiwz f0, f1
/* 80836FD8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80836FDC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80836FE0  7F A3 EB 78 */	mr r3, r29
/* 80836FE4  38 80 00 2A */	li r4, 0x2a
/* 80836FE8  80 BD 0A CC */	lwz r5, 0xacc(r29)
/* 80836FEC  4B 92 11 04 */	b getAnmP__10daNpcCd2_cFii
/* 80836FF0  7C 64 1B 78 */	mr r4, r3
/* 80836FF4  7F A3 EB 78 */	mr r3, r29
/* 80836FF8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80836FFC  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80837000  38 A0 00 02 */	li r5, 2
/* 80837004  7F E6 FB 78 */	mr r6, r31
/* 80837008  38 E0 FF FF */	li r7, -1
/* 8083700C  4B 92 1E F4 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80837010  80 61 00 08 */	lwz r3, 8(r1)
/* 80837014  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80837018  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 8083701C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80837020  C0 9E 00 64 */	lfs f4, 0x64(r30)
/* 80837024  C0 BE 00 68 */	lfs f5, 0x68(r30)
/* 80837028  C0 DE 00 40 */	lfs f6, 0x40(r30)
/* 8083702C  4B 7E 35 1C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_80837030:
/* 80837030  3B 7B 00 01 */	addi r27, r27, 1
/* 80837034  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_80837038:
/* 80837038  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 8083703C  80 1A 05 84 */	lwz r0, 0x584(r26)
/* 80837040  7C 03 01 D6 */	mullw r0, r3, r0
/* 80837044  7C 1B 00 00 */	cmpw r27, r0
/* 80837048  41 80 FF 6C */	blt lbl_80836FB4
/* 8083704C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80837050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80837054  38 63 09 78 */	addi r3, r3, 0x978
/* 80837058  38 80 00 3C */	li r4, 0x3c
/* 8083705C  4B 7F DB 3C */	b onSwitch__12dSv_danBit_cFi
/* 80837060  39 61 00 30 */	addi r11, r1, 0x30
/* 80837064  4B B2 B1 B8 */	b _restgpr_26
/* 80837068  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8083706C  7C 08 03 A6 */	mtlr r0
/* 80837070  38 21 00 30 */	addi r1, r1, 0x30
/* 80837074  4E 80 00 20 */	blr 
