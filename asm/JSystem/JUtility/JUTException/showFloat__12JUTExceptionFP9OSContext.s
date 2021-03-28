lbl_802E2454:
/* 802E2454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E2458  7C 08 02 A6 */	mflr r0
/* 802E245C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E2460  39 61 00 20 */	addi r11, r1, 0x20
/* 802E2464  48 07 FD 6D */	bl _savegpr_26
/* 802E2468  7C 7A 1B 78 */	mr r26, r3
/* 802E246C  7C 9B 23 78 */	mr r27, r4
/* 802E2470  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2474  28 03 00 00 */	cmplwi r3, 0
/* 802E2478  41 82 00 E8 */	beq lbl_802E2560
/* 802E247C  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2480  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2484  38 84 01 27 */	addi r4, r4, 0x127
/* 802E2488  48 00 57 B1 */	bl print__10JUTConsoleFPCc
/* 802E248C  3B 80 00 00 */	li r28, 0
/* 802E2490  3B E0 00 00 */	li r31, 0
/* 802E2494  3C 60 80 3A */	lis r3, JUTException__stringBase0@ha
/* 802E2498  3B C3 D4 90 */	addi r30, r3, JUTException__stringBase0@l
lbl_802E249C:
/* 802E249C  7F 43 D3 78 */	mr r3, r26
/* 802E24A0  7F 84 E3 78 */	mr r4, r28
/* 802E24A4  7F BB FA 14 */	add r29, r27, r31
/* 802E24A8  C8 3D 00 90 */	lfd f1, 0x90(r29)
/* 802E24AC  FC 20 08 18 */	frsp f1, f1
/* 802E24B0  4B FF FE 15 */	bl showFloatSub__12JUTExceptionFif
/* 802E24B4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E24B8  38 9E 01 4D */	addi r4, r30, 0x14d
/* 802E24BC  48 00 57 7D */	bl print__10JUTConsoleFPCc
/* 802E24C0  7F 43 D3 78 */	mr r3, r26
/* 802E24C4  38 9C 00 0B */	addi r4, r28, 0xb
/* 802E24C8  C8 3D 00 E8 */	lfd f1, 0xe8(r29)
/* 802E24CC  FC 20 08 18 */	frsp f1, f1
/* 802E24D0  4B FF FD F5 */	bl showFloatSub__12JUTExceptionFif
/* 802E24D4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E24D8  38 9E 01 4D */	addi r4, r30, 0x14d
/* 802E24DC  48 00 57 5D */	bl print__10JUTConsoleFPCc
/* 802E24E0  7F 43 D3 78 */	mr r3, r26
/* 802E24E4  38 9C 00 16 */	addi r4, r28, 0x16
/* 802E24E8  C8 3D 01 40 */	lfd f1, 0x140(r29)
/* 802E24EC  FC 20 08 18 */	frsp f1, f1
/* 802E24F0  4B FF FD D5 */	bl showFloatSub__12JUTExceptionFif
/* 802E24F4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E24F8  38 9E 01 4F */	addi r4, r30, 0x14f
/* 802E24FC  48 00 57 3D */	bl print__10JUTConsoleFPCc
/* 802E2500  3B 9C 00 01 */	addi r28, r28, 1
/* 802E2504  2C 1C 00 0A */	cmpwi r28, 0xa
/* 802E2508  3B FF 00 08 */	addi r31, r31, 8
/* 802E250C  41 80 FF 90 */	blt lbl_802E249C
/* 802E2510  7F 43 D3 78 */	mr r3, r26
/* 802E2514  38 80 00 0A */	li r4, 0xa
/* 802E2518  C8 3B 00 E0 */	lfd f1, 0xe0(r27)
/* 802E251C  FC 20 08 18 */	frsp f1, f1
/* 802E2520  4B FF FD A5 */	bl showFloatSub__12JUTExceptionFif
/* 802E2524  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2528  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E252C  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2530  38 84 01 4D */	addi r4, r4, 0x14d
/* 802E2534  48 00 57 05 */	bl print__10JUTConsoleFPCc
/* 802E2538  7F 43 D3 78 */	mr r3, r26
/* 802E253C  38 80 00 15 */	li r4, 0x15
/* 802E2540  C8 3B 01 38 */	lfd f1, 0x138(r27)
/* 802E2544  FC 20 08 18 */	frsp f1, f1
/* 802E2548  4B FF FD 7D */	bl showFloatSub__12JUTExceptionFif
/* 802E254C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2550  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2554  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2558  38 84 01 4F */	addi r4, r4, 0x14f
/* 802E255C  48 00 56 DD */	bl print__10JUTConsoleFPCc
lbl_802E2560:
/* 802E2560  39 61 00 20 */	addi r11, r1, 0x20
/* 802E2564  48 07 FC B9 */	bl _restgpr_26
/* 802E2568  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E256C  7C 08 03 A6 */	mtlr r0
/* 802E2570  38 21 00 20 */	addi r1, r1, 0x20
/* 802E2574  4E 80 00 20 */	blr 
