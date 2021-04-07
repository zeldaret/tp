lbl_80AE93A0:
/* 80AE93A0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80AE93A4  7C 08 02 A6 */	mflr r0
/* 80AE93A8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80AE93AC  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80AE93B0  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80AE93B4  7C 7E 1B 78 */	mr r30, r3
/* 80AE93B8  3C 60 80 AF */	lis r3, m__17daNpcShoe_Param_c@ha /* 0x80AEA3B0@ha */
/* 80AE93BC  3B E3 A3 B0 */	addi r31, r3, m__17daNpcShoe_Param_c@l /* 0x80AEA3B0@l */
/* 80AE93C0  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AE93C4  4B 87 8C 55 */	bl __ptmf_test
/* 80AE93C8  2C 03 00 00 */	cmpwi r3, 0
/* 80AE93CC  41 82 00 18 */	beq lbl_80AE93E4
/* 80AE93D0  7F C3 F3 78 */	mr r3, r30
/* 80AE93D4  38 80 00 00 */	li r4, 0
/* 80AE93D8  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AE93DC  4B 87 8C A9 */	bl __ptmf_scall
/* 80AE93E0  60 00 00 00 */	nop 
lbl_80AE93E4:
/* 80AE93E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE93E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE93EC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AE93F0  28 00 00 00 */	cmplwi r0, 0
/* 80AE93F4  41 82 00 30 */	beq lbl_80AE9424
/* 80AE93F8  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80AE93FC  28 00 00 01 */	cmplwi r0, 1
/* 80AE9400  41 82 00 24 */	beq lbl_80AE9424
/* 80AE9404  80 9E 0E 00 */	lwz r4, 0xe00(r30)
/* 80AE9408  3C 04 00 01 */	addis r0, r4, 1
/* 80AE940C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AE9410  41 82 00 14 */	beq lbl_80AE9424
/* 80AE9414  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AE9418  4B 55 A2 D5 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80AE941C  38 00 FF FF */	li r0, -1
/* 80AE9420  90 1E 0E 00 */	stw r0, 0xe00(r30)
lbl_80AE9424:
/* 80AE9424  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 80AE9428  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80AE942C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AE9430  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AE9434  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80AE9438  90 01 00 30 */	stw r0, 0x30(r1)
/* 80AE943C  38 7F 00 00 */	addi r3, r31, 0
/* 80AE9440  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AE9444  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AE9448  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AE944C  90 01 00 08 */	stw r0, 8(r1)
/* 80AE9450  38 01 00 28 */	addi r0, r1, 0x28
/* 80AE9454  90 01 00 08 */	stw r0, 8(r1)
/* 80AE9458  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 80AE945C  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80AE9460  90 61 00 34 */	stw r3, 0x34(r1)
/* 80AE9464  90 01 00 38 */	stw r0, 0x38(r1)
/* 80AE9468  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80AE946C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AE9470  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AE9474  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 80AE9478  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80AE947C  90 61 00 40 */	stw r3, 0x40(r1)
/* 80AE9480  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AE9484  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80AE9488  90 01 00 48 */	stw r0, 0x48(r1)
/* 80AE948C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AE9490  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80AE9494  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80AE9498  90 61 00 10 */	stw r3, 0x10(r1)
/* 80AE949C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE94A0  38 01 00 34 */	addi r0, r1, 0x34
/* 80AE94A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE94A8  38 01 00 40 */	addi r0, r1, 0x40
/* 80AE94AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE94B0  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80AE94B4  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80AE94B8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80AE94BC  90 01 00 50 */	stw r0, 0x50(r1)
/* 80AE94C0  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80AE94C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AE94C8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80AE94CC  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 80AE94D0  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80AE94D4  90 61 00 58 */	stw r3, 0x58(r1)
/* 80AE94D8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80AE94DC  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80AE94E0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80AE94E4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80AE94E8  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 80AE94EC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80AE94F0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80AE94F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE94F8  38 01 00 4C */	addi r0, r1, 0x4c
/* 80AE94FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE9500  38 01 00 58 */	addi r0, r1, 0x58
/* 80AE9504  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE9508  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80AE950C  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80AE9510  90 61 00 64 */	stw r3, 0x64(r1)
/* 80AE9514  90 01 00 68 */	stw r0, 0x68(r1)
/* 80AE9518  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80AE951C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80AE9520  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80AE9524  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 80AE9528  80 1F 01 04 */	lwz r0, 0x104(r31)
/* 80AE952C  90 61 00 70 */	stw r3, 0x70(r1)
/* 80AE9530  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AE9534  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 80AE9538  90 01 00 78 */	stw r0, 0x78(r1)
/* 80AE953C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80AE9540  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80AE9544  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 80AE9548  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AE954C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE9550  38 01 00 64 */	addi r0, r1, 0x64
/* 80AE9554  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AE9558  38 01 00 70 */	addi r0, r1, 0x70
/* 80AE955C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE9560  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 80AE9564  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80AE9568  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80AE956C  90 01 00 80 */	stw r0, 0x80(r1)
/* 80AE9570  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 80AE9574  90 01 00 84 */	stw r0, 0x84(r1)
/* 80AE9578  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80AE957C  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 80AE9580  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE9584  38 01 00 7C */	addi r0, r1, 0x7c
/* 80AE9588  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE958C  38 A1 00 84 */	addi r5, r1, 0x84
/* 80AE9590  38 9F 01 20 */	addi r4, r31, 0x120
/* 80AE9594  38 00 00 02 */	li r0, 2
/* 80AE9598  7C 09 03 A6 */	mtctr r0
lbl_80AE959C:
/* 80AE959C  80 64 00 04 */	lwz r3, 4(r4)
/* 80AE95A0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AE95A4  90 65 00 04 */	stw r3, 4(r5)
/* 80AE95A8  94 05 00 08 */	stwu r0, 8(r5)
/* 80AE95AC  42 00 FF F0 */	bdnz lbl_80AE959C
/* 80AE95B0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE95B4  90 05 00 04 */	stw r0, 4(r5)
/* 80AE95B8  38 01 00 08 */	addi r0, r1, 8
/* 80AE95BC  90 01 00 88 */	stw r0, 0x88(r1)
/* 80AE95C0  38 01 00 10 */	addi r0, r1, 0x10
/* 80AE95C4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80AE95C8  38 01 00 18 */	addi r0, r1, 0x18
/* 80AE95CC  90 01 00 90 */	stw r0, 0x90(r1)
/* 80AE95D0  38 01 00 20 */	addi r0, r1, 0x20
/* 80AE95D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80AE95D8  38 01 00 0C */	addi r0, r1, 0xc
/* 80AE95DC  90 01 00 98 */	stw r0, 0x98(r1)
/* 80AE95E0  A8 7E 09 E0 */	lha r3, 0x9e0(r30)
/* 80AE95E4  7C 60 07 35 */	extsh. r0, r3
/* 80AE95E8  41 80 00 20 */	blt lbl_80AE9608
/* 80AE95EC  2C 03 00 05 */	cmpwi r3, 5
/* 80AE95F0  40 80 00 18 */	bge lbl_80AE9608
/* 80AE95F4  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80AE95F8  B0 1E 0E 16 */	sth r0, 0xe16(r30)
/* 80AE95FC  7F C3 F3 78 */	mr r3, r30
/* 80AE9600  38 81 00 88 */	addi r4, r1, 0x88
/* 80AE9604  4B 66 9C 61 */	bl playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80AE9608:
/* 80AE9608  38 60 00 00 */	li r3, 0
/* 80AE960C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80AE9610  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80AE9614  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80AE9618  7C 08 03 A6 */	mtlr r0
/* 80AE961C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80AE9620  4E 80 00 20 */	blr 
