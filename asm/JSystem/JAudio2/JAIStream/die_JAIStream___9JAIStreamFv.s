lbl_802A3720:
/* 802A3720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3724  7C 08 02 A6 */	mflr r0
/* 802A3728  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A372C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3730  48 0B EA A5 */	bl _savegpr_27
/* 802A3734  7C 7D 1B 78 */	mr r29, r3
/* 802A3738  4B FF EE B9 */	bl die_JAISound___8JAISoundFv
/* 802A373C  3B C0 00 00 */	li r30, 0
/* 802A3740  3B 80 00 00 */	li r28, 0
lbl_802A3744:
/* 802A3744  3B FC 02 A0 */	addi r31, r28, 0x2a0
/* 802A3748  7F 7D F8 2E */	lwzx r27, r29, r31
/* 802A374C  28 1B 00 00 */	cmplwi r27, 0
/* 802A3750  41 82 00 5C */	beq lbl_802A37AC
/* 802A3754  88 0D 8D 98 */	lbz r0, data_80451318(r13)
/* 802A3758  7C 00 07 75 */	extsb. r0, r0
/* 802A375C  40 82 00 34 */	bne lbl_802A3790
/* 802A3760  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A3764  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A3768  4B FE D0 E1 */	bl __ct__17JASGenericMemPoolFv
/* 802A376C  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A3770  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A3774  3C 80 80 2A */	lis r4, func_802A1268@ha
/* 802A3778  38 84 12 68 */	addi r4, r4, func_802A1268@l
/* 802A377C  3C A0 80 43 */	lis r5, lit_881@ha
/* 802A3780  38 A5 40 E0 */	addi r5, r5, lit_881@l
/* 802A3784  48 0B E4 A1 */	bl __register_global_object
/* 802A3788  38 00 00 01 */	li r0, 1
/* 802A378C  98 0D 8D 98 */	stb r0, data_80451318(r13)
lbl_802A3790:
/* 802A3790  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A3794  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A3798  7F 64 DB 78 */	mr r4, r27
/* 802A379C  38 A0 00 64 */	li r5, 0x64
/* 802A37A0  4B FE D1 F5 */	bl free__17JASGenericMemPoolFPvUl
/* 802A37A4  38 00 00 00 */	li r0, 0
/* 802A37A8  7C 1D F9 2E */	stwx r0, r29, r31
lbl_802A37AC:
/* 802A37AC  3B DE 00 01 */	addi r30, r30, 1
/* 802A37B0  2C 1E 00 06 */	cmpwi r30, 6
/* 802A37B4  3B 9C 00 04 */	addi r28, r28, 4
/* 802A37B8  41 80 FF 8C */	blt lbl_802A3744
/* 802A37BC  80 9D 02 BC */	lwz r4, 0x2bc(r29)
/* 802A37C0  28 04 00 00 */	cmplwi r4, 0
/* 802A37C4  41 82 00 20 */	beq lbl_802A37E4
/* 802A37C8  80 7D 02 C0 */	lwz r3, 0x2c0(r29)
/* 802A37CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802A37D0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A37D4  7D 89 03 A6 */	mtctr r12
/* 802A37D8  4E 80 04 21 */	bctrl 
/* 802A37DC  38 00 00 00 */	li r0, 0
/* 802A37E0  90 1D 02 BC */	stw r0, 0x2bc(r29)
lbl_802A37E4:
/* 802A37E4  39 61 00 20 */	addi r11, r1, 0x20
/* 802A37E8  48 0B EA 39 */	bl _restgpr_27
/* 802A37EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A37F0  7C 08 03 A6 */	mtlr r0
/* 802A37F4  38 21 00 20 */	addi r1, r1, 0x20
/* 802A37F8  4E 80 00 20 */	blr 
