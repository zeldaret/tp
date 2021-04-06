lbl_80005AD8:
/* 80005AD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80005ADC  7C 08 02 A6 */	mflr r0
/* 80005AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80005AE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80005AE8  48 35 C6 DD */	bl _savegpr_23
/* 80005AEC  3C 60 80 3A */	lis r3, COPYDATE_STRING__7mDoMain@ha /* 0x803A2EE0@ha */
/* 80005AF0  3B 23 2E E0 */	addi r25, r3, COPYDATE_STRING__7mDoMain@l /* 0x803A2EE0@l */
/* 80005AF4  88 0D 85 99 */	lbz r0, struct_80450B18+0x1(r13)
/* 80005AF8  28 00 00 01 */	cmplwi r0, 1
/* 80005AFC  41 80 00 20 */	blt lbl_80005B1C
/* 80005B00  28 00 00 06 */	cmplwi r0, 6
/* 80005B04  41 81 00 18 */	bgt lbl_80005B1C
/* 80005B08  38 79 00 14 */	addi r3, r25, 0x14
/* 80005B0C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80005B10  7C 63 02 14 */	add r3, r3, r0
/* 80005B14  80 63 FF FC */	lwz r3, -4(r3)
/* 80005B18  4B FF FD AD */	bl heapDisplay__9HeapCheckCFv
lbl_80005B1C:
/* 80005B1C  88 0D 80 08 */	lbz r0, data_80450588(r13)
/* 80005B20  28 00 00 05 */	cmplwi r0, 5
/* 80005B24  40 82 00 A0 */	bne lbl_80005BC4
/* 80005B28  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 80005B2C  83 23 00 94 */	lwz r25, 0x94(r3)
/* 80005B30  28 19 00 00 */	cmplwi r25, 0
/* 80005B34  41 82 02 00 */	beq lbl_80005D34
/* 80005B38  38 60 01 DB */	li r3, 0x1db
/* 80005B3C  38 80 00 64 */	li r4, 0x64
/* 80005B40  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005B44  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005B48  38 A5 01 96 */	addi r5, r5, 0x196
/* 80005B4C  4C C6 31 82 */	crclr 6
/* 80005B50  48 2D A9 E1 */	bl JUTReport__FiiPCce
/* 80005B54  7F 23 CB 78 */	mr r3, r25
/* 80005B58  48 2C D5 DD */	bl getFreeSize__11JKRAramHeapFv
/* 80005B5C  7C 66 1B 78 */	mr r6, r3
/* 80005B60  38 60 01 DB */	li r3, 0x1db
/* 80005B64  38 80 00 72 */	li r4, 0x72
/* 80005B68  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005B6C  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005B70  38 A5 01 A0 */	addi r5, r5, 0x1a0
/* 80005B74  4C C6 31 82 */	crclr 6
/* 80005B78  48 2D A9 B9 */	bl JUTReport__FiiPCce
/* 80005B7C  38 60 01 DB */	li r3, 0x1db
/* 80005B80  38 80 00 80 */	li r4, 0x80
/* 80005B84  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005B88  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005B8C  38 A5 01 50 */	addi r5, r5, 0x150
/* 80005B90  4C C6 31 82 */	crclr 6
/* 80005B94  48 2D A9 9D */	bl JUTReport__FiiPCce
/* 80005B98  7F 23 CB 78 */	mr r3, r25
/* 80005B9C  48 2C D6 11 */	bl getTotalFreeSize__11JKRAramHeapFv
/* 80005BA0  7C 66 1B 78 */	mr r6, r3
/* 80005BA4  38 60 01 DB */	li r3, 0x1db
/* 80005BA8  38 80 00 8E */	li r4, 0x8e
/* 80005BAC  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005BB0  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005BB4  38 A5 01 A0 */	addi r5, r5, 0x1a0
/* 80005BB8  4C C6 31 82 */	crclr 6
/* 80005BBC  48 2D A9 75 */	bl JUTReport__FiiPCce
/* 80005BC0  48 00 01 74 */	b lbl_80005D34
lbl_80005BC4:
/* 80005BC4  28 00 00 00 */	cmplwi r0, 0
/* 80005BC8  41 82 01 6C */	beq lbl_80005D34
/* 80005BCC  38 60 01 DB */	li r3, 0x1db
/* 80005BD0  38 80 00 64 */	li r4, 0x64
/* 80005BD4  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005BD8  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005BDC  38 A5 01 A3 */	addi r5, r5, 0x1a3
/* 80005BE0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80005BE4  38 D9 00 34 */	addi r6, r25, 0x34
/* 80005BE8  7C C6 00 2E */	lwzx r6, r6, r0
/* 80005BEC  4C C6 31 82 */	crclr 6
/* 80005BF0  48 2D A9 41 */	bl JUTReport__FiiPCce
/* 80005BF4  38 60 01 DB */	li r3, 0x1db
/* 80005BF8  38 80 00 72 */	li r4, 0x72
/* 80005BFC  3C A0 80 37 */	lis r5, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005C00  38 A5 39 A0 */	addi r5, r5, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005C04  38 A5 01 A3 */	addi r5, r5, 0x1a3
/* 80005C08  88 0D 80 08 */	lbz r0, data_80450588(r13)
/* 80005C0C  54 00 10 3A */	slwi r0, r0, 2
/* 80005C10  38 D9 00 48 */	addi r6, r25, 0x48
/* 80005C14  7C C6 00 2E */	lwzx r6, r6, r0
/* 80005C18  4C C6 31 82 */	crclr 6
/* 80005C1C  48 2D A9 15 */	bl JUTReport__FiiPCce
/* 80005C20  3B E0 00 00 */	li r31, 0
/* 80005C24  3B 80 00 00 */	li r28, 0
/* 80005C28  3B 60 00 00 */	li r27, 0
/* 80005C2C  3B 39 00 14 */	addi r25, r25, 0x14
/* 80005C30  3C 60 80 37 */	lis r3, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005C34  3B 43 39 A0 */	addi r26, r3, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
lbl_80005C38:
/* 80005C38  7E F9 D8 2E */	lwzx r23, r25, r27
/* 80005C3C  83 17 00 08 */	lwz r24, 8(r23)
/* 80005C40  88 0D 80 08 */	lbz r0, data_80450588(r13)
/* 80005C44  2C 00 00 03 */	cmpwi r0, 3
/* 80005C48  41 82 00 4C */	beq lbl_80005C94
/* 80005C4C  40 80 00 14 */	bge lbl_80005C60
/* 80005C50  2C 00 00 01 */	cmpwi r0, 1
/* 80005C54  41 82 00 18 */	beq lbl_80005C6C
/* 80005C58  40 80 00 30 */	bge lbl_80005C88
/* 80005C5C  48 00 00 7C */	b lbl_80005CD8
lbl_80005C60:
/* 80005C60  2C 00 00 05 */	cmpwi r0, 5
/* 80005C64  40 80 00 74 */	bge lbl_80005CD8
/* 80005C68  48 00 00 48 */	b lbl_80005CB0
lbl_80005C6C:
/* 80005C6C  7F 03 C3 78 */	mr r3, r24
/* 80005C70  48 2C 8B 15 */	bl getTotalFreeSize__7JKRHeapFv
/* 80005C74  7C 7E 1B 78 */	mr r30, r3
/* 80005C78  7F 03 C3 78 */	mr r3, r24
/* 80005C7C  48 2C 8A B1 */	bl getFreeSize__7JKRHeapFv
/* 80005C80  7C 7D 1B 78 */	mr r29, r3
/* 80005C84  48 00 00 54 */	b lbl_80005CD8
lbl_80005C88:
/* 80005C88  83 D7 00 0C */	lwz r30, 0xc(r23)
/* 80005C8C  83 B8 00 38 */	lwz r29, 0x38(r24)
/* 80005C90  48 00 00 48 */	b lbl_80005CD8
lbl_80005C94:
/* 80005C94  7E E3 BB 78 */	mr r3, r23
/* 80005C98  4B FF FC 09 */	bl getUsedCount__9HeapCheckCFv
/* 80005C9C  7C 7E 1B 78 */	mr r30, r3
/* 80005CA0  7F 03 C3 78 */	mr r3, r24
/* 80005CA4  48 2C A0 C1 */	bl getTotalUsedSize__10JKRExpHeapCFv
/* 80005CA8  7C 7D 1B 78 */	mr r29, r3
/* 80005CAC  48 00 00 2C */	b lbl_80005CD8
lbl_80005CB0:
/* 80005CB0  7E E3 BB 78 */	mr r3, r23
/* 80005CB4  4B FF FB ED */	bl getUsedCount__9HeapCheckCFv
/* 80005CB8  80 17 00 20 */	lwz r0, 0x20(r23)
/* 80005CBC  7C 00 18 50 */	subf r0, r0, r3
/* 80005CC0  7C 1E 03 78 */	mr r30, r0
/* 80005CC4  80 77 00 08 */	lwz r3, 8(r23)
/* 80005CC8  48 2C A0 9D */	bl getTotalUsedSize__10JKRExpHeapCFv
/* 80005CCC  80 17 00 24 */	lwz r0, 0x24(r23)
/* 80005CD0  7C 00 18 50 */	subf r0, r0, r3
/* 80005CD4  7C 1D 03 78 */	mr r29, r0
lbl_80005CD8:
/* 80005CD8  38 60 01 DB */	li r3, 0x1db
/* 80005CDC  38 9C 00 96 */	addi r4, r28, 0x96
/* 80005CE0  38 BA 01 A6 */	addi r5, r26, 0x1a6
/* 80005CE4  80 D7 00 00 */	lwz r6, 0(r23)
/* 80005CE8  4C C6 31 82 */	crclr 6
/* 80005CEC  48 2D A8 45 */	bl JUTReport__FiiPCce
/* 80005CF0  38 60 01 DB */	li r3, 0x1db
/* 80005CF4  38 9C 00 A4 */	addi r4, r28, 0xa4
/* 80005CF8  38 BA 01 AC */	addi r5, r26, 0x1ac
/* 80005CFC  7F C6 F3 78 */	mr r6, r30
/* 80005D00  4C C6 31 82 */	crclr 6
/* 80005D04  48 2D A8 2D */	bl JUTReport__FiiPCce
/* 80005D08  38 60 01 DB */	li r3, 0x1db
/* 80005D0C  38 9C 00 B2 */	addi r4, r28, 0xb2
/* 80005D10  38 BA 01 AC */	addi r5, r26, 0x1ac
/* 80005D14  7F A6 EB 78 */	mr r6, r29
/* 80005D18  4C C6 31 82 */	crclr 6
/* 80005D1C  48 2D A8 15 */	bl JUTReport__FiiPCce
/* 80005D20  3B FF 00 01 */	addi r31, r31, 1
/* 80005D24  2C 1F 00 08 */	cmpwi r31, 8
/* 80005D28  3B 9C 00 2C */	addi r28, r28, 0x2c
/* 80005D2C  3B 7B 00 04 */	addi r27, r27, 4
/* 80005D30  41 80 FF 08 */	blt lbl_80005C38
lbl_80005D34:
/* 80005D34  39 61 00 30 */	addi r11, r1, 0x30
/* 80005D38  48 35 C4 D9 */	bl _restgpr_23
/* 80005D3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80005D40  7C 08 03 A6 */	mtlr r0
/* 80005D44  38 21 00 30 */	addi r1, r1, 0x30
/* 80005D48  4E 80 00 20 */	blr 
