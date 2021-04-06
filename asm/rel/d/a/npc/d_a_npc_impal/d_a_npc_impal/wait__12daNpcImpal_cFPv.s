lbl_80A090E8:
/* 80A090E8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A090EC  7C 08 02 A6 */	mflr r0
/* 80A090F0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A090F4  39 61 00 70 */	addi r11, r1, 0x70
/* 80A090F8  4B 95 90 DD */	bl _savegpr_27
/* 80A090FC  7C 7F 1B 78 */	mr r31, r3
/* 80A09100  3C 80 80 A1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A0C524@ha */
/* 80A09104  3B A4 C5 24 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x80A0C524@l */
/* 80A09108  3C 80 80 A1 */	lis r4, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0910C  3B C4 C2 70 */	addi r30, r4, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A09110  A0 03 0D E6 */	lhz r0, 0xde6(r3)
/* 80A09114  2C 00 00 02 */	cmpwi r0, 2
/* 80A09118  41 82 00 6C */	beq lbl_80A09184
/* 80A0911C  40 80 08 7C */	bge lbl_80A09998
/* 80A09120  2C 00 00 00 */	cmpwi r0, 0
/* 80A09124  41 82 00 0C */	beq lbl_80A09130
/* 80A09128  48 00 08 70 */	b lbl_80A09998
/* 80A0912C  48 00 08 6C */	b lbl_80A09998
lbl_80A09130:
/* 80A09130  38 80 00 07 */	li r4, 7
/* 80A09134  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80A09138  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A0913C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09140  7D 89 03 A6 */	mtctr r12
/* 80A09144  4E 80 04 21 */	bctrl 
/* 80A09148  7F E3 FB 78 */	mr r3, r31
/* 80A0914C  38 80 00 00 */	li r4, 0
/* 80A09150  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80A09154  38 A0 00 00 */	li r5, 0
/* 80A09158  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0915C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A09160  7D 89 03 A6 */	mtctr r12
/* 80A09164  4E 80 04 21 */	bctrl 
/* 80A09168  38 00 00 00 */	li r0, 0
/* 80A0916C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A09170  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A09174  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A09178  38 00 00 02 */	li r0, 2
/* 80A0917C  B0 1F 0D E6 */	sth r0, 0xde6(r31)
/* 80A09180  48 00 08 18 */	b lbl_80A09998
lbl_80A09184:
/* 80A09184  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A09188  4B 74 75 65 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A0918C  28 03 00 00 */	cmplwi r3, 0
/* 80A09190  41 82 00 B0 */	beq lbl_80A09240
/* 80A09194  7F E3 FB 78 */	mr r3, r31
/* 80A09198  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0919C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A091A0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A091A4  38 BE 00 00 */	addi r5, r30, 0
/* 80A091A8  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A091AC  4B 74 A8 45 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A091B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A091B4  40 82 00 14 */	bne lbl_80A091C8
/* 80A091B8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A091BC  4B 74 75 25 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80A091C0  3B 60 00 00 */	li r27, 0
/* 80A091C4  48 00 00 68 */	b lbl_80A0922C
lbl_80A091C8:
/* 80A091C8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A091CC  4B 74 75 21 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A091D0  28 03 00 00 */	cmplwi r3, 0
/* 80A091D4  40 82 00 20 */	bne lbl_80A091F4
/* 80A091D8  7F E3 FB 78 */	mr r3, r31
/* 80A091DC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A091E0  7F E5 FB 78 */	mr r5, r31
/* 80A091E4  88 DF 05 47 */	lbz r6, 0x547(r31)
/* 80A091E8  4B 74 A9 F5 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A091EC  7C 7B 1B 78 */	mr r27, r3
/* 80A091F0  48 00 00 1C */	b lbl_80A0920C
lbl_80A091F4:
/* 80A091F4  7F E3 FB 78 */	mr r3, r31
/* 80A091F8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A091FC  7F E5 FB 78 */	mr r5, r31
/* 80A09200  88 DF 05 45 */	lbz r6, 0x545(r31)
/* 80A09204  4B 74 A9 D9 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A09208  7C 7B 1B 78 */	mr r27, r3
lbl_80A0920C:
/* 80A0920C  2C 1B 00 00 */	cmpwi r27, 0
/* 80A09210  41 82 00 14 */	beq lbl_80A09224
/* 80A09214  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A09218  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0921C  4B 74 74 A1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A09220  48 00 00 0C */	b lbl_80A0922C
lbl_80A09224:
/* 80A09224  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A09228  4B 74 74 B9 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80A0922C:
/* 80A0922C  2C 1B 00 00 */	cmpwi r27, 0
/* 80A09230  40 82 00 B8 */	bne lbl_80A092E8
/* 80A09234  38 00 00 00 */	li r0, 0
/* 80A09238  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A0923C  48 00 00 AC */	b lbl_80A092E8
lbl_80A09240:
/* 80A09240  7F E3 FB 78 */	mr r3, r31
/* 80A09244  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A09248  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0924C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A09250  38 BE 00 00 */	addi r5, r30, 0
/* 80A09254  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A09258  4B 74 A7 99 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A0925C  2C 03 00 00 */	cmpwi r3, 0
/* 80A09260  40 82 00 14 */	bne lbl_80A09274
/* 80A09264  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A09268  4B 74 74 79 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80A0926C  3B 60 00 00 */	li r27, 0
/* 80A09270  48 00 00 68 */	b lbl_80A092D8
lbl_80A09274:
/* 80A09274  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A09278  4B 74 74 75 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A0927C  28 03 00 00 */	cmplwi r3, 0
/* 80A09280  40 82 00 20 */	bne lbl_80A092A0
/* 80A09284  7F E3 FB 78 */	mr r3, r31
/* 80A09288  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A0928C  7F E5 FB 78 */	mr r5, r31
/* 80A09290  88 DF 05 47 */	lbz r6, 0x547(r31)
/* 80A09294  4B 74 A9 49 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A09298  7C 7B 1B 78 */	mr r27, r3
/* 80A0929C  48 00 00 1C */	b lbl_80A092B8
lbl_80A092A0:
/* 80A092A0  7F E3 FB 78 */	mr r3, r31
/* 80A092A4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A092A8  7F E5 FB 78 */	mr r5, r31
/* 80A092AC  88 DF 05 45 */	lbz r6, 0x545(r31)
/* 80A092B0  4B 74 A9 2D */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A092B4  7C 7B 1B 78 */	mr r27, r3
lbl_80A092B8:
/* 80A092B8  2C 1B 00 00 */	cmpwi r27, 0
/* 80A092BC  41 82 00 14 */	beq lbl_80A092D0
/* 80A092C0  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A092C4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A092C8  4B 74 73 F5 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A092CC  48 00 00 0C */	b lbl_80A092D8
lbl_80A092D0:
/* 80A092D0  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A092D4  4B 74 74 0D */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80A092D8:
/* 80A092D8  2C 1B 00 00 */	cmpwi r27, 0
/* 80A092DC  41 82 00 0C */	beq lbl_80A092E8
/* 80A092E0  38 00 00 00 */	li r0, 0
/* 80A092E4  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80A092E8:
/* 80A092E8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80A092EC  4B 74 74 01 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A092F0  28 03 00 00 */	cmplwi r3, 0
/* 80A092F4  41 82 00 1C */	beq lbl_80A09310
/* 80A092F8  A8 1F 0D E4 */	lha r0, 0xde4(r31)
/* 80A092FC  2C 00 00 02 */	cmpwi r0, 2
/* 80A09300  41 82 01 B8 */	beq lbl_80A094B8
/* 80A09304  38 00 00 02 */	li r0, 2
/* 80A09308  B0 1F 0D E4 */	sth r0, 0xde4(r31)
/* 80A0930C  48 00 01 AC */	b lbl_80A094B8
lbl_80A09310:
/* 80A09310  A8 1F 0D E4 */	lha r0, 0xde4(r31)
/* 80A09314  2C 00 00 00 */	cmpwi r0, 0
/* 80A09318  41 82 00 0C */	beq lbl_80A09324
/* 80A0931C  38 00 00 00 */	li r0, 0
/* 80A09320  B0 1F 0D E4 */	sth r0, 0xde4(r31)
lbl_80A09324:
/* 80A09324  AB 7F 04 B6 */	lha r27, 0x4b6(r31)
/* 80A09328  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A0932C  7C 1B 00 00 */	cmpw r27, r0
/* 80A09330  41 82 01 88 */	beq lbl_80A094B8
/* 80A09334  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A09338  2C 03 00 00 */	cmpwi r3, 0
/* 80A0933C  40 82 00 D0 */	bne lbl_80A0940C
/* 80A09340  C0 5E 02 20 */	lfs f2, 0x220(r30)
/* 80A09344  7C 00 D8 50 */	subf r0, r0, r27
/* 80A09348  7C 00 07 34 */	extsh r0, r0
/* 80A0934C  C8 3E 02 28 */	lfd f1, 0x228(r30)
/* 80A09350  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A09354  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A09358  3C 00 43 30 */	lis r0, 0x4330
/* 80A0935C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A09360  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80A09364  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A09368  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A0936C  FC 00 02 10 */	fabs f0, f0
/* 80A09370  FC 00 00 18 */	frsp f0, f0
/* 80A09374  FC 00 00 1E */	fctiwz f0, f0
/* 80A09378  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80A0937C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A09380  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A09384  40 81 00 40 */	ble lbl_80A093C4
/* 80A09388  7F E3 FB 78 */	mr r3, r31
/* 80A0938C  38 80 00 07 */	li r4, 7
/* 80A09390  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80A09394  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A09398  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0939C  7D 89 03 A6 */	mtctr r12
/* 80A093A0  4E 80 04 21 */	bctrl 
/* 80A093A4  7F E3 FB 78 */	mr r3, r31
/* 80A093A8  38 80 00 06 */	li r4, 6
/* 80A093AC  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80A093B0  38 A0 00 00 */	li r5, 0
/* 80A093B4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A093B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A093BC  7D 89 03 A6 */	mtctr r12
/* 80A093C0  4E 80 04 21 */	bctrl 
lbl_80A093C4:
/* 80A093C4  B3 7F 09 96 */	sth r27, 0x996(r31)
/* 80A093C8  38 00 00 00 */	li r0, 0
/* 80A093CC  90 1F 09 68 */	stw r0, 0x968(r31)
/* 80A093D0  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 80A093D4  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 80A093D8  7C 03 00 00 */	cmpw r3, r0
/* 80A093DC  40 82 00 10 */	bne lbl_80A093EC
/* 80A093E0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A093E4  38 03 00 01 */	addi r0, r3, 1
/* 80A093E8  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80A093EC:
/* 80A093EC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A093F0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A093F4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A093F8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A093FC  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A09400  38 03 00 01 */	addi r0, r3, 1
/* 80A09404  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A09408  48 00 00 60 */	b lbl_80A09468
lbl_80A0940C:
/* 80A0940C  2C 03 00 01 */	cmpwi r3, 1
/* 80A09410  40 82 00 58 */	bne lbl_80A09468
/* 80A09414  7F E3 FB 78 */	mr r3, r31
/* 80A09418  A8 9F 09 96 */	lha r4, 0x996(r31)
/* 80A0941C  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 80A09420  38 A0 00 00 */	li r5, 0
/* 80A09424  4B 74 AA D1 */	bl turn__8daNpcF_cFsfi
/* 80A09428  2C 03 00 00 */	cmpwi r3, 0
/* 80A0942C  41 82 00 2C */	beq lbl_80A09458
/* 80A09430  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A09434  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A09438  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A0943C  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A09440  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A09444  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A09448  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A0944C  38 03 00 01 */	addi r0, r3, 1
/* 80A09450  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A09454  48 00 00 14 */	b lbl_80A09468
lbl_80A09458:
/* 80A09458  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A0945C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A09460  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A09464  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
lbl_80A09468:
/* 80A09468  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80A0946C  2C 00 00 01 */	cmpwi r0, 1
/* 80A09470  40 81 00 48 */	ble lbl_80A094B8
/* 80A09474  7F E3 FB 78 */	mr r3, r31
/* 80A09478  38 80 00 07 */	li r4, 7
/* 80A0947C  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80A09480  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A09484  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09488  7D 89 03 A6 */	mtctr r12
/* 80A0948C  4E 80 04 21 */	bctrl 
/* 80A09490  7F E3 FB 78 */	mr r3, r31
/* 80A09494  38 80 00 00 */	li r4, 0
/* 80A09498  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80A0949C  38 A0 00 00 */	li r5, 0
/* 80A094A0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A094A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A094A8  7D 89 03 A6 */	mtctr r12
/* 80A094AC  4E 80 04 21 */	bctrl 
/* 80A094B0  38 00 00 00 */	li r0, 0
/* 80A094B4  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80A094B8:
/* 80A094B8  88 1F 0D E8 */	lbz r0, 0xde8(r31)
/* 80A094BC  28 00 00 00 */	cmplwi r0, 0
/* 80A094C0  40 82 00 68 */	bne lbl_80A09528
/* 80A094C4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A094C8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A094CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A094D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A094D4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80A094D8  7C 05 07 74 */	extsb r5, r0
/* 80A094DC  4B 62 BE 85 */	bl isSwitch__10dSv_info_cCFii
/* 80A094E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A094E4  41 82 00 44 */	beq lbl_80A09528
/* 80A094E8  3C 60 80 A1 */	lis r3, s_sub1__FPvPv@ha /* 0x80A08F60@ha */
/* 80A094EC  38 63 8F 60 */	addi r3, r3, s_sub1__FPvPv@l /* 0x80A08F60@l */
/* 80A094F0  7F E4 FB 78 */	mr r4, r31
/* 80A094F4  4B 61 7E 45 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A094F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A094FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A09500  80 63 00 00 */	lwz r3, 0(r3)
/* 80A09504  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A09508  38 80 00 3C */	li r4, 0x3c
/* 80A0950C  38 A0 00 00 */	li r5, 0
/* 80A09510  4B 8A 5E F9 */	bl bgmStop__8Z2SeqMgrFUll
/* 80A09514  4B 74 C5 D5 */	bl daNpcF_clearMessageTmpBit__Fv
/* 80A09518  38 00 00 01 */	li r0, 1
/* 80A0951C  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80A09520  98 1F 0D E8 */	stb r0, 0xde8(r31)
/* 80A09524  48 00 01 88 */	b lbl_80A096AC
lbl_80A09528:
/* 80A09528  38 60 01 16 */	li r3, 0x116
/* 80A0952C  4B 74 C1 09 */	bl daNpcF_chkEvtBit__FUl
/* 80A09530  2C 03 00 00 */	cmpwi r3, 0
/* 80A09534  41 82 01 78 */	beq lbl_80A096AC
/* 80A09538  38 60 03 0F */	li r3, 0x30f
/* 80A0953C  4B 74 C0 F9 */	bl daNpcF_chkEvtBit__FUl
/* 80A09540  2C 03 00 00 */	cmpwi r3, 0
/* 80A09544  40 82 01 68 */	bne lbl_80A096AC
/* 80A09548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0954C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A09550  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A09554  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A09558  81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 80A0955C  7D 89 03 A6 */	mtctr r12
/* 80A09560  4E 80 04 21 */	bctrl 
/* 80A09564  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A09568  41 82 01 44 */	beq lbl_80A096AC
/* 80A0956C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80A09570  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A09574  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A09578  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A0957C  4B 85 D5 B9 */	bl __mi__4cXyzCFRC3Vec
/* 80A09580  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A09584  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A09588  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A0958C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A09590  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A09594  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A09598  38 61 00 0C */	addi r3, r1, 0xc
/* 80A0959C  4B 93 DB 9D */	bl PSVECSquareMag
/* 80A095A0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A095A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A095A8  40 81 00 58 */	ble lbl_80A09600
/* 80A095AC  FC 00 08 34 */	frsqrte f0, f1
/* 80A095B0  C8 9E 02 00 */	lfd f4, 0x200(r30)
/* 80A095B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A095B8  C8 7E 02 08 */	lfd f3, 0x208(r30)
/* 80A095BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A095C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A095C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A095C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A095CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A095D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A095D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A095D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A095DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A095E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A095E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A095E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A095EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A095F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A095F4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A095F8  FC 20 08 18 */	frsp f1, f1
/* 80A095FC  48 00 00 88 */	b lbl_80A09684
lbl_80A09600:
/* 80A09600  C8 1E 02 10 */	lfd f0, 0x210(r30)
/* 80A09604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A09608  40 80 00 10 */	bge lbl_80A09618
/* 80A0960C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A09610  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A09614  48 00 00 70 */	b lbl_80A09684
lbl_80A09618:
/* 80A09618  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A0961C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A09620  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A09624  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A09628  7C 03 00 00 */	cmpw r3, r0
/* 80A0962C  41 82 00 14 */	beq lbl_80A09640
/* 80A09630  40 80 00 40 */	bge lbl_80A09670
/* 80A09634  2C 03 00 00 */	cmpwi r3, 0
/* 80A09638  41 82 00 20 */	beq lbl_80A09658
/* 80A0963C  48 00 00 34 */	b lbl_80A09670
lbl_80A09640:
/* 80A09640  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A09644  41 82 00 0C */	beq lbl_80A09650
/* 80A09648  38 00 00 01 */	li r0, 1
/* 80A0964C  48 00 00 28 */	b lbl_80A09674
lbl_80A09650:
/* 80A09650  38 00 00 02 */	li r0, 2
/* 80A09654  48 00 00 20 */	b lbl_80A09674
lbl_80A09658:
/* 80A09658  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A0965C  41 82 00 0C */	beq lbl_80A09668
/* 80A09660  38 00 00 05 */	li r0, 5
/* 80A09664  48 00 00 10 */	b lbl_80A09674
lbl_80A09668:
/* 80A09668  38 00 00 03 */	li r0, 3
/* 80A0966C  48 00 00 08 */	b lbl_80A09674
lbl_80A09670:
/* 80A09670  38 00 00 04 */	li r0, 4
lbl_80A09674:
/* 80A09674  2C 00 00 01 */	cmpwi r0, 1
/* 80A09678  40 82 00 0C */	bne lbl_80A09684
/* 80A0967C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A09680  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A09684:
/* 80A09684  38 7E 00 00 */	addi r3, r30, 0
/* 80A09688  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A0968C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A09690  40 80 00 1C */	bge lbl_80A096AC
/* 80A09694  38 60 00 0B */	li r3, 0xb
/* 80A09698  4B 74 C0 9D */	bl daNpcF_offTmpBit__FUl
/* 80A0969C  38 60 00 0C */	li r3, 0xc
/* 80A096A0  4B 74 C0 95 */	bl daNpcF_offTmpBit__FUl
/* 80A096A4  38 00 00 03 */	li r0, 3
/* 80A096A8  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
lbl_80A096AC:
/* 80A096AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A096B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A096B4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A096B8  28 00 00 00 */	cmplwi r0, 0
/* 80A096BC  41 82 02 78 */	beq lbl_80A09934
/* 80A096C0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80A096C4  28 00 00 01 */	cmplwi r0, 1
/* 80A096C8  40 82 01 C4 */	bne lbl_80A0988C
/* 80A096CC  3B 83 4E C8 */	addi r28, r3, 0x4ec8
/* 80A096D0  38 00 00 00 */	li r0, 0
/* 80A096D4  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A096D8  28 04 00 01 */	cmplwi r4, 1
/* 80A096DC  41 82 00 0C */	beq lbl_80A096E8
/* 80A096E0  28 04 00 02 */	cmplwi r4, 2
/* 80A096E4  40 82 00 08 */	bne lbl_80A096EC
lbl_80A096E8:
/* 80A096E8  38 00 00 01 */	li r0, 1
lbl_80A096EC:
/* 80A096EC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A096F0  41 82 01 10 */	beq lbl_80A09800
/* 80A096F4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A096F8  7F 63 DB 78 */	mr r3, r27
/* 80A096FC  4B 63 F0 F5 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A09700  2C 03 00 00 */	cmpwi r3, 0
/* 80A09704  40 82 00 0C */	bne lbl_80A09710
/* 80A09708  38 60 00 01 */	li r3, 1
/* 80A0970C  48 00 02 90 */	b lbl_80A0999C
lbl_80A09710:
/* 80A09710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A09714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A09718  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80A0971C  28 00 00 E9 */	cmplwi r0, 0xe9
/* 80A09720  40 82 00 98 */	bne lbl_80A097B8
/* 80A09724  38 00 00 05 */	li r0, 5
/* 80A09728  B0 1F 0D E0 */	sth r0, 0xde0(r31)
/* 80A0972C  80 7D 02 4C */	lwz r3, 0x24c(r29)
/* 80A09730  80 1D 02 50 */	lwz r0, 0x250(r29)
/* 80A09734  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A09738  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0973C  80 1D 02 54 */	lwz r0, 0x254(r29)
/* 80A09740  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A09744  38 00 00 03 */	li r0, 3
/* 80A09748  B0 1F 0D E6 */	sth r0, 0xde6(r31)
/* 80A0974C  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80A09750  4B 95 88 C9 */	bl __ptmf_test
/* 80A09754  2C 03 00 00 */	cmpwi r3, 0
/* 80A09758  41 82 00 18 */	beq lbl_80A09770
/* 80A0975C  7F E3 FB 78 */	mr r3, r31
/* 80A09760  38 80 00 00 */	li r4, 0
/* 80A09764  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80A09768  4B 95 89 1D */	bl __ptmf_scall
/* 80A0976C  60 00 00 00 */	nop 
lbl_80A09770:
/* 80A09770  38 00 00 00 */	li r0, 0
/* 80A09774  B0 1F 0D E6 */	sth r0, 0xde6(r31)
/* 80A09778  80 61 00 30 */	lwz r3, 0x30(r1)
/* 80A0977C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A09780  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80A09784  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80A09788  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80A0978C  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 80A09790  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80A09794  4B 95 88 85 */	bl __ptmf_test
/* 80A09798  2C 03 00 00 */	cmpwi r3, 0
/* 80A0979C  41 82 01 FC */	beq lbl_80A09998
/* 80A097A0  7F E3 FB 78 */	mr r3, r31
/* 80A097A4  38 80 00 00 */	li r4, 0
/* 80A097A8  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80A097AC  4B 95 88 D9 */	bl __ptmf_scall
/* 80A097B0  60 00 00 00 */	nop 
/* 80A097B4  48 00 01 E4 */	b lbl_80A09998
lbl_80A097B8:
/* 80A097B8  7F 63 DB 78 */	mr r3, r27
/* 80A097BC  7F E4 FB 78 */	mr r4, r31
/* 80A097C0  3C A0 80 A1 */	lis r5, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A097C4  38 A5 C4 C8 */	addi r5, r5, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A097C8  38 A5 00 40 */	addi r5, r5, 0x40
/* 80A097CC  38 C0 00 FF */	li r6, 0xff
/* 80A097D0  4B 63 DF 89 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A097D4  7C 7B 1B 78 */	mr r27, r3
/* 80A097D8  7F 83 E3 78 */	mr r3, r28
/* 80A097DC  7F E4 FB 78 */	mr r4, r31
/* 80A097E0  4B 63 8D 39 */	bl reset__14dEvt_control_cFPv
/* 80A097E4  7F E3 FB 78 */	mr r3, r31
/* 80A097E8  7F 64 DB 78 */	mr r4, r27
/* 80A097EC  38 A0 00 01 */	li r5, 1
/* 80A097F0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A097F4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A097F8  4B 61 1D ED */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80A097FC  48 00 01 9C */	b lbl_80A09998
lbl_80A09800:
/* 80A09800  80 7D 02 58 */	lwz r3, 0x258(r29)
/* 80A09804  80 1D 02 5C */	lwz r0, 0x25c(r29)
/* 80A09808  90 61 00 24 */	stw r3, 0x24(r1)
/* 80A0980C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A09810  80 1D 02 60 */	lwz r0, 0x260(r29)
/* 80A09814  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A09818  38 00 00 03 */	li r0, 3
/* 80A0981C  B0 1F 0D E6 */	sth r0, 0xde6(r31)
/* 80A09820  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80A09824  4B 95 87 F5 */	bl __ptmf_test
/* 80A09828  2C 03 00 00 */	cmpwi r3, 0
/* 80A0982C  41 82 00 18 */	beq lbl_80A09844
/* 80A09830  7F E3 FB 78 */	mr r3, r31
/* 80A09834  38 80 00 00 */	li r4, 0
/* 80A09838  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80A0983C  4B 95 88 49 */	bl __ptmf_scall
/* 80A09840  60 00 00 00 */	nop 
lbl_80A09844:
/* 80A09844  38 00 00 00 */	li r0, 0
/* 80A09848  B0 1F 0D E6 */	sth r0, 0xde6(r31)
/* 80A0984C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80A09850  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A09854  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80A09858  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80A0985C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A09860  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 80A09864  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80A09868  4B 95 87 B1 */	bl __ptmf_test
/* 80A0986C  2C 03 00 00 */	cmpwi r3, 0
/* 80A09870  41 82 01 28 */	beq lbl_80A09998
/* 80A09874  7F E3 FB 78 */	mr r3, r31
/* 80A09878  38 80 00 00 */	li r4, 0
/* 80A0987C  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80A09880  4B 95 88 05 */	bl __ptmf_scall
/* 80A09884  60 00 00 00 */	nop 
/* 80A09888  48 00 01 10 */	b lbl_80A09998
lbl_80A0988C:
/* 80A0988C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A09890  80 9D 01 C0 */	lwz r4, 0x1c0(r29)
/* 80A09894  38 A0 00 00 */	li r5, 0
/* 80A09898  38 C0 00 00 */	li r6, 0
/* 80A0989C  4B 63 E2 81 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A098A0  2C 03 FF FF */	cmpwi r3, -1
/* 80A098A4  41 82 00 F4 */	beq lbl_80A09998
/* 80A098A8  80 7D 02 64 */	lwz r3, 0x264(r29)
/* 80A098AC  80 1D 02 68 */	lwz r0, 0x268(r29)
/* 80A098B0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A098B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A098B8  80 1D 02 6C */	lwz r0, 0x26c(r29)
/* 80A098BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A098C0  38 00 00 03 */	li r0, 3
/* 80A098C4  B0 1F 0D E6 */	sth r0, 0xde6(r31)
/* 80A098C8  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80A098CC  4B 95 87 4D */	bl __ptmf_test
/* 80A098D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A098D4  41 82 00 18 */	beq lbl_80A098EC
/* 80A098D8  7F E3 FB 78 */	mr r3, r31
/* 80A098DC  38 80 00 00 */	li r4, 0
/* 80A098E0  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80A098E4  4B 95 87 A1 */	bl __ptmf_scall
/* 80A098E8  60 00 00 00 */	nop 
lbl_80A098EC:
/* 80A098EC  38 00 00 00 */	li r0, 0
/* 80A098F0  B0 1F 0D E6 */	sth r0, 0xde6(r31)
/* 80A098F4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80A098F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A098FC  90 7F 0D C0 */	stw r3, 0xdc0(r31)
/* 80A09900  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80A09904  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80A09908  90 1F 0D C8 */	stw r0, 0xdc8(r31)
/* 80A0990C  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80A09910  4B 95 87 09 */	bl __ptmf_test
/* 80A09914  2C 03 00 00 */	cmpwi r3, 0
/* 80A09918  41 82 00 80 */	beq lbl_80A09998
/* 80A0991C  7F E3 FB 78 */	mr r3, r31
/* 80A09920  38 80 00 00 */	li r4, 0
/* 80A09924  39 9F 0D C0 */	addi r12, r31, 0xdc0
/* 80A09928  4B 95 87 5D */	bl __ptmf_scall
/* 80A0992C  60 00 00 00 */	nop 
/* 80A09930  48 00 00 68 */	b lbl_80A09998
lbl_80A09934:
/* 80A09934  38 60 03 0F */	li r3, 0x30f
/* 80A09938  4B 74 BC FD */	bl daNpcF_chkEvtBit__FUl
/* 80A0993C  2C 03 00 00 */	cmpwi r3, 0
/* 80A09940  41 82 00 10 */	beq lbl_80A09950
/* 80A09944  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80A09948  60 00 00 20 */	ori r0, r0, 0x20
/* 80A0994C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80A09950:
/* 80A09950  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80A09954  28 00 00 00 */	cmplwi r0, 0
/* 80A09958  41 82 00 10 */	beq lbl_80A09968
/* 80A0995C  3C 60 80 A1 */	lis r3, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A09960  38 03 C4 C8 */	addi r0, r3, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A09964  90 1F 01 00 */	stw r0, 0x100(r31)
lbl_80A09968:
/* 80A09968  7F E3 FB 78 */	mr r3, r31
/* 80A0996C  88 9F 09 E9 */	lbz r4, 0x9e9(r31)
/* 80A09970  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80A09974  54 00 10 3A */	slwi r0, r0, 2
/* 80A09978  38 BD 01 A4 */	addi r5, r29, 0x1a4
/* 80A0997C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A09980  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A09984  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A09988  38 E0 00 28 */	li r7, 0x28
/* 80A0998C  39 00 00 FF */	li r8, 0xff
/* 80A09990  39 20 00 01 */	li r9, 1
/* 80A09994  4B 74 9E E9 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A09998:
/* 80A09998  38 60 00 01 */	li r3, 1
lbl_80A0999C:
/* 80A0999C  39 61 00 70 */	addi r11, r1, 0x70
/* 80A099A0  4B 95 88 81 */	bl _restgpr_27
/* 80A099A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A099A8  7C 08 03 A6 */	mtlr r0
/* 80A099AC  38 21 00 70 */	addi r1, r1, 0x70
/* 80A099B0  4E 80 00 20 */	blr 
