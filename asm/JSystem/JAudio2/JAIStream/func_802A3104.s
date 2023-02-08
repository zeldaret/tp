lbl_802A3104:
/* 802A3104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3108  7C 08 02 A6 */	mflr r0
/* 802A310C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3110  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3114  48 0B F0 C9 */	bl _savegpr_29
/* 802A3118  7C 7D 1B 78 */	mr r29, r3
/* 802A311C  7C 9E 23 78 */	mr r30, r4
/* 802A3120  7C BF 2B 78 */	mr r31, r5
/* 802A3124  4B FF F1 D5 */	bl __ct__8JAISoundFv
/* 802A3128  38 7D 00 98 */	addi r3, r29, 0x98
/* 802A312C  7F A4 EB 78 */	mr r4, r29
/* 802A3130  48 03 8C CD */	bl __ct__10JSUPtrLinkFPv
/* 802A3134  3C 60 80 3D */	lis r3, __vt__9JAIStream@ha /* 0x803C99D8@ha */
/* 802A3138  38 03 99 D8 */	addi r0, r3, __vt__9JAIStream@l /* 0x803C99D8@l */
/* 802A313C  90 1D 00 00 */	stw r0, 0(r29)
/* 802A3140  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 802A3144  4B FF 32 65 */	bl __ct__13JASAramStreamFv
/* 802A3148  38 80 00 00 */	li r4, 0
/* 802A314C  90 9D 02 90 */	stw r4, 0x290(r29)
/* 802A3150  93 FD 02 C0 */	stw r31, 0x2c0(r29)
/* 802A3154  93 DD 02 B8 */	stw r30, 0x2b8(r29)
/* 802A3158  90 9D 02 9C */	stw r4, 0x29c(r29)
/* 802A315C  98 9D 02 C5 */	stb r4, 0x2c5(r29)
/* 802A3160  98 9D 02 C6 */	stb r4, 0x2c6(r29)
/* 802A3164  7C 83 23 78 */	mr r3, r4
/* 802A3168  38 00 00 06 */	li r0, 6
/* 802A316C  7C 09 03 A6 */	mtctr r0
lbl_802A3170:
/* 802A3170  38 03 02 A0 */	addi r0, r3, 0x2a0
/* 802A3174  7C 9D 01 2E */	stwx r4, r29, r0
/* 802A3178  38 63 00 04 */	addi r3, r3, 4
/* 802A317C  42 00 FF F4 */	bdnz lbl_802A3170
/* 802A3180  7F A3 EB 78 */	mr r3, r29
/* 802A3184  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3188  48 0B F0 A1 */	bl _restgpr_29
/* 802A318C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A3190  7C 08 03 A6 */	mtlr r0
/* 802A3194  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3198  4E 80 00 20 */	blr 
