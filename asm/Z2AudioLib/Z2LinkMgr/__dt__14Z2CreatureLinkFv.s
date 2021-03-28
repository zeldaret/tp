lbl_802C3500:
/* 802C3500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3504  7C 08 02 A6 */	mflr r0
/* 802C3508  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C350C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3510  93 C1 00 08 */	stw r30, 8(r1)
/* 802C3514  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C3518  7C 9E 23 78 */	mr r30, r4
/* 802C351C  41 82 00 C0 */	beq lbl_802C35DC
/* 802C3520  3C 80 80 3D */	lis r4, __vt__14Z2CreatureLink@ha
/* 802C3524  38 84 B9 80 */	addi r4, r4, __vt__14Z2CreatureLink@l
/* 802C3528  90 9F 00 00 */	stw r4, 0(r31)
/* 802C352C  38 04 00 30 */	addi r0, r4, 0x30
/* 802C3530  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802C3534  81 83 00 00 */	lwz r12, 0(r3)
/* 802C3538  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C353C  7D 89 03 A6 */	mtctr r12
/* 802C3540  4E 80 04 21 */	bctrl 
/* 802C3544  34 1F 00 94 */	addic. r0, r31, 0x94
/* 802C3548  41 82 00 1C */	beq lbl_802C3564
/* 802C354C  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 802C3550  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 802C3554  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 802C3558  38 7F 00 94 */	addi r3, r31, 0x94
/* 802C355C  38 80 00 00 */	li r4, 0
/* 802C3560  4B FF A9 E9 */	bl __dt__14Z2SoundObjBaseFv
lbl_802C3564:
/* 802C3564  34 1F 00 90 */	addic. r0, r31, 0x90
/* 802C3568  41 82 00 58 */	beq lbl_802C35C0
/* 802C356C  3C 60 80 3D */	lis r3, __vt__18Z2LinkSoundStarter@ha
/* 802C3570  38 03 B9 6C */	addi r0, r3, __vt__18Z2LinkSoundStarter@l
/* 802C3574  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802C3578  34 1F 00 90 */	addic. r0, r31, 0x90
/* 802C357C  41 82 00 44 */	beq lbl_802C35C0
/* 802C3580  3C 60 80 3D */	lis r3, __vt__14Z2SoundStarter@ha
/* 802C3584  38 03 9D 80 */	addi r0, r3, __vt__14Z2SoundStarter@l
/* 802C3588  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802C358C  34 1F 00 94 */	addic. r0, r31, 0x94
/* 802C3590  41 82 00 24 */	beq lbl_802C35B4
/* 802C3594  34 7F 00 94 */	addic. r3, r31, 0x94
/* 802C3598  41 82 00 08 */	beq lbl_802C35A0
/* 802C359C  38 63 FF FC */	addi r3, r3, -4
lbl_802C35A0:
/* 802C35A0  80 0D 85 F4 */	lwz r0, data_80450B74(r13)
/* 802C35A4  7C 00 18 40 */	cmplw r0, r3
/* 802C35A8  40 82 00 0C */	bne lbl_802C35B4
/* 802C35AC  38 00 00 00 */	li r0, 0
/* 802C35B0  90 0D 85 F4 */	stw r0, data_80450B74(r13)
lbl_802C35B4:
/* 802C35B4  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C35B8  38 80 00 00 */	li r4, 0
/* 802C35BC  4B FD F9 CD */	bl __dt__15JAISoundStarterFv
lbl_802C35C0:
/* 802C35C0  7F E3 FB 78 */	mr r3, r31
/* 802C35C4  38 80 00 00 */	li r4, 0
/* 802C35C8  4B FF CE 59 */	bl __dt__10Z2CreatureFv
/* 802C35CC  7F C0 07 35 */	extsh. r0, r30
/* 802C35D0  40 81 00 0C */	ble lbl_802C35DC
/* 802C35D4  7F E3 FB 78 */	mr r3, r31
/* 802C35D8  48 00 B7 65 */	bl __dl__FPv
lbl_802C35DC:
/* 802C35DC  7F E3 FB 78 */	mr r3, r31
/* 802C35E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C35E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C35E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C35EC  7C 08 03 A6 */	mtlr r0
/* 802C35F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C35F4  4E 80 00 20 */	blr 
