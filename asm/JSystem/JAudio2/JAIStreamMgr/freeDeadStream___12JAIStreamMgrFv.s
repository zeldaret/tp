lbl_802A3D70:
/* 802A3D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3D74  7C 08 02 A6 */	mflr r0
/* 802A3D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3D7C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3D80  48 0B E4 5D */	bl _savegpr_29
/* 802A3D84  7C 7D 1B 78 */	mr r29, r3
/* 802A3D88  80 83 00 58 */	lwz r4, 0x58(r3)
/* 802A3D8C  48 00 00 BC */	b lbl_802A3E48
lbl_802A3D90:
/* 802A3D90  83 E4 00 00 */	lwz r31, 0(r4)
/* 802A3D94  83 C4 00 0C */	lwz r30, 0xc(r4)
/* 802A3D98  88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 802A3D9C  28 00 00 06 */	cmplwi r0, 6
/* 802A3DA0  40 82 00 A4 */	bne lbl_802A3E44
/* 802A3DA4  38 7D 00 58 */	addi r3, r29, 0x58
/* 802A3DA8  48 03 83 B5 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802A3DAC  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 802A3DB0  28 04 00 00 */	cmplwi r4, 0
/* 802A3DB4  41 82 00 18 */	beq lbl_802A3DCC
/* 802A3DB8  80 7D 00 68 */	lwz r3, 0x68(r29)
/* 802A3DBC  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3DC0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A3DC4  7D 89 03 A6 */	mtctr r12
/* 802A3DC8  4E 80 04 21 */	bctrl 
lbl_802A3DCC:
/* 802A3DCC  28 1F 00 00 */	cmplwi r31, 0
/* 802A3DD0  41 82 00 74 */	beq lbl_802A3E44
/* 802A3DD4  3C 60 80 3D */	lis r3, __vt__9JAIStream@ha /* 0x803C99D8@ha */
/* 802A3DD8  38 03 99 D8 */	addi r0, r3, __vt__9JAIStream@l /* 0x803C99D8@l */
/* 802A3DDC  90 1F 00 00 */	stw r0, 0(r31)
/* 802A3DE0  34 1F 00 98 */	addic. r0, r31, 0x98
/* 802A3DE4  41 82 00 10 */	beq lbl_802A3DF4
/* 802A3DE8  38 7F 00 98 */	addi r3, r31, 0x98
/* 802A3DEC  38 80 00 00 */	li r4, 0
/* 802A3DF0  48 03 80 25 */	bl __dt__10JSUPtrLinkFv
lbl_802A3DF4:
/* 802A3DF4  88 0D 8D A8 */	lbz r0, data_80451328(r13)
/* 802A3DF8  7C 00 07 75 */	extsb. r0, r0
/* 802A3DFC  40 82 00 34 */	bne lbl_802A3E30
/* 802A3E00  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A3E04  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A3E08  4B FE CA 41 */	bl __ct__17JASGenericMemPoolFv
/* 802A3E0C  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A3E10  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A3E14  3C 80 80 2A */	lis r4, func_802A3E68@ha /* 0x802A3E68@ha */
/* 802A3E18  38 84 3E 68 */	addi r4, r4, func_802A3E68@l /* 0x802A3E68@l */
/* 802A3E1C  3C A0 80 43 */	lis r5, lit_745@ha /* 0x804340F0@ha */
/* 802A3E20  38 A5 40 F0 */	addi r5, r5, lit_745@l /* 0x804340F0@l */
/* 802A3E24  48 0B DE 01 */	bl __register_global_object
/* 802A3E28  38 00 00 01 */	li r0, 1
/* 802A3E2C  98 0D 8D A8 */	stb r0, data_80451328(r13)
lbl_802A3E30:
/* 802A3E30  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A3E34  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A3E38  7F E4 FB 78 */	mr r4, r31
/* 802A3E3C  38 A0 02 C8 */	li r5, 0x2c8
/* 802A3E40  4B FE CB 55 */	bl free__17JASGenericMemPoolFPvUl
lbl_802A3E44:
/* 802A3E44  7F C4 F3 78 */	mr r4, r30
lbl_802A3E48:
/* 802A3E48  28 04 00 00 */	cmplwi r4, 0
/* 802A3E4C  40 82 FF 44 */	bne lbl_802A3D90
/* 802A3E50  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3E54  48 0B E3 D5 */	bl _restgpr_29
/* 802A3E58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A3E5C  7C 08 03 A6 */	mtlr r0
/* 802A3E60  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3E64  4E 80 00 20 */	blr 
