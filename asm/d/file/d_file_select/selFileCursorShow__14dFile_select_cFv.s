lbl_8018D764:
/* 8018D764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018D768  7C 08 02 A6 */	mflr r0
/* 8018D76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018D770  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8018D774  7C 7F 1B 78 */	mr r31, r3
/* 8018D778  88 03 02 65 */	lbz r0, 0x265(r3)
/* 8018D77C  54 00 10 3A */	slwi r0, r0, 2
/* 8018D780  7C 7F 02 14 */	add r3, r31, r0
/* 8018D784  80 63 01 64 */	lwz r3, 0x164(r3)
/* 8018D788  38 80 00 FF */	li r4, 0xff
/* 8018D78C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018D790  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018D794  7D 89 03 A6 */	mtctr r12
/* 8018D798  4E 80 04 21 */	bctrl 
/* 8018D79C  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018D7A0  54 00 10 3A */	slwi r0, r0, 2
/* 8018D7A4  7C 7F 02 14 */	add r3, r31, r0
/* 8018D7A8  80 63 01 70 */	lwz r3, 0x170(r3)
/* 8018D7AC  38 80 00 FF */	li r4, 0xff
/* 8018D7B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018D7B4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018D7B8  7D 89 03 A6 */	mtctr r12
/* 8018D7BC  4E 80 04 21 */	bctrl 
/* 8018D7C0  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018D7C4  54 00 10 3A */	slwi r0, r0, 2
/* 8018D7C8  7C 7F 02 14 */	add r3, r31, r0
/* 8018D7CC  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8018D7D0  38 80 00 FF */	li r4, 0xff
/* 8018D7D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018D7D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018D7DC  7D 89 03 A6 */	mtctr r12
/* 8018D7E0  4E 80 04 21 */	bctrl 
/* 8018D7E4  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018D7E8  54 00 10 3A */	slwi r0, r0, 2
/* 8018D7EC  7C 7F 02 14 */	add r3, r31, r0
/* 8018D7F0  80 83 00 BC */	lwz r4, 0xbc(r3)
/* 8018D7F4  38 61 00 08 */	addi r3, r1, 8
/* 8018D7F8  80 A4 00 04 */	lwz r5, 4(r4)
/* 8018D7FC  38 C0 00 00 */	li r6, 0
/* 8018D800  38 E0 00 00 */	li r7, 0
/* 8018D804  48 0C 76 B9 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8018D808  80 61 00 08 */	lwz r3, 8(r1)
/* 8018D80C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8018D810  90 61 00 14 */	stw r3, 0x14(r1)
/* 8018D814  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018D818  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8018D81C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018D820  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018D824  54 00 10 3A */	slwi r0, r0, 2
/* 8018D828  7C 7F 02 14 */	add r3, r31, r0
/* 8018D82C  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 8018D830  80 83 00 04 */	lwz r4, 4(r3)
/* 8018D834  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018D838  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8018D83C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8018D840  38 A0 00 01 */	li r5, 1
/* 8018D844  48 00 78 B1 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 8018D848  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018D84C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018D850  48 00 7A 51 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018D854  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018D858  C0 22 9F 68 */	lfs f1, lit_6069(r2)
/* 8018D85C  C0 42 9F 88 */	lfs f2, lit_6872(r2)
/* 8018D860  C0 62 9F 8C */	lfs f3, lit_6873(r2)
/* 8018D864  C0 82 9F 90 */	lfs f4, lit_6874(r2)
/* 8018D868  FC A0 20 90 */	fmr f5, f4
/* 8018D86C  48 00 79 45 */	bl setParam__16dSelect_cursor_cFfffff
/* 8018D870  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018D874  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018D878  7C 08 03 A6 */	mtlr r0
/* 8018D87C  38 21 00 30 */	addi r1, r1, 0x30
/* 8018D880  4E 80 00 20 */	blr 
