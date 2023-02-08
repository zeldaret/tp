lbl_807ACFF8:
/* 807ACFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807ACFFC  7C 08 02 A6 */	mflr r0
/* 807AD000  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AD004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AD008  7C 7F 1B 78 */	mr r31, r3
/* 807AD00C  80 03 09 8C */	lwz r0, 0x98c(r3)
/* 807AD010  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807AD014  90 03 09 8C */	stw r0, 0x98c(r3)
/* 807AD018  4B FF FC 99 */	bl d_damage_check__8daE_SW_cFv
/* 807AD01C  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 807AD020  3C 60 80 7B */	lis r3, lit_3911@ha /* 0x807AFD34@ha */
/* 807AD024  C0 03 FD 34 */	lfs f0, lit_3911@l(r3)  /* 0x807AFD34@l */
/* 807AD028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD02C  40 81 00 10 */	ble lbl_807AD03C
/* 807AD030  38 00 00 01 */	li r0, 1
/* 807AD034  98 1F 0A 03 */	stb r0, 0xa03(r31)
/* 807AD038  48 00 00 0C */	b lbl_807AD044
lbl_807AD03C:
/* 807AD03C  38 00 00 00 */	li r0, 0
/* 807AD040  98 1F 0A 03 */	stb r0, 0xa03(r31)
lbl_807AD044:
/* 807AD044  7F E3 FB 78 */	mr r3, r31
/* 807AD048  38 9F 09 50 */	addi r4, r31, 0x950
/* 807AD04C  4B 86 D6 81 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 807AD050  38 7F 07 78 */	addi r3, r31, 0x778
/* 807AD054  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AD058  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AD05C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807AD060  4B 8C 9A 4D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807AD064  7F E3 FB 78 */	mr r3, r31
/* 807AD068  4B FF FA 7D */	bl d_checkFall__8daE_SW_cFv
/* 807AD06C  7F E3 FB 78 */	mr r3, r31
/* 807AD070  4B FF EC B9 */	bl checkGroundSand__8daE_SW_cFv
/* 807AD074  7F E3 FB 78 */	mr r3, r31
/* 807AD078  39 9F 0A FC */	addi r12, r31, 0xafc
/* 807AD07C  4B BB 50 09 */	bl __ptmf_scall
/* 807AD080  60 00 00 00 */	nop 
/* 807AD084  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807AD088  88 9F 0B 14 */	lbz r4, 0xb14(r31)
/* 807AD08C  4B B1 4A F1 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807AD090  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 807AD094  28 00 00 00 */	cmplwi r0, 0
/* 807AD098  41 82 00 60 */	beq lbl_807AD0F8
/* 807AD09C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807AD0A0  7C 03 07 74 */	extsb r3, r0
/* 807AD0A4  4B 87 FF C9 */	bl dComIfGp_getReverb__Fi
/* 807AD0A8  7C 65 1B 78 */	mr r5, r3
/* 807AD0AC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AD0B0  38 80 00 00 */	li r4, 0
/* 807AD0B4  4B 86 3F FD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807AD0B8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AD0BC  80 63 00 04 */	lwz r3, 4(r3)
/* 807AD0C0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807AD0C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807AD0C8  38 63 00 30 */	addi r3, r3, 0x30
/* 807AD0CC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AD0D0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AD0D4  4B B9 93 DD */	bl PSMTXCopy
/* 807AD0D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AD0DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AD0E0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807AD0E4  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 807AD0E8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807AD0EC  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 807AD0F0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807AD0F4  D0 1F 06 7C */	stfs f0, 0x67c(r31)
lbl_807AD0F8:
/* 807AD0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AD0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AD100  7C 08 03 A6 */	mtlr r0
/* 807AD104  38 21 00 10 */	addi r1, r1, 0x10
/* 807AD108  4E 80 00 20 */	blr 
