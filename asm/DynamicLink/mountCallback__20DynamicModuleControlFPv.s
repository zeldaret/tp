lbl_802626D0:
/* 802626D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802626D4  7C 08 02 A6 */	mflr r0
/* 802626D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802626DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802626E0  4B DA C7 0D */	bl mDoExt_getArchiveHeap__Fv
/* 802626E4  7C 7F 1B 78 */	mr r31, r3
/* 802626E8  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 802626EC  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 802626F0  38 63 00 E0 */	addi r3, r3, 0xe0
/* 802626F4  7F E4 FB 78 */	mr r4, r31
/* 802626F8  38 A0 00 00 */	li r5, 0
/* 802626FC  48 07 22 B9 */	bl mount__12JKRFileCacheFPCcP7JKRHeapPCc
/* 80262700  90 6D 8B C8 */	stw r3, sFileCache__20DynamicModuleControl(r13)
/* 80262704  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 80262708  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 8026270C  38 63 00 F3 */	addi r3, r3, 0xf3
/* 80262710  38 80 00 04 */	li r4, 4
/* 80262714  7F E5 FB 78 */	mr r5, r31
/* 80262718  38 C0 00 01 */	li r6, 1
/* 8026271C  48 07 30 C9 */	bl mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
/* 80262720  90 6D 8B C4 */	stw r3, sArchive__20DynamicModuleControl(r13)
/* 80262724  28 03 00 00 */	cmplwi r3, 0
/* 80262728  40 82 00 1C */	bne lbl_80262744
/* 8026272C  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 80262730  38 83 A4 A0 */	addi r4, r3, DynamicLink__stringBase0@l
/* 80262734  38 64 00 FC */	addi r3, r4, 0xfc
/* 80262738  38 84 00 F3 */	addi r4, r4, 0xf3
/* 8026273C  4C C6 31 82 */	crclr 6
/* 80262740  4B DA 45 AD */	bl OSReport_Warning
lbl_80262744:
/* 80262744  80 6D 8B C4 */	lwz r3, sArchive__20DynamicModuleControl(r13)
/* 80262748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026274C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80262750  7C 08 03 A6 */	mtlr r0
/* 80262754  38 21 00 10 */	addi r1, r1, 0x10
/* 80262758  4E 80 00 20 */	blr 
