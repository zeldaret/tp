lbl_80963FA4:
/* 80963FA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80963FA8  7C 08 02 A6 */	mflr r0
/* 80963FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80963FB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80963FB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80963FB8  7C 7F 1B 78 */	mr r31, r3
/* 80963FBC  3B C0 00 00 */	li r30, 0
/* 80963FC0  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80963FC4  28 00 00 00 */	cmplwi r0, 0
/* 80963FC8  40 82 00 14 */	bne lbl_80963FDC
/* 80963FCC  38 9F 10 C4 */	addi r4, r31, 0x10c4
/* 80963FD0  38 A0 FF FF */	li r5, -1
/* 80963FD4  4B 7E 6A 6D */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80963FD8  7C 7E 1B 78 */	mr r30, r3
lbl_80963FDC:
/* 80963FDC  28 1E 00 00 */	cmplwi r30, 0
/* 80963FE0  41 82 00 8C */	beq lbl_8096406C
/* 80963FE4  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80963FE8  4B 72 05 11 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80963FEC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80963FF0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80963FF4  41 82 00 78 */	beq lbl_8096406C
/* 80963FF8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80963FFC  7F E4 FB 78 */	mr r4, r31
/* 80964000  7F C5 F3 78 */	mr r5, r30
/* 80964004  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80964008  4B 7E 3D C5 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 8096400C  7F E3 FB 78 */	mr r3, r31
/* 80964010  38 80 00 00 */	li r4, 0
/* 80964014  38 A0 00 03 */	li r5, 3
/* 80964018  38 C0 00 00 */	li r6, 0
/* 8096401C  4B 7E 6A B5 */	bl setDamage__8daNpcT_cFiii
/* 80964020  38 00 00 00 */	li r0, 0
/* 80964024  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80964028  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8096402C  2C 00 00 00 */	cmpwi r0, 0
/* 80964030  41 82 00 28 */	beq lbl_80964058
/* 80964034  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80964038  4B 7E 16 C5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8096403C  38 00 00 00 */	li r0, 0
/* 80964040  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80964044  3C 60 80 96 */	lis r3, lit_4103@ha /* 0x80967EE8@ha */
/* 80964048  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)  /* 0x80967EE8@l */
/* 8096404C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80964050  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80964054  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80964058:
/* 80964058  38 00 00 00 */	li r0, 0
/* 8096405C  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80964060  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80964064  38 00 00 01 */	li r0, 1
/* 80964068  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_8096406C:
/* 8096406C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80964070  2C 00 00 00 */	cmpwi r0, 0
/* 80964074  41 82 00 5C */	beq lbl_809640D0
/* 80964078  38 C0 00 00 */	li r6, 0
/* 8096407C  38 60 00 00 */	li r3, 0
/* 80964080  7C C4 33 78 */	mr r4, r6
/* 80964084  3C A0 80 96 */	lis r5, lit_4103@ha /* 0x80967EE8@ha */
/* 80964088  C0 05 7E E8 */	lfs f0, lit_4103@l(r5)  /* 0x80967EE8@l */
/* 8096408C  38 00 00 02 */	li r0, 2
/* 80964090  7C 09 03 A6 */	mtctr r0
lbl_80964094:
/* 80964094  7C BF 22 14 */	add r5, r31, r4
/* 80964098  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 8096409C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 809640A0  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 809640A4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809640A8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809640AC  38 63 00 04 */	addi r3, r3, 4
/* 809640B0  38 84 00 06 */	addi r4, r4, 6
/* 809640B4  42 00 FF E0 */	bdnz lbl_80964094
/* 809640B8  38 00 00 00 */	li r0, 0
/* 809640BC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809640C0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809640C4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809640C8  38 00 00 01 */	li r0, 1
/* 809640CC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809640D0:
/* 809640D0  38 7F 12 44 */	addi r3, r31, 0x1244
/* 809640D4  4B 9F DF 45 */	bl __ptmf_test
/* 809640D8  2C 03 00 00 */	cmpwi r3, 0
/* 809640DC  41 82 00 54 */	beq lbl_80964130
/* 809640E0  38 7F 12 50 */	addi r3, r31, 0x1250
/* 809640E4  38 9F 12 44 */	addi r4, r31, 0x1244
/* 809640E8  4B 9F DF 61 */	bl __ptmf_cmpr
/* 809640EC  2C 03 00 00 */	cmpwi r3, 0
/* 809640F0  40 82 00 1C */	bne lbl_8096410C
/* 809640F4  7F E3 FB 78 */	mr r3, r31
/* 809640F8  38 80 00 00 */	li r4, 0
/* 809640FC  39 9F 12 50 */	addi r12, r31, 0x1250
/* 80964100  4B 9F DF 85 */	bl __ptmf_scall
/* 80964104  60 00 00 00 */	nop 
/* 80964108  48 00 00 28 */	b lbl_80964130
lbl_8096410C:
/* 8096410C  80 7F 12 44 */	lwz r3, 0x1244(r31)
/* 80964110  80 1F 12 48 */	lwz r0, 0x1248(r31)
/* 80964114  90 61 00 08 */	stw r3, 8(r1)
/* 80964118  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096411C  80 1F 12 4C */	lwz r0, 0x124c(r31)
/* 80964120  90 01 00 10 */	stw r0, 0x10(r1)
/* 80964124  7F E3 FB 78 */	mr r3, r31
/* 80964128  38 81 00 08 */	addi r4, r1, 8
/* 8096412C  48 00 0B 4D */	bl setAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i
lbl_80964130:
/* 80964130  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80964134  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80964138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096413C  7C 08 03 A6 */	mtlr r0
/* 80964140  38 21 00 20 */	addi r1, r1, 0x20
/* 80964144  4E 80 00 20 */	blr 
