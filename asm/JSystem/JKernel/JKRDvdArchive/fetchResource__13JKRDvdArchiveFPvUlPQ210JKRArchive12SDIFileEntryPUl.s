lbl_802D8168:
/* 802D8168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D816C  7C 08 02 A6 */	mflr r0
/* 802D8170  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D8174  39 61 00 20 */	addi r11, r1, 0x20
/* 802D8178  48 08 A0 5D */	bl _savegpr_27
/* 802D817C  7C 69 1B 78 */	mr r9, r3
/* 802D8180  7C 9B 23 78 */	mr r27, r4
/* 802D8184  7C BC 2B 78 */	mr r28, r5
/* 802D8188  7C DD 33 78 */	mr r29, r6
/* 802D818C  7C FE 3B 78 */	mr r30, r7
/* 802D8190  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 802D8194  7C BF 2B 78 */	mr r31, r5
/* 802D8198  80 06 00 04 */	lwz r0, 4(r6)
/* 802D819C  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D81A0  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D81A4  40 82 00 0C */	bne lbl_802D81B0
/* 802D81A8  39 00 00 00 */	li r8, 0
/* 802D81AC  48 00 00 18 */	b lbl_802D81C4
lbl_802D81B0:
/* 802D81B0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 802D81B4  41 82 00 0C */	beq lbl_802D81C0
/* 802D81B8  39 00 00 02 */	li r8, 2
/* 802D81BC  48 00 00 08 */	b lbl_802D81C4
lbl_802D81C0:
/* 802D81C0  39 00 00 01 */	li r8, 1
lbl_802D81C4:
/* 802D81C4  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802D81C8  28 00 00 00 */	cmplwi r0, 0
/* 802D81CC  40 82 00 30 */	bne lbl_802D81FC
/* 802D81D0  57 9C 00 34 */	rlwinm r28, r28, 0, 0, 0x1a
/* 802D81D4  80 69 00 40 */	lwz r3, 0x40(r9)
/* 802D81D8  80 89 00 64 */	lwz r4, 0x64(r9)
/* 802D81DC  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D81E0  7C 84 02 14 */	add r4, r4, r0
/* 802D81E4  7F 66 DB 78 */	mr r6, r27
/* 802D81E8  7F 87 E3 78 */	mr r7, r28
/* 802D81EC  81 29 00 5C */	lwz r9, 0x5c(r9)
/* 802D81F0  48 00 00 7D */	bl fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii
/* 802D81F4  7C 7F 1B 78 */	mr r31, r3
/* 802D81F8  48 00 00 4C */	b lbl_802D8244
lbl_802D81FC:
/* 802D81FC  2C 08 00 02 */	cmpwi r8, 2
/* 802D8200  40 82 00 28 */	bne lbl_802D8228
/* 802D8204  7D 23 4B 78 */	mr r3, r9
/* 802D8208  7F A4 EB 78 */	mr r4, r29
/* 802D820C  81 89 00 00 */	lwz r12, 0(r9)
/* 802D8210  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802D8214  7D 89 03 A6 */	mtctr r12
/* 802D8218  4E 80 04 21 */	bctrl 
/* 802D821C  28 03 00 00 */	cmplwi r3, 0
/* 802D8220  41 82 00 08 */	beq lbl_802D8228
/* 802D8224  7C 7F 1B 78 */	mr r31, r3
lbl_802D8228:
/* 802D8228  7C 1F E0 40 */	cmplw r31, r28
/* 802D822C  40 81 00 08 */	ble lbl_802D8234
/* 802D8230  7F 9F E3 78 */	mr r31, r28
lbl_802D8234:
/* 802D8234  7F 63 DB 78 */	mr r3, r27
/* 802D8238  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 802D823C  7F E5 FB 78 */	mr r5, r31
/* 802D8240  4B FF 68 D9 */	bl copyMemory__7JKRHeapFPvPvUl
lbl_802D8244:
/* 802D8244  28 1E 00 00 */	cmplwi r30, 0
/* 802D8248  41 82 00 08 */	beq lbl_802D8250
/* 802D824C  93 FE 00 00 */	stw r31, 0(r30)
lbl_802D8250:
/* 802D8250  7F 63 DB 78 */	mr r3, r27
/* 802D8254  39 61 00 20 */	addi r11, r1, 0x20
/* 802D8258  48 08 9F C9 */	bl _restgpr_27
/* 802D825C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D8260  7C 08 03 A6 */	mtlr r0
/* 802D8264  38 21 00 20 */	addi r1, r1, 0x20
/* 802D8268  4E 80 00 20 */	blr 
