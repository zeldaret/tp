lbl_80A3C360:
/* 80A3C360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C364  7C 08 02 A6 */	mflr r0
/* 80A3C368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C36C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C370  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3C374  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C378  7C 9E 23 78 */	mr r30, r4
/* 80A3C37C  41 82 00 C4 */	beq lbl_80A3C440
/* 80A3C380  3C 60 80 A4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A3C384  38 03 32 04 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A3C388  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A3C38C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A3C390  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A3C394  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A3C398  38 A0 00 0C */	li r5, 0xc
/* 80A3C39C  38 C0 00 03 */	li r6, 3
/* 80A3C3A0  4B 92 59 48 */	b __destroy_arr
/* 80A3C3A4  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A3C3A8  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A3C3AC  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A3C3B0  38 A0 00 0C */	li r5, 0xc
/* 80A3C3B4  38 C0 00 03 */	li r6, 3
/* 80A3C3B8  4B 92 59 30 */	b __destroy_arr
/* 80A3C3BC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A3C3C0  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A3C3C4  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A3C3C8  38 A0 00 0C */	li r5, 0xc
/* 80A3C3CC  38 C0 00 03 */	li r6, 3
/* 80A3C3D0  4B 92 59 18 */	b __destroy_arr
/* 80A3C3D4  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A3C3D8  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A3C3DC  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A3C3E0  38 A0 00 0C */	li r5, 0xc
/* 80A3C3E4  38 C0 00 03 */	li r6, 3
/* 80A3C3E8  4B 92 59 00 */	b __destroy_arr
/* 80A3C3EC  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A3C3F0  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A3C3F4  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A3C3F8  38 A0 00 0C */	li r5, 0xc
/* 80A3C3FC  38 C0 00 03 */	li r6, 3
/* 80A3C400  4B 92 58 E8 */	b __destroy_arr
/* 80A3C404  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A3C408  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A3C40C  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A3C410  38 A0 00 0C */	li r5, 0xc
/* 80A3C414  38 C0 00 03 */	li r6, 3
/* 80A3C418  4B 92 58 D0 */	b __destroy_arr
/* 80A3C41C  28 1F 00 00 */	cmplwi r31, 0
/* 80A3C420  41 82 00 10 */	beq lbl_80A3C430
/* 80A3C424  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A3C428  38 03 31 F8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A3C42C  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A3C430:
/* 80A3C430  7F C0 07 35 */	extsh. r0, r30
/* 80A3C434  40 81 00 0C */	ble lbl_80A3C440
/* 80A3C438  7F E3 FB 78 */	mr r3, r31
/* 80A3C43C  4B 89 29 00 */	b __dl__FPv
lbl_80A3C440:
/* 80A3C440  7F E3 FB 78 */	mr r3, r31
/* 80A3C444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C448  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A3C44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C450  7C 08 03 A6 */	mtlr r0
/* 80A3C454  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C458  4E 80 00 20 */	blr 
