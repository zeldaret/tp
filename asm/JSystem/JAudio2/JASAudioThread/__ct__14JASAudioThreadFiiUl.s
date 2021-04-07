lbl_8029CCDC:
/* 8029CCDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029CCE0  7C 08 02 A6 */	mflr r0
/* 8029CCE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029CCE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029CCEC  7C 7F 1B 78 */	mr r31, r3
/* 8029CCF0  7C 87 23 78 */	mr r7, r4
/* 8029CCF4  7C A0 2B 78 */	mr r0, r5
/* 8029CCF8  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 8029CCFC  7C C5 33 78 */	mr r5, r6
/* 8029CD00  7C 06 03 78 */	mr r6, r0
/* 8029CD04  48 03 49 0D */	bl __ct__9JKRThreadFP7JKRHeapUlii
/* 8029CD08  34 7F 00 7C */	addic. r3, r31, 0x7c
/* 8029CD0C  41 82 00 08 */	beq lbl_8029CD14
/* 8029CD10  38 63 FF 84 */	addi r3, r3, -124
lbl_8029CD14:
/* 8029CD14  90 6D 86 0C */	stw r3, data_80450B8C(r13)
/* 8029CD18  3C 60 80 3C */	lis r3, __vt__14JASAudioThread@ha /* 0x803C78E0@ha */
/* 8029CD1C  38 03 78 E0 */	addi r0, r3, __vt__14JASAudioThread@l /* 0x803C78E0@l */
/* 8029CD20  90 1F 00 00 */	stw r0, 0(r31)
/* 8029CD24  38 00 00 00 */	li r0, 0
/* 8029CD28  98 1F 00 84 */	stb r0, 0x84(r31)
/* 8029CD2C  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8029CD30  48 0A 3F 45 */	bl OSInitThreadQueue
/* 8029CD34  7F E3 FB 78 */	mr r3, r31
/* 8029CD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029CD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029CD40  7C 08 03 A6 */	mtlr r0
/* 8029CD44  38 21 00 10 */	addi r1, r1, 0x10
/* 8029CD48  4E 80 00 20 */	blr 
