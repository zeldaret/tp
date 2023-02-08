lbl_8014D150:
/* 8014D150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D154  7C 08 02 A6 */	mflr r0
/* 8014D158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D15C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014D160  93 C1 00 08 */	stw r30, 8(r1)
/* 8014D164  7C 7F 1B 79 */	or. r31, r3, r3
/* 8014D168  7C 9E 23 78 */	mr r30, r4
/* 8014D16C  41 82 00 C4 */	beq lbl_8014D230
/* 8014D170  3C 60 80 3B */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x803B3B54@ha */
/* 8014D174  38 03 3B 54 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x803B3B54@l */
/* 8014D178  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 8014D17C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8014D180  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014D184  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014D188  38 A0 00 0C */	li r5, 0xc
/* 8014D18C  38 C0 00 03 */	li r6, 3
/* 8014D190  48 21 4B 59 */	bl __destroy_arr
/* 8014D194  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 8014D198  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014D19C  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014D1A0  38 A0 00 0C */	li r5, 0xc
/* 8014D1A4  38 C0 00 03 */	li r6, 3
/* 8014D1A8  48 21 4B 41 */	bl __destroy_arr
/* 8014D1AC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8014D1B0  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014D1B4  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014D1B8  38 A0 00 0C */	li r5, 0xc
/* 8014D1BC  38 C0 00 03 */	li r6, 3
/* 8014D1C0  48 21 4B 29 */	bl __destroy_arr
/* 8014D1C4  38 7F 00 78 */	addi r3, r31, 0x78
/* 8014D1C8  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014D1CC  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014D1D0  38 A0 00 0C */	li r5, 0xc
/* 8014D1D4  38 C0 00 03 */	li r6, 3
/* 8014D1D8  48 21 4B 11 */	bl __destroy_arr
/* 8014D1DC  38 7F 00 54 */	addi r3, r31, 0x54
/* 8014D1E0  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014D1E4  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014D1E8  38 A0 00 0C */	li r5, 0xc
/* 8014D1EC  38 C0 00 03 */	li r6, 3
/* 8014D1F0  48 21 4A F9 */	bl __destroy_arr
/* 8014D1F4  38 7F 00 30 */	addi r3, r31, 0x30
/* 8014D1F8  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014D1FC  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014D200  38 A0 00 0C */	li r5, 0xc
/* 8014D204  38 C0 00 03 */	li r6, 3
/* 8014D208  48 21 4A E1 */	bl __destroy_arr
/* 8014D20C  28 1F 00 00 */	cmplwi r31, 0
/* 8014D210  41 82 00 10 */	beq lbl_8014D220
/* 8014D214  3C 60 80 3B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x803B3B48@ha */
/* 8014D218  38 03 3B 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x803B3B48@l */
/* 8014D21C  90 1F 00 04 */	stw r0, 4(r31)
lbl_8014D220:
/* 8014D220  7F C0 07 35 */	extsh. r0, r30
/* 8014D224  40 81 00 0C */	ble lbl_8014D230
/* 8014D228  7F E3 FB 78 */	mr r3, r31
/* 8014D22C  48 18 1B 11 */	bl __dl__FPv
lbl_8014D230:
/* 8014D230  7F E3 FB 78 */	mr r3, r31
/* 8014D234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014D238  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014D23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D240  7C 08 03 A6 */	mtlr r0
/* 8014D244  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D248  4E 80 00 20 */	blr 
