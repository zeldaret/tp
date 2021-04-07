lbl_809FA6C4:
/* 809FA6C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809FA6C8  7C 08 02 A6 */	mflr r0
/* 809FA6CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809FA6D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809FA6D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809FA6D8  7C 7F 1B 78 */	mr r31, r3
/* 809FA6DC  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 809FA6E0  38 A0 FF FF */	li r5, -1
/* 809FA6E4  4B 75 03 5D */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 809FA6E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809FA6EC  41 82 00 A4 */	beq lbl_809FA790
/* 809FA6F0  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 809FA6F4  4B 68 9E 05 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 809FA6F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 809FA6FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809FA700  41 82 00 90 */	beq lbl_809FA790
/* 809FA704  A8 1E 00 08 */	lha r0, 8(r30)
/* 809FA708  2C 00 01 00 */	cmpwi r0, 0x100
/* 809FA70C  40 82 00 10 */	bne lbl_809FA71C
/* 809FA710  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809FA714  28 00 00 01 */	cmplwi r0, 1
/* 809FA718  41 82 00 78 */	beq lbl_809FA790
lbl_809FA71C:
/* 809FA71C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809FA720  7F E4 FB 78 */	mr r4, r31
/* 809FA724  7F C5 F3 78 */	mr r5, r30
/* 809FA728  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 809FA72C  4B 74 D6 A1 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 809FA730  7F E3 FB 78 */	mr r3, r31
/* 809FA734  38 80 00 00 */	li r4, 0
/* 809FA738  38 A0 00 07 */	li r5, 7
/* 809FA73C  38 C0 00 00 */	li r6, 0
/* 809FA740  4B 75 03 91 */	bl setDamage__8daNpcT_cFiii
/* 809FA744  38 00 00 00 */	li r0, 0
/* 809FA748  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 809FA74C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809FA750  2C 00 00 00 */	cmpwi r0, 0
/* 809FA754  41 82 00 28 */	beq lbl_809FA77C
/* 809FA758  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809FA75C  4B 74 AF A1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FA760  38 00 00 00 */	li r0, 0
/* 809FA764  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809FA768  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FA76C  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FA770  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809FA774  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809FA778  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809FA77C:
/* 809FA77C  38 00 00 00 */	li r0, 0
/* 809FA780  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 809FA784  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 809FA788  38 00 00 01 */	li r0, 1
/* 809FA78C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_809FA790:
/* 809FA790  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 809FA794  2C 00 00 00 */	cmpwi r0, 0
/* 809FA798  41 82 00 5C */	beq lbl_809FA7F4
/* 809FA79C  38 C0 00 00 */	li r6, 0
/* 809FA7A0  38 60 00 00 */	li r3, 0
/* 809FA7A4  7C C4 33 78 */	mr r4, r6
/* 809FA7A8  3C A0 80 A0 */	lis r5, lit_4141@ha /* 0x80A006FC@ha */
/* 809FA7AC  C0 05 06 FC */	lfs f0, lit_4141@l(r5)  /* 0x80A006FC@l */
/* 809FA7B0  38 00 00 02 */	li r0, 2
/* 809FA7B4  7C 09 03 A6 */	mtctr r0
lbl_809FA7B8:
/* 809FA7B8  7C BF 22 14 */	add r5, r31, r4
/* 809FA7BC  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 809FA7C0  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 809FA7C4  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 809FA7C8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809FA7CC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809FA7D0  38 63 00 04 */	addi r3, r3, 4
/* 809FA7D4  38 84 00 06 */	addi r4, r4, 6
/* 809FA7D8  42 00 FF E0 */	bdnz lbl_809FA7B8
/* 809FA7DC  38 00 00 00 */	li r0, 0
/* 809FA7E0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809FA7E4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809FA7E8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809FA7EC  38 00 00 01 */	li r0, 1
/* 809FA7F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809FA7F4:
/* 809FA7F4  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 809FA7F8  4B 96 78 21 */	bl __ptmf_test
/* 809FA7FC  2C 03 00 00 */	cmpwi r3, 0
/* 809FA800  41 82 00 54 */	beq lbl_809FA854
/* 809FA804  38 7F 16 EC */	addi r3, r31, 0x16ec
/* 809FA808  38 9F 16 E0 */	addi r4, r31, 0x16e0
/* 809FA80C  4B 96 78 3D */	bl __ptmf_cmpr
/* 809FA810  2C 03 00 00 */	cmpwi r3, 0
/* 809FA814  40 82 00 1C */	bne lbl_809FA830
/* 809FA818  7F E3 FB 78 */	mr r3, r31
/* 809FA81C  38 80 00 00 */	li r4, 0
/* 809FA820  39 9F 16 EC */	addi r12, r31, 0x16ec
/* 809FA824  4B 96 78 61 */	bl __ptmf_scall
/* 809FA828  60 00 00 00 */	nop 
/* 809FA82C  48 00 00 28 */	b lbl_809FA854
lbl_809FA830:
/* 809FA830  80 7F 16 E0 */	lwz r3, 0x16e0(r31)
/* 809FA834  80 1F 16 E4 */	lwz r0, 0x16e4(r31)
/* 809FA838  90 61 00 08 */	stw r3, 8(r1)
/* 809FA83C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809FA840  80 1F 16 E8 */	lwz r0, 0x16e8(r31)
/* 809FA844  90 01 00 10 */	stw r0, 0x10(r1)
/* 809FA848  7F E3 FB 78 */	mr r3, r31
/* 809FA84C  38 81 00 08 */	addi r4, r1, 8
/* 809FA850  48 00 0E A9 */	bl setAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i
lbl_809FA854:
/* 809FA854  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809FA858  28 00 00 00 */	cmplwi r0, 0
/* 809FA85C  41 82 00 18 */	beq lbl_809FA874
/* 809FA860  88 1F 17 21 */	lbz r0, 0x1721(r31)
/* 809FA864  28 00 00 00 */	cmplwi r0, 0
/* 809FA868  41 82 00 0C */	beq lbl_809FA874
/* 809FA86C  7F E3 FB 78 */	mr r3, r31
/* 809FA870  4B 61 F4 0D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_809FA874:
/* 809FA874  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809FA878  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809FA87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809FA880  7C 08 03 A6 */	mtlr r0
/* 809FA884  38 21 00 20 */	addi r1, r1, 0x20
/* 809FA888  4E 80 00 20 */	blr 
