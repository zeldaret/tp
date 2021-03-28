lbl_80678DAC:
/* 80678DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80678DB0  7C 08 02 A6 */	mflr r0
/* 80678DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80678DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80678DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80678DC0  7C 7F 1B 78 */	mr r31, r3
/* 80678DC4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80678DC8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80678DCC  40 82 00 4C */	bne lbl_80678E18
/* 80678DD0  7F E0 FB 79 */	or. r0, r31, r31
/* 80678DD4  41 82 00 38 */	beq lbl_80678E0C
/* 80678DD8  7C 1E 03 78 */	mr r30, r0
/* 80678DDC  4B 9F F8 48 */	b __ct__16dBgS_MoveBgActorFv
/* 80678DE0  3C 60 80 68 */	lis r3, __vt__12daDoorPush_c@ha
/* 80678DE4  38 03 90 48 */	addi r0, r3, __vt__12daDoorPush_c@l
/* 80678DE8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80678DEC  38 7E 06 14 */	addi r3, r30, 0x614
/* 80678DF0  3C 80 80 68 */	lis r4, __ct__4cXyzFv@ha
/* 80678DF4  38 84 8E 38 */	addi r4, r4, __ct__4cXyzFv@l
/* 80678DF8  3C A0 80 68 */	lis r5, __dt__4cXyzFv@ha
/* 80678DFC  38 A5 80 60 */	addi r5, r5, __dt__4cXyzFv@l
/* 80678E00  38 C0 00 0C */	li r6, 0xc
/* 80678E04  38 E0 00 02 */	li r7, 2
/* 80678E08  4B CE 8F 58 */	b __construct_array
lbl_80678E0C:
/* 80678E0C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80678E10  60 00 00 08 */	ori r0, r0, 8
/* 80678E14  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80678E18:
/* 80678E18  7F E3 FB 78 */	mr r3, r31
/* 80678E1C  4B FF F4 FD */	bl create1st__12daDoorPush_cFv
/* 80678E20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80678E24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80678E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80678E2C  7C 08 03 A6 */	mtlr r0
/* 80678E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80678E34  4E 80 00 20 */	blr 
