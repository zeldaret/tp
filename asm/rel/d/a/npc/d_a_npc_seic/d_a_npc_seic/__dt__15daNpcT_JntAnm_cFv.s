lbl_80AC8CDC:
/* 80AC8CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8CE0  7C 08 02 A6 */	mflr r0
/* 80AC8CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8CEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC8CF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC8CF4  7C 9E 23 78 */	mr r30, r4
/* 80AC8CF8  41 82 00 C4 */	beq lbl_80AC8DBC
/* 80AC8CFC  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC949C@ha */
/* 80AC8D00  38 03 94 9C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC949C@l */
/* 80AC8D04  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AC8D08  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AC8D0C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8D10  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8D14  38 A0 00 0C */	li r5, 0xc
/* 80AC8D18  38 C0 00 03 */	li r6, 3
/* 80AC8D1C  4B 89 8F CD */	bl __destroy_arr
/* 80AC8D20  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AC8D24  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8D28  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8D2C  38 A0 00 0C */	li r5, 0xc
/* 80AC8D30  38 C0 00 03 */	li r6, 3
/* 80AC8D34  4B 89 8F B5 */	bl __destroy_arr
/* 80AC8D38  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AC8D3C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8D40  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8D44  38 A0 00 0C */	li r5, 0xc
/* 80AC8D48  38 C0 00 03 */	li r6, 3
/* 80AC8D4C  4B 89 8F 9D */	bl __destroy_arr
/* 80AC8D50  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AC8D54  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8D58  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8D5C  38 A0 00 0C */	li r5, 0xc
/* 80AC8D60  38 C0 00 03 */	li r6, 3
/* 80AC8D64  4B 89 8F 85 */	bl __destroy_arr
/* 80AC8D68  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AC8D6C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8D70  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8D74  38 A0 00 0C */	li r5, 0xc
/* 80AC8D78  38 C0 00 03 */	li r6, 3
/* 80AC8D7C  4B 89 8F 6D */	bl __destroy_arr
/* 80AC8D80  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AC8D84  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8D88  38 84 88 5C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8D8C  38 A0 00 0C */	li r5, 0xc
/* 80AC8D90  38 C0 00 03 */	li r6, 3
/* 80AC8D94  4B 89 8F 55 */	bl __destroy_arr
/* 80AC8D98  28 1F 00 00 */	cmplwi r31, 0
/* 80AC8D9C  41 82 00 10 */	beq lbl_80AC8DAC
/* 80AC8DA0  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC9490@ha */
/* 80AC8DA4  38 03 94 90 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC9490@l */
/* 80AC8DA8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AC8DAC:
/* 80AC8DAC  7F C0 07 35 */	extsh. r0, r30
/* 80AC8DB0  40 81 00 0C */	ble lbl_80AC8DBC
/* 80AC8DB4  7F E3 FB 78 */	mr r3, r31
/* 80AC8DB8  4B 80 5F 85 */	bl __dl__FPv
lbl_80AC8DBC:
/* 80AC8DBC  7F E3 FB 78 */	mr r3, r31
/* 80AC8DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8DC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC8DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8DCC  7C 08 03 A6 */	mtlr r0
/* 80AC8DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8DD4  4E 80 00 20 */	blr 
