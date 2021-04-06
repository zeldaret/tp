lbl_80A05CF0:
/* 80A05CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05CF4  7C 08 02 A6 */	mflr r0
/* 80A05CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A05CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05D00  93 C1 00 08 */	stw r30, 8(r1)
/* 80A05D04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A05D08  7C 9E 23 78 */	mr r30, r4
/* 80A05D0C  41 82 00 C4 */	beq lbl_80A05DD0
/* 80A05D10  3C 60 80 A0 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A077E0@ha */
/* 80A05D14  38 03 77 E0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A077E0@l */
/* 80A05D18  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A05D1C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A05D20  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05D24  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05D28  38 A0 00 0C */	li r5, 0xc
/* 80A05D2C  38 C0 00 03 */	li r6, 3
/* 80A05D30  4B 95 BF B9 */	bl __destroy_arr
/* 80A05D34  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A05D38  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05D3C  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05D40  38 A0 00 0C */	li r5, 0xc
/* 80A05D44  38 C0 00 03 */	li r6, 3
/* 80A05D48  4B 95 BF A1 */	bl __destroy_arr
/* 80A05D4C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A05D50  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05D54  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05D58  38 A0 00 0C */	li r5, 0xc
/* 80A05D5C  38 C0 00 03 */	li r6, 3
/* 80A05D60  4B 95 BF 89 */	bl __destroy_arr
/* 80A05D64  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A05D68  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05D6C  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05D70  38 A0 00 0C */	li r5, 0xc
/* 80A05D74  38 C0 00 03 */	li r6, 3
/* 80A05D78  4B 95 BF 71 */	bl __destroy_arr
/* 80A05D7C  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A05D80  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05D84  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05D88  38 A0 00 0C */	li r5, 0xc
/* 80A05D8C  38 C0 00 03 */	li r6, 3
/* 80A05D90  4B 95 BF 59 */	bl __destroy_arr
/* 80A05D94  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A05D98  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05D9C  38 84 57 98 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05DA0  38 A0 00 0C */	li r5, 0xc
/* 80A05DA4  38 C0 00 03 */	li r6, 3
/* 80A05DA8  4B 95 BF 41 */	bl __destroy_arr
/* 80A05DAC  28 1F 00 00 */	cmplwi r31, 0
/* 80A05DB0  41 82 00 10 */	beq lbl_80A05DC0
/* 80A05DB4  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A07804@ha */
/* 80A05DB8  38 03 78 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A07804@l */
/* 80A05DBC  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A05DC0:
/* 80A05DC0  7F C0 07 35 */	extsh. r0, r30
/* 80A05DC4  40 81 00 0C */	ble lbl_80A05DD0
/* 80A05DC8  7F E3 FB 78 */	mr r3, r31
/* 80A05DCC  4B 8C 8F 71 */	bl __dl__FPv
lbl_80A05DD0:
/* 80A05DD0  7F E3 FB 78 */	mr r3, r31
/* 80A05DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05DD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A05DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05DE0  7C 08 03 A6 */	mtlr r0
/* 80A05DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05DE8  4E 80 00 20 */	blr 
