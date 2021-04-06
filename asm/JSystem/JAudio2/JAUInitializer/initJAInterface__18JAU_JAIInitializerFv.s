lbl_802A4D60:
/* 802A4D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A4D64  7C 08 02 A6 */	mflr r0
/* 802A4D68  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A4D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A4D70  48 0B D4 6D */	bl _savegpr_29
/* 802A4D74  7C 7E 1B 78 */	mr r30, r3
/* 802A4D78  3C 60 80 43 */	lis r3, lit_757@ha /* 0x80434110@ha */
/* 802A4D7C  3B E3 41 10 */	addi r31, r3, lit_757@l /* 0x80434110@l */
/* 802A4D80  80 6D 8C 90 */	lwz r3, JASDram(r13)
/* 802A4D84  48 02 99 A9 */	bl getFreeSize__7JKRHeapFv
/* 802A4D88  83 BE 00 08 */	lwz r29, 8(r30)
/* 802A4D8C  88 0D 8D A8 */	lbz r0, data_80451328(r13)
/* 802A4D90  7C 00 07 75 */	extsb. r0, r0
/* 802A4D94  40 82 00 30 */	bne lbl_802A4DC4
/* 802A4D98  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A4D9C  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A4DA0  4B FE BA A9 */	bl __ct__17JASGenericMemPoolFv
/* 802A4DA4  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A4DA8  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A4DAC  3C 80 80 2A */	lis r4, func_802A3E68@ha /* 0x802A3E68@ha */
/* 802A4DB0  38 84 3E 68 */	addi r4, r4, func_802A3E68@l /* 0x802A3E68@l */
/* 802A4DB4  38 BF 00 18 */	addi r5, r31, 0x18
/* 802A4DB8  48 0B CE 6D */	bl __register_global_object
/* 802A4DBC  38 00 00 01 */	li r0, 1
/* 802A4DC0  98 0D 8D A8 */	stb r0, data_80451328(r13)
lbl_802A4DC4:
/* 802A4DC4  3C 60 80 43 */	lis r3, data_804340FC@ha /* 0x804340FC@ha */
/* 802A4DC8  38 63 40 FC */	addi r3, r3, data_804340FC@l /* 0x804340FC@l */
/* 802A4DCC  38 80 02 C8 */	li r4, 0x2c8
/* 802A4DD0  7F A5 EB 78 */	mr r5, r29
/* 802A4DD4  4B FE BA F5 */	bl newMemPool__17JASGenericMemPoolFUli
/* 802A4DD8  83 BE 00 04 */	lwz r29, 4(r30)
/* 802A4DDC  88 0D 8D A0 */	lbz r0, data_80451320(r13)
/* 802A4DE0  7C 00 07 75 */	extsb. r0, r0
/* 802A4DE4  40 82 00 30 */	bne lbl_802A4E14
/* 802A4DE8  3C 60 80 43 */	lis r3, data_804340CC@ha /* 0x804340CC@ha */
/* 802A4DEC  38 63 40 CC */	addi r3, r3, data_804340CC@l /* 0x804340CC@l */
/* 802A4DF0  4B FE BA 59 */	bl __ct__17JASGenericMemPoolFv
/* 802A4DF4  3C 60 80 43 */	lis r3, data_804340CC@ha /* 0x804340CC@ha */
/* 802A4DF8  38 63 40 CC */	addi r3, r3, data_804340CC@l /* 0x804340CC@l */
/* 802A4DFC  3C 80 80 2A */	lis r4, func_802A1AF4@ha /* 0x802A1AF4@ha */
/* 802A4E00  38 84 1A F4 */	addi r4, r4, func_802A1AF4@l /* 0x802A1AF4@l */
/* 802A4E04  38 BF 00 24 */	addi r5, r31, 0x24
/* 802A4E08  48 0B CE 1D */	bl __register_global_object
/* 802A4E0C  38 00 00 01 */	li r0, 1
/* 802A4E10  98 0D 8D A0 */	stb r0, data_80451320(r13)
lbl_802A4E14:
/* 802A4E14  3C 60 80 43 */	lis r3, data_804340CC@ha /* 0x804340CC@ha */
/* 802A4E18  38 63 40 CC */	addi r3, r3, data_804340CC@l /* 0x804340CC@l */
/* 802A4E1C  38 80 03 AC */	li r4, 0x3ac
/* 802A4E20  7F A5 EB 78 */	mr r5, r29
/* 802A4E24  4B FE BA A5 */	bl newMemPool__17JASGenericMemPoolFUli
/* 802A4E28  83 BE 00 00 */	lwz r29, 0(r30)
/* 802A4E2C  88 0D 8D 90 */	lbz r0, data_80451310(r13)
/* 802A4E30  7C 00 07 75 */	extsb. r0, r0
/* 802A4E34  40 82 00 30 */	bne lbl_802A4E64
/* 802A4E38  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 802A4E3C  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 802A4E40  4B FE BA 09 */	bl __ct__17JASGenericMemPoolFv
/* 802A4E44  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 802A4E48  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 802A4E4C  3C 80 80 2A */	lis r4, func_8029FC34@ha /* 0x8029FC34@ha */
/* 802A4E50  38 84 FC 34 */	addi r4, r4, func_8029FC34@l /* 0x8029FC34@l */
/* 802A4E54  38 BF 00 30 */	addi r5, r31, 0x30
/* 802A4E58  48 0B CD CD */	bl __register_global_object
/* 802A4E5C  38 00 00 01 */	li r0, 1
/* 802A4E60  98 0D 8D 90 */	stb r0, data_80451310(r13)
lbl_802A4E64:
/* 802A4E64  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 802A4E68  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 802A4E6C  38 80 03 38 */	li r4, 0x338
/* 802A4E70  7F A5 EB 78 */	mr r5, r29
/* 802A4E74  4B FE BA 55 */	bl newMemPool__17JASGenericMemPoolFUli
/* 802A4E78  83 BE 00 0C */	lwz r29, 0xc(r30)
/* 802A4E7C  88 0D 8D 98 */	lbz r0, data_80451318(r13)
/* 802A4E80  7C 00 07 75 */	extsb. r0, r0
/* 802A4E84  40 82 00 30 */	bne lbl_802A4EB4
/* 802A4E88  3C 60 80 43 */	lis r3, data_804340B0@ha /* 0x804340B0@ha */
/* 802A4E8C  38 63 40 B0 */	addi r3, r3, data_804340B0@l /* 0x804340B0@l */
/* 802A4E90  4B FE B9 B9 */	bl __ct__17JASGenericMemPoolFv
/* 802A4E94  3C 60 80 43 */	lis r3, data_804340B0@ha /* 0x804340B0@ha */
/* 802A4E98  38 63 40 B0 */	addi r3, r3, data_804340B0@l /* 0x804340B0@l */
/* 802A4E9C  3C 80 80 2A */	lis r4, func_802A1268@ha /* 0x802A1268@ha */
/* 802A4EA0  38 84 12 68 */	addi r4, r4, func_802A1268@l /* 0x802A1268@l */
/* 802A4EA4  38 BF 00 3C */	addi r5, r31, 0x3c
/* 802A4EA8  48 0B CD 7D */	bl __register_global_object
/* 802A4EAC  38 00 00 01 */	li r0, 1
/* 802A4EB0  98 0D 8D 98 */	stb r0, data_80451318(r13)
lbl_802A4EB4:
/* 802A4EB4  3C 60 80 43 */	lis r3, data_804340B0@ha /* 0x804340B0@ha */
/* 802A4EB8  38 63 40 B0 */	addi r3, r3, data_804340B0@l /* 0x804340B0@l */
/* 802A4EBC  38 80 00 64 */	li r4, 0x64
/* 802A4EC0  7F A5 EB 78 */	mr r5, r29
/* 802A4EC4  4B FE BA 05 */	bl newMemPool__17JASGenericMemPoolFUli
/* 802A4EC8  80 6D 8C 90 */	lwz r3, JASDram(r13)
/* 802A4ECC  48 02 98 61 */	bl getFreeSize__7JKRHeapFv
/* 802A4ED0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A4ED4  48 0B D3 55 */	bl _restgpr_29
/* 802A4ED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A4EDC  7C 08 03 A6 */	mtlr r0
/* 802A4EE0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A4EE4  4E 80 00 20 */	blr 
