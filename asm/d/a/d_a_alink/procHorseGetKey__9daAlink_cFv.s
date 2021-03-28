lbl_800F3754:
/* 800F3754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F3758  7C 08 02 A6 */	mflr r0
/* 800F375C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F3760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F3764  93 C1 00 08 */	stw r30, 8(r1)
/* 800F3768  7C 7E 1B 78 */	mr r30, r3
/* 800F376C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800F3770  4B FF A2 B5 */	bl setSyncRidePos__9daAlink_cFv
/* 800F3774  7F E3 FB 78 */	mr r3, r31
/* 800F3778  48 06 AD 55 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F377C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F3780  41 82 00 1C */	beq lbl_800F379C
/* 800F3784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F3788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F378C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800F3790  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800F3794  4B F5 49 E9 */	bl cutEnd__16dEvent_manager_cFi
/* 800F3798  48 00 00 64 */	b lbl_800F37FC
lbl_800F379C:
/* 800F379C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F37A0  C0 02 94 88 */	lfs f0, lit_16038(r2)
/* 800F37A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F37A8  4C 41 13 82 */	cror 2, 1, 2
/* 800F37AC  40 82 00 1C */	bne lbl_800F37C8
/* 800F37B0  38 00 00 FE */	li r0, 0xfe
/* 800F37B4  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800F37B8  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800F37BC  38 00 00 01 */	li r0, 1
/* 800F37C0  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800F37C4  48 00 00 38 */	b lbl_800F37FC
lbl_800F37C8:
/* 800F37C8  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 800F37CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F37D0  4C 41 13 82 */	cror 2, 1, 2
/* 800F37D4  40 82 00 10 */	bne lbl_800F37E4
/* 800F37D8  38 00 00 02 */	li r0, 2
/* 800F37DC  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800F37E0  48 00 00 1C */	b lbl_800F37FC
lbl_800F37E4:
/* 800F37E4  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800F37E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F37EC  4C 41 13 82 */	cror 2, 1, 2
/* 800F37F0  40 82 00 0C */	bne lbl_800F37FC
/* 800F37F4  38 00 00 03 */	li r0, 3
/* 800F37F8  98 1E 2F 92 */	stb r0, 0x2f92(r30)
lbl_800F37FC:
/* 800F37FC  38 60 00 01 */	li r3, 1
/* 800F3800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F3804  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F3808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F380C  7C 08 03 A6 */	mtlr r0
/* 800F3810  38 21 00 10 */	addi r1, r1, 0x10
/* 800F3814  4E 80 00 20 */	blr 
