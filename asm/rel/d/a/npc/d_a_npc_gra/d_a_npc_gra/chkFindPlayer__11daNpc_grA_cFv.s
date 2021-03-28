lbl_809C3424:
/* 809C3424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809C3428  7C 08 02 A6 */	mflr r0
/* 809C342C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C3430  39 61 00 20 */	addi r11, r1, 0x20
/* 809C3434  4B 99 ED A8 */	b _savegpr_29
/* 809C3438  7C 7F 1B 78 */	mr r31, r3
/* 809C343C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C3440  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 809C3444  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809C3448  4B 65 72 C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C344C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809C3450  7C 00 18 50 */	subf r0, r0, r3
/* 809C3454  7C 03 07 34 */	extsh r3, r0
/* 809C3458  4B 9A 1C 78 */	b abs
/* 809C345C  2C 03 3C 00 */	cmpwi r3, 0x3c00
/* 809C3460  40 80 00 F0 */	bge lbl_809C3550
/* 809C3464  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 809C3468  28 00 00 08 */	cmplwi r0, 8
/* 809C346C  40 82 00 74 */	bne lbl_809C34E0
/* 809C3470  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C3474  4B 78 D2 78 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C3478  28 03 00 00 */	cmplwi r3, 0
/* 809C347C  40 82 00 34 */	bne lbl_809C34B0
/* 809C3480  83 BE 5D AC */	lwz r29, 0x5dac(r30)
/* 809C3484  7F E3 FB 78 */	mr r3, r31
/* 809C3488  38 80 00 08 */	li r4, 8
/* 809C348C  38 A0 00 06 */	li r5, 6
/* 809C3490  4B 79 0D E8 */	b getDistTableIdx__8daNpcF_cFii
/* 809C3494  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 809C3498  7F E3 FB 78 */	mr r3, r31
/* 809C349C  7F A4 EB 78 */	mr r4, r29
/* 809C34A0  7F E5 FB 78 */	mr r5, r31
/* 809C34A4  4B 79 07 38 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809C34A8  7C 7D 1B 78 */	mr r29, r3
/* 809C34AC  48 00 00 E8 */	b lbl_809C3594
lbl_809C34B0:
/* 809C34B0  83 BE 5D AC */	lwz r29, 0x5dac(r30)
/* 809C34B4  7F E3 FB 78 */	mr r3, r31
/* 809C34B8  38 80 00 0A */	li r4, 0xa
/* 809C34BC  38 A0 00 06 */	li r5, 6
/* 809C34C0  4B 79 0D B8 */	b getDistTableIdx__8daNpcF_cFii
/* 809C34C4  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 809C34C8  7F E3 FB 78 */	mr r3, r31
/* 809C34CC  7F A4 EB 78 */	mr r4, r29
/* 809C34D0  7F E5 FB 78 */	mr r5, r31
/* 809C34D4  4B 79 07 08 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809C34D8  7C 7D 1B 78 */	mr r29, r3
/* 809C34DC  48 00 00 B8 */	b lbl_809C3594
lbl_809C34E0:
/* 809C34E0  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C34E4  4B 78 D2 08 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C34E8  28 03 00 00 */	cmplwi r3, 0
/* 809C34EC  40 82 00 34 */	bne lbl_809C3520
/* 809C34F0  83 BE 5D AC */	lwz r29, 0x5dac(r30)
/* 809C34F4  7F E3 FB 78 */	mr r3, r31
/* 809C34F8  38 80 00 0A */	li r4, 0xa
/* 809C34FC  38 A0 00 06 */	li r5, 6
/* 809C3500  4B 79 0D 78 */	b getDistTableIdx__8daNpcF_cFii
/* 809C3504  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 809C3508  7F E3 FB 78 */	mr r3, r31
/* 809C350C  7F A4 EB 78 */	mr r4, r29
/* 809C3510  7F E5 FB 78 */	mr r5, r31
/* 809C3514  4B 79 06 C8 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809C3518  7C 7D 1B 78 */	mr r29, r3
/* 809C351C  48 00 00 78 */	b lbl_809C3594
lbl_809C3520:
/* 809C3520  83 BE 5D AC */	lwz r29, 0x5dac(r30)
/* 809C3524  7F E3 FB 78 */	mr r3, r31
/* 809C3528  38 80 00 0C */	li r4, 0xc
/* 809C352C  38 A0 00 06 */	li r5, 6
/* 809C3530  4B 79 0D 48 */	b getDistTableIdx__8daNpcF_cFii
/* 809C3534  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 809C3538  7F E3 FB 78 */	mr r3, r31
/* 809C353C  7F A4 EB 78 */	mr r4, r29
/* 809C3540  7F E5 FB 78 */	mr r5, r31
/* 809C3544  4B 79 06 98 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809C3548  7C 7D 1B 78 */	mr r29, r3
/* 809C354C  48 00 00 48 */	b lbl_809C3594
lbl_809C3550:
/* 809C3550  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C3554  4B 78 D1 98 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C3558  28 03 00 00 */	cmplwi r3, 0
/* 809C355C  40 82 00 20 */	bne lbl_809C357C
/* 809C3560  7F E3 FB 78 */	mr r3, r31
/* 809C3564  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809C3568  7F E5 FB 78 */	mr r5, r31
/* 809C356C  88 DF 05 47 */	lbz r6, 0x547(r31)
/* 809C3570  4B 79 06 6C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809C3574  7C 7D 1B 78 */	mr r29, r3
/* 809C3578  48 00 00 1C */	b lbl_809C3594
lbl_809C357C:
/* 809C357C  7F E3 FB 78 */	mr r3, r31
/* 809C3580  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809C3584  7F E5 FB 78 */	mr r5, r31
/* 809C3588  88 DF 05 45 */	lbz r6, 0x545(r31)
/* 809C358C  4B 79 06 50 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 809C3590  7C 7D 1B 78 */	mr r29, r3
lbl_809C3594:
/* 809C3594  2C 1D 00 00 */	cmpwi r29, 0
/* 809C3598  41 82 00 14 */	beq lbl_809C35AC
/* 809C359C  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C35A0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809C35A4  4B 78 D1 18 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809C35A8  48 00 00 0C */	b lbl_809C35B4
lbl_809C35AC:
/* 809C35AC  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C35B0  4B 78 D1 30 */	b remove__18daNpcF_ActorMngr_cFv
lbl_809C35B4:
/* 809C35B4  7F A3 EB 78 */	mr r3, r29
/* 809C35B8  39 61 00 20 */	addi r11, r1, 0x20
/* 809C35BC  4B 99 EC 6C */	b _restgpr_29
/* 809C35C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809C35C4  7C 08 03 A6 */	mtlr r0
/* 809C35C8  38 21 00 20 */	addi r1, r1, 0x20
/* 809C35CC  4E 80 00 20 */	blr 
