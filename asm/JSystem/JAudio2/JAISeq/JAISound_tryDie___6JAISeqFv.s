lbl_802A12BC:
/* 802A12BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A12C0  7C 08 02 A6 */	mflr r0
/* 802A12C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A12C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A12CC  7C 7F 1B 78 */	mr r31, r3
/* 802A12D0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A12D4  4B FF F7 99 */	bl func_802A0A6C
/* 802A12D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A12DC  41 82 00 14 */	beq lbl_802A12F0
/* 802A12E0  7F E3 FB 78 */	mr r3, r31
/* 802A12E4  4B FF FE 9D */	bl die___6JAISeqFv
/* 802A12E8  38 60 00 01 */	li r3, 1
/* 802A12EC  48 00 00 48 */	b lbl_802A1334
lbl_802A12F0:
/* 802A12F0  C0 02 BD 9C */	lfs f0, lit_643(r2)
/* 802A12F4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 802A12F8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802A12FC  38 00 00 00 */	li r0, 0
/* 802A1300  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802A1304  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 802A1308  38 60 00 01 */	li r3, 1
/* 802A130C  88 1F 00 1F */	lbz r0, 0x1f(r31)
/* 802A1310  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802A1314  98 1F 00 1F */	stb r0, 0x1f(r31)
/* 802A1318  48 09 C3 DD */	bl OSDisableInterrupts
/* 802A131C  90 61 00 08 */	stw r3, 8(r1)
/* 802A1320  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A1324  4B FF 07 55 */	bl stopSeq__8JASTrackFv
/* 802A1328  80 61 00 08 */	lwz r3, 8(r1)
/* 802A132C  48 09 C3 F1 */	bl OSRestoreInterrupts
/* 802A1330  38 60 00 00 */	li r3, 0
lbl_802A1334:
/* 802A1334  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A1338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A133C  7C 08 03 A6 */	mtlr r0
/* 802A1340  38 21 00 20 */	addi r1, r1, 0x20
/* 802A1344  4E 80 00 20 */	blr 
