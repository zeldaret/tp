lbl_80D442BC:
/* 80D442BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D442C0  7C 08 02 A6 */	mflr r0
/* 80D442C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D442C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D442CC  4B 61 DF 10 */	b _savegpr_29
/* 80D442D0  7C 7F 1B 78 */	mr r31, r3
/* 80D442D4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D442D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D442DC  40 82 00 1C */	bne lbl_80D442F8
/* 80D442E0  28 1F 00 00 */	cmplwi r31, 0
/* 80D442E4  41 82 00 08 */	beq lbl_80D442EC
/* 80D442E8  4B 2D 48 7C */	b __ct__10fopAc_ac_cFv
lbl_80D442EC:
/* 80D442EC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D442F0  60 00 00 08 */	ori r0, r0, 8
/* 80D442F4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D442F8:
/* 80D442F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D442FC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D44300  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80D44304  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D44308  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D4430C  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 80D44310  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D44314  54 00 46 3E */	srwi r0, r0, 0x18
/* 80D44318  98 1F 05 B2 */	stb r0, 0x5b2(r31)
/* 80D4431C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D44320  98 1F 05 CE */	stb r0, 0x5ce(r31)
/* 80D44324  38 00 FF FF */	li r0, -1
/* 80D44328  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80D4432C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D44330  3C 80 80 D4 */	lis r4, l_arcName@ha
/* 80D44334  38 84 4B C4 */	addi r4, r4, l_arcName@l
/* 80D44338  80 84 00 00 */	lwz r4, 0(r4)
/* 80D4433C  4B 2E 8B 80 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D44340  7C 7D 1B 78 */	mr r29, r3
/* 80D44344  2C 1D 00 04 */	cmpwi r29, 4
/* 80D44348  40 82 00 D8 */	bne lbl_80D44420
/* 80D4434C  7F E3 FB 78 */	mr r3, r31
/* 80D44350  3C 80 80 D4 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80D44354  38 84 42 9C */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80D44358  38 A0 15 40 */	li r5, 0x1540
/* 80D4435C  4B 2D 61 54 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D44360  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D44364  40 82 00 0C */	bne lbl_80D44370
/* 80D44368  38 60 00 05 */	li r3, 5
/* 80D4436C  48 00 00 B8 */	b lbl_80D44424
lbl_80D44370:
/* 80D44370  7F E3 FB 78 */	mr r3, r31
/* 80D44374  4B FF FD 45 */	bl setBaseMtx__13daZraFreeze_cFv
/* 80D44378  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D4437C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D44380  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D44384  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D44388  80 63 00 04 */	lwz r3, 4(r3)
/* 80D4438C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D44390  83 C3 00 00 */	lwz r30, 0(r3)
/* 80D44394  7F E3 FB 78 */	mr r3, r31
/* 80D44398  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80D4439C  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80D443A0  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80D443A4  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 80D443A8  C0 BE 00 4C */	lfs f5, 0x4c(r30)
/* 80D443AC  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 80D443B0  4B 2D 61 98 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D443B4  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80D443B8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80D443BC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80D443C0  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80D443C4  D0 3F 05 B8 */	stfs f1, 0x5b8(r31)
/* 80D443C8  D0 5F 05 BC */	stfs f2, 0x5bc(r31)
/* 80D443CC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80D443D0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D443D4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D443D8  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80D443DC  D0 3F 05 C4 */	stfs f1, 0x5c4(r31)
/* 80D443E0  D0 5F 05 C8 */	stfs f2, 0x5c8(r31)
/* 80D443E4  4B 46 81 98 */	b dKy_darkworld_check__Fv
/* 80D443E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D443EC  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80D443F0  38 00 FF FF */	li r0, -1
/* 80D443F4  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80D443F8  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80D443FC  38 00 00 00 */	li r0, 0
/* 80D44400  98 1F 05 CF */	stb r0, 0x5cf(r31)
/* 80D44404  3C 60 80 D4 */	lis r3, lit_3840@ha
/* 80D44408  C0 23 4B 5C */	lfs f1, lit_3840@l(r3)
/* 80D4440C  4B 52 35 48 */	b cM_rndF__Ff
/* 80D44410  FC 00 08 1E */	fctiwz f0, f1
/* 80D44414  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D44418  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D4441C  B0 1F 05 DE */	sth r0, 0x5de(r31)
lbl_80D44420:
/* 80D44420  7F A3 EB 78 */	mr r3, r29
lbl_80D44424:
/* 80D44424  39 61 00 20 */	addi r11, r1, 0x20
/* 80D44428  4B 61 DE 00 */	b _restgpr_29
/* 80D4442C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D44430  7C 08 03 A6 */	mtlr r0
/* 80D44434  38 21 00 20 */	addi r1, r1, 0x20
/* 80D44438  4E 80 00 20 */	blr 
