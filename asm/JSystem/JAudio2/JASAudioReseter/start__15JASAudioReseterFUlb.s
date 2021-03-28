lbl_8029D138:
/* 8029D138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029D13C  7C 08 02 A6 */	mflr r0
/* 8029D140  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029D144  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029D148  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029D14C  7C 7E 1B 78 */	mr r30, r3
/* 8029D150  7C 9F 23 78 */	mr r31, r4
/* 8029D154  80 03 00 08 */	lwz r0, 8(r3)
/* 8029D158  2C 00 00 00 */	cmpwi r0, 0
/* 8029D15C  40 82 00 0C */	bne lbl_8029D168
/* 8029D160  38 60 00 00 */	li r3, 0
/* 8029D164  48 00 00 58 */	b lbl_8029D1BC
lbl_8029D168:
/* 8029D168  98 BE 00 0C */	stb r5, 0xc(r30)
/* 8029D16C  48 0A 05 89 */	bl OSDisableInterrupts
/* 8029D170  90 61 00 08 */	stw r3, 8(r1)
/* 8029D174  3C 60 80 2A */	lis r3, callback__15JASAudioReseterFPv@ha
/* 8029D178  38 63 D2 D4 */	addi r3, r3, callback__15JASAudioReseterFPv@l
/* 8029D17C  7F C4 F3 78 */	mr r4, r30
/* 8029D180  48 00 10 C1 */	bl registerDspSyncCallback__9JASDriverFPFPv_lPv
/* 8029D184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029D188  40 82 00 14 */	bne lbl_8029D19C
/* 8029D18C  80 61 00 08 */	lwz r3, 8(r1)
/* 8029D190  48 0A 05 8D */	bl OSRestoreInterrupts
/* 8029D194  38 60 00 00 */	li r3, 0
/* 8029D198  48 00 00 24 */	b lbl_8029D1BC
lbl_8029D19C:
/* 8029D19C  48 00 0F BD */	bl getDSPLevel__9JASDriverFv
/* 8029D1A0  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8029D1A4  93 FE 00 00 */	stw r31, 0(r30)
/* 8029D1A8  38 00 00 00 */	li r0, 0
/* 8029D1AC  90 1E 00 08 */	stw r0, 8(r30)
/* 8029D1B0  80 61 00 08 */	lwz r3, 8(r1)
/* 8029D1B4  48 0A 05 69 */	bl OSRestoreInterrupts
/* 8029D1B8  38 60 00 01 */	li r3, 1
lbl_8029D1BC:
/* 8029D1BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029D1C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029D1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029D1C8  7C 08 03 A6 */	mtlr r0
/* 8029D1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029D1D0  4E 80 00 20 */	blr 
