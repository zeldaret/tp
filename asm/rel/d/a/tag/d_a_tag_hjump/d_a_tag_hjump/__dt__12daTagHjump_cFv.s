lbl_805A3DA0:
/* 805A3DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3DA4  7C 08 02 A6 */	mflr r0
/* 805A3DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3DB0  93 C1 00 08 */	stw r30, 8(r1)
/* 805A3DB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A3DB8  7C 9F 23 78 */	mr r31, r4
/* 805A3DBC  41 82 00 5C */	beq lbl_805A3E18
/* 805A3DC0  3C 60 80 5A */	lis r3, __vt__12daTagHjump_c@ha /* 0x805A42BC@ha */
/* 805A3DC4  38 03 42 BC */	addi r0, r3, __vt__12daTagHjump_c@l /* 0x805A42BC@l */
/* 805A3DC8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 805A3DCC  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 805A3DD0  28 00 00 00 */	cmplwi r0, 0
/* 805A3DD4  41 82 00 14 */	beq lbl_805A3DE8
/* 805A3DD8  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 805A3DDC  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x805A4238@ha */
/* 805A3DE0  38 84 42 38 */	addi r4, r4, l_arcName@l /* 0x805A4238@l */
/* 805A3DE4  4B A8 92 25 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_805A3DE8:
/* 805A3DE8  28 1E 00 00 */	cmplwi r30, 0
/* 805A3DEC  41 82 00 1C */	beq lbl_805A3E08
/* 805A3DF0  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 805A3DF4  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 805A3DF8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 805A3DFC  7F C3 F3 78 */	mr r3, r30
/* 805A3E00  38 80 00 00 */	li r4, 0
/* 805A3E04  4B A7 4E 89 */	bl __dt__10fopAc_ac_cFv
lbl_805A3E08:
/* 805A3E08  7F E0 07 35 */	extsh. r0, r31
/* 805A3E0C  40 81 00 0C */	ble lbl_805A3E18
/* 805A3E10  7F C3 F3 78 */	mr r3, r30
/* 805A3E14  4B D2 AF 29 */	bl __dl__FPv
lbl_805A3E18:
/* 805A3E18  7F C3 F3 78 */	mr r3, r30
/* 805A3E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3E20  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A3E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3E28  7C 08 03 A6 */	mtlr r0
/* 805A3E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3E30  4E 80 00 20 */	blr 
