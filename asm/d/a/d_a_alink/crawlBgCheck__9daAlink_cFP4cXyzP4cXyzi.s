lbl_800F85C0:
/* 800F85C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800F85C4  7C 08 02 A6 */	mflr r0
/* 800F85C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 800F85CC  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 800F85D0  39 61 00 48 */	addi r11, r1, 0x48
/* 800F85D4  48 26 9C 05 */	bl _savegpr_28
/* 800F85D8  7C 7C 1B 78 */	mr r28, r3
/* 800F85DC  7C 9F 23 78 */	mr r31, r4
/* 800F85E0  7C BD 2B 78 */	mr r29, r5
/* 800F85E4  7C DE 33 78 */	mr r30, r6
/* 800F85E8  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800F85EC  38 63 00 24 */	addi r3, r3, 0x24
/* 800F85F0  3C 80 80 39 */	lis r4, l_crawlTopOffset@ha /* 0x8038FA6C@ha */
/* 800F85F4  38 84 FA 6C */	addi r4, r4, l_crawlTopOffset@l /* 0x8038FA6C@l */
/* 800F85F8  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F85FC  48 24 E7 71 */	bl PSMTXMultVec
/* 800F8600  7F 83 E3 78 */	mr r3, r28
/* 800F8604  38 81 00 20 */	addi r4, r1, 0x20
/* 800F8608  7F E5 FB 78 */	mr r5, r31
/* 800F860C  38 C1 00 14 */	addi r6, r1, 0x14
/* 800F8610  38 E0 00 01 */	li r7, 1
/* 800F8614  7F C8 F3 78 */	mr r8, r30
/* 800F8618  39 20 00 00 */	li r9, 0
/* 800F861C  4B FF FB A5 */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 800F8620  7C 7F 1B 78 */	mr r31, r3
/* 800F8624  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 800F8628  38 63 00 24 */	addi r3, r3, 0x24
/* 800F862C  3C 80 80 39 */	lis r4, l_crawlTopUpOffset@ha /* 0x8038FAC0@ha */
/* 800F8630  38 84 FA C0 */	addi r4, r4, l_crawlTopUpOffset@l /* 0x8038FAC0@l */
/* 800F8634  38 A1 00 20 */	addi r5, r1, 0x20
/* 800F8638  48 24 E7 35 */	bl PSMTXMultVec
/* 800F863C  7F 83 E3 78 */	mr r3, r28
/* 800F8640  38 81 00 20 */	addi r4, r1, 0x20
/* 800F8644  7F A5 EB 78 */	mr r5, r29
/* 800F8648  38 C1 00 08 */	addi r6, r1, 8
/* 800F864C  38 E0 00 01 */	li r7, 1
/* 800F8650  7F C8 F3 78 */	mr r8, r30
/* 800F8654  39 20 00 00 */	li r9, 0
/* 800F8658  4B FF FB 69 */	bl getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc
/* 800F865C  2C 1F 00 00 */	cmpwi r31, 0
/* 800F8660  41 82 00 50 */	beq lbl_800F86B0
/* 800F8664  2C 03 00 00 */	cmpwi r3, 0
/* 800F8668  41 82 00 48 */	beq lbl_800F86B0
/* 800F866C  38 61 00 08 */	addi r3, r1, 8
/* 800F8670  48 24 EA C9 */	bl PSVECSquareMag
/* 800F8674  FF E0 08 90 */	fmr f31, f1
/* 800F8678  38 61 00 14 */	addi r3, r1, 0x14
/* 800F867C  48 24 EA BD */	bl PSVECSquareMag
/* 800F8680  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800F8684  40 81 00 18 */	ble lbl_800F869C
/* 800F8688  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 800F868C  38 81 00 14 */	addi r4, r1, 0x14
/* 800F8690  7C 65 1B 78 */	mr r5, r3
/* 800F8694  48 24 EA 21 */	bl PSVECSubtract
/* 800F8698  48 00 00 4C */	b lbl_800F86E4
lbl_800F869C:
/* 800F869C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 800F86A0  38 81 00 08 */	addi r4, r1, 8
/* 800F86A4  7C 65 1B 78 */	mr r5, r3
/* 800F86A8  48 24 EA 0D */	bl PSVECSubtract
/* 800F86AC  48 00 00 38 */	b lbl_800F86E4
lbl_800F86B0:
/* 800F86B0  2C 1F 00 00 */	cmpwi r31, 0
/* 800F86B4  41 82 00 18 */	beq lbl_800F86CC
/* 800F86B8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 800F86BC  38 81 00 14 */	addi r4, r1, 0x14
/* 800F86C0  7C 65 1B 78 */	mr r5, r3
/* 800F86C4  48 24 E9 F1 */	bl PSVECSubtract
/* 800F86C8  48 00 00 1C */	b lbl_800F86E4
lbl_800F86CC:
/* 800F86CC  2C 03 00 00 */	cmpwi r3, 0
/* 800F86D0  41 82 00 14 */	beq lbl_800F86E4
/* 800F86D4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 800F86D8  38 81 00 08 */	addi r4, r1, 8
/* 800F86DC  7C 65 1B 78 */	mr r5, r3
/* 800F86E0  48 24 E9 D5 */	bl PSVECSubtract
lbl_800F86E4:
/* 800F86E4  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 800F86E8  39 61 00 48 */	addi r11, r1, 0x48
/* 800F86EC  48 26 9B 39 */	bl _restgpr_28
/* 800F86F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800F86F4  7C 08 03 A6 */	mtlr r0
/* 800F86F8  38 21 00 50 */	addi r1, r1, 0x50
/* 800F86FC  4E 80 00 20 */	blr 
