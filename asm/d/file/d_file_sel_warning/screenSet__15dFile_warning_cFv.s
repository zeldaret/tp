lbl_80191CF4:
/* 80191CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80191CF8  7C 08 02 A6 */	mflr r0
/* 80191CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80191D00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80191D04  7C 7F 1B 78 */	mr r31, r3
/* 80191D08  80 62 9F DC */	lwz r3, lit_3769(r2)
/* 80191D0C  80 02 9F E0 */	lwz r0, data_804539E0(r2)
/* 80191D10  90 61 00 10 */	stw r3, 0x10(r1)
/* 80191D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80191D18  80 62 9F E4 */	lwz r3, lit_3770(r2)
/* 80191D1C  80 02 9F E8 */	lwz r0, data_804539E8(r2)
/* 80191D20  90 61 00 08 */	stw r3, 8(r1)
/* 80191D24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80191D28  38 60 01 18 */	li r3, 0x118
/* 80191D2C  48 13 CF 21 */	bl __nw__FUl
/* 80191D30  7C 60 1B 79 */	or. r0, r3, r3
/* 80191D34  41 82 00 0C */	beq lbl_80191D40
/* 80191D38  48 16 67 61 */	bl __ct__9J2DScreenFv
/* 80191D3C  7C 60 1B 78 */	mr r0, r3
lbl_80191D40:
/* 80191D40  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80191D44  38 60 00 2C */	li r3, 0x2c
/* 80191D48  48 13 CF 05 */	bl __nw__FUl
/* 80191D4C  7C 60 1B 79 */	or. r0, r3, r3
/* 80191D50  41 82 00 0C */	beq lbl_80191D5C
/* 80191D54  48 0B 7E CD */	bl __ct__12dMsgString_cFv
/* 80191D58  7C 60 1B 78 */	mr r0, r3
lbl_80191D5C:
/* 80191D5C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80191D60  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80191D64  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 80191D68  54 00 10 3A */	slwi r0, r0, 2
/* 80191D6C  38 81 00 10 */	addi r4, r1, 0x10
/* 80191D70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80191D74  3C A0 00 10 */	lis r5, 0x10
/* 80191D78  80 DF 00 04 */	lwz r6, 4(r31)
/* 80191D7C  48 16 68 CD */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80191D80  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 80191D84  54 00 10 3A */	slwi r0, r0, 2
/* 80191D88  38 61 00 08 */	addi r3, r1, 8
/* 80191D8C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80191D90  80 9F 00 04 */	lwz r4, 4(r31)
/* 80191D94  48 14 24 DD */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80191D98  48 17 6C D5 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80191D9C  90 7F 00 24 */	stw r3, 0x24(r31)
/* 80191DA0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80191DA4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80191DA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80191DAC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80191DB0  7D 89 03 A6 */	mtctr r12
/* 80191DB4  4E 80 04 21 */	bctrl 
/* 80191DB8  C0 02 9F EC */	lfs f0, lit_3799(r2)
/* 80191DBC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80191DC0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80191DC4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80191DC8  48 16 78 C9 */	bl animation__9J2DScreenFv
/* 80191DCC  4B E8 2C 25 */	bl mDoExt_getMesgFont__Fv
/* 80191DD0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80191DD4  38 60 00 6C */	li r3, 0x6c
/* 80191DD8  48 13 CE 75 */	bl __nw__FUl
/* 80191DDC  7C 60 1B 79 */	or. r0, r3, r3
/* 80191DE0  41 82 00 24 */	beq lbl_80191E04
/* 80191DE4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80191DE8  3C A0 6D 5F */	lis r5, 0x6D5F /* 0x6D5F3032@ha */
/* 80191DEC  38 C5 30 32 */	addi r6, r5, 0x3032 /* 0x6D5F3032@l */
/* 80191DF0  38 A0 00 4E */	li r5, 0x4e
/* 80191DF4  38 E0 00 00 */	li r7, 0
/* 80191DF8  39 00 00 00 */	li r8, 0
/* 80191DFC  48 0C 1B 89 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80191E00  7C 60 1B 78 */	mr r0, r3
lbl_80191E04:
/* 80191E04  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80191E08  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80191E0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80191E10  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 80191E14  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80191E18  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80191E1C  3C 80 67 5F */	lis r4, 0x675F /* 0x675F6A70@ha */
/* 80191E20  38 C4 6A 70 */	addi r6, r4, 0x6A70 /* 0x675F6A70@l */
/* 80191E24  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6D73@ha */
/* 80191E28  38 A4 6D 73 */	addi r5, r4, 0x6D73 /* 0x775F6D73@l */
/* 80191E2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80191E30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80191E34  7D 89 03 A6 */	mtctr r12
/* 80191E38  4E 80 04 21 */	bctrl 
/* 80191E3C  38 00 00 00 */	li r0, 0
/* 80191E40  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80191E44  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80191E48  3C 80 6F 72 */	lis r4, 0x6F72 /* 0x6F725F32@ha */
/* 80191E4C  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x6F725F32@l */
/* 80191E50  3C 80 6D 73 */	lis r4, 0x6D73 /* 0x6D735F66@ha */
/* 80191E54  38 A4 5F 66 */	addi r5, r4, 0x5F66 /* 0x6D735F66@l */
/* 80191E58  81 83 00 00 */	lwz r12, 0(r3)
/* 80191E5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80191E60  7D 89 03 A6 */	mtctr r12
/* 80191E64  4E 80 04 21 */	bctrl 
/* 80191E68  38 00 00 00 */	li r0, 0
/* 80191E6C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80191E70  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80191E74  3C 80 6F 72 */	lis r4, 0x6F72 /* 0x6F725F33@ha */
/* 80191E78  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x6F725F33@l */
/* 80191E7C  3C 80 6D 73 */	lis r4, 0x6D73 /* 0x6D735F66@ha */
/* 80191E80  38 A4 5F 66 */	addi r5, r4, 0x5F66 /* 0x6D735F66@l */
/* 80191E84  81 83 00 00 */	lwz r12, 0(r3)
/* 80191E88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80191E8C  7D 89 03 A6 */	mtctr r12
/* 80191E90  4E 80 04 21 */	bctrl 
/* 80191E94  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80191E98  38 00 00 01 */	li r0, 1
/* 80191E9C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80191EA0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80191EA4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80191EA8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80191EAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80191EB0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80191EB4  7D 89 03 A6 */	mtctr r12
/* 80191EB8  4E 80 04 21 */	bctrl 
/* 80191EBC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80191EC0  38 80 02 00 */	li r4, 0x200
/* 80191EC4  3C A0 80 39 */	lis r5, d_file_d_file_sel_warning__stringBase0@ha /* 0x80394828@ha */
/* 80191EC8  38 A5 48 28 */	addi r5, r5, d_file_d_file_sel_warning__stringBase0@l /* 0x80394828@l */
/* 80191ECC  38 A5 00 88 */	addi r5, r5, 0x88
/* 80191ED0  4C C6 31 82 */	crclr 6
/* 80191ED4  48 16 E8 79 */	bl setString__10J2DTextBoxFsPCce
/* 80191ED8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80191EDC  38 80 00 53 */	li r4, 0x53
/* 80191EE0  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80191EE4  38 C0 00 00 */	li r6, 0
/* 80191EE8  80 FF 00 10 */	lwz r7, 0x10(r31)
/* 80191EEC  39 00 00 00 */	li r8, 0
/* 80191EF0  39 20 00 00 */	li r9, 0
/* 80191EF4  81 83 00 00 */	lwz r12, 0(r3)
/* 80191EF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80191EFC  7D 89 03 A6 */	mtctr r12
/* 80191F00  4E 80 04 21 */	bctrl 
/* 80191F04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80191F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80191F0C  7C 08 03 A6 */	mtlr r0
/* 80191F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80191F14  4E 80 00 20 */	blr 
