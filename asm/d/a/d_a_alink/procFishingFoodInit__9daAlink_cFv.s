lbl_800F7988:
/* 800F7988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F798C  7C 08 02 A6 */	mflr r0
/* 800F7990  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7998  7C 7F 1B 78 */	mr r31, r3
/* 800F799C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F79A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F79A4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800F79A8  7F E4 FB 78 */	mr r4, r31
/* 800F79AC  38 A0 00 00 */	li r5, 0
/* 800F79B0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F79B4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F79B8  4B F4 B7 B5 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800F79BC  2C 03 00 00 */	cmpwi r3, 0
/* 800F79C0  40 82 00 0C */	bne lbl_800F79CC
/* 800F79C4  38 60 00 00 */	li r3, 0
/* 800F79C8  48 00 00 CC */	b lbl_800F7A94
lbl_800F79CC:
/* 800F79CC  38 00 00 05 */	li r0, 5
/* 800F79D0  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 800F79D4  7F E3 FB 78 */	mr r3, r31
/* 800F79D8  38 80 00 A3 */	li r4, 0xa3
/* 800F79DC  4B FC A5 91 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F79E0  7F E3 FB 78 */	mr r3, r31
/* 800F79E4  38 80 01 04 */	li r4, 0x104
/* 800F79E8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800F79EC  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800F79F0  38 A0 00 15 */	li r5, 0x15
/* 800F79F4  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800F79F8  4B FB 56 15 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F79FC  88 1F 2F 9C */	lbz r0, 0x2f9c(r31)
/* 800F7A00  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F7A04  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800F7A08  48 06 70 19 */	bl checkFishingRodItem__9daPy_py_cFi
/* 800F7A0C  2C 03 00 00 */	cmpwi r3, 0
/* 800F7A10  41 82 00 20 */	beq lbl_800F7A30
/* 800F7A14  38 00 00 00 */	li r0, 0
/* 800F7A18  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800F7A1C  7F E3 FB 78 */	mr r3, r31
/* 800F7A20  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800F7A24  4B FC 87 E5 */	bl checkItemSetButton__9daAlink_cFi
/* 800F7A28  98 7F 2F 9C */	stb r3, 0x2f9c(r31)
/* 800F7A2C  48 00 00 4C */	b lbl_800F7A78
lbl_800F7A30:
/* 800F7A30  38 00 00 01 */	li r0, 1
/* 800F7A34  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800F7A38  7F E3 FB 78 */	mr r3, r31
/* 800F7A3C  4B FC 7E 19 */	bl keepItemData__9daAlink_cFv
/* 800F7A40  7F E3 FB 78 */	mr r3, r31
/* 800F7A44  38 80 00 00 */	li r4, 0
/* 800F7A48  38 A0 00 00 */	li r5, 0
/* 800F7A4C  4B FC 98 91 */	bl deleteEquipItem__9daAlink_cFii
/* 800F7A50  7F E3 FB 78 */	mr r3, r31
/* 800F7A54  38 80 01 08 */	li r4, 0x108
/* 800F7A58  4B FC 87 B1 */	bl checkItemSetButton__9daAlink_cFi
/* 800F7A5C  98 7F 2F 9C */	stb r3, 0x2f9c(r31)
/* 800F7A60  88 7F 2F 9C */	lbz r3, 0x2f9c(r31)
/* 800F7A64  4B F3 64 B9 */	bl dComIfGp_getSelectItem__Fi
/* 800F7A68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800F7A6C  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800F7A70  7F E3 FB 78 */	mr r3, r31
/* 800F7A74  4B FC 7F 7D */	bl setItemActor__9daAlink_cFv
lbl_800F7A78:
/* 800F7A78  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F7A7C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800F7A80  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F7A84  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800F7A88  38 00 00 00 */	li r0, 0
/* 800F7A8C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F7A90  38 60 00 01 */	li r3, 1
lbl_800F7A94:
/* 800F7A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7A9C  7C 08 03 A6 */	mtlr r0
/* 800F7AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7AA4  4E 80 00 20 */	blr 
