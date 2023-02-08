lbl_806D631C:
/* 806D631C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806D6320  7C 08 02 A6 */	mflr r0
/* 806D6324  90 01 00 84 */	stw r0, 0x84(r1)
/* 806D6328  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 806D632C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 806D6330  7C 7E 1B 78 */	mr r30, r3
/* 806D6334  3C 60 80 6D */	lis r3, cNullVec__6Z2Calc@ha /* 0x806D7AFC@ha */
/* 806D6338  3B E3 7A FC */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x806D7AFC@l */
/* 806D633C  38 7E 07 E8 */	addi r3, r30, 0x7e8
/* 806D6340  4B 9A D4 F1 */	bl Move__10dCcD_GSttsFv
/* 806D6344  88 1E 0A 72 */	lbz r0, 0xa72(r30)
/* 806D6348  28 00 00 00 */	cmplwi r0, 0
/* 806D634C  40 82 03 A4 */	bne lbl_806D66F0
/* 806D6350  38 7E 08 08 */	addi r3, r30, 0x808
/* 806D6354  4B 9A E1 0D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806D6358  28 03 00 00 */	cmplwi r3, 0
/* 806D635C  41 82 03 20 */	beq lbl_806D667C
/* 806D6360  38 7E 08 08 */	addi r3, r30, 0x808
/* 806D6364  4B 9A E1 95 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806D6368  90 7E 09 40 */	stw r3, 0x940(r30)
/* 806D636C  80 7E 09 40 */	lwz r3, 0x940(r30)
/* 806D6370  80 63 00 10 */	lwz r3, 0x10(r3)
/* 806D6374  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 806D6378  40 82 00 14 */	bne lbl_806D638C
/* 806D637C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 806D6380  40 82 00 0C */	bne lbl_806D638C
/* 806D6384  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 806D6388  41 82 00 14 */	beq lbl_806D639C
lbl_806D638C:
/* 806D638C  38 00 00 01 */	li r0, 1
/* 806D6390  98 1E 0A 74 */	stb r0, 0xa74(r30)
/* 806D6394  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806D6398  48 00 00 24 */	b lbl_806D63BC
lbl_806D639C:
/* 806D639C  88 1E 0A 74 */	lbz r0, 0xa74(r30)
/* 806D63A0  28 00 00 01 */	cmplwi r0, 1
/* 806D63A4  40 81 00 10 */	ble lbl_806D63B4
/* 806D63A8  38 00 00 64 */	li r0, 0x64
/* 806D63AC  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806D63B0  48 00 00 0C */	b lbl_806D63BC
lbl_806D63B4:
/* 806D63B4  38 00 00 01 */	li r0, 1
/* 806D63B8  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_806D63BC:
/* 806D63BC  7F C3 F3 78 */	mr r3, r30
/* 806D63C0  38 9E 09 40 */	addi r4, r30, 0x940
/* 806D63C4  4B 9B 18 41 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806D63C8  80 7E 09 40 */	lwz r3, 0x940(r30)
/* 806D63CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806D63D0  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806D63D4  41 82 00 10 */	beq lbl_806D63E4
/* 806D63D8  38 00 00 14 */	li r0, 0x14
/* 806D63DC  98 1E 0A 72 */	stb r0, 0xa72(r30)
/* 806D63E0  48 00 00 0C */	b lbl_806D63EC
lbl_806D63E4:
/* 806D63E4  38 00 00 0A */	li r0, 0xa
/* 806D63E8  98 1E 0A 72 */	stb r0, 0xa72(r30)
lbl_806D63EC:
/* 806D63EC  88 1E 09 5F */	lbz r0, 0x95f(r30)
/* 806D63F0  7C 00 07 75 */	extsb. r0, r0
/* 806D63F4  41 82 00 0C */	beq lbl_806D6400
/* 806D63F8  38 00 00 0A */	li r0, 0xa
/* 806D63FC  98 1E 0A 72 */	stb r0, 0xa72(r30)
lbl_806D6400:
/* 806D6400  38 00 00 00 */	li r0, 0
/* 806D6404  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 806D6408  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 806D640C  88 1E 0A 6F */	lbz r0, 0xa6f(r30)
/* 806D6410  28 00 00 03 */	cmplwi r0, 3
/* 806D6414  40 82 00 EC */	bne lbl_806D6500
/* 806D6418  80 7E 09 40 */	lwz r3, 0x940(r30)
/* 806D641C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 806D6420  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 806D6424  40 82 02 CC */	bne lbl_806D66F0
/* 806D6428  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 806D642C  41 82 00 08 */	beq lbl_806D6434
/* 806D6430  48 00 02 C0 */	b lbl_806D66F0
lbl_806D6434:
/* 806D6434  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 806D6438  41 82 00 2C */	beq lbl_806D6464
/* 806D643C  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 806D6440  80 1F 02 2C */	lwz r0, 0x22c(r31)
/* 806D6444  90 61 00 68 */	stw r3, 0x68(r1)
/* 806D6448  90 01 00 6C */	stw r0, 0x6c(r1)
/* 806D644C  80 1F 02 30 */	lwz r0, 0x230(r31)
/* 806D6450  90 01 00 70 */	stw r0, 0x70(r1)
/* 806D6454  7F C3 F3 78 */	mr r3, r30
/* 806D6458  38 81 00 68 */	addi r4, r1, 0x68
/* 806D645C  4B FF AE 6D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D6460  48 00 02 90 */	b lbl_806D66F0
lbl_806D6464:
/* 806D6464  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 806D6468  40 82 00 0C */	bne lbl_806D6474
/* 806D646C  54 60 03 19 */	rlwinm. r0, r3, 0, 0xc, 0xc
/* 806D6470  41 82 00 2C */	beq lbl_806D649C
lbl_806D6474:
/* 806D6474  80 7F 02 34 */	lwz r3, 0x234(r31)
/* 806D6478  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 806D647C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 806D6480  90 01 00 60 */	stw r0, 0x60(r1)
/* 806D6484  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 806D6488  90 01 00 64 */	stw r0, 0x64(r1)
/* 806D648C  7F C3 F3 78 */	mr r3, r30
/* 806D6490  38 81 00 5C */	addi r4, r1, 0x5c
/* 806D6494  4B FF AE 35 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D6498  48 00 02 58 */	b lbl_806D66F0
lbl_806D649C:
/* 806D649C  38 7E 08 08 */	addi r3, r30, 0x808
/* 806D64A0  4B 9A E0 59 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806D64A4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806D64A8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 806D64AC  41 82 00 2C */	beq lbl_806D64D8
/* 806D64B0  80 7F 02 40 */	lwz r3, 0x240(r31)
/* 806D64B4  80 1F 02 44 */	lwz r0, 0x244(r31)
/* 806D64B8  90 61 00 50 */	stw r3, 0x50(r1)
/* 806D64BC  90 01 00 54 */	stw r0, 0x54(r1)
/* 806D64C0  80 1F 02 48 */	lwz r0, 0x248(r31)
/* 806D64C4  90 01 00 58 */	stw r0, 0x58(r1)
/* 806D64C8  7F C3 F3 78 */	mr r3, r30
/* 806D64CC  38 81 00 50 */	addi r4, r1, 0x50
/* 806D64D0  4B FF AD F9 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D64D4  48 00 02 1C */	b lbl_806D66F0
lbl_806D64D8:
/* 806D64D8  80 7F 02 4C */	lwz r3, 0x24c(r31)
/* 806D64DC  80 1F 02 50 */	lwz r0, 0x250(r31)
/* 806D64E0  90 61 00 44 */	stw r3, 0x44(r1)
/* 806D64E4  90 01 00 48 */	stw r0, 0x48(r1)
/* 806D64E8  80 1F 02 54 */	lwz r0, 0x254(r31)
/* 806D64EC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806D64F0  7F C3 F3 78 */	mr r3, r30
/* 806D64F4  38 81 00 44 */	addi r4, r1, 0x44
/* 806D64F8  4B FF AD D1 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D64FC  48 00 01 F4 */	b lbl_806D66F0
lbl_806D6500:
/* 806D6500  80 7E 09 40 */	lwz r3, 0x940(r30)
/* 806D6504  80 63 00 10 */	lwz r3, 0x10(r3)
/* 806D6508  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 806D650C  40 82 00 14 */	bne lbl_806D6520
/* 806D6510  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 806D6514  40 82 00 0C */	bne lbl_806D6520
/* 806D6518  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 806D651C  41 82 00 64 */	beq lbl_806D6580
lbl_806D6520:
/* 806D6520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D6524  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D6528  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D652C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D6530  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806D6534  4B B9 A6 D1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D6538  B0 7E 0A 1E */	sth r3, 0xa1e(r30)
/* 806D653C  3C 60 80 6D */	lis r3, lit_4219@ha /* 0x806D7A0C@ha */
/* 806D6540  C0 23 7A 0C */	lfs f1, lit_4219@l(r3)  /* 0x806D7A0C@l */
/* 806D6544  4B B9 14 49 */	bl cM_rndFX__Ff
/* 806D6548  3C 60 80 6D */	lis r3, lit_4059@ha /* 0x806D79DC@ha */
/* 806D654C  C0 03 79 DC */	lfs f0, lit_4059@l(r3)  /* 0x806D79DC@l */
/* 806D6550  EC 00 08 2A */	fadds f0, f0, f1
/* 806D6554  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806D6558  80 7F 02 58 */	lwz r3, 0x258(r31)
/* 806D655C  80 1F 02 5C */	lwz r0, 0x25c(r31)
/* 806D6560  90 61 00 38 */	stw r3, 0x38(r1)
/* 806D6564  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806D6568  80 1F 02 60 */	lwz r0, 0x260(r31)
/* 806D656C  90 01 00 40 */	stw r0, 0x40(r1)
/* 806D6570  7F C3 F3 78 */	mr r3, r30
/* 806D6574  38 81 00 38 */	addi r4, r1, 0x38
/* 806D6578  4B FF AD 51 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D657C  48 00 01 74 */	b lbl_806D66F0
lbl_806D6580:
/* 806D6580  38 7E 08 08 */	addi r3, r30, 0x808
/* 806D6584  4B 9A DF 75 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806D6588  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806D658C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 806D6590  41 82 00 2C */	beq lbl_806D65BC
/* 806D6594  80 7F 02 64 */	lwz r3, 0x264(r31)
/* 806D6598  80 1F 02 68 */	lwz r0, 0x268(r31)
/* 806D659C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 806D65A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D65A4  80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 806D65A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D65AC  7F C3 F3 78 */	mr r3, r30
/* 806D65B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D65B4  4B FF AD 15 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D65B8  48 00 01 38 */	b lbl_806D66F0
lbl_806D65BC:
/* 806D65BC  88 1E 0A 69 */	lbz r0, 0xa69(r30)
/* 806D65C0  28 00 00 00 */	cmplwi r0, 0
/* 806D65C4  40 82 00 2C */	bne lbl_806D65F0
/* 806D65C8  80 7F 02 70 */	lwz r3, 0x270(r31)
/* 806D65CC  80 1F 02 74 */	lwz r0, 0x274(r31)
/* 806D65D0  90 61 00 20 */	stw r3, 0x20(r1)
/* 806D65D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D65D8  80 1F 02 78 */	lwz r0, 0x278(r31)
/* 806D65DC  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D65E0  7F C3 F3 78 */	mr r3, r30
/* 806D65E4  38 81 00 20 */	addi r4, r1, 0x20
/* 806D65E8  4B FF AC E1 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D65EC  48 00 01 04 */	b lbl_806D66F0
lbl_806D65F0:
/* 806D65F0  28 00 00 01 */	cmplwi r0, 1
/* 806D65F4  40 82 00 FC */	bne lbl_806D66F0
/* 806D65F8  38 7E 08 08 */	addi r3, r30, 0x808
/* 806D65FC  4B 9A DE FD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806D6600  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806D6604  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806D6608  41 82 00 30 */	beq lbl_806D6638
/* 806D660C  80 7E 09 44 */	lwz r3, 0x944(r30)
/* 806D6610  28 03 00 00 */	cmplwi r3, 0
/* 806D6614  41 82 00 18 */	beq lbl_806D662C
/* 806D6618  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D661C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806D6620  4B B9 A5 E5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D6624  B0 7E 0A 1E */	sth r3, 0xa1e(r30)
/* 806D6628  48 00 00 2C */	b lbl_806D6654
lbl_806D662C:
/* 806D662C  A8 1E 09 4E */	lha r0, 0x94e(r30)
/* 806D6630  B0 1E 0A 1E */	sth r0, 0xa1e(r30)
/* 806D6634  48 00 00 20 */	b lbl_806D6654
lbl_806D6638:
/* 806D6638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D663C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D6640  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D6644  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D6648  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806D664C  4B B9 A5 B9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D6650  B0 7E 0A 1E */	sth r3, 0xa1e(r30)
lbl_806D6654:
/* 806D6654  80 7F 02 7C */	lwz r3, 0x27c(r31)
/* 806D6658  80 1F 02 80 */	lwz r0, 0x280(r31)
/* 806D665C  90 61 00 14 */	stw r3, 0x14(r1)
/* 806D6660  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D6664  80 1F 02 84 */	lwz r0, 0x284(r31)
/* 806D6668  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806D666C  7F C3 F3 78 */	mr r3, r30
/* 806D6670  38 81 00 14 */	addi r4, r1, 0x14
/* 806D6674  4B FF AC 55 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D6678  48 00 00 78 */	b lbl_806D66F0
lbl_806D667C:
/* 806D667C  80 7F 02 88 */	lwz r3, 0x288(r31)
/* 806D6680  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 806D6684  90 61 00 08 */	stw r3, 8(r1)
/* 806D6688  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D668C  80 1F 02 90 */	lwz r0, 0x290(r31)
/* 806D6690  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D6694  38 7E 0A 24 */	addi r3, r30, 0xa24
/* 806D6698  38 81 00 08 */	addi r4, r1, 8
/* 806D669C  4B C8 B9 AD */	bl __ptmf_cmpr
/* 806D66A0  2C 03 00 00 */	cmpwi r3, 0
/* 806D66A4  40 82 00 4C */	bne lbl_806D66F0
/* 806D66A8  38 7E 08 08 */	addi r3, r30, 0x808
/* 806D66AC  4B 9A DC 15 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 806D66B0  28 03 00 00 */	cmplwi r3, 0
/* 806D66B4  41 82 00 3C */	beq lbl_806D66F0
/* 806D66B8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 806D66BC  3C 03 00 01 */	addis r0, r3, 1
/* 806D66C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 806D66C4  40 82 00 2C */	bne lbl_806D66F0
/* 806D66C8  28 1E 00 00 */	cmplwi r30, 0
/* 806D66CC  41 82 00 0C */	beq lbl_806D66D8
/* 806D66D0  80 1E 00 04 */	lwz r0, 4(r30)
/* 806D66D4  48 00 00 08 */	b lbl_806D66DC
lbl_806D66D8:
/* 806D66D8  38 00 FF FF */	li r0, -1
lbl_806D66DC:
/* 806D66DC  90 1F 00 38 */	stw r0, 0x38(r31)
/* 806D66E0  38 00 00 0A */	li r0, 0xa
/* 806D66E4  3C 60 80 6D */	lis r3, struct_806D7F1C+0x0@ha /* 0x806D7F1C@ha */
/* 806D66E8  98 03 7F 1C */	stb r0, struct_806D7F1C+0x0@l(r3)  /* 0x806D7F1C@l */
/* 806D66EC  98 1E 0A 72 */	stb r0, 0xa72(r30)
lbl_806D66F0:
/* 806D66F0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 806D66F4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 806D66F8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806D66FC  7C 08 03 A6 */	mtlr r0
/* 806D6700  38 21 00 80 */	addi r1, r1, 0x80
/* 806D6704  4E 80 00 20 */	blr 
