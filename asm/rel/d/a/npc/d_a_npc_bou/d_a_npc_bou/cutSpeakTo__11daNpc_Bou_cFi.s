lbl_8096F758:
/* 8096F758  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096F75C  7C 08 02 A6 */	mflr r0
/* 8096F760  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096F764  39 61 00 20 */	addi r11, r1, 0x20
/* 8096F768  4B 9F 2A 6C */	b _savegpr_27
/* 8096F76C  7C 7E 1B 78 */	mr r30, r3
/* 8096F770  7C 9B 23 78 */	mr r27, r4
/* 8096F774  3B E0 00 00 */	li r31, 0
/* 8096F778  3B 80 FF FF */	li r28, -1
/* 8096F77C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096F780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096F784  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8096F788  7F A3 EB 78 */	mr r3, r29
/* 8096F78C  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096F790  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096F794  38 A5 00 DA */	addi r5, r5, 0xda
/* 8096F798  38 C0 00 03 */	li r6, 3
/* 8096F79C  4B 6D 89 50 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096F7A0  28 03 00 00 */	cmplwi r3, 0
/* 8096F7A4  41 82 00 08 */	beq lbl_8096F7AC
/* 8096F7A8  83 83 00 00 */	lwz r28, 0(r3)
lbl_8096F7AC:
/* 8096F7AC  7F A3 EB 78 */	mr r3, r29
/* 8096F7B0  7F 64 DB 78 */	mr r4, r27
/* 8096F7B4  4B 6D 85 98 */	b getIsAddvance__16dEvent_manager_cFi
/* 8096F7B8  2C 03 00 00 */	cmpwi r3, 0
/* 8096F7BC  41 82 00 84 */	beq lbl_8096F840
/* 8096F7C0  2C 1C 00 00 */	cmpwi r28, 0
/* 8096F7C4  41 82 00 0C */	beq lbl_8096F7D0
/* 8096F7C8  41 80 00 78 */	blt lbl_8096F840
/* 8096F7CC  48 00 00 74 */	b lbl_8096F840
lbl_8096F7D0:
/* 8096F7D0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8096F7D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096F7D8  41 82 00 28 */	beq lbl_8096F800
/* 8096F7DC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8096F7E0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8096F7E4  4B 7D 60 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096F7E8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8096F7EC  38 00 00 0A */	li r0, 0xa
/* 8096F7F0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8096F7F4  3C 60 80 97 */	lis r3, lit_4758@ha
/* 8096F7F8  C0 03 29 40 */	lfs f0, lit_4758@l(r3)
/* 8096F7FC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8096F800:
/* 8096F800  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8096F804  2C 00 00 00 */	cmpwi r0, 0
/* 8096F808  41 82 00 28 */	beq lbl_8096F830
/* 8096F80C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8096F810  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8096F814  4B 7D 60 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096F818  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8096F81C  38 00 00 00 */	li r0, 0
/* 8096F820  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8096F824  3C 60 80 97 */	lis r3, lit_4758@ha
/* 8096F828  C0 03 29 40 */	lfs f0, lit_4758@l(r3)
/* 8096F82C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8096F830:
/* 8096F830  7F C3 F3 78 */	mr r3, r30
/* 8096F834  38 80 01 90 */	li r4, 0x190
/* 8096F838  38 A0 00 00 */	li r5, 0
/* 8096F83C  4B 7D C3 B4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8096F840:
/* 8096F840  2C 1C 00 01 */	cmpwi r28, 1
/* 8096F844  41 82 00 98 */	beq lbl_8096F8DC
/* 8096F848  40 80 00 10 */	bge lbl_8096F858
/* 8096F84C  2C 1C 00 00 */	cmpwi r28, 0
/* 8096F850  40 80 00 14 */	bge lbl_8096F864
/* 8096F854  48 00 01 34 */	b lbl_8096F988
lbl_8096F858:
/* 8096F858  2C 1C 00 03 */	cmpwi r28, 3
/* 8096F85C  40 80 01 2C */	bge lbl_8096F988
/* 8096F860  48 00 00 EC */	b lbl_8096F94C
lbl_8096F864:
/* 8096F864  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096F868  2C 00 00 01 */	cmpwi r0, 1
/* 8096F86C  41 82 00 2C */	beq lbl_8096F898
/* 8096F870  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096F874  4B 7D 5E 88 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F878  38 00 00 00 */	li r0, 0
/* 8096F87C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096F880  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F884  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F888  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096F88C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096F890  38 00 00 01 */	li r0, 1
/* 8096F894  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8096F898:
/* 8096F898  38 00 00 00 */	li r0, 0
/* 8096F89C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096F8A0  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 8096F8A4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8096F8A8  7C 03 00 00 */	cmpw r3, r0
/* 8096F8AC  40 82 00 0C */	bne lbl_8096F8B8
/* 8096F8B0  3B E0 00 01 */	li r31, 1
/* 8096F8B4  48 00 00 D4 */	b lbl_8096F988
lbl_8096F8B8:
/* 8096F8B8  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 8096F8BC  7F C3 F3 78 */	mr r3, r30
/* 8096F8C0  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8096F8C4  38 A0 00 0A */	li r5, 0xa
/* 8096F8C8  38 C0 00 12 */	li r6, 0x12
/* 8096F8CC  38 E0 00 0F */	li r7, 0xf
/* 8096F8D0  39 00 00 00 */	li r8, 0
/* 8096F8D4  4B 7D BD 74 */	b step__8daNpcT_cFsiiii
/* 8096F8D8  48 00 00 B0 */	b lbl_8096F988
lbl_8096F8DC:
/* 8096F8DC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096F8E0  2C 00 00 01 */	cmpwi r0, 1
/* 8096F8E4  41 82 00 2C */	beq lbl_8096F910
/* 8096F8E8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096F8EC  4B 7D 5E 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F8F0  38 00 00 00 */	li r0, 0
/* 8096F8F4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096F8F8  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F8FC  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F900  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096F904  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096F908  38 00 00 01 */	li r0, 1
/* 8096F90C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8096F910:
/* 8096F910  38 00 00 00 */	li r0, 0
/* 8096F914  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096F918  7F C3 F3 78 */	mr r3, r30
/* 8096F91C  38 80 00 00 */	li r4, 0
/* 8096F920  38 A0 00 00 */	li r5, 0
/* 8096F924  38 C0 00 00 */	li r6, 0
/* 8096F928  38 E0 00 00 */	li r7, 0
/* 8096F92C  4B 7D C3 4C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8096F930  2C 03 00 00 */	cmpwi r3, 0
/* 8096F934  41 82 00 54 */	beq lbl_8096F988
/* 8096F938  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 8096F93C  28 00 00 01 */	cmplwi r0, 1
/* 8096F940  40 82 00 48 */	bne lbl_8096F988
/* 8096F944  3B E0 00 01 */	li r31, 1
/* 8096F948  48 00 00 40 */	b lbl_8096F988
lbl_8096F94C:
/* 8096F94C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096F950  2C 00 00 00 */	cmpwi r0, 0
/* 8096F954  41 82 00 28 */	beq lbl_8096F97C
/* 8096F958  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096F95C  4B 7D 5D A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F960  38 00 00 00 */	li r0, 0
/* 8096F964  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096F968  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F96C  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F970  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096F974  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096F978  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8096F97C:
/* 8096F97C  38 00 00 00 */	li r0, 0
/* 8096F980  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096F984  3B E0 00 01 */	li r31, 1
lbl_8096F988:
/* 8096F988  7F E3 FB 78 */	mr r3, r31
/* 8096F98C  39 61 00 20 */	addi r11, r1, 0x20
/* 8096F990  4B 9F 28 90 */	b _restgpr_27
/* 8096F994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096F998  7C 08 03 A6 */	mtlr r0
/* 8096F99C  38 21 00 20 */	addi r1, r1, 0x20
/* 8096F9A0  4E 80 00 20 */	blr 
