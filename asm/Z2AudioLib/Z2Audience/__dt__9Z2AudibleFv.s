lbl_802BD510:
/* 802BD510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD514  7C 08 02 A6 */	mflr r0
/* 802BD518  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD51C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BD520  93 C1 00 08 */	stw r30, 8(r1)
/* 802BD524  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BD528  7C 9F 23 78 */	mr r31, r4
/* 802BD52C  41 82 00 70 */	beq lbl_802BD59C
/* 802BD530  3C 80 80 3D */	lis r4, __vt__9Z2Audible@ha /* 0x803CACB8@ha */
/* 802BD534  38 04 AC B8 */	addi r0, r4, __vt__9Z2Audible@l /* 0x803CACB8@l */
/* 802BD538  90 1E 00 00 */	stw r0, 0(r30)
/* 802BD53C  38 80 00 00 */	li r4, 0
/* 802BD540  4B FE 1A 6D */	bl __dt__10JAIAudibleFv
/* 802BD544  7F E0 07 35 */	extsh. r0, r31
/* 802BD548  40 81 00 54 */	ble lbl_802BD59C
/* 802BD54C  88 0D 8D D4 */	lbz r0, data_80451354(r13)
/* 802BD550  7C 00 07 75 */	extsb. r0, r0
/* 802BD554  40 82 00 34 */	bne lbl_802BD588
/* 802BD558  3C 60 80 43 */	lis r3, data_804341E4@ha /* 0x804341E4@ha */
/* 802BD55C  38 63 41 E4 */	addi r3, r3, data_804341E4@l /* 0x804341E4@l */
/* 802BD560  4B FD 32 E9 */	bl __ct__17JASGenericMemPoolFv
/* 802BD564  3C 60 80 43 */	lis r3, data_804341E4@ha /* 0x804341E4@ha */
/* 802BD568  38 63 41 E4 */	addi r3, r3, data_804341E4@l /* 0x804341E4@l */
/* 802BD56C  3C 80 80 2C */	lis r4, func_802BD288@ha /* 0x802BD288@ha */
/* 802BD570  38 84 D2 88 */	addi r4, r4, func_802BD288@l /* 0x802BD288@l */
/* 802BD574  3C A0 80 43 */	lis r5, lit_1539@ha /* 0x804341D8@ha */
/* 802BD578  38 A5 41 D8 */	addi r5, r5, lit_1539@l /* 0x804341D8@l */
/* 802BD57C  48 0A 46 A9 */	bl __register_global_object
/* 802BD580  38 00 00 01 */	li r0, 1
/* 802BD584  98 0D 8D D4 */	stb r0, data_80451354(r13)
lbl_802BD588:
/* 802BD588  3C 60 80 43 */	lis r3, data_804341E4@ha /* 0x804341E4@ha */
/* 802BD58C  38 63 41 E4 */	addi r3, r3, data_804341E4@l /* 0x804341E4@l */
/* 802BD590  7F C4 F3 78 */	mr r4, r30
/* 802BD594  38 A0 00 68 */	li r5, 0x68
/* 802BD598  4B FD 33 FD */	bl free__17JASGenericMemPoolFPvUl
lbl_802BD59C:
/* 802BD59C  7F C3 F3 78 */	mr r3, r30
/* 802BD5A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BD5A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BD5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD5AC  7C 08 03 A6 */	mtlr r0
/* 802BD5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD5B4  4E 80 00 20 */	blr 
