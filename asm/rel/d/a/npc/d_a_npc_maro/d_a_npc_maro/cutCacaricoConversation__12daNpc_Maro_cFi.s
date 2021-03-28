lbl_8055F634:
/* 8055F634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055F638  7C 08 02 A6 */	mflr r0
/* 8055F63C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055F640  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F644  4B E0 2B 90 */	b _savegpr_27
/* 8055F648  7C 7E 1B 78 */	mr r30, r3
/* 8055F64C  7C 9B 23 78 */	mr r27, r4
/* 8055F650  3B E0 00 00 */	li r31, 0
/* 8055F654  3B 80 FF FF */	li r28, -1
/* 8055F658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055F65C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055F660  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8055F664  7F A3 EB 78 */	mr r3, r29
/* 8055F668  3C A0 80 56 */	lis r5, struct_80564D58+0x0@ha
/* 8055F66C  38 A5 4D 58 */	addi r5, r5, struct_80564D58+0x0@l
/* 8055F670  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055F674  38 C0 00 03 */	li r6, 3
/* 8055F678  4B AE 8A 74 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055F67C  28 03 00 00 */	cmplwi r3, 0
/* 8055F680  41 82 00 08 */	beq lbl_8055F688
/* 8055F684  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055F688:
/* 8055F688  7F A3 EB 78 */	mr r3, r29
/* 8055F68C  7F 64 DB 78 */	mr r4, r27
/* 8055F690  4B AE 86 BC */	b getIsAddvance__16dEvent_manager_cFi
/* 8055F694  2C 03 00 00 */	cmpwi r3, 0
/* 8055F698  41 82 00 48 */	beq lbl_8055F6E0
/* 8055F69C  2C 1C 00 01 */	cmpwi r28, 1
/* 8055F6A0  41 82 00 40 */	beq lbl_8055F6E0
/* 8055F6A4  40 80 00 3C */	bge lbl_8055F6E0
/* 8055F6A8  2C 1C 00 00 */	cmpwi r28, 0
/* 8055F6AC  40 80 00 08 */	bge lbl_8055F6B4
/* 8055F6B0  48 00 00 30 */	b lbl_8055F6E0
lbl_8055F6B4:
/* 8055F6B4  7F C3 F3 78 */	mr r3, r30
/* 8055F6B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8055F6BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8055F6C0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8055F6C4  4B AB B0 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8055F6C8  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
/* 8055F6CC  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 8055F6D0  2C 00 00 01 */	cmpwi r0, 1
/* 8055F6D4  40 82 00 0C */	bne lbl_8055F6E0
/* 8055F6D8  38 00 00 00 */	li r0, 0
/* 8055F6DC  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
lbl_8055F6E0:
/* 8055F6E0  2C 1C 00 01 */	cmpwi r28, 1
/* 8055F6E4  41 82 00 EC */	beq lbl_8055F7D0
/* 8055F6E8  40 80 01 28 */	bge lbl_8055F810
/* 8055F6EC  2C 1C 00 00 */	cmpwi r28, 0
/* 8055F6F0  40 80 00 08 */	bge lbl_8055F6F8
/* 8055F6F4  48 00 01 1C */	b lbl_8055F810
lbl_8055F6F8:
/* 8055F6F8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8055F6FC  2C 00 00 01 */	cmpwi r0, 1
/* 8055F700  41 82 00 2C */	beq lbl_8055F72C
/* 8055F704  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055F708  4B BE 5F F4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055F70C  38 00 00 00 */	li r0, 0
/* 8055F710  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055F714  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055F718  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055F71C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8055F720  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055F724  38 00 00 01 */	li r0, 1
/* 8055F728  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8055F72C:
/* 8055F72C  38 00 00 00 */	li r0, 0
/* 8055F730  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055F734  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8055F738  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8055F73C  7C 04 00 00 */	cmpw r4, r0
/* 8055F740  41 82 00 88 */	beq lbl_8055F7C8
/* 8055F744  7F C3 F3 78 */	mr r3, r30
/* 8055F748  38 A0 00 09 */	li r5, 9
/* 8055F74C  38 C0 00 07 */	li r6, 7
/* 8055F750  38 E0 00 0F */	li r7, 0xf
/* 8055F754  39 00 00 00 */	li r8, 0
/* 8055F758  4B BE BE F0 */	b step__8daNpcT_cFsiiii
/* 8055F75C  2C 03 00 00 */	cmpwi r3, 0
/* 8055F760  41 82 00 B0 */	beq lbl_8055F810
/* 8055F764  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8055F768  2C 00 00 09 */	cmpwi r0, 9
/* 8055F76C  41 82 00 28 */	beq lbl_8055F794
/* 8055F770  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8055F774  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8055F778  4B BE 61 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055F77C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8055F780  38 00 00 09 */	li r0, 9
/* 8055F784  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8055F788  3C 60 80 56 */	lis r3, lit_5128@ha
/* 8055F78C  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 8055F790  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8055F794:
/* 8055F794  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8055F798  2C 00 00 00 */	cmpwi r0, 0
/* 8055F79C  41 82 00 74 */	beq lbl_8055F810
/* 8055F7A0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8055F7A4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8055F7A8  4B BE 60 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055F7AC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8055F7B0  38 00 00 00 */	li r0, 0
/* 8055F7B4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8055F7B8  3C 60 80 56 */	lis r3, lit_5128@ha
/* 8055F7BC  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 8055F7C0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8055F7C4  48 00 00 4C */	b lbl_8055F810
lbl_8055F7C8:
/* 8055F7C8  3B E0 00 01 */	li r31, 1
/* 8055F7CC  48 00 00 44 */	b lbl_8055F810
lbl_8055F7D0:
/* 8055F7D0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8055F7D4  2C 00 00 01 */	cmpwi r0, 1
/* 8055F7D8  41 82 00 2C */	beq lbl_8055F804
/* 8055F7DC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055F7E0  4B BE 5F 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 8055F7E4  38 00 00 00 */	li r0, 0
/* 8055F7E8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055F7EC  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055F7F0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055F7F4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8055F7F8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055F7FC  38 00 00 01 */	li r0, 1
/* 8055F800  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8055F804:
/* 8055F804  38 00 00 00 */	li r0, 0
/* 8055F808  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055F80C  3B E0 00 01 */	li r31, 1
lbl_8055F810:
/* 8055F810  7F E3 FB 78 */	mr r3, r31
/* 8055F814  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F818  4B E0 2A 08 */	b _restgpr_27
/* 8055F81C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055F820  7C 08 03 A6 */	mtlr r0
/* 8055F824  38 21 00 20 */	addi r1, r1, 0x20
/* 8055F828  4E 80 00 20 */	blr 
