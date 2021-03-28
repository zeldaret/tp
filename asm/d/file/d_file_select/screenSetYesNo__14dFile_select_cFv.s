lbl_8018C524:
/* 8018C524  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8018C528  7C 08 02 A6 */	mflr r0
/* 8018C52C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8018C530  39 61 00 40 */	addi r11, r1, 0x40
/* 8018C534  48 1D 5C 95 */	bl _savegpr_24
/* 8018C538  7C 7F 1B 78 */	mr r31, r3
/* 8018C53C  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha
/* 8018C540  3B C3 A8 48 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 8018C544  38 60 01 18 */	li r3, 0x118
/* 8018C548  48 14 27 05 */	bl __nw__FUl
/* 8018C54C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C550  41 82 00 0C */	beq lbl_8018C55C
/* 8018C554  48 16 BF 45 */	bl __ct__9J2DScreenFv
/* 8018C558  7C 60 1B 78 */	mr r0, r3
lbl_8018C55C:
/* 8018C55C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8018C560  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8018C564  3C 80 80 39 */	lis r4, d_file_d_file_select__stringBase0@ha
/* 8018C568  38 84 43 88 */	addi r4, r4, d_file_d_file_select__stringBase0@l
/* 8018C56C  38 84 01 D8 */	addi r4, r4, 0x1d8
/* 8018C570  3C A0 01 10 */	lis r5, 0x110
/* 8018C574  80 DF 00 08 */	lwz r6, 8(r31)
/* 8018C578  48 16 C0 D1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8018C57C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8018C580  48 0C 8B 69 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8018C584  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018C588  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018C58C  38 63 01 FC */	addi r3, r3, 0x1fc
/* 8018C590  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C594  48 14 7C DD */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C598  7C 7A 1B 78 */	mr r26, r3
/* 8018C59C  48 17 C4 D1 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C5A0  90 7F 03 10 */	stw r3, 0x310(r31)
/* 8018C5A4  7F 43 D3 78 */	mr r3, r26
/* 8018C5A8  48 17 C4 C5 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C5AC  90 7F 03 14 */	stw r3, 0x314(r31)
/* 8018C5B0  7F 43 D3 78 */	mr r3, r26
/* 8018C5B4  48 17 C4 B9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C5B8  90 7F 00 8C */	stw r3, 0x8c(r31)
/* 8018C5BC  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 8018C5C0  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C5C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C5C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C5CC  7D 89 03 A6 */	mtctr r12
/* 8018C5D0  4E 80 04 21 */	bctrl 
/* 8018C5D4  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 8018C5D8  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C5DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C5E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C5E4  7D 89 03 A6 */	mtctr r12
/* 8018C5E8  4E 80 04 21 */	bctrl 
/* 8018C5EC  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 8018C5F0  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C5F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C5F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C5FC  7D 89 03 A6 */	mtctr r12
/* 8018C600  4E 80 04 21 */	bctrl 
/* 8018C604  3B A0 00 00 */	li r29, 0
/* 8018C608  3B 40 00 00 */	li r26, 0
/* 8018C60C  3B 60 00 00 */	li r27, 0
/* 8018C610  3B 9E 06 C0 */	addi r28, r30, 0x6c0
lbl_8018C614:
/* 8018C614  38 60 00 6C */	li r3, 0x6c
/* 8018C618  48 14 26 35 */	bl __nw__FUl
/* 8018C61C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C620  41 82 00 28 */	beq lbl_8018C648
/* 8018C624  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C628  38 1E 06 B0 */	addi r0, r30, 0x6b0
/* 8018C62C  7C C0 DA 14 */	add r6, r0, r27
/* 8018C630  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C634  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C638  38 E0 00 00 */	li r7, 0
/* 8018C63C  39 00 00 00 */	li r8, 0
/* 8018C640  48 0C 73 45 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C644  7C 60 1B 78 */	mr r0, r3
lbl_8018C648:
/* 8018C648  7F 1F D2 14 */	add r24, r31, r26
/* 8018C64C  90 18 00 F0 */	stw r0, 0xf0(r24)
/* 8018C650  38 60 00 6C */	li r3, 0x6c
/* 8018C654  48 14 25 F9 */	bl __nw__FUl
/* 8018C658  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C65C  41 82 00 28 */	beq lbl_8018C684
/* 8018C660  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C664  38 1E 06 D0 */	addi r0, r30, 0x6d0
/* 8018C668  7C C0 DA 14 */	add r6, r0, r27
/* 8018C66C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C670  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C674  38 E0 00 00 */	li r7, 0
/* 8018C678  39 00 00 00 */	li r8, 0
/* 8018C67C  48 0C 73 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C680  7C 60 1B 78 */	mr r0, r3
lbl_8018C684:
/* 8018C684  90 18 01 C0 */	stw r0, 0x1c0(r24)
/* 8018C688  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8018C68C  7C DC DA 14 */	add r6, r28, r27
/* 8018C690  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C694  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C698  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C69C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018C6A0  7D 89 03 A6 */	mtctr r12
/* 8018C6A4  4E 80 04 21 */	bctrl 
/* 8018C6A8  38 00 00 00 */	li r0, 0
/* 8018C6AC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018C6B0  80 78 01 C0 */	lwz r3, 0x1c0(r24)
/* 8018C6B4  83 23 00 04 */	lwz r25, 4(r3)
/* 8018C6B8  4B E8 83 39 */	bl mDoExt_getMesgFont__Fv
/* 8018C6BC  7C 64 1B 78 */	mr r4, r3
/* 8018C6C0  7F 23 CB 78 */	mr r3, r25
/* 8018C6C4  81 99 00 00 */	lwz r12, 0(r25)
/* 8018C6C8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8018C6CC  7D 89 03 A6 */	mtctr r12
/* 8018C6D0  4E 80 04 21 */	bctrl 
/* 8018C6D4  38 61 00 08 */	addi r3, r1, 8
/* 8018C6D8  38 8D 81 48 */	la r4, l_msgNum2(r13) /* 804506C8-_SDA_BASE_ */
/* 8018C6DC  7C 84 E8 AE */	lbzx r4, r4, r29
/* 8018C6E0  4B E9 39 E1 */	bl fopMsgM_messageGet__FPcUl
/* 8018C6E4  80 78 01 C0 */	lwz r3, 0x1c0(r24)
/* 8018C6E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C6EC  38 81 00 08 */	addi r4, r1, 8
/* 8018C6F0  4C C6 31 82 */	crclr 6
/* 8018C6F4  48 17 3F 6D */	bl setString__10J2DTextBoxFPCce
/* 8018C6F8  3B BD 00 01 */	addi r29, r29, 1
/* 8018C6FC  2C 1D 00 02 */	cmpwi r29, 2
/* 8018C700  3B 5A 00 04 */	addi r26, r26, 4
/* 8018C704  3B 7B 00 08 */	addi r27, r27, 8
/* 8018C708  41 80 FF 0C */	blt lbl_8018C614
/* 8018C70C  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018C710  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018C714  38 63 02 20 */	addi r3, r3, 0x220
/* 8018C718  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C71C  48 14 7B 55 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C720  48 17 C3 4D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C724  90 7F 03 18 */	stw r3, 0x318(r31)
/* 8018C728  80 7F 03 18 */	lwz r3, 0x318(r31)
/* 8018C72C  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C730  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C734  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C738  7D 89 03 A6 */	mtctr r12
/* 8018C73C  4E 80 04 21 */	bctrl 
/* 8018C740  38 00 00 00 */	li r0, 0
/* 8018C744  90 1F 03 1C */	stw r0, 0x31c(r31)
/* 8018C748  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018C74C  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018C750  38 63 02 44 */	addi r3, r3, 0x244
/* 8018C754  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C758  48 14 7B 19 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C75C  48 17 C3 11 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C760  90 7F 03 20 */	stw r3, 0x320(r31)
/* 8018C764  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 8018C768  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C76C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C770  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C774  7D 89 03 A6 */	mtctr r12
/* 8018C778  4E 80 04 21 */	bctrl 
/* 8018C77C  38 00 00 00 */	li r0, 0
/* 8018C780  90 1F 03 24 */	stw r0, 0x324(r31)
/* 8018C784  3B 80 00 00 */	li r28, 0
/* 8018C788  3B 60 00 00 */	li r27, 0
/* 8018C78C  3B 40 00 00 */	li r26, 0
lbl_8018C790:
/* 8018C790  38 60 00 6C */	li r3, 0x6c
/* 8018C794  48 14 24 B9 */	bl __nw__FUl
/* 8018C798  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C79C  41 82 00 28 */	beq lbl_8018C7C4
/* 8018C7A0  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C7A4  38 1E 06 E0 */	addi r0, r30, 0x6e0
/* 8018C7A8  7C C0 D2 14 */	add r6, r0, r26
/* 8018C7AC  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C7B0  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C7B4  38 E0 00 00 */	li r7, 0
/* 8018C7B8  39 00 00 00 */	li r8, 0
/* 8018C7BC  48 0C 71 C9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C7C0  7C 60 1B 78 */	mr r0, r3
lbl_8018C7C4:
/* 8018C7C4  7F BF DA 14 */	add r29, r31, r27
/* 8018C7C8  90 1D 01 A0 */	stw r0, 0x1a0(r29)
/* 8018C7CC  38 60 00 6C */	li r3, 0x6c
/* 8018C7D0  48 14 24 7D */	bl __nw__FUl
/* 8018C7D4  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C7D8  41 82 00 28 */	beq lbl_8018C800
/* 8018C7DC  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C7E0  38 1E 06 F0 */	addi r0, r30, 0x6f0
/* 8018C7E4  7C C0 D2 14 */	add r6, r0, r26
/* 8018C7E8  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C7EC  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C7F0  38 E0 00 00 */	li r7, 0
/* 8018C7F4  39 00 00 00 */	li r8, 0
/* 8018C7F8  48 0C 71 8D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C7FC  7C 60 1B 78 */	mr r0, r3
lbl_8018C800:
/* 8018C800  90 1D 01 A8 */	stw r0, 0x1a8(r29)
/* 8018C804  38 60 00 6C */	li r3, 0x6c
/* 8018C808  48 14 24 45 */	bl __nw__FUl
/* 8018C80C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C810  41 82 00 28 */	beq lbl_8018C838
/* 8018C814  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 8018C818  38 1E 07 00 */	addi r0, r30, 0x700
/* 8018C81C  7C C0 D2 14 */	add r6, r0, r26
/* 8018C820  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C824  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C828  38 E0 00 00 */	li r7, 0
/* 8018C82C  39 00 00 00 */	li r8, 0
/* 8018C830  48 0C 71 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C834  7C 60 1B 78 */	mr r0, r3
lbl_8018C838:
/* 8018C838  90 1D 01 B0 */	stw r0, 0x1b0(r29)
/* 8018C83C  80 7D 01 A0 */	lwz r3, 0x1a0(r29)
/* 8018C840  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C844  80 9F 03 18 */	lwz r4, 0x318(r31)
/* 8018C848  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C84C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018C850  7D 89 03 A6 */	mtctr r12
/* 8018C854  4E 80 04 21 */	bctrl 
/* 8018C858  80 7D 01 A8 */	lwz r3, 0x1a8(r29)
/* 8018C85C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C860  80 9F 03 18 */	lwz r4, 0x318(r31)
/* 8018C864  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C868  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018C86C  7D 89 03 A6 */	mtctr r12
/* 8018C870  4E 80 04 21 */	bctrl 
/* 8018C874  80 7D 01 B0 */	lwz r3, 0x1b0(r29)
/* 8018C878  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C87C  80 9F 03 18 */	lwz r4, 0x318(r31)
/* 8018C880  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C884  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018C888  7D 89 03 A6 */	mtctr r12
/* 8018C88C  4E 80 04 21 */	bctrl 
/* 8018C890  80 7D 01 A8 */	lwz r3, 0x1a8(r29)
/* 8018C894  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C898  80 9F 03 20 */	lwz r4, 0x320(r31)
/* 8018C89C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C8A0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018C8A4  7D 89 03 A6 */	mtctr r12
/* 8018C8A8  4E 80 04 21 */	bctrl 
/* 8018C8AC  80 7D 01 B0 */	lwz r3, 0x1b0(r29)
/* 8018C8B0  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C8B4  80 9F 03 20 */	lwz r4, 0x320(r31)
/* 8018C8B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C8BC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018C8C0  7D 89 03 A6 */	mtctr r12
/* 8018C8C4  4E 80 04 21 */	bctrl 
/* 8018C8C8  3B 9C 00 01 */	addi r28, r28, 1
/* 8018C8CC  2C 1C 00 02 */	cmpwi r28, 2
/* 8018C8D0  3B 7B 00 04 */	addi r27, r27, 4
/* 8018C8D4  3B 5A 00 08 */	addi r26, r26, 8
/* 8018C8D8  41 80 FE B8 */	blt lbl_8018C790
/* 8018C8DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8018C8E0  48 1D 59 35 */	bl _restgpr_24
/* 8018C8E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8018C8E8  7C 08 03 A6 */	mtlr r0
/* 8018C8EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8018C8F0  4E 80 00 20 */	blr 
