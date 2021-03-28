lbl_805AA69C:
/* 805AA69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA6A0  7C 08 02 A6 */	mflr r0
/* 805AA6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA6A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AA6AC  7C 7F 1B 78 */	mr r31, r3
/* 805AA6B0  A0 63 06 40 */	lhz r3, 0x640(r3)
/* 805AA6B4  28 03 00 00 */	cmplwi r3, 0
/* 805AA6B8  41 82 00 0C */	beq lbl_805AA6C4
/* 805AA6BC  38 03 FF FF */	addi r0, r3, -1
/* 805AA6C0  B0 1F 06 40 */	sth r0, 0x640(r31)
lbl_805AA6C4:
/* 805AA6C4  7F E3 FB 78 */	mr r3, r31
/* 805AA6C8  39 9F 06 24 */	addi r12, r31, 0x624
/* 805AA6CC  4B DB 79 B8 */	b __ptmf_scall
/* 805AA6D0  60 00 00 00 */	nop 
/* 805AA6D4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AA6D8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805AA6DC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805AA6E0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805AA6E4  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 805AA6E8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805AA6EC  7F E3 FB 78 */	mr r3, r31
/* 805AA6F0  38 80 00 00 */	li r4, 0
/* 805AA6F4  4B A6 FF D8 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AA6F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805AA6FC  7C 03 07 74 */	extsb r3, r0
/* 805AA700  4B A8 29 6C */	b dComIfGp_getReverb__Fi
/* 805AA704  7C 65 1B 78 */	mr r5, r3
/* 805AA708  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805AA70C  38 80 00 00 */	li r4, 0
/* 805AA710  4B A6 69 A0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 805AA714  7F E3 FB 78 */	mr r3, r31
/* 805AA718  48 00 00 A1 */	bl mtx_set__11daL7lowDr_cFv
/* 805AA71C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805AA720  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805AA724  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805AA728  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805AA72C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805AA730  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 805AA734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AA738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA73C  7C 08 03 A6 */	mtlr r0
/* 805AA740  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA744  4E 80 00 20 */	blr 
