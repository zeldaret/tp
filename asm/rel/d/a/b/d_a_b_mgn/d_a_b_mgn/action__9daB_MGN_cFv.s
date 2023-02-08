lbl_8060DDA0:
/* 8060DDA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060DDA4  7C 08 02 A6 */	mflr r0
/* 8060DDA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060DDAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060DDB0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8060DDB4  7C 7E 1B 78 */	mr r30, r3
/* 8060DDB8  3C 80 80 61 */	lis r4, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060DDBC  3B E4 FD E0 */	addi r31, r4, lit_3928@l /* 0x8060FDE0@l */
/* 8060DDC0  4B FF A3 DD */	bl damage_check__9daB_MGN_cFv
/* 8060DDC4  7F C3 F3 78 */	mr r3, r30
/* 8060DDC8  4B FF FC F9 */	bl checkStartJump__9daB_MGN_cFv
/* 8060DDCC  88 1E 0A F9 */	lbz r0, 0xaf9(r30)
/* 8060DDD0  28 00 00 0A */	cmplwi r0, 0xa
/* 8060DDD4  41 81 00 9C */	bgt lbl_8060DE70
/* 8060DDD8  3C 60 80 61 */	lis r3, lit_7854@ha /* 0x80610338@ha */
/* 8060DDDC  38 63 03 38 */	addi r3, r3, lit_7854@l /* 0x80610338@l */
/* 8060DDE0  54 00 10 3A */	slwi r0, r0, 2
/* 8060DDE4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8060DDE8  7C 09 03 A6 */	mtctr r0
/* 8060DDEC  4E 80 04 20 */	bctr 
lbl_8060DDF0:
/* 8060DDF0  7F C3 F3 78 */	mr r3, r30
/* 8060DDF4  4B FF E2 75 */	bl executeOpening__9daB_MGN_cFv
/* 8060DDF8  48 00 00 78 */	b lbl_8060DE70
lbl_8060DDFC:
/* 8060DDFC  7F C3 F3 78 */	mr r3, r30
/* 8060DE00  4B FF A9 A9 */	bl executeCircle__9daB_MGN_cFv
/* 8060DE04  48 00 00 6C */	b lbl_8060DE70
lbl_8060DE08:
/* 8060DE08  7F C3 F3 78 */	mr r3, r30
/* 8060DE0C  4B FF B0 ED */	bl executeDash__9daB_MGN_cFv
/* 8060DE10  48 00 00 60 */	b lbl_8060DE70
lbl_8060DE14:
/* 8060DE14  7F C3 F3 78 */	mr r3, r30
/* 8060DE18  4B FF BF 59 */	bl executeThrown__9daB_MGN_cFv
/* 8060DE1C  48 00 00 54 */	b lbl_8060DE70
lbl_8060DE20:
/* 8060DE20  7F C3 F3 78 */	mr r3, r30
/* 8060DE24  4B FF C9 09 */	bl executeDown__9daB_MGN_cFv
/* 8060DE28  48 00 00 48 */	b lbl_8060DE70
lbl_8060DE2C:
/* 8060DE2C  7F C3 F3 78 */	mr r3, r30
/* 8060DE30  4B FF CE 89 */	bl executeDownDamage__9daB_MGN_cFv
/* 8060DE34  48 00 00 3C */	b lbl_8060DE70
lbl_8060DE38:
/* 8060DE38  7F C3 F3 78 */	mr r3, r30
/* 8060DE3C  4B FF D1 ED */	bl executeDownBiteDamage__9daB_MGN_cFv
/* 8060DE40  48 00 00 30 */	b lbl_8060DE70
lbl_8060DE44:
/* 8060DE44  7F C3 F3 78 */	mr r3, r30
/* 8060DE48  4B FF D5 E9 */	bl executeWarp__9daB_MGN_cFv
/* 8060DE4C  48 00 00 24 */	b lbl_8060DE70
lbl_8060DE50:
/* 8060DE50  7F C3 F3 78 */	mr r3, r30
/* 8060DE54  4B FF D6 F1 */	bl executeFall__9daB_MGN_cFv
/* 8060DE58  48 00 00 18 */	b lbl_8060DE70
lbl_8060DE5C:
/* 8060DE5C  7F C3 F3 78 */	mr r3, r30
/* 8060DE60  4B FF F2 19 */	bl executeDeath__9daB_MGN_cFv
/* 8060DE64  48 00 00 0C */	b lbl_8060DE70
lbl_8060DE68:
/* 8060DE68  7F C3 F3 78 */	mr r3, r30
/* 8060DE6C  4B FF FA 15 */	bl executeJump__9daB_MGN_cFv
lbl_8060DE70:
/* 8060DE70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060DE74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060DE78  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8060DE7C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8060DE80  64 00 02 00 */	oris r0, r0, 0x200
/* 8060DE84  90 03 05 88 */	stw r0, 0x588(r3)
/* 8060DE88  A8 1E 0B 18 */	lha r0, 0xb18(r30)
/* 8060DE8C  2C 00 00 00 */	cmpwi r0, 0
/* 8060DE90  41 82 00 10 */	beq lbl_8060DEA0
/* 8060DE94  38 00 00 00 */	li r0, 0
/* 8060DE98  B0 1E 0B 18 */	sth r0, 0xb18(r30)
/* 8060DE9C  48 00 00 34 */	b lbl_8060DED0
lbl_8060DEA0:
/* 8060DEA0  38 7E 0B 16 */	addi r3, r30, 0xb16
/* 8060DEA4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8060DEA8  38 A0 00 08 */	li r5, 8
/* 8060DEAC  38 C0 04 00 */	li r6, 0x400
/* 8060DEB0  38 E0 00 80 */	li r7, 0x80
/* 8060DEB4  4B C6 26 8D */	bl cLib_addCalcAngleS__FPsssss
/* 8060DEB8  38 7E 0B 14 */	addi r3, r30, 0xb14
/* 8060DEBC  A8 9E 0B 16 */	lha r4, 0xb16(r30)
/* 8060DEC0  38 A0 00 08 */	li r5, 8
/* 8060DEC4  38 C0 04 00 */	li r6, 0x400
/* 8060DEC8  38 E0 00 80 */	li r7, 0x80
/* 8060DECC  4B C6 26 75 */	bl cLib_addCalcAngleS__FPsssss
lbl_8060DED0:
/* 8060DED0  88 1E 0A F8 */	lbz r0, 0xaf8(r30)
/* 8060DED4  2C 00 00 01 */	cmpwi r0, 1
/* 8060DED8  41 82 00 3C */	beq lbl_8060DF14
/* 8060DEDC  40 80 00 10 */	bge lbl_8060DEEC
/* 8060DEE0  2C 00 00 00 */	cmpwi r0, 0
/* 8060DEE4  40 80 00 14 */	bge lbl_8060DEF8
/* 8060DEE8  48 00 00 70 */	b lbl_8060DF58
lbl_8060DEEC:
/* 8060DEEC  2C 00 00 03 */	cmpwi r0, 3
/* 8060DEF0  40 80 00 68 */	bge lbl_8060DF58
/* 8060DEF4  48 00 00 44 */	b lbl_8060DF38
lbl_8060DEF8:
/* 8060DEF8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8060DEFC  D0 1E 0A F4 */	stfs f0, 0xaf4(r30)
/* 8060DF00  38 60 00 01 */	li r3, 1
/* 8060DF04  38 80 00 01 */	li r4, 1
/* 8060DF08  C0 3E 0A F4 */	lfs f1, 0xaf4(r30)
/* 8060DF0C  4B B9 A9 01 */	bl dKy_custom_colset__FUcUcf
/* 8060DF10  48 00 00 48 */	b lbl_8060DF58
lbl_8060DF14:
/* 8060DF14  38 7E 0A F4 */	addi r3, r30, 0xaf4
/* 8060DF18  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060DF1C  C0 5F 02 18 */	lfs f2, 0x218(r31)
/* 8060DF20  4B C6 28 21 */	bl cLib_chaseF__FPfff
/* 8060DF24  38 60 00 01 */	li r3, 1
/* 8060DF28  38 80 00 00 */	li r4, 0
/* 8060DF2C  C0 3E 0A F4 */	lfs f1, 0xaf4(r30)
/* 8060DF30  4B B9 A8 DD */	bl dKy_custom_colset__FUcUcf
/* 8060DF34  48 00 00 24 */	b lbl_8060DF58
lbl_8060DF38:
/* 8060DF38  38 7E 0A F4 */	addi r3, r30, 0xaf4
/* 8060DF3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060DF40  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8060DF44  4B C6 27 FD */	bl cLib_chaseF__FPfff
/* 8060DF48  38 60 00 00 */	li r3, 0
/* 8060DF4C  38 80 00 02 */	li r4, 2
/* 8060DF50  C0 3E 0A F4 */	lfs f1, 0xaf4(r30)
/* 8060DF54  4B B9 A8 B9 */	bl dKy_custom_colset__FUcUcf
lbl_8060DF58:
/* 8060DF58  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060DF5C  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060DF60  38 63 00 07 */	addi r3, r3, 7
/* 8060DF64  38 80 00 3D */	li r4, 0x3d
/* 8060DF68  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060DF6C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060DF70  3C A5 00 02 */	addis r5, r5, 2
/* 8060DF74  38 C0 00 80 */	li r6, 0x80
/* 8060DF78  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8060DF7C  4B A2 E3 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060DF80  80 9E 05 C4 */	lwz r4, 0x5c4(r30)
/* 8060DF84  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8060DF88  7C 00 18 40 */	cmplw r0, r3
/* 8060DF8C  40 82 00 14 */	bne lbl_8060DFA0
/* 8060DF90  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8060DF94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060DF98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060DF9C  40 82 00 20 */	bne lbl_8060DFBC
lbl_8060DFA0:
/* 8060DFA0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8060DFA4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8060DFA8  80 63 00 00 */	lwz r3, 0(r3)
/* 8060DFAC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060DFB0  38 80 00 00 */	li r4, 0
/* 8060DFB4  4B CA 1F D9 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 8060DFB8  48 00 00 1C */	b lbl_8060DFD4
lbl_8060DFBC:
/* 8060DFBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8060DFC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8060DFC4  80 63 00 00 */	lwz r3, 0(r3)
/* 8060DFC8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060DFCC  38 80 00 01 */	li r4, 1
/* 8060DFD0  4B CA 1F BD */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_8060DFD4:
/* 8060DFD4  88 1E 05 CC */	lbz r0, 0x5cc(r30)
/* 8060DFD8  28 00 00 01 */	cmplwi r0, 1
/* 8060DFDC  40 82 00 18 */	bne lbl_8060DFF4
/* 8060DFE0  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8060DFE4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060DFE8  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8060DFEC  4B C6 27 55 */	bl cLib_chaseF__FPfff
/* 8060DFF0  48 00 00 30 */	b lbl_8060E020
lbl_8060DFF4:
/* 8060DFF4  28 00 00 02 */	cmplwi r0, 2
/* 8060DFF8  40 82 00 18 */	bne lbl_8060E010
/* 8060DFFC  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8060E000  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060E004  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 8060E008  4B C6 27 39 */	bl cLib_chaseF__FPfff
/* 8060E00C  48 00 00 14 */	b lbl_8060E020
lbl_8060E010:
/* 8060E010  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8060E014  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060E018  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8060E01C  4B C6 27 25 */	bl cLib_chaseF__FPfff
lbl_8060E020:
/* 8060E020  88 1E 0B 01 */	lbz r0, 0xb01(r30)
/* 8060E024  28 00 00 00 */	cmplwi r0, 0
/* 8060E028  41 82 00 60 */	beq lbl_8060E088
/* 8060E02C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060E030  80 63 00 04 */	lwz r3, 4(r3)
/* 8060E034  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060E038  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E03C  38 63 00 30 */	addi r3, r3, 0x30
/* 8060E040  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060E044  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060E048  4B D3 84 69 */	bl PSMTXCopy
/* 8060E04C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8060E050  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 8060E054  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8060E058  4B 9F ED 45 */	bl transM__14mDoMtx_stack_cFfff
/* 8060E05C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060E060  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060E064  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8060E068  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8060E06C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060E070  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8060E074  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060E078  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060E07C  D0 5E 05 68 */	stfs f2, 0x568(r30)
/* 8060E080  D0 3E 05 6C */	stfs f1, 0x56c(r30)
/* 8060E084  D0 1E 05 70 */	stfs f0, 0x570(r30)
lbl_8060E088:
/* 8060E088  7F C3 F3 78 */	mr r3, r30
/* 8060E08C  38 9E 0D 34 */	addi r4, r30, 0xd34
/* 8060E090  4B A0 C6 3D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8060E094  80 1E 0A AC */	lwz r0, 0xaac(r30)
/* 8060E098  2C 00 00 00 */	cmpwi r0, 0
/* 8060E09C  40 82 00 18 */	bne lbl_8060E0B4
/* 8060E0A0  38 7E 0B 5C */	addi r3, r30, 0xb5c
/* 8060E0A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060E0A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060E0AC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8060E0B0  4B A6 89 FD */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_8060E0B4:
/* 8060E0B4  80 1E 0D 70 */	lwz r0, 0xd70(r30)
/* 8060E0B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060E0BC  41 82 00 58 */	beq lbl_8060E114
/* 8060E0C0  80 1E 0B 88 */	lwz r0, 0xb88(r30)
/* 8060E0C4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8060E0C8  41 82 00 4C */	beq lbl_8060E114
/* 8060E0CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060E0D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060E0D4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8060E0D8  A0 9E 0B 1E */	lhz r4, 0xb1e(r30)
/* 8060E0DC  4B A6 65 3D */	bl GetActorPointer__4cBgSCFi
/* 8060E0E0  28 03 00 00 */	cmplwi r3, 0
/* 8060E0E4  41 82 00 30 */	beq lbl_8060E114
/* 8060E0E8  A8 03 00 08 */	lha r0, 8(r3)
/* 8060E0EC  2C 00 00 6C */	cmpwi r0, 0x6c
/* 8060E0F0  40 82 00 24 */	bne lbl_8060E114
/* 8060E0F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8060E0F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8060E0FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8060E100  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8060E104  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8060E108  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8060E10C  38 81 00 08 */	addi r4, r1, 8
/* 8060E110  4B F6 93 F1 */	bl Obj_Damage__13daObjBHASHI_cF4cXyz
lbl_8060E114:
/* 8060E114  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060E118  7C 03 07 74 */	extsb r3, r0
/* 8060E11C  4B A1 EF 51 */	bl dComIfGp_getReverb__Fi
/* 8060E120  7C 65 1B 78 */	mr r5, r3
/* 8060E124  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060E128  38 80 00 00 */	li r4, 0
/* 8060E12C  4B A0 2F 85 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8060E130  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8060E134  4B 9F F2 F5 */	bl play__14mDoExt_baseAnmFv
/* 8060E138  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8060E13C  4B 9F F2 ED */	bl play__14mDoExt_baseAnmFv
/* 8060E140  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8060E144  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8060E148  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060E14C  7C 08 03 A6 */	mtlr r0
/* 8060E150  38 21 00 30 */	addi r1, r1, 0x30
/* 8060E154  4E 80 00 20 */	blr 
