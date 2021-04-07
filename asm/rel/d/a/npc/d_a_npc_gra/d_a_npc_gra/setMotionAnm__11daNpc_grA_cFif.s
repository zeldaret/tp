lbl_809C0E44:
/* 809C0E44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C0E48  7C 08 02 A6 */	mflr r0
/* 809C0E4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C0E50  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809C0E54  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809C0E58  39 61 00 20 */	addi r11, r1, 0x20
/* 809C0E5C  4B 9A 13 75 */	bl _savegpr_26
/* 809C0E60  7C 7A 1B 78 */	mr r26, r3
/* 809C0E64  7C 9B 23 78 */	mr r27, r4
/* 809C0E68  FF E0 08 90 */	fmr f31, f1
/* 809C0E6C  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha /* 0x809CA614@ha */
/* 809C0E70  3B E4 A6 14 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809CA614@l */
/* 809C0E74  3B C0 00 00 */	li r30, 0
/* 809C0E78  3B A0 00 00 */	li r29, 0
/* 809C0E7C  3B 80 00 02 */	li r28, 2
/* 809C0E80  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809C0E84  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809C0E88  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809C0E8C  57 60 18 38 */	slwi r0, r27, 3
/* 809C0E90  38 9F 00 48 */	addi r4, r31, 0x48
/* 809C0E94  7C A4 00 2E */	lwzx r5, r4, r0
/* 809C0E98  2C 05 00 00 */	cmpwi r5, 0
/* 809C0E9C  41 80 00 20 */	blt lbl_809C0EBC
/* 809C0EA0  7C 84 02 14 */	add r4, r4, r0
/* 809C0EA4  80 04 00 04 */	lwz r0, 4(r4)
/* 809C0EA8  54 00 10 3A */	slwi r0, r0, 2
/* 809C0EAC  38 9F 04 C0 */	addi r4, r31, 0x4c0
/* 809C0EB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809C0EB4  4B 79 1C 79 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809C0EB8  7C 7E 1B 78 */	mr r30, r3
lbl_809C0EBC:
/* 809C0EBC  38 1B FF EA */	addi r0, r27, -22
/* 809C0EC0  28 00 00 1C */	cmplwi r0, 0x1c
/* 809C0EC4  41 81 00 74 */	bgt lbl_809C0F38
/* 809C0EC8  3C 60 80 9D */	lis r3, lit_5469@ha /* 0x809CAD28@ha */
/* 809C0ECC  38 63 AD 28 */	addi r3, r3, lit_5469@l /* 0x809CAD28@l */
/* 809C0ED0  54 00 10 3A */	slwi r0, r0, 2
/* 809C0ED4  7C 03 00 2E */	lwzx r0, r3, r0
/* 809C0ED8  7C 09 03 A6 */	mtctr r0
/* 809C0EDC  4E 80 04 20 */	bctr 
lbl_809C0EE0:
/* 809C0EE0  3B 80 00 00 */	li r28, 0
/* 809C0EE4  48 00 00 5C */	b lbl_809C0F40
lbl_809C0EE8:
/* 809C0EE8  3B 80 00 00 */	li r28, 0
/* 809C0EEC  48 00 00 54 */	b lbl_809C0F40
lbl_809C0EF0:
/* 809C0EF0  3B 80 00 00 */	li r28, 0
/* 809C0EF4  48 00 00 4C */	b lbl_809C0F40
lbl_809C0EF8:
/* 809C0EF8  3B 80 00 00 */	li r28, 0
/* 809C0EFC  48 00 00 44 */	b lbl_809C0F40
lbl_809C0F00:
/* 809C0F00  3B 80 00 00 */	li r28, 0
/* 809C0F04  48 00 00 3C */	b lbl_809C0F40
lbl_809C0F08:
/* 809C0F08  3B 80 00 00 */	li r28, 0
/* 809C0F0C  48 00 00 34 */	b lbl_809C0F40
lbl_809C0F10:
/* 809C0F10  3B 80 00 00 */	li r28, 0
/* 809C0F14  48 00 00 2C */	b lbl_809C0F40
lbl_809C0F18:
/* 809C0F18  3B 80 00 00 */	li r28, 0
/* 809C0F1C  48 00 00 24 */	b lbl_809C0F40
lbl_809C0F20:
/* 809C0F20  3B 80 00 00 */	li r28, 0
/* 809C0F24  48 00 00 1C */	b lbl_809C0F40
lbl_809C0F28:
/* 809C0F28  3B 80 00 00 */	li r28, 0
/* 809C0F2C  48 00 00 14 */	b lbl_809C0F40
lbl_809C0F30:
/* 809C0F30  3B 80 00 00 */	li r28, 0
/* 809C0F34  48 00 00 0C */	b lbl_809C0F40
lbl_809C0F38:
/* 809C0F38  3B C0 00 00 */	li r30, 0
/* 809C0F3C  3B A0 00 00 */	li r29, 0
lbl_809C0F40:
/* 809C0F40  80 BF 02 60 */	lwz r5, 0x260(r31)
/* 809C0F44  2C 05 00 00 */	cmpwi r5, 0
/* 809C0F48  41 80 00 24 */	blt lbl_809C0F6C
/* 809C0F4C  7F 43 D3 78 */	mr r3, r26
/* 809C0F50  38 9F 02 60 */	addi r4, r31, 0x260
/* 809C0F54  80 04 00 04 */	lwz r0, 4(r4)
/* 809C0F58  54 00 10 3A */	slwi r0, r0, 2
/* 809C0F5C  38 9F 04 C0 */	addi r4, r31, 0x4c0
/* 809C0F60  7C 84 00 2E */	lwzx r4, r4, r0
/* 809C0F64  4B 79 1C 41 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809C0F68  7C 7D 1B 78 */	mr r29, r3
lbl_809C0F6C:
/* 809C0F6C  28 1D 00 00 */	cmplwi r29, 0
/* 809C0F70  41 82 00 3C */	beq lbl_809C0FAC
/* 809C0F74  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809C0F78  80 63 00 04 */	lwz r3, 4(r3)
/* 809C0F7C  80 A3 00 04 */	lwz r5, 4(r3)
/* 809C0F80  7F 43 D3 78 */	mr r3, r26
/* 809C0F84  7F A4 EB 78 */	mr r4, r29
/* 809C0F88  3C C0 80 9D */	lis r6, lit_4610@ha /* 0x809C9E30@ha */
/* 809C0F8C  C0 26 9E 30 */	lfs f1, lit_4610@l(r6)  /* 0x809C9E30@l */
/* 809C0F90  38 C0 00 02 */	li r6, 2
/* 809C0F94  4B 79 1D 71 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809C0F98  2C 03 00 00 */	cmpwi r3, 0
/* 809C0F9C  41 82 00 10 */	beq lbl_809C0FAC
/* 809C0FA0  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 809C0FA4  60 00 00 12 */	ori r0, r0, 0x12
/* 809C0FA8  90 1A 09 9C */	stw r0, 0x99c(r26)
lbl_809C0FAC:
/* 809C0FAC  28 1E 00 00 */	cmplwi r30, 0
/* 809C0FB0  41 82 00 48 */	beq lbl_809C0FF8
/* 809C0FB4  7F 43 D3 78 */	mr r3, r26
/* 809C0FB8  7F C4 F3 78 */	mr r4, r30
/* 809C0FBC  3C A0 80 9D */	lis r5, lit_4610@ha /* 0x809C9E30@ha */
/* 809C0FC0  C0 25 9E 30 */	lfs f1, lit_4610@l(r5)  /* 0x809C9E30@l */
/* 809C0FC4  FC 40 F8 90 */	fmr f2, f31
/* 809C0FC8  7F 85 E3 78 */	mr r5, r28
/* 809C0FCC  38 C0 00 00 */	li r6, 0
/* 809C0FD0  38 E0 FF FF */	li r7, -1
/* 809C0FD4  4B 79 1C 49 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809C0FD8  2C 03 00 00 */	cmpwi r3, 0
/* 809C0FDC  41 82 00 1C */	beq lbl_809C0FF8
/* 809C0FE0  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 809C0FE4  60 00 00 09 */	ori r0, r0, 9
/* 809C0FE8  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 809C0FEC  38 00 00 00 */	li r0, 0
/* 809C0FF0  B0 1A 09 E2 */	sth r0, 0x9e2(r26)
/* 809C0FF4  93 7A 14 D8 */	stw r27, 0x14d8(r26)
lbl_809C0FF8:
/* 809C0FF8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809C0FFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809C1000  39 61 00 20 */	addi r11, r1, 0x20
/* 809C1004  4B 9A 12 19 */	bl _restgpr_26
/* 809C1008  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C100C  7C 08 03 A6 */	mtlr r0
/* 809C1010  38 21 00 30 */	addi r1, r1, 0x30
/* 809C1014  4E 80 00 20 */	blr 
