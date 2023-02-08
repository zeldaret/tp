lbl_80A9D698:
/* 80A9D698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9D69C  7C 08 02 A6 */	mflr r0
/* 80A9D6A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9D6A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9D6A8  7C 7F 1B 78 */	mr r31, r3
/* 80A9D6AC  38 A0 00 00 */	li r5, 0
/* 80A9D6B0  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A9D6B4  28 00 00 00 */	cmplwi r0, 0
/* 80A9D6B8  40 82 00 14 */	bne lbl_80A9D6CC
/* 80A9D6BC  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80A9D6C0  38 A0 FF FF */	li r5, -1
/* 80A9D6C4  4B 6A D3 7D */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80A9D6C8  7C 65 1B 78 */	mr r5, r3
lbl_80A9D6CC:
/* 80A9D6CC  28 05 00 00 */	cmplwi r5, 0
/* 80A9D6D0  41 82 00 98 */	beq lbl_80A9D768
/* 80A9D6D4  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A9D6D8  7F E4 FB 78 */	mr r4, r31
/* 80A9D6DC  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80A9D6E0  4B 6A A6 ED */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80A9D6E4  7F E3 FB 78 */	mr r3, r31
/* 80A9D6E8  38 80 00 00 */	li r4, 0
/* 80A9D6EC  38 A0 00 11 */	li r5, 0x11
/* 80A9D6F0  38 C0 00 21 */	li r6, 0x21
/* 80A9D6F4  4B 6A D3 DD */	bl setDamage__8daNpcT_cFiii
/* 80A9D6F8  38 80 00 00 */	li r4, 0
/* 80A9D6FC  3C 60 80 AA */	lis r3, lit_4373@ha /* 0x80AA16A4@ha */
/* 80A9D700  C0 03 16 A4 */	lfs f0, lit_4373@l(r3)  /* 0x80AA16A4@l */
/* 80A9D704  38 00 00 02 */	li r0, 2
/* 80A9D708  7C 09 03 A6 */	mtctr r0
lbl_80A9D70C:
/* 80A9D70C  38 04 0D 14 */	addi r0, r4, 0xd14
/* 80A9D710  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A9D714  38 84 00 04 */	addi r4, r4, 4
/* 80A9D718  42 00 FF F4 */	bdnz lbl_80A9D70C
/* 80A9D71C  38 00 00 00 */	li r0, 0
/* 80A9D720  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80A9D724  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A9D728  2C 00 00 00 */	cmpwi r0, 0
/* 80A9D72C  41 82 00 28 */	beq lbl_80A9D754
/* 80A9D730  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9D734  4B 6A 7F C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A9D738  38 00 00 00 */	li r0, 0
/* 80A9D73C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A9D740  3C 60 80 AA */	lis r3, lit_4373@ha /* 0x80AA16A4@ha */
/* 80A9D744  C0 03 16 A4 */	lfs f0, lit_4373@l(r3)  /* 0x80AA16A4@l */
/* 80A9D748  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A9D74C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9D750  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A9D754:
/* 80A9D754  38 00 00 00 */	li r0, 0
/* 80A9D758  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80A9D75C  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80A9D760  38 00 00 01 */	li r0, 1
/* 80A9D764  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A9D768:
/* 80A9D768  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80A9D76C  2C 00 00 00 */	cmpwi r0, 0
/* 80A9D770  41 82 00 5C */	beq lbl_80A9D7CC
/* 80A9D774  38 C0 00 00 */	li r6, 0
/* 80A9D778  38 60 00 00 */	li r3, 0
/* 80A9D77C  38 80 00 00 */	li r4, 0
/* 80A9D780  3C A0 80 AA */	lis r5, lit_4373@ha /* 0x80AA16A4@ha */
/* 80A9D784  C0 05 16 A4 */	lfs f0, lit_4373@l(r5)  /* 0x80AA16A4@l */
/* 80A9D788  38 00 00 02 */	li r0, 2
/* 80A9D78C  7C 09 03 A6 */	mtctr r0
lbl_80A9D790:
/* 80A9D790  7C BF 22 14 */	add r5, r31, r4
/* 80A9D794  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80A9D798  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80A9D79C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A9D7A0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A9D7A4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A9D7A8  38 63 00 04 */	addi r3, r3, 4
/* 80A9D7AC  38 84 00 06 */	addi r4, r4, 6
/* 80A9D7B0  42 00 FF E0 */	bdnz lbl_80A9D790
/* 80A9D7B4  38 00 00 00 */	li r0, 0
/* 80A9D7B8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A9D7BC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A9D7C0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A9D7C4  38 00 00 01 */	li r0, 1
/* 80A9D7C8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A9D7CC:
/* 80A9D7CC  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A9D7D0  4B 8C 48 49 */	bl __ptmf_test
/* 80A9D7D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D7D8  41 82 00 54 */	beq lbl_80A9D82C
/* 80A9D7DC  38 7F 0F C8 */	addi r3, r31, 0xfc8
/* 80A9D7E0  38 9F 0F BC */	addi r4, r31, 0xfbc
/* 80A9D7E4  4B 8C 48 65 */	bl __ptmf_cmpr
/* 80A9D7E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D7EC  40 82 00 1C */	bne lbl_80A9D808
/* 80A9D7F0  7F E3 FB 78 */	mr r3, r31
/* 80A9D7F4  38 80 00 00 */	li r4, 0
/* 80A9D7F8  39 9F 0F C8 */	addi r12, r31, 0xfc8
/* 80A9D7FC  4B 8C 48 89 */	bl __ptmf_scall
/* 80A9D800  60 00 00 00 */	nop 
/* 80A9D804  48 00 00 28 */	b lbl_80A9D82C
lbl_80A9D808:
/* 80A9D808  80 7F 0F BC */	lwz r3, 0xfbc(r31)
/* 80A9D80C  80 1F 0F C0 */	lwz r0, 0xfc0(r31)
/* 80A9D810  90 61 00 08 */	stw r3, 8(r1)
/* 80A9D814  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9D818  80 1F 0F C4 */	lwz r0, 0xfc4(r31)
/* 80A9D81C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9D820  7F E3 FB 78 */	mr r3, r31
/* 80A9D824  38 81 00 08 */	addi r4, r1, 8
/* 80A9D828  48 00 05 A5 */	bl setAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i
lbl_80A9D82C:
/* 80A9D82C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9D830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9D834  7C 08 03 A6 */	mtlr r0
/* 80A9D838  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9D83C  4E 80 00 20 */	blr 
