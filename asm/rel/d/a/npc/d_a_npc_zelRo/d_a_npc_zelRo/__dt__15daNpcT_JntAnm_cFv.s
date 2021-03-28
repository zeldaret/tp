lbl_80B74370:
/* 80B74370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B74374  7C 08 02 A6 */	mflr r0
/* 80B74378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7437C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B74380  93 C1 00 08 */	stw r30, 8(r1)
/* 80B74384  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B74388  7C 9E 23 78 */	mr r30, r4
/* 80B7438C  41 82 00 C4 */	beq lbl_80B74450
/* 80B74390  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B74394  38 03 4F 24 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B74398  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B7439C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B743A0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B743A4  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B743A8  38 A0 00 0C */	li r5, 0xc
/* 80B743AC  38 C0 00 03 */	li r6, 3
/* 80B743B0  4B 7E D9 38 */	b __destroy_arr
/* 80B743B4  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B743B8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B743BC  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B743C0  38 A0 00 0C */	li r5, 0xc
/* 80B743C4  38 C0 00 03 */	li r6, 3
/* 80B743C8  4B 7E D9 20 */	b __destroy_arr
/* 80B743CC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B743D0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B743D4  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B743D8  38 A0 00 0C */	li r5, 0xc
/* 80B743DC  38 C0 00 03 */	li r6, 3
/* 80B743E0  4B 7E D9 08 */	b __destroy_arr
/* 80B743E4  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B743E8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B743EC  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B743F0  38 A0 00 0C */	li r5, 0xc
/* 80B743F4  38 C0 00 03 */	li r6, 3
/* 80B743F8  4B 7E D8 F0 */	b __destroy_arr
/* 80B743FC  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B74400  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B74404  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B74408  38 A0 00 0C */	li r5, 0xc
/* 80B7440C  38 C0 00 03 */	li r6, 3
/* 80B74410  4B 7E D8 D8 */	b __destroy_arr
/* 80B74414  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B74418  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B7441C  38 84 3E 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B74420  38 A0 00 0C */	li r5, 0xc
/* 80B74424  38 C0 00 03 */	li r6, 3
/* 80B74428  4B 7E D8 C0 */	b __destroy_arr
/* 80B7442C  28 1F 00 00 */	cmplwi r31, 0
/* 80B74430  41 82 00 10 */	beq lbl_80B74440
/* 80B74434  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B74438  38 03 4F 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B7443C  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B74440:
/* 80B74440  7F C0 07 35 */	extsh. r0, r30
/* 80B74444  40 81 00 0C */	ble lbl_80B74450
/* 80B74448  7F E3 FB 78 */	mr r3, r31
/* 80B7444C  4B 75 A8 F0 */	b __dl__FPv
lbl_80B74450:
/* 80B74450  7F E3 FB 78 */	mr r3, r31
/* 80B74454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B74458  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7445C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B74460  7C 08 03 A6 */	mtlr r0
/* 80B74464  38 21 00 10 */	addi r1, r1, 0x10
/* 80B74468  4E 80 00 20 */	blr 
