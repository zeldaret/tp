lbl_802627E8:
/* 802627E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802627EC  7C 08 02 A6 */	mflr r0
/* 802627F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 802627F4  39 61 00 60 */	addi r11, r1, 0x60
/* 802627F8  48 0F F9 E1 */	bl _savegpr_28
/* 802627FC  7C 7C 1B 78 */	mr r28, r3
/* 80262800  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80262804  28 00 00 00 */	cmplwi r0, 0
/* 80262808  41 82 00 0C */	beq lbl_80262814
/* 8026280C  38 60 00 01 */	li r3, 1
/* 80262810  48 00 02 D4 */	b lbl_80262AE4
lbl_80262814:
/* 80262814  4B DA C5 D9 */	bl mDoExt_getArchiveHeap__Fv
/* 80262818  7C 7E 1B 78 */	mr r30, r3
/* 8026281C  3B A0 00 00 */	li r29, 0
/* 80262820  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 80262824  3B E3 A4 A0 */	addi r31, r3, DynamicLink__stringBase0@l
lbl_80262828:
/* 80262828  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8026282C  28 03 00 00 */	cmplwi r3, 0
/* 80262830  41 82 00 14 */	beq lbl_80262844
/* 80262834  38 80 00 00 */	li r4, 0
/* 80262838  48 06 BC C9 */	bl free__7JKRHeapFPvP7JKRHeap
/* 8026283C  38 00 00 00 */	li r0, 0
/* 80262840  90 1C 00 10 */	stw r0, 0x10(r28)
lbl_80262844:
/* 80262844  38 61 00 10 */	addi r3, r1, 0x10
/* 80262848  38 80 00 40 */	li r4, 0x40
/* 8026284C  38 BF 01 41 */	addi r5, r31, 0x141
/* 80262850  80 DC 00 1C */	lwz r6, 0x1c(r28)
/* 80262854  4C C6 31 82 */	crclr 6
/* 80262858  48 10 3D 65 */	bl snprintf
/* 8026285C  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80262860  28 00 00 00 */	cmplwi r0, 0
/* 80262864  40 82 00 B0 */	bne lbl_80262914
/* 80262868  80 AD 8B C4 */	lwz r5, sArchive__20DynamicModuleControl(r13)
/* 8026286C  28 05 00 00 */	cmplwi r5, 0
/* 80262870  41 82 00 A4 */	beq lbl_80262914
/* 80262874  28 00 00 00 */	cmplwi r0, 0
/* 80262878  40 82 00 2C */	bne lbl_802628A4
/* 8026287C  3C 60 4D 4D */	lis r3, 0x4D4D /* 0x4D4D454D@ha */
/* 80262880  38 63 45 4D */	addi r3, r3, 0x454D /* 0x4D4D454D@l */
/* 80262884  38 81 00 10 */	addi r4, r1, 0x10
/* 80262888  48 07 32 B1 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8026288C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80262890  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80262894  28 00 00 00 */	cmplwi r0, 0
/* 80262898  41 82 00 0C */	beq lbl_802628A4
/* 8026289C  38 00 00 01 */	li r0, 1
/* 802628A0  98 1C 00 20 */	stb r0, 0x20(r28)
lbl_802628A4:
/* 802628A4  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802628A8  28 00 00 00 */	cmplwi r0, 0
/* 802628AC  40 82 00 30 */	bne lbl_802628DC
/* 802628B0  3C 60 41 4D */	lis r3, 0x414D /* 0x414D454D@ha */
/* 802628B4  38 63 45 4D */	addi r3, r3, 0x454D /* 0x414D454D@l */
/* 802628B8  38 81 00 10 */	addi r4, r1, 0x10
/* 802628BC  80 AD 8B C4 */	lwz r5, sArchive__20DynamicModuleControl(r13)
/* 802628C0  48 07 32 79 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 802628C4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 802628C8  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802628CC  28 00 00 00 */	cmplwi r0, 0
/* 802628D0  41 82 00 0C */	beq lbl_802628DC
/* 802628D4  38 00 00 02 */	li r0, 2
/* 802628D8  98 1C 00 20 */	stb r0, 0x20(r28)
lbl_802628DC:
/* 802628DC  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802628E0  28 00 00 00 */	cmplwi r0, 0
/* 802628E4  40 82 00 30 */	bne lbl_80262914
/* 802628E8  3C 60 44 4D */	lis r3, 0x444D /* 0x444D454D@ha */
/* 802628EC  38 63 45 4D */	addi r3, r3, 0x454D /* 0x444D454D@l */
/* 802628F0  38 81 00 10 */	addi r4, r1, 0x10
/* 802628F4  80 AD 8B C4 */	lwz r5, sArchive__20DynamicModuleControl(r13)
/* 802628F8  48 07 32 41 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 802628FC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80262900  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80262904  28 00 00 00 */	cmplwi r0, 0
/* 80262908  41 82 00 0C */	beq lbl_80262914
/* 8026290C  38 00 00 03 */	li r0, 3
/* 80262910  98 1C 00 20 */	stb r0, 0x20(r28)
lbl_80262914:
/* 80262914  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 80262918  28 04 00 00 */	cmplwi r4, 0
/* 8026291C  41 82 00 2C */	beq lbl_80262948
/* 80262920  80 6D 8B C4 */	lwz r3, sArchive__20DynamicModuleControl(r13)
/* 80262924  81 83 00 00 */	lwz r12, 0(r3)
/* 80262928  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8026292C  7D 89 03 A6 */	mtctr r12
/* 80262930  4E 80 04 21 */	bctrl 
/* 80262934  90 7C 00 24 */	stw r3, 0x24(r28)
/* 80262938  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8026293C  38 80 00 00 */	li r4, 0
/* 80262940  48 07 1A 61 */	bl detachResource__13JKRFileLoaderFPvP13JKRFileLoader
/* 80262944  48 00 00 D4 */	b lbl_80262A18
lbl_80262948:
/* 80262948  40 82 00 70 */	bne lbl_802629B8
/* 8026294C  38 61 00 10 */	addi r3, r1, 0x10
/* 80262950  38 80 00 40 */	li r4, 0x40
/* 80262954  3C A0 80 3A */	lis r5, DynamicLink__stringBase0@ha
/* 80262958  38 A5 A4 A0 */	addi r5, r5, DynamicLink__stringBase0@l
/* 8026295C  38 A5 01 48 */	addi r5, r5, 0x148
/* 80262960  80 DC 00 1C */	lwz r6, 0x1c(r28)
/* 80262964  4C C6 31 82 */	crclr 6
/* 80262968  48 10 3C 55 */	bl snprintf
/* 8026296C  38 00 00 00 */	li r0, 0
/* 80262970  90 01 00 08 */	stw r0, 8(r1)
/* 80262974  38 61 00 10 */	addi r3, r1, 0x10
/* 80262978  38 80 00 00 */	li r4, 0
/* 8026297C  38 A0 00 01 */	li r5, 1
/* 80262980  38 C0 00 00 */	li r6, 0
/* 80262984  7F C7 F3 78 */	mr r7, r30
/* 80262988  39 00 00 01 */	li r8, 1
/* 8026298C  39 20 00 00 */	li r9, 0
/* 80262990  39 40 00 00 */	li r10, 0
/* 80262994  48 07 72 05 */	bl loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 80262998  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8026299C  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802629A0  28 00 00 00 */	cmplwi r0, 0
/* 802629A4  41 82 00 14 */	beq lbl_802629B8
/* 802629A8  38 00 00 00 */	li r0, 0
/* 802629AC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 802629B0  38 00 00 07 */	li r0, 7
/* 802629B4  98 1C 00 20 */	stb r0, 0x20(r28)
lbl_802629B8:
/* 802629B8  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802629BC  28 00 00 00 */	cmplwi r0, 0
/* 802629C0  40 82 00 58 */	bne lbl_80262A18
/* 802629C4  80 6D 8B C8 */	lwz r3, sFileCache__20DynamicModuleControl(r13)
/* 802629C8  28 03 00 00 */	cmplwi r3, 0
/* 802629CC  41 82 00 4C */	beq lbl_80262A18
/* 802629D0  3C 80 72 65 */	lis r4, 0x7265 /* 0x72656C73@ha */
/* 802629D4  38 84 6C 73 */	addi r4, r4, 0x6C73 /* 0x72656C73@l */
/* 802629D8  38 A1 00 10 */	addi r5, r1, 0x10
/* 802629DC  81 83 00 00 */	lwz r12, 0(r3)
/* 802629E0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802629E4  7D 89 03 A6 */	mtctr r12
/* 802629E8  4E 80 04 21 */	bctrl 
/* 802629EC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 802629F0  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802629F4  28 00 00 00 */	cmplwi r0, 0
/* 802629F8  41 82 00 20 */	beq lbl_80262A18
/* 802629FC  38 00 00 00 */	li r0, 0
/* 80262A00  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80262A04  38 00 00 0B */	li r0, 0xb
/* 80262A08  98 1C 00 20 */	stb r0, 0x20(r28)
/* 80262A0C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 80262A10  38 80 00 00 */	li r4, 0
/* 80262A14  48 07 19 8D */	bl detachResource__13JKRFileLoaderFPvP13JKRFileLoader
lbl_80262A18:
/* 80262A18  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 80262A1C  28 03 00 00 */	cmplwi r3, 0
/* 80262A20  40 82 00 24 */	bne lbl_80262A44
/* 80262A24  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 80262A28  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 80262A2C  38 63 01 62 */	addi r3, r3, 0x162
/* 80262A30  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 80262A34  4C C6 31 82 */	crclr 6
/* 80262A38  4B DA 41 D5 */	bl OSReport_Error
/* 80262A3C  38 60 00 00 */	li r3, 0
/* 80262A40  48 00 00 A4 */	b lbl_80262AE4
lbl_80262A44:
/* 80262A44  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 80262A48  2C 04 00 00 */	cmpwi r4, 0
/* 80262A4C  40 81 00 80 */	ble lbl_80262ACC
/* 80262A50  4B FF FD 71 */	bl calcSum2__FPCUsUl
/* 80262A54  88 DC 00 21 */	lbz r6, 0x21(r28)
/* 80262A58  28 06 00 00 */	cmplwi r6, 0
/* 80262A5C  40 82 00 18 */	bne lbl_80262A74
/* 80262A60  B0 7C 00 22 */	sth r3, 0x22(r28)
/* 80262A64  88 7C 00 21 */	lbz r3, 0x21(r28)
/* 80262A68  38 03 00 01 */	addi r0, r3, 1
/* 80262A6C  98 1C 00 21 */	stb r0, 0x21(r28)
/* 80262A70  4B FF FD B8 */	b lbl_80262828
lbl_80262A74:
/* 80262A74  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80262A78  A0 BC 00 22 */	lhz r5, 0x22(r28)
/* 80262A7C  7C 04 28 40 */	cmplw r4, r5
/* 80262A80  41 82 00 38 */	beq lbl_80262AB8
/* 80262A84  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha
/* 80262A88  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l
/* 80262A8C  38 63 01 9D */	addi r3, r3, 0x19d
/* 80262A90  80 DC 00 1C */	lwz r6, 0x1c(r28)
/* 80262A94  4C C6 31 82 */	crclr 6
/* 80262A98  4B DA 41 75 */	bl OSReport_Error
/* 80262A9C  38 00 00 00 */	li r0, 0
/* 80262AA0  98 1C 00 21 */	stb r0, 0x21(r28)
/* 80262AA4  3B BD 00 01 */	addi r29, r29, 1
/* 80262AA8  2C 1D 00 03 */	cmpwi r29, 3
/* 80262AAC  41 80 FD 7C */	blt lbl_80262828
/* 80262AB0  38 60 00 00 */	li r3, 0
/* 80262AB4  48 00 00 30 */	b lbl_80262AE4
lbl_80262AB8:
/* 80262AB8  28 06 00 FF */	cmplwi r6, 0xff
/* 80262ABC  40 80 00 24 */	bge lbl_80262AE0
/* 80262AC0  38 06 00 01 */	addi r0, r6, 1
/* 80262AC4  98 1C 00 21 */	stb r0, 0x21(r28)
/* 80262AC8  48 00 00 18 */	b lbl_80262AE0
lbl_80262ACC:
/* 80262ACC  88 7C 00 21 */	lbz r3, 0x21(r28)
/* 80262AD0  28 03 00 FF */	cmplwi r3, 0xff
/* 80262AD4  40 80 00 0C */	bge lbl_80262AE0
/* 80262AD8  38 03 00 01 */	addi r0, r3, 1
/* 80262ADC  98 1C 00 21 */	stb r0, 0x21(r28)
lbl_80262AE0:
/* 80262AE0  38 60 00 01 */	li r3, 1
lbl_80262AE4:
/* 80262AE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80262AE8  48 0F F7 3D */	bl _restgpr_28
/* 80262AEC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80262AF0  7C 08 03 A6 */	mtlr r0
/* 80262AF4  38 21 00 60 */	addi r1, r1, 0x60
/* 80262AF8  4E 80 00 20 */	blr 
