lbl_80A3A568:
/* 80A3A568  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A3A56C  7C 08 02 A6 */	mflr r0
/* 80A3A570  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A3A574  39 61 00 80 */	addi r11, r1, 0x80
/* 80A3A578  4B 92 7C 5C */	b _savegpr_27
/* 80A3A57C  7C 7B 1B 78 */	mr r27, r3
/* 80A3A580  7C 9C 23 78 */	mr r28, r4
/* 80A3A584  7C BD 2B 78 */	mr r29, r5
/* 80A3A588  3B E0 00 00 */	li r31, 0
/* 80A3A58C  3B C0 00 00 */	li r30, 0
/* 80A3A590  80 63 0D CC */	lwz r3, 0xdcc(r3)
/* 80A3A594  38 00 83 CF */	li r0, -31793
/* 80A3A598  7C 60 00 38 */	and r0, r3, r0
/* 80A3A59C  90 1B 0D CC */	stw r0, 0xdcc(r27)
/* 80A3A5A0  80 7B 05 AC */	lwz r3, 0x5ac(r27)
/* 80A3A5A4  1C 1C 00 1C */	mulli r0, r28, 0x1c
/* 80A3A5A8  38 A1 00 04 */	addi r5, r1, 4
/* 80A3A5AC  7C 83 02 14 */	add r4, r3, r0
/* 80A3A5B0  38 00 00 03 */	li r0, 3
/* 80A3A5B4  7C 09 03 A6 */	mtctr r0
/* 80A3A5B8  38 84 FF FC */	addi r4, r4, -4
lbl_80A3A5BC:
/* 80A3A5BC  80 64 00 04 */	lwz r3, 4(r4)
/* 80A3A5C0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A3A5C4  90 65 00 04 */	stw r3, 4(r5)
/* 80A3A5C8  94 05 00 08 */	stwu r0, 8(r5)
/* 80A3A5CC  42 00 FF F0 */	bdnz lbl_80A3A5BC
/* 80A3A5D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A3A5D4  90 05 00 04 */	stw r0, 4(r5)
/* 80A3A5D8  38 61 00 24 */	addi r3, r1, 0x24
/* 80A3A5DC  7F 64 DB 78 */	mr r4, r27
/* 80A3A5E0  38 A1 00 08 */	addi r5, r1, 8
/* 80A3A5E4  81 9B 0E 40 */	lwz r12, 0xe40(r27)
/* 80A3A5E8  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80A3A5EC  7D 89 03 A6 */	mtctr r12
/* 80A3A5F0  4E 80 04 21 */	bctrl 
/* 80A3A5F4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80A3A5F8  38 81 00 20 */	addi r4, r1, 0x20
/* 80A3A5FC  38 00 00 03 */	li r0, 3
/* 80A3A600  7C 09 03 A6 */	mtctr r0
lbl_80A3A604:
/* 80A3A604  80 64 00 04 */	lwz r3, 4(r4)
/* 80A3A608  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A3A60C  90 65 00 04 */	stw r3, 4(r5)
/* 80A3A610  94 05 00 08 */	stwu r0, 8(r5)
/* 80A3A614  42 00 FF F0 */	bdnz lbl_80A3A604
/* 80A3A618  80 04 00 04 */	lwz r0, 4(r4)
/* 80A3A61C  90 05 00 04 */	stw r0, 4(r5)
/* 80A3A620  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 80A3A624  2C 05 FF FF */	cmpwi r5, -1
/* 80A3A628  41 82 00 20 */	beq lbl_80A3A648
/* 80A3A62C  7F 63 DB 78 */	mr r3, r27
/* 80A3A630  80 9B 05 B8 */	lwz r4, 0x5b8(r27)
/* 80A3A634  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80A3A638  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A63C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A3A640  4B FF DF 11 */	bl getTrnsfrmAnmP__10daNpc_Kn_cFPCci
/* 80A3A644  7C 7F 1B 78 */	mr r31, r3
lbl_80A3A648:
/* 80A3A648  28 1F 00 00 */	cmplwi r31, 0
/* 80A3A64C  41 82 00 4C */	beq lbl_80A3A698
/* 80A3A650  7F 63 DB 78 */	mr r3, r27
/* 80A3A654  7F E4 FB 78 */	mr r4, r31
/* 80A3A658  3C A0 80 A4 */	lis r5, lit_4327@ha
/* 80A3A65C  C0 25 09 0C */	lfs f1, lit_4327@l(r5)
/* 80A3A660  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80A3A664  38 C0 00 00 */	li r6, 0
/* 80A3A668  38 E0 FF FF */	li r7, -1
/* 80A3A66C  7F A8 EB 78 */	mr r8, r29
/* 80A3A670  4B FF DF D1 */	bl setBckAnm__10daNpc_Kn_cFP15J3DAnmTransformfiiib
/* 80A3A674  2C 03 00 00 */	cmpwi r3, 0
/* 80A3A678  41 82 00 1C */	beq lbl_80A3A694
/* 80A3A67C  80 1B 0D CC */	lwz r0, 0xdcc(r27)
/* 80A3A680  60 00 04 10 */	ori r0, r0, 0x410
/* 80A3A684  90 1B 0D CC */	stw r0, 0xdcc(r27)
/* 80A3A688  38 00 00 00 */	li r0, 0
/* 80A3A68C  B0 1B 0E 28 */	sth r0, 0xe28(r27)
/* 80A3A690  48 00 00 08 */	b lbl_80A3A698
lbl_80A3A694:
/* 80A3A694  3B E0 00 00 */	li r31, 0
lbl_80A3A698:
/* 80A3A698  28 1F 00 00 */	cmplwi r31, 0
/* 80A3A69C  40 82 00 18 */	bne lbl_80A3A6B4
/* 80A3A6A0  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80A3A6A4  2C 00 FF FF */	cmpwi r0, -1
/* 80A3A6A8  41 82 00 0C */	beq lbl_80A3A6B4
/* 80A3A6AC  38 60 00 00 */	li r3, 0
/* 80A3A6B0  48 00 00 F8 */	b lbl_80A3A7A8
lbl_80A3A6B4:
/* 80A3A6B4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80A3A6B8  2C 1F FF FF */	cmpwi r31, -1
/* 80A3A6BC  41 82 00 24 */	beq lbl_80A3A6E0
/* 80A3A6C0  7F 63 DB 78 */	mr r3, r27
/* 80A3A6C4  80 9B 05 B8 */	lwz r4, 0x5b8(r27)
/* 80A3A6C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A3A6CC  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A6D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A3A6D4  7F E5 FB 78 */	mr r5, r31
/* 80A3A6D8  4B FF DE F1 */	bl getTexPtrnAnmP__10daNpc_Kn_cFPCci
/* 80A3A6DC  7C 7E 1B 78 */	mr r30, r3
lbl_80A3A6E0:
/* 80A3A6E0  28 1E 00 00 */	cmplwi r30, 0
/* 80A3A6E4  41 82 00 84 */	beq lbl_80A3A768
/* 80A3A6E8  80 1B 06 84 */	lwz r0, 0x684(r27)
/* 80A3A6EC  7C 1E 00 40 */	cmplw r30, r0
/* 80A3A6F0  40 82 00 20 */	bne lbl_80A3A710
/* 80A3A6F4  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80A3A6F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A3A6FC  41 82 00 14 */	beq lbl_80A3A710
/* 80A3A700  80 1B 0D CC */	lwz r0, 0xdcc(r27)
/* 80A3A704  60 00 28 00 */	ori r0, r0, 0x2800
/* 80A3A708  90 1B 0D CC */	stw r0, 0xdcc(r27)
/* 80A3A70C  48 00 00 5C */	b lbl_80A3A768
lbl_80A3A710:
/* 80A3A710  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80A3A714  80 63 00 04 */	lwz r3, 4(r3)
/* 80A3A718  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A3A71C  7F 63 DB 78 */	mr r3, r27
/* 80A3A720  7F C4 F3 78 */	mr r4, r30
/* 80A3A724  3C C0 80 A4 */	lis r6, lit_4327@ha
/* 80A3A728  C0 26 09 0C */	lfs f1, lit_4327@l(r6)
/* 80A3A72C  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 80A3A730  4B FF E0 4D */	bl setBtpAnm__10daNpc_Kn_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A3A734  2C 03 00 00 */	cmpwi r3, 0
/* 80A3A738  41 82 00 2C */	beq lbl_80A3A764
/* 80A3A73C  80 1B 0D CC */	lwz r0, 0xdcc(r27)
/* 80A3A740  60 00 08 20 */	ori r0, r0, 0x820
/* 80A3A744  90 1B 0D CC */	stw r0, 0xdcc(r27)
/* 80A3A748  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80A3A74C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3A750  41 82 00 18 */	beq lbl_80A3A768
/* 80A3A754  80 1B 0D CC */	lwz r0, 0xdcc(r27)
/* 80A3A758  60 00 20 00 */	ori r0, r0, 0x2000
/* 80A3A75C  90 1B 0D CC */	stw r0, 0xdcc(r27)
/* 80A3A760  48 00 00 08 */	b lbl_80A3A768
lbl_80A3A764:
/* 80A3A764  3B C0 00 00 */	li r30, 0
lbl_80A3A768:
/* 80A3A768  28 1E 00 00 */	cmplwi r30, 0
/* 80A3A76C  40 82 00 14 */	bne lbl_80A3A780
/* 80A3A770  2C 1F FF FF */	cmpwi r31, -1
/* 80A3A774  41 82 00 0C */	beq lbl_80A3A780
/* 80A3A778  38 60 00 00 */	li r3, 0
/* 80A3A77C  48 00 00 2C */	b lbl_80A3A7A8
lbl_80A3A780:
/* 80A3A780  7F 63 DB 78 */	mr r3, r27
/* 80A3A784  7F 84 E3 78 */	mr r4, r28
/* 80A3A788  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80A3A78C  3C C0 80 A4 */	lis r6, lit_4204@ha
/* 80A3A790  C0 26 09 00 */	lfs f1, lit_4204@l(r6)
/* 80A3A794  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 80A3A798  81 9B 0E 40 */	lwz r12, 0xe40(r27)
/* 80A3A79C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80A3A7A0  7D 89 03 A6 */	mtctr r12
/* 80A3A7A4  4E 80 04 21 */	bctrl 
lbl_80A3A7A8:
/* 80A3A7A8  39 61 00 80 */	addi r11, r1, 0x80
/* 80A3A7AC  4B 92 7A 74 */	b _restgpr_27
/* 80A3A7B0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A3A7B4  7C 08 03 A6 */	mtlr r0
/* 80A3A7B8  38 21 00 80 */	addi r1, r1, 0x80
/* 80A3A7BC  4E 80 00 20 */	blr 
