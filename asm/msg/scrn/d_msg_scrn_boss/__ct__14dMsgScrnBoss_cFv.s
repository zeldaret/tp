lbl_8023C5C8:
/* 8023C5C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8023C5CC  7C 08 02 A6 */	mflr r0
/* 8023C5D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023C5D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8023C5D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8023C5DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C5E0  48 12 5B F1 */	bl _savegpr_26
/* 8023C5E4  7C 7E 1B 78 */	mr r30, r3
/* 8023C5E8  4B FF FA F5 */	bl __ct__14dMsgScrnBase_cFv
/* 8023C5EC  3C 60 80 3C */	lis r3, __vt__14dMsgScrnBoss_c@ha /* 0x803C0DE8@ha */
/* 8023C5F0  38 03 0D E8 */	addi r0, r3, __vt__14dMsgScrnBoss_c@l /* 0x803C0DE8@l */
/* 8023C5F4  90 1E 00 00 */	stw r0, 0(r30)
/* 8023C5F8  7F C3 F3 78 */	mr r3, r30
/* 8023C5FC  4B FF FB 71 */	bl init__14dMsgScrnBase_cFv
/* 8023C600  38 60 01 18 */	li r3, 0x118
/* 8023C604  48 09 26 49 */	bl __nw__FUl
/* 8023C608  7C 60 1B 79 */	or. r0, r3, r3
/* 8023C60C  41 82 00 0C */	beq lbl_8023C618
/* 8023C610  48 0B BE 89 */	bl __ct__9J2DScreenFv
/* 8023C614  7C 60 1B 78 */	mr r0, r3
lbl_8023C618:
/* 8023C618  90 1E 00 04 */	stw r0, 4(r30)
/* 8023C61C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8023C620  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_boss__stringBase0@ha /* 0x803998F8@ha */
/* 8023C624  38 84 98 F8 */	addi r4, r4, msg_scrn_d_msg_scrn_boss__stringBase0@l /* 0x803998F8@l */
/* 8023C628  3C A0 00 02 */	lis r5, 2
/* 8023C62C  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023C630  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023C634  80 C6 5C 7C */	lwz r6, 0x5c7c(r6)
/* 8023C638  48 0B C0 11 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8023C63C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8023C640  48 01 8A A9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8023C644  38 60 00 6C */	li r3, 0x6c
/* 8023C648  48 09 26 05 */	bl __nw__FUl
/* 8023C64C  7C 60 1B 79 */	or. r0, r3, r3
/* 8023C650  41 82 00 24 */	beq lbl_8023C674
/* 8023C654  80 9E 00 04 */	lwz r4, 4(r30)
/* 8023C658  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 8023C65C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 8023C660  38 A0 00 6E */	li r5, 0x6e
/* 8023C664  38 E0 00 02 */	li r7, 2
/* 8023C668  39 00 00 00 */	li r8, 0
/* 8023C66C  48 01 73 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023C670  7C 60 1B 78 */	mr r0, r3
lbl_8023C674:
/* 8023C674  90 1E 00 08 */	stw r0, 8(r30)
/* 8023C678  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8023C67C  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 8023C680  C0 24 00 C4 */	lfs f1, 0xc4(r4)
/* 8023C684  80 7E 00 08 */	lwz r3, 8(r30)
/* 8023C688  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C68C  C0 04 00 98 */	lfs f0, 0x98(r4)
/* 8023C690  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023C694  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023C698  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C69C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023C6A0  7D 89 03 A6 */	mtctr r12
/* 8023C6A4  4E 80 04 21 */	bctrl 
/* 8023C6A8  38 60 00 6C */	li r3, 0x6c
/* 8023C6AC  48 09 25 A1 */	bl __nw__FUl
/* 8023C6B0  7C 60 1B 79 */	or. r0, r3, r3
/* 8023C6B4  41 82 00 28 */	beq lbl_8023C6DC
/* 8023C6B8  80 9E 00 04 */	lwz r4, 4(r30)
/* 8023C6BC  3C A0 6E 74 */	lis r5, 0x6E74 /* 0x6E745F6E@ha */
/* 8023C6C0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6E745F6E@l */
/* 8023C6C4  3C A0 73 5F */	lis r5, 0x735F /* 0x735F666F@ha */
/* 8023C6C8  38 A5 66 6F */	addi r5, r5, 0x666F /* 0x735F666F@l */
/* 8023C6CC  38 E0 00 00 */	li r7, 0
/* 8023C6D0  39 00 00 00 */	li r8, 0
/* 8023C6D4  48 01 72 B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023C6D8  7C 60 1B 78 */	mr r0, r3
lbl_8023C6DC:
/* 8023C6DC  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8023C6E0  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8023C6E4  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 8023C6E8  C0 24 01 A8 */	lfs f1, 0x1a8(r4)
/* 8023C6EC  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 8023C6F0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C6F4  C0 04 01 A0 */	lfs f0, 0x1a0(r4)
/* 8023C6F8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023C6FC  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023C700  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C704  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023C708  7D 89 03 A6 */	mtctr r12
/* 8023C70C  4E 80 04 21 */	bctrl 
/* 8023C710  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 8023C714  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8023C718  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 8023C71C  C0 24 01 90 */	lfs f1, 0x190(r4)
/* 8023C720  C0 44 01 98 */	lfs f2, 0x198(r4)
/* 8023C724  48 01 7E 8D */	bl paneTrans__8CPaneMgrFff
/* 8023C728  38 60 00 6C */	li r3, 0x6c
/* 8023C72C  48 09 25 21 */	bl __nw__FUl
/* 8023C730  7C 60 1B 79 */	or. r0, r3, r3
/* 8023C734  41 82 00 24 */	beq lbl_8023C758
/* 8023C738  80 9E 00 04 */	lwz r4, 4(r30)
/* 8023C73C  3C A0 73 65 */	lis r5, 0x7365 /* 0x73655F6E@ha */
/* 8023C740  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x73655F6E@l */
/* 8023C744  38 A0 62 61 */	li r5, 0x6261
/* 8023C748  38 E0 00 02 */	li r7, 2
/* 8023C74C  39 00 00 00 */	li r8, 0
/* 8023C750  48 01 72 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023C754  7C 60 1B 78 */	mr r0, r3
lbl_8023C758:
/* 8023C758  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 8023C75C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8023C760  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 8023C764  C0 24 01 C8 */	lfs f1, 0x1c8(r4)
/* 8023C768  80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 8023C76C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C770  C0 04 01 C0 */	lfs f0, 0x1c0(r4)
/* 8023C774  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023C778  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023C77C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C780  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023C784  7D 89 03 A6 */	mtctr r12
/* 8023C788  4E 80 04 21 */	bctrl 
/* 8023C78C  80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 8023C790  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 8023C794  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 8023C798  C0 24 01 B0 */	lfs f1, 0x1b0(r4)
/* 8023C79C  C0 44 01 B8 */	lfs f2, 0x1b8(r4)
/* 8023C7A0  48 01 7E 11 */	bl paneTrans__8CPaneMgrFff
/* 8023C7A4  3B E0 00 00 */	li r31, 0
/* 8023C7A8  3B A0 00 00 */	li r29, 0
/* 8023C7AC  3B 80 00 00 */	li r28, 0
/* 8023C7B0  C3 E2 B1 B0 */	lfs f31, lit_3854(r2)
/* 8023C7B4  3C 60 80 3A */	lis r3, msg_scrn_d_msg_scrn_boss__stringBase0@ha /* 0x803998F8@ha */
/* 8023C7B8  3B 63 98 F8 */	addi r27, r3, msg_scrn_d_msg_scrn_boss__stringBase0@l /* 0x803998F8@l */
lbl_8023C7BC:
/* 8023C7BC  38 60 00 6C */	li r3, 0x6c
/* 8023C7C0  48 09 24 8D */	bl __nw__FUl
/* 8023C7C4  7C 64 1B 79 */	or. r4, r3, r3
/* 8023C7C8  41 82 00 2C */	beq lbl_8023C7F4
/* 8023C7CC  80 9E 00 04 */	lwz r4, 4(r30)
/* 8023C7D0  3C A0 80 3C */	lis r5, t_tag@ha /* 0x803C0DB0@ha */
/* 8023C7D4  38 05 0D B0 */	addi r0, r5, t_tag@l /* 0x803C0DB0@l */
/* 8023C7D8  7C C0 E2 14 */	add r6, r0, r28
/* 8023C7DC  80 A6 00 00 */	lwz r5, 0(r6)
/* 8023C7E0  80 C6 00 04 */	lwz r6, 4(r6)
/* 8023C7E4  38 E0 00 00 */	li r7, 0
/* 8023C7E8  39 00 00 00 */	li r8, 0
/* 8023C7EC  48 01 71 99 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8023C7F0  7C 64 1B 78 */	mr r4, r3
lbl_8023C7F4:
/* 8023C7F4  38 1D 00 0C */	addi r0, r29, 0xc
/* 8023C7F8  7C 9E 01 2E */	stwx r4, r30, r0
/* 8023C7FC  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8023C800  83 43 00 04 */	lwz r26, 4(r3)
/* 8023C804  4B DD 83 01 */	bl mDoExt_getRubyFont__Fv
/* 8023C808  7C 64 1B 78 */	mr r4, r3
/* 8023C80C  7F 43 D3 78 */	mr r3, r26
/* 8023C810  81 9A 00 00 */	lwz r12, 0(r26)
/* 8023C814  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8023C818  7D 89 03 A6 */	mtctr r12
/* 8023C81C  4E 80 04 21 */	bctrl 
/* 8023C820  38 1D 00 0C */	addi r0, r29, 0xc
/* 8023C824  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8023C828  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C82C  D3 E3 01 14 */	stfs f31, 0x114(r3)
/* 8023C830  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8023C834  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C838  38 80 01 00 */	li r4, 0x100
/* 8023C83C  38 BB 00 14 */	addi r5, r27, 0x14
/* 8023C840  4C C6 31 82 */	crclr 6
/* 8023C844  48 0C 3F 09 */	bl setString__10J2DTextBoxFsPCce
/* 8023C848  3B FF 00 01 */	addi r31, r31, 1
/* 8023C84C  2C 1F 00 07 */	cmpwi r31, 7
/* 8023C850  3B BD 00 04 */	addi r29, r29, 4
/* 8023C854  3B 9C 00 08 */	addi r28, r28, 8
/* 8023C858  41 80 FF 64 */	blt lbl_8023C7BC
/* 8023C85C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C860  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C864  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 8023C868  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8023C86C  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 8023C870  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8023C874  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C878  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C87C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8023C880  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8023C884  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023C888  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8023C88C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C890  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C894  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8023C898  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8023C89C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023C8A0  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8023C8A4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C8A8  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C8AC  C0 03 01 18 */	lfs f0, 0x118(r3)
/* 8023C8B0  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 8023C8B4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C8B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8023C8BC  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 8023C8C0  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 8023C8C4  38 60 00 00 */	li r3, 0
/* 8023C8C8  38 00 00 07 */	li r0, 7
/* 8023C8CC  7C 09 03 A6 */	mtctr r0
lbl_8023C8D0:
/* 8023C8D0  38 03 00 0C */	addi r0, r3, 0xc
/* 8023C8D4  7C 9E 00 2E */	lwzx r4, r30, r0
/* 8023C8D8  80 84 00 04 */	lwz r4, 4(r4)
/* 8023C8DC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8023C8E0  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 8023C8E4  38 63 00 04 */	addi r3, r3, 4
/* 8023C8E8  42 00 FF E8 */	bdnz lbl_8023C8D0
/* 8023C8EC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C8F0  48 01 79 F9 */	bl getGlobalPosX__8CPaneMgrFv
/* 8023C8F4  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 8023C8F8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023C8FC  48 01 7A 69 */	bl getGlobalPosY__8CPaneMgrFv
/* 8023C900  D0 3E 00 68 */	stfs f1, 0x68(r30)
/* 8023C904  7F C3 F3 78 */	mr r3, r30
/* 8023C908  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8023C90C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8023C910  39 61 00 20 */	addi r11, r1, 0x20
/* 8023C914  48 12 59 09 */	bl _restgpr_26
/* 8023C918  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023C91C  7C 08 03 A6 */	mtlr r0
/* 8023C920  38 21 00 30 */	addi r1, r1, 0x30
/* 8023C924  4E 80 00 20 */	blr 
