lbl_8007C4AC:
/* 8007C4AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007C4B0  7C 08 02 A6 */	mflr r0
/* 8007C4B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007C4B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8007C4BC  48 2E 5D 15 */	bl _savegpr_26
/* 8007C4C0  7C 7B 1B 78 */	mr r27, r3
/* 8007C4C4  7C 9C 23 78 */	mr r28, r4
/* 8007C4C8  7C BD 2B 78 */	mr r29, r5
lbl_8007C4CC:
/* 8007C4CC  83 DB 00 98 */	lwz r30, 0x98(r27)
/* 8007C4D0  57 BA 04 3E */	clrlwi r26, r29, 0x10
/* 8007C4D4  57 BF 1B 78 */	rlwinm r31, r29, 3, 0xd, 0x1c
/* 8007C4D8  7F 63 DB 78 */	mr r3, r27
/* 8007C4DC  7F 44 D3 78 */	mr r4, r26
/* 8007C4E0  80 BC 00 00 */	lwz r5, 0(r28)
/* 8007C4E4  81 9B 00 04 */	lwz r12, 4(r27)
/* 8007C4E8  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8007C4EC  7D 89 03 A6 */	mtctr r12
/* 8007C4F0  4E 80 04 21 */	bctrl 
/* 8007C4F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C4F8  40 82 01 F0 */	bne lbl_8007C6E8
/* 8007C4FC  80 7B 00 94 */	lwz r3, 0x94(r27)
/* 8007C500  1C 1A 00 18 */	mulli r0, r26, 0x18
/* 8007C504  7C 83 02 14 */	add r4, r3, r0
/* 8007C508  C0 04 00 00 */	lfs f0, 0(r4)
/* 8007C50C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8007C510  C0 04 00 08 */	lfs f0, 8(r4)
/* 8007C514  EC 00 00 32 */	fmuls f0, f0, f0
/* 8007C518  EC 41 00 2A */	fadds f2, f1, f0
/* 8007C51C  C0 02 8C F8 */	lfs f0, lit_3717(r2)
/* 8007C520  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007C524  40 81 00 0C */	ble lbl_8007C530
/* 8007C528  FC 00 10 34 */	frsqrte f0, f2
/* 8007C52C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8007C530:
/* 8007C530  FC 00 12 10 */	fabs f0, f2
/* 8007C534  FC 20 00 18 */	frsp f1, f0
/* 8007C538  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007C53C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007C540  40 80 00 18 */	bge lbl_8007C558
/* 8007C544  7C 1E FA 2E */	lhzx r0, r30, r31
/* 8007C548  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007C54C  41 82 01 B0 */	beq lbl_8007C6FC
/* 8007C550  7C 1D 03 78 */	mr r29, r0
/* 8007C554  4B FF FF 78 */	b lbl_8007C4CC
lbl_8007C558:
/* 8007C558  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8007C55C  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 8007C560  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8007C564  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8007C568  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8007C56C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8007C570  D0 21 00 08 */	stfs f1, 8(r1)
/* 8007C574  7C 63 02 14 */	add r3, r3, r0
/* 8007C578  C0 63 00 04 */	lfs f3, 4(r3)
/* 8007C57C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8007C580  C0 02 8D 04 */	lfs f0, lit_3937(r2)
/* 8007C584  EC 40 10 24 */	fdivs f2, f0, f2
/* 8007C588  C0 04 00 00 */	lfs f0, 0(r4)
/* 8007C58C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8007C590  C0 04 00 08 */	lfs f0, 8(r4)
/* 8007C594  EC 03 00 32 */	fmuls f0, f3, f0
/* 8007C598  EC 01 00 2A */	fadds f0, f1, f0
/* 8007C59C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8007C5A0  80 AD 8A 00 */	lwz r5, l_start(r13)
/* 8007C5A4  28 05 00 00 */	cmplwi r5, 0
/* 8007C5A8  40 82 00 40 */	bne lbl_8007C5E8
/* 8007C5AC  80 AD 8A 04 */	lwz r5, l_wcsbuf_num(r13)
/* 8007C5B0  2C 05 00 54 */	cmpwi r5, 0x54
/* 8007C5B4  40 80 01 34 */	bge lbl_8007C6E8
/* 8007C5B8  1C 85 00 0C */	mulli r4, r5, 0xc
/* 8007C5BC  3C 60 80 42 */	lis r3, l_wcsbuf@ha
/* 8007C5C0  38 03 4B 80 */	addi r0, r3, l_wcsbuf@l
/* 8007C5C4  7C 60 22 14 */	add r3, r0, r4
/* 8007C5C8  D0 23 00 00 */	stfs f1, 0(r3)
/* 8007C5CC  B3 A3 00 04 */	sth r29, 4(r3)
/* 8007C5D0  38 00 00 00 */	li r0, 0
/* 8007C5D4  90 03 00 08 */	stw r0, 8(r3)
/* 8007C5D8  90 6D 8A 00 */	stw r3, l_start(r13)
/* 8007C5DC  38 05 00 01 */	addi r0, r5, 1
/* 8007C5E0  90 0D 8A 04 */	stw r0, l_wcsbuf_num(r13)
/* 8007C5E4  48 00 01 04 */	b lbl_8007C6E8
lbl_8007C5E8:
/* 8007C5E8  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8007C5EC  A0 05 00 04 */	lhz r0, 4(r5)
/* 8007C5F0  7C 03 00 40 */	cmplw r3, r0
/* 8007C5F4  41 82 00 F4 */	beq lbl_8007C6E8
/* 8007C5F8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8007C5FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007C600  40 81 00 3C */	ble lbl_8007C63C
/* 8007C604  80 CD 8A 04 */	lwz r6, l_wcsbuf_num(r13)
/* 8007C608  2C 06 00 54 */	cmpwi r6, 0x54
/* 8007C60C  40 80 00 DC */	bge lbl_8007C6E8
/* 8007C610  1C 86 00 0C */	mulli r4, r6, 0xc
/* 8007C614  3C 60 80 42 */	lis r3, l_wcsbuf@ha
/* 8007C618  38 03 4B 80 */	addi r0, r3, l_wcsbuf@l
/* 8007C61C  7C 60 22 14 */	add r3, r0, r4
/* 8007C620  D0 23 00 00 */	stfs f1, 0(r3)
/* 8007C624  B3 A3 00 04 */	sth r29, 4(r3)
/* 8007C628  90 A3 00 08 */	stw r5, 8(r3)
/* 8007C62C  90 6D 8A 00 */	stw r3, l_start(r13)
/* 8007C630  38 06 00 01 */	addi r0, r6, 1
/* 8007C634  90 0D 8A 04 */	stw r0, l_wcsbuf_num(r13)
/* 8007C638  48 00 00 B0 */	b lbl_8007C6E8
lbl_8007C63C:
/* 8007C63C  80 85 00 08 */	lwz r4, 8(r5)
/* 8007C640  28 04 00 00 */	cmplwi r4, 0
/* 8007C644  40 82 00 44 */	bne lbl_8007C688
/* 8007C648  80 0D 8A 04 */	lwz r0, l_wcsbuf_num(r13)
/* 8007C64C  2C 00 00 54 */	cmpwi r0, 0x54
/* 8007C650  40 80 00 98 */	bge lbl_8007C6E8
/* 8007C654  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8007C658  3C 60 80 42 */	lis r3, l_wcsbuf@ha
/* 8007C65C  38 03 4B 80 */	addi r0, r3, l_wcsbuf@l
/* 8007C660  7C 60 22 14 */	add r3, r0, r4
/* 8007C664  D0 23 00 00 */	stfs f1, 0(r3)
/* 8007C668  B3 A3 00 04 */	sth r29, 4(r3)
/* 8007C66C  38 00 00 00 */	li r0, 0
/* 8007C670  90 03 00 08 */	stw r0, 8(r3)
/* 8007C674  90 65 00 08 */	stw r3, 8(r5)
/* 8007C678  80 6D 8A 04 */	lwz r3, l_wcsbuf_num(r13)
/* 8007C67C  38 03 00 01 */	addi r0, r3, 1
/* 8007C680  90 0D 8A 04 */	stw r0, l_wcsbuf_num(r13)
/* 8007C684  48 00 00 64 */	b lbl_8007C6E8
lbl_8007C688:
/* 8007C688  A0 04 00 04 */	lhz r0, 4(r4)
/* 8007C68C  7C 03 00 40 */	cmplw r3, r0
/* 8007C690  41 82 00 58 */	beq lbl_8007C6E8
/* 8007C694  C0 04 00 00 */	lfs f0, 0(r4)
/* 8007C698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007C69C  40 81 00 44 */	ble lbl_8007C6E0
/* 8007C6A0  80 0D 8A 04 */	lwz r0, l_wcsbuf_num(r13)
/* 8007C6A4  2C 00 00 54 */	cmpwi r0, 0x54
/* 8007C6A8  40 80 00 40 */	bge lbl_8007C6E8
/* 8007C6AC  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8007C6B0  3C 60 80 42 */	lis r3, l_wcsbuf@ha
/* 8007C6B4  38 03 4B 80 */	addi r0, r3, l_wcsbuf@l
/* 8007C6B8  7C 60 22 14 */	add r3, r0, r4
/* 8007C6BC  D0 23 00 00 */	stfs f1, 0(r3)
/* 8007C6C0  B3 A3 00 04 */	sth r29, 4(r3)
/* 8007C6C4  80 05 00 08 */	lwz r0, 8(r5)
/* 8007C6C8  90 03 00 08 */	stw r0, 8(r3)
/* 8007C6CC  90 65 00 08 */	stw r3, 8(r5)
/* 8007C6D0  80 6D 8A 04 */	lwz r3, l_wcsbuf_num(r13)
/* 8007C6D4  38 03 00 01 */	addi r0, r3, 1
/* 8007C6D8  90 0D 8A 04 */	stw r0, l_wcsbuf_num(r13)
/* 8007C6DC  48 00 00 0C */	b lbl_8007C6E8
lbl_8007C6E0:
/* 8007C6E0  7C 85 23 78 */	mr r5, r4
/* 8007C6E4  4B FF FF 58 */	b lbl_8007C63C
lbl_8007C6E8:
/* 8007C6E8  7C 1E FA 2E */	lhzx r0, r30, r31
/* 8007C6EC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007C6F0  41 82 00 0C */	beq lbl_8007C6FC
/* 8007C6F4  7C 1D 03 78 */	mr r29, r0
/* 8007C6F8  4B FF FD D4 */	b lbl_8007C4CC
lbl_8007C6FC:
/* 8007C6FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8007C700  48 2E 5B 1D */	bl _restgpr_26
/* 8007C704  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007C708  7C 08 03 A6 */	mtlr r0
/* 8007C70C  38 21 00 30 */	addi r1, r1, 0x30
/* 8007C710  4E 80 00 20 */	blr 
