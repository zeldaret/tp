lbl_80956CDC:
/* 80956CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80956CE0  7C 08 02 A6 */	mflr r0
/* 80956CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80956CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80956CEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80956CF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80956CF4  7C 9E 23 78 */	mr r30, r4
/* 80956CF8  41 82 00 C4 */	beq lbl_80956DBC
/* 80956CFC  3C 60 80 96 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80956D00  38 03 80 20 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80956D04  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80956D08  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80956D0C  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956D10  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956D14  38 A0 00 0C */	li r5, 0xc
/* 80956D18  38 C0 00 03 */	li r6, 3
/* 80956D1C  4B A0 AF CC */	b __destroy_arr
/* 80956D20  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80956D24  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956D28  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956D2C  38 A0 00 0C */	li r5, 0xc
/* 80956D30  38 C0 00 03 */	li r6, 3
/* 80956D34  4B A0 AF B4 */	b __destroy_arr
/* 80956D38  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80956D3C  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956D40  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956D44  38 A0 00 0C */	li r5, 0xc
/* 80956D48  38 C0 00 03 */	li r6, 3
/* 80956D4C  4B A0 AF 9C */	b __destroy_arr
/* 80956D50  38 7F 00 78 */	addi r3, r31, 0x78
/* 80956D54  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956D58  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956D5C  38 A0 00 0C */	li r5, 0xc
/* 80956D60  38 C0 00 03 */	li r6, 3
/* 80956D64  4B A0 AF 84 */	b __destroy_arr
/* 80956D68  38 7F 00 54 */	addi r3, r31, 0x54
/* 80956D6C  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956D70  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956D74  38 A0 00 0C */	li r5, 0xc
/* 80956D78  38 C0 00 03 */	li r6, 3
/* 80956D7C  4B A0 AF 6C */	b __destroy_arr
/* 80956D80  38 7F 00 30 */	addi r3, r31, 0x30
/* 80956D84  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 80956D88  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 80956D8C  38 A0 00 0C */	li r5, 0xc
/* 80956D90  38 C0 00 03 */	li r6, 3
/* 80956D94  4B A0 AF 54 */	b __destroy_arr
/* 80956D98  28 1F 00 00 */	cmplwi r31, 0
/* 80956D9C  41 82 00 10 */	beq lbl_80956DAC
/* 80956DA0  3C 60 80 96 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80956DA4  38 03 80 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80956DA8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80956DAC:
/* 80956DAC  7F C0 07 35 */	extsh. r0, r30
/* 80956DB0  40 81 00 0C */	ble lbl_80956DBC
/* 80956DB4  7F E3 FB 78 */	mr r3, r31
/* 80956DB8  4B 97 7F 84 */	b __dl__FPv
lbl_80956DBC:
/* 80956DBC  7F E3 FB 78 */	mr r3, r31
/* 80956DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80956DC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80956DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80956DCC  7C 08 03 A6 */	mtlr r0
/* 80956DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80956DD4  4E 80 00 20 */	blr 
