lbl_80B6B368:
/* 80B6B368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6B36C  7C 08 02 A6 */	mflr r0
/* 80B6B370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6B374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6B378  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6B37C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6B380  7C 9E 23 78 */	mr r30, r4
/* 80B6B384  41 82 00 C4 */	beq lbl_80B6B448
/* 80B6B388  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B6B38C  38 03 BF A8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B6B390  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B6B394  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B6B398  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6B39C  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6B3A0  38 A0 00 0C */	li r5, 0xc
/* 80B6B3A4  38 C0 00 03 */	li r6, 3
/* 80B6B3A8  4B 7F 69 40 */	b __destroy_arr
/* 80B6B3AC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B6B3B0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6B3B4  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6B3B8  38 A0 00 0C */	li r5, 0xc
/* 80B6B3BC  38 C0 00 03 */	li r6, 3
/* 80B6B3C0  4B 7F 69 28 */	b __destroy_arr
/* 80B6B3C4  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B6B3C8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6B3CC  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6B3D0  38 A0 00 0C */	li r5, 0xc
/* 80B6B3D4  38 C0 00 03 */	li r6, 3
/* 80B6B3D8  4B 7F 69 10 */	b __destroy_arr
/* 80B6B3DC  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B6B3E0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6B3E4  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6B3E8  38 A0 00 0C */	li r5, 0xc
/* 80B6B3EC  38 C0 00 03 */	li r6, 3
/* 80B6B3F0  4B 7F 68 F8 */	b __destroy_arr
/* 80B6B3F4  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B6B3F8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6B3FC  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6B400  38 A0 00 0C */	li r5, 0xc
/* 80B6B404  38 C0 00 03 */	li r6, 3
/* 80B6B408  4B 7F 68 E0 */	b __destroy_arr
/* 80B6B40C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B6B410  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6B414  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6B418  38 A0 00 0C */	li r5, 0xc
/* 80B6B41C  38 C0 00 03 */	li r6, 3
/* 80B6B420  4B 7F 68 C8 */	b __destroy_arr
/* 80B6B424  28 1F 00 00 */	cmplwi r31, 0
/* 80B6B428  41 82 00 10 */	beq lbl_80B6B438
/* 80B6B42C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B6B430  38 03 BF 9C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B6B434  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B6B438:
/* 80B6B438  7F C0 07 35 */	extsh. r0, r30
/* 80B6B43C  40 81 00 0C */	ble lbl_80B6B448
/* 80B6B440  7F E3 FB 78 */	mr r3, r31
/* 80B6B444  4B 76 38 F8 */	b __dl__FPv
lbl_80B6B448:
/* 80B6B448  7F E3 FB 78 */	mr r3, r31
/* 80B6B44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6B450  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6B454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6B458  7C 08 03 A6 */	mtlr r0
/* 80B6B45C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6B460  4E 80 00 20 */	blr 
