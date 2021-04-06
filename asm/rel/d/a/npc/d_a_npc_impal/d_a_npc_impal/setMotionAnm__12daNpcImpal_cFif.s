lbl_80A08B48:
/* 80A08B48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A08B4C  7C 08 02 A6 */	mflr r0
/* 80A08B50  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A08B54  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80A08B58  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80A08B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A08B60  4B 95 96 71 */	bl _savegpr_26
/* 80A08B64  7C 7C 1B 78 */	mr r28, r3
/* 80A08B68  FF E0 08 90 */	fmr f31, f1
/* 80A08B6C  3C 60 80 A1 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A0C524@ha */
/* 80A08B70  3B E3 C5 24 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80A0C524@l */
/* 80A08B74  3B 40 00 00 */	li r26, 0
/* 80A08B78  2C 04 00 0C */	cmpwi r4, 0xc
/* 80A08B7C  41 82 00 1C */	beq lbl_80A08B98
/* 80A08B80  40 80 00 1C */	bge lbl_80A08B9C
/* 80A08B84  2C 04 00 04 */	cmpwi r4, 4
/* 80A08B88  40 80 00 14 */	bge lbl_80A08B9C
/* 80A08B8C  2C 04 00 02 */	cmpwi r4, 2
/* 80A08B90  40 80 00 08 */	bge lbl_80A08B98
/* 80A08B94  48 00 00 08 */	b lbl_80A08B9C
lbl_80A08B98:
/* 80A08B98  3B 40 00 03 */	li r26, 3
lbl_80A08B9C:
/* 80A08B9C  1F 64 00 0C */	mulli r27, r4, 0xc
/* 80A08BA0  7F 83 E3 78 */	mr r3, r28
/* 80A08BA4  38 BF 00 20 */	addi r5, r31, 0x20
/* 80A08BA8  7C 85 DA 14 */	add r4, r5, r27
/* 80A08BAC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A08BB0  54 00 10 3A */	slwi r0, r0, 2
/* 80A08BB4  38 9F 01 A0 */	addi r4, r31, 0x1a0
/* 80A08BB8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A08BBC  7C A5 D8 2E */	lwzx r5, r5, r27
/* 80A08BC0  4B 74 9F 6D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A08BC4  7C 7E 1B 78 */	mr r30, r3
/* 80A08BC8  1F 5A 00 0C */	mulli r26, r26, 0xc
/* 80A08BCC  7F 83 E3 78 */	mr r3, r28
/* 80A08BD0  38 BF 01 70 */	addi r5, r31, 0x170
/* 80A08BD4  7C 85 D2 14 */	add r4, r5, r26
/* 80A08BD8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A08BDC  54 00 10 3A */	slwi r0, r0, 2
/* 80A08BE0  38 9F 01 A0 */	addi r4, r31, 0x1a0
/* 80A08BE4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A08BE8  7C A5 D0 2E */	lwzx r5, r5, r26
/* 80A08BEC  4B 74 9F B9 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80A08BF0  7C 7D 1B 78 */	mr r29, r3
/* 80A08BF4  38 1F 00 20 */	addi r0, r31, 0x20
/* 80A08BF8  7C 60 DA 14 */	add r3, r0, r27
/* 80A08BFC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A08C00  38 1F 01 70 */	addi r0, r31, 0x170
/* 80A08C04  7C 60 D2 14 */	add r3, r0, r26
/* 80A08C08  83 43 00 04 */	lwz r26, 4(r3)
/* 80A08C0C  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80A08C10  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80A08C14  90 1C 09 9C */	stw r0, 0x99c(r28)
/* 80A08C18  28 1E 00 00 */	cmplwi r30, 0
/* 80A08C1C  41 82 00 40 */	beq lbl_80A08C5C
/* 80A08C20  7F 83 E3 78 */	mr r3, r28
/* 80A08C24  7F C4 F3 78 */	mr r4, r30
/* 80A08C28  3C C0 80 A1 */	lis r6, lit_4248@ha /* 0x80A0C2F0@ha */
/* 80A08C2C  C0 26 C2 F0 */	lfs f1, lit_4248@l(r6)  /* 0x80A0C2F0@l */
/* 80A08C30  FC 40 F8 90 */	fmr f2, f31
/* 80A08C34  38 C0 00 00 */	li r6, 0
/* 80A08C38  38 E0 FF FF */	li r7, -1
/* 80A08C3C  4B 74 9F E1 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80A08C40  2C 03 00 00 */	cmpwi r3, 0
/* 80A08C44  41 82 00 18 */	beq lbl_80A08C5C
/* 80A08C48  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80A08C4C  60 00 00 09 */	ori r0, r0, 9
/* 80A08C50  90 1C 09 9C */	stw r0, 0x99c(r28)
/* 80A08C54  38 00 00 00 */	li r0, 0
/* 80A08C58  B0 1C 09 E2 */	sth r0, 0x9e2(r28)
lbl_80A08C5C:
/* 80A08C5C  28 1D 00 00 */	cmplwi r29, 0
/* 80A08C60  41 82 00 3C */	beq lbl_80A08C9C
/* 80A08C64  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A08C68  80 63 00 04 */	lwz r3, 4(r3)
/* 80A08C6C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A08C70  7F 83 E3 78 */	mr r3, r28
/* 80A08C74  7F A4 EB 78 */	mr r4, r29
/* 80A08C78  3C C0 80 A1 */	lis r6, lit_4248@ha /* 0x80A0C2F0@ha */
/* 80A08C7C  C0 26 C2 F0 */	lfs f1, lit_4248@l(r6)  /* 0x80A0C2F0@l */
/* 80A08C80  7F 46 D3 78 */	mr r6, r26
/* 80A08C84  4B 74 A0 81 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80A08C88  2C 03 00 00 */	cmpwi r3, 0
/* 80A08C8C  41 82 00 10 */	beq lbl_80A08C9C
/* 80A08C90  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80A08C94  60 00 00 12 */	ori r0, r0, 0x12
/* 80A08C98  90 1C 09 9C */	stw r0, 0x99c(r28)
lbl_80A08C9C:
/* 80A08C9C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80A08CA0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80A08CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A08CA8  4B 95 95 75 */	bl _restgpr_26
/* 80A08CAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A08CB0  7C 08 03 A6 */	mtlr r0
/* 80A08CB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A08CB8  4E 80 00 20 */	blr 
