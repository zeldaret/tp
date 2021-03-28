lbl_8020C400:
/* 8020C400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020C404  7C 08 02 A6 */	mflr r0
/* 8020C408  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020C40C  39 61 00 20 */	addi r11, r1, 0x20
/* 8020C410  48 15 5D C5 */	bl _savegpr_27
/* 8020C414  7C 7F 1B 78 */	mr r31, r3
/* 8020C418  3B 60 00 00 */	li r27, 0
/* 8020C41C  3B C0 00 00 */	li r30, 0
/* 8020C420  3B A0 00 00 */	li r29, 0
/* 8020C424  3C 60 80 3C */	lis r3, haku_tag@ha
/* 8020C428  3B 83 F2 88 */	addi r28, r3, haku_tag@l
lbl_8020C42C:
/* 8020C42C  38 60 00 6C */	li r3, 0x6c
/* 8020C430  48 0C 28 1D */	bl __nw__FUl
/* 8020C434  7C 64 1B 79 */	or. r4, r3, r3
/* 8020C438  41 82 00 24 */	beq lbl_8020C45C
/* 8020C43C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8020C440  7C DC EA 14 */	add r6, r28, r29
/* 8020C444  80 A6 00 00 */	lwz r5, 0(r6)
/* 8020C448  80 C6 00 04 */	lwz r6, 4(r6)
/* 8020C44C  38 E0 00 00 */	li r7, 0
/* 8020C450  39 00 00 00 */	li r8, 0
/* 8020C454  48 04 75 31 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020C458  7C 64 1B 78 */	mr r4, r3
lbl_8020C45C:
/* 8020C45C  38 1E 00 14 */	addi r0, r30, 0x14
/* 8020C460  7C 9F 01 2E */	stwx r4, r31, r0
/* 8020C464  3B 7B 00 01 */	addi r27, r27, 1
/* 8020C468  2C 1B 00 06 */	cmpwi r27, 6
/* 8020C46C  3B DE 00 04 */	addi r30, r30, 4
/* 8020C470  3B BD 00 08 */	addi r29, r29, 8
/* 8020C474  41 80 FF B8 */	blt lbl_8020C42C
/* 8020C478  38 60 00 6C */	li r3, 0x6c
/* 8020C47C  48 0C 27 D1 */	bl __nw__FUl
/* 8020C480  7C 60 1B 79 */	or. r0, r3, r3
/* 8020C484  41 82 00 28 */	beq lbl_8020C4AC
/* 8020C488  80 9F 00 04 */	lwz r4, 4(r31)
/* 8020C48C  3C A0 6E 61 */	lis r5, 0x6E61 /* 0x6E616C6C@ha */
/* 8020C490  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E616C6C@l */
/* 8020C494  3C A0 68 61 */	lis r5, 0x6861 /* 0x68616B75@ha */
/* 8020C498  38 A5 6B 75 */	addi r5, r5, 0x6B75 /* 0x68616B75@l */
/* 8020C49C  38 E0 00 00 */	li r7, 0
/* 8020C4A0  39 00 00 00 */	li r8, 0
/* 8020C4A4  48 04 74 E1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020C4A8  7C 60 1B 78 */	mr r0, r3
lbl_8020C4AC:
/* 8020C4AC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8020C4B0  38 60 01 18 */	li r3, 0x118
/* 8020C4B4  48 0C 27 99 */	bl __nw__FUl
/* 8020C4B8  7C 60 1B 79 */	or. r0, r3, r3
/* 8020C4BC  41 82 00 0C */	beq lbl_8020C4C8
/* 8020C4C0  48 0E BF D9 */	bl __ct__9J2DScreenFv
/* 8020C4C4  7C 60 1B 78 */	mr r0, r3
lbl_8020C4C8:
/* 8020C4C8  90 1F 00 08 */	stw r0, 8(r31)
/* 8020C4CC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020C4D0  3C 80 80 3A */	lis r4, d_meter_d_meter_hakusha__stringBase0@ha
/* 8020C4D4  38 84 81 B0 */	addi r4, r4, d_meter_d_meter_hakusha__stringBase0@l
/* 8020C4D8  3C A0 00 02 */	lis r5, 2
/* 8020C4DC  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8020C4E0  3B C6 61 C0 */	addi r30, r6, g_dComIfG_gameInfo@l
/* 8020C4E4  80 DE 5D 30 */	lwz r6, 0x5d30(r30)
/* 8020C4E8  48 0E C1 61 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8020C4EC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020C4F0  48 04 8B F9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8020C4F4  38 60 00 6C */	li r3, 0x6c
/* 8020C4F8  48 0C 27 55 */	bl __nw__FUl
/* 8020C4FC  7C 60 1B 79 */	or. r0, r3, r3
/* 8020C500  41 82 00 24 */	beq lbl_8020C524
/* 8020C504  80 9F 00 08 */	lwz r4, 8(r31)
/* 8020C508  3C A0 6B 75 */	lis r5, 0x6B75 /* 0x6B755F6E@ha */
/* 8020C50C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6B755F6E@l */
/* 8020C510  38 A0 68 61 */	li r5, 0x6861
/* 8020C514  38 E0 00 02 */	li r7, 2
/* 8020C518  39 00 00 00 */	li r8, 0
/* 8020C51C  48 04 74 69 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020C520  7C 60 1B 78 */	mr r0, r3
lbl_8020C524:
/* 8020C524  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8020C528  38 60 00 6C */	li r3, 0x6c
/* 8020C52C  48 0C 27 21 */	bl __nw__FUl
/* 8020C530  7C 60 1B 79 */	or. r0, r3, r3
/* 8020C534  41 82 00 28 */	beq lbl_8020C55C
/* 8020C538  80 9F 00 08 */	lwz r4, 8(r31)
/* 8020C53C  3C A0 5F 62 */	lis r5, 0x5F62 /* 0x5F625F6E@ha */
/* 8020C540  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F625F6E@l */
/* 8020C544  3C A0 68 61 */	lis r5, 0x6861 /* 0x68616B75@ha */
/* 8020C548  38 A5 6B 75 */	addi r5, r5, 0x6B75 /* 0x68616B75@l */
/* 8020C54C  38 E0 00 02 */	li r7, 2
/* 8020C550  39 00 00 00 */	li r8, 0
/* 8020C554  48 04 74 31 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020C558  7C 60 1B 78 */	mr r0, r3
lbl_8020C55C:
/* 8020C55C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8020C560  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8020C564  C0 22 AE 00 */	lfs f1, lit_3793(r2)
/* 8020C568  48 04 92 69 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020C56C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020C570  C0 22 AE 00 */	lfs f1, lit_3793(r2)
/* 8020C574  48 04 92 5D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020C578  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8020C57C  48 04 90 8D */	bl hide__13CPaneMgrAlphaFv
/* 8020C580  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020C584  48 04 90 85 */	bl hide__13CPaneMgrAlphaFv
/* 8020C588  38 E0 00 00 */	li r7, 0
/* 8020C58C  38 60 00 00 */	li r3, 0
/* 8020C590  38 80 00 00 */	li r4, 0
/* 8020C594  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020C598  38 A0 00 00 */	li r5, 0
/* 8020C59C  38 00 00 0C */	li r0, 0xc
/* 8020C5A0  7C 09 03 A6 */	mtctr r0
lbl_8020C5A4:
/* 8020C5A4  7C DF 22 14 */	add r6, r31, r4
/* 8020C5A8  D0 06 00 38 */	stfs f0, 0x38(r6)
/* 8020C5AC  D0 06 00 3C */	stfs f0, 0x3c(r6)
/* 8020C5B0  98 A6 00 40 */	stb r5, 0x40(r6)
/* 8020C5B4  38 03 00 C8 */	addi r0, r3, 0xc8
/* 8020C5B8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8020C5BC  38 07 01 0A */	addi r0, r7, 0x10a
/* 8020C5C0  7C BF 01 AE */	stbx r5, r31, r0
/* 8020C5C4  38 E7 00 01 */	addi r7, r7, 1
/* 8020C5C8  38 63 00 04 */	addi r3, r3, 4
/* 8020C5CC  38 84 00 0C */	addi r4, r4, 0xc
/* 8020C5D0  42 00 FF D4 */	bdnz lbl_8020C5A4
/* 8020C5D4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020C5D8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020C5DC  A8 03 00 96 */	lha r0, 0x96(r3)
/* 8020C5E0  B0 1F 01 08 */	sth r0, 0x108(r31)
/* 8020C5E4  38 60 01 18 */	li r3, 0x118
/* 8020C5E8  48 0C 26 65 */	bl __nw__FUl
/* 8020C5EC  7C 60 1B 79 */	or. r0, r3, r3
/* 8020C5F0  41 82 00 0C */	beq lbl_8020C5FC
/* 8020C5F4  48 0E BE A5 */	bl __ct__9J2DScreenFv
/* 8020C5F8  7C 60 1B 78 */	mr r0, r3
lbl_8020C5FC:
/* 8020C5FC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8020C600  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8020C604  3C 80 80 3A */	lis r4, d_meter_d_meter_hakusha__stringBase0@ha
/* 8020C608  38 84 81 B0 */	addi r4, r4, d_meter_d_meter_hakusha__stringBase0@l
/* 8020C60C  38 84 00 23 */	addi r4, r4, 0x23
/* 8020C610  3C A0 00 02 */	lis r5, 2
/* 8020C614  80 DE 5D 30 */	lwz r6, 0x5d30(r30)
/* 8020C618  48 0E C0 31 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8020C61C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8020C620  48 04 8A C9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8020C624  38 60 00 6C */	li r3, 0x6c
/* 8020C628  48 0C 26 25 */	bl __nw__FUl
/* 8020C62C  7C 60 1B 79 */	or. r0, r3, r3
/* 8020C630  41 82 00 24 */	beq lbl_8020C654
/* 8020C634  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8020C638  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 8020C63C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 8020C640  38 A0 61 62 */	li r5, 0x6162
/* 8020C644  38 E0 00 02 */	li r7, 2
/* 8020C648  39 00 00 00 */	li r8, 0
/* 8020C64C  48 04 73 39 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020C650  7C 60 1B 78 */	mr r0, r3
lbl_8020C654:
/* 8020C654  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8020C658  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8020C65C  48 04 8F 6D */	bl show__13CPaneMgrAlphaFv
/* 8020C660  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8020C664  C0 22 AE 00 */	lfs f1, lit_3793(r2)
/* 8020C668  48 04 91 69 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020C66C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8020C670  3C 80 66 6F */	lis r4, 0x666F /* 0x666F5F6E@ha */
/* 8020C674  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x666F5F6E@l */
/* 8020C678  38 A0 69 6E */	li r5, 0x696e
/* 8020C67C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C680  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020C684  7D 89 03 A6 */	mtctr r12
/* 8020C688  4E 80 04 21 */	bctrl 
/* 8020C68C  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020C690  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020C694  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 8020C698  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C69C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C6A0  7D 89 03 A6 */	mtctr r12
/* 8020C6A4  4E 80 04 21 */	bctrl 
/* 8020C6A8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020C6AC  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l
/* 8020C6B0  C0 1D 03 B8 */	lfs f0, 0x3b8(r29)
/* 8020C6B4  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 8020C6B8  C0 1D 03 BC */	lfs f0, 0x3bc(r29)
/* 8020C6BC  D0 1F 01 04 */	stfs f0, 0x104(r31)
/* 8020C6C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020C6C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020C6C8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8020C6CC  3C 80 80 3A */	lis r4, d_meter_d_meter_hakusha__stringBase0@ha
/* 8020C6D0  38 84 81 B0 */	addi r4, r4, d_meter_d_meter_hakusha__stringBase0@l
/* 8020C6D4  38 84 00 46 */	addi r4, r4, 0x46
/* 8020C6D8  48 15 C2 BD */	bl strcmp
/* 8020C6DC  2C 03 00 00 */	cmpwi r3, 0
/* 8020C6E0  40 82 00 28 */	bne lbl_8020C708
/* 8020C6E4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020C6E8  C0 22 AE 04 */	lfs f1, lit_3794(r2)
/* 8020C6EC  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8020C6F0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8020C6F4  C0 04 03 B0 */	lfs f0, 0x3b0(r4)
/* 8020C6F8  EC 21 00 2A */	fadds f1, f1, f0
/* 8020C6FC  C0 44 03 B4 */	lfs f2, 0x3b4(r4)
/* 8020C700  48 04 7E B1 */	bl paneTrans__8CPaneMgrFff
/* 8020C704  48 00 00 1C */	b lbl_8020C720
lbl_8020C708:
/* 8020C708  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020C70C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8020C710  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8020C714  C0 24 03 B0 */	lfs f1, 0x3b0(r4)
/* 8020C718  C0 44 03 B4 */	lfs f2, 0x3b4(r4)
/* 8020C71C  48 04 7E 95 */	bl paneTrans__8CPaneMgrFff
lbl_8020C720:
/* 8020C720  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020C724  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020C728  C0 03 03 AC */	lfs f0, 0x3ac(r3)
/* 8020C72C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020C730  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C734  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020C738  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020C73C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C740  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C744  7D 89 03 A6 */	mtctr r12
/* 8020C748  4E 80 04 21 */	bctrl 
/* 8020C74C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8020C750  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 8020C754  C0 5D 03 BC */	lfs f2, 0x3bc(r29)
/* 8020C758  48 04 7E 59 */	bl paneTrans__8CPaneMgrFff
/* 8020C75C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020C760  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020C764  C0 03 03 C0 */	lfs f0, 0x3c0(r3)
/* 8020C768  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8020C76C  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C770  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020C774  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020C778  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C77C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C780  7D 89 03 A6 */	mtctr r12
/* 8020C784  4E 80 04 21 */	bctrl 
/* 8020C788  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020C78C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020C790  C0 03 03 9C */	lfs f0, 0x39c(r3)
/* 8020C794  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8020C798  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C79C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020C7A0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020C7A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C7A8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C7AC  7D 89 03 A6 */	mtctr r12
/* 8020C7B0  4E 80 04 21 */	bctrl 
/* 8020C7B4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020C7B8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020C7BC  C0 03 03 A4 */	lfs f0, 0x3a4(r3)
/* 8020C7C0  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020C7C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C7C8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020C7CC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020C7D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C7D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C7D8  7D 89 03 A6 */	mtctr r12
/* 8020C7DC  4E 80 04 21 */	bctrl 
/* 8020C7E0  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020C7E4  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 8020C7E8  D0 1F 00 FC */	stfs f0, 0xfc(r31)
/* 8020C7EC  38 60 00 04 */	li r3, 4
/* 8020C7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8020C7F4  48 15 5A 2D */	bl _restgpr_27
/* 8020C7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020C7FC  7C 08 03 A6 */	mtlr r0
/* 8020C800  38 21 00 20 */	addi r1, r1, 0x20
/* 8020C804  4E 80 00 20 */	blr 
