lbl_80262C5C:
/* 80262C5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80262C60  7C 08 02 A6 */	mflr r0
/* 80262C64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80262C68  39 61 00 20 */	addi r11, r1, 0x20
/* 80262C6C  48 0F F5 6D */	bl _savegpr_28
/* 80262C70  7C 7F 1B 78 */	mr r31, r3
/* 80262C74  48 0D FA 89 */	bl OSGetTime
/* 80262C78  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80262C7C  28 00 00 00 */	cmplwi r0, 0
/* 80262C80  40 82 00 18 */	bne lbl_80262C98
/* 80262C84  7F E3 FB 78 */	mr r3, r31
/* 80262C88  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 80262C8C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80262C90  7D 89 03 A6 */	mtctr r12
/* 80262C94  4E 80 04 21 */	bctrl 
lbl_80262C98:
/* 80262C98  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80262C9C  28 00 00 00 */	cmplwi r0, 0
/* 80262CA0  41 82 02 2C */	beq lbl_80262ECC
/* 80262CA4  48 0D FA 59 */	bl OSGetTime
/* 80262CA8  48 0D FA 55 */	bl OSGetTime
/* 80262CAC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262CB0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80262CB4  28 00 00 03 */	cmplwi r0, 3
/* 80262CB8  41 80 01 CC */	blt lbl_80262E84
/* 80262CBC  83 A3 00 48 */	lwz r29, 0x48(r3)
/* 80262CC0  38 1D 00 1F */	addi r0, r29, 0x1f
/* 80262CC4  54 1C 00 34 */	rlwinm r28, r0, 0, 0, 0x1a
/* 80262CC8  7F C3 E2 14 */	add r30, r3, r28
/* 80262CCC  38 80 00 00 */	li r4, 0
/* 80262CD0  48 06 B9 E1 */	bl getSize__7JKRHeapFPvP7JKRHeap
/* 80262CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80262CD8  40 80 00 64 */	bge lbl_80262D3C
/* 80262CDC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262CE0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80262CE4  38 80 00 20 */	li r4, 0x20
/* 80262CE8  38 A0 00 00 */	li r5, 0
/* 80262CEC  48 06 B7 89 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80262CF0  7C 64 1B 79 */	or. r4, r3, r3
/* 80262CF4  40 82 00 1C */	bne lbl_80262D10
/* 80262CF8  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262CFC  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262D00  38 63 02 42 */	addi r3, r3, 0x242
/* 80262D04  4C C6 31 82 */	crclr 6
/* 80262D08  4B DA 3F 05 */	bl OSReport_Error
/* 80262D0C  48 00 01 C0 */	b lbl_80262ECC
lbl_80262D10:
/* 80262D10  90 9F 00 14 */	stw r4, 0x14(r31)
/* 80262D14  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262D18  48 0D B7 F9 */	bl OSLink
/* 80262D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80262D20  40 82 01 64 */	bne lbl_80262E84
/* 80262D24  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262D28  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262D2C  38 63 02 55 */	addi r3, r3, 0x255
/* 80262D30  4C C6 31 82 */	crclr 6
/* 80262D34  4B DA 3E D9 */	bl OSReport_Error
/* 80262D38  48 00 01 94 */	b lbl_80262ECC
lbl_80262D3C:
/* 80262D3C  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 80262D40  80 05 00 20 */	lwz r0, 0x20(r5)
/* 80262D44  7C 9C 02 14 */	add r4, r28, r0
/* 80262D48  7C 04 18 40 */	cmplw r4, r3
/* 80262D4C  40 80 00 64 */	bge lbl_80262DB0
/* 80262D50  7C A3 2B 78 */	mr r3, r5
/* 80262D54  7F C4 F3 78 */	mr r4, r30
/* 80262D58  48 0D B7 DD */	bl OSLinkFixed
/* 80262D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80262D60  40 82 00 1C */	bne lbl_80262D7C
/* 80262D64  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262D68  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262D6C  38 63 02 55 */	addi r3, r3, 0x255
/* 80262D70  4C C6 31 82 */	crclr 6
/* 80262D74  4B DA 3E 99 */	bl OSReport_Error
/* 80262D78  48 00 01 54 */	b lbl_80262ECC
lbl_80262D7C:
/* 80262D7C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262D80  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80262D84  7C 9C 02 14 */	add r4, r28, r0
/* 80262D88  38 A0 00 00 */	li r5, 0
/* 80262D8C  48 06 B8 99 */	bl resize__7JKRHeapFPvUlP7JKRHeap
/* 80262D90  2C 03 00 00 */	cmpwi r3, 0
/* 80262D94  40 80 00 F0 */	bge lbl_80262E84
/* 80262D98  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262D9C  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262DA0  38 63 02 61 */	addi r3, r3, 0x261
/* 80262DA4  4C C6 31 82 */	crclr 6
/* 80262DA8  4B DA 3E 65 */	bl OSReport_Error
/* 80262DAC  48 00 00 D8 */	b lbl_80262E84
lbl_80262DB0:
/* 80262DB0  7C A3 2B 78 */	mr r3, r5
/* 80262DB4  38 A0 00 00 */	li r5, 0
/* 80262DB8  48 06 B8 6D */	bl resize__7JKRHeapFPvUlP7JKRHeap
/* 80262DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80262DC0  40 81 00 30 */	ble lbl_80262DF0
/* 80262DC4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262DC8  7F C4 F3 78 */	mr r4, r30
/* 80262DCC  48 0D B7 69 */	bl OSLinkFixed
/* 80262DD0  2C 03 00 00 */	cmpwi r3, 0
/* 80262DD4  40 82 00 B0 */	bne lbl_80262E84
/* 80262DD8  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262DDC  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262DE0  38 63 02 55 */	addi r3, r3, 0x255
/* 80262DE4  4C C6 31 82 */	crclr 6
/* 80262DE8  4B DA 3E 25 */	bl OSReport_Error
/* 80262DEC  48 00 00 E0 */	b lbl_80262ECC
lbl_80262DF0:
/* 80262DF0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262DF4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80262DF8  38 80 00 20 */	li r4, 0x20
/* 80262DFC  38 A0 00 00 */	li r5, 0
/* 80262E00  48 06 B6 75 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80262E04  7C 64 1B 79 */	or. r4, r3, r3
/* 80262E08  40 82 00 24 */	bne lbl_80262E2C
/* 80262E0C  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262E10  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262E14  38 63 02 7F */	addi r3, r3, 0x27f
/* 80262E18  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80262E1C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80262E20  4C C6 31 82 */	crclr 6
/* 80262E24  4B DA 3D E9 */	bl OSReport_Error
/* 80262E28  48 00 00 A4 */	b lbl_80262ECC
lbl_80262E2C:
/* 80262E2C  90 9F 00 14 */	stw r4, 0x14(r31)
/* 80262E30  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262E34  48 0D B7 01 */	bl OSLinkFixed
/* 80262E38  2C 03 00 00 */	cmpwi r3, 0
/* 80262E3C  40 82 00 1C */	bne lbl_80262E58
/* 80262E40  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262E44  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262E48  38 63 02 55 */	addi r3, r3, 0x255
/* 80262E4C  4C C6 31 82 */	crclr 6
/* 80262E50  4B DA 3D BD */	bl OSReport_Error
/* 80262E54  48 00 00 78 */	b lbl_80262ECC
lbl_80262E58:
/* 80262E58  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262E5C  7F A4 EB 78 */	mr r4, r29
/* 80262E60  38 A0 00 00 */	li r5, 0
/* 80262E64  48 06 B7 C1 */	bl resize__7JKRHeapFPvUlP7JKRHeap
/* 80262E68  2C 03 00 00 */	cmpwi r3, 0
/* 80262E6C  40 80 00 18 */	bge lbl_80262E84
/* 80262E70  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262E74  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262E78  38 63 02 61 */	addi r3, r3, 0x261
/* 80262E7C  4C C6 31 82 */	crclr 6
/* 80262E80  4B DA 3D 8D */	bl OSReport_Error
lbl_80262E84:
/* 80262E84  48 0D F8 79 */	bl OSGetTime
/* 80262E88  7F E3 FB 78 */	mr r3, r31
/* 80262E8C  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 80262E90  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80262E94  7D 89 03 A6 */	mtctr r12
/* 80262E98  4E 80 04 21 */	bctrl 
/* 80262E9C  80 0D 8B C0 */	lwz r0, sAllocBytes__20DynamicModuleControl(r13)
/* 80262EA0  7C 00 1A 14 */	add r0, r0, r3
/* 80262EA4  90 0D 8B C0 */	stw r0, sAllocBytes__20DynamicModuleControl(r13)
/* 80262EA8  48 0D F8 55 */	bl OSGetTime
/* 80262EAC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262EB0  81 83 00 34 */	lwz r12, 0x34(r3)
/* 80262EB4  7D 89 03 A6 */	mtctr r12
/* 80262EB8  4E 80 04 21 */	bctrl 
/* 80262EBC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80262EC0  48 0D F8 3D */	bl OSGetTime
/* 80262EC4  38 60 00 01 */	li r3, 1
/* 80262EC8  48 00 00 48 */	b lbl_80262F10
lbl_80262ECC:
/* 80262ECC  38 00 00 00 */	li r0, 0
/* 80262ED0  98 1F 00 21 */	stb r0, 0x21(r31)
/* 80262ED4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80262ED8  28 03 00 00 */	cmplwi r3, 0
/* 80262EDC  41 82 00 14 */	beq lbl_80262EF0
/* 80262EE0  38 80 00 00 */	li r4, 0
/* 80262EE4  48 06 B6 1D */	bl free__7JKRHeapFPvP7JKRHeap
/* 80262EE8  38 00 00 00 */	li r0, 0
/* 80262EEC  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80262EF0:
/* 80262EF0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80262EF4  28 03 00 00 */	cmplwi r3, 0
/* 80262EF8  41 82 00 14 */	beq lbl_80262F0C
/* 80262EFC  38 80 00 00 */	li r4, 0
/* 80262F00  48 06 B6 01 */	bl free__7JKRHeapFPvP7JKRHeap
/* 80262F04  38 00 00 00 */	li r0, 0
/* 80262F08  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_80262F0C:
/* 80262F0C  38 60 00 00 */	li r3, 0
lbl_80262F10:
/* 80262F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80262F14  48 0F F3 11 */	bl _restgpr_28
/* 80262F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80262F1C  7C 08 03 A6 */	mtlr r0
/* 80262F20  38 21 00 20 */	addi r1, r1, 0x20
/* 80262F24  4E 80 00 20 */	blr 
