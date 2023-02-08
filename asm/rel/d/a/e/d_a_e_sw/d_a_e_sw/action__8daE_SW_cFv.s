lbl_807AB6C4:
/* 807AB6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AB6C8  7C 08 02 A6 */	mflr r0
/* 807AB6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AB6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AB6D4  93 C1 00 08 */	stw r30, 8(r1)
/* 807AB6D8  7C 7F 1B 78 */	mr r31, r3
/* 807AB6DC  80 03 09 8C */	lwz r0, 0x98c(r3)
/* 807AB6E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807AB6E4  90 03 09 8C */	stw r0, 0x98c(r3)
/* 807AB6E8  48 00 03 C9 */	bl damage_check__8daE_SW_cFv
/* 807AB6EC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AB6F0  28 03 00 00 */	cmplwi r3, 0
/* 807AB6F4  41 82 00 40 */	beq lbl_807AB734
/* 807AB6F8  80 63 00 04 */	lwz r3, 4(r3)
/* 807AB6FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807AB700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807AB704  38 63 00 30 */	addi r3, r3, 0x30
/* 807AB708  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AB70C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AB710  4B B9 AD A1 */	bl PSMTXCopy
/* 807AB714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AB718  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AB71C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807AB720  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 807AB724  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807AB728  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 807AB72C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807AB730  D0 1F 06 7C */	stfs f0, 0x67c(r31)
lbl_807AB734:
/* 807AB734  7F E3 FB 78 */	mr r3, r31
/* 807AB738  38 9F 09 50 */	addi r4, r31, 0x950
/* 807AB73C  4B 86 EF 91 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 807AB740  38 7F 07 78 */	addi r3, r31, 0x778
/* 807AB744  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AB748  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AB74C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807AB750  4B 8C B3 5D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807AB754  7F E3 FB 78 */	mr r3, r31
/* 807AB758  4B FF C6 55 */	bl checkFall__8daE_SW_cFv
/* 807AB75C  3B C0 00 00 */	li r30, 0
/* 807AB760  A8 1F 06 82 */	lha r0, 0x682(r31)
/* 807AB764  28 00 00 0D */	cmplwi r0, 0xd
/* 807AB768  41 81 00 D0 */	bgt lbl_807AB838
/* 807AB76C  3C 60 80 7B */	lis r3, lit_5661@ha /* 0x807AFF30@ha */
/* 807AB770  38 63 FF 30 */	addi r3, r3, lit_5661@l /* 0x807AFF30@l */
/* 807AB774  54 00 10 3A */	slwi r0, r0, 2
/* 807AB778  7C 03 00 2E */	lwzx r0, r3, r0
/* 807AB77C  7C 09 03 A6 */	mtctr r0
/* 807AB780  4E 80 04 20 */	bctr 
lbl_807AB784:
/* 807AB784  7F E3 FB 78 */	mr r3, r31
/* 807AB788  4B FF C8 01 */	bl executeWait__8daE_SW_cFv
/* 807AB78C  48 00 00 AC */	b lbl_807AB838
lbl_807AB790:
/* 807AB790  3B C0 00 01 */	li r30, 1
/* 807AB794  7F E3 FB 78 */	mr r3, r31
/* 807AB798  4B FF CB 85 */	bl executeChaseSlow__8daE_SW_cFv
/* 807AB79C  48 00 00 9C */	b lbl_807AB838
lbl_807AB7A0:
/* 807AB7A0  3B C0 00 01 */	li r30, 1
/* 807AB7A4  7F E3 FB 78 */	mr r3, r31
/* 807AB7A8  4B FF D3 F1 */	bl executeChaseFast__8daE_SW_cFv
/* 807AB7AC  48 00 00 8C */	b lbl_807AB838
lbl_807AB7B0:
/* 807AB7B0  3B C0 00 01 */	li r30, 1
/* 807AB7B4  7F E3 FB 78 */	mr r3, r31
/* 807AB7B8  4B FF DF B1 */	bl executeAttack__8daE_SW_cFv
/* 807AB7BC  48 00 00 7C */	b lbl_807AB838
lbl_807AB7C0:
/* 807AB7C0  7F E3 FB 78 */	mr r3, r31
/* 807AB7C4  4B FF DD BD */	bl executeBomb__8daE_SW_cFv
/* 807AB7C8  48 00 00 70 */	b lbl_807AB838
lbl_807AB7CC:
/* 807AB7CC  7F E3 FB 78 */	mr r3, r31
/* 807AB7D0  4B FF E6 89 */	bl executeHook__8daE_SW_cFv
/* 807AB7D4  48 00 00 64 */	b lbl_807AB838
lbl_807AB7D8:
/* 807AB7D8  7F E3 FB 78 */	mr r3, r31
/* 807AB7DC  4B FF E8 75 */	bl executeMoveOut__8daE_SW_cFv
/* 807AB7E0  48 00 00 58 */	b lbl_807AB838
lbl_807AB7E4:
/* 807AB7E4  3B C0 00 01 */	li r30, 1
/* 807AB7E8  7F E3 FB 78 */	mr r3, r31
/* 807AB7EC  4B FF EC 61 */	bl executeChance__8daE_SW_cFv
/* 807AB7F0  48 00 00 48 */	b lbl_807AB838
lbl_807AB7F4:
/* 807AB7F4  7F E3 FB 78 */	mr r3, r31
/* 807AB7F8  4B FF EF 8D */	bl executeDive__8daE_SW_cFv
/* 807AB7FC  48 00 00 3C */	b lbl_807AB838
lbl_807AB800:
/* 807AB800  7F E3 FB 78 */	mr r3, r31
/* 807AB804  4B FF F1 19 */	bl executeDamage__8daE_SW_cFv
/* 807AB808  48 00 00 30 */	b lbl_807AB838
lbl_807AB80C:
/* 807AB80C  7F E3 FB 78 */	mr r3, r31
/* 807AB810  4B FF F3 6D */	bl executeDie__8daE_SW_cFv
/* 807AB814  48 00 00 24 */	b lbl_807AB838
lbl_807AB818:
/* 807AB818  7F E3 FB 78 */	mr r3, r31
/* 807AB81C  4B FF F5 B1 */	bl executeMaster__8daE_SW_cFv
/* 807AB820  48 00 00 18 */	b lbl_807AB838
lbl_807AB824:
/* 807AB824  7F E3 FB 78 */	mr r3, r31
/* 807AB828  4B FF FA E9 */	bl executeSuddenAttack__8daE_SW_cFv
/* 807AB82C  48 00 00 0C */	b lbl_807AB838
lbl_807AB830:
/* 807AB830  7F E3 FB 78 */	mr r3, r31
/* 807AB834  4B FF FD 91 */	bl executeFall__8daE_SW_cFv
lbl_807AB838:
/* 807AB838  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807AB83C  7F C4 F3 78 */	mr r4, r30
/* 807AB840  4B B1 63 3D */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807AB844  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 807AB848  28 00 00 00 */	cmplwi r0, 0
/* 807AB84C  41 82 00 20 */	beq lbl_807AB86C
/* 807AB850  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807AB854  7C 03 07 74 */	extsb r3, r0
/* 807AB858  4B 88 18 15 */	bl dComIfGp_getReverb__Fi
/* 807AB85C  7C 65 1B 78 */	mr r5, r3
/* 807AB860  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AB864  38 80 00 00 */	li r4, 0
/* 807AB868  4B 86 58 49 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_807AB86C:
/* 807AB86C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AB870  83 C1 00 08 */	lwz r30, 8(r1)
/* 807AB874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AB878  7C 08 03 A6 */	mtlr r0
/* 807AB87C  38 21 00 10 */	addi r1, r1, 0x10
/* 807AB880  4E 80 00 20 */	blr 
