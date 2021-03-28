lbl_800EC20C:
/* 800EC20C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800EC210  7C 08 02 A6 */	mflr r0
/* 800EC214  90 01 00 34 */	stw r0, 0x34(r1)
/* 800EC218  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800EC21C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800EC220  39 61 00 20 */	addi r11, r1, 0x20
/* 800EC224  48 27 5F B9 */	bl _savegpr_29
/* 800EC228  7C 7F 1B 78 */	mr r31, r3
/* 800EC22C  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 800EC230  28 00 00 0B */	cmplwi r0, 0xb
/* 800EC234  40 82 00 20 */	bne lbl_800EC254
/* 800EC238  88 1F 1F D4 */	lbz r0, 0x1fd4(r31)
/* 800EC23C  28 00 00 02 */	cmplwi r0, 2
/* 800EC240  40 82 00 14 */	bne lbl_800EC254
/* 800EC244  4B FF E6 8D */	bl cancelSumouMode__9daAlink_cFv
/* 800EC248  7F E3 FB 78 */	mr r3, r31
/* 800EC24C  4B FD 71 6D */	bl procWaitInit__9daAlink_cFv
/* 800EC250  48 00 01 68 */	b lbl_800EC3B8
lbl_800EC254:
/* 800EC254  83 DF 28 58 */	lwz r30, 0x2858(r31)
/* 800EC258  7F E3 FB 78 */	mr r3, r31
/* 800EC25C  38 80 00 D3 */	li r4, 0xd3
/* 800EC260  4B FD 5D 0D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EC264  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800EC268  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800EC26C  3B A0 00 19 */	li r29, 0x19
/* 800EC270  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EC274  28 00 00 0B */	cmplwi r0, 0xb
/* 800EC278  40 82 00 10 */	bne lbl_800EC288
/* 800EC27C  38 00 00 01 */	li r0, 1
/* 800EC280  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EC284  48 00 00 F0 */	b lbl_800EC374
lbl_800EC288:
/* 800EC288  28 00 00 0D */	cmplwi r0, 0xd
/* 800EC28C  40 82 00 54 */	bne lbl_800EC2E0
/* 800EC290  38 00 00 0C */	li r0, 0xc
/* 800EC294  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EC298  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 800EC29C  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 800EC2A0  38 80 01 57 */	li r4, 0x157
/* 800EC2A4  41 82 00 08 */	beq lbl_800EC2AC
/* 800EC2A8  38 80 01 58 */	li r4, 0x158
lbl_800EC2AC:
/* 800EC2AC  7C 9D 23 78 */	mr r29, r4
/* 800EC2B0  7F E3 FB 78 */	mr r3, r31
/* 800EC2B4  4B FC 0C CD */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EC2B8  38 00 00 01 */	li r0, 1
/* 800EC2BC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EC2C0  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800EC2C4  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800EC2C8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004E@ha */
/* 800EC2CC  38 03 00 4E */	addi r0, r3, 0x004E /* 0x0001004E@l */
/* 800EC2D0  90 1F 32 CC */	stw r0, 0x32cc(r31)
/* 800EC2D4  38 00 00 0D */	li r0, 0xd
/* 800EC2D8  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800EC2DC  48 00 00 98 */	b lbl_800EC374
lbl_800EC2E0:
/* 800EC2E0  28 00 00 0C */	cmplwi r0, 0xc
/* 800EC2E4  40 82 00 28 */	bne lbl_800EC30C
/* 800EC2E8  C3 E2 93 20 */	lfs f31, lit_7449(r2)
/* 800EC2EC  7F E3 FB 78 */	mr r3, r31
/* 800EC2F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001004F@ha */
/* 800EC2F4  38 84 00 4F */	addi r4, r4, 0x004F /* 0x0001004F@l */
/* 800EC2F8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800EC2FC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EC300  7D 89 03 A6 */	mtctr r12
/* 800EC304  4E 80 04 21 */	bctrl 
/* 800EC308  48 00 00 1C */	b lbl_800EC324
lbl_800EC30C:
/* 800EC30C  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 800EC310  C0 02 94 74 */	lfs f0, lit_15341(r2)
/* 800EC314  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800EC318  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004F@ha */
/* 800EC31C  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0001004F@l */
/* 800EC320  90 1F 32 CC */	stw r0, 0x32cc(r31)
lbl_800EC324:
/* 800EC324  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 800EC328  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 800EC32C  38 80 01 59 */	li r4, 0x159
/* 800EC330  41 82 00 08 */	beq lbl_800EC338
/* 800EC334  38 80 01 5A */	li r4, 0x15a
lbl_800EC338:
/* 800EC338  7C 9D 23 78 */	mr r29, r4
/* 800EC33C  7F E3 FB 78 */	mr r3, r31
/* 800EC340  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800EC344  FC 40 F8 90 */	fmr f2, f31
/* 800EC348  38 A0 FF FF */	li r5, -1
/* 800EC34C  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800EC350  4B FC 0C BD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800EC354  38 00 00 0F */	li r0, 0xf
/* 800EC358  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EC35C  38 00 00 00 */	li r0, 0
/* 800EC360  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EC364  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800EC368  C0 02 93 10 */	lfs f0, lit_7306(r2)
/* 800EC36C  EC 01 00 2A */	fadds f0, f1, f0
/* 800EC370  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_800EC374:
/* 800EC374  93 BF 31 98 */	stw r29, 0x3198(r31)
/* 800EC378  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EC37C  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 800EC380  7F E3 FB 78 */	mr r3, r31
/* 800EC384  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800EC388  38 80 00 00 */	li r4, 0
/* 800EC38C  4B FC F3 E5 */	bl setSpecialGravity__9daAlink_cFffi
/* 800EC390  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EC394  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800EC398  7F E3 FB 78 */	mr r3, r31
/* 800EC39C  38 80 00 05 */	li r4, 5
/* 800EC3A0  48 03 4E 21 */	bl setFootEffectProcType__9daAlink_cFi
/* 800EC3A4  38 00 00 00 */	li r0, 0
/* 800EC3A8  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800EC3AC  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800EC3B0  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 800EC3B4  38 60 00 01 */	li r3, 1
lbl_800EC3B8:
/* 800EC3B8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800EC3BC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800EC3C0  39 61 00 20 */	addi r11, r1, 0x20
/* 800EC3C4  48 27 5E 65 */	bl _restgpr_29
/* 800EC3C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800EC3CC  7C 08 03 A6 */	mtlr r0
/* 800EC3D0  38 21 00 30 */	addi r1, r1, 0x30
/* 800EC3D4  4E 80 00 20 */	blr 
