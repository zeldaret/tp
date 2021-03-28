lbl_801E8888:
/* 801E8888  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E888C  7C 08 02 A6 */	mflr r0
/* 801E8890  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E8894  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801E8898  7C 7F 1B 78 */	mr r31, r3
/* 801E889C  88 03 03 F9 */	lbz r0, 0x3f9(r3)
/* 801E88A0  28 00 00 FF */	cmplwi r0, 0xff
/* 801E88A4  41 82 01 40 */	beq lbl_801E89E4
/* 801E88A8  38 00 00 FF */	li r0, 0xff
/* 801E88AC  98 01 00 08 */	stb r0, 8(r1)
/* 801E88B0  98 01 00 09 */	stb r0, 9(r1)
/* 801E88B4  98 01 00 0A */	stb r0, 0xa(r1)
/* 801E88B8  98 01 00 0B */	stb r0, 0xb(r1)
/* 801E88BC  80 01 00 08 */	lwz r0, 8(r1)
/* 801E88C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E88C4  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E88C8  54 00 10 3A */	slwi r0, r0, 2
/* 801E88CC  7C 7F 02 14 */	add r3, r31, r0
/* 801E88D0  80 63 01 E4 */	lwz r3, 0x1e4(r3)
/* 801E88D4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E88D8  38 81 00 0C */	addi r4, r1, 0xc
/* 801E88DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E88E0  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801E88E4  7D 89 03 A6 */	mtctr r12
/* 801E88E8  4E 80 04 21 */	bctrl 
/* 801E88EC  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E88F0  54 00 10 3A */	slwi r0, r0, 2
/* 801E88F4  7C 7F 02 14 */	add r3, r31, r0
/* 801E88F8  80 63 01 EC */	lwz r3, 0x1ec(r3)
/* 801E88FC  38 80 00 FF */	li r4, 0xff
/* 801E8900  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8904  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E8908  7D 89 03 A6 */	mtctr r12
/* 801E890C  4E 80 04 21 */	bctrl 
/* 801E8910  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E8914  54 00 10 3A */	slwi r0, r0, 2
/* 801E8918  7C 7F 02 14 */	add r3, r31, r0
/* 801E891C  80 63 01 F4 */	lwz r3, 0x1f4(r3)
/* 801E8920  38 80 00 FF */	li r4, 0xff
/* 801E8924  81 83 00 00 */	lwz r12, 0(r3)
/* 801E8928  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E892C  7D 89 03 A6 */	mtctr r12
/* 801E8930  4E 80 04 21 */	bctrl 
/* 801E8934  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E8938  54 00 10 3A */	slwi r0, r0, 2
/* 801E893C  7C 7F 02 14 */	add r3, r31, r0
/* 801E8940  80 63 01 FC */	lwz r3, 0x1fc(r3)
/* 801E8944  38 80 00 FF */	li r4, 0xff
/* 801E8948  81 83 00 00 */	lwz r12, 0(r3)
/* 801E894C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E8950  7D 89 03 A6 */	mtctr r12
/* 801E8954  4E 80 04 21 */	bctrl 
/* 801E8958  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E895C  54 00 10 3A */	slwi r0, r0, 2
/* 801E8960  7C 7F 02 14 */	add r3, r31, r0
/* 801E8964  80 83 01 DC */	lwz r4, 0x1dc(r3)
/* 801E8968  38 61 00 10 */	addi r3, r1, 0x10
/* 801E896C  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E8970  38 C0 00 00 */	li r6, 0
/* 801E8974  38 E0 00 00 */	li r7, 0
/* 801E8978  48 06 C5 45 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E897C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801E8980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E8984  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801E8988  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E898C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801E8990  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E8994  88 1F 03 F9 */	lbz r0, 0x3f9(r31)
/* 801E8998  54 00 10 3A */	slwi r0, r0, 2
/* 801E899C  7C 7F 02 14 */	add r3, r31, r0
/* 801E89A0  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801E89A4  80 83 00 04 */	lwz r4, 4(r3)
/* 801E89A8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E89AC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801E89B0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801E89B4  38 A0 00 01 */	li r5, 1
/* 801E89B8  4B FA C7 3D */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801E89BC  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E89C0  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E89C4  4B FA C8 DD */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E89C8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E89CC  C0 22 A9 7C */	lfs f1, lit_6507(r2)
/* 801E89D0  C0 42 A9 80 */	lfs f2, lit_6508(r2)
/* 801E89D4  C0 62 A9 84 */	lfs f3, lit_6509(r2)
/* 801E89D8  C0 82 A9 50 */	lfs f4, lit_4471(r2)
/* 801E89DC  FC A0 20 90 */	fmr f5, f4
/* 801E89E0  4B FA C7 D1 */	bl setParam__16dSelect_cursor_cFfffff
lbl_801E89E4:
/* 801E89E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801E89E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E89EC  7C 08 03 A6 */	mtlr r0
/* 801E89F0  38 21 00 30 */	addi r1, r1, 0x30
/* 801E89F4  4E 80 00 20 */	blr 
