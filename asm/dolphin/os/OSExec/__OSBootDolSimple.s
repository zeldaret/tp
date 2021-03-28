lbl_8033CDC0:
/* 8033CDC0  7C 08 02 A6 */	mflr r0
/* 8033CDC4  90 01 00 04 */	stw r0, 4(r1)
/* 8033CDC8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8033CDCC  BF 01 01 10 */	stmw r24, 0x110(r1)
/* 8033CDD0  7C 7B 1B 78 */	mr r27, r3
/* 8033CDD4  7C 98 23 78 */	mr r24, r4
/* 8033CDD8  7C BC 2B 78 */	mr r28, r5
/* 8033CDDC  7C DD 33 78 */	mr r29, r6
/* 8033CDE0  7C F9 3B 78 */	mr r25, r7
/* 8033CDE4  7D 1A 43 78 */	mr r26, r8
/* 8033CDE8  7D 3E 4B 78 */	mr r30, r9
/* 8033CDEC  48 00 09 09 */	bl OSDisableInterrupts
/* 8033CDF0  38 60 00 1C */	li r3, 0x1c
/* 8033CDF4  38 80 00 01 */	li r4, 1
/* 8033CDF8  4B FF E4 B5 */	bl OSAllocFromArenaLo
/* 8033CDFC  7C 7F 1B 78 */	mr r31, r3
/* 8033CE00  38 00 00 01 */	li r0, 1
/* 8033CE04  90 1F 00 00 */	stw r0, 0(r31)
/* 8033CE08  2C 19 00 00 */	cmpwi r25, 0
/* 8033CE0C  93 1F 00 04 */	stw r24, 4(r31)
/* 8033CE10  93 9F 00 0C */	stw r28, 0xc(r31)
/* 8033CE14  93 BF 00 10 */	stw r29, 0x10(r31)
/* 8033CE18  93 3F 00 14 */	stw r25, 0x14(r31)
/* 8033CE1C  40 82 00 24 */	bne lbl_8033CE40
/* 8033CE20  38 60 20 00 */	li r3, 0x2000
/* 8033CE24  38 80 00 01 */	li r4, 1
/* 8033CE28  4B FF E4 85 */	bl OSAllocFromArenaLo
/* 8033CE2C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8033CE30  7F 44 D3 78 */	mr r4, r26
/* 8033CE34  7F C5 F3 78 */	mr r5, r30
/* 8033CE38  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8033CE3C  4B FF FC 45 */	bl PackArgs
lbl_8033CE40:
/* 8033CE40  48 00 C2 B1 */	bl DVDInit
/* 8033CE44  38 60 00 01 */	li r3, 1
/* 8033CE48  48 00 E4 2D */	bl DVDSetAutoInvalidation
/* 8033CE4C  48 00 E4 39 */	bl DVDResume
/* 8033CE50  38 00 00 00 */	li r0, 0
/* 8033CE54  3C 60 80 34 */	lis r3, Callback@ha
/* 8033CE58  90 0D 90 D8 */	stw r0, Prepared(r13)
/* 8033CE5C  38 63 CC B0 */	addi r3, r3, Callback@l
/* 8033CE60  48 00 E8 C1 */	bl __DVDPrepareResetAsync
/* 8033CE64  38 60 FF E0 */	li r3, -32
/* 8033CE68  48 00 0C 55 */	bl __OSMaskInterrupts
/* 8033CE6C  38 60 04 00 */	li r3, 0x400
/* 8033CE70  48 00 0C D5 */	bl __OSUnmaskInterrupts
/* 8033CE74  48 00 08 95 */	bl OSEnableInterrupts
/* 8033CE78  48 00 00 04 */	b lbl_8033CE7C
lbl_8033CE7C:
/* 8033CE7C  48 00 00 04 */	b lbl_8033CE80
lbl_8033CE80:
/* 8033CE80  48 00 00 18 */	b lbl_8033CE98
lbl_8033CE84:
/* 8033CE84  48 00 E7 A5 */	bl DVDCheckDisk
/* 8033CE88  2C 03 00 00 */	cmpwi r3, 0
/* 8033CE8C  40 82 00 0C */	bne lbl_8033CE98
/* 8033CE90  38 60 00 00 */	li r3, 0
/* 8033CE94  48 00 29 D1 */	bl __OSDoHotReset
lbl_8033CE98:
/* 8033CE98  80 0D 90 D8 */	lwz r0, Prepared(r13)
/* 8033CE9C  2C 00 00 01 */	cmpwi r0, 1
/* 8033CEA0  40 82 FF E4 */	bne lbl_8033CE84
/* 8033CEA4  80 0D 90 8C */	lwz r0, __OSIsGcam(r13)
/* 8033CEA8  2C 00 00 00 */	cmpwi r0, 0
/* 8033CEAC  40 82 00 7C */	bne lbl_8033CF28
/* 8033CEB0  48 00 E7 71 */	bl DVDGetCurrentDiskID
/* 8033CEB4  88 03 00 08 */	lbz r0, 8(r3)
/* 8033CEB8  28 00 00 00 */	cmplwi r0, 0
/* 8033CEBC  41 82 00 0C */	beq lbl_8033CEC8
/* 8033CEC0  38 00 00 01 */	li r0, 1
/* 8033CEC4  48 00 00 08 */	b lbl_8033CECC
lbl_8033CEC8:
/* 8033CEC8  38 00 00 00 */	li r0, 0
lbl_8033CECC:
/* 8033CECC  2C 00 00 00 */	cmpwi r0, 0
/* 8033CED0  41 82 00 58 */	beq lbl_8033CF28
/* 8033CED4  38 60 00 00 */	li r3, 0
/* 8033CED8  48 01 31 55 */	bl AISetStreamVolLeft
/* 8033CEDC  38 60 00 00 */	li r3, 0
/* 8033CEE0  48 01 31 79 */	bl AISetStreamVolRight
/* 8033CEE4  38 61 00 DC */	addi r3, r1, 0xdc
/* 8033CEE8  38 80 00 00 */	li r4, 0
/* 8033CEEC  48 00 E0 C1 */	bl DVDCancelStreamAsync
/* 8033CEF0  48 00 00 04 */	b lbl_8033CEF4
lbl_8033CEF4:
/* 8033CEF4  48 00 00 04 */	b lbl_8033CEF8
lbl_8033CEF8:
/* 8033CEF8  48 00 00 18 */	b lbl_8033CF10
lbl_8033CEFC:
/* 8033CEFC  48 00 E7 2D */	bl DVDCheckDisk
/* 8033CF00  2C 03 00 00 */	cmpwi r3, 0
/* 8033CF04  40 82 00 0C */	bne lbl_8033CF10
/* 8033CF08  38 60 00 00 */	li r3, 0
/* 8033CF0C  48 00 29 59 */	bl __OSDoHotReset
lbl_8033CF10:
/* 8033CF10  38 61 00 DC */	addi r3, r1, 0xdc
/* 8033CF14  48 00 E2 69 */	bl DVDGetCommandBlockStatus
/* 8033CF18  2C 03 00 00 */	cmpwi r3, 0
/* 8033CF1C  40 82 FF E0 */	bne lbl_8033CEFC
/* 8033CF20  38 60 00 00 */	li r3, 0
/* 8033CF24  48 01 2E 49 */	bl AISetStreamPlayState
lbl_8033CF28:
/* 8033CF28  38 60 00 20 */	li r3, 0x20
/* 8033CF2C  38 80 00 20 */	li r4, 0x20
/* 8033CF30  4B FF E3 7D */	bl OSAllocFromArenaLo
/* 8033CF34  7C 7E 1B 78 */	mr r30, r3
/* 8033CF38  4B FF FD C5 */	bl GetApploaderPosition
/* 8033CF3C  7C 65 1B 78 */	mr r5, r3
/* 8033CF40  7F C3 F3 78 */	mr r3, r30
/* 8033CF44  38 80 00 20 */	li r4, 0x20
/* 8033CF48  4B FF FC FD */	bl ReadDisc
/* 8033CF4C  4B FF FD B1 */	bl GetApploaderPosition
/* 8033CF50  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8033CF54  38 A3 00 20 */	addi r5, r3, 0x20
/* 8033CF58  3C 60 81 20 */	lis r3, 0x8120
/* 8033CF5C  38 04 00 1F */	addi r0, r4, 0x1f
/* 8033CF60  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 8033CF64  4B FF FC E1 */	bl ReadDisc
/* 8033CF68  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8033CF6C  3C 60 81 20 */	lis r3, 0x8120
/* 8033CF70  38 04 00 1F */	addi r0, r4, 0x1f
/* 8033CF74  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 8033CF78  4B FF E7 19 */	bl ICInvalidateRange
/* 8033CF7C  3C 60 80 3D */	lis r3, lit_115@ha
/* 8033CF80  38 83 FC 38 */	addi r4, r3, lit_115@l
/* 8033CF84  7F C3 F3 78 */	mr r3, r30
/* 8033CF88  38 A0 00 0A */	li r5, 0xa
/* 8033CF8C  48 02 B9 C9 */	bl strncmp
/* 8033CF90  2C 03 00 00 */	cmpwi r3, 0
/* 8033CF94  40 81 00 0C */	ble lbl_8033CFA0
/* 8033CF98  38 00 00 01 */	li r0, 1
/* 8033CF9C  48 00 00 08 */	b lbl_8033CFA4
lbl_8033CFA0:
/* 8033CFA0  38 00 00 00 */	li r0, 0
lbl_8033CFA4:
/* 8033CFA4  2C 00 00 00 */	cmpwi r0, 0
/* 8033CFA8  41 82 01 EC */	beq lbl_8033D194
/* 8033CFAC  3C 1B 00 01 */	addis r0, r27, 1
/* 8033CFB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8033CFB4  40 82 00 B0 */	bne lbl_8033D064
/* 8033CFB8  80 6D 90 DC */	lwz r3, apploaderPosition(r13)
/* 8033CFBC  2C 03 00 00 */	cmpwi r3, 0
/* 8033CFC0  41 82 00 08 */	beq lbl_8033CFC8
/* 8033CFC4  48 00 00 94 */	b lbl_8033D058
lbl_8033CFC8:
/* 8033CFC8  3F 60 80 00 */	lis r27, 0x8000 /* 0x800030F4@ha */
/* 8033CFCC  80 1B 30 F4 */	lwz r0, 0x30F4(r27)
/* 8033CFD0  2C 00 00 00 */	cmpwi r0, 0
/* 8033CFD4  41 82 00 78 */	beq lbl_8033D04C
/* 8033CFD8  38 60 00 40 */	li r3, 0x40
/* 8033CFDC  38 80 00 20 */	li r4, 0x20
/* 8033CFE0  4B FF E2 CD */	bl OSAllocFromArenaLo
/* 8033CFE4  80 DB 30 F4 */	lwz r6, 0x30f4(r27)
/* 8033CFE8  7C 7B 1B 78 */	mr r27, r3
/* 8033CFEC  7F 64 DB 78 */	mr r4, r27
/* 8033CFF0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8033CFF4  38 A0 00 40 */	li r5, 0x40
/* 8033CFF8  38 E0 00 00 */	li r7, 0
/* 8033CFFC  39 00 00 00 */	li r8, 0
/* 8033D000  48 00 DD 2D */	bl DVDReadAbsAsyncPrio
/* 8033D004  48 00 00 04 */	b lbl_8033D008
lbl_8033D008:
/* 8033D008  48 00 00 04 */	b lbl_8033D00C
lbl_8033D00C:
/* 8033D00C  48 00 00 18 */	b lbl_8033D024
lbl_8033D010:
/* 8033D010  48 00 E6 19 */	bl DVDCheckDisk
/* 8033D014  2C 03 00 00 */	cmpwi r3, 0
/* 8033D018  40 82 00 0C */	bne lbl_8033D024
/* 8033D01C  38 60 00 00 */	li r3, 0
/* 8033D020  48 00 28 45 */	bl __OSDoHotReset
lbl_8033D024:
/* 8033D024  38 61 00 5C */	addi r3, r1, 0x5c
/* 8033D028  48 00 E1 55 */	bl DVDGetCommandBlockStatus
/* 8033D02C  2C 03 00 00 */	cmpwi r3, 0
/* 8033D030  40 82 FF E0 */	bne lbl_8033D010
/* 8033D034  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030F4@ha */
/* 8033D038  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 8033D03C  80 63 30 F4 */	lwz r3, 0x30F4(r3)
/* 8033D040  7C 03 02 14 */	add r0, r3, r0
/* 8033D044  90 0D 90 DC */	stw r0, apploaderPosition(r13)
/* 8033D048  48 00 00 0C */	b lbl_8033D054
lbl_8033D04C:
/* 8033D04C  38 00 24 40 */	li r0, 0x2440
/* 8033D050  90 0D 90 DC */	stw r0, apploaderPosition(r13)
lbl_8033D054:
/* 8033D054  80 6D 90 DC */	lwz r3, apploaderPosition(r13)
lbl_8033D058:
/* 8033D058  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8033D05C  7F 63 02 14 */	add r27, r3, r0
/* 8033D060  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_8033D064:
/* 8033D064  93 7F 00 08 */	stw r27, 8(r31)
/* 8033D068  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8033D06C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8033D070  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8033D074  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 8033D078  7D 88 03 A6 */	mtlr r12
/* 8033D07C  4E 80 00 21 */	blrl 
/* 8033D080  38 60 00 1C */	li r3, 0x1c
/* 8033D084  38 80 00 01 */	li r4, 1
/* 8033D088  4B FF E2 25 */	bl OSAllocFromArenaLo
/* 8033D08C  7C 7B 1B 78 */	mr r27, r3
/* 8033D090  7F 63 DB 78 */	mr r3, r27
/* 8033D094  7F E4 FB 78 */	mr r4, r31
/* 8033D098  38 A0 00 1C */	li r5, 0x1c
/* 8033D09C  4B CC 64 A5 */	bl memcpy
/* 8033D0A0  3C 80 80 00 */	lis r4, 0x8000 /* 0x800030F0@ha */
/* 8033D0A4  81 81 00 C0 */	lwz r12, 0xc0(r1)
/* 8033D0A8  3C 60 80 00 */	lis r3, OSReport@ha
/* 8033D0AC  93 64 30 F0 */	stw r27, 0x30F0(r4)
/* 8033D0B0  38 63 6A BC */	addi r3, r3, OSReport@l
/* 8033D0B4  7D 88 03 A6 */	mtlr r12
/* 8033D0B8  4E 80 00 21 */	blrl 
/* 8033D0BC  7F 63 DB 78 */	mr r3, r27
/* 8033D0C0  4B FF E1 E5 */	bl OSSetArenaLo
/* 8033D0C4  48 00 00 04 */	b lbl_8033D0C8
lbl_8033D0C8:
/* 8033D0C8  48 00 00 04 */	b lbl_8033D0CC
lbl_8033D0CC:
/* 8033D0CC  48 00 00 50 */	b lbl_8033D11C
lbl_8033D0D0:
/* 8033D0D0  80 C1 00 D4 */	lwz r6, 0xd4(r1)
/* 8033D0D4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8033D0D8  80 A1 00 D0 */	lwz r5, 0xd0(r1)
/* 8033D0DC  38 E0 00 00 */	li r7, 0
/* 8033D0E0  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 8033D0E4  39 00 00 00 */	li r8, 0
/* 8033D0E8  48 00 DC 45 */	bl DVDReadAbsAsyncPrio
/* 8033D0EC  48 00 00 04 */	b lbl_8033D0F0
lbl_8033D0F0:
/* 8033D0F0  48 00 00 04 */	b lbl_8033D0F4
lbl_8033D0F4:
/* 8033D0F4  48 00 00 18 */	b lbl_8033D10C
lbl_8033D0F8:
/* 8033D0F8  48 00 E5 31 */	bl DVDCheckDisk
/* 8033D0FC  2C 03 00 00 */	cmpwi r3, 0
/* 8033D100  40 82 00 0C */	bne lbl_8033D10C
/* 8033D104  38 60 00 00 */	li r3, 0
/* 8033D108  48 00 27 5D */	bl __OSDoHotReset
lbl_8033D10C:
/* 8033D10C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8033D110  48 00 E0 6D */	bl DVDGetCommandBlockStatus
/* 8033D114  2C 03 00 00 */	cmpwi r3, 0
/* 8033D118  40 82 FF E0 */	bne lbl_8033D0F8
lbl_8033D11C:
/* 8033D11C  81 81 00 C4 */	lwz r12, 0xc4(r1)
/* 8033D120  38 61 00 CC */	addi r3, r1, 0xcc
/* 8033D124  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8033D128  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 8033D12C  7D 88 03 A6 */	mtlr r12
/* 8033D130  4E 80 00 21 */	blrl 
/* 8033D134  2C 03 00 00 */	cmpwi r3, 0
/* 8033D138  40 82 FF 98 */	bne lbl_8033D0D0
/* 8033D13C  81 81 00 C8 */	lwz r12, 0xc8(r1)
/* 8033D140  7D 88 03 A6 */	mtlr r12
/* 8033D144  4E 80 00 21 */	blrl 
/* 8033D148  7C 7C 1B 78 */	mr r28, r3
/* 8033D14C  38 60 00 1C */	li r3, 0x1c
/* 8033D150  38 80 00 01 */	li r4, 1
/* 8033D154  4B FF E1 59 */	bl OSAllocFromArenaLo
/* 8033D158  7C 7B 1B 78 */	mr r27, r3
/* 8033D15C  7F 63 DB 78 */	mr r3, r27
/* 8033D160  7F E4 FB 78 */	mr r4, r31
/* 8033D164  38 A0 00 1C */	li r5, 0x1c
/* 8033D168  4B CC 63 D9 */	bl memcpy
/* 8033D16C  3C 80 80 00 */	lis r4, 0x8000 /* 0x800030F0@ha */
/* 8033D170  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC003000@ha */
/* 8033D174  93 64 30 F0 */	stw r27, 0x30F0(r4)
/* 8033D178  38 63 30 00 */	addi r3, r3, 0x3000 /* 0xCC003000@l */
/* 8033D17C  38 00 00 07 */	li r0, 7
/* 8033D180  90 03 00 24 */	stw r0, 0x24(r3)
/* 8033D184  48 00 05 71 */	bl OSDisableInterrupts
/* 8033D188  7F 83 E3 78 */	mr r3, r28
/* 8033D18C  4B FF FA 7D */	bl Run
/* 8033D190  48 00 00 A0 */	b lbl_8033D230
lbl_8033D194:
/* 8033D194  3C 80 81 30 */	lis r4, 0x8130 /* 0x812FDFF0@ha */
/* 8033D198  93 84 DF F0 */	stw r28, 0xDFF0(r4)
/* 8033D19C  38 00 00 01 */	li r0, 1
/* 8033D1A0  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030E2@ha */
/* 8033D1A4  93 A4 DF EC */	stw r29, -0x2014(r4)
/* 8033D1A8  98 03 30 E2 */	stb r0, 0x30E2(r3)
/* 8033D1AC  4B FF FB 51 */	bl GetApploaderPosition
/* 8033D1B0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8033D1B4  3C 80 81 30 */	lis r4, 0x8130
/* 8033D1B8  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 8033D1BC  38 E0 00 00 */	li r7, 0
/* 8033D1C0  7C C3 02 14 */	add r6, r3, r0
/* 8033D1C4  38 05 00 1F */	addi r0, r5, 0x1f
/* 8033D1C8  38 C6 00 20 */	addi r6, r6, 0x20
/* 8033D1CC  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 8033D1D0  38 61 00 8C */	addi r3, r1, 0x8c
/* 8033D1D4  39 00 00 00 */	li r8, 0
/* 8033D1D8  48 00 DB 55 */	bl DVDReadAbsAsyncPrio
/* 8033D1DC  48 00 00 04 */	b lbl_8033D1E0
lbl_8033D1E0:
/* 8033D1E0  48 00 00 04 */	b lbl_8033D1E4
lbl_8033D1E4:
/* 8033D1E4  48 00 00 18 */	b lbl_8033D1FC
lbl_8033D1E8:
/* 8033D1E8  48 00 E4 41 */	bl DVDCheckDisk
/* 8033D1EC  2C 03 00 00 */	cmpwi r3, 0
/* 8033D1F0  40 82 00 0C */	bne lbl_8033D1FC
/* 8033D1F4  38 60 00 00 */	li r3, 0
/* 8033D1F8  48 00 26 6D */	bl __OSDoHotReset
lbl_8033D1FC:
/* 8033D1FC  38 61 00 8C */	addi r3, r1, 0x8c
/* 8033D200  48 00 DF 7D */	bl DVDGetCommandBlockStatus
/* 8033D204  2C 03 00 00 */	cmpwi r3, 0
/* 8033D208  40 82 FF E0 */	bne lbl_8033D1E8
/* 8033D20C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8033D210  3C 60 81 30 */	lis r3, 0x8130
/* 8033D214  38 04 00 1F */	addi r0, r4, 0x1f
/* 8033D218  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 8033D21C  4B FF E4 75 */	bl ICInvalidateRange
/* 8033D220  48 00 04 D5 */	bl OSDisableInterrupts
/* 8033D224  4B FF E4 A1 */	bl ICFlashInvalidate
/* 8033D228  3C 60 81 30 */	lis r3, 0x8130
/* 8033D22C  4B FF F9 DD */	bl Run
lbl_8033D230:
/* 8033D230  BB 01 01 10 */	lmw r24, 0x110(r1)
/* 8033D234  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8033D238  38 21 01 30 */	addi r1, r1, 0x130
/* 8033D23C  7C 08 03 A6 */	mtlr r0
/* 8033D240  4E 80 00 20 */	blr 
