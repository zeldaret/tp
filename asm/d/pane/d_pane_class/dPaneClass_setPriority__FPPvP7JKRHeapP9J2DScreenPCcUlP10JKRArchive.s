lbl_80255184:
/* 80255184  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80255188  7C 08 02 A6 */	mflr r0
/* 8025518C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80255190  39 61 00 40 */	addi r11, r1, 0x40
/* 80255194  48 10 D0 39 */	bl _savegpr_25
/* 80255198  7C 79 1B 78 */	mr r25, r3
/* 8025519C  7C 9A 23 78 */	mr r26, r4
/* 802551A0  7C BD 2B 78 */	mr r29, r5
/* 802551A4  7C DB 33 78 */	mr r27, r6
/* 802551A8  7C FE 3B 78 */	mr r30, r7
/* 802551AC  7D 1F 43 79 */	or. r31, r8, r8
/* 802551B0  40 82 00 0C */	bne lbl_802551BC
/* 802551B4  38 60 00 00 */	li r3, 0
/* 802551B8  48 00 00 E8 */	b lbl_802552A0
lbl_802551BC:
/* 802551BC  7F E3 FB 78 */	mr r3, r31
/* 802551C0  7F 64 DB 78 */	mr r4, r27
/* 802551C4  4B DD D5 75 */	bl dLib_getExpandSizeFromAramArchive__FP14JKRAramArchivePCc
/* 802551C8  7C 7C 1B 79 */	or. r28, r3, r3
/* 802551CC  40 82 00 0C */	bne lbl_802551D8
/* 802551D0  38 60 00 00 */	li r3, 0
/* 802551D4  48 00 00 CC */	b lbl_802552A0
lbl_802551D8:
/* 802551D8  7F 43 D3 78 */	mr r3, r26
/* 802551DC  7F 84 E3 78 */	mr r4, r28
/* 802551E0  38 A0 00 20 */	li r5, 0x20
/* 802551E4  48 07 92 F1 */	bl alloc__7JKRHeapFUli
/* 802551E8  90 79 00 00 */	stw r3, 0(r25)
/* 802551EC  7F E3 FB 78 */	mr r3, r31
/* 802551F0  80 99 00 00 */	lwz r4, 0(r25)
/* 802551F4  7F 85 E3 78 */	mr r5, r28
/* 802551F8  7F 66 DB 78 */	mr r6, r27
/* 802551FC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80255200  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80255204  7D 89 03 A6 */	mtctr r12
/* 80255208  4E 80 04 21 */	bctrl 
/* 8025520C  7C 65 1B 79 */	or. r5, r3, r3
/* 80255210  41 82 00 8C */	beq lbl_8025529C
/* 80255214  80 99 00 00 */	lwz r4, 0(r25)
/* 80255218  38 61 00 08 */	addi r3, r1, 8
/* 8025521C  3C C0 80 3C */	lis r6, __vt__10JSUIosBase@ha
/* 80255220  38 06 2D F8 */	addi r0, r6, __vt__10JSUIosBase@l
/* 80255224  90 01 00 08 */	stw r0, 8(r1)
/* 80255228  38 00 00 00 */	li r0, 0
/* 8025522C  98 01 00 0C */	stb r0, 0xc(r1)
/* 80255230  3C C0 80 3D */	lis r6, __vt__14JSUInputStream@ha
/* 80255234  38 06 C4 D4 */	addi r0, r6, __vt__14JSUInputStream@l
/* 80255238  90 01 00 08 */	stw r0, 8(r1)
/* 8025523C  3C C0 80 3D */	lis r6, __vt__20JSURandomInputStream@ha
/* 80255240  38 06 C4 B0 */	addi r0, r6, __vt__20JSURandomInputStream@l
/* 80255244  90 01 00 08 */	stw r0, 8(r1)
/* 80255248  3C C0 80 3D */	lis r6, __vt__20JSUMemoryInputStream@ha
/* 8025524C  38 06 C4 F0 */	addi r0, r6, __vt__20JSUMemoryInputStream@l
/* 80255250  90 01 00 08 */	stw r0, 8(r1)
/* 80255254  48 08 72 CD */	bl setBuffer__20JSUMemoryInputStreamFPCvl
/* 80255258  7F A3 EB 78 */	mr r3, r29
/* 8025525C  38 81 00 08 */	addi r4, r1, 8
/* 80255260  7F C5 F3 78 */	mr r5, r30
/* 80255264  7F E6 FB 78 */	mr r6, r31
/* 80255268  48 0A 34 E1 */	bl setPriority__9J2DScreenFP20JSURandomInputStreamUlP10JKRArchive
/* 8025526C  7C 7D 1B 78 */	mr r29, r3
/* 80255270  3C 60 80 3D */	lis r3, __vt__20JSUMemoryInputStream@ha
/* 80255274  38 03 C4 F0 */	addi r0, r3, __vt__20JSUMemoryInputStream@l
/* 80255278  90 01 00 08 */	stw r0, 8(r1)
/* 8025527C  3C 60 80 3D */	lis r3, __vt__20JSURandomInputStream@ha
/* 80255280  38 03 C4 B0 */	addi r0, r3, __vt__20JSURandomInputStream@l
/* 80255284  90 01 00 08 */	stw r0, 8(r1)
/* 80255288  38 61 00 08 */	addi r3, r1, 8
/* 8025528C  38 80 00 00 */	li r4, 0
/* 80255290  48 08 6F AD */	bl __dt__14JSUInputStreamFv
/* 80255294  7F A3 EB 78 */	mr r3, r29
/* 80255298  48 00 00 08 */	b lbl_802552A0
lbl_8025529C:
/* 8025529C  38 60 00 00 */	li r3, 0
lbl_802552A0:
/* 802552A0  39 61 00 40 */	addi r11, r1, 0x40
/* 802552A4  48 10 CF 75 */	bl _restgpr_25
/* 802552A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802552AC  7C 08 03 A6 */	mtlr r0
/* 802552B0  38 21 00 40 */	addi r1, r1, 0x40
/* 802552B4  4E 80 00 20 */	blr 
