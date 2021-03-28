lbl_80A7305C:
/* 80A7305C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73060  7C 08 02 A6 */	mflr r0
/* 80A73064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7306C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A73070  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A73074  7C 9E 23 78 */	mr r30, r4
/* 80A73078  41 82 00 C4 */	beq lbl_80A7313C
/* 80A7307C  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A73080  38 03 3C 54 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A73084  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A73088  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A7308C  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A73090  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A73094  38 A0 00 0C */	li r5, 0xc
/* 80A73098  38 C0 00 03 */	li r6, 3
/* 80A7309C  4B 8E EC 4C */	b __destroy_arr
/* 80A730A0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A730A4  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A730A8  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A730AC  38 A0 00 0C */	li r5, 0xc
/* 80A730B0  38 C0 00 03 */	li r6, 3
/* 80A730B4  4B 8E EC 34 */	b __destroy_arr
/* 80A730B8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A730BC  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A730C0  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A730C4  38 A0 00 0C */	li r5, 0xc
/* 80A730C8  38 C0 00 03 */	li r6, 3
/* 80A730CC  4B 8E EC 1C */	b __destroy_arr
/* 80A730D0  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A730D4  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A730D8  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A730DC  38 A0 00 0C */	li r5, 0xc
/* 80A730E0  38 C0 00 03 */	li r6, 3
/* 80A730E4  4B 8E EC 04 */	b __destroy_arr
/* 80A730E8  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A730EC  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A730F0  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A730F4  38 A0 00 0C */	li r5, 0xc
/* 80A730F8  38 C0 00 03 */	li r6, 3
/* 80A730FC  4B 8E EB EC */	b __destroy_arr
/* 80A73100  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A73104  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A73108  38 84 2B DC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A7310C  38 A0 00 0C */	li r5, 0xc
/* 80A73110  38 C0 00 03 */	li r6, 3
/* 80A73114  4B 8E EB D4 */	b __destroy_arr
/* 80A73118  28 1F 00 00 */	cmplwi r31, 0
/* 80A7311C  41 82 00 10 */	beq lbl_80A7312C
/* 80A73120  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A73124  38 03 3C 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A73128  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A7312C:
/* 80A7312C  7F C0 07 35 */	extsh. r0, r30
/* 80A73130  40 81 00 0C */	ble lbl_80A7313C
/* 80A73134  7F E3 FB 78 */	mr r3, r31
/* 80A73138  4B 85 BC 04 */	b __dl__FPv
lbl_80A7313C:
/* 80A7313C  7F E3 FB 78 */	mr r3, r31
/* 80A73140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A73144  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A73148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7314C  7C 08 03 A6 */	mtlr r0
/* 80A73150  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73154  4E 80 00 20 */	blr 
