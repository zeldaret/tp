lbl_802C5114:
/* 802C5114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5118  7C 08 02 A6 */	mflr r0
/* 802C511C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5124  93 C1 00 08 */	stw r30, 8(r1)
/* 802C5128  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C512C  7C 9F 23 78 */	mr r31, r4
/* 802C5130  41 82 00 A0 */	beq lbl_802C51D0
/* 802C5134  3C 80 80 3D */	lis r4, __vt__14Z2CreatureRide@ha /* 0x803CB924@ha */
/* 802C5138  38 84 B9 24 */	addi r4, r4, __vt__14Z2CreatureRide@l /* 0x803CB924@l */
/* 802C513C  90 9E 00 00 */	stw r4, 0(r30)
/* 802C5140  38 04 00 30 */	addi r0, r4, 0x30
/* 802C5144  90 1E 00 90 */	stw r0, 0x90(r30)
/* 802C5148  81 83 00 00 */	lwz r12, 0(r3)
/* 802C514C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C5150  7D 89 03 A6 */	mtctr r12
/* 802C5154  4E 80 04 21 */	bctrl 
/* 802C5158  34 1E 00 90 */	addic. r0, r30, 0x90
/* 802C515C  41 82 00 58 */	beq lbl_802C51B4
/* 802C5160  3C 60 80 3D */	lis r3, __vt__18Z2RideSoundStarter@ha /* 0x803CB910@ha */
/* 802C5164  38 03 B9 10 */	addi r0, r3, __vt__18Z2RideSoundStarter@l /* 0x803CB910@l */
/* 802C5168  90 1E 00 90 */	stw r0, 0x90(r30)
/* 802C516C  34 1E 00 90 */	addic. r0, r30, 0x90
/* 802C5170  41 82 00 44 */	beq lbl_802C51B4
/* 802C5174  3C 60 80 3D */	lis r3, __vt__14Z2SoundStarter@ha /* 0x803C9D80@ha */
/* 802C5178  38 03 9D 80 */	addi r0, r3, __vt__14Z2SoundStarter@l /* 0x803C9D80@l */
/* 802C517C  90 1E 00 90 */	stw r0, 0x90(r30)
/* 802C5180  34 1E 00 94 */	addic. r0, r30, 0x94
/* 802C5184  41 82 00 24 */	beq lbl_802C51A8
/* 802C5188  34 7E 00 94 */	addic. r3, r30, 0x94
/* 802C518C  41 82 00 08 */	beq lbl_802C5194
/* 802C5190  38 63 FF FC */	addi r3, r3, -4
lbl_802C5194:
/* 802C5194  80 0D 85 F4 */	lwz r0, __OSReport_disable-0x24(r13)
/* 802C5198  7C 00 18 40 */	cmplw r0, r3
/* 802C519C  40 82 00 0C */	bne lbl_802C51A8
/* 802C51A0  38 00 00 00 */	li r0, 0
/* 802C51A4  90 0D 85 F4 */	stw r0, __OSReport_disable-0x24(r13)
lbl_802C51A8:
/* 802C51A8  38 7E 00 90 */	addi r3, r30, 0x90
/* 802C51AC  38 80 00 00 */	li r4, 0
/* 802C51B0  4B FD DD D9 */	bl __dt__15JAISoundStarterFv
lbl_802C51B4:
/* 802C51B4  7F C3 F3 78 */	mr r3, r30
/* 802C51B8  38 80 00 00 */	li r4, 0
/* 802C51BC  4B FF B2 65 */	bl __dt__10Z2CreatureFv
/* 802C51C0  7F E0 07 35 */	extsh. r0, r31
/* 802C51C4  40 81 00 0C */	ble lbl_802C51D0
/* 802C51C8  7F C3 F3 78 */	mr r3, r30
/* 802C51CC  48 00 9B 71 */	bl __dl__FPv
lbl_802C51D0:
/* 802C51D0  7F C3 F3 78 */	mr r3, r30
/* 802C51D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C51D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C51DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C51E0  7C 08 03 A6 */	mtlr r0
/* 802C51E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C51E8  4E 80 00 20 */	blr 
