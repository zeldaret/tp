lbl_801BCDF4:
/* 801BCDF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BCDF8  7C 08 02 A6 */	mflr r0
/* 801BCDFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BCE00  39 61 00 20 */	addi r11, r1, 0x20
/* 801BCE04  48 1A 53 CD */	bl _savegpr_26
/* 801BCE08  7C 7F 1B 79 */	or. r31, r3, r3
/* 801BCE0C  7C 9E 23 78 */	mr r30, r4
/* 801BCE10  41 82 03 18 */	beq lbl_801BD128
/* 801BCE14  3C 60 80 3C */	lis r3, __vt__12dMenu_Dmap_c@ha /* 0x803BCB10@ha */
/* 801BCE18  38 03 CB 10 */	addi r0, r3, __vt__12dMenu_Dmap_c@l /* 0x803BCB10@l */
/* 801BCE1C  90 1F 00 00 */	stw r0, 0(r31)
/* 801BCE20  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801BCE24  48 11 19 61 */	bl getTotalFreeSize__7JKRHeapFv
/* 801BCE28  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801BCE2C  48 11 19 59 */	bl getTotalFreeSize__7JKRHeapFv
/* 801BCE30  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BCE34  28 03 00 00 */	cmplwi r3, 0
/* 801BCE38  41 82 00 24 */	beq lbl_801BCE5C
/* 801BCE3C  41 82 00 18 */	beq lbl_801BCE54
/* 801BCE40  38 80 00 01 */	li r4, 1
/* 801BCE44  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCE48  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801BCE4C  7D 89 03 A6 */	mtctr r12
/* 801BCE50  4E 80 04 21 */	bctrl 
lbl_801BCE54:
/* 801BCE54  38 00 00 00 */	li r0, 0
/* 801BCE58  90 1F 00 08 */	stw r0, 8(r31)
lbl_801BCE5C:
/* 801BCE5C  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 801BCE60  28 03 00 00 */	cmplwi r3, 0
/* 801BCE64  41 82 00 14 */	beq lbl_801BCE78
/* 801BCE68  80 9F 00 FC */	lwz r4, 0xfc(r31)
/* 801BCE6C  48 11 16 DD */	bl free__7JKRHeapFPv
/* 801BCE70  38 00 00 00 */	li r0, 0
/* 801BCE74  90 1F 00 FC */	stw r0, 0xfc(r31)
lbl_801BCE78:
/* 801BCE78  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BCE7C  28 03 00 00 */	cmplwi r3, 0
/* 801BCE80  41 82 00 08 */	beq lbl_801BCE88
/* 801BCE84  48 11 1E B9 */	bl __dl__FPv
lbl_801BCE88:
/* 801BCE88  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801BCE8C  28 03 00 00 */	cmplwi r3, 0
/* 801BCE90  41 82 00 1C */	beq lbl_801BCEAC
/* 801BCE94  41 82 00 18 */	beq lbl_801BCEAC
/* 801BCE98  38 80 00 01 */	li r4, 1
/* 801BCE9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCEA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BCEA4  7D 89 03 A6 */	mtctr r12
/* 801BCEA8  4E 80 04 21 */	bctrl 
lbl_801BCEAC:
/* 801BCEAC  3B 60 00 00 */	li r27, 0
/* 801BCEB0  3B A0 00 00 */	li r29, 0
lbl_801BCEB4:
/* 801BCEB4  7F 9F EA 14 */	add r28, r31, r29
/* 801BCEB8  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 801BCEBC  28 03 00 00 */	cmplwi r3, 0
/* 801BCEC0  41 82 00 24 */	beq lbl_801BCEE4
/* 801BCEC4  41 82 00 18 */	beq lbl_801BCEDC
/* 801BCEC8  38 80 00 01 */	li r4, 1
/* 801BCECC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCED0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BCED4  7D 89 03 A6 */	mtctr r12
/* 801BCED8  4E 80 04 21 */	bctrl 
lbl_801BCEDC:
/* 801BCEDC  38 00 00 00 */	li r0, 0
/* 801BCEE0  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_801BCEE4:
/* 801BCEE4  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 801BCEE8  28 03 00 00 */	cmplwi r3, 0
/* 801BCEEC  41 82 00 24 */	beq lbl_801BCF10
/* 801BCEF0  41 82 00 18 */	beq lbl_801BCF08
/* 801BCEF4  38 80 00 01 */	li r4, 1
/* 801BCEF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCEFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BCF00  7D 89 03 A6 */	mtctr r12
/* 801BCF04  4E 80 04 21 */	bctrl 
lbl_801BCF08:
/* 801BCF08  38 00 00 00 */	li r0, 0
/* 801BCF0C  90 1C 00 34 */	stw r0, 0x34(r28)
lbl_801BCF10:
/* 801BCF10  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 801BCF14  28 03 00 00 */	cmplwi r3, 0
/* 801BCF18  41 82 00 24 */	beq lbl_801BCF3C
/* 801BCF1C  41 82 00 18 */	beq lbl_801BCF34
/* 801BCF20  38 80 00 01 */	li r4, 1
/* 801BCF24  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCF28  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BCF2C  7D 89 03 A6 */	mtctr r12
/* 801BCF30  4E 80 04 21 */	bctrl 
lbl_801BCF34:
/* 801BCF34  38 00 00 00 */	li r0, 0
/* 801BCF38  90 1C 00 54 */	stw r0, 0x54(r28)
lbl_801BCF3C:
/* 801BCF3C  3B 7B 00 01 */	addi r27, r27, 1
/* 801BCF40  2C 1B 00 08 */	cmpwi r27, 8
/* 801BCF44  3B BD 00 04 */	addi r29, r29, 4
/* 801BCF48  41 80 FF 6C */	blt lbl_801BCEB4
/* 801BCF4C  3B 40 00 00 */	li r26, 0
/* 801BCF50  3B A0 00 00 */	li r29, 0
/* 801BCF54  3B 80 00 00 */	li r28, 0
lbl_801BCF58:
/* 801BCF58  3B 7D 00 74 */	addi r27, r29, 0x74
/* 801BCF5C  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801BCF60  28 03 00 00 */	cmplwi r3, 0
/* 801BCF64  41 82 00 20 */	beq lbl_801BCF84
/* 801BCF68  41 82 00 18 */	beq lbl_801BCF80
/* 801BCF6C  38 80 00 01 */	li r4, 1
/* 801BCF70  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCF74  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BCF78  7D 89 03 A6 */	mtctr r12
/* 801BCF7C  4E 80 04 21 */	bctrl 
lbl_801BCF80:
/* 801BCF80  7F 9F D9 2E */	stwx r28, r31, r27
lbl_801BCF84:
/* 801BCF84  3B 5A 00 01 */	addi r26, r26, 1
/* 801BCF88  2C 1A 00 02 */	cmpwi r26, 2
/* 801BCF8C  3B BD 00 04 */	addi r29, r29, 4
/* 801BCF90  41 80 FF C8 */	blt lbl_801BCF58
/* 801BCF94  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801BCF98  28 03 00 00 */	cmplwi r3, 0
/* 801BCF9C  41 82 00 1C */	beq lbl_801BCFB8
/* 801BCFA0  41 82 00 18 */	beq lbl_801BCFB8
/* 801BCFA4  38 80 00 01 */	li r4, 1
/* 801BCFA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCFAC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BCFB0  7D 89 03 A6 */	mtctr r12
/* 801BCFB4  4E 80 04 21 */	bctrl 
lbl_801BCFB8:
/* 801BCFB8  3B 40 00 00 */	li r26, 0
/* 801BCFBC  3B A0 00 00 */	li r29, 0
lbl_801BCFC0:
/* 801BCFC0  7F 7F EA 14 */	add r27, r31, r29
/* 801BCFC4  80 7B 00 7C */	lwz r3, 0x7c(r27)
/* 801BCFC8  28 03 00 00 */	cmplwi r3, 0
/* 801BCFCC  41 82 00 24 */	beq lbl_801BCFF0
/* 801BCFD0  41 82 00 18 */	beq lbl_801BCFE8
/* 801BCFD4  38 80 00 01 */	li r4, 1
/* 801BCFD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BCFDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BCFE0  7D 89 03 A6 */	mtctr r12
/* 801BCFE4  4E 80 04 21 */	bctrl 
lbl_801BCFE8:
/* 801BCFE8  38 00 00 00 */	li r0, 0
/* 801BCFEC  90 1B 00 7C */	stw r0, 0x7c(r27)
lbl_801BCFF0:
/* 801BCFF0  80 7B 00 88 */	lwz r3, 0x88(r27)
/* 801BCFF4  28 03 00 00 */	cmplwi r3, 0
/* 801BCFF8  41 82 00 24 */	beq lbl_801BD01C
/* 801BCFFC  41 82 00 18 */	beq lbl_801BD014
/* 801BD000  38 80 00 01 */	li r4, 1
/* 801BD004  81 83 00 00 */	lwz r12, 0(r3)
/* 801BD008  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BD00C  7D 89 03 A6 */	mtctr r12
/* 801BD010  4E 80 04 21 */	bctrl 
lbl_801BD014:
/* 801BD014  38 00 00 00 */	li r0, 0
/* 801BD018  90 1B 00 88 */	stw r0, 0x88(r27)
lbl_801BD01C:
/* 801BD01C  3B 5A 00 01 */	addi r26, r26, 1
/* 801BD020  2C 1A 00 03 */	cmpwi r26, 3
/* 801BD024  3B BD 00 04 */	addi r29, r29, 4
/* 801BD028  41 80 FF 98 */	blt lbl_801BCFC0
/* 801BD02C  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801BD030  28 03 00 00 */	cmplwi r3, 0
/* 801BD034  41 82 00 1C */	beq lbl_801BD050
/* 801BD038  41 82 00 18 */	beq lbl_801BD050
/* 801BD03C  38 80 00 01 */	li r4, 1
/* 801BD040  81 83 00 00 */	lwz r12, 0(r3)
/* 801BD044  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BD048  7D 89 03 A6 */	mtctr r12
/* 801BD04C  4E 80 04 21 */	bctrl 
lbl_801BD050:
/* 801BD050  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BD054  28 03 00 00 */	cmplwi r3, 0
/* 801BD058  41 82 00 28 */	beq lbl_801BD080
/* 801BD05C  48 00 54 BD */	bl _delete__20dMenu_StageMapCtrl_cFv
/* 801BD060  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BD064  28 03 00 00 */	cmplwi r3, 0
/* 801BD068  41 82 00 18 */	beq lbl_801BD080
/* 801BD06C  38 80 00 01 */	li r4, 1
/* 801BD070  81 83 00 00 */	lwz r12, 0(r3)
/* 801BD074  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BD078  7D 89 03 A6 */	mtctr r12
/* 801BD07C  4E 80 04 21 */	bctrl 
lbl_801BD080:
/* 801BD080  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 801BD084  28 03 00 00 */	cmplwi r3, 0
/* 801BD088  41 82 00 40 */	beq lbl_801BD0C8
/* 801BD08C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801BD090  81 83 00 00 */	lwz r12, 0(r3)
/* 801BD094  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BD098  7D 89 03 A6 */	mtctr r12
/* 801BD09C  4E 80 04 21 */	bctrl 
/* 801BD0A0  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 801BD0A4  28 03 00 00 */	cmplwi r3, 0
/* 801BD0A8  41 82 00 18 */	beq lbl_801BD0C0
/* 801BD0AC  38 80 00 01 */	li r4, 1
/* 801BD0B0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801BD0B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BD0B8  7D 89 03 A6 */	mtctr r12
/* 801BD0BC  4E 80 04 21 */	bctrl 
lbl_801BD0C0:
/* 801BD0C0  38 00 00 00 */	li r0, 0
/* 801BD0C4  90 1F 00 E0 */	stw r0, 0xe0(r31)
lbl_801BD0C8:
/* 801BD0C8  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 801BD0CC  28 03 00 00 */	cmplwi r3, 0
/* 801BD0D0  41 82 00 1C */	beq lbl_801BD0EC
/* 801BD0D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BD0D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BD0DC  7D 89 03 A6 */	mtctr r12
/* 801BD0E0  4E 80 04 21 */	bctrl 
/* 801BD0E4  38 00 00 00 */	li r0, 0
/* 801BD0E8  90 1F 00 E4 */	stw r0, 0xe4(r31)
lbl_801BD0EC:
/* 801BD0EC  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 801BD0F0  28 03 00 00 */	cmplwi r3, 0
/* 801BD0F4  41 82 00 10 */	beq lbl_801BD104
/* 801BD0F8  4B E5 20 B5 */	bl mDoExt_destroyExpHeap__FP10JKRExpHeap
/* 801BD0FC  38 00 00 00 */	li r0, 0
/* 801BD100  90 1F 00 EC */	stw r0, 0xec(r31)
lbl_801BD104:
/* 801BD104  38 00 00 00 */	li r0, 0
/* 801BD108  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801BD10C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801BD110  98 03 00 F2 */	stb r0, 0xf2(r3)
/* 801BD114  90 0D 8B 00 */	stw r0, myclass__12dMenu_Dmap_c(r13)
/* 801BD118  7F C0 07 35 */	extsh. r0, r30
/* 801BD11C  40 81 00 0C */	ble lbl_801BD128
/* 801BD120  7F E3 FB 78 */	mr r3, r31
/* 801BD124  48 11 1C 19 */	bl __dl__FPv
lbl_801BD128:
/* 801BD128  7F E3 FB 78 */	mr r3, r31
/* 801BD12C  39 61 00 20 */	addi r11, r1, 0x20
/* 801BD130  48 1A 50 ED */	bl _restgpr_26
/* 801BD134  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BD138  7C 08 03 A6 */	mtlr r0
/* 801BD13C  38 21 00 20 */	addi r1, r1, 0x20
/* 801BD140  4E 80 00 20 */	blr 
