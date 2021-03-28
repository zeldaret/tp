lbl_80A25064:
/* 80A25064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A25068  7C 08 02 A6 */	mflr r0
/* 80A2506C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A25070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A25074  93 C1 00 08 */	stw r30, 8(r1)
/* 80A25078  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A2507C  7C 9F 23 78 */	mr r31, r4
/* 80A25080  41 82 00 98 */	beq lbl_80A25118
/* 80A25084  3C 60 80 A2 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80A25088  38 03 5F EC */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80A2508C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80A25090  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A25094  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A25098  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A2509C  38 A0 00 06 */	li r5, 6
/* 80A250A0  38 C0 00 04 */	li r6, 4
/* 80A250A4  4B 93 CC 44 */	b __destroy_arr
/* 80A250A8  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A250AC  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A250B0  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A250B4  38 A0 00 06 */	li r5, 6
/* 80A250B8  38 C0 00 04 */	li r6, 4
/* 80A250BC  4B 93 CC 2C */	b __destroy_arr
/* 80A250C0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A250C4  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A250C8  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A250CC  38 A0 00 06 */	li r5, 6
/* 80A250D0  38 C0 00 04 */	li r6, 4
/* 80A250D4  4B 93 CC 14 */	b __destroy_arr
/* 80A250D8  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A250DC  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A250E0  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A250E4  38 A0 00 06 */	li r5, 6
/* 80A250E8  38 C0 00 04 */	li r6, 4
/* 80A250EC  4B 93 CB FC */	b __destroy_arr
/* 80A250F0  7F C3 F3 78 */	mr r3, r30
/* 80A250F4  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A250F8  38 84 51 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A250FC  38 A0 00 0C */	li r5, 0xc
/* 80A25100  38 C0 00 04 */	li r6, 4
/* 80A25104  4B 93 CB E4 */	b __destroy_arr
/* 80A25108  7F E0 07 35 */	extsh. r0, r31
/* 80A2510C  40 81 00 0C */	ble lbl_80A25118
/* 80A25110  7F C3 F3 78 */	mr r3, r30
/* 80A25114  4B 8A 9C 28 */	b __dl__FPv
lbl_80A25118:
/* 80A25118  7F C3 F3 78 */	mr r3, r30
/* 80A2511C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A25120  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A25124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A25128  7C 08 03 A6 */	mtlr r0
/* 80A2512C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A25130  4E 80 00 20 */	blr 
