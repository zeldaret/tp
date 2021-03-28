lbl_807C6564:
/* 807C6564  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C6568  7C 08 02 A6 */	mflr r0
/* 807C656C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C6570  39 61 00 30 */	addi r11, r1, 0x30
/* 807C6574  4B B9 BC 68 */	b _savegpr_29
/* 807C6578  7C 7F 1B 78 */	mr r31, r3
/* 807C657C  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C6580  39 03 EC A8 */	addi r8, r3, lit_3907@l
/* 807C6584  80 1F 13 20 */	lwz r0, 0x1320(r31)
/* 807C6588  2C 00 00 01 */	cmpwi r0, 1
/* 807C658C  41 82 01 A8 */	beq lbl_807C6734
/* 807C6590  40 80 01 F4 */	bge lbl_807C6784
/* 807C6594  2C 00 00 00 */	cmpwi r0, 0
/* 807C6598  40 80 00 08 */	bge lbl_807C65A0
/* 807C659C  48 00 01 E8 */	b lbl_807C6784
lbl_807C65A0:
/* 807C65A0  38 00 00 01 */	li r0, 1
/* 807C65A4  98 1F 13 87 */	stb r0, 0x1387(r31)
/* 807C65A8  C0 08 00 04 */	lfs f0, 4(r8)
/* 807C65AC  80 7F 12 4C */	lwz r3, 0x124c(r31)
/* 807C65B0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807C65B4  80 7F 12 4C */	lwz r3, 0x124c(r31)
/* 807C65B8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 807C65BC  39 80 00 00 */	li r12, 0
/* 807C65C0  38 60 00 00 */	li r3, 0
/* 807C65C4  38 80 00 00 */	li r4, 0
/* 807C65C8  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 807C65CC  38 E5 9A 20 */	addi r7, r5, sincosTable___5JMath@l
lbl_807C65D0:
/* 807C65D0  3B C0 00 00 */	li r30, 0
/* 807C65D4  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 807C65D8  7D 47 02 14 */	add r10, r7, r0
/* 807C65DC  39 2A 00 04 */	addi r9, r10, 4
/* 807C65E0  2C 0C 00 05 */	cmpwi r12, 5
/* 807C65E4  40 80 00 84 */	bge lbl_807C6668
/* 807C65E8  38 00 00 0A */	li r0, 0xa
/* 807C65EC  7C 09 03 A6 */	mtctr r0
lbl_807C65F0:
/* 807C65F0  C0 28 00 F0 */	lfs f1, 0xf0(r8)
/* 807C65F4  C8 68 00 D8 */	lfd f3, 0xd8(r8)
/* 807C65F8  6F C6 80 00 */	xoris r6, r30, 0x8000
/* 807C65FC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 807C6600  3C A0 43 30 */	lis r5, 0x4330
/* 807C6604  90 A1 00 08 */	stw r5, 8(r1)
/* 807C6608  C8 01 00 08 */	lfd f0, 8(r1)
/* 807C660C  EC 00 18 28 */	fsubs f0, f0, f3
/* 807C6610  EC 21 00 32 */	fmuls f1, f1, f0
/* 807C6614  C0 0A 00 00 */	lfs f0, 0(r10)
/* 807C6618  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C661C  7C 1E 1A 14 */	add r0, r30, r3
/* 807C6620  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807C6624  7D 7F 02 14 */	add r11, r31, r0
/* 807C6628  D0 0B 09 94 */	stfs f0, 0x994(r11)
/* 807C662C  C0 09 00 00 */	lfs f0, 0(r9)
/* 807C6630  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C6634  D0 0B 09 9C */	stfs f0, 0x99c(r11)
/* 807C6638  C0 48 00 F4 */	lfs f2, 0xf4(r8)
/* 807C663C  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 807C6640  90 C1 00 14 */	stw r6, 0x14(r1)
/* 807C6644  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807C6648  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807C664C  EC 00 18 28 */	fsubs f0, f0, f3
/* 807C6650  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C6654  EC 02 00 28 */	fsubs f0, f2, f0
/* 807C6658  D0 0B 09 98 */	stfs f0, 0x998(r11)
/* 807C665C  3B DE 00 01 */	addi r30, r30, 1
/* 807C6660  42 00 FF 90 */	bdnz lbl_807C65F0
/* 807C6664  48 00 00 80 */	b lbl_807C66E4
lbl_807C6668:
/* 807C6668  38 00 00 0A */	li r0, 0xa
/* 807C666C  7C 09 03 A6 */	mtctr r0
lbl_807C6670:
/* 807C6670  C0 28 00 68 */	lfs f1, 0x68(r8)
/* 807C6674  C8 68 00 D8 */	lfd f3, 0xd8(r8)
/* 807C6678  6F C6 80 00 */	xoris r6, r30, 0x8000
/* 807C667C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 807C6680  3C A0 43 30 */	lis r5, 0x4330
/* 807C6684  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807C6688  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807C668C  EC 00 18 28 */	fsubs f0, f0, f3
/* 807C6690  EC 21 00 32 */	fmuls f1, f1, f0
/* 807C6694  C0 0A 00 00 */	lfs f0, 0(r10)
/* 807C6698  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C669C  7C 1E 1A 14 */	add r0, r30, r3
/* 807C66A0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807C66A4  7D 7F 02 14 */	add r11, r31, r0
/* 807C66A8  D0 0B 09 94 */	stfs f0, 0x994(r11)
/* 807C66AC  C0 09 00 00 */	lfs f0, 0(r9)
/* 807C66B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C66B4  D0 0B 09 9C */	stfs f0, 0x99c(r11)
/* 807C66B8  C0 48 00 F4 */	lfs f2, 0xf4(r8)
/* 807C66BC  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 807C66C0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 807C66C4  90 A1 00 08 */	stw r5, 8(r1)
/* 807C66C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 807C66CC  EC 00 18 28 */	fsubs f0, f0, f3
/* 807C66D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C66D4  EC 02 00 28 */	fsubs f0, f2, f0
/* 807C66D8  D0 0B 09 98 */	stfs f0, 0x998(r11)
/* 807C66DC  3B DE 00 01 */	addi r30, r30, 1
/* 807C66E0  42 00 FF 90 */	bdnz lbl_807C6670
lbl_807C66E4:
/* 807C66E4  39 8C 00 01 */	addi r12, r12, 1
/* 807C66E8  2C 0C 00 0A */	cmpwi r12, 0xa
/* 807C66EC  38 63 00 0A */	addi r3, r3, 0xa
/* 807C66F0  38 84 33 33 */	addi r4, r4, 0x3333
/* 807C66F4  41 80 FE DC */	blt lbl_807C65D0
/* 807C66F8  C0 08 00 F8 */	lfs f0, 0xf8(r8)
/* 807C66FC  D0 1F 12 2C */	stfs f0, 0x122c(r31)
/* 807C6700  C0 08 00 04 */	lfs f0, 4(r8)
/* 807C6704  D0 1F 12 30 */	stfs f0, 0x1230(r31)
/* 807C6708  D0 1F 12 34 */	stfs f0, 0x1234(r31)
/* 807C670C  38 60 00 00 */	li r3, 0
/* 807C6710  B0 7F 12 38 */	sth r3, 0x1238(r31)
/* 807C6714  38 00 B0 00 */	li r0, -20480
/* 807C6718  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 807C671C  38 00 80 00 */	li r0, -32768
/* 807C6720  B0 1F 12 3C */	sth r0, 0x123c(r31)
/* 807C6724  B0 7F 12 3E */	sth r3, 0x123e(r31)
/* 807C6728  38 00 00 01 */	li r0, 1
/* 807C672C  90 1F 13 20 */	stw r0, 0x1320(r31)
/* 807C6730  98 1F 11 00 */	stb r0, 0x1100(r31)
lbl_807C6734:
/* 807C6734  3B A0 00 00 */	li r29, 0
/* 807C6738  3B C0 00 00 */	li r30, 0
lbl_807C673C:
/* 807C673C  48 00 85 41 */	bl checkNowWolf__9daPy_py_cFv
/* 807C6740  28 03 00 00 */	cmplwi r3, 0
/* 807C6744  40 82 00 18 */	bne lbl_807C675C
/* 807C6748  38 7E 25 E0 */	addi r3, r30, 0x25e0
/* 807C674C  7C 1F 18 2E */	lwzx r0, r31, r3
/* 807C6750  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C6754  7C 1F 19 2E */	stwx r0, r31, r3
/* 807C6758  48 00 00 14 */	b lbl_807C676C
lbl_807C675C:
/* 807C675C  38 7E 25 E0 */	addi r3, r30, 0x25e0
/* 807C6760  7C 1F 18 2E */	lwzx r0, r31, r3
/* 807C6764  60 00 00 01 */	ori r0, r0, 1
/* 807C6768  7C 1F 19 2E */	stwx r0, r31, r3
lbl_807C676C:
/* 807C676C  3B BD 00 01 */	addi r29, r29, 1
/* 807C6770  2C 1D 00 BE */	cmpwi r29, 0xbe
/* 807C6774  3B DE 01 38 */	addi r30, r30, 0x138
/* 807C6778  41 80 FF C4 */	blt lbl_807C673C
/* 807C677C  7F E3 FB 78 */	mr r3, r31
/* 807C6780  4B FF EC 7D */	bl calcOpRopePos__8daE_VA_cFv
lbl_807C6784:
/* 807C6784  7F E3 FB 78 */	mr r3, r31
/* 807C6788  4B FF F9 DD */	bl calcTagAngle__8daE_VA_cFv
/* 807C678C  39 61 00 30 */	addi r11, r1, 0x30
/* 807C6790  4B B9 BA 98 */	b _restgpr_29
/* 807C6794  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C6798  7C 08 03 A6 */	mtlr r0
/* 807C679C  38 21 00 30 */	addi r1, r1, 0x30
/* 807C67A0  4E 80 00 20 */	blr 
