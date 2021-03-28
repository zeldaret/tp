lbl_8003A348:
/* 8003A348  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003A34C  7C 08 02 A6 */	mflr r0
/* 8003A350  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003A354  39 61 00 40 */	addi r11, r1, 0x40
/* 8003A358  48 32 7E 81 */	bl _savegpr_28
/* 8003A35C  7C 7C 1B 78 */	mr r28, r3
/* 8003A360  7C 9D 23 78 */	mr r29, r4
/* 8003A364  7C A8 2B 78 */	mr r8, r5
/* 8003A368  7C DE 33 78 */	mr r30, r6
/* 8003A36C  7C FF 3B 78 */	mr r31, r7
/* 8003A370  88 05 00 00 */	lbz r0, 0(r5)
/* 8003A374  7C 00 07 75 */	extsb. r0, r0
/* 8003A378  41 82 00 4C */	beq lbl_8003A3C4
/* 8003A37C  38 61 00 08 */	addi r3, r1, 8
/* 8003A380  38 80 00 28 */	li r4, 0x28
/* 8003A384  3C A0 80 38 */	lis r5, d_d_resorce__stringBase0@ha
/* 8003A388  38 A5 98 B8 */	addi r5, r5, d_d_resorce__stringBase0@l
/* 8003A38C  7D 06 43 78 */	mr r6, r8
/* 8003A390  7F A7 EB 78 */	mr r7, r29
/* 8003A394  4C C6 31 82 */	crclr 6
/* 8003A398  48 32 C2 25 */	bl snprintf
/* 8003A39C  38 61 00 08 */	addi r3, r1, 8
/* 8003A3A0  7F C4 F3 78 */	mr r4, r30
/* 8003A3A4  7F E5 FB 78 */	mr r5, r31
/* 8003A3A8  4B FD BA 6D */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 8003A3AC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8003A3B0  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8003A3B4  28 00 00 00 */	cmplwi r0, 0
/* 8003A3B8  40 82 00 0C */	bne lbl_8003A3C4
/* 8003A3BC  38 60 00 00 */	li r3, 0
/* 8003A3C0  48 00 00 18 */	b lbl_8003A3D8
lbl_8003A3C4:
/* 8003A3C4  7F 83 E3 78 */	mr r3, r28
/* 8003A3C8  7F A4 EB 78 */	mr r4, r29
/* 8003A3CC  38 A0 00 0A */	li r5, 0xa
/* 8003A3D0  48 32 E7 19 */	bl strncpy
/* 8003A3D4  38 60 00 01 */	li r3, 1
lbl_8003A3D8:
/* 8003A3D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8003A3DC  48 32 7E 49 */	bl _restgpr_28
/* 8003A3E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003A3E4  7C 08 03 A6 */	mtlr r0
/* 8003A3E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8003A3EC  4E 80 00 20 */	blr 
