lbl_809E5B48:
/* 809E5B48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E5B4C  7C 08 02 A6 */	mflr r0
/* 809E5B50  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E5B54  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809E5B58  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809E5B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5B60  4B 97 C6 71 */	bl _savegpr_26
/* 809E5B64  7C 7C 1B 78 */	mr r28, r3
/* 809E5B68  7C 9A 23 78 */	mr r26, r4
/* 809E5B6C  FF E0 08 90 */	fmr f31, f1
/* 809E5B70  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha /* 0x809E7FC4@ha */
/* 809E5B74  3B 64 7F C4 */	addi r27, r4, cNullVec__6Z2Calc@l /* 0x809E7FC4@l */
/* 809E5B78  3B E0 00 00 */	li r31, 0
/* 809E5B7C  3B C0 00 00 */	li r30, 0
/* 809E5B80  3B A0 00 02 */	li r29, 2
/* 809E5B84  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809E5B88  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809E5B8C  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809E5B90  57 40 18 38 */	slwi r0, r26, 3
/* 809E5B94  38 9B 00 30 */	addi r4, r27, 0x30
/* 809E5B98  7C A4 00 2E */	lwzx r5, r4, r0
/* 809E5B9C  2C 05 00 00 */	cmpwi r5, 0
/* 809E5BA0  41 80 00 20 */	blt lbl_809E5BC0
/* 809E5BA4  7C 84 02 14 */	add r4, r4, r0
/* 809E5BA8  80 04 00 04 */	lwz r0, 4(r4)
/* 809E5BAC  54 00 10 3A */	slwi r0, r0, 2
/* 809E5BB0  38 9B 00 C0 */	addi r4, r27, 0xc0
/* 809E5BB4  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E5BB8  4B 76 CF 75 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809E5BBC  7C 7F 1B 78 */	mr r31, r3
lbl_809E5BC0:
/* 809E5BC0  2C 1A 00 04 */	cmpwi r26, 4
/* 809E5BC4  41 82 00 20 */	beq lbl_809E5BE4
/* 809E5BC8  41 80 00 14 */	blt lbl_809E5BDC
/* 809E5BCC  2C 1A 00 08 */	cmpwi r26, 8
/* 809E5BD0  40 80 00 0C */	bge lbl_809E5BDC
/* 809E5BD4  3B A0 00 00 */	li r29, 0
/* 809E5BD8  48 00 00 0C */	b lbl_809E5BE4
lbl_809E5BDC:
/* 809E5BDC  3B E0 00 00 */	li r31, 0
/* 809E5BE0  3B C0 00 00 */	li r30, 0
lbl_809E5BE4:
/* 809E5BE4  80 BB 00 88 */	lwz r5, 0x88(r27)
/* 809E5BE8  2C 05 00 00 */	cmpwi r5, 0
/* 809E5BEC  41 80 00 24 */	blt lbl_809E5C10
/* 809E5BF0  7F 83 E3 78 */	mr r3, r28
/* 809E5BF4  38 9B 00 88 */	addi r4, r27, 0x88
/* 809E5BF8  80 04 00 04 */	lwz r0, 4(r4)
/* 809E5BFC  54 00 10 3A */	slwi r0, r0, 2
/* 809E5C00  38 9B 00 C0 */	addi r4, r27, 0xc0
/* 809E5C04  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E5C08  4B 76 CF 9D */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809E5C0C  7C 7E 1B 78 */	mr r30, r3
lbl_809E5C10:
/* 809E5C10  28 1E 00 00 */	cmplwi r30, 0
/* 809E5C14  41 82 00 3C */	beq lbl_809E5C50
/* 809E5C18  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809E5C1C  80 63 00 04 */	lwz r3, 4(r3)
/* 809E5C20  80 A3 00 04 */	lwz r5, 4(r3)
/* 809E5C24  7F 83 E3 78 */	mr r3, r28
/* 809E5C28  7F C4 F3 78 */	mr r4, r30
/* 809E5C2C  3C C0 80 9E */	lis r6, lit_4490@ha /* 0x809E7E48@ha */
/* 809E5C30  C0 26 7E 48 */	lfs f1, lit_4490@l(r6)  /* 0x809E7E48@l */
/* 809E5C34  38 C0 00 02 */	li r6, 2
/* 809E5C38  4B 76 D0 CD */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809E5C3C  2C 03 00 00 */	cmpwi r3, 0
/* 809E5C40  41 82 00 10 */	beq lbl_809E5C50
/* 809E5C44  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E5C48  60 00 00 12 */	ori r0, r0, 0x12
/* 809E5C4C  90 1C 09 9C */	stw r0, 0x99c(r28)
lbl_809E5C50:
/* 809E5C50  28 1F 00 00 */	cmplwi r31, 0
/* 809E5C54  41 82 00 44 */	beq lbl_809E5C98
/* 809E5C58  7F 83 E3 78 */	mr r3, r28
/* 809E5C5C  7F E4 FB 78 */	mr r4, r31
/* 809E5C60  3C A0 80 9E */	lis r5, lit_4490@ha /* 0x809E7E48@ha */
/* 809E5C64  C0 25 7E 48 */	lfs f1, lit_4490@l(r5)  /* 0x809E7E48@l */
/* 809E5C68  FC 40 F8 90 */	fmr f2, f31
/* 809E5C6C  7F A5 EB 78 */	mr r5, r29
/* 809E5C70  38 C0 00 00 */	li r6, 0
/* 809E5C74  38 E0 FF FF */	li r7, -1
/* 809E5C78  4B 76 CF A5 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809E5C7C  2C 03 00 00 */	cmpwi r3, 0
/* 809E5C80  41 82 00 18 */	beq lbl_809E5C98
/* 809E5C84  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E5C88  60 00 00 09 */	ori r0, r0, 9
/* 809E5C8C  90 1C 09 9C */	stw r0, 0x99c(r28)
/* 809E5C90  38 00 00 00 */	li r0, 0
/* 809E5C94  B0 1C 09 E2 */	sth r0, 0x9e2(r28)
lbl_809E5C98:
/* 809E5C98  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809E5C9C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809E5CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5CA4  4B 97 C5 79 */	bl _restgpr_26
/* 809E5CA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E5CAC  7C 08 03 A6 */	mtlr r0
/* 809E5CB0  38 21 00 30 */	addi r1, r1, 0x30
/* 809E5CB4  4E 80 00 20 */	blr 
