lbl_80AE5D28:
/* 80AE5D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5D2C  7C 08 02 A6 */	mflr r0
/* 80AE5D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE5D38  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE5D3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE5D40  7C 9E 23 78 */	mr r30, r4
/* 80AE5D44  41 82 00 C4 */	beq lbl_80AE5E08
/* 80AE5D48  3C 60 80 AE */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AE5D4C  38 03 77 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AE5D50  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AE5D54  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AE5D58  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5D5C  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE5D60  38 A0 00 0C */	li r5, 0xc
/* 80AE5D64  38 C0 00 03 */	li r6, 3
/* 80AE5D68  4B 87 BF 80 */	b __destroy_arr
/* 80AE5D6C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AE5D70  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5D74  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE5D78  38 A0 00 0C */	li r5, 0xc
/* 80AE5D7C  38 C0 00 03 */	li r6, 3
/* 80AE5D80  4B 87 BF 68 */	b __destroy_arr
/* 80AE5D84  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AE5D88  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5D8C  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE5D90  38 A0 00 0C */	li r5, 0xc
/* 80AE5D94  38 C0 00 03 */	li r6, 3
/* 80AE5D98  4B 87 BF 50 */	b __destroy_arr
/* 80AE5D9C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AE5DA0  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5DA4  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE5DA8  38 A0 00 0C */	li r5, 0xc
/* 80AE5DAC  38 C0 00 03 */	li r6, 3
/* 80AE5DB0  4B 87 BF 38 */	b __destroy_arr
/* 80AE5DB4  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AE5DB8  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5DBC  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE5DC0  38 A0 00 0C */	li r5, 0xc
/* 80AE5DC4  38 C0 00 03 */	li r6, 3
/* 80AE5DC8  4B 87 BF 20 */	b __destroy_arr
/* 80AE5DCC  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AE5DD0  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha
/* 80AE5DD4  38 84 58 A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE5DD8  38 A0 00 0C */	li r5, 0xc
/* 80AE5DDC  38 C0 00 03 */	li r6, 3
/* 80AE5DE0  4B 87 BF 08 */	b __destroy_arr
/* 80AE5DE4  28 1F 00 00 */	cmplwi r31, 0
/* 80AE5DE8  41 82 00 10 */	beq lbl_80AE5DF8
/* 80AE5DEC  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AE5DF0  38 03 77 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AE5DF4  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AE5DF8:
/* 80AE5DF8  7F C0 07 35 */	extsh. r0, r30
/* 80AE5DFC  40 81 00 0C */	ble lbl_80AE5E08
/* 80AE5E00  7F E3 FB 78 */	mr r3, r31
/* 80AE5E04  4B 7E 8F 38 */	b __dl__FPv
lbl_80AE5E08:
/* 80AE5E08  7F E3 FB 78 */	mr r3, r31
/* 80AE5E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE5E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5E18  7C 08 03 A6 */	mtlr r0
/* 80AE5E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5E20  4E 80 00 20 */	blr 
