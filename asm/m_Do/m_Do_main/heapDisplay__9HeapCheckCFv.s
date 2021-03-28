lbl_800058C4:
/* 800058C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800058C8  7C 08 02 A6 */	mflr r0
/* 800058CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800058D0  39 61 00 20 */	addi r11, r1, 0x20
/* 800058D4  48 35 C8 FD */	bl _savegpr_26
/* 800058D8  7C 7D 1B 78 */	mr r29, r3
/* 800058DC  80 63 00 08 */	lwz r3, 8(r3)
/* 800058E0  80 83 00 38 */	lwz r4, 0x38(r3)
/* 800058E4  7C 9A 23 78 */	mr r26, r4
/* 800058E8  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 800058EC  7F E0 20 50 */	subf r31, r0, r4
/* 800058F0  48 2C A4 75 */	bl getTotalUsedSize__10JKRExpHeapCFv
/* 800058F4  7C 7E 1B 78 */	mr r30, r3
/* 800058F8  80 7D 00 08 */	lwz r3, 8(r29)
/* 800058FC  48 2C 8E 89 */	bl getTotalFreeSize__7JKRHeapFv
/* 80005900  7C 7B 1B 78 */	mr r27, r3
/* 80005904  80 7D 00 08 */	lwz r3, 8(r29)
/* 80005908  48 2C 8E 25 */	bl getFreeSize__7JKRHeapFv
/* 8000590C  7C 7C 1B 78 */	mr r28, r3
/* 80005910  38 60 00 64 */	li r3, 0x64
/* 80005914  38 80 00 D4 */	li r4, 0xd4
/* 80005918  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 8000591C  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005920  38 A5 00 3C */	addi r5, r5, 0x3c
/* 80005924  80 DD 00 00 */	lwz r6, 0(r29)
/* 80005928  4C C6 31 82 */	crclr 6
/* 8000592C  48 2D AC 05 */	bl JUTReport__FiiPCce
/* 80005930  38 60 00 64 */	li r3, 0x64
/* 80005934  38 80 00 E3 */	li r4, 0xe3
/* 80005938  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 8000593C  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005940  38 A5 00 45 */	addi r5, r5, 0x45
/* 80005944  7F 46 D3 78 */	mr r6, r26
/* 80005948  4C C6 31 82 */	crclr 6
/* 8000594C  48 2D AB E5 */	bl JUTReport__FiiPCce
/* 80005950  38 60 00 64 */	li r3, 0x64
/* 80005954  38 80 00 F0 */	li r4, 0xf0
/* 80005958  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 8000595C  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005960  38 A5 00 5B */	addi r5, r5, 0x5b
/* 80005964  80 DD 00 1C */	lwz r6, 0x1c(r29)
/* 80005968  4C C6 31 82 */	crclr 6
/* 8000596C  48 2D AB C5 */	bl JUTReport__FiiPCce
/* 80005970  38 60 00 64 */	li r3, 0x64
/* 80005974  38 80 00 FD */	li r4, 0xfd
/* 80005978  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 8000597C  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005980  38 A5 00 71 */	addi r5, r5, 0x71
/* 80005984  7C DF D8 50 */	subf r6, r31, r27
/* 80005988  4C C6 31 82 */	crclr 6
/* 8000598C  48 2D AB A5 */	bl JUTReport__FiiPCce
/* 80005990  38 60 00 64 */	li r3, 0x64
/* 80005994  38 80 01 0A */	li r4, 0x10a
/* 80005998  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 8000599C  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 800059A0  38 A5 00 87 */	addi r5, r5, 0x87
/* 800059A4  7C DF E0 50 */	subf r6, r31, r28
/* 800059A8  4C C6 31 82 */	crclr 6
/* 800059AC  48 2D AB 85 */	bl JUTReport__FiiPCce
/* 800059B0  38 60 00 64 */	li r3, 0x64
/* 800059B4  38 80 01 17 */	li r4, 0x117
/* 800059B8  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 800059BC  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 800059C0  38 A5 00 9D */	addi r5, r5, 0x9d
/* 800059C4  7F C6 F3 78 */	mr r6, r30
/* 800059C8  4C C6 31 82 */	crclr 6
/* 800059CC  48 2D AB 65 */	bl JUTReport__FiiPCce
/* 800059D0  38 60 00 64 */	li r3, 0x64
/* 800059D4  38 80 01 24 */	li r4, 0x124
/* 800059D8  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 800059DC  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 800059E0  38 A5 00 B3 */	addi r5, r5, 0xb3
/* 800059E4  1C DE 00 64 */	mulli r6, r30, 0x64
/* 800059E8  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 800059EC  7C C6 03 D6 */	divw r6, r6, r0
/* 800059F0  4C C6 31 82 */	crclr 6
/* 800059F4  48 2D AB 3D */	bl JUTReport__FiiPCce
/* 800059F8  38 60 00 64 */	li r3, 0x64
/* 800059FC  38 80 01 31 */	li r4, 0x131
/* 80005A00  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 80005A04  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005A08  38 A5 00 CF */	addi r5, r5, 0xcf
/* 80005A0C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 80005A10  4C C6 31 82 */	crclr 6
/* 80005A14  48 2D AB 1D */	bl JUTReport__FiiPCce
/* 80005A18  38 60 00 64 */	li r3, 0x64
/* 80005A1C  38 80 01 3E */	li r4, 0x13e
/* 80005A20  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 80005A24  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005A28  38 A5 00 E5 */	addi r5, r5, 0xe5
/* 80005A2C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80005A30  1C C0 00 64 */	mulli r6, r0, 0x64
/* 80005A34  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80005A38  7C C6 03 D6 */	divw r6, r6, r0
/* 80005A3C  4C C6 31 82 */	crclr 6
/* 80005A40  48 2D AA F1 */	bl JUTReport__FiiPCce
/* 80005A44  38 60 00 64 */	li r3, 0x64
/* 80005A48  38 80 01 4B */	li r4, 0x14b
/* 80005A4C  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 80005A50  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005A54  38 A5 01 01 */	addi r5, r5, 0x101
/* 80005A58  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80005A5C  7C DF 00 50 */	subf r6, r31, r0
/* 80005A60  4C C6 31 82 */	crclr 6
/* 80005A64  48 2D AA CD */	bl JUTReport__FiiPCce
/* 80005A68  38 60 00 64 */	li r3, 0x64
/* 80005A6C  38 80 01 58 */	li r4, 0x158
/* 80005A70  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 80005A74  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005A78  38 A5 01 17 */	addi r5, r5, 0x117
/* 80005A7C  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80005A80  7C 1F 00 50 */	subf r0, r31, r0
/* 80005A84  1C C0 00 64 */	mulli r6, r0, 0x64
/* 80005A88  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80005A8C  7C C6 03 D6 */	divw r6, r6, r0
/* 80005A90  4C C6 31 82 */	crclr 6
/* 80005A94  48 2D AA 9D */	bl JUTReport__FiiPCce
/* 80005A98  80 7D 00 08 */	lwz r3, 8(r29)
/* 80005A9C  4B FF FD AD */	bl countUsed__FP10JKRExpHeap
/* 80005AA0  7C 66 1B 78 */	mr r6, r3
/* 80005AA4  38 60 00 64 */	li r3, 0x64
/* 80005AA8  38 80 01 65 */	li r4, 0x165
/* 80005AAC  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha
/* 80005AB0  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l
/* 80005AB4  38 A5 01 33 */	addi r5, r5, 0x133
/* 80005AB8  4C C6 31 82 */	crclr 6
/* 80005ABC  48 2D AA 75 */	bl JUTReport__FiiPCce
/* 80005AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80005AC4  48 35 C7 59 */	bl _restgpr_26
/* 80005AC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80005ACC  7C 08 03 A6 */	mtlr r0
/* 80005AD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80005AD4  4E 80 00 20 */	blr 
