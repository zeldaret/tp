lbl_80D6701C:
/* 80D6701C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D67020  7C 08 02 A6 */	mflr r0
/* 80D67024  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D67028  39 61 00 40 */	addi r11, r1, 0x40
/* 80D6702C  4B 5F B1 A4 */	b _savegpr_26
/* 80D67030  7C 7F 1B 78 */	mr r31, r3
/* 80D67034  80 63 05 E0 */	lwz r3, 0x5e0(r3)
/* 80D67038  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80D6703C  2C 00 00 00 */	cmpwi r0, 0
/* 80D67040  41 82 02 88 */	beq lbl_80D672C8
/* 80D67044  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80D67048  4B 2A 81 84 */	b mDoExt_setCurrentHeap__FP7JKRHeap
/* 80D6704C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80D67050  4B 2A D9 A0 */	b mDoExt_getMesgFont__Fv
/* 80D67054  90 7F 05 EC */	stw r3, 0x5ec(r31)
/* 80D67058  38 60 01 18 */	li r3, 0x118
/* 80D6705C  4B 56 7B F0 */	b __nw__FUl
/* 80D67060  7C 60 1B 79 */	or. r0, r3, r3
/* 80D67064  41 82 00 0C */	beq lbl_80D67070
/* 80D67068  4B 59 14 30 */	b __ct__9J2DScreenFv
/* 80D6706C  7C 60 1B 78 */	mr r0, r3
lbl_80D67070:
/* 80D67070  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80D67074  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80D67078  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 80D6707C  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D67080  3C 80 80 D6 */	lis r4, stringBase0@ha
/* 80D67084  38 84 7C 10 */	addi r4, r4, stringBase0@l
/* 80D67088  38 84 00 18 */	addi r4, r4, 0x18
/* 80D6708C  3C A0 00 10 */	lis r5, 0x10
/* 80D67090  4B 59 15 B8 */	b setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80D67094  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D67098  3C 80 73 5F */	lis r4, 0x735F /* 0x735F3030@ha */
/* 80D6709C  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x735F3030@l */
/* 80D670A0  38 A0 74 5F */	li r5, 0x745f
/* 80D670A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80D670A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D670AC  7D 89 03 A6 */	mtctr r12
/* 80D670B0  4E 80 04 21 */	bctrl 
/* 80D670B4  90 61 00 08 */	stw r3, 8(r1)
/* 80D670B8  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D670BC  3C 80 73 5F */	lis r4, 0x735F /* 0x735F3031@ha */
/* 80D670C0  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x735F3031@l */
/* 80D670C4  38 A0 74 5F */	li r5, 0x745f
/* 80D670C8  81 83 00 00 */	lwz r12, 0(r3)
/* 80D670CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D670D0  7D 89 03 A6 */	mtctr r12
/* 80D670D4  4E 80 04 21 */	bctrl 
/* 80D670D8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80D670DC  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D670E0  3C 80 73 5F */	lis r4, 0x735F /* 0x735F3032@ha */
/* 80D670E4  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x735F3032@l */
/* 80D670E8  38 A0 74 5F */	li r5, 0x745f
/* 80D670EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80D670F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D670F4  7D 89 03 A6 */	mtctr r12
/* 80D670F8  4E 80 04 21 */	bctrl 
/* 80D670FC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80D67100  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D67104  3C 80 73 5F */	lis r4, 0x735F /* 0x735F3033@ha */
/* 80D67108  38 C4 30 33 */	addi r6, r4, 0x3033 /* 0x735F3033@l */
/* 80D6710C  38 A0 74 5F */	li r5, 0x745f
/* 80D67110  81 83 00 00 */	lwz r12, 0(r3)
/* 80D67114  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D67118  7D 89 03 A6 */	mtctr r12
/* 80D6711C  4E 80 04 21 */	bctrl 
/* 80D67120  90 61 00 14 */	stw r3, 0x14(r1)
/* 80D67124  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D67128  3C 80 73 5F */	lis r4, 0x735F /* 0x735F3034@ha */
/* 80D6712C  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x735F3034@l */
/* 80D67130  38 A0 74 5F */	li r5, 0x745f
/* 80D67134  81 83 00 00 */	lwz r12, 0(r3)
/* 80D67138  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D6713C  7D 89 03 A6 */	mtctr r12
/* 80D67140  4E 80 04 21 */	bctrl 
/* 80D67144  90 61 00 18 */	stw r3, 0x18(r1)
/* 80D67148  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D6714C  3C 80 73 5F */	lis r4, 0x735F /* 0x735F3035@ha */
/* 80D67150  38 C4 30 35 */	addi r6, r4, 0x3035 /* 0x735F3035@l */
/* 80D67154  38 A0 74 5F */	li r5, 0x745f
/* 80D67158  81 83 00 00 */	lwz r12, 0(r3)
/* 80D6715C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D67160  7D 89 03 A6 */	mtctr r12
/* 80D67164  4E 80 04 21 */	bctrl 
/* 80D67168  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80D6716C  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D67170  3C 80 00 74 */	lis r4, 0x0074 /* 0x00745F6F@ha */
/* 80D67174  38 C4 5F 6F */	addi r6, r4, 0x5F6F /* 0x00745F6F@l */
/* 80D67178  38 A0 00 00 */	li r5, 0
/* 80D6717C  81 83 00 00 */	lwz r12, 0(r3)
/* 80D67180  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D67184  7D 89 03 A6 */	mtctr r12
/* 80D67188  4E 80 04 21 */	bctrl 
/* 80D6718C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80D67190  3B 40 00 00 */	li r26, 0
/* 80D67194  3B C0 00 00 */	li r30, 0
/* 80D67198  3B 81 00 08 */	addi r28, r1, 8
/* 80D6719C  3C 60 80 D6 */	lis r3, stringBase0@ha
/* 80D671A0  3B A3 7C 10 */	addi r29, r3, stringBase0@l
lbl_80D671A4:
/* 80D671A4  7F 7C F0 2E */	lwzx r27, r28, r30
/* 80D671A8  7F 63 DB 78 */	mr r3, r27
/* 80D671AC  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 80D671B0  81 9B 00 00 */	lwz r12, 0(r27)
/* 80D671B4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80D671B8  7D 89 03 A6 */	mtctr r12
/* 80D671BC  4E 80 04 21 */	bctrl 
/* 80D671C0  7F 63 DB 78 */	mr r3, r27
/* 80D671C4  38 80 00 80 */	li r4, 0x80
/* 80D671C8  38 BD 00 2E */	addi r5, r29, 0x2e
/* 80D671CC  4C C6 31 82 */	crclr 6
/* 80D671D0  4B 59 95 7C */	b setString__10J2DTextBoxFsPCce
/* 80D671D4  7F 63 DB 78 */	mr r3, r27
/* 80D671D8  4B 59 94 80 */	b getStringPtr__10J2DTextBoxCFv
/* 80D671DC  38 80 00 64 */	li r4, 0x64
/* 80D671E0  4B 2B 8E E0 */	b fopMsgM_messageGet__FPcUl
/* 80D671E4  3B 5A 00 01 */	addi r26, r26, 1
/* 80D671E8  2C 1A 00 07 */	cmpwi r26, 7
/* 80D671EC  3B DE 00 04 */	addi r30, r30, 4
/* 80D671F0  41 80 FF B4 */	blt lbl_80D671A4
/* 80D671F4  38 60 00 1C */	li r3, 0x1c
/* 80D671F8  4B 56 7A 54 */	b __nw__FUl
/* 80D671FC  7C 60 1B 79 */	or. r0, r3, r3
/* 80D67200  41 82 00 24 */	beq lbl_80D67224
/* 80D67204  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80D67208  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 80D6720C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 80D67210  38 A0 00 6E */	li r5, 0x6e
/* 80D67214  38 E0 00 02 */	li r7, 2
/* 80D67218  39 00 00 00 */	li r8, 0
/* 80D6721C  4B 4E E1 E0 */	b __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 80D67220  7C 60 1B 78 */	mr r0, r3
lbl_80D67224:
/* 80D67224  90 1F 06 00 */	stw r0, 0x600(r31)
/* 80D67228  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80D6722C  38 80 00 00 */	li r4, 0
/* 80D67230  81 83 00 00 */	lwz r12, 0(r3)
/* 80D67234  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80D67238  7D 89 03 A6 */	mtctr r12
/* 80D6723C  4E 80 04 21 */	bctrl 
/* 80D67240  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80D67244  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 80D67248  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 80D6724C  38 A0 00 6E */	li r5, 0x6e
/* 80D67250  81 83 00 00 */	lwz r12, 0(r3)
/* 80D67254  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D67258  7D 89 03 A6 */	mtctr r12
/* 80D6725C  4E 80 04 21 */	bctrl 
/* 80D67260  7C 7A 1B 78 */	mr r26, r3
/* 80D67264  3C 80 80 D6 */	lis r4, g_daTitHIO@ha
/* 80D67268  38 84 7D 8C */	addi r4, r4, g_daTitHIO@l
/* 80D6726C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80D67270  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D67274  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 80D67278  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 80D6727C  81 83 00 00 */	lwz r12, 0(r3)
/* 80D67280  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80D67284  7D 89 03 A6 */	mtctr r12
/* 80D67288  4E 80 04 21 */	bctrl 
/* 80D6728C  3C 60 80 D6 */	lis r3, g_daTitHIO@ha
/* 80D67290  38 63 7D 8C */	addi r3, r3, g_daTitHIO@l
/* 80D67294  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80D67298  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D6729C  D0 1A 00 CC */	stfs f0, 0xcc(r26)
/* 80D672A0  D0 3A 00 D0 */	stfs f1, 0xd0(r26)
/* 80D672A4  7F 43 D3 78 */	mr r3, r26
/* 80D672A8  81 9A 00 00 */	lwz r12, 0(r26)
/* 80D672AC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80D672B0  7D 89 03 A6 */	mtctr r12
/* 80D672B4  4E 80 04 21 */	bctrl 
/* 80D672B8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D672BC  4B 56 71 7C */	b becomeCurrentHeap__7JKRHeapFv
/* 80D672C0  7F E3 FB 78 */	mr r3, r31
/* 80D672C4  48 00 00 1D */	bl logoDispWaitInit__9daTitle_cFv
lbl_80D672C8:
/* 80D672C8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D672CC  4B 5F AF 50 */	b _restgpr_26
/* 80D672D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D672D4  7C 08 03 A6 */	mtlr r0
/* 80D672D8  38 21 00 40 */	addi r1, r1, 0x40
/* 80D672DC  4E 80 00 20 */	blr 
