lbl_80B6E054:
/* 80B6E054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E058  7C 08 02 A6 */	mflr r0
/* 80B6E05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E064  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6E068  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E06C  7C 9E 23 78 */	mr r30, r4
/* 80B6E070  41 82 00 C4 */	beq lbl_80B6E134
/* 80B6E074  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B6E078  38 03 EC 28 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B6E07C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B6E080  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B6E084  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6E088  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6E08C  38 A0 00 0C */	li r5, 0xc
/* 80B6E090  38 C0 00 03 */	li r6, 3
/* 80B6E094  4B 7F 3C 54 */	b __destroy_arr
/* 80B6E098  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B6E09C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6E0A0  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6E0A4  38 A0 00 0C */	li r5, 0xc
/* 80B6E0A8  38 C0 00 03 */	li r6, 3
/* 80B6E0AC  4B 7F 3C 3C */	b __destroy_arr
/* 80B6E0B0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B6E0B4  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6E0B8  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6E0BC  38 A0 00 0C */	li r5, 0xc
/* 80B6E0C0  38 C0 00 03 */	li r6, 3
/* 80B6E0C4  4B 7F 3C 24 */	b __destroy_arr
/* 80B6E0C8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B6E0CC  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6E0D0  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6E0D4  38 A0 00 0C */	li r5, 0xc
/* 80B6E0D8  38 C0 00 03 */	li r6, 3
/* 80B6E0DC  4B 7F 3C 0C */	b __destroy_arr
/* 80B6E0E0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B6E0E4  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6E0E8  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6E0EC  38 A0 00 0C */	li r5, 0xc
/* 80B6E0F0  38 C0 00 03 */	li r6, 3
/* 80B6E0F4  4B 7F 3B F4 */	b __destroy_arr
/* 80B6E0F8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B6E0FC  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B6E100  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B6E104  38 A0 00 0C */	li r5, 0xc
/* 80B6E108  38 C0 00 03 */	li r6, 3
/* 80B6E10C  4B 7F 3B DC */	b __destroy_arr
/* 80B6E110  28 1F 00 00 */	cmplwi r31, 0
/* 80B6E114  41 82 00 10 */	beq lbl_80B6E124
/* 80B6E118  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B6E11C  38 03 EC 1C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B6E120  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B6E124:
/* 80B6E124  7F C0 07 35 */	extsh. r0, r30
/* 80B6E128  40 81 00 0C */	ble lbl_80B6E134
/* 80B6E12C  7F E3 FB 78 */	mr r3, r31
/* 80B6E130  4B 76 0C 0C */	b __dl__FPv
lbl_80B6E134:
/* 80B6E134  7F E3 FB 78 */	mr r3, r31
/* 80B6E138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E13C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6E140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E144  7C 08 03 A6 */	mtlr r0
/* 80B6E148  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E14C  4E 80 00 20 */	blr 
