lbl_80A1F860:
/* 80A1F860  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A1F864  7C 08 02 A6 */	mflr r0
/* 80A1F868  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1F86C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1F870  4B 94 29 65 */	bl _savegpr_27
/* 80A1F874  7C 7B 1B 78 */	mr r27, r3
/* 80A1F878  7C 9C 23 78 */	mr r28, r4
/* 80A1F87C  7C BD 2B 78 */	mr r29, r5
/* 80A1F880  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1F884  3B E3 10 80 */	addi r31, r3, lit_3908@l /* 0x80A21080@l */
/* 80A1F888  80 7F 02 78 */	lwz r3, 0x278(r31)
/* 80A1F88C  80 1F 02 7C */	lwz r0, 0x27c(r31)
/* 80A1F890  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A1F894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1F898  80 1F 02 80 */	lwz r0, 0x280(r31)
/* 80A1F89C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1F8A0  38 7B 14 48 */	addi r3, r27, 0x1448
/* 80A1F8A4  4B 73 0E 49 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1F8A8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A1F8AC  38 7B 14 50 */	addi r3, r27, 0x1450
/* 80A1F8B0  4B 73 0E 3D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1F8B4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A1F8B8  38 7B 14 58 */	addi r3, r27, 0x1458
/* 80A1F8BC  4B 73 0E 31 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1F8C0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A1F8C4  3B C0 00 00 */	li r30, 0
/* 80A1F8C8  80 7F 02 84 */	lwz r3, 0x284(r31)
/* 80A1F8CC  80 1F 02 88 */	lwz r0, 0x288(r31)
/* 80A1F8D0  90 61 00 08 */	stw r3, 8(r1)
/* 80A1F8D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1F8D8  80 1C 00 00 */	lwz r0, 0(r28)
/* 80A1F8DC  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1F8E0  41 82 00 54 */	beq lbl_80A1F934
/* 80A1F8E4  40 80 00 10 */	bge lbl_80A1F8F4
/* 80A1F8E8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A1F8EC  41 82 00 20 */	beq lbl_80A1F90C
/* 80A1F8F0  48 00 00 E4 */	b lbl_80A1F9D4
lbl_80A1F8F4:
/* 80A1F8F4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80A1F8F8  41 82 00 D4 */	beq lbl_80A1F9CC
/* 80A1F8FC  40 80 00 D8 */	bge lbl_80A1F9D4
/* 80A1F900  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A1F904  40 80 00 A4 */	bge lbl_80A1F9A8
/* 80A1F908  48 00 00 CC */	b lbl_80A1F9D4
lbl_80A1F90C:
/* 80A1F90C  93 A1 00 08 */	stw r29, 8(r1)
/* 80A1F910  7F 63 DB 78 */	mr r3, r27
/* 80A1F914  38 81 00 08 */	addi r4, r1, 8
/* 80A1F918  38 A0 00 00 */	li r5, 0
/* 80A1F91C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A1F920  4B 73 44 65 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A1F924  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F928  41 82 00 B0 */	beq lbl_80A1F9D8
/* 80A1F92C  3B C0 00 01 */	li r30, 1
/* 80A1F930  48 00 00 A8 */	b lbl_80A1F9D8
lbl_80A1F934:
/* 80A1F934  A8 1B 09 E0 */	lha r0, 0x9e0(r27)
/* 80A1F938  2C 00 00 00 */	cmpwi r0, 0
/* 80A1F93C  40 82 00 44 */	bne lbl_80A1F980
/* 80A1F940  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80A1F944  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A1F948  C0 1F 02 68 */	lfs f0, 0x268(r31)
/* 80A1F94C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A1F950  41 82 00 10 */	beq lbl_80A1F960
/* 80A1F954  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80A1F958  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A1F95C  40 82 00 24 */	bne lbl_80A1F980
lbl_80A1F960:
/* 80A1F960  7F 63 DB 78 */	mr r3, r27
/* 80A1F964  38 80 00 04 */	li r4, 4
/* 80A1F968  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A1F96C  38 A0 00 00 */	li r5, 0
/* 80A1F970  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A1F974  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1F978  7D 89 03 A6 */	mtctr r12
/* 80A1F97C  4E 80 04 21 */	bctrl 
lbl_80A1F980:
/* 80A1F980  93 A1 00 08 */	stw r29, 8(r1)
/* 80A1F984  7F 63 DB 78 */	mr r3, r27
/* 80A1F988  38 81 00 08 */	addi r4, r1, 8
/* 80A1F98C  38 A0 00 00 */	li r5, 0
/* 80A1F990  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A1F994  4B 73 43 F1 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A1F998  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F99C  41 82 00 3C */	beq lbl_80A1F9D8
/* 80A1F9A0  3B C0 00 01 */	li r30, 1
/* 80A1F9A4  48 00 00 34 */	b lbl_80A1F9D8
lbl_80A1F9A8:
/* 80A1F9A8  7F 63 DB 78 */	mr r3, r27
/* 80A1F9AC  38 80 00 00 */	li r4, 0
/* 80A1F9B0  38 A0 00 00 */	li r5, 0
/* 80A1F9B4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A1F9B8  4B 73 43 CD */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A1F9BC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F9C0  41 82 00 18 */	beq lbl_80A1F9D8
/* 80A1F9C4  3B C0 00 01 */	li r30, 1
/* 80A1F9C8  48 00 00 10 */	b lbl_80A1F9D8
lbl_80A1F9CC:
/* 80A1F9CC  3B C0 00 01 */	li r30, 1
/* 80A1F9D0  48 00 00 08 */	b lbl_80A1F9D8
lbl_80A1F9D4:
/* 80A1F9D4  3B C0 00 01 */	li r30, 1
lbl_80A1F9D8:
/* 80A1F9D8  7F C3 F3 78 */	mr r3, r30
/* 80A1F9DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1F9E0  4B 94 28 41 */	bl _restgpr_27
/* 80A1F9E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A1F9E8  7C 08 03 A6 */	mtlr r0
/* 80A1F9EC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A1F9F0  4E 80 00 20 */	blr 
