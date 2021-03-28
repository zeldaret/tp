lbl_8051EE8C:
/* 8051EE8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051EE90  7C 08 02 A6 */	mflr r0
/* 8051EE94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051EE98  39 61 00 20 */	addi r11, r1, 0x20
/* 8051EE9C  4B E4 33 3C */	b _savegpr_28
/* 8051EEA0  7C 7E 1B 78 */	mr r30, r3
/* 8051EEA4  3C 60 80 52 */	lis r3, cNullVec__6Z2Calc@ha
/* 8051EEA8  3B E3 31 D8 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8051EEAC  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 8051EEB0  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 8051EEB4  90 1E 00 00 */	stw r0, 0(r30)
/* 8051EEB8  38 00 00 00 */	li r0, 0
/* 8051EEBC  90 1E 00 04 */	stw r0, 4(r30)
/* 8051EEC0  90 1E 00 08 */	stw r0, 8(r30)
/* 8051EEC4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8051EEC8  3C 60 80 52 */	lis r3, __vt__15dGrass_packet_c@ha
/* 8051EECC  38 03 78 A4 */	addi r0, r3, __vt__15dGrass_packet_c@l
/* 8051EED0  90 1E 00 00 */	stw r0, 0(r30)
/* 8051EED4  38 7E 00 14 */	addi r3, r30, 0x14
/* 8051EED8  3C 80 80 52 */	lis r4, __ct__13dGrass_data_cFv@ha
/* 8051EEDC  38 84 09 7C */	addi r4, r4, __ct__13dGrass_data_cFv@l
/* 8051EEE0  3C A0 80 52 */	lis r5, __dt__13dGrass_data_cFv@ha
/* 8051EEE4  38 A5 09 40 */	addi r5, r5, __dt__13dGrass_data_cFv@l
/* 8051EEE8  38 C0 00 4C */	li r6, 0x4c
/* 8051EEEC  38 E0 05 DC */	li r7, 0x5dc
/* 8051EEF0  4B E4 2E 70 */	b __construct_array
/* 8051EEF4  3C 7E 00 02 */	addis r3, r30, 2
/* 8051EEF8  3C 80 80 52 */	lis r4, __ct__12dGrass_anm_cFv@ha
/* 8051EEFC  38 84 09 34 */	addi r4, r4, __ct__12dGrass_anm_cFv@l
/* 8051EF00  38 A0 00 00 */	li r5, 0
/* 8051EF04  38 C0 00 38 */	li r6, 0x38
/* 8051EF08  38 E0 00 70 */	li r7, 0x70
/* 8051EF0C  38 63 BD 64 */	addi r3, r3, -17052
/* 8051EF10  4B E4 2E 50 */	b __construct_array
/* 8051EF14  3C 7E 00 02 */	addis r3, r30, 2
/* 8051EF18  3C 80 80 52 */	lis r4, __ct__13dGrass_room_cFv@ha
/* 8051EF1C  38 84 09 28 */	addi r4, r4, __ct__13dGrass_room_cFv@l
/* 8051EF20  38 A0 00 00 */	li r5, 0
/* 8051EF24  38 C0 00 04 */	li r6, 4
/* 8051EF28  38 E0 00 40 */	li r7, 0x40
/* 8051EF2C  38 63 D5 E4 */	addi r3, r3, -10780
/* 8051EF30  4B E4 2E 30 */	b __construct_array
/* 8051EF34  38 9E 00 14 */	addi r4, r30, 0x14
/* 8051EF38  38 60 00 00 */	li r3, 0
/* 8051EF3C  38 00 05 DC */	li r0, 0x5dc
/* 8051EF40  7C 09 03 A6 */	mtctr r0
lbl_8051EF44:
/* 8051EF44  98 64 00 00 */	stb r3, 0(r4)
/* 8051EF48  38 84 00 4C */	addi r4, r4, 0x4c
/* 8051EF4C  42 00 FF F8 */	bdnz lbl_8051EF44
/* 8051EF50  38 60 00 00 */	li r3, 0
/* 8051EF54  B0 7E 00 10 */	sth r3, 0x10(r30)
/* 8051EF58  3C 9E 00 02 */	addis r4, r30, 2
/* 8051EF5C  38 00 00 70 */	li r0, 0x70
/* 8051EF60  7C 09 03 A6 */	mtctr r0
/* 8051EF64  38 84 BD 64 */	addi r4, r4, -17052
lbl_8051EF68:
/* 8051EF68  98 64 00 00 */	stb r3, 0(r4)
/* 8051EF6C  38 84 00 38 */	addi r4, r4, 0x38
/* 8051EF70  42 00 FF F8 */	bdnz lbl_8051EF68
/* 8051EF74  3B A0 00 00 */	li r29, 0
/* 8051EF78  3B 80 00 00 */	li r28, 0
lbl_8051EF7C:
/* 8051EF7C  7F C3 F3 78 */	mr r3, r30
/* 8051EF80  7F 84 E3 78 */	mr r4, r28
/* 8051EF84  7F A5 EB 78 */	mr r5, r29
/* 8051EF88  48 00 19 5D */	bl setAnm__15dGrass_packet_cFis
/* 8051EF8C  3B 9C 00 01 */	addi r28, r28, 1
/* 8051EF90  2C 1C 00 10 */	cmpwi r28, 0x10
/* 8051EF94  3B BD 10 00 */	addi r29, r29, 0x1000
/* 8051EF98  41 80 FF E4 */	blt lbl_8051EF7C
/* 8051EF9C  38 1F 10 20 */	addi r0, r31, 0x1020
/* 8051EFA0  3C 9E 00 02 */	addis r4, r30, 2
/* 8051EFA4  90 04 D6 E4 */	stw r0, -0x291c(r4)
/* 8051EFA8  38 1F 13 E0 */	addi r0, r31, 0x13e0
/* 8051EFAC  90 04 D6 E8 */	stw r0, -0x2918(r4)
/* 8051EFB0  38 1F 13 EC */	addi r0, r31, 0x13ec
/* 8051EFB4  90 04 D6 EC */	stw r0, -0x2914(r4)
/* 8051EFB8  38 1F 14 00 */	addi r0, r31, 0x1400
/* 8051EFBC  90 04 D6 F0 */	stw r0, -0x2910(r4)
/* 8051EFC0  38 1F 18 00 */	addi r0, r31, 0x1800
/* 8051EFC4  90 04 D6 F4 */	stw r0, -0x290c(r4)
/* 8051EFC8  38 60 00 A0 */	li r3, 0xa0
/* 8051EFCC  90 64 D6 F8 */	stw r3, -0x2908(r4)
/* 8051EFD0  38 1F 18 C0 */	addi r0, r31, 0x18c0
/* 8051EFD4  90 04 D6 FC */	stw r0, -0x2904(r4)
/* 8051EFD8  90 64 D7 00 */	stw r3, -0x2900(r4)
/* 8051EFDC  38 1F 14 A0 */	addi r0, r31, 0x14a0
/* 8051EFE0  90 04 D7 04 */	stw r0, -0x28fc(r4)
/* 8051EFE4  38 60 00 C0 */	li r3, 0xc0
/* 8051EFE8  90 64 D7 08 */	stw r3, -0x28f8(r4)
/* 8051EFEC  38 1F 15 80 */	addi r0, r31, 0x1580
/* 8051EFF0  90 04 D7 0C */	stw r0, -0x28f4(r4)
/* 8051EFF4  90 64 D7 10 */	stw r3, -0x28f0(r4)
/* 8051EFF8  38 00 00 00 */	li r0, 0
/* 8051EFFC  B0 04 D7 14 */	sth r0, -0x28ec(r4)
/* 8051F000  3C 60 80 42 */	lis r3, m_deleteRoom__15dGrass_packet_c@ha
/* 8051F004  38 83 45 88 */	addi r4, r3, m_deleteRoom__15dGrass_packet_c@l
/* 8051F008  80 7F 19 68 */	lwz r3, 0x1968(r31)
/* 8051F00C  80 1F 19 6C */	lwz r0, 0x196c(r31)
/* 8051F010  90 64 00 00 */	stw r3, 0(r4)
/* 8051F014  90 04 00 04 */	stw r0, 4(r4)
/* 8051F018  80 1F 19 70 */	lwz r0, 0x1970(r31)
/* 8051F01C  90 04 00 08 */	stw r0, 8(r4)
/* 8051F020  7F C3 F3 78 */	mr r3, r30
/* 8051F024  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F028  4B E4 31 FC */	b _restgpr_28
/* 8051F02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051F030  7C 08 03 A6 */	mtlr r0
/* 8051F034  38 21 00 20 */	addi r1, r1, 0x20
/* 8051F038  4E 80 00 20 */	blr 
