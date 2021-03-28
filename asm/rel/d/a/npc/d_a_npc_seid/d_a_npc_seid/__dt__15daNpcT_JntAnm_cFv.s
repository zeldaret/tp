lbl_80ACAE1C:
/* 80ACAE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACAE20  7C 08 02 A6 */	mflr r0
/* 80ACAE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACAE28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACAE2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACAE30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACAE34  7C 9E 23 78 */	mr r30, r4
/* 80ACAE38  41 82 00 C4 */	beq lbl_80ACAEFC
/* 80ACAE3C  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80ACAE40  38 03 B5 DC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80ACAE44  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80ACAE48  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80ACAE4C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACAE50  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACAE54  38 A0 00 0C */	li r5, 0xc
/* 80ACAE58  38 C0 00 03 */	li r6, 3
/* 80ACAE5C  4B 89 6E 8C */	b __destroy_arr
/* 80ACAE60  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80ACAE64  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACAE68  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACAE6C  38 A0 00 0C */	li r5, 0xc
/* 80ACAE70  38 C0 00 03 */	li r6, 3
/* 80ACAE74  4B 89 6E 74 */	b __destroy_arr
/* 80ACAE78  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80ACAE7C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACAE80  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACAE84  38 A0 00 0C */	li r5, 0xc
/* 80ACAE88  38 C0 00 03 */	li r6, 3
/* 80ACAE8C  4B 89 6E 5C */	b __destroy_arr
/* 80ACAE90  38 7F 00 78 */	addi r3, r31, 0x78
/* 80ACAE94  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACAE98  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACAE9C  38 A0 00 0C */	li r5, 0xc
/* 80ACAEA0  38 C0 00 03 */	li r6, 3
/* 80ACAEA4  4B 89 6E 44 */	b __destroy_arr
/* 80ACAEA8  38 7F 00 54 */	addi r3, r31, 0x54
/* 80ACAEAC  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACAEB0  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACAEB4  38 A0 00 0C */	li r5, 0xc
/* 80ACAEB8  38 C0 00 03 */	li r6, 3
/* 80ACAEBC  4B 89 6E 2C */	b __destroy_arr
/* 80ACAEC0  38 7F 00 30 */	addi r3, r31, 0x30
/* 80ACAEC4  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACAEC8  38 84 A9 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACAECC  38 A0 00 0C */	li r5, 0xc
/* 80ACAED0  38 C0 00 03 */	li r6, 3
/* 80ACAED4  4B 89 6E 14 */	b __destroy_arr
/* 80ACAED8  28 1F 00 00 */	cmplwi r31, 0
/* 80ACAEDC  41 82 00 10 */	beq lbl_80ACAEEC
/* 80ACAEE0  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACAEE4  38 03 B5 D0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACAEE8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80ACAEEC:
/* 80ACAEEC  7F C0 07 35 */	extsh. r0, r30
/* 80ACAEF0  40 81 00 0C */	ble lbl_80ACAEFC
/* 80ACAEF4  7F E3 FB 78 */	mr r3, r31
/* 80ACAEF8  4B 80 3E 44 */	b __dl__FPv
lbl_80ACAEFC:
/* 80ACAEFC  7F E3 FB 78 */	mr r3, r31
/* 80ACAF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACAF04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACAF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACAF0C  7C 08 03 A6 */	mtlr r0
/* 80ACAF10  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACAF14  4E 80 00 20 */	blr 
