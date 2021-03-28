lbl_802E4CF4:
/* 802E4CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4CF8  7C 08 02 A6 */	mflr r0
/* 802E4CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E4D04  93 C1 00 08 */	stw r30, 8(r1)
/* 802E4D08  7C 7F 1B 78 */	mr r31, r3
/* 802E4D0C  7C 9E 23 78 */	mr r30, r4
/* 802E4D10  3C 60 80 3D */	lis r3, __vt__8JUTVideo@ha
/* 802E4D14  38 03 C9 80 */	addi r0, r3, __vt__8JUTVideo@l
/* 802E4D18  90 1F 00 00 */	stw r0, 0(r31)
/* 802E4D1C  38 00 00 00 */	li r0, 0
/* 802E4D20  90 1F 00 04 */	stw r0, 4(r31)
/* 802E4D24  48 06 77 F1 */	bl VIInit
/* 802E4D28  38 00 00 01 */	li r0, 1
/* 802E4D2C  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 802E4D30  38 00 00 02 */	li r0, 2
/* 802E4D34  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802E4D38  7F E3 FB 78 */	mr r3, r31
/* 802E4D3C  7F C4 F3 78 */	mr r4, r30
/* 802E4D40  48 00 04 59 */	bl setRenderMode__8JUTVideoFPC16_GXRenderModeObj
/* 802E4D44  38 60 00 01 */	li r3, 1
/* 802E4D48  48 06 8A F9 */	bl VISetBlack
/* 802E4D4C  48 06 89 49 */	bl VIFlush
/* 802E4D50  38 00 00 00 */	li r0, 0
/* 802E4D54  90 1F 00 08 */	stw r0, 8(r31)
/* 802E4D58  48 06 8B 65 */	bl VIGetRetraceCount
/* 802E4D5C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802E4D60  38 00 00 01 */	li r0, 1
/* 802E4D64  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802E4D68  38 00 00 00 */	li r0, 0
/* 802E4D6C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802E4D70  48 05 D9 A5 */	bl OSGetTick
/* 802E4D74  90 6D 8F BC */	stw r3, sVideoLastTick__8JUTVideo(r13)
/* 802E4D78  3C 60 00 0A */	lis r3, 0x000A /* 0x000A3930@ha */
/* 802E4D7C  38 03 39 30 */	addi r0, r3, 0x3930 /* 0x000A3930@l */
/* 802E4D80  90 0D 8F C0 */	stw r0, sVideoInterval__8JUTVideo(r13)
/* 802E4D84  3C 60 80 2E */	lis r3, preRetraceProc__8JUTVideoFUl@ha
/* 802E4D88  38 63 4E 50 */	addi r3, r3, preRetraceProc__8JUTVideoFUl@l
/* 802E4D8C  48 06 74 55 */	bl VISetPreRetraceCallback
/* 802E4D90  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 802E4D94  3C 60 80 2E */	lis r3, postRetraceProc__8JUTVideoFUl@ha
/* 802E4D98  38 63 51 44 */	addi r3, r3, postRetraceProc__8JUTVideoFUl@l
/* 802E4D9C  48 06 74 89 */	bl VISetPostRetraceCallback
/* 802E4DA0  90 7F 00 20 */	stw r3, 0x20(r31)
/* 802E4DA4  38 00 00 00 */	li r0, 0
/* 802E4DA8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802E4DAC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802E4DB0  38 7F 00 38 */	addi r3, r31, 0x38
/* 802E4DB4  38 9F 00 34 */	addi r4, r31, 0x34
/* 802E4DB8  38 A0 00 01 */	li r5, 1
/* 802E4DBC  48 05 9B D9 */	bl OSInitMessageQueue
/* 802E4DC0  3C 60 80 2E */	lis r3, drawDoneCallback__8JUTVideoFv@ha
/* 802E4DC4  38 63 50 BC */	addi r3, r3, drawDoneCallback__8JUTVideoFv@l
/* 802E4DC8  48 07 77 E5 */	bl GXSetDrawDoneCallback
/* 802E4DCC  7F E3 FB 78 */	mr r3, r31
/* 802E4DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E4DD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E4DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4DDC  7C 08 03 A6 */	mtlr r0
/* 802E4DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4DE4  4E 80 00 20 */	blr 
