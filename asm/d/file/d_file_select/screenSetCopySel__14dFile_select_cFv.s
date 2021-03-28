lbl_8018BF2C:
/* 8018BF2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8018BF30  7C 08 02 A6 */	mflr r0
/* 8018BF34  90 01 00 44 */	stw r0, 0x44(r1)
/* 8018BF38  39 61 00 40 */	addi r11, r1, 0x40
/* 8018BF3C  48 1D 62 91 */	bl _savegpr_25
/* 8018BF40  7C 7F 1B 78 */	mr r31, r3
/* 8018BF44  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha
/* 8018BF48  3B 83 A8 48 */	addi r28, r3, cNullVec__6Z2Calc@l
/* 8018BF4C  38 60 01 18 */	li r3, 0x118
/* 8018BF50  48 14 2C FD */	bl __nw__FUl
/* 8018BF54  7C 60 1B 79 */	or. r0, r3, r3
/* 8018BF58  41 82 00 0C */	beq lbl_8018BF64
/* 8018BF5C  48 16 C5 3D */	bl __ct__9J2DScreenFv
/* 8018BF60  7C 60 1B 78 */	mr r0, r3
lbl_8018BF64:
/* 8018BF64  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8018BF68  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8018BF6C  3C 80 80 39 */	lis r4, d_file_d_file_select__stringBase0@ha
/* 8018BF70  38 84 43 88 */	addi r4, r4, d_file_d_file_select__stringBase0@l
/* 8018BF74  38 84 01 09 */	addi r4, r4, 0x109
/* 8018BF78  3C A0 01 10 */	lis r5, 0x110
/* 8018BF7C  80 DF 00 08 */	lwz r6, 8(r31)
/* 8018BF80  48 16 C6 C9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8018BF84  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8018BF88  48 0C 91 61 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8018BF8C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8018BF90  3C 80 6D 65 */	lis r4, 0x6D65 /* 0x6D655F6E@ha */
/* 8018BF94  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6D655F6E@l */
/* 8018BF98  38 A0 6E 61 */	li r5, 0x6e61
/* 8018BF9C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BFA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018BFA4  7D 89 03 A6 */	mtctr r12
/* 8018BFA8  4E 80 04 21 */	bctrl 
/* 8018BFAC  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8018BFB0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018BFB4  3C 80 6D 65 */	lis r4, 0x6D65 /* 0x6D655F6E@ha */
/* 8018BFB8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6D655F6E@l */
/* 8018BFBC  38 A0 6E 61 */	li r5, 0x6e61
/* 8018BFC0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BFC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018BFC8  7D 89 03 A6 */	mtctr r12
/* 8018BFCC  4E 80 04 21 */	bctrl 
/* 8018BFD0  90 7F 00 40 */	stw r3, 0x40(r31)
/* 8018BFD4  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018BFD8  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018BFDC  38 63 01 2B */	addi r3, r3, 0x12b
/* 8018BFE0  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018BFE4  48 14 82 8D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018BFE8  7C 79 1B 78 */	mr r25, r3
/* 8018BFEC  48 17 CA 81 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018BFF0  90 7F 02 9C */	stw r3, 0x29c(r31)
/* 8018BFF4  7F 23 CB 78 */	mr r3, r25
/* 8018BFF8  48 17 CA 75 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018BFFC  90 7F 02 A0 */	stw r3, 0x2a0(r31)
/* 8018C000  80 7F 02 9C */	lwz r3, 0x29c(r31)
/* 8018C004  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C008  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C00C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C010  7D 89 03 A6 */	mtctr r12
/* 8018C014  4E 80 04 21 */	bctrl 
/* 8018C018  80 7F 02 A0 */	lwz r3, 0x2a0(r31)
/* 8018C01C  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C020  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C024  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C028  7D 89 03 A6 */	mtctr r12
/* 8018C02C  4E 80 04 21 */	bctrl 
/* 8018C030  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018C034  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018C038  38 63 01 4D */	addi r3, r3, 0x14d
/* 8018C03C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C040  48 14 82 31 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C044  7C 79 1B 78 */	mr r25, r3
/* 8018C048  48 17 CA 25 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C04C  90 7F 02 E8 */	stw r3, 0x2e8(r31)
/* 8018C050  80 7F 02 E8 */	lwz r3, 0x2e8(r31)
/* 8018C054  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C058  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C05C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C060  7D 89 03 A6 */	mtctr r12
/* 8018C064  4E 80 04 21 */	bctrl 
/* 8018C068  38 00 00 00 */	li r0, 0
/* 8018C06C  90 1F 02 EC */	stw r0, 0x2ec(r31)
/* 8018C070  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018C074  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018C078  38 63 01 6F */	addi r3, r3, 0x16f
/* 8018C07C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C080  48 14 81 F1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C084  48 17 C9 E9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C088  90 7F 02 F0 */	stw r3, 0x2f0(r31)
/* 8018C08C  80 7F 02 F0 */	lwz r3, 0x2f0(r31)
/* 8018C090  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C094  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C098  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C09C  7D 89 03 A6 */	mtctr r12
/* 8018C0A0  4E 80 04 21 */	bctrl 
/* 8018C0A4  38 00 00 00 */	li r0, 0
/* 8018C0A8  90 1F 02 F4 */	stw r0, 0x2f4(r31)
/* 8018C0AC  7F 23 CB 78 */	mr r3, r25
/* 8018C0B0  48 17 C9 BD */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C0B4  90 7F 02 F8 */	stw r3, 0x2f8(r31)
/* 8018C0B8  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 8018C0BC  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C0C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C0C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C0C8  7D 89 03 A6 */	mtctr r12
/* 8018C0CC  4E 80 04 21 */	bctrl 
/* 8018C0D0  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018C0D4  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018C0D8  38 63 01 94 */	addi r3, r3, 0x194
/* 8018C0DC  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C0E0  48 14 81 91 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C0E4  48 17 C9 89 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C0E8  90 7F 03 00 */	stw r3, 0x300(r31)
/* 8018C0EC  80 7F 03 00 */	lwz r3, 0x300(r31)
/* 8018C0F0  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C0F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C0F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C0FC  7D 89 03 A6 */	mtctr r12
/* 8018C100  4E 80 04 21 */	bctrl 
/* 8018C104  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018C108  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018C10C  38 63 01 B6 */	addi r3, r3, 0x1b6
/* 8018C110  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C114  48 14 81 5D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C118  48 17 C9 55 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C11C  90 7F 03 08 */	stw r3, 0x308(r31)
/* 8018C120  80 7F 03 08 */	lwz r3, 0x308(r31)
/* 8018C124  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C128  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C12C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C130  7D 89 03 A6 */	mtctr r12
/* 8018C134  4E 80 04 21 */	bctrl 
/* 8018C138  3B A0 00 00 */	li r29, 0
/* 8018C13C  93 BF 02 FC */	stw r29, 0x2fc(r31)
/* 8018C140  93 BF 03 04 */	stw r29, 0x304(r31)
/* 8018C144  93 BF 03 0C */	stw r29, 0x30c(r31)
/* 8018C148  3B 60 00 00 */	li r27, 0
/* 8018C14C  3B 40 00 00 */	li r26, 0
/* 8018C150  3B 3C 06 A0 */	addi r25, r28, 0x6a0
lbl_8018C154:
/* 8018C154  38 60 00 6C */	li r3, 0x6c
/* 8018C158  48 14 2A F5 */	bl __nw__FUl
/* 8018C15C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C160  41 82 00 28 */	beq lbl_8018C188
/* 8018C164  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C168  38 1C 06 50 */	addi r0, r28, 0x650
/* 8018C16C  7C C0 EA 14 */	add r6, r0, r29
/* 8018C170  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C174  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C178  38 E0 00 00 */	li r7, 0
/* 8018C17C  39 00 00 00 */	li r8, 0
/* 8018C180  48 0C 78 05 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C184  7C 60 1B 78 */	mr r0, r3
lbl_8018C188:
/* 8018C188  7F DF D2 14 */	add r30, r31, r26
/* 8018C18C  90 1E 02 A4 */	stw r0, 0x2a4(r30)
/* 8018C190  38 60 00 6C */	li r3, 0x6c
/* 8018C194  48 14 2A B9 */	bl __nw__FUl
/* 8018C198  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C19C  41 82 00 28 */	beq lbl_8018C1C4
/* 8018C1A0  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C1A4  38 1C 06 60 */	addi r0, r28, 0x660
/* 8018C1A8  7C C0 EA 14 */	add r6, r0, r29
/* 8018C1AC  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C1B0  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C1B4  38 E0 00 00 */	li r7, 0
/* 8018C1B8  39 00 00 00 */	li r8, 0
/* 8018C1BC  48 0C 77 C9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C1C0  7C 60 1B 78 */	mr r0, r3
lbl_8018C1C4:
/* 8018C1C4  90 1E 02 C0 */	stw r0, 0x2c0(r30)
/* 8018C1C8  38 60 00 6C */	li r3, 0x6c
/* 8018C1CC  48 14 2A 81 */	bl __nw__FUl
/* 8018C1D0  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C1D4  41 82 00 28 */	beq lbl_8018C1FC
/* 8018C1D8  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C1DC  38 1C 06 70 */	addi r0, r28, 0x670
/* 8018C1E0  7C C0 EA 14 */	add r6, r0, r29
/* 8018C1E4  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C1E8  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C1EC  38 E0 00 00 */	li r7, 0
/* 8018C1F0  39 00 00 00 */	li r8, 0
/* 8018C1F4  48 0C 77 91 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C1F8  7C 60 1B 78 */	mr r0, r3
lbl_8018C1FC:
/* 8018C1FC  90 1E 02 C8 */	stw r0, 0x2c8(r30)
/* 8018C200  38 60 00 6C */	li r3, 0x6c
/* 8018C204  48 14 2A 49 */	bl __nw__FUl
/* 8018C208  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C20C  41 82 00 28 */	beq lbl_8018C234
/* 8018C210  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C214  38 1C 06 80 */	addi r0, r28, 0x680
/* 8018C218  7C C0 EA 14 */	add r6, r0, r29
/* 8018C21C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C220  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C224  38 E0 00 00 */	li r7, 0
/* 8018C228  39 00 00 00 */	li r8, 0
/* 8018C22C  48 0C 77 59 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C230  7C 60 1B 78 */	mr r0, r3
lbl_8018C234:
/* 8018C234  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 8018C238  38 60 00 6C */	li r3, 0x6c
/* 8018C23C  48 14 2A 11 */	bl __nw__FUl
/* 8018C240  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C244  41 82 00 28 */	beq lbl_8018C26C
/* 8018C248  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8018C24C  38 1C 06 90 */	addi r0, r28, 0x690
/* 8018C250  7C C0 EA 14 */	add r6, r0, r29
/* 8018C254  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C258  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C25C  38 E0 00 00 */	li r7, 0
/* 8018C260  39 00 00 00 */	li r8, 0
/* 8018C264  48 0C 77 21 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018C268  7C 60 1B 78 */	mr r0, r3
lbl_8018C26C:
/* 8018C26C  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 8018C270  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 8018C274  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C278  80 9F 02 E8 */	lwz r4, 0x2e8(r31)
/* 8018C27C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C280  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018C284  7D 89 03 A6 */	mtctr r12
/* 8018C288  4E 80 04 21 */	bctrl 
/* 8018C28C  80 7E 02 C8 */	lwz r3, 0x2c8(r30)
/* 8018C290  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C294  80 9F 02 E8 */	lwz r4, 0x2e8(r31)
/* 8018C298  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C29C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018C2A0  7D 89 03 A6 */	mtctr r12
/* 8018C2A4  4E 80 04 21 */	bctrl 
/* 8018C2A8  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 8018C2AC  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C2B0  80 9F 02 E8 */	lwz r4, 0x2e8(r31)
/* 8018C2B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C2B8  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018C2BC  7D 89 03 A6 */	mtctr r12
/* 8018C2C0  4E 80 04 21 */	bctrl 
/* 8018C2C4  80 7E 02 C8 */	lwz r3, 0x2c8(r30)
/* 8018C2C8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C2CC  80 9F 02 F0 */	lwz r4, 0x2f0(r31)
/* 8018C2D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C2D4  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018C2D8  7D 89 03 A6 */	mtctr r12
/* 8018C2DC  4E 80 04 21 */	bctrl 
/* 8018C2E0  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 8018C2E4  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C2E8  80 9F 02 F0 */	lwz r4, 0x2f0(r31)
/* 8018C2EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C2F0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018C2F4  7D 89 03 A6 */	mtctr r12
/* 8018C2F8  4E 80 04 21 */	bctrl 
/* 8018C2FC  80 7E 02 D8 */	lwz r3, 0x2d8(r30)
/* 8018C300  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C304  80 9F 02 F8 */	lwz r4, 0x2f8(r31)
/* 8018C308  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C30C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018C310  7D 89 03 A6 */	mtctr r12
/* 8018C314  4E 80 04 21 */	bctrl 
/* 8018C318  80 7E 02 D8 */	lwz r3, 0x2d8(r30)
/* 8018C31C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C320  80 9F 03 00 */	lwz r4, 0x300(r31)
/* 8018C324  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C328  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018C32C  7D 89 03 A6 */	mtctr r12
/* 8018C330  4E 80 04 21 */	bctrl 
/* 8018C334  80 7E 02 D8 */	lwz r3, 0x2d8(r30)
/* 8018C338  80 63 00 04 */	lwz r3, 4(r3)
/* 8018C33C  80 9F 03 08 */	lwz r4, 0x308(r31)
/* 8018C340  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C344  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8018C348  7D 89 03 A6 */	mtctr r12
/* 8018C34C  4E 80 04 21 */	bctrl 
/* 8018C350  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8018C354  7C D9 EA 14 */	add r6, r25, r29
/* 8018C358  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C35C  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C360  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C364  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018C368  7D 89 03 A6 */	mtctr r12
/* 8018C36C  4E 80 04 21 */	bctrl 
/* 8018C370  38 00 00 00 */	li r0, 0
/* 8018C374  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018C378  3B 7B 00 01 */	addi r27, r27, 1
/* 8018C37C  2C 1B 00 02 */	cmpwi r27, 2
/* 8018C380  3B 5A 00 04 */	addi r26, r26, 4
/* 8018C384  3B BD 00 08 */	addi r29, r29, 8
/* 8018C388  41 80 FD CC */	blt lbl_8018C154
/* 8018C38C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8018C390  3C 80 6D 65 */	lis r4, 0x6D65 /* 0x6D655F6E@ha */
/* 8018C394  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6D655F6E@l */
/* 8018C398  38 A0 6E 61 */	li r5, 0x6e61
/* 8018C39C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C3A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018C3A4  7D 89 03 A6 */	mtctr r12
/* 8018C3A8  4E 80 04 21 */	bctrl 
/* 8018C3AC  7C 79 1B 78 */	mr r25, r3
/* 8018C3B0  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 8018C3B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C3B8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018C3BC  7D 89 03 A6 */	mtctr r12
/* 8018C3C0  4E 80 04 21 */	bctrl 
/* 8018C3C4  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 8018C3C8  80 7F 02 9C */	lwz r3, 0x29c(r31)
/* 8018C3CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8018C3D0  7F 23 CB 78 */	mr r3, r25
/* 8018C3D4  48 16 BB F9 */	bl animationTransform__7J2DPaneFv
/* 8018C3D8  7F 23 CB 78 */	mr r3, r25
/* 8018C3DC  38 80 00 00 */	li r4, 0
/* 8018C3E0  81 99 00 00 */	lwz r12, 0(r25)
/* 8018C3E4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018C3E8  7D 89 03 A6 */	mtctr r12
/* 8018C3EC  4E 80 04 21 */	bctrl 
/* 8018C3F0  38 60 00 B8 */	li r3, 0xb8
/* 8018C3F4  48 14 28 59 */	bl __nw__FUl
/* 8018C3F8  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C3FC  41 82 00 18 */	beq lbl_8018C414
/* 8018C400  38 80 00 00 */	li r4, 0
/* 8018C404  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018C408  38 A0 00 00 */	li r5, 0
/* 8018C40C  48 00 7E 15 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 8018C410  7C 60 1B 78 */	mr r0, r3
lbl_8018C414:
/* 8018C414  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8018C418  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8018C41C  C0 22 9F 68 */	lfs f1, lit_6069(r2)
/* 8018C420  C0 42 9F 88 */	lfs f2, lit_6872(r2)
/* 8018C424  C0 62 9F 8C */	lfs f3, lit_6873(r2)
/* 8018C428  C0 82 9F 90 */	lfs f4, lit_6874(r2)
/* 8018C42C  FC A0 20 90 */	fmr f5, f4
/* 8018C430  48 00 8D 81 */	bl setParam__16dSelect_cursor_cFfffff
/* 8018C434  80 9F 02 A4 */	lwz r4, 0x2a4(r31)
/* 8018C438  38 61 00 08 */	addi r3, r1, 8
/* 8018C43C  80 A4 00 04 */	lwz r5, 4(r4)
/* 8018C440  38 C0 00 00 */	li r6, 0
/* 8018C444  38 E0 00 00 */	li r7, 0
/* 8018C448  48 0C 8A 75 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8018C44C  80 61 00 08 */	lwz r3, 8(r1)
/* 8018C450  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8018C454  90 61 00 14 */	stw r3, 0x14(r1)
/* 8018C458  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018C45C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8018C460  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018C464  80 7F 02 A4 */	lwz r3, 0x2a4(r31)
/* 8018C468  80 83 00 04 */	lwz r4, 4(r3)
/* 8018C46C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8018C470  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8018C474  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8018C478  38 A0 00 01 */	li r5, 1
/* 8018C47C  48 00 8C 79 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 8018C480  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8018C484  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018C488  48 00 8E 19 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018C48C  3B A0 00 00 */	li r29, 0
/* 8018C490  3B 20 00 00 */	li r25, 0
/* 8018C494  3B 40 00 00 */	li r26, 0
/* 8018C498  3B 7C 00 58 */	addi r27, r28, 0x58
lbl_8018C49C:
/* 8018C49C  38 60 00 3C */	li r3, 0x3c
/* 8018C4A0  48 14 27 AD */	bl __nw__FUl
/* 8018C4A4  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C4A8  41 82 00 14 */	beq lbl_8018C4BC
/* 8018C4AC  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C4B0  38 A0 00 00 */	li r5, 0
/* 8018C4B4  48 00 5F 81 */	bl __ct__12dFile_info_cFP10JKRArchiveUc
/* 8018C4B8  7C 60 1B 78 */	mr r0, r3
lbl_8018C4BC:
/* 8018C4BC  3B 9A 00 7C */	addi r28, r26, 0x7c
/* 8018C4C0  7C 1F E1 2E */	stwx r0, r31, r28
/* 8018C4C4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8018C4C8  38 19 00 08 */	addi r0, r25, 8
/* 8018C4CC  7C DB 02 14 */	add r6, r27, r0
/* 8018C4D0  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018C4D4  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018C4D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C4DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018C4E0  7D 89 03 A6 */	mtctr r12
/* 8018C4E4  4E 80 04 21 */	bctrl 
/* 8018C4E8  7C 9F E0 2E */	lwzx r4, r31, r28
/* 8018C4EC  90 64 00 14 */	stw r3, 0x14(r4)
/* 8018C4F0  3B BD 00 01 */	addi r29, r29, 1
/* 8018C4F4  2C 1D 00 02 */	cmpwi r29, 2
/* 8018C4F8  3B 39 00 08 */	addi r25, r25, 8
/* 8018C4FC  3B 5A 00 04 */	addi r26, r26, 4
/* 8018C500  41 80 FF 9C */	blt lbl_8018C49C
/* 8018C504  38 00 00 00 */	li r0, 0
/* 8018C508  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 8018C50C  39 61 00 40 */	addi r11, r1, 0x40
/* 8018C510  48 1D 5D 09 */	bl _restgpr_25
/* 8018C514  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8018C518  7C 08 03 A6 */	mtlr r0
/* 8018C51C  38 21 00 40 */	addi r1, r1, 0x40
/* 8018C520  4E 80 00 20 */	blr 
