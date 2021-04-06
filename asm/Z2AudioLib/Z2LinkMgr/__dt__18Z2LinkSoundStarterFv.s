lbl_802C3464:
/* 802C3464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3468  7C 08 02 A6 */	mflr r0
/* 802C346C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3474  93 C1 00 08 */	stw r30, 8(r1)
/* 802C3478  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C347C  7C 9F 23 78 */	mr r31, r4
/* 802C3480  41 82 00 64 */	beq lbl_802C34E4
/* 802C3484  3C 60 80 3D */	lis r3, __vt__18Z2LinkSoundStarter@ha /* 0x803CB96C@ha */
/* 802C3488  38 03 B9 6C */	addi r0, r3, __vt__18Z2LinkSoundStarter@l /* 0x803CB96C@l */
/* 802C348C  90 1E 00 00 */	stw r0, 0(r30)
/* 802C3490  41 82 00 44 */	beq lbl_802C34D4
/* 802C3494  3C 60 80 3D */	lis r3, __vt__14Z2SoundStarter@ha /* 0x803C9D80@ha */
/* 802C3498  38 03 9D 80 */	addi r0, r3, __vt__14Z2SoundStarter@l /* 0x803C9D80@l */
/* 802C349C  90 1E 00 00 */	stw r0, 0(r30)
/* 802C34A0  34 1E 00 04 */	addic. r0, r30, 4
/* 802C34A4  41 82 00 24 */	beq lbl_802C34C8
/* 802C34A8  34 7E 00 04 */	addic. r3, r30, 4
/* 802C34AC  41 82 00 08 */	beq lbl_802C34B4
/* 802C34B0  38 63 FF FC */	addi r3, r3, -4
lbl_802C34B4:
/* 802C34B4  80 0D 85 F4 */	lwz r0, data_80450B74(r13)
/* 802C34B8  7C 00 18 40 */	cmplw r0, r3
/* 802C34BC  40 82 00 0C */	bne lbl_802C34C8
/* 802C34C0  38 00 00 00 */	li r0, 0
/* 802C34C4  90 0D 85 F4 */	stw r0, data_80450B74(r13)
lbl_802C34C8:
/* 802C34C8  7F C3 F3 78 */	mr r3, r30
/* 802C34CC  38 80 00 00 */	li r4, 0
/* 802C34D0  4B FD FA B9 */	bl __dt__15JAISoundStarterFv
lbl_802C34D4:
/* 802C34D4  7F E0 07 35 */	extsh. r0, r31
/* 802C34D8  40 81 00 0C */	ble lbl_802C34E4
/* 802C34DC  7F C3 F3 78 */	mr r3, r30
/* 802C34E0  48 00 B8 5D */	bl __dl__FPv
lbl_802C34E4:
/* 802C34E4  7F C3 F3 78 */	mr r3, r30
/* 802C34E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C34EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C34F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C34F4  7C 08 03 A6 */	mtlr r0
/* 802C34F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C34FC  4E 80 00 20 */	blr 
