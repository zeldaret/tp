lbl_80A6D708:
/* 80A6D708  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6D70C  7C 08 02 A6 */	mflr r0
/* 80A6D710  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6D714  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6D718  4B 8F 4A BC */	b _savegpr_27
/* 80A6D71C  7C 7D 1B 78 */	mr r29, r3
/* 80A6D720  7C 9B 23 78 */	mr r27, r4
/* 80A6D724  3B E0 00 00 */	li r31, 0
/* 80A6D728  3B C0 FF FF */	li r30, -1
/* 80A6D72C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6D730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6D734  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A6D738  7F 83 E3 78 */	mr r3, r28
/* 80A6D73C  3C A0 80 A7 */	lis r5, struct_80A6FECC+0x0@ha
/* 80A6D740  38 A5 FE CC */	addi r5, r5, struct_80A6FECC+0x0@l
/* 80A6D744  38 A5 00 A5 */	addi r5, r5, 0xa5
/* 80A6D748  38 C0 00 03 */	li r6, 3
/* 80A6D74C  4B 5D A9 A0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6D750  28 03 00 00 */	cmplwi r3, 0
/* 80A6D754  41 82 00 08 */	beq lbl_80A6D75C
/* 80A6D758  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A6D75C:
/* 80A6D75C  7F 83 E3 78 */	mr r3, r28
/* 80A6D760  7F 64 DB 78 */	mr r4, r27
/* 80A6D764  4B 5D A5 E8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A6D768  2C 03 00 00 */	cmpwi r3, 0
/* 80A6D76C  41 82 01 60 */	beq lbl_80A6D8CC
/* 80A6D770  2C 1E 00 01 */	cmpwi r30, 1
/* 80A6D774  41 82 00 94 */	beq lbl_80A6D808
/* 80A6D778  40 80 00 10 */	bge lbl_80A6D788
/* 80A6D77C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6D780  40 80 00 14 */	bge lbl_80A6D794
/* 80A6D784  48 00 01 48 */	b lbl_80A6D8CC
lbl_80A6D788:
/* 80A6D788  2C 1E 00 03 */	cmpwi r30, 3
/* 80A6D78C  40 80 01 40 */	bge lbl_80A6D8CC
/* 80A6D790  48 00 00 DC */	b lbl_80A6D86C
lbl_80A6D794:
/* 80A6D794  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A6D798  2C 00 00 01 */	cmpwi r0, 1
/* 80A6D79C  41 82 00 28 */	beq lbl_80A6D7C4
/* 80A6D7A0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A6D7A4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6D7A8  4B 6D 80 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D7AC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A6D7B0  38 00 00 01 */	li r0, 1
/* 80A6D7B4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A6D7B8  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6D7BC  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6D7C0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6D7C4:
/* 80A6D7C4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A6D7C8  2C 00 00 03 */	cmpwi r0, 3
/* 80A6D7CC  41 82 00 28 */	beq lbl_80A6D7F4
/* 80A6D7D0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A6D7D4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D7D8  4B 6D 80 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D7DC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A6D7E0  38 00 00 03 */	li r0, 3
/* 80A6D7E4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A6D7E8  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6D7EC  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6D7F0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A6D7F4:
/* 80A6D7F4  7F A3 EB 78 */	mr r3, r29
/* 80A6D7F8  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 80A6D7FC  38 A0 00 00 */	li r5, 0
/* 80A6D800  4B 6D E3 F0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A6D804  48 00 00 C8 */	b lbl_80A6D8CC
lbl_80A6D808:
/* 80A6D808  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A6D80C  2C 00 00 07 */	cmpwi r0, 7
/* 80A6D810  41 82 00 28 */	beq lbl_80A6D838
/* 80A6D814  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A6D818  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6D81C  4B 6D 80 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D820  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A6D824  38 00 00 07 */	li r0, 7
/* 80A6D828  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A6D82C  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6D830  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6D834  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6D838:
/* 80A6D838  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A6D83C  2C 00 00 09 */	cmpwi r0, 9
/* 80A6D840  41 82 00 8C */	beq lbl_80A6D8CC
/* 80A6D844  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A6D848  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D84C  4B 6D 80 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D850  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A6D854  38 00 00 09 */	li r0, 9
/* 80A6D858  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A6D85C  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6D860  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6D864  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A6D868  48 00 00 64 */	b lbl_80A6D8CC
lbl_80A6D86C:
/* 80A6D86C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A6D870  2C 00 00 08 */	cmpwi r0, 8
/* 80A6D874  41 82 00 28 */	beq lbl_80A6D89C
/* 80A6D878  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A6D87C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A6D880  4B 6D 80 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D884  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A6D888  38 00 00 08 */	li r0, 8
/* 80A6D88C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A6D890  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6D894  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6D898  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6D89C:
/* 80A6D89C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A6D8A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A6D8A4  41 82 00 28 */	beq lbl_80A6D8CC
/* 80A6D8A8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A6D8AC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D8B0  4B 6D 7F E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D8B4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A6D8B8  38 00 00 0A */	li r0, 0xa
/* 80A6D8BC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A6D8C0  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6D8C4  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6D8C8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A6D8CC:
/* 80A6D8CC  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6D8D0  41 82 00 14 */	beq lbl_80A6D8E4
/* 80A6D8D4  41 80 00 68 */	blt lbl_80A6D93C
/* 80A6D8D8  2C 1E 00 03 */	cmpwi r30, 3
/* 80A6D8DC  40 80 00 60 */	bge lbl_80A6D93C
/* 80A6D8E0  48 00 00 38 */	b lbl_80A6D918
lbl_80A6D8E4:
/* 80A6D8E4  7F A3 EB 78 */	mr r3, r29
/* 80A6D8E8  38 80 00 00 */	li r4, 0
/* 80A6D8EC  38 A0 00 00 */	li r5, 0
/* 80A6D8F0  38 C0 00 00 */	li r6, 0
/* 80A6D8F4  38 E0 00 00 */	li r7, 0
/* 80A6D8F8  4B 6D E3 80 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A6D8FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A6D900  41 82 00 3C */	beq lbl_80A6D93C
/* 80A6D904  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80A6D908  28 00 00 01 */	cmplwi r0, 1
/* 80A6D90C  40 82 00 30 */	bne lbl_80A6D93C
/* 80A6D910  3B E0 00 01 */	li r31, 1
/* 80A6D914  48 00 00 28 */	b lbl_80A6D93C
lbl_80A6D918:
/* 80A6D918  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A6D91C  4B 6D 81 08 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A6D920  2C 03 00 00 */	cmpwi r3, 0
/* 80A6D924  41 82 00 18 */	beq lbl_80A6D93C
/* 80A6D928  2C 1E 00 02 */	cmpwi r30, 2
/* 80A6D92C  40 82 00 0C */	bne lbl_80A6D938
/* 80A6D930  38 00 00 00 */	li r0, 0
/* 80A6D934  B0 1D 0F D0 */	sth r0, 0xfd0(r29)
lbl_80A6D938:
/* 80A6D938  3B E0 00 01 */	li r31, 1
lbl_80A6D93C:
/* 80A6D93C  88 1D 0F 8C */	lbz r0, 0xf8c(r29)
/* 80A6D940  28 00 00 06 */	cmplwi r0, 6
/* 80A6D944  40 82 00 38 */	bne lbl_80A6D97C
/* 80A6D948  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6D94C  41 82 00 0C */	beq lbl_80A6D958
/* 80A6D950  2C 1E 00 01 */	cmpwi r30, 1
/* 80A6D954  40 82 00 18 */	bne lbl_80A6D96C
lbl_80A6D958:
/* 80A6D958  38 7D 0F D0 */	addi r3, r29, 0xfd0
/* 80A6D95C  38 80 0E 00 */	li r4, 0xe00
/* 80A6D960  38 A0 01 66 */	li r5, 0x166
/* 80A6D964  4B 80 2D 6C */	b cLib_chaseS__FPsss
/* 80A6D968  48 00 00 14 */	b lbl_80A6D97C
lbl_80A6D96C:
/* 80A6D96C  38 7D 0F D0 */	addi r3, r29, 0xfd0
/* 80A6D970  38 80 00 00 */	li r4, 0
/* 80A6D974  38 A0 01 66 */	li r5, 0x166
/* 80A6D978  4B 80 2D 58 */	b cLib_chaseS__FPsss
lbl_80A6D97C:
/* 80A6D97C  7F E3 FB 78 */	mr r3, r31
/* 80A6D980  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6D984  4B 8F 48 9C */	b _restgpr_27
/* 80A6D988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6D98C  7C 08 03 A6 */	mtlr r0
/* 80A6D990  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6D994  4E 80 00 20 */	blr 
