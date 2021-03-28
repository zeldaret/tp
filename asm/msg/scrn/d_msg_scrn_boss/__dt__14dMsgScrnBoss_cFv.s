lbl_8023C928:
/* 8023C928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C92C  7C 08 02 A6 */	mflr r0
/* 8023C930  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C934  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C938  48 12 58 99 */	bl _savegpr_26
/* 8023C93C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8023C940  7C 9A 23 78 */	mr r26, r4
/* 8023C944  41 82 01 28 */	beq lbl_8023CA6C
/* 8023C948  3C 60 80 3C */	lis r3, __vt__14dMsgScrnBoss_c@ha
/* 8023C94C  38 03 0D E8 */	addi r0, r3, __vt__14dMsgScrnBoss_c@l
/* 8023C950  90 1F 00 00 */	stw r0, 0(r31)
/* 8023C954  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023C958  28 03 00 00 */	cmplwi r3, 0
/* 8023C95C  41 82 00 18 */	beq lbl_8023C974
/* 8023C960  38 80 00 01 */	li r4, 1
/* 8023C964  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C968  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023C96C  7D 89 03 A6 */	mtctr r12
/* 8023C970  4E 80 04 21 */	bctrl 
lbl_8023C974:
/* 8023C974  38 00 00 00 */	li r0, 0
/* 8023C978  90 1F 00 04 */	stw r0, 4(r31)
/* 8023C97C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023C980  28 03 00 00 */	cmplwi r3, 0
/* 8023C984  41 82 00 18 */	beq lbl_8023C99C
/* 8023C988  38 80 00 01 */	li r4, 1
/* 8023C98C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C990  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023C994  7D 89 03 A6 */	mtctr r12
/* 8023C998  4E 80 04 21 */	bctrl 
lbl_8023C99C:
/* 8023C99C  38 00 00 00 */	li r0, 0
/* 8023C9A0  90 1F 00 08 */	stw r0, 8(r31)
/* 8023C9A4  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8023C9A8  28 03 00 00 */	cmplwi r3, 0
/* 8023C9AC  41 82 00 18 */	beq lbl_8023C9C4
/* 8023C9B0  38 80 00 01 */	li r4, 1
/* 8023C9B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C9B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023C9BC  7D 89 03 A6 */	mtctr r12
/* 8023C9C0  4E 80 04 21 */	bctrl 
lbl_8023C9C4:
/* 8023C9C4  38 00 00 00 */	li r0, 0
/* 8023C9C8  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8023C9CC  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8023C9D0  28 03 00 00 */	cmplwi r3, 0
/* 8023C9D4  41 82 00 18 */	beq lbl_8023C9EC
/* 8023C9D8  38 80 00 01 */	li r4, 1
/* 8023C9DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C9E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023C9E4  7D 89 03 A6 */	mtctr r12
/* 8023C9E8  4E 80 04 21 */	bctrl 
lbl_8023C9EC:
/* 8023C9EC  3B A0 00 00 */	li r29, 0
/* 8023C9F0  93 BF 00 C4 */	stw r29, 0xc4(r31)
/* 8023C9F4  3B 60 00 00 */	li r27, 0
/* 8023C9F8  7F BE EB 78 */	mr r30, r29
lbl_8023C9FC:
/* 8023C9FC  3B 9E 00 0C */	addi r28, r30, 0xc
/* 8023CA00  7C 7F E0 2E */	lwzx r3, r31, r28
/* 8023CA04  28 03 00 00 */	cmplwi r3, 0
/* 8023CA08  41 82 00 18 */	beq lbl_8023CA20
/* 8023CA0C  38 80 00 01 */	li r4, 1
/* 8023CA10  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CA14  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023CA18  7D 89 03 A6 */	mtctr r12
/* 8023CA1C  4E 80 04 21 */	bctrl 
lbl_8023CA20:
/* 8023CA20  7F BF E1 2E */	stwx r29, r31, r28
/* 8023CA24  3B 7B 00 01 */	addi r27, r27, 1
/* 8023CA28  2C 1B 00 07 */	cmpwi r27, 7
/* 8023CA2C  3B DE 00 04 */	addi r30, r30, 4
/* 8023CA30  41 80 FF CC */	blt lbl_8023C9FC
/* 8023CA34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023CA38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023CA3C  80 63 5C 7C */	lwz r3, 0x5c7c(r3)
/* 8023CA40  81 83 00 00 */	lwz r12, 0(r3)
/* 8023CA44  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8023CA48  7D 89 03 A6 */	mtctr r12
/* 8023CA4C  4E 80 04 21 */	bctrl 
/* 8023CA50  7F E3 FB 78 */	mr r3, r31
/* 8023CA54  38 80 00 00 */	li r4, 0
/* 8023CA58  4B FF F6 CD */	bl __dt__14dMsgScrnBase_cFv
/* 8023CA5C  7F 40 07 35 */	extsh. r0, r26
/* 8023CA60  40 81 00 0C */	ble lbl_8023CA6C
/* 8023CA64  7F E3 FB 78 */	mr r3, r31
/* 8023CA68  48 09 22 D5 */	bl __dl__FPv
lbl_8023CA6C:
/* 8023CA6C  7F E3 FB 78 */	mr r3, r31
/* 8023CA70  39 61 00 20 */	addi r11, r1, 0x20
/* 8023CA74  48 12 57 A9 */	bl _restgpr_26
/* 8023CA78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023CA7C  7C 08 03 A6 */	mtlr r0
/* 8023CA80  38 21 00 20 */	addi r1, r1, 0x20
/* 8023CA84  4E 80 00 20 */	blr 
