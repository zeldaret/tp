lbl_802E20C0:
/* 802E20C0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802E20C4  7C 08 02 A6 */	mflr r0
/* 802E20C8  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E20CC  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 802E20D0  93 C1 01 08 */	stw r30, 0x108(r1)
/* 802E20D4  7C 7E 1B 78 */	mr r30, r3
/* 802E20D8  7C 9F 23 78 */	mr r31, r4
/* 802E20DC  38 61 00 08 */	addi r3, r1, 8
/* 802E20E0  38 80 00 FF */	li r4, 0xff
/* 802E20E4  48 08 45 AD */	bl vsnprintf
/* 802E20E8  80 0D 8F 88 */	lwz r0, sErrorManager__12JUTException(r13)
/* 802E20EC  28 00 00 00 */	cmplwi r0, 0
/* 802E20F0  40 82 00 18 */	bne lbl_802E2108
/* 802E20F4  7F C3 F3 78 */	mr r3, r30
/* 802E20F8  7F E4 FB 78 */	mr r4, r31
/* 802E20FC  38 A1 00 08 */	addi r5, r1, 8
/* 802E2100  4C C6 31 82 */	crclr 6
/* 802E2104  4B D2 4D 79 */	bl OSPanic
lbl_802E2108:
/* 802E2108  48 05 9D 8D */	bl OSGetCurrentContext
/* 802E210C  7C 64 1B 78 */	mr r4, r3
/* 802E2110  3C 60 80 43 */	lis r3, context@ha /* 0x804345A8@ha */
/* 802E2114  38 63 45 A8 */	addi r3, r3, context@l /* 0x804345A8@l */
/* 802E2118  38 A0 02 C8 */	li r5, 0x2c8
/* 802E211C  4B D2 14 25 */	bl memcpy
/* 802E2120  48 05 9E D9 */	bl OSGetStackPointer
/* 802E2124  80 8D 8F 88 */	lwz r4, sErrorManager__12JUTException(r13)
/* 802E2128  90 64 00 A0 */	stw r3, 0xa0(r4)
/* 802E212C  80 0D 8F 8C */	lwz r0, sPreUserCallback__12JUTException(r13)
/* 802E2130  3C 60 80 43 */	lis r3, exCallbackObject@ha /* 0x80434578@ha */
/* 802E2134  38 83 45 78 */	addi r4, r3, exCallbackObject@l /* 0x80434578@l */
/* 802E2138  90 04 00 00 */	stw r0, 0(r4)
/* 802E213C  38 00 00 FF */	li r0, 0xff
/* 802E2140  B0 04 00 04 */	sth r0, 4(r4)
/* 802E2144  3C 60 80 43 */	lis r3, context@ha /* 0x804345A8@ha */
/* 802E2148  38 03 45 A8 */	addi r0, r3, context@l /* 0x804345A8@l */
/* 802E214C  90 04 00 08 */	stw r0, 8(r4)
/* 802E2150  38 00 00 00 */	li r0, 0
/* 802E2154  90 04 00 0C */	stw r0, 0xc(r4)
/* 802E2158  90 04 00 10 */	stw r0, 0x10(r4)
/* 802E215C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2160  28 03 00 00 */	cmplwi r3, 0
/* 802E2164  41 82 00 14 */	beq lbl_802E2178
/* 802E2168  41 82 00 30 */	beq lbl_802E2198
/* 802E216C  80 03 00 58 */	lwz r0, 0x58(r3)
/* 802E2170  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802E2174  40 82 00 24 */	bne lbl_802E2198
lbl_802E2178:
/* 802E2178  3C 60 80 3A */	lis r3, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E217C  38 63 D4 90 */	addi r3, r3, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2180  38 63 00 C2 */	addi r3, r3, 0xc2
/* 802E2184  38 81 00 08 */	addi r4, r1, 8
/* 802E2188  7F C5 F3 78 */	mr r5, r30
/* 802E218C  7F E6 FB 78 */	mr r6, r31
/* 802E2190  4C C6 31 82 */	crclr 6
/* 802E2194  4B D2 49 29 */	bl OSReport
lbl_802E2198:
/* 802E2198  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E219C  28 03 00 00 */	cmplwi r3, 0
/* 802E21A0  41 82 00 24 */	beq lbl_802E21C4
/* 802E21A4  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E21A8  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E21AC  38 84 00 C2 */	addi r4, r4, 0xc2
/* 802E21B0  38 A1 00 08 */	addi r5, r1, 8
/* 802E21B4  7F C6 F3 78 */	mr r6, r30
/* 802E21B8  7F E7 FB 78 */	mr r7, r31
/* 802E21BC  4C C6 31 82 */	crclr 6
/* 802E21C0  48 00 59 F9 */	bl print_f__10JUTConsoleFPCce
lbl_802E21C4:
/* 802E21C4  3C 60 80 3D */	lis r3, sMessageQueue__12JUTException@ha /* 0x803CC620@ha */
/* 802E21C8  38 63 C6 20 */	addi r3, r3, sMessageQueue__12JUTException@l /* 0x803CC620@l */
/* 802E21CC  3C 80 80 43 */	lis r4, exCallbackObject@ha /* 0x80434578@ha */
/* 802E21D0  38 84 45 78 */	addi r4, r4, exCallbackObject@l /* 0x80434578@l */
/* 802E21D4  38 A0 00 01 */	li r5, 1
/* 802E21D8  48 05 C8 1D */	bl OSSendMessage
/* 802E21DC  48 05 EA A9 */	bl OSGetCurrentThread
/* 802E21E0  48 05 F8 5D */	bl OSSuspendThread
/* 802E21E4  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 802E21E8  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 802E21EC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802E21F0  7C 08 03 A6 */	mtlr r0
/* 802E21F4  38 21 01 10 */	addi r1, r1, 0x110
/* 802E21F8  4E 80 00 20 */	blr 
