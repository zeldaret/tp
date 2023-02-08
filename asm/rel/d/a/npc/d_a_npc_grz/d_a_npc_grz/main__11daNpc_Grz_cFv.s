lbl_809E9954:
/* 809E9954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E9958  7C 08 02 A6 */	mflr r0
/* 809E995C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E9960  39 61 00 20 */	addi r11, r1, 0x20
/* 809E9964  4B 97 88 79 */	bl _savegpr_29
/* 809E9968  7C 7E 1B 78 */	mr r30, r3
/* 809E996C  3C 80 80 9F */	lis r4, cNullVec__6Z2Calc@ha /* 0x809EF6A0@ha */
/* 809E9970  3B E4 F6 A0 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809EF6A0@l */
/* 809E9974  48 00 23 A5 */	bl doEvent__11daNpc_Grz_cFv
/* 809E9978  2C 03 00 00 */	cmpwi r3, 0
/* 809E997C  40 82 00 10 */	bne lbl_809E998C
/* 809E9980  7F C3 F3 78 */	mr r3, r30
/* 809E9984  38 80 00 01 */	li r4, 1
/* 809E9988  48 00 22 7D */	bl doNormalAction__11daNpc_Grz_cFi
lbl_809E998C:
/* 809E998C  3B A0 00 00 */	li r29, 0
/* 809E9990  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809E9994  28 00 00 00 */	cmplwi r0, 0
/* 809E9998  40 82 00 1C */	bne lbl_809E99B4
/* 809E999C  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809E99A0  28 00 00 00 */	cmplwi r0, 0
/* 809E99A4  41 82 00 14 */	beq lbl_809E99B8
/* 809E99A8  4B 64 60 AD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809E99AC  2C 03 00 00 */	cmpwi r3, 0
/* 809E99B0  40 82 00 08 */	bne lbl_809E99B8
lbl_809E99B4:
/* 809E99B4  3B A0 00 01 */	li r29, 1
lbl_809E99B8:
/* 809E99B8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 809E99BC  41 82 00 0C */	beq lbl_809E99C8
/* 809E99C0  38 00 00 00 */	li r0, 0
/* 809E99C4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809E99C8:
/* 809E99C8  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809E99CC  38 63 F1 F4 */	addi r3, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809E99D0  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 809E99D4  28 00 00 00 */	cmplwi r0, 0
/* 809E99D8  40 82 00 AC */	bne lbl_809E9A84
/* 809E99DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E99E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E99E4  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 809E99E8  28 03 00 00 */	cmplwi r3, 0
/* 809E99EC  41 82 00 30 */	beq lbl_809E9A1C
/* 809E99F0  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 809E99F4  28 00 00 00 */	cmplwi r0, 0
/* 809E99F8  41 82 00 8C */	beq lbl_809E9A84
/* 809E99FC  38 00 00 00 */	li r0, 0
/* 809E9A00  28 03 00 00 */	cmplwi r3, 0
/* 809E9A04  41 82 00 0C */	beq lbl_809E9A10
/* 809E9A08  28 03 00 02 */	cmplwi r3, 2
/* 809E9A0C  40 82 00 08 */	bne lbl_809E9A14
lbl_809E9A10:
/* 809E9A10  38 00 00 01 */	li r0, 1
lbl_809E9A14:
/* 809E9A14  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809E9A18  41 82 00 6C */	beq lbl_809E9A84
lbl_809E9A1C:
/* 809E9A1C  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809E9A20  28 00 00 00 */	cmplwi r0, 0
/* 809E9A24  41 82 00 24 */	beq lbl_809E9A48
/* 809E9A28  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 809E9A2C  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809E9A30  7C 63 02 14 */	add r3, r3, r0
/* 809E9A34  80 03 00 04 */	lwz r0, 4(r3)
/* 809E9A38  54 00 10 3A */	slwi r0, r0, 2
/* 809E9A3C  38 7F 02 48 */	addi r3, r31, 0x248
/* 809E9A40  7C 03 00 2E */	lwzx r0, r3, r0
/* 809E9A44  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_809E9A48:
/* 809E9A48  7F C3 F3 78 */	mr r3, r30
/* 809E9A4C  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 809E9A50  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809E9A54  54 00 18 38 */	slwi r0, r0, 3
/* 809E9A58  38 BF 01 A0 */	addi r5, r31, 0x1a0
/* 809E9A5C  7C 05 00 2E */	lwzx r0, r5, r0
/* 809E9A60  54 00 10 3A */	slwi r0, r0, 2
/* 809E9A64  38 BF 01 C0 */	addi r5, r31, 0x1c0
/* 809E9A68  7C A5 00 2E */	lwzx r5, r5, r0
/* 809E9A6C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809E9A70  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809E9A74  38 E0 00 28 */	li r7, 0x28
/* 809E9A78  39 00 00 FF */	li r8, 0xff
/* 809E9A7C  39 20 00 01 */	li r9, 1
/* 809E9A80  4B 76 9D FD */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809E9A84:
/* 809E9A84  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 809E9A88  28 00 00 00 */	cmplwi r0, 0
/* 809E9A8C  41 82 00 1C */	beq lbl_809E9AA8
/* 809E9A90  3C 60 80 9F */	lis r3, lit_4360@ha /* 0x809EF29C@ha */
/* 809E9A94  C0 03 F2 9C */	lfs f0, lit_4360@l(r3)  /* 0x809EF29C@l */
/* 809E9A98  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 809E9A9C  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 809E9AA0  38 00 00 00 */	li r0, 0
/* 809E9AA4  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_809E9AA8:
/* 809E9AA8  7F C3 F3 78 */	mr r3, r30
/* 809E9AAC  48 00 17 89 */	bl playExpression__11daNpc_Grz_cFv
/* 809E9AB0  7F C3 F3 78 */	mr r3, r30
/* 809E9AB4  48 00 1B 0D */	bl playMotion__11daNpc_Grz_cFv
/* 809E9AB8  38 60 00 01 */	li r3, 1
/* 809E9ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 809E9AC0  4B 97 87 69 */	bl _restgpr_29
/* 809E9AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E9AC8  7C 08 03 A6 */	mtlr r0
/* 809E9ACC  38 21 00 20 */	addi r1, r1, 0x20
/* 809E9AD0  4E 80 00 20 */	blr 
