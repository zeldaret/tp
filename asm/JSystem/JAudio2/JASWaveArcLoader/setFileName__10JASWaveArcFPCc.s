lbl_8029A70C:
/* 8029A70C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029A710  7C 08 02 A6 */	mflr r0
/* 8029A714  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029A718  39 61 00 20 */	addi r11, r1, 0x20
/* 8029A71C  48 0C 7A B9 */	bl _savegpr_27
/* 8029A720  7C 7B 1B 78 */	mr r27, r3
/* 8029A724  7C 9C 23 78 */	mr r28, r4
/* 8029A728  4B FF FA 09 */	bl getCurrentDir__16JASWaveArcLoaderFv
/* 8029A72C  7C 7E 1B 78 */	mr r30, r3
/* 8029A730  48 0C E4 B5 */	bl strlen
/* 8029A734  7C 7F 1B 78 */	mr r31, r3
/* 8029A738  7F 83 E3 78 */	mr r3, r28
/* 8029A73C  48 0C E4 A9 */	bl strlen
/* 8029A740  7F FF 1A 14 */	add r31, r31, r3
/* 8029A744  4B FF 63 7D */	bl getSystemHeap__9JASKernelFv
/* 8029A748  7C 64 1B 78 */	mr r4, r3
/* 8029A74C  38 7F 00 01 */	addi r3, r31, 1
/* 8029A750  38 A0 FF FC */	li r5, -4
/* 8029A754  48 03 45 BD */	bl __nwa__FUlP7JKRHeapi
/* 8029A758  7C 7D 1B 78 */	mr r29, r3
/* 8029A75C  7F C4 F3 78 */	mr r4, r30
/* 8029A760  48 0C E3 CD */	bl strcpy
/* 8029A764  7F A3 EB 78 */	mr r3, r29
/* 8029A768  7F 84 E3 78 */	mr r4, r28
/* 8029A76C  48 0C E3 51 */	bl strcat
/* 8029A770  38 00 00 00 */	li r0, 0
/* 8029A774  7C 1D F9 AE */	stbx r0, r29, r31
/* 8029A778  7F A3 EB 78 */	mr r3, r29
/* 8029A77C  48 0A DD AD */	bl DVDConvertPathToEntrynum
/* 8029A780  7C 7E 1B 78 */	mr r30, r3
/* 8029A784  7F A3 EB 78 */	mr r3, r29
/* 8029A788  48 03 45 D9 */	bl __dla__FPv
/* 8029A78C  2C 1E 00 00 */	cmpwi r30, 0
/* 8029A790  41 80 00 10 */	blt lbl_8029A7A0
/* 8029A794  7F 63 DB 78 */	mr r3, r27
/* 8029A798  7F C4 F3 78 */	mr r4, r30
/* 8029A79C  4B FF FF 11 */	bl setEntryNum__10JASWaveArcFl
lbl_8029A7A0:
/* 8029A7A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8029A7A4  48 0C 7A 7D */	bl _restgpr_27
/* 8029A7A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029A7AC  7C 08 03 A6 */	mtlr r0
/* 8029A7B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8029A7B4  4E 80 00 20 */	blr 
