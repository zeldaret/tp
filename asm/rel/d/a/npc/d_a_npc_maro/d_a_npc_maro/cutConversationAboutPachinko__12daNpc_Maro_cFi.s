lbl_8055DDDC:
/* 8055DDDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DDE0  7C 08 02 A6 */	mflr r0
/* 8055DDE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DDE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DDEC  4B E0 43 E8 */	b _savegpr_27
/* 8055DDF0  7C 7E 1B 78 */	mr r30, r3
/* 8055DDF4  7C 9B 23 78 */	mr r27, r4
/* 8055DDF8  3B E0 00 00 */	li r31, 0
/* 8055DDFC  3B 80 FF FF */	li r28, -1
/* 8055DE00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055DE04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055DE08  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8055DE0C  7F A3 EB 78 */	mr r3, r29
/* 8055DE10  3C A0 80 56 */	lis r5, struct_80564D58+0x0@ha
/* 8055DE14  38 A5 4D 58 */	addi r5, r5, struct_80564D58+0x0@l
/* 8055DE18  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055DE1C  38 C0 00 03 */	li r6, 3
/* 8055DE20  4B AE A2 CC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055DE24  28 03 00 00 */	cmplwi r3, 0
/* 8055DE28  41 82 00 08 */	beq lbl_8055DE30
/* 8055DE2C  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055DE30:
/* 8055DE30  7F A3 EB 78 */	mr r3, r29
/* 8055DE34  7F 64 DB 78 */	mr r4, r27
/* 8055DE38  4B AE 9F 14 */	b getIsAddvance__16dEvent_manager_cFi
/* 8055DE3C  2C 03 00 00 */	cmpwi r3, 0
/* 8055DE40  41 82 00 2C */	beq lbl_8055DE6C
/* 8055DE44  2C 1C 00 01 */	cmpwi r28, 1
/* 8055DE48  41 82 00 0C */	beq lbl_8055DE54
/* 8055DE4C  40 80 00 20 */	bge lbl_8055DE6C
/* 8055DE50  48 00 00 1C */	b lbl_8055DE6C
lbl_8055DE54:
/* 8055DE54  7F C3 F3 78 */	mr r3, r30
/* 8055DE58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8055DE5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8055DE60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8055DE64  4B AB C8 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8055DE68  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
lbl_8055DE6C:
/* 8055DE6C  2C 1C 00 01 */	cmpwi r28, 1
/* 8055DE70  41 82 00 1C */	beq lbl_8055DE8C
/* 8055DE74  40 80 00 EC */	bge lbl_8055DF60
/* 8055DE78  2C 1C 00 00 */	cmpwi r28, 0
/* 8055DE7C  40 80 00 08 */	bge lbl_8055DE84
/* 8055DE80  48 00 00 E0 */	b lbl_8055DF60
lbl_8055DE84:
/* 8055DE84  3B E0 00 01 */	li r31, 1
/* 8055DE88  48 00 00 D8 */	b lbl_8055DF60
lbl_8055DE8C:
/* 8055DE8C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8055DE90  2C 00 00 01 */	cmpwi r0, 1
/* 8055DE94  41 82 00 2C */	beq lbl_8055DEC0
/* 8055DE98  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055DE9C  4B BE 78 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055DEA0  38 00 00 00 */	li r0, 0
/* 8055DEA4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055DEA8  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055DEAC  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055DEB0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8055DEB4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055DEB8  38 00 00 01 */	li r0, 1
/* 8055DEBC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8055DEC0:
/* 8055DEC0  38 00 00 00 */	li r0, 0
/* 8055DEC4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055DEC8  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8055DECC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8055DED0  7C 04 00 00 */	cmpw r4, r0
/* 8055DED4  40 82 00 0C */	bne lbl_8055DEE0
/* 8055DED8  3B E0 00 01 */	li r31, 1
/* 8055DEDC  48 00 00 84 */	b lbl_8055DF60
lbl_8055DEE0:
/* 8055DEE0  7F C3 F3 78 */	mr r3, r30
/* 8055DEE4  38 A0 00 09 */	li r5, 9
/* 8055DEE8  38 C0 00 07 */	li r6, 7
/* 8055DEEC  38 E0 00 0F */	li r7, 0xf
/* 8055DEF0  39 00 00 00 */	li r8, 0
/* 8055DEF4  4B BE D7 54 */	b step__8daNpcT_cFsiiii
/* 8055DEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8055DEFC  41 82 00 64 */	beq lbl_8055DF60
/* 8055DF00  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8055DF04  2C 00 00 09 */	cmpwi r0, 9
/* 8055DF08  41 82 00 28 */	beq lbl_8055DF30
/* 8055DF0C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8055DF10  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8055DF14  4B BE 79 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055DF18  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8055DF1C  38 00 00 09 */	li r0, 9
/* 8055DF20  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8055DF24  3C 60 80 56 */	lis r3, lit_5128@ha
/* 8055DF28  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 8055DF2C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8055DF30:
/* 8055DF30  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8055DF34  2C 00 00 00 */	cmpwi r0, 0
/* 8055DF38  41 82 00 28 */	beq lbl_8055DF60
/* 8055DF3C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8055DF40  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8055DF44  4B BE 79 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055DF48  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8055DF4C  38 00 00 00 */	li r0, 0
/* 8055DF50  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8055DF54  3C 60 80 56 */	lis r3, lit_5128@ha
/* 8055DF58  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 8055DF5C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8055DF60:
/* 8055DF60  7F E3 FB 78 */	mr r3, r31
/* 8055DF64  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DF68  4B E0 42 B8 */	b _restgpr_27
/* 8055DF6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DF70  7C 08 03 A6 */	mtlr r0
/* 8055DF74  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DF78  4E 80 00 20 */	blr 
