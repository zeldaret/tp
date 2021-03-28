lbl_80B48D44:
/* 80B48D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48D48  7C 08 02 A6 */	mflr r0
/* 80B48D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B48D54  93 C1 00 08 */	stw r30, 8(r1)
/* 80B48D58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B48D5C  7C 9E 23 78 */	mr r30, r4
/* 80B48D60  41 82 00 C4 */	beq lbl_80B48E24
/* 80B48D64  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B48D68  38 03 99 CC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B48D6C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B48D70  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B48D74  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B48D78  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B48D7C  38 A0 00 0C */	li r5, 0xc
/* 80B48D80  38 C0 00 03 */	li r6, 3
/* 80B48D84  4B 81 8F 64 */	b __destroy_arr
/* 80B48D88  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B48D8C  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B48D90  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B48D94  38 A0 00 0C */	li r5, 0xc
/* 80B48D98  38 C0 00 03 */	li r6, 3
/* 80B48D9C  4B 81 8F 4C */	b __destroy_arr
/* 80B48DA0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B48DA4  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B48DA8  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B48DAC  38 A0 00 0C */	li r5, 0xc
/* 80B48DB0  38 C0 00 03 */	li r6, 3
/* 80B48DB4  4B 81 8F 34 */	b __destroy_arr
/* 80B48DB8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B48DBC  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B48DC0  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B48DC4  38 A0 00 0C */	li r5, 0xc
/* 80B48DC8  38 C0 00 03 */	li r6, 3
/* 80B48DCC  4B 81 8F 1C */	b __destroy_arr
/* 80B48DD0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B48DD4  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B48DD8  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B48DDC  38 A0 00 0C */	li r5, 0xc
/* 80B48DE0  38 C0 00 03 */	li r6, 3
/* 80B48DE4  4B 81 8F 04 */	b __destroy_arr
/* 80B48DE8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B48DEC  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B48DF0  38 84 87 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B48DF4  38 A0 00 0C */	li r5, 0xc
/* 80B48DF8  38 C0 00 03 */	li r6, 3
/* 80B48DFC  4B 81 8E EC */	b __destroy_arr
/* 80B48E00  28 1F 00 00 */	cmplwi r31, 0
/* 80B48E04  41 82 00 10 */	beq lbl_80B48E14
/* 80B48E08  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B48E0C  38 03 99 C0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B48E10  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B48E14:
/* 80B48E14  7F C0 07 35 */	extsh. r0, r30
/* 80B48E18  40 81 00 0C */	ble lbl_80B48E24
/* 80B48E1C  7F E3 FB 78 */	mr r3, r31
/* 80B48E20  4B 78 5F 1C */	b __dl__FPv
lbl_80B48E24:
/* 80B48E24  7F E3 FB 78 */	mr r3, r31
/* 80B48E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B48E2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B48E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48E34  7C 08 03 A6 */	mtlr r0
/* 80B48E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48E3C  4E 80 00 20 */	blr 
