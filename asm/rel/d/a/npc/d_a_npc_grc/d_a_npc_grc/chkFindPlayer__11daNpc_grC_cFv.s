lbl_809CDFFC:
/* 809CDFFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CE000  7C 08 02 A6 */	mflr r0
/* 809CE004  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CE008  39 61 00 20 */	addi r11, r1, 0x20
/* 809CE00C  4B 99 41 D0 */	b _savegpr_29
/* 809CE010  7C 7D 1B 78 */	mr r29, r3
/* 809CE014  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809CE018  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 809CE01C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809CE020  4B 64 C6 F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809CE024  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 809CE028  7C 00 18 50 */	subf r0, r0, r3
/* 809CE02C  7C 03 07 34 */	extsh r3, r0
/* 809CE030  4B 99 70 A0 */	b abs
/* 809CE034  2C 03 3C 00 */	cmpwi r3, 0x3c00
/* 809CE038  40 80 00 74 */	bge lbl_809CE0AC
/* 809CE03C  38 7D 0C B0 */	addi r3, r29, 0xcb0
/* 809CE040  4B 78 26 AC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809CE044  28 03 00 00 */	cmplwi r3, 0
/* 809CE048  40 82 00 34 */	bne lbl_809CE07C
/* 809CE04C  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 809CE050  7F A3 EB 78 */	mr r3, r29
/* 809CE054  38 80 00 0A */	li r4, 0xa
/* 809CE058  38 A0 00 06 */	li r5, 6
/* 809CE05C  4B 78 62 1C */	b getDistTableIdx__8daNpcF_cFii
/* 809CE060  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 809CE064  7F A3 EB 78 */	mr r3, r29
/* 809CE068  7F C4 F3 78 */	mr r4, r30
/* 809CE06C  7F A5 EB 78 */	mr r5, r29
/* 809CE070  4B 78 5B 6C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809CE074  7C 7E 1B 78 */	mr r30, r3
/* 809CE078  48 00 00 78 */	b lbl_809CE0F0
lbl_809CE07C:
/* 809CE07C  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 809CE080  7F A3 EB 78 */	mr r3, r29
/* 809CE084  38 80 00 0C */	li r4, 0xc
/* 809CE088  38 A0 00 06 */	li r5, 6
/* 809CE08C  4B 78 61 EC */	b getDistTableIdx__8daNpcF_cFii
/* 809CE090  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 809CE094  7F A3 EB 78 */	mr r3, r29
/* 809CE098  7F C4 F3 78 */	mr r4, r30
/* 809CE09C  7F A5 EB 78 */	mr r5, r29
/* 809CE0A0  4B 78 5B 3C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809CE0A4  7C 7E 1B 78 */	mr r30, r3
/* 809CE0A8  48 00 00 48 */	b lbl_809CE0F0
lbl_809CE0AC:
/* 809CE0AC  38 7D 0C B0 */	addi r3, r29, 0xcb0
/* 809CE0B0  4B 78 26 3C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809CE0B4  28 03 00 00 */	cmplwi r3, 0
/* 809CE0B8  40 82 00 20 */	bne lbl_809CE0D8
/* 809CE0BC  7F A3 EB 78 */	mr r3, r29
/* 809CE0C0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809CE0C4  7F A5 EB 78 */	mr r5, r29
/* 809CE0C8  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 809CE0CC  4B 78 5B 10 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809CE0D0  7C 7E 1B 78 */	mr r30, r3
/* 809CE0D4  48 00 00 1C */	b lbl_809CE0F0
lbl_809CE0D8:
/* 809CE0D8  7F A3 EB 78 */	mr r3, r29
/* 809CE0DC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809CE0E0  7F A5 EB 78 */	mr r5, r29
/* 809CE0E4  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 809CE0E8  4B 78 5A F4 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809CE0EC  7C 7E 1B 78 */	mr r30, r3
lbl_809CE0F0:
/* 809CE0F0  2C 1E 00 00 */	cmpwi r30, 0
/* 809CE0F4  41 82 00 14 */	beq lbl_809CE108
/* 809CE0F8  38 7D 0C B0 */	addi r3, r29, 0xcb0
/* 809CE0FC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809CE100  4B 78 25 BC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809CE104  48 00 00 0C */	b lbl_809CE110
lbl_809CE108:
/* 809CE108  38 7D 0C B0 */	addi r3, r29, 0xcb0
/* 809CE10C  4B 78 25 D4 */	b remove__18daNpcF_ActorMngr_cFv
lbl_809CE110:
/* 809CE110  7F C3 F3 78 */	mr r3, r30
/* 809CE114  39 61 00 20 */	addi r11, r1, 0x20
/* 809CE118  4B 99 41 10 */	b _restgpr_29
/* 809CE11C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CE120  7C 08 03 A6 */	mtlr r0
/* 809CE124  38 21 00 20 */	addi r1, r1, 0x20
/* 809CE128  4E 80 00 20 */	blr 
