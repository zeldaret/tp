lbl_80298558:
/* 80298558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029855C  7C 08 02 A6 */	mflr r0
/* 80298560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298568  93 C1 00 08 */	stw r30, 8(r1)
/* 8029856C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80298570  7C 9F 23 78 */	mr r31, r4
/* 80298574  41 82 00 54 */	beq lbl_802985C8
/* 80298578  3C 60 80 3C */	lis r3, __vt__16JASBasicWaveBank@ha /* 0x803C7768@ha */
/* 8029857C  38 03 77 68 */	addi r0, r3, __vt__16JASBasicWaveBank@l /* 0x803C7768@l */
/* 80298580  90 1E 00 00 */	stw r0, 0(r30)
/* 80298584  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80298588  3C 80 80 2A */	lis r4, __dt__Q216JASBasicWaveBank11TWaveHandleFv@ha /* 0x802985E4@ha */
/* 8029858C  38 84 85 E4 */	addi r4, r4, __dt__Q216JASBasicWaveBank11TWaveHandleFv@l /* 0x802985E4@l */
/* 80298590  48 0C 96 DD */	bl __destroy_new_array
/* 80298594  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80298598  3C 80 80 2A */	lis r4, __dt__Q216JASBasicWaveBank10TWaveGroupFv@ha /* 0x80298A0C@ha */
/* 8029859C  38 84 8A 0C */	addi r4, r4, __dt__Q216JASBasicWaveBank10TWaveGroupFv@l /* 0x80298A0C@l */
/* 802985A0  48 0C 96 CD */	bl __destroy_new_array
/* 802985A4  28 1E 00 00 */	cmplwi r30, 0
/* 802985A8  41 82 00 10 */	beq lbl_802985B8
/* 802985AC  3C 60 80 3C */	lis r3, __vt__11JASWaveBank@ha /* 0x803C7780@ha */
/* 802985B0  38 03 77 80 */	addi r0, r3, __vt__11JASWaveBank@l /* 0x803C7780@l */
/* 802985B4  90 1E 00 00 */	stw r0, 0(r30)
lbl_802985B8:
/* 802985B8  7F E0 07 35 */	extsh. r0, r31
/* 802985BC  40 81 00 0C */	ble lbl_802985C8
/* 802985C0  7F C3 F3 78 */	mr r3, r30
/* 802985C4  48 03 67 79 */	bl __dl__FPv
lbl_802985C8:
/* 802985C8  7F C3 F3 78 */	mr r3, r30
/* 802985CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802985D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802985D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802985D8  7C 08 03 A6 */	mtlr r0
/* 802985DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802985E0  4E 80 00 20 */	blr 
