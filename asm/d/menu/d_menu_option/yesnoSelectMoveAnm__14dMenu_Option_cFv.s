lbl_801E85D4:
/* 801E85D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E85D8  7C 08 02 A6 */	mflr r0
/* 801E85DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E85E0  39 61 00 20 */	addi r11, r1, 0x20
/* 801E85E4  48 17 9B F9 */	bl _savegpr_29
/* 801E85E8  7C 7D 1B 78 */	mr r29, r3
/* 801E85EC  3B E0 00 00 */	li r31, 0
/* 801E85F0  88 03 03 FA */	lbz r0, 0x3fa(r3)
/* 801E85F4  28 00 00 FF */	cmplwi r0, 0xff
/* 801E85F8  41 82 00 F4 */	beq lbl_801E86EC
/* 801E85FC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801E8600  7C BD 02 14 */	add r5, r29, r0
/* 801E8604  80 85 03 C8 */	lwz r4, 0x3c8(r5)
/* 801E8608  38 6D 81 B0 */	la r3, OptYnSelStartFrameTbl(r13) /* 80450730-_SDA_BASE_ */
/* 801E860C  7C 03 00 2E */	lwzx r0, r3, r0
/* 801E8610  7C 04 00 00 */	cmpw r4, r0
/* 801E8614  41 82 00 A8 */	beq lbl_801E86BC
/* 801E8618  40 80 00 30 */	bge lbl_801E8648
/* 801E861C  38 04 00 02 */	addi r0, r4, 2
/* 801E8620  90 05 03 C8 */	stw r0, 0x3c8(r5)
/* 801E8624  88 1D 03 FA */	lbz r0, 0x3fa(r29)
/* 801E8628  54 04 10 3A */	slwi r4, r0, 2
/* 801E862C  7C BD 22 14 */	add r5, r29, r4
/* 801E8630  80 05 03 C8 */	lwz r0, 0x3c8(r5)
/* 801E8634  7C 63 20 2E */	lwzx r3, r3, r4
/* 801E8638  7C 00 18 00 */	cmpw r0, r3
/* 801E863C  40 81 00 34 */	ble lbl_801E8670
/* 801E8640  90 65 03 C8 */	stw r3, 0x3c8(r5)
/* 801E8644  48 00 00 2C */	b lbl_801E8670
lbl_801E8648:
/* 801E8648  38 04 FF FE */	addi r0, r4, -2
/* 801E864C  90 05 03 C8 */	stw r0, 0x3c8(r5)
/* 801E8650  88 1D 03 FA */	lbz r0, 0x3fa(r29)
/* 801E8654  54 04 10 3A */	slwi r4, r0, 2
/* 801E8658  7C BD 22 14 */	add r5, r29, r4
/* 801E865C  80 05 03 C8 */	lwz r0, 0x3c8(r5)
/* 801E8660  7C 63 20 2E */	lwzx r3, r3, r4
/* 801E8664  7C 00 18 00 */	cmpw r0, r3
/* 801E8668  40 80 00 08 */	bge lbl_801E8670
/* 801E866C  90 65 03 C8 */	stw r3, 0x3c8(r5)
lbl_801E8670:
/* 801E8670  88 1D 03 FA */	lbz r0, 0x3fa(r29)
/* 801E8674  54 00 10 3A */	slwi r0, r0, 2
/* 801E8678  7C 7D 02 14 */	add r3, r29, r0
/* 801E867C  80 03 03 C8 */	lwz r0, 0x3c8(r3)
/* 801E8680  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E8684  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E8688  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E868C  3C 00 43 30 */	lis r0, 0x4330
/* 801E8690  90 01 00 08 */	stw r0, 8(r1)
/* 801E8694  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E8698  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E869C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 801E86A0  D0 03 00 08 */	stfs f0, 8(r3)
/* 801E86A4  88 1D 03 FA */	lbz r0, 0x3fa(r29)
/* 801E86A8  54 00 10 3A */	slwi r0, r0, 2
/* 801E86AC  7C 7D 02 14 */	add r3, r29, r0
/* 801E86B0  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E86B4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E86B8  48 10 F9 15 */	bl animationTransform__7J2DPaneFv
lbl_801E86BC:
/* 801E86BC  88 1D 03 FA */	lbz r0, 0x3fa(r29)
/* 801E86C0  54 00 10 3A */	slwi r0, r0, 2
/* 801E86C4  7C 7D 02 14 */	add r3, r29, r0
/* 801E86C8  80 83 03 C8 */	lwz r4, 0x3c8(r3)
/* 801E86CC  38 6D 81 B0 */	la r3, OptYnSelStartFrameTbl(r13) /* 80450730-_SDA_BASE_ */
/* 801E86D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 801E86D4  7C 04 00 00 */	cmpw r4, r0
/* 801E86D8  40 82 00 0C */	bne lbl_801E86E4
/* 801E86DC  3B C0 00 01 */	li r30, 1
/* 801E86E0  48 00 00 10 */	b lbl_801E86F0
lbl_801E86E4:
/* 801E86E4  3B C0 00 00 */	li r30, 0
/* 801E86E8  48 00 00 08 */	b lbl_801E86F0
lbl_801E86EC:
/* 801E86EC  3B C0 00 01 */	li r30, 1
lbl_801E86F0:
/* 801E86F0  88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 801E86F4  28 00 00 FF */	cmplwi r0, 0xff
/* 801E86F8  41 82 00 F4 */	beq lbl_801E87EC
/* 801E86FC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801E8700  7C BD 02 14 */	add r5, r29, r0
/* 801E8704  80 85 03 C8 */	lwz r4, 0x3c8(r5)
/* 801E8708  38 6D 81 B8 */	la r3, OptYnSelEndFrameTbl(r13) /* 80450738-_SDA_BASE_ */
/* 801E870C  7C 03 00 2E */	lwzx r0, r3, r0
/* 801E8710  7C 04 00 00 */	cmpw r4, r0
/* 801E8714  41 82 00 A8 */	beq lbl_801E87BC
/* 801E8718  40 80 00 30 */	bge lbl_801E8748
/* 801E871C  38 04 00 02 */	addi r0, r4, 2
/* 801E8720  90 05 03 C8 */	stw r0, 0x3c8(r5)
/* 801E8724  88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 801E8728  54 04 10 3A */	slwi r4, r0, 2
/* 801E872C  7C BD 22 14 */	add r5, r29, r4
/* 801E8730  80 05 03 C8 */	lwz r0, 0x3c8(r5)
/* 801E8734  7C 63 20 2E */	lwzx r3, r3, r4
/* 801E8738  7C 00 18 00 */	cmpw r0, r3
/* 801E873C  40 81 00 34 */	ble lbl_801E8770
/* 801E8740  90 65 03 C8 */	stw r3, 0x3c8(r5)
/* 801E8744  48 00 00 2C */	b lbl_801E8770
lbl_801E8748:
/* 801E8748  38 04 FF FE */	addi r0, r4, -2
/* 801E874C  90 05 03 C8 */	stw r0, 0x3c8(r5)
/* 801E8750  88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 801E8754  54 04 10 3A */	slwi r4, r0, 2
/* 801E8758  7C BD 22 14 */	add r5, r29, r4
/* 801E875C  80 05 03 C8 */	lwz r0, 0x3c8(r5)
/* 801E8760  7C 63 20 2E */	lwzx r3, r3, r4
/* 801E8764  7C 00 18 00 */	cmpw r0, r3
/* 801E8768  40 80 00 08 */	bge lbl_801E8770
/* 801E876C  90 65 03 C8 */	stw r3, 0x3c8(r5)
lbl_801E8770:
/* 801E8770  88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 801E8774  54 00 10 3A */	slwi r0, r0, 2
/* 801E8778  7C 7D 02 14 */	add r3, r29, r0
/* 801E877C  80 03 03 C8 */	lwz r0, 0x3c8(r3)
/* 801E8780  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E8784  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E8788  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E878C  3C 00 43 30 */	lis r0, 0x4330
/* 801E8790  90 01 00 08 */	stw r0, 8(r1)
/* 801E8794  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E8798  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E879C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 801E87A0  D0 03 00 08 */	stfs f0, 8(r3)
/* 801E87A4  88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 801E87A8  54 00 10 3A */	slwi r0, r0, 2
/* 801E87AC  7C 7D 02 14 */	add r3, r29, r0
/* 801E87B0  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E87B4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E87B8  48 10 F8 15 */	bl animationTransform__7J2DPaneFv
lbl_801E87BC:
/* 801E87BC  88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 801E87C0  54 00 10 3A */	slwi r0, r0, 2
/* 801E87C4  7C 7D 02 14 */	add r3, r29, r0
/* 801E87C8  80 83 03 C8 */	lwz r4, 0x3c8(r3)
/* 801E87CC  38 6D 81 B8 */	la r3, OptYnSelEndFrameTbl(r13) /* 80450738-_SDA_BASE_ */
/* 801E87D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 801E87D4  7C 04 00 00 */	cmpw r4, r0
/* 801E87D8  40 82 00 0C */	bne lbl_801E87E4
/* 801E87DC  38 60 00 01 */	li r3, 1
/* 801E87E0  48 00 00 10 */	b lbl_801E87F0
lbl_801E87E4:
/* 801E87E4  38 60 00 00 */	li r3, 0
/* 801E87E8  48 00 00 08 */	b lbl_801E87F0
lbl_801E87EC:
/* 801E87EC  38 60 00 01 */	li r3, 1
lbl_801E87F0:
/* 801E87F0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801E87F4  28 00 00 01 */	cmplwi r0, 1
/* 801E87F8  40 82 00 74 */	bne lbl_801E886C
/* 801E87FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801E8800  28 00 00 01 */	cmplwi r0, 1
/* 801E8804  40 82 00 68 */	bne lbl_801E886C
/* 801E8808  88 1D 03 FA */	lbz r0, 0x3fa(r29)
/* 801E880C  28 00 00 FF */	cmplwi r0, 0xff
/* 801E8810  41 82 00 28 */	beq lbl_801E8838
/* 801E8814  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801E8818  7C 7D 02 14 */	add r3, r29, r0
/* 801E881C  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E8820  80 63 00 04 */	lwz r3, 4(r3)
/* 801E8824  38 80 00 00 */	li r4, 0
/* 801E8828  81 83 00 00 */	lwz r12, 0(r3)
/* 801E882C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801E8830  7D 89 03 A6 */	mtctr r12
/* 801E8834  4E 80 04 21 */	bctrl 
lbl_801E8838:
/* 801E8838  88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 801E883C  28 00 00 FF */	cmplwi r0, 0xff
/* 801E8840  41 82 00 28 */	beq lbl_801E8868
/* 801E8844  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801E8848  7C 7D 02 14 */	add r3, r29, r0
/* 801E884C  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E8850  80 63 00 04 */	lwz r3, 4(r3)
/* 801E8854  38 80 00 00 */	li r4, 0
/* 801E8858  81 83 00 00 */	lwz r12, 0(r3)
/* 801E885C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801E8860  7D 89 03 A6 */	mtctr r12
/* 801E8864  4E 80 04 21 */	bctrl 
lbl_801E8868:
/* 801E8868  3B E0 00 01 */	li r31, 1
lbl_801E886C:
/* 801E886C  7F E3 FB 78 */	mr r3, r31
/* 801E8870  39 61 00 20 */	addi r11, r1, 0x20
/* 801E8874  48 17 99 B5 */	bl _restgpr_29
/* 801E8878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E887C  7C 08 03 A6 */	mtlr r0
/* 801E8880  38 21 00 20 */	addi r1, r1, 0x20
/* 801E8884  4E 80 00 20 */	blr 
