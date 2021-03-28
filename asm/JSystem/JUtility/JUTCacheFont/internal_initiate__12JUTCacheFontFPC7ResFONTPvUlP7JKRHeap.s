lbl_802DD54C:
/* 802DD54C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DD550  7C 08 02 A6 */	mflr r0
/* 802DD554  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DD558  39 61 00 30 */	addi r11, r1, 0x30
/* 802DD55C  48 08 4C 79 */	bl _savegpr_27
/* 802DD560  7C 7B 1B 78 */	mr r27, r3
/* 802DD564  7C 9C 23 78 */	mr r28, r4
/* 802DD568  7C BD 2B 78 */	mr r29, r5
/* 802DD56C  7C DE 33 78 */	mr r30, r6
/* 802DD570  7C FF 3B 78 */	mr r31, r7
/* 802DD574  4B FF FD 29 */	bl deleteMemBlocks_CacheFont__12JUTCacheFontFv
/* 802DD578  7F 63 DB 78 */	mr r3, r27
/* 802DD57C  4B FF FD A5 */	bl initialize_state__12JUTCacheFontFv
/* 802DD580  7F 63 DB 78 */	mr r3, r27
/* 802DD584  48 00 1B 09 */	bl deleteMemBlocks_ResFont__10JUTResFontFv
/* 802DD588  7F 63 DB 78 */	mr r3, r27
/* 802DD58C  48 00 1B 25 */	bl initialize_state__10JUTResFontFv
/* 802DD590  7F 63 DB 78 */	mr r3, r27
/* 802DD594  48 00 17 91 */	bl initialize_state__7JUTFontFv
/* 802DD598  28 1C 00 00 */	cmplwi r28, 0
/* 802DD59C  40 82 00 0C */	bne lbl_802DD5A8
/* 802DD5A0  38 60 00 00 */	li r3, 0
/* 802DD5A4  48 00 00 94 */	b lbl_802DD638
lbl_802DD5A8:
/* 802DD5A8  93 9B 00 48 */	stw r28, 0x48(r27)
/* 802DD5AC  38 00 00 01 */	li r0, 1
/* 802DD5B0  98 1B 00 04 */	stb r0, 4(r27)
/* 802DD5B4  38 1B 00 88 */	addi r0, r27, 0x88
/* 802DD5B8  90 01 00 08 */	stw r0, 8(r1)
/* 802DD5BC  7F 63 DB 78 */	mr r3, r27
/* 802DD5C0  7F 84 E3 78 */	mr r4, r28
/* 802DD5C4  38 BB 00 60 */	addi r5, r27, 0x60
/* 802DD5C8  38 DB 00 70 */	addi r6, r27, 0x70
/* 802DD5CC  38 FB 00 62 */	addi r7, r27, 0x62
/* 802DD5D0  39 1B 00 74 */	addi r8, r27, 0x74
/* 802DD5D4  39 3B 00 64 */	addi r9, r27, 0x64
/* 802DD5D8  39 5B 00 78 */	addi r10, r27, 0x78
/* 802DD5DC  4B FF FD 81 */	bl getMemorySize__12JUTCacheFontFPC7ResFONTPUsPUlPUsPUlPUsPUlPUl
/* 802DD5E0  7F 63 DB 78 */	mr r3, r27
/* 802DD5E4  7F A4 EB 78 */	mr r4, r29
/* 802DD5E8  7F C5 F3 78 */	mr r5, r30
/* 802DD5EC  7F E6 FB 78 */	mr r6, r31
/* 802DD5F0  48 00 00 61 */	bl allocArea__12JUTCacheFontFPvUlP7JKRHeap
/* 802DD5F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DD5F8  40 82 00 0C */	bne lbl_802DD604
/* 802DD5FC  38 60 00 00 */	li r3, 0
/* 802DD600  48 00 00 38 */	b lbl_802DD638
lbl_802DD604:
/* 802DD604  7F 63 DB 78 */	mr r3, r27
/* 802DD608  7F E4 FB 78 */	mr r4, r31
/* 802DD60C  48 00 01 F9 */	bl allocArray__12JUTCacheFontFP7JKRHeap
/* 802DD610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DD614  40 82 00 0C */	bne lbl_802DD620
/* 802DD618  38 60 00 00 */	li r3, 0
/* 802DD61C  48 00 00 1C */	b lbl_802DD638
lbl_802DD620:
/* 802DD620  7F 63 DB 78 */	mr r3, r27
/* 802DD624  81 9B 00 00 */	lwz r12, 0(r27)
/* 802DD628  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802DD62C  7D 89 03 A6 */	mtctr r12
/* 802DD630  4E 80 04 21 */	bctrl 
/* 802DD634  38 60 00 01 */	li r3, 1
lbl_802DD638:
/* 802DD638  39 61 00 30 */	addi r11, r1, 0x30
/* 802DD63C  48 08 4B E5 */	bl _restgpr_27
/* 802DD640  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DD644  7C 08 03 A6 */	mtlr r0
/* 802DD648  38 21 00 30 */	addi r1, r1, 0x30
/* 802DD64C  4E 80 00 20 */	blr 
