lbl_80CD9FDC:
/* 80CD9FDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CD9FE0  7C 08 02 A6 */	mflr r0
/* 80CD9FE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD9FE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CD9FEC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CD9FF0  7C 7E 1B 78 */	mr r30, r3
/* 80CD9FF4  3C 80 80 CE */	lis r4, l_cyl_src@ha /* 0x80CDB7F4@ha */
/* 80CD9FF8  3B E4 B7 F4 */	addi r31, r4, l_cyl_src@l /* 0x80CDB7F4@l */
/* 80CD9FFC  4B FF FF 31 */	bl initBaseMtx__7daKey_cFv
/* 80CDA000  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CDA004  38 03 00 24 */	addi r0, r3, 0x24
/* 80CDA008  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CDA00C  38 7E 07 64 */	addi r3, r30, 0x764
/* 80CDA010  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80CDA014  FC 40 08 90 */	fmr f2, f1
/* 80CDA018  4B 39 BF 41 */	bl SetWall__12dBgS_AcchCirFff
/* 80CDA01C  38 00 00 00 */	li r0, 0
/* 80CDA020  90 01 00 08 */	stw r0, 8(r1)
/* 80CDA024  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80CDA028  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CDA02C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80CDA030  7F C6 F3 78 */	mr r6, r30
/* 80CDA034  38 E0 00 01 */	li r7, 1
/* 80CDA038  39 1E 07 64 */	addi r8, r30, 0x764
/* 80CDA03C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80CDA040  39 40 00 00 */	li r10, 0
/* 80CDA044  4B 39 C2 05 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CDA048  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80CDA04C  38 80 00 00 */	li r4, 0
/* 80CDA050  38 A0 00 FF */	li r5, 0xff
/* 80CDA054  7F C6 F3 78 */	mr r6, r30
/* 80CDA058  4B 3A 98 09 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CDA05C  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80CDA060  38 9F 00 00 */	addi r4, r31, 0
/* 80CDA064  4B 3A A8 51 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CDA068  38 1E 07 A4 */	addi r0, r30, 0x7a4
/* 80CDA06C  90 1E 08 24 */	stw r0, 0x824(r30)
/* 80CDA070  3C 60 80 CE */	lis r3, keyGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80CD9EE0@ha */
/* 80CDA074  38 03 9E E0 */	addi r0, r3, keyGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80CD9EE0@l */
/* 80CDA078  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 80CDA07C  3C 60 80 CE */	lis r3, keyGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80CD9E84@ha */
/* 80CDA080  38 03 9E 84 */	addi r0, r3, keyGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80CD9E84@l */
/* 80CDA084  90 1E 08 84 */	stw r0, 0x884(r30)
/* 80CDA088  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 80CDA08C  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 80CDA090  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80CDA094  54 00 10 3A */	slwi r0, r0, 2
/* 80CDA098  7C 63 02 14 */	add r3, r3, r0
/* 80CDA09C  88 03 00 02 */	lbz r0, 2(r3)
/* 80CDA0A0  38 7E 09 04 */	addi r3, r30, 0x904
/* 80CDA0A4  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80CDA0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA0AC  3C 00 43 30 */	lis r0, 0x4330
/* 80CDA0B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDA0B4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CDA0B8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CDA0BC  4B 59 51 45 */	bl SetR__8cM3dGCylFf
/* 80CDA0C0  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 80CDA0C4  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 80CDA0C8  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80CDA0CC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDA0D0  7C 63 02 14 */	add r3, r3, r0
/* 80CDA0D4  88 03 00 01 */	lbz r0, 1(r3)
/* 80CDA0D8  38 7E 09 04 */	addi r3, r30, 0x904
/* 80CDA0DC  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80CDA0E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CDA0E4  3C 00 43 30 */	lis r0, 0x4330
/* 80CDA0E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CDA0EC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80CDA0F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CDA0F4  4B 59 51 05 */	bl SetH__8cM3dGCylFf
/* 80CDA0F8  38 00 00 0F */	li r0, 0xf
/* 80CDA0FC  98 1E 04 97 */	stb r0, 0x497(r30)
/* 80CDA100  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CDA104  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CDA108  2C 00 00 FF */	cmpwi r0, 0xff
/* 80CDA10C  40 82 00 10 */	bne lbl_80CDA11C
/* 80CDA110  7F C3 F3 78 */	mr r3, r30
/* 80CDA114  48 00 06 D5 */	bl actionInitInit__7daKey_cFv
/* 80CDA118  48 00 00 0C */	b lbl_80CDA124
lbl_80CDA11C:
/* 80CDA11C  7F C3 F3 78 */	mr r3, r30
/* 80CDA120  48 00 0C 09 */	bl actionInitSwOnWait__7daKey_cFv
lbl_80CDA124:
/* 80CDA124  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80CDA128  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CDA12C  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80CDA130  60 00 00 30 */	ori r0, r0, 0x30
/* 80CDA134  98 1E 04 9A */	stb r0, 0x49a(r30)
/* 80CDA138  7F C3 F3 78 */	mr r3, r30
/* 80CDA13C  48 00 12 C9 */	bl execute__7daKey_cFv
/* 80CDA140  38 60 00 01 */	li r3, 1
/* 80CDA144  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CDA148  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CDA14C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDA150  7C 08 03 A6 */	mtlr r0
/* 80CDA154  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDA158  4E 80 00 20 */	blr 
