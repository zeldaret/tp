lbl_803273CC:
/* 803273CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803273D0  7C 08 02 A6 */	mflr r0
/* 803273D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803273D8  39 61 00 30 */	addi r11, r1, 0x30
/* 803273DC  48 03 AD E9 */	bl _savegpr_23
/* 803273E0  7C 78 1B 78 */	mr r24, r3
/* 803273E4  7C 99 23 78 */	mr r25, r4
/* 803273E8  7C BA 2B 78 */	mr r26, r5
/* 803273EC  A0 04 00 5C */	lhz r0, 0x5c(r4)
/* 803273F0  28 00 00 00 */	cmplwi r0, 0
/* 803273F4  41 82 00 48 */	beq lbl_8032743C
/* 803273F8  54 17 04 3E */	clrlwi r23, r0, 0x10
/* 803273FC  54 03 32 B2 */	rlwinm r3, r0, 6, 0xa, 0x19
/* 80327400  38 63 00 10 */	addi r3, r3, 0x10
/* 80327404  4B FA 78 C1 */	bl __nwa__FUl
/* 80327408  3C 80 80 31 */	lis r4, __ct__12J3DMatPacketFv@ha
/* 8032740C  38 84 29 48 */	addi r4, r4, __ct__12J3DMatPacketFv@l
/* 80327410  3C A0 80 31 */	lis r5, __dt__12J3DMatPacketFv@ha
/* 80327414  38 A5 29 A4 */	addi r5, r5, __dt__12J3DMatPacketFv@l
/* 80327418  38 C0 00 40 */	li r6, 0x40
/* 8032741C  7E E7 BB 78 */	mr r7, r23
/* 80327420  48 03 AA F5 */	bl __construct_new_array
/* 80327424  90 78 00 C0 */	stw r3, 0xc0(r24)
/* 80327428  80 18 00 C0 */	lwz r0, 0xc0(r24)
/* 8032742C  28 00 00 00 */	cmplwi r0, 0
/* 80327430  40 82 00 0C */	bne lbl_8032743C
/* 80327434  38 60 00 04 */	li r3, 4
/* 80327438  48 00 01 AC */	b lbl_803275E4
lbl_8032743C:
/* 8032743C  A2 F9 00 5C */	lhz r23, 0x5c(r25)
/* 80327440  3B 60 00 00 */	li r27, 0
/* 80327444  57 5E 03 18 */	rlwinm r30, r26, 0, 0xc, 0xc
/* 80327448  57 5D 03 5A */	rlwinm r29, r26, 0, 0xd, 0xd
/* 8032744C  57 5C 03 9C */	rlwinm r28, r26, 0, 0xe, 0xe
/* 80327450  48 00 01 84 */	b lbl_803275D4
lbl_80327454:
/* 80327454  80 79 00 60 */	lwz r3, 0x60(r25)
/* 80327458  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 8032745C  7F E3 00 2E */	lwzx r31, r3, r0
/* 80327460  80 78 00 C0 */	lwz r3, 0xc0(r24)
/* 80327464  57 60 32 B2 */	rlwinm r0, r27, 6, 0xa, 0x19
/* 80327468  7F 43 02 14 */	add r26, r3, r0
/* 8032746C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80327470  A0 03 00 08 */	lhz r0, 8(r3)
/* 80327474  80 78 00 C4 */	lwz r3, 0xc4(r24)
/* 80327478  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 8032747C  7C 83 02 14 */	add r4, r3, r0
/* 80327480  93 FA 00 30 */	stw r31, 0x30(r26)
/* 80327484  90 9A 00 28 */	stw r4, 0x28(r26)
/* 80327488  7F 43 D3 78 */	mr r3, r26
/* 8032748C  4B FE B5 79 */	bl addShapePacket__12J3DMatPacketFP14J3DShapePacket
/* 80327490  80 19 00 6C */	lwz r0, 0x6c(r25)
/* 80327494  90 1A 00 38 */	stw r0, 0x38(r26)
/* 80327498  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8032749C  90 1A 00 34 */	stw r0, 0x34(r26)
/* 803274A0  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 803274A4  28 00 00 01 */	cmplwi r0, 1
/* 803274A8  40 82 00 10 */	bne lbl_803274B8
/* 803274AC  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 803274B0  60 00 00 01 */	ori r0, r0, 1
/* 803274B4  90 1A 00 10 */	stw r0, 0x10(r26)
lbl_803274B8:
/* 803274B8  28 1E 00 00 */	cmplwi r30, 0
/* 803274BC  41 82 00 10 */	beq lbl_803274CC
/* 803274C0  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803274C4  90 1A 00 20 */	stw r0, 0x20(r26)
/* 803274C8  48 00 01 08 */	b lbl_803275D0
lbl_803274CC:
/* 803274CC  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 803274D0  28 00 00 01 */	cmplwi r0, 1
/* 803274D4  40 82 00 38 */	bne lbl_8032750C
/* 803274D8  28 1D 00 00 */	cmplwi r29, 0
/* 803274DC  41 82 00 10 */	beq lbl_803274EC
/* 803274E0  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803274E4  90 1A 00 20 */	stw r0, 0x20(r26)
/* 803274E8  48 00 00 E8 */	b lbl_803275D0
lbl_803274EC:
/* 803274EC  83 FF 00 48 */	lwz r31, 0x48(r31)
/* 803274F0  7F E3 FB 78 */	mr r3, r31
/* 803274F4  4B FE B0 79 */	bl single_To_Double__17J3DDisplayListObjFv
/* 803274F8  2C 03 00 00 */	cmpwi r3, 0
/* 803274FC  41 82 00 08 */	beq lbl_80327504
/* 80327500  48 00 00 E4 */	b lbl_803275E4
lbl_80327504:
/* 80327504  93 FA 00 20 */	stw r31, 0x20(r26)
/* 80327508  48 00 00 C8 */	b lbl_803275D0
lbl_8032750C:
/* 8032750C  28 1C 00 00 */	cmplwi r28, 0
/* 80327510  41 82 00 78 */	beq lbl_80327588
/* 80327514  28 1D 00 00 */	cmplwi r29, 0
/* 80327518  41 82 00 30 */	beq lbl_80327548
/* 8032751C  7F E3 FB 78 */	mr r3, r31
/* 80327520  4B FE ED 71 */	bl countDLSize__11J3DMaterialFv
/* 80327524  7C 64 1B 78 */	mr r4, r3
/* 80327528  7F E3 FB 78 */	mr r3, r31
/* 8032752C  4B FE F9 F9 */	bl newSingleSharedDisplayList__11J3DMaterialFUl
/* 80327530  2C 03 00 00 */	cmpwi r3, 0
/* 80327534  41 82 00 08 */	beq lbl_8032753C
/* 80327538  48 00 00 AC */	b lbl_803275E4
lbl_8032753C:
/* 8032753C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80327540  90 1A 00 20 */	stw r0, 0x20(r26)
/* 80327544  48 00 00 8C */	b lbl_803275D0
lbl_80327548:
/* 80327548  7F E3 FB 78 */	mr r3, r31
/* 8032754C  4B FE ED 45 */	bl countDLSize__11J3DMaterialFv
/* 80327550  7C 64 1B 78 */	mr r4, r3
/* 80327554  7F E3 FB 78 */	mr r3, r31
/* 80327558  4B FE F9 39 */	bl newSharedDisplayList__11J3DMaterialFUl
/* 8032755C  2C 03 00 00 */	cmpwi r3, 0
/* 80327560  41 82 00 08 */	beq lbl_80327568
/* 80327564  48 00 00 80 */	b lbl_803275E4
lbl_80327568:
/* 80327568  83 FF 00 48 */	lwz r31, 0x48(r31)
/* 8032756C  7F E3 FB 78 */	mr r3, r31
/* 80327570  4B FE AF FD */	bl single_To_Double__17J3DDisplayListObjFv
/* 80327574  2C 03 00 00 */	cmpwi r3, 0
/* 80327578  41 82 00 08 */	beq lbl_80327580
/* 8032757C  48 00 00 68 */	b lbl_803275E4
lbl_80327580:
/* 80327580  93 FA 00 20 */	stw r31, 0x20(r26)
/* 80327584  48 00 00 4C */	b lbl_803275D0
lbl_80327588:
/* 80327588  28 1D 00 00 */	cmplwi r29, 0
/* 8032758C  41 82 00 24 */	beq lbl_803275B0
/* 80327590  7F E3 FB 78 */	mr r3, r31
/* 80327594  4B FE EC FD */	bl countDLSize__11J3DMaterialFv
/* 80327598  7C 64 1B 78 */	mr r4, r3
/* 8032759C  7F 43 D3 78 */	mr r3, r26
/* 803275A0  4B FE B2 F9 */	bl newSingleDisplayList__13J3DDrawPacketFUl
/* 803275A4  2C 03 00 00 */	cmpwi r3, 0
/* 803275A8  41 82 00 28 */	beq lbl_803275D0
/* 803275AC  48 00 00 38 */	b lbl_803275E4
lbl_803275B0:
/* 803275B0  7F E3 FB 78 */	mr r3, r31
/* 803275B4  4B FE EC DD */	bl countDLSize__11J3DMaterialFv
/* 803275B8  7C 64 1B 78 */	mr r4, r3
/* 803275BC  7F 43 D3 78 */	mr r3, r26
/* 803275C0  4B FE B2 4D */	bl newDisplayList__13J3DDrawPacketFUl
/* 803275C4  2C 03 00 00 */	cmpwi r3, 0
/* 803275C8  41 82 00 08 */	beq lbl_803275D0
/* 803275CC  48 00 00 18 */	b lbl_803275E4
lbl_803275D0:
/* 803275D0  3B 7B 00 01 */	addi r27, r27, 1
lbl_803275D4:
/* 803275D4  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 803275D8  7C 00 B8 40 */	cmplw r0, r23
/* 803275DC  41 80 FE 78 */	blt lbl_80327454
/* 803275E0  38 60 00 00 */	li r3, 0
lbl_803275E4:
/* 803275E4  39 61 00 30 */	addi r11, r1, 0x30
/* 803275E8  48 03 AC 29 */	bl _restgpr_23
/* 803275EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803275F0  7C 08 03 A6 */	mtlr r0
/* 803275F4  38 21 00 30 */	addi r1, r1, 0x30
/* 803275F8  4E 80 00 20 */	blr 
