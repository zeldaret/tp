lbl_809B6ADC:
/* 809B6ADC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B6AE0  7C 08 02 A6 */	mflr r0
/* 809B6AE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B6AE8  39 61 00 20 */	addi r11, r1, 0x20
/* 809B6AEC  4B 9A B6 F1 */	bl _savegpr_29
/* 809B6AF0  7C 7E 1B 78 */	mr r30, r3
/* 809B6AF4  3B E0 00 00 */	li r31, 0
/* 809B6AF8  80 84 00 00 */	lwz r4, 0(r4)
/* 809B6AFC  38 04 FF F6 */	addi r0, r4, -10
/* 809B6B00  28 00 00 28 */	cmplwi r0, 0x28
/* 809B6B04  41 81 01 10 */	bgt lbl_809B6C14
/* 809B6B08  3C 80 80 9C */	lis r4, lit_6254@ha /* 0x809B9ED0@ha */
/* 809B6B0C  38 84 9E D0 */	addi r4, r4, lit_6254@l /* 0x809B9ED0@l */
/* 809B6B10  54 00 10 3A */	slwi r0, r0, 2
/* 809B6B14  7C 04 00 2E */	lwzx r0, r4, r0
/* 809B6B18  7C 09 03 A6 */	mtctr r0
/* 809B6B1C  4E 80 04 20 */	bctr 
lbl_809B6B20:
/* 809B6B20  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B6B24  38 03 FF FF */	addi r0, r3, -1
/* 809B6B28  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6B2C  7C 00 07 35 */	extsh. r0, r0
/* 809B6B30  41 81 00 E4 */	bgt lbl_809B6C14
/* 809B6B34  38 60 00 0B */	li r3, 0xb
/* 809B6B38  4B 7F 1C AD */	bl dKy_change_colpat__FUc
/* 809B6B3C  3B E0 00 01 */	li r31, 1
/* 809B6B40  48 00 00 D4 */	b lbl_809B6C14
lbl_809B6B44:
/* 809B6B44  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B6B48  38 03 FF FF */	addi r0, r3, -1
/* 809B6B4C  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6B50  7C 00 07 35 */	extsh. r0, r0
/* 809B6B54  41 81 00 C0 */	bgt lbl_809B6C14
/* 809B6B58  3B E0 00 01 */	li r31, 1
/* 809B6B5C  48 00 00 B8 */	b lbl_809B6C14
lbl_809B6B60:
/* 809B6B60  38 80 00 00 */	li r4, 0
/* 809B6B64  38 A0 00 00 */	li r5, 0
/* 809B6B68  38 C0 00 00 */	li r6, 0
/* 809B6B6C  38 E0 00 00 */	li r7, 0
/* 809B6B70  4B 79 51 09 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6B74  2C 03 00 00 */	cmpwi r3, 0
/* 809B6B78  41 82 00 9C */	beq lbl_809B6C14
/* 809B6B7C  7F C3 F3 78 */	mr r3, r30
/* 809B6B80  4B FF DA 3D */	bl PresentDemoCall__13daNpc_Fairy_cFv
/* 809B6B84  3B E0 00 01 */	li r31, 1
/* 809B6B88  48 00 00 8C */	b lbl_809B6C14
lbl_809B6B8C:
/* 809B6B8C  3B E0 00 01 */	li r31, 1
/* 809B6B90  48 00 00 84 */	b lbl_809B6C14
lbl_809B6B94:
/* 809B6B94  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B6B98  2C 00 00 03 */	cmpwi r0, 3
/* 809B6B9C  41 82 00 28 */	beq lbl_809B6BC4
/* 809B6BA0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809B6BA4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B6BA8  4B 78 EC F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6BAC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809B6BB0  38 00 00 03 */	li r0, 3
/* 809B6BB4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B6BB8  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B6BBC  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B6BC0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B6BC4:
/* 809B6BC4  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B6BC8  38 03 FF FF */	addi r0, r3, -1
/* 809B6BCC  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6BD0  7C 00 07 35 */	extsh. r0, r0
/* 809B6BD4  41 81 00 40 */	bgt lbl_809B6C14
/* 809B6BD8  3B E0 00 01 */	li r31, 1
/* 809B6BDC  48 00 00 38 */	b lbl_809B6C14
lbl_809B6BE0:
/* 809B6BE0  38 00 00 00 */	li r0, 0
/* 809B6BE4  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 809B6BE8  38 80 00 00 */	li r4, 0
/* 809B6BEC  38 A0 00 00 */	li r5, 0
/* 809B6BF0  38 C0 00 00 */	li r6, 0
/* 809B6BF4  38 E0 00 00 */	li r7, 0
/* 809B6BF8  4B 79 50 81 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6BFC  2C 03 00 00 */	cmpwi r3, 0
/* 809B6C00  41 82 00 14 */	beq lbl_809B6C14
/* 809B6C04  3B E0 00 01 */	li r31, 1
/* 809B6C08  48 00 00 0C */	b lbl_809B6C14
lbl_809B6C0C:
/* 809B6C0C  4B FF CD F1 */	bl _to_FairyField__13daNpc_Fairy_cFv
/* 809B6C10  3B E0 00 01 */	li r31, 1
lbl_809B6C14:
/* 809B6C14  7F E3 FB 78 */	mr r3, r31
/* 809B6C18  39 61 00 20 */	addi r11, r1, 0x20
/* 809B6C1C  4B 9A B6 0D */	bl _restgpr_29
/* 809B6C20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B6C24  7C 08 03 A6 */	mtlr r0
/* 809B6C28  38 21 00 20 */	addi r1, r1, 0x20
/* 809B6C2C  4E 80 00 20 */	blr 
