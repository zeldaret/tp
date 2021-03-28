lbl_8022E860:
/* 8022E860  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8022E864  7C 08 02 A6 */	mflr r0
/* 8022E868  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022E86C  39 61 00 50 */	addi r11, r1, 0x50
/* 8022E870  48 13 39 69 */	bl _savegpr_28
/* 8022E874  7C 7C 1B 78 */	mr r28, r3
/* 8022E878  80 83 00 04 */	lwz r4, 4(r3)
/* 8022E87C  C0 04 04 54 */	lfs f0, 0x454(r4)
/* 8022E880  EC 61 00 32 */	fmuls f3, f1, f0
/* 8022E884  C0 22 B0 5C */	lfs f1, lit_4026(r2)
/* 8022E888  C0 04 04 20 */	lfs f0, 0x420(r4)
/* 8022E88C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8022E890  EC 01 00 2A */	fadds f0, f1, f0
/* 8022E894  FC 00 00 1E */	fctiwz f0, f0
/* 8022E898  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8022E89C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022E8A0  C0 44 04 24 */	lfs f2, 0x424(r4)
/* 8022E8A4  EC 03 00 B2 */	fmuls f0, f3, f2
/* 8022E8A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8022E8AC  FC 00 00 1E */	fctiwz f0, f0
/* 8022E8B0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8022E8B4  83 C1 00 34 */	lwz r30, 0x34(r1)
/* 8022E8B8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8022E8BC  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 8022E8C0  41 82 00 50 */	beq lbl_8022E910
/* 8022E8C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8022E8C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8022E8CC  FC 00 00 1E */	fctiwz f0, f0
/* 8022E8D0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8022E8D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022E8D8  7C 04 07 34 */	extsh r4, r0
/* 8022E8DC  7F C0 07 34 */	extsh r0, r30
/* 8022E8E0  7C 04 00 50 */	subf r0, r4, r0
/* 8022E8E4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8022E8E8  7C 00 01 94 */	addze r0, r0
/* 8022E8EC  7C 1D 07 34 */	extsh r29, r0
/* 8022E8F0  D0 7C 00 44 */	stfs f3, 0x44(r28)
/* 8022E8F4  A8 1C 01 40 */	lha r0, 0x140(r28)
/* 8022E8F8  7C 00 EA 14 */	add r0, r0, r29
/* 8022E8FC  B0 1C 01 40 */	sth r0, 0x140(r28)
/* 8022E900  7F A4 EB 78 */	mr r4, r29
/* 8022E904  38 A0 00 01 */	li r5, 1
/* 8022E908  48 00 00 B9 */	bl do_transY__28jmessage_tRenderingProcessorFsb
/* 8022E90C  B3 BC 01 3E */	sth r29, 0x13e(r28)
lbl_8022E910:
/* 8022E910  38 61 00 08 */	addi r3, r1, 8
/* 8022E914  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022E918  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022E91C  38 84 00 2B */	addi r4, r4, 0x2b
/* 8022E920  7F E5 07 34 */	extsh r5, r31
/* 8022E924  7F C6 07 34 */	extsh r6, r30
/* 8022E928  4C C6 31 82 */	crclr 6
/* 8022E92C  48 13 7B B1 */	bl sprintf
/* 8022E930  7F 83 E3 78 */	mr r3, r28
/* 8022E934  38 81 00 08 */	addi r4, r1, 8
/* 8022E938  38 A0 00 00 */	li r5, 0
/* 8022E93C  38 C0 00 01 */	li r6, 1
/* 8022E940  38 E0 00 00 */	li r7, 0
/* 8022E944  48 00 05 BD */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022E948  39 61 00 50 */	addi r11, r1, 0x50
/* 8022E94C  48 13 38 D9 */	bl _restgpr_28
/* 8022E950  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022E954  7C 08 03 A6 */	mtlr r0
/* 8022E958  38 21 00 50 */	addi r1, r1, 0x50
/* 8022E95C  4E 80 00 20 */	blr 
