lbl_80A757CC:
/* 80A757CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A757D0  7C 08 02 A6 */	mflr r0
/* 80A757D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A757D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A757DC  4B 8E C9 FD */	bl _savegpr_28
/* 80A757E0  7C 7F 1B 78 */	mr r31, r3
/* 80A757E4  3B 80 00 00 */	li r28, 0
/* 80A757E8  3B C0 00 00 */	li r30, 0
lbl_80A757EC:
/* 80A757EC  7F E3 FB 78 */	mr r3, r31
/* 80A757F0  38 9E 0E 5C */	addi r4, r30, 0xe5c
/* 80A757F4  7C 9F 22 14 */	add r4, r31, r4
/* 80A757F8  38 A0 FF FF */	li r5, -1
/* 80A757FC  4B 6D 52 45 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80A75800  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A75804  40 82 00 14 */	bne lbl_80A75818
/* 80A75808  3B 9C 00 01 */	addi r28, r28, 1
/* 80A7580C  2C 1C 00 04 */	cmpwi r28, 4
/* 80A75810  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80A75814  41 80 FF D8 */	blt lbl_80A757EC
lbl_80A75818:
/* 80A75818  28 1D 00 00 */	cmplwi r29, 0
/* 80A7581C  41 82 00 D0 */	beq lbl_80A758EC
/* 80A75820  88 1F 15 C4 */	lbz r0, 0x15c4(r31)
/* 80A75824  28 00 00 02 */	cmplwi r0, 2
/* 80A75828  40 82 00 34 */	bne lbl_80A7585C
/* 80A7582C  88 1F 16 6D */	lbz r0, 0x166d(r31)
/* 80A75830  28 00 00 00 */	cmplwi r0, 0
/* 80A75834  40 82 00 B8 */	bne lbl_80A758EC
/* 80A75838  88 1F 16 6C */	lbz r0, 0x166c(r31)
/* 80A7583C  28 00 00 00 */	cmplwi r0, 0
/* 80A75840  40 82 00 AC */	bne lbl_80A758EC
/* 80A75844  7F E3 FB 78 */	mr r3, r31
/* 80A75848  88 1F 16 69 */	lbz r0, 0x1669(r31)
/* 80A7584C  7C 00 00 34 */	cntlzw r0, r0
/* 80A75850  54 04 DE 3E */	rlwinm r4, r0, 0x1b, 0x18, 0x1f
/* 80A75854  48 00 0E 89 */	bl setSSlash__11daNpc_Moi_cFi
/* 80A75858  48 00 00 94 */	b lbl_80A758EC
lbl_80A7585C:
/* 80A7585C  1C 7C 01 3C */	mulli r3, r28, 0x13c
/* 80A75860  38 63 0E 5C */	addi r3, r3, 0xe5c
/* 80A75864  7C 7F 1A 14 */	add r3, r31, r3
/* 80A75868  4B 60 EC 91 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80A7586C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80A75870  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A75874  41 82 00 78 */	beq lbl_80A758EC
/* 80A75878  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A7587C  7F E4 FB 78 */	mr r4, r31
/* 80A75880  7F A5 EB 78 */	mr r5, r29
/* 80A75884  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80A75888  4B 6D 25 45 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80A7588C  7F E3 FB 78 */	mr r3, r31
/* 80A75890  38 80 00 00 */	li r4, 0
/* 80A75894  38 A0 00 15 */	li r5, 0x15
/* 80A75898  38 C0 00 00 */	li r6, 0
/* 80A7589C  4B 6D 52 35 */	bl setDamage__8daNpcT_cFiii
/* 80A758A0  38 00 00 00 */	li r0, 0
/* 80A758A4  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80A758A8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A758AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A758B0  41 82 00 28 */	beq lbl_80A758D8
/* 80A758B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A758B8  4B 6C FE 45 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A758BC  38 00 00 00 */	li r0, 0
/* 80A758C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A758C4  3C 60 80 A8 */	lis r3, lit_4115@ha /* 0x80A7AFD8@ha */
/* 80A758C8  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)  /* 0x80A7AFD8@l */
/* 80A758CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A758D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A758D4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A758D8:
/* 80A758D8  38 00 00 00 */	li r0, 0
/* 80A758DC  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80A758E0  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80A758E4  38 00 00 01 */	li r0, 1
/* 80A758E8  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A758EC:
/* 80A758EC  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80A758F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A758F4  41 82 00 5C */	beq lbl_80A75950
/* 80A758F8  38 60 00 00 */	li r3, 0
/* 80A758FC  38 80 00 00 */	li r4, 0
/* 80A75900  38 C0 00 00 */	li r6, 0
/* 80A75904  3C A0 80 A8 */	lis r5, lit_4115@ha /* 0x80A7AFD8@ha */
/* 80A75908  C0 05 AF D8 */	lfs f0, lit_4115@l(r5)  /* 0x80A7AFD8@l */
/* 80A7590C  38 00 00 02 */	li r0, 2
/* 80A75910  7C 09 03 A6 */	mtctr r0
lbl_80A75914:
/* 80A75914  7C BF 22 14 */	add r5, r31, r4
/* 80A75918  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80A7591C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80A75920  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A75924  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A75928  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A7592C  38 63 00 04 */	addi r3, r3, 4
/* 80A75930  38 84 00 06 */	addi r4, r4, 6
/* 80A75934  42 00 FF E0 */	bdnz lbl_80A75914
/* 80A75938  38 00 00 00 */	li r0, 0
/* 80A7593C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A75940  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A75944  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A75948  38 00 00 01 */	li r0, 1
/* 80A7594C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A75950:
/* 80A75950  38 7F 16 10 */	addi r3, r31, 0x1610
/* 80A75954  4B 8E C6 C5 */	bl __ptmf_test
/* 80A75958  2C 03 00 00 */	cmpwi r3, 0
/* 80A7595C  41 82 00 54 */	beq lbl_80A759B0
/* 80A75960  38 7F 16 1C */	addi r3, r31, 0x161c
/* 80A75964  38 9F 16 10 */	addi r4, r31, 0x1610
/* 80A75968  4B 8E C6 E1 */	bl __ptmf_cmpr
/* 80A7596C  2C 03 00 00 */	cmpwi r3, 0
/* 80A75970  40 82 00 1C */	bne lbl_80A7598C
/* 80A75974  7F E3 FB 78 */	mr r3, r31
/* 80A75978  38 80 00 00 */	li r4, 0
/* 80A7597C  39 9F 16 1C */	addi r12, r31, 0x161c
/* 80A75980  4B 8E C7 05 */	bl __ptmf_scall
/* 80A75984  60 00 00 00 */	nop 
/* 80A75988  48 00 00 28 */	b lbl_80A759B0
lbl_80A7598C:
/* 80A7598C  80 7F 16 10 */	lwz r3, 0x1610(r31)
/* 80A75990  80 1F 16 14 */	lwz r0, 0x1614(r31)
/* 80A75994  90 61 00 08 */	stw r3, 8(r1)
/* 80A75998  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7599C  80 1F 16 18 */	lwz r0, 0x1618(r31)
/* 80A759A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A759A4  7F E3 FB 78 */	mr r3, r31
/* 80A759A8  38 81 00 08 */	addi r4, r1, 8
/* 80A759AC  48 00 0C 4D */	bl setAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i
lbl_80A759B0:
/* 80A759B0  38 7F 14 88 */	addi r3, r31, 0x1488
/* 80A759B4  4B 60 E9 0D */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80A759B8  28 03 00 00 */	cmplwi r3, 0
/* 80A759BC  41 82 00 20 */	beq lbl_80A759DC
/* 80A759C0  38 7F 14 E0 */	addi r3, r31, 0x14e0
/* 80A759C4  4B 60 DC C5 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80A759C8  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80A759CC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80A759D0  40 82 00 0C */	bne lbl_80A759DC
/* 80A759D4  38 60 00 47 */	li r3, 0x47
/* 80A759D8  4B 6D FD 1D */	bl daNpcF_onTmpBit__FUl
lbl_80A759DC:
/* 80A759DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A759E0  4B 8E C8 45 */	bl _restgpr_28
/* 80A759E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A759E8  7C 08 03 A6 */	mtlr r0
/* 80A759EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A759F0  4E 80 00 20 */	blr 
