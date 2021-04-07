lbl_802C5078:
/* 802C5078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C507C  7C 08 02 A6 */	mflr r0
/* 802C5080  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5088  93 C1 00 08 */	stw r30, 8(r1)
/* 802C508C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C5090  7C 9F 23 78 */	mr r31, r4
/* 802C5094  41 82 00 64 */	beq lbl_802C50F8
/* 802C5098  3C 60 80 3D */	lis r3, __vt__18Z2RideSoundStarter@ha /* 0x803CB910@ha */
/* 802C509C  38 03 B9 10 */	addi r0, r3, __vt__18Z2RideSoundStarter@l /* 0x803CB910@l */
/* 802C50A0  90 1E 00 00 */	stw r0, 0(r30)
/* 802C50A4  41 82 00 44 */	beq lbl_802C50E8
/* 802C50A8  3C 60 80 3D */	lis r3, __vt__14Z2SoundStarter@ha /* 0x803C9D80@ha */
/* 802C50AC  38 03 9D 80 */	addi r0, r3, __vt__14Z2SoundStarter@l /* 0x803C9D80@l */
/* 802C50B0  90 1E 00 00 */	stw r0, 0(r30)
/* 802C50B4  34 1E 00 04 */	addic. r0, r30, 4
/* 802C50B8  41 82 00 24 */	beq lbl_802C50DC
/* 802C50BC  34 7E 00 04 */	addic. r3, r30, 4
/* 802C50C0  41 82 00 08 */	beq lbl_802C50C8
/* 802C50C4  38 63 FF FC */	addi r3, r3, -4
lbl_802C50C8:
/* 802C50C8  80 0D 85 F4 */	lwz r0, data_80450B74(r13)
/* 802C50CC  7C 00 18 40 */	cmplw r0, r3
/* 802C50D0  40 82 00 0C */	bne lbl_802C50DC
/* 802C50D4  38 00 00 00 */	li r0, 0
/* 802C50D8  90 0D 85 F4 */	stw r0, data_80450B74(r13)
lbl_802C50DC:
/* 802C50DC  7F C3 F3 78 */	mr r3, r30
/* 802C50E0  38 80 00 00 */	li r4, 0
/* 802C50E4  4B FD DE A5 */	bl __dt__15JAISoundStarterFv
lbl_802C50E8:
/* 802C50E8  7F E0 07 35 */	extsh. r0, r31
/* 802C50EC  40 81 00 0C */	ble lbl_802C50F8
/* 802C50F0  7F C3 F3 78 */	mr r3, r30
/* 802C50F4  48 00 9C 49 */	bl __dl__FPv
lbl_802C50F8:
/* 802C50F8  7F C3 F3 78 */	mr r3, r30
/* 802C50FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5100  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5108  7C 08 03 A6 */	mtlr r0
/* 802C510C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5110  4E 80 00 20 */	blr 
