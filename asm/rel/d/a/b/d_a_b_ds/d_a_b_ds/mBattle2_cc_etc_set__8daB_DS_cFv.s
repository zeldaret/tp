lbl_805DA9A4:
/* 805DA9A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805DA9A8  7C 08 02 A6 */	mflr r0
/* 805DA9AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805DA9B0  39 61 00 50 */	addi r11, r1, 0x50
/* 805DA9B4  4B D8 78 09 */	bl _savegpr_21
/* 805DA9B8  7C 7E 1B 78 */	mr r30, r3
/* 805DA9BC  80 03 06 80 */	lwz r0, 0x680(r3)
/* 805DA9C0  2C 00 00 00 */	cmpwi r0, 0
/* 805DA9C4  40 82 00 BC */	bne lbl_805DAA80
/* 805DA9C8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805DA9CC  83 23 00 04 */	lwz r25, 4(r3)
/* 805DA9D0  3B E0 00 00 */	li r31, 0
/* 805DA9D4  3B A0 00 00 */	li r29, 0
/* 805DA9D8  3B 80 00 00 */	li r28, 0
/* 805DA9DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA9E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA9E4  3B 03 23 3C */	addi r24, r3, 0x233c
/* 805DA9E8  3C 60 80 5E */	lis r3, B2_ETC_CC_DT@ha /* 0x805DD1E0@ha */
/* 805DA9EC  3B 43 D1 E0 */	addi r26, r3, B2_ETC_CC_DT@l /* 0x805DD1E0@l */
/* 805DA9F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA9F4  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_805DA9F8:
/* 805DA9F8  80 79 00 84 */	lwz r3, 0x84(r25)
/* 805DA9FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DAA00  7E FA E2 14 */	add r23, r26, r28
/* 805DAA04  80 17 00 00 */	lwz r0, 0(r23)
/* 805DAA08  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805DAA0C  7C 63 02 14 */	add r3, r3, r0
/* 805DAA10  7F 64 DB 78 */	mr r4, r27
/* 805DAA14  4B D6 BA 9D */	bl PSMTXCopy
/* 805DAA18  C0 17 00 04 */	lfs f0, 4(r23)
/* 805DAA1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805DAA20  C0 17 00 08 */	lfs f0, 8(r23)
/* 805DAA24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805DAA28  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 805DAA2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DAA30  7F 63 DB 78 */	mr r3, r27
/* 805DAA34  38 81 00 14 */	addi r4, r1, 0x14
/* 805DAA38  38 A1 00 08 */	addi r5, r1, 8
/* 805DAA3C  4B D6 C3 31 */	bl PSMTXMultVec
/* 805DAA40  7E BE EA 14 */	add r21, r30, r29
/* 805DAA44  3A D5 14 70 */	addi r22, r21, 0x1470
/* 805DAA48  7E C3 B3 78 */	mr r3, r22
/* 805DAA4C  38 81 00 08 */	addi r4, r1, 8
/* 805DAA50  4B C9 4B F9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805DAA54  7E C3 B3 78 */	mr r3, r22
/* 805DAA58  C0 37 00 10 */	lfs f1, 0x10(r23)
/* 805DAA5C  4B C9 4C AD */	bl SetR__8cM3dGSphFf
/* 805DAA60  7F 03 C3 78 */	mr r3, r24
/* 805DAA64  38 95 13 4C */	addi r4, r21, 0x134c
/* 805DAA68  4B C8 A1 41 */	bl Set__4cCcSFP8cCcD_Obj
/* 805DAA6C  3B FF 00 01 */	addi r31, r31, 1
/* 805DAA70  2C 1F 00 02 */	cmpwi r31, 2
/* 805DAA74  3B BD 01 38 */	addi r29, r29, 0x138
/* 805DAA78  3B 9C 00 14 */	addi r28, r28, 0x14
/* 805DAA7C  41 80 FF 7C */	blt lbl_805DA9F8
lbl_805DAA80:
/* 805DAA80  39 61 00 50 */	addi r11, r1, 0x50
/* 805DAA84  4B D8 77 85 */	bl _restgpr_21
/* 805DAA88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805DAA8C  7C 08 03 A6 */	mtlr r0
/* 805DAA90  38 21 00 50 */	addi r1, r1, 0x50
/* 805DAA94  4E 80 00 20 */	blr 
